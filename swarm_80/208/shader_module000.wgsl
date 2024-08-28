struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15>;

var<private> global1: array<f32, 29>;

var<private> global2: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    let var_0 = u_input.a.x;
    global0 = array<vec2<i32>, 15>();
    var var_1 = arg_2;
    let var_2 = arg_1.d.x;
    global1 = array<f32, 29>();
    return u_input.b;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, 0u, u_input.a.x), ~u_input.a.x, max(arg_1.b, arg_1.b), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), ~arg_1.a) >> (arg_1.a % vec4<u32>(32u)), ~(~firstTrailingBit(~vec4<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, 1112u))));
    let var_1 = u_input.a.wx;
    var var_2 = ~21762u;
    var var_3 = vec4<u32>(arg_1.a.x, ~_wgslsmith_sub_u32(countOneBits(var_1.x), min(~var_0.x, 0u)), abs(~0u), 1u);
    let var_4 = Struct_1(vec4<u32>(_wgslsmith_clamp_u32(~max(1u, arg_1.a.x), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.x, arg_1.b, var_3.x, arg_1.b)), var_0), u_input.a.x), ~(~(~var_3.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(44158u, u_input.a.x, 4294967295u, 0u), _wgslsmith_sub_vec4_u32(var_0, u_input.a)) >> (44648u % 32u), 0u), var_1.x & var_3.x, vec3<f32>(-1774f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(67679u, var_1.x), 29u)]))), 396f), !arg_1.d, arg_1.e);
    return firstLeadingBit(_wgslsmith_sub_i32(-_wgslsmith_clamp_i32(var_4.e.x, arg_1.e.x, arg_1.e.x), var_4.e.x)) ^ var_4.e.x;
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: u32) -> Struct_1 {
    global0 = array<vec2<i32>, 15>();
    global2 = global1[_wgslsmith_index_u32(0u, 29u)] > _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 0u), 29u)]);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 29u)] + 1382f)), 262f, _wgslsmith_f_op_f32(sign(-772f)) >= _wgslsmith_f_op_f32(abs(140f)))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_2, u_input.a.x), countOneBits(8122u)), 29u)] + 1000f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -315f), _wgslsmith_f_op_f32(-442f - 1107f), true))), -550f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-1696f, -1007f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-461f, global1[_wgslsmith_index_u32(1u, 29u)]) * vec2<f32>(1285f, var_0))), vec2<f32>(_wgslsmith_f_op_f32(round(var_0)), -148f))))));
    global0 = array<vec2<i32>, 15>();
    return Struct_1(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_2, 1u, arg_2, 3843u)), firstLeadingBit(max(u_input.a, vec4<u32>(32418u, 34886u, arg_2, 30004u)))), _wgslsmith_add_u32(min(u_input.a.x, 71322u), 0u), vec3<f32>(-665f, var_0, var_1.x), !(!(!(!arg_1))), ~(~vec3<i32>(u_input.b, firstTrailingBit(arg_0), -26026i)));
}

