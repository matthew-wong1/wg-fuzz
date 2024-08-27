struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(-7276i, 20343i, i32(-2147483648), -1i, 0i, 25642i, -30464i, -21885i, -1i, 26516i, 1i, -1i, i32(-2147483648), -1i, 22683i, 2147483647i, -1100i, 32819i, 7916i, -47335i, -31794i, 0i, 2147483647i, -1i, 0i, 22694i, 2147483647i, -7289i);

var<private> global1: vec4<u32>;

var<private> global2: vec2<u32> = vec2<u32>(56155u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = ~(~85133u | _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, global1.x, 13429u), 1u), 0u));
    var var_1 = Struct_1(vec4<bool>(false, false, true, false));
    let var_2 = vec2<u32>(~0u, global2.x);
    let var_3 = Struct_1(select(var_1.a, select(vec4<bool>(var_1.a.x, global2.x > 0u, true, !var_1.a.x), select(var_1.a, var_1.a, !var_1.a), var_1.a.x), select(vec4<bool>(true, any(vec2<bool>(false, false)), any(var_1.a.wy), all(var_1.a)), !(!var_1.a), var_1.a.x)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-672f + 606f));
    return global1.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = vec2<i32>(firstLeadingBit(global0[_wgslsmith_index_u32(36230u, 28u)]), -11569i);
    var var_1 = ~(~(45135u ^ func_3()));
    let var_2 = ~global0[_wgslsmith_index_u32(~abs(abs(_wgslsmith_sub_u32(41802u, u_input.a))), 28u)];
    global1 = firstLeadingBit(firstLeadingBit(max(~vec4<u32>(16000u, 15015u, global2.x, global2.x), vec4<u32>(u_input.a, u_input.a, u_input.a, global2.x) << (vec4<u32>(global2.x, 4294967295u, global2.x, u_input.a) % vec4<u32>(32u)))) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(global2.x, u_input.a, 9753u, global2.x), vec4<u32>(0u, 1u, 6030u, u_input.a), arg_0.a), vec4<u32>(49491u, global1.x, 4294967295u, u_input.a)), vec4<u32>(~41456u, 127760u, global1.x, u_input.a)) % vec4<u32>(32u)));
    global0 = array<i32, 28>();
    return Struct_1(vec4<bool>(true, arg_1.x, arg_0.a.x, arg_1.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = arg_1;
    var var_1 = var_0.c.ww;
    let var_2 = ~vec2<u32>(global2.x, ~_wgslsmith_add_u32(15612u, global1.x));
    global2 = select(vec2<u32>(20189u, var_2.x), ~vec2<u32>(1u, max(~var_2.x, 1u)), arg_0.a.x);
    let var_3 = ~countOneBits(select(reverseBits(vec3<i32>(global0[_wgslsmith_index_u32(global2.x, 28u)], global0[_wgslsmith_index_u32(var_2.x, 28u)], -7389i)) & vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)]), vec3<i32>(-1i) * -vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec3<bool>(all(vec2<bool>(false, false)), true, false)));
    return 1273f;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = vec3<u32>(abs(0u), _wgslsmith_mult_u32(~(u_input.a << (38018u % 32u)), _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(0u, u_input.a), global2.x ^ ~25973u, _wgslsmith_div_u32(global1.x, arg_0 ^ global2.x))), _wgslsmith_div_u32(arg_0 << (~(~global2.x) % 32u), u_input.a));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(380f - -214f), _wgslsmith_f_op_f32(func_4(func_2(Struct_1(vec4<bool>(true, false, false, true)), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, false, true, true)), vec4<f32>(-754f, 1713f, 312f, -146f), false), Struct_1(vec4<bool>(false, false, false, true))))))), _wgslsmith_f_op_f32(-2445f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2186f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(429f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-158f, -691f)), _wgslsmith_f_op_f32(func_4(func_2(func_2(Struct_1(vec4<bool>(false, false, false, false)), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(vec4<bool>(false, true, true, true)), func_2(Struct_1(vec4<bool>(true, false, true, false)), vec4<bool>(false, true, true, true)), vec4<f32>(-633f, -1000f, -270f, -685f), true), Struct_1(vec4<bool>(true, true, true, true))))));
    global1 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u, global1.x, ~global2.x, ~(max(global2.x, var_0.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global2.x, global1.x, 9963u), vec4<u32>(27563u, var_0.x, 1u, u_input.a)))), vec4<u32>(abs(1u), 1u, 0u, ~1140u >> (~func_3() % 32u)));
    let var_2 = func_2(func_2(func_2(Struct_1(func_2(Struct_1(vec4<bool>(false, true, true, true)), vec4<bool>(false, true, true, true)).a), func_2(Struct_1(vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), false)).a), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, true))), vec4<bool>(false, any(vec4<bool>(false, false, false, false)), true, true))), !func_2(Struct_1(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true)), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))).a);
    let var_3 = vec4<u32>(_wgslsmith_dot_vec2_u32(countOneBits(~(vec2<u32>(4294967295u, var_0.x) & vec2<u32>(global1.x, arg_0))), global1.wy ^ abs(_wgslsmith_sub_vec2_u32(var_0.xz, vec2<u32>(46387u, u_input.a)))), u_input.a, global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, ~0u, 4294967295u, ~34244u), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(global2.x, var_0.x, global1.x, 21215u)), vec4<u32>(72706u, 1u, arg_0, 22692u), ~vec4<u32>(global1.x, global2.x, var_0.x, 4294967295u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, arg_0, 1u, arg_0), vec4<u32>(45952u, global1.x, 0u, u_input.a)))));
    return Struct_1(vec4<bool>(func_2(Struct_1(select(vec4<bool>(false, true, true, var_2.a.x), var_2.a, vec4<bool>(var_2.a.x, var_2.a.x, true, false))), !vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x)).a.x, all(vec4<bool>(true, func_2(var_2, vec4<bool>(false, false, false, false)).a.x, false & var_2.a.x, var_2.a.x)), var_2.a.x, var_2.a.x & var_2.a.x));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_2) -> vec3<i32> {
    global0 = array<i32, 28>();
    let var_0 = func_1((~45842u & (_wgslsmith_dot_vec3_u32(global1.xwy, vec3<u32>(arg_0, arg_1, arg_1)) ^ global1.x)) >> (arg_1 % 32u));
    let var_1 = _wgslsmith_clamp_i32(2147483647i, ~reverseBits(-global0[_wgslsmith_index_u32(1u, 28u)]), -2147483647i) > reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global1.x, max(u_input.a, global2.x)) & select(7633u, arg_1, false), 28u)]);
    global0 = array<i32, 28>();
    var var_2 = Struct_2(arg_2.a, func_1(~(_wgslsmith_add_u32(u_input.a, 36585u) >> (~arg_1 % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_2.c))) + _wgslsmith_f_op_vec4_f32(-arg_2.c))), true);
    return vec3<i32>(_wgslsmith_mult_i32(~_wgslsmith_sub_i32(3447i, -7742i), max(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(arg_1, 28u)], 0i), vec2<i32>(global0[_wgslsmith_index_u32(global2.x, 28u)], global0[_wgslsmith_index_u32(global2.x, 28u)])), vec2<i32>(56941i, global0[_wgslsmith_index_u32(global1.x, 28u)])), 1i)), global0[_wgslsmith_index_u32(global2.x, 28u)], global0[_wgslsmith_index_u32(~global2.x | ~58479u, 28u)]);
}

