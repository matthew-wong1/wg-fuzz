struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(true, true, true, false, true, false, true, true, false);

var<private> global1: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec4<bool>(false, true, true, true), Struct_1(30978u, false, 0u, -1346f, vec4<bool>(true, true, true, true)), 53841u), Struct_2(vec4<bool>(false, false, false, false), Struct_1(1u, true, 29272u, 1000f, vec4<bool>(false, false, false, false)), 1u), Struct_2(vec4<bool>(false, true, false, false), Struct_1(32736u, false, 0u, -633f, vec4<bool>(true, true, true, false)), 4294967295u), Struct_2(vec4<bool>(false, false, false, false), Struct_1(1u, false, 0u, -807f, vec4<bool>(true, false, false, false)), 43686u), Struct_2(vec4<bool>(true, false, false, true), Struct_1(113252u, false, 27283u, 412f, vec4<bool>(false, false, false, true)), 54458u));

var<private> global2: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(76297u, 9u)];
    let var_1 = -911f;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -246f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-985f)), _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(var_1 * -846f)))), 538f));
    var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(f32(-1f) * -1747f))), _wgslsmith_div_f32(-807f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-739f)), _wgslsmith_f_op_f32(sign(-2158f)))), _wgslsmith_f_op_f32(-var_2.x))));
    let var_3 = _wgslsmith_div_vec2_i32(u_input.a, abs(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(1i, 1215i)))) ^ _wgslsmith_sub_vec2_i32((-u_input.a ^ u_input.a) & u_input.a, vec2<i32>(~u_input.a.x, 29047i));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.zw, min(u_input.b, vec2<u32>(u_input.b.x, arg_0) << (u_input.b % vec2<u32>(32u)))), vec2<u32>(~(~arg_0), 55346u)) | u_input.c.x;
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = 120f;
    var var_1 = -1538f;
    var_0 = arg_1;
    var var_2 = !any(select(!(!vec4<bool>(arg_2.a.x, global0[_wgslsmith_index_u32(u_input.c.x, 9u)], global0[_wgslsmith_index_u32(9648u, 9u)], false)), vec4<bool>(true, true, true, true), vec4<bool>(0i < u_input.a.x, all(arg_2.a), false, arg_2.b.e.x || false)));
    var var_3 = u_input.b.x;
    return firstLeadingBit(_wgslsmith_mod_vec3_i32(-(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, u_input.a.x, 18468i)), firstTrailingBit(select(-vec3<i32>(u_input.a.x, -2147483647i, 1i), vec3<i32>(u_input.a.x, 12515i, 31042i) >> (u_input.c.wyw % vec3<u32>(32u)), arg_2.b.e.yzx))));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(func_3(-346f, _wgslsmith_f_op_f32(arg_1.b.d + 957f), arg_1), ~select(countOneBits(vec3<i32>(52909i, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ vec3<i32>(-40060i, u_input.a.x, 50731i), true)), vec3<i32>(reverseBits(-(i32(-1i) * -36744i)), u_input.a.x, u_input.a.x));
    var var_1 = func_3(arg_1.b.d, arg_1.b.d, Struct_2(!select(arg_1.b.e, vec4<bool>(arg_1.a.x, true, arg_1.a.x, arg_1.a.x), any(vec2<bool>(arg_1.b.b, true))), arg_1.b, ~(~7081u))).zy;
    var var_2 = -47419i;
    let var_3 = Struct_4(vec3<u32>(~func_1(2641u), max(~1u, _wgslsmith_sub_u32(~arg_1.c, ~60487u)), func_1(u_input.c.x)));
    let var_4 = -1i | _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a.x, ~_wgslsmith_dot_vec2_i32(var_0.xy, var_0.xx)), _wgslsmith_div_i32(max(-5926i, u_input.a.x) << (u_input.c.x % 32u), _wgslsmith_add_i32(_wgslsmith_mult_i32(-23508i, -48372i), ~1i)));
    return ~arg_1.b.a;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_4(vec3<u32>(~u_input.b.x | ~arg_0.c, 4294967295u, 4294967295u) ^ _wgslsmith_add_vec3_u32(u_input.c.zyz, reverseBits(u_input.c.wxy)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2230f), _wgslsmith_f_op_f32(trunc(816f))), arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(697f, -1583f))), _wgslsmith_div_f32(-179f, arg_0.d)), vec4<f32>(-263f, _wgslsmith_f_op_f32(-553f * _wgslsmith_f_op_f32(f32(-1f) * -2895f)), arg_0.d, _wgslsmith_div_f32(201f, arg_0.d))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-479f, -483f)) + _wgslsmith_f_op_f32(-153f - arg_0.d)), -477f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d, arg_0.d) * _wgslsmith_f_op_f32(arg_0.d * -1936f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.d * arg_0.d), _wgslsmith_f_op_f32(sign(1329f))))) + _wgslsmith_div_vec4_f32(vec4<f32>(2215f, _wgslsmith_f_op_f32(sign(-930f)), _wgslsmith_f_op_f32(1683f - 389f), _wgslsmith_f_op_f32(arg_0.d * arg_0.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, -1887f, arg_0.d, -2040f))))));
    let var_2 = true;
    var_0 = Struct_4(u_input.c.wzx);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2311f, -356f)));
    return Struct_1(~(~(u_input.b.x << (7684u % 32u))) | select(arg_0.c, reverseBits(var_0.a.x), all(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 9u)]))), !var_2 == any(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(62440u, 9u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.a.x, 9u)]), arg_0.b)), u_input.b.x, arg_0.d, arg_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(0u, 9u)];
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1213f))));
    var_1 = -445f;
    let var_2 = u_input.c;
    global0 = array<bool, 9>();
    var var_3 = func_4(Struct_1(_wgslsmith_add_u32(~1u, func_1(_wgslsmith_mult_u32(1u, u_input.b.x))), true, u_input.c.x, -578f, vec4<bool>(global0[_wgslsmith_index_u32(~func_2(u_input.b.x, global1[_wgslsmith_index_u32(0u, 5u)]), 9u)], true, all(vec2<bool>(global0[_wgslsmith_index_u32(4802u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)])) | false, true)));
    let var_4 = var_3.b || global0[_wgslsmith_index_u32(7887u, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -285f)), _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(var_3.c, 91407u, 4294967295u) << (~vec3<u32>(32968u, var_2.x, 1u) % vec3<u32>(32u))), reverseBits(~(u_input.c.wxz << (vec3<u32>(var_3.c, var_3.c, 69551u) % vec3<u32>(32u))))), abs(1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(39011u, 4294967295u), _wgslsmith_mult_vec2_u32(u_input.b, var_2.wy))), _wgslsmith_div_f32(-151f, func_4(Struct_1(var_3.a, var_3.b, firstLeadingBit(67332u), _wgslsmith_f_op_f32(-var_3.d), !vec4<bool>(global0[_wgslsmith_index_u32(var_3.a, 9u)], true, var_4, false))).d));
}

