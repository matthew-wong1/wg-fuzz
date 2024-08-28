struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_3,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32>;

var<private> global1: vec4<f32> = vec4<f32>(126f, 174f, 1297f, -1560f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_5(u_input.a.x, !(false && all(vec3<bool>(false, false, true))) & true, Struct_3(u_input.c.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(global1.wz)), global1.zy)), _wgslsmith_f_op_vec2_f32(-global1.xy))), vec2<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), 1951f), _wgslsmith_mult_vec3_i32(vec3<i32>(0i & u_input.d.x, -28514i, select(u_input.d.x, u_input.b.x, false)), u_input.d.zzy)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(876f, -1929f, -361f, global1.x)) + vec4<f32>(global1.x, global1.x, 846f, _wgslsmith_f_op_f32(ceil(-1000f)))), true, global1.x, vec3<u32>(u_input.c.x, abs(u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 50341u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) << (u_input.c % vec3<u32>(32u))))), u_input.b.x);
    var var_1 = vec4<i32>(u_input.b.x, -(~(-2147483647i)), ~max(u_input.d.x, var_0.a), var_0.a);
    let var_2 = vec3<f32>(174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + var_0.c.c.x) + _wgslsmith_f_op_f32(2206f * global1.x)))), -1298f);
    var var_3 = Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(min(vec3<i32>(-2147483647i, var_1.x, var_0.e), vec3<i32>(2147483647i, var_0.e, u_input.a.x)), firstLeadingBit(u_input.b.zxy)) << (~var_0.d.d % vec3<u32>(32u)), ~(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, var_1.x, u_input.b.x), vec3<i32>(var_1.x, -4354i, var_0.e)) & (var_1.zxw << (vec3<u32>(46844u, 0u, 45228u) % vec3<u32>(32u))))), var_0.d, Struct_1(_wgslsmith_f_op_vec4_f32(floor(var_0.d.a)), var_0.d.b, -1249f, vec3<u32>(u_input.c.x, 4294967295u >> (u_input.c.x % 32u), _wgslsmith_div_u32(26046u, 69473u))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, _wgslsmith_f_op_f32(var_0.d.a.x + -2073f), _wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(round(var_2.x)))), any(select(select(vec4<bool>(var_0.b, var_0.b, var_0.b, false), vec4<bool>(var_0.b, true, var_0.b, var_0.d.b), var_0.b), select(vec4<bool>(false, var_0.d.b, true, var_0.d.b), vec4<bool>(var_0.d.b, var_0.d.b, false, var_0.d.b), vec4<bool>(false, true, true, true)), false || var_0.b)), var_2.x, u_input.c));
    var var_4 = Struct_4(-var_1.x, var_0.c, false);
    return min(~_wgslsmith_div_vec4_u32(abs(vec4<u32>(0u, u_input.c.x, var_4.b.a, var_3.d.d.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.d.d.x, 4294967295u, var_0.d.d.x, var_0.d.d.x), vec4<u32>(u_input.c.x, 44089u, var_0.c.a, 88862u))) << (~(reverseBits(vec4<u32>(1u, 4294967295u, var_3.c.d.x, u_input.c.x)) >> (vec4<u32>(29984u, 52539u, 56700u, 52972u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.d.d.x, 62126u, u_input.c.x, 1u), vec4<u32>(firstTrailingBit(4294967295u), _wgslsmith_sub_u32(var_3.c.d.x, 0u), var_0.c.a >> (var_0.d.d.x % 32u), u_input.c.x & var_3.b.d.x)), var_3.c.d.x, 1u));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>) -> i32 {
    var var_0 = vec4<bool>(!all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true)), true, true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true)))));
    global1 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1737f + _wgslsmith_f_op_f32(global1.x + -717f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-485f, -1453f)), 516f, var_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))))), global1.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + global1.x), global1.x), -921f));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(583f, -479f, -440f, global1.x), vec4<f32>(global1.x, global1.x, global1.x, global1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 648f, global1.x, 530f)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1072f, 1156f, 517f, -555f))))), true)), (var_0.x | any(select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(true, var_0.x, false, var_0.x), var_0.x))) || (all(select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false))) & !var_0.x), _wgslsmith_f_op_f32(1246f - -555f), _wgslsmith_div_vec3_u32(reverseBits(~(~arg_1.wwy)), ~(~u_input.c >> ((vec3<u32>(30748u, 21400u, arg_1.x) & vec3<u32>(64714u, arg_1.x, 4294967295u)) % vec3<u32>(32u)))));
    var_0 = !select(!vec4<bool>(var_1.b, all(var_0.yxz), !var_0.x, select(var_1.b, false, false)), !(!(!vec4<bool>(var_0.x, var_0.x, true, false))), all(select(select(vec2<bool>(var_0.x, var_1.b), vec2<bool>(var_0.x, true), var_0.wy), select(var_0.zw, vec2<bool>(false, var_0.x), vec2<bool>(true, var_1.b)), true)));
    let var_2 = var_1.a.x;
    return ~20741i;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32) -> u32 {
    var var_0 = Struct_4(func_4(3053u, _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.c.x, 10396u), vec4<u32>(1u, 40920u, 1u, arg_0.a)), ~vec4<u32>(1u, 4294967295u, arg_0.a, 7870u)) & (func_3() << (vec4<u32>(arg_0.a, 1u, 80151u, arg_0.a) % vec4<u32>(32u)))), arg_0, !any(vec4<bool>(true, true, true, true)) && (arg_0.b.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(ceil(-1918f)))));
    let var_1 = Struct_5(var_0.b.d.x, all(!select(select(vec3<bool>(false, var_0.c, true), vec3<bool>(true, true, var_0.c), true), !vec3<bool>(var_0.c, var_0.c, false), !vec3<bool>(false, var_0.c, var_0.c))), var_0.b, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1 - vec4<f32>(-499f, global1.x, arg_0.c.x, arg_1.x)) * _wgslsmith_f_op_vec4_f32(min(arg_1, arg_1))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(ceil(var_0.b.b.x)), _wgslsmith_f_op_f32(global1.x * var_0.b.b.x), 128f)), 1i > u_input.a.x, _wgslsmith_f_op_f32(-global1.x), u_input.c), arg_0.d.x);
    var_0 = Struct_4(countOneBits(abs(var_0.b.d.x) ^ _wgslsmith_sub_i32(u_input.b.x, arg_2)) | func_4(_wgslsmith_mod_u32(abs(78249u), arg_0.a), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c.x, arg_0.a, arg_0.a, u_input.c.x), firstLeadingBit(vec4<u32>(4294967295u, u_input.c.x, var_0.b.a, 19689u)))), arg_0, var_1.b);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_0.b.b.x, 729f, true)), 1060f, global1.x, -1378f) + vec4<f32>(var_1.c.b.x, _wgslsmith_f_op_f32(263f - -749f), arg_1.x, arg_0.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2705f, -1390f, 601f, _wgslsmith_f_op_f32(-var_1.d.c)) - vec4<f32>(global1.x, -422f, global1.x, _wgslsmith_f_op_f32(-708f + global1.x))), vec4<bool>(true, var_1.d.b, false, any(select(vec4<bool>(false, var_1.b, false, var_1.b), vec4<bool>(true, var_1.d.b, true, var_0.c), var_0.c))))));
    global0 = array<vec2<u32>, 32>();
    return _wgslsmith_div_u32(350u, max(0u, _wgslsmith_mod_u32(max(abs(arg_0.a), 4294967295u), ~(~79119u))));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_4 {
    var var_0 = select(!select(!vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(!arg_0.b, any(vec2<bool>(false, true))), vec2<bool>(true || arg_0.b, arg_0.b)), !vec2<bool>(arg_0.b, global1.x == _wgslsmith_div_f32(global1.x, -1595f)), vec2<bool>(true || !arg_0.b, !all(!vec3<bool>(arg_0.b, arg_0.b, arg_0.b))));
    var var_1 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(select(arg_0.d, u_input.c, true), u_input.c) | _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.d.x, arg_0.d.x, arg_1), u_input.c), vec3<u32>(1u, 52071u, 1u)), vec3<u32>(~_wgslsmith_mod_u32(54289u, arg_1), func_2(Struct_3(0u, vec2<f32>(arg_0.a.x, global1.x), arg_0.a.yx, u_input.d.xyx), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(135f, -1019f, arg_0.a.x, arg_0.c), vec4<f32>(global1.x, global1.x, arg_0.a.x, global1.x))), firstLeadingBit(-1i)), _wgslsmith_sub_u32(10053u, _wgslsmith_mod_u32(arg_0.d.x, u_input.c.x))));
    let var_2 = countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(28249u, arg_0.d.x, var_1.x, var_1.x)), vec4<u32>(4294967295u, arg_0.d.x, 4294967295u, var_1.x) | vec4<u32>(0u, 0u, var_1.x, arg_0.d.x)), 1u));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.a), all(select(!vec4<bool>(arg_0.b, var_0.x, false, true), vec4<bool>(true, !var_0.x, true, true), false)), _wgslsmith_f_op_f32(f32(-1f) * -834f), vec3<u32>(arg_1, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(47766u << (var_1.x % 32u), _wgslsmith_add_u32(var_2, var_2), ~var_1.x), arg_1, ~var_1.x | 1u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1, var_1.x, 4294967295u, 4294967295u), ~vec4<u32>(29080u, var_2, 78591u, arg_1), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, arg_1, arg_1), vec4<u32>(1u, 1u, 4294967295u, arg_1))), ~(~vec4<u32>(var_1.x, var_2, var_2, var_2)))));
    let var_4 = false;
    return Struct_4(func_4(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 25269u, 10276u, 69092u), vec4<u32>(5610u, 4294967295u, arg_1, 0u)), vec4<u32>(_wgslsmith_mod_u32(93099u, func_2(Struct_3(u_input.c.x, var_3.a.zx, global1.xw, u_input.d.wzw), arg_0.a, -61643i)), var_2, var_1.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(2527u, u_input.c.x, 1u, 1u), vec4<u32>(1u, var_2, 27451u, 47066u)), 1u))), Struct_3(4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, -893f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1843f), -634f), vec3<i32>(u_input.a.x, max(abs(2147483647i), u_input.b.x << (u_input.c.x % 32u)), ~func_4(986u, vec4<u32>(var_2, 1u, 4294967295u, arg_1)))), all(!select(!vec3<bool>(var_0.x, true, true), vec3<bool>(true, var_0.x, var_3.b), 541f >= arg_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(938f, -859f))), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, global1.x)) * -507f) * _wgslsmith_f_op_f32(f32(-1f) * -224f)), global1.x));
    var var_1 = 19046i;
    global1 = vec4<f32>(var_0.x, 825f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), global1.x);
    var_1 = abs(_wgslsmith_dot_vec3_i32(countOneBits(u_input.d.ywx), -u_input.b.xxx));
    var var_2 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 * vec4<f32>(1494f, global1.x, 121f, 1303f)))), any(vec3<bool>(true, true, true)) && true, global1.x, _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, 1u), u_input.c ^ vec3<u32>(u_input.c.x, 1u, 50457u)), u_input.c, u_input.c)), u_input.c.x);
    global0 = array<vec2<u32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec4_i32((u_input.b << (vec4<u32>(0u, 41300u, 361u, var_2.b.a) % vec4<u32>(32u))) << (~vec4<u32>(u_input.c.x, u_input.c.x, 51222u, u_input.c.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.b.d.x, 32506i, u_input.d.x, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.a.x, var_2.a), vec4<i32>(-48072i, u_input.b.x, -2147483647i, 1i))))), _wgslsmith_mod_vec2_i32(vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -17810i, u_input.b.x), vec3<i32>(var_2.b.d.x, u_input.b.x, var_2.b.d.x)), 1i), select(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, var_2.b.d.x), abs(u_input.a)), u_input.a, true)));
}