fn func_6(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(760f + 1331f), 1553f, true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(333f - -532f)))), 1262f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1380f)))), -1740f);
    let var_1 = func_2(Struct_1(vec4<bool>(true, any(func_2(Struct_1(vec4<bool>(false, false, false, false)), vec4<bool>(false, true, true, true)).a.wxw), all(vec2<bool>(true, true)), true)), vec4<bool>(!(!select(false, true, true)), true, true, true | (var_0.x > _wgslsmith_f_op_f32(sign(var_0.x)))));
    var var_2 = vec3<i32>(firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_sub_i32(~(-5209i), 0i), 28914i)), countOneBits(arg_2.x), -arg_1.x);
    var var_3 = Struct_1(var_1.a);
    var var_4 = Struct_2(Struct_1(func_1(global2.x).a), var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)), var_3.a.x);
    return func_1(_wgslsmith_mult_u32(select(global1.x, global1.x, false), firstLeadingBit(24947u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = -countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.x, 12396u), 28u)]);
    let var_2 = var_1;
    let var_3 = func_6(0u, vec2<i32>(-1i, global0[_wgslsmith_index_u32(0u, 28u)]), func_5(_wgslsmith_mult_u32(1u, ~_wgslsmith_dot_vec3_u32(global1.wyx, global1.xxx)), u_input.a ^ _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(66304u, 20508u)), Struct_2(func_1(1u), func_1(_wgslsmith_add_u32(0u, global1.x)), vec4<f32>(-901f, 963f, -455f, _wgslsmith_f_op_f32(-106f + 157f)), var_0)), global1.yx);
    var var_4 = all(select(var_3.a, var_3.a, !(!var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~0u, ~abs(~_wgslsmith_mult_u32(1u, u_input.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1387f)))), abs(_wgslsmith_mod_vec4_u32(select(min(vec4<u32>(94752u, global1.x, u_input.a, global1.x), vec4<u32>(4294967295u, u_input.a, u_input.a, global2.x)), ~vec4<u32>(u_input.a, global2.x, 4294967295u, global2.x), vec4<bool>(var_3.a.x, false, var_3.a.x, var_3.a.x)), vec4<u32>(1u, 1u, 18404u, 1u) & _wgslsmith_mult_vec4_u32(vec4<u32>(36777u, u_input.a, u_input.a, 9775u), vec4<u32>(93600u, u_input.a, 0u, 7804u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1215f - -447f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.a < _wgslsmith_mult_u32(global2.x, global2.x)))));
}