fn func_1() -> Struct_3 {
    var var_0 = 0u;
    let var_1 = func_4(_wgslsmith_div_i32(func_2(_wgslsmith_dot_vec4_u32(u_input.a | u_input.a, _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x))), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(29748u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x)), ~u_input.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(20542u, 29u)], -2595f)), vec2<bool>(true, true), -vec3<i32>(1i, 21879i, 2363i)), Struct_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1205f, -1000f))))), ~(~(-2147483647i & u_input.b))), vec2<bool>(true, (0i != func_3(global1[_wgslsmith_index_u32(4294967295u, 29u)], Struct_1(u_input.a, u_input.a.x, vec3<f32>(1089f, -429f, 1044f), vec2<bool>(false, true), vec3<i32>(u_input.b, u_input.b, u_input.b)))) && (true & any(vec4<bool>(false, false, false, false)))), ~_wgslsmith_mult_u32(_wgslsmith_add_u32(~57132u, max(u_input.a.x, 40949u)), ~u_input.a.x << (4294967295u % 32u)));
    let var_2 = var_1.b;
    var var_3 = var_1.d.x;
    var_0 = firstLeadingBit(25737u);
    return Struct_3(!var_1.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.c.x, global1[_wgslsmith_index_u32(6427u, 29u)], global1[_wgslsmith_index_u32(43980u, 29u)], 470f), vec4<f32>(987f, 669f, -657f, var_1.c.x))), vec4<f32>(294f, global1[_wgslsmith_index_u32(25665u, 29u)], 160f, var_1.c.x))))), var_1.e.x, func_4(~min(-u_input.b, i32(-1i) * -1i), vec2<bool>((-3531i <= var_1.e.x) | false, !all(vec3<bool>(var_1.d.x, true, var_1.d.x))), abs(_wgslsmith_div_u32(func_4(-31925i, vec2<bool>(false, false), 4294967295u).b, max(12781u, 1u)))).c.x);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.x * func_4(~(u_input.b << (18094u % 32u)), arg_2.a, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 24048u, 0u, 1u), vec4<u32>(0u, 36u, 0u, 38005u)), vec4<u32>(1u, 344u, 1u, 0u) | vec4<u32>(83089u, u_input.a.x, u_input.a.x, 62136u))).c.x) + _wgslsmith_f_op_f32(176f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(256f, global1[_wgslsmith_index_u32(0u, 29u)]))) * arg_2.b.x)));
    var_0 = func_4(-1i, arg_1.d, 4294967295u).c.x;
    var var_1 = Struct_3(select(arg_2.a, !arg_1.d, arg_2.a), _wgslsmith_f_op_vec4_f32(-arg_2.b), _wgslsmith_div_i32(-arg_2.c, -select(~arg_2.c, arg_1.e.x, !arg_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(~2147483647i, select(vec2<bool>(false, arg_2.a.x), vec2<bool>(true, arg_1.d.x), arg_1.d.x), ~u_input.a.x).c.x) - _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(4294967295u, 29u)], -1000f))));
    global2 = any(select(select(select(!vec3<bool>(true, arg_1.d.x, arg_2.a.x), select(vec3<bool>(arg_2.a.x, arg_2.a.x, false), vec3<bool>(false, var_1.a.x, arg_2.a.x), arg_2.a.x), func_1().a.x), vec3<bool>(false, func_4(19891i, arg_2.a, 0u).d.x, true), !arg_1.d.x || !var_1.a.x), vec3<bool>(u_input.b <= _wgslsmith_mod_i32(1i, 2147483647i), var_1.a.x, func_4(var_1.c, func_4(35637i, vec2<bool>(false, true), arg_1.a.x).d, ~59362u).d.x), !(!(!vec3<bool>(true, arg_1.d.x, arg_1.d.x)))));
    var var_2 = arg_1.a.zwy;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 15>();
    var var_0 = vec4<bool>(!(!all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))), func_5(vec4<u32>(u_input.a.x, ~(u_input.a.x >> (u_input.a.x % 32u)), u_input.a.x ^ 4294967295u, abs(u_input.a.x)), Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, 112012u), u_input.a), countOneBits(u_input.a.x), vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 29u)]), 311f, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)]))), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(false, false)), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.b, 0i, u_input.b), vec3<i32>(-17688i, u_input.b, u_input.b))), func_1()), true, (false && (func_4(u_input.b, vec2<bool>(false, true), 14917u).d.x || true)) == !func_1().a.x);
    var_0 = !vec4<bool>(var_0.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 29u)] - _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 1000f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global1[_wgslsmith_index_u32(u_input.a.x, 29u)])), _wgslsmith_div_f32(408f, -334f) >= global1[_wgslsmith_index_u32(u_input.a.x, 29u)], var_0.x);
    let var_1 = -(-3659i | u_input.b);
    global2 = all(vec2<bool>(true, !(!(true || var_0.x))));
    var var_2 = Struct_2(vec2<f32>(671f, _wgslsmith_f_op_f32(f32(-1f) * -1247f)));
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(firstTrailingBit(select(firstLeadingBit(u_input.a.xy), u_input.a.zz, true)), ~func_4(-34777i, var_0.zw, ~u_input.a.x).a.zx));
}

