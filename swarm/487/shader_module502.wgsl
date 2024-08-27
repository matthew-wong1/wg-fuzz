struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: array<bool, 24> = array<bool, 24>(false, true, false, true, false, true, true, true, true, true, true, true, true, true, true, true, false, true, true, false, false, true, true, false);

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<f32>(348f, 520f, -572f), 7557u, 1i, 24277u), Struct_1(vec3<f32>(275f, -1232f, 1000f), 1u, 76757i, 65783u), Struct_1(vec3<f32>(710f, -294f, -3339f), 0u, -40827i, 0u), Struct_1(vec3<f32>(2053f, -999f, 350f), 4294967295u, -1i, 0u), Struct_1(vec3<f32>(653f, 1581f, 1579f), 0u, -15656i, 1u), Struct_1(vec3<f32>(-401f, -502f, -297f), 0u, -16495i, 4294967295u), Struct_1(vec3<f32>(1458f, 1691f, 859f), 74696u, 2147483647i, 1u), Struct_1(vec3<f32>(444f, -750f, -270f), 0u, 27318i, 6968u), Struct_1(vec3<f32>(564f, -1293f, 1000f), 5218u, i32(-2147483648), 35653u), Struct_1(vec3<f32>(386f, 473f, 848f), 1u, -33554i, 4294967295u), Struct_1(vec3<f32>(1920f, -858f, 978f), 16499u, 27709i, 49997u), Struct_1(vec3<f32>(-459f, -729f, 952f), 0u, 0i, 1u), Struct_1(vec3<f32>(-1427f, -862f, -1088f), 1u, -7324i, 0u), Struct_1(vec3<f32>(1426f, -1285f, 1489f), 52288u, -23817i, 4294967295u), Struct_1(vec3<f32>(583f, 2903f, 716f), 47756u, -18771i, 6230u), Struct_1(vec3<f32>(556f, -313f, -743f), 33596u, 28247i, 42995u), Struct_1(vec3<f32>(-1040f, 314f, 766f), 20808u, 0i, 36387u), Struct_1(vec3<f32>(-897f, -819f, -240f), 30897u, -18502i, 4294967295u));

var<private> global3: array<Struct_2, 6>;

var<private> global4: Struct_2 = Struct_2(0u, Struct_1(vec3<f32>(-251f, 1383f, -746f), 0u, 1i, 0u), -1519f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4.c, global4.c)) - _wgslsmith_f_op_f32(global4.c + global4.c)), global4.c));
    global3 = array<Struct_2, 6>();
    let var_1 = vec3<i32>(global4.b.c, u_input.c, abs(_wgslsmith_sub_i32(2147483647i, u_input.c)));
    var var_2 = global2[_wgslsmith_index_u32(max(global4.a, global4.b.d), 18u)];
    global4 = Struct_2(firstLeadingBit(global4.b.b) & ~(~global4.a), Struct_1(_wgslsmith_f_op_vec3_f32(-global4.b.a), _wgslsmith_dot_vec2_u32(max(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(85113u, 9166u)), vec2<u32>(global4.a, var_2.d) & vec2<u32>(var_2.b, var_2.d)), vec2<u32>(~27825u, 38876u)), min(-1i, global4.b.c), global4.b.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1047f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) - _wgslsmith_f_op_f32(global4.b.a.x * var_2.a.x)), false)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-342f)) - var_2.a.x)));
    return _wgslsmith_clamp_u32(~(~(~u_input.a)), global4.a, ~firstLeadingBit(u_input.a)) ^ _wgslsmith_clamp_u32(var_2.b, ~56590u, firstTrailingBit(global4.a));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(global4.c - 371f);
    var var_1 = select(!(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(global4.b.b, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)], false), vec3<bool>(arg_0, global1[_wgslsmith_index_u32(14625u, 24u)], true), global0[_wgslsmith_index_u32(arg_2.b.d, 12u)]))), select(vec3<bool>(true, global1[_wgslsmith_index_u32(func_3(), 24u)], arg_0), !select(vec3<bool>(global0[_wgslsmith_index_u32(170224u, 12u)], global0[_wgslsmith_index_u32(global4.b.d, 12u)], arg_0), vec3<bool>(global1[_wgslsmith_index_u32(18910u, 24u)], false, global1[_wgslsmith_index_u32(0u, 24u)]), select(vec3<bool>(false, global0[_wgslsmith_index_u32(8439u, 12u)], false), vec3<bool>(global1[_wgslsmith_index_u32(28751u, 24u)], true, true), vec3<bool>(arg_0, false, false))), vec3<bool>(!any(vec3<bool>(global1[_wgslsmith_index_u32(arg_2.a, 24u)], false, global0[_wgslsmith_index_u32(arg_2.a, 12u)])), !(global0[_wgslsmith_index_u32(6998u, 12u)] && true), true)), all(!(!vec2<bool>(global0[_wgslsmith_index_u32(global4.a, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)]))) != any(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_1.x, 24u)], global0[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(0u, 24u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(29481u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)], true), arg_0)));
    let var_2 = arg_1;
    let var_3 = u_input.e.x >> (firstTrailingBit(_wgslsmith_sub_u32(0u, arg_1.x)) % 32u);
    global2 = array<Struct_1, 18>();
    return Struct_1(global4.b.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, _wgslsmith_mod_u32(arg_2.b.b, 0u), arg_2.b.b), vec3<u32>(1u, 1u, var_2.x)), arg_2.b.c, 4399u);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(global4.b.a)), select(arg_3.d, 1u | abs(~global4.b.b), !all(vec2<bool>(true, false))), -74368i << (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.d, 0u, 3296u, 6837u), vec4<u32>(55508u, arg_1, 15054u, 51118u), vec4<u32>(global4.b.b, 72844u, 0u, arg_3.d)), vec4<u32>(37118u, 4294967295u, arg_1, arg_1)), ~(~vec4<u32>(19110u, arg_3.d, 0u, arg_2.d))) % 32u), u_input.a);
    let var_1 = u_input.e | u_input.e;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * -345f) + 1315f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1140f, _wgslsmith_f_op_f32(trunc(813f))) * _wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1193f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global4.c, -132f, global0[_wgslsmith_index_u32(6036u, 12u)])))) * arg_0))), _wgslsmith_f_op_f32(abs(arg_2.a.x)));
    let var_3 = global3[_wgslsmith_index_u32(arg_2.b, 6u)];
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b.a.x, var_0.a.x, 225f)) - _wgslsmith_f_op_vec3_f32(sign(arg_3.a))))), 1u, var_3.b.c, 4294967295u);
    return true;
}

fn func_5(arg_0: bool, arg_1: vec3<bool>) -> Struct_2 {
    return Struct_2(4294967295u, func_2(any(vec4<bool>(!arg_1.x, !arg_1.x, true, all(vec4<bool>(global1[_wgslsmith_index_u32(4761u, 24u)], arg_0, true, global0[_wgslsmith_index_u32(1u, 12u)])))), abs(select(vec3<u32>(global4.b.d, u_input.a, 0u), vec3<u32>(4294967295u, u_input.a, 5207u), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 24u)], arg_0, arg_1.x))), Struct_2(~33414u, func_2(false, firstLeadingBit(vec3<u32>(14505u, global4.a, 0u)), Struct_2(global4.a, global2[_wgslsmith_index_u32(global4.a, 18u)], -1093f)), -1027f)), 513f);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = ~firstTrailingBit(_wgslsmith_add_vec3_u32(reverseBits(arg_0.zxx), arg_0.wzy));
    global1 = array<bool, 24>();
    global1 = array<bool, 24>();
    let var_1 = func_5(true, !select(vec3<bool>(-211f <= global4.b.a.x, u_input.a < arg_0.x, all(vec2<bool>(false, false))), vec3<bool>(any(vec3<bool>(false, true, false)), global0[_wgslsmith_index_u32(~42523u, 12u)], true), func_4(arg_2.a.x, 4294967295u, func_2(false, arg_0.yzz, global3[_wgslsmith_index_u32(arg_0.x, 6u)]), func_2(true, vec3<u32>(arg_1.d, 15303u, 0u), Struct_2(17503u, Struct_1(vec3<f32>(arg_2.a.x, arg_1.a.x, global4.c), global4.b.d, arg_1.c, 45583u), arg_2.a.x)))));
    global3 = array<Struct_2, 6>();
    return global4.b.a.x;
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> vec3<u32> {
    let var_0 = vec4<u32>(~4294967295u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_0.b, global4.a), _wgslsmith_add_u32(0u, arg_0.b), firstLeadingBit(u_input.a)), 1u & (u_input.a >> (1u % 32u))) | _wgslsmith_div_u32(0u, u_input.a), select(~(~(~31279u)), 4294967295u, all(!vec3<bool>(true, arg_3, global0[_wgslsmith_index_u32(arg_0.b, 12u)])) == true), firstLeadingBit(_wgslsmith_mult_u32(u_input.a, u_input.a)));
    var var_1 = abs(_wgslsmith_div_vec3_i32(u_input.e, _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.e, countOneBits(vec3<i32>(29463i, -43497i, 2147483647i))), ~(vec3<i32>(arg_2.c, arg_2.c, -2147483647i) | vec3<i32>(arg_2.c, -4208i, arg_2.c)))));
    var var_2 = global2[_wgslsmith_index_u32(var_0.x, 18u)];
    global1 = array<bool, 24>();
    let var_3 = abs(var_0.yww);
    return ~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(108745u, 13652u, 0u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.d, 1u, 1u), vec3<u32>(1u, 1u, var_0.x), var_3)), abs(vec3<u32>(var_0.x, var_2.d, var_0.x)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, global4.a, var_0.x), var_3) % vec3<u32>(32u))), max(vec3<u32>(var_3.x | var_0.x, 0u, 4294967295u), var_3));
}

fn func_7(arg_0: i32, arg_1: vec3<u32>, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    global2 = array<Struct_1, 18>();
    let var_0 = func_2(false, _wgslsmith_mult_vec3_u32(abs(vec3<u32>(~4294967295u, ~global4.b.b, _wgslsmith_clamp_u32(1u, arg_1.x, 2078u))), _wgslsmith_sub_vec3_u32(func_6(func_2(global0[_wgslsmith_index_u32(48114u, 12u)], arg_1, global3[_wgslsmith_index_u32(2332u, 6u)]), global4.c, global4.b, true), arg_1)), Struct_2(func_6(Struct_1(global4.b.a, _wgslsmith_clamp_u32(4294967295u, 0u, global4.a), -43077i, ~global4.b.b), global4.b.a.x, func_5(any(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 24u)])), select(vec3<bool>(global1[_wgslsmith_index_u32(global4.b.b, 24u)], global1[_wgslsmith_index_u32(global4.b.d, 24u)], global1[_wgslsmith_index_u32(60089u, 24u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(arg_1.x, 24u)], false), true)).b, any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(global4.b.d, 12u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 12u)], false, false, true), global0[_wgslsmith_index_u32(1u, 12u)]))).x, global2[_wgslsmith_index_u32(max(arg_1.x, global4.a), 18u)], _wgslsmith_f_op_f32(func_1(~vec4<u32>(global4.b.b, 60254u, 1u, u_input.a) & reverseBits(vec4<u32>(arg_1.x, global4.a, global4.a, u_input.a)), func_5(!global0[_wgslsmith_index_u32(arg_1.x, 12u)], select(vec3<bool>(false, global0[_wgslsmith_index_u32(23600u, 12u)], global1[_wgslsmith_index_u32(u_input.a, 24u)]), vec3<bool>(global1[_wgslsmith_index_u32(56202u, 24u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(53645u, 12u)], global1[_wgslsmith_index_u32(100161u, 24u)], false))).b, func_2(true, countOneBits(vec3<u32>(global4.a, 21620u, u_input.a)), global3[_wgslsmith_index_u32(3630u, 6u)])))));
    global4 = Struct_2(105650u, global4.b, 457f);
    let var_1 = func_5(true, !(!(!select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 24u)], true), vec3<bool>(true, global1[_wgslsmith_index_u32(arg_1.x, 24u)], global0[_wgslsmith_index_u32(arg_1.x, 12u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_0.d, 12u)]))))).b;
    var var_2 = select(vec4<bool>(select(true, true | !global0[_wgslsmith_index_u32(var_1.b, 12u)], true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(436f, global4.b.a.x))) <= _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(-var_0.a.x)), ~(~4294967295u) > var_0.d, 971f <= _wgslsmith_f_op_f32(1006f - var_0.a.x)), select(select(vec4<bool>(!global0[_wgslsmith_index_u32(4294967295u, 12u)], true, !global0[_wgslsmith_index_u32(u_input.a, 12u)], true), select(vec4<bool>(global0[_wgslsmith_index_u32(22580u, 12u)], false, false, false), vec4<bool>(false, false, false, true), select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 24u)], true, true), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(0u, 12u)], true), true)), func_4(-954f, 4294967295u, var_1, Struct_1(global4.b.a, global4.a, 2147483647i, var_1.d))), vec4<bool>(true, !global0[_wgslsmith_index_u32(0u >> (u_input.a % 32u), 12u)], any(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 12u)], global1[_wgslsmith_index_u32(var_0.d, 24u)], global0[_wgslsmith_index_u32(var_1.d, 12u)]), vec3<bool>(global0[_wgslsmith_index_u32(10887u, 12u)], global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(global4.a, 24u)]), false)), !global0[_wgslsmith_index_u32(~u_input.a, 12u)]), global0[_wgslsmith_index_u32(u_input.a, 12u)]), vec4<bool>(false, select(true, global1[_wgslsmith_index_u32(~0u & _wgslsmith_div_u32(u_input.a, var_1.b), 24u)], !(global4.b.a.x > 932f)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.x, var_1.d | 44994u), 12u)] || global0[_wgslsmith_index_u32(62007u, 12u)], global1[_wgslsmith_index_u32(39519u, 24u)]));
    return func_2(false, ~vec3<u32>(6826u, ~global4.a, ~1u), Struct_2(countOneBits(_wgslsmith_div_u32(~arg_1.x, var_1.d)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 269f, 137f)) - vec3<f32>(1169f, var_0.a.x, global4.c)), ~_wgslsmith_mod_u32(u_input.a, 42851u), arg_2, 65673u), _wgslsmith_f_op_f32(-global4.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~(abs(u_input.a) >> (abs(~1u) % 32u)), func_7(1i, vec3<u32>(63493u, u_input.a, u_input.a) >> (func_6(global4.b, _wgslsmith_f_op_f32(func_1(vec4<u32>(1u, 4294967295u, global4.a, 31052u), global2[_wgslsmith_index_u32(0u, 18u)], global4.b)), global4.b, all(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)]))) % vec3<u32>(32u)), global4.b.c, vec4<i32>(countOneBits(~1i), ~(global4.b.c >> (global4.a % 32u)), u_input.e.x ^ u_input.b, ~(-global4.b.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c - global4.b.a.x)));
    let var_1 = global4.b;
    global3 = array<Struct_2, 6>();
    global0 = array<bool, 12>();
    var var_2 = reverseBits(_wgslsmith_mod_u32(~var_1.b, var_1.b));
    let var_3 = global4.b.a.x;
    global0 = array<bool, 12>();
    let var_4 = Struct_2(1u, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global4.b.a.x, var_0.b.a.x, var_1.a.x), global4.b.a)), reverseBits(var_0.b.d) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global4.a), vec2<u32>(8158u, global4.b.b)) % 32u), _wgslsmith_add_i32(-_wgslsmith_clamp_i32(18530i, -8341i, 74332i), 0i), _wgslsmith_div_u32(abs(9963u), var_0.a) | (abs(4294967295u) >> ((var_1.b ^ 43740u) % 32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.b.a.x, _wgslsmith_f_op_f32(trunc(var_1.a.x)))), var_0.c)));
    let var_5 = global2[_wgslsmith_index_u32(~4294967295u, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<u32>(reverseBits(9940u), abs(var_4.a), 25148u, var_5.d << ((var_4.b.b | u_input.a) % 32u))), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.d, global4.b.c, -1i), vec3<i32>(max(_wgslsmith_dot_vec3_i32(u_input.e, u_input.e), -2147483647i), 1i, -9007i)), min(~max(~vec3<u32>(var_0.b.b, 22217u, global4.b.b), _wgslsmith_add_vec3_u32(vec3<u32>(26015u, 4294967295u, var_4.a), vec3<u32>(var_0.b.b, var_0.a, 0u))), abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 40987u, global4.a), countOneBits(vec3<u32>(1u, 110588u, 52726u))))), _wgslsmith_sub_i32(2147483647i, ~var_5.c));
}

