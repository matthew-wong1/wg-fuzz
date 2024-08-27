struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true));

var<private> global1: array<bool, 8>;

var<private> global2: array<Struct_3, 22>;

var<private> global3: vec3<f32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: f32) -> vec4<f32> {
    let var_0 = Struct_1(-u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_2)) * -1617f)), true, vec4<u32>(_wgslsmith_sub_u32(u_input.e.x, u_input.c), ~(4294967295u ^ arg_0), u_input.c << (~1u % 32u), ~(~arg_0)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(680f, 1240f, arg_1, arg_1) * vec4<f32>(1661f, arg_1, arg_2, global3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-664f, global3.x, arg_1, 745f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 1238f, arg_1, arg_2))))));
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_sub_i32(var_1.x, _wgslsmith_dot_vec3_i32(select(~vec3<i32>(var_1.x, 10234i, 0i), vec3<i32>(-17924i, var_0.a >> (57887u % 32u), var_0.a), vec3<bool>(true, true, true)), countOneBits(u_input.b)));
    var var_3 = arg_2;
    var var_4 = _wgslsmith_f_op_vec2_f32(global3.zy - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, var_0.b) + vec2<f32>(var_0.b, -1620f)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.e.x, 1501f), var_0.e.zz, global1[_wgslsmith_index_u32(arg_0, 8u)]))))))));
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1183f, 532f, arg_1))))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b - -1796f), -810f)), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, arg_1)) - 1393f), arg_2)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.e * var_0.e), _wgslsmith_f_op_vec4_f32(-var_0.e))) * var_0.e)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3(abs(~(~u_input.c)), _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1050f))), -844f));
    let var_1 = Struct_2(firstTrailingBit(1i), countOneBits(12745u));
    global1 = array<bool, 8>();
    let var_2 = -abs(u_input.b);
    var var_3 = global3.x;
    return var_1;
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(59658u, 22u)];
    let var_1 = _wgslsmith_add_i32(abs(var_0.a.a), min(-3313i, -_wgslsmith_mult_i32(arg_3.x, arg_1.a)));
    let var_2 = ~1u;
    global2 = array<Struct_3, 22>();
    var var_3 = global2[_wgslsmith_index_u32(func_2().b ^ countOneBits(var_2), 22u)];
    return Struct_2(~(-18265i), var_0.c | (var_0.a.d.x ^ u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(vec3<f32>(-125f, global3.x, _wgslsmith_f_op_f32(global3.x + -1118f))), Struct_1(-1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(490f)) + -737f)), !(u_input.c <= min(4294967295u, 4294967295u)), ~vec4<u32>(~u_input.a.x, u_input.c, 41939u, ~59527u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1586f, -1380f, 1655f, 1000f), vec4<f32>(global3.x, -763f, -1856f, global3.x), vec4<bool>(global1[_wgslsmith_index_u32(27878u, 8u)], global1[_wgslsmith_index_u32(4229u, 8u)], global1[_wgslsmith_index_u32(u_input.c, 8u)], false)))) * vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(select(global3.x, global3.x, true)), _wgslsmith_f_op_f32(abs(207f)), -1430f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2049f * -840f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.x - -1000f)))), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(1i, u_input.d, u_input.d, u_input.d)) ^ (vec4<i32>(u_input.d, -2147483647i, u_input.b.x, -2147483647i) >> (vec4<u32>(u_input.c, u_input.c, 1u, u_input.c) % vec4<u32>(32u))), -min(vec4<i32>(53816i, 6105i, -36726i, u_input.b.x), vec4<i32>(0i, 0i, 2351i, u_input.d))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, u_input.d, 16570i, -1i) >> ((u_input.e << (vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), -min(vec4<i32>(1i, u_input.d, u_input.b.x, u_input.d), vec4<i32>(-1i, u_input.b.x, u_input.d, -9801i)))));
    var var_1 = Struct_3(Struct_1(~_wgslsmith_mod_i32(firstTrailingBit(var_0.a), _wgslsmith_add_i32(-2147483647i, u_input.b.x)), -1542f, 16140i < _wgslsmith_div_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(var_0.a, -21686i, 12445i))), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, 46603u, u_input.a.x, 97422u), u_input.e) ^ u_input.e, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1001f, global3.x, 346f, global3.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2571f, global3.x, -1539f, global3.x)))))), global3.yz, 34557u);
    var var_2 = vec3<u32>(~_wgslsmith_add_u32(u_input.c, u_input.c), var_1.c, _wgslsmith_add_u32(var_1.a.d.x, u_input.c));
    var var_3 = var_0.b;
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(213f * _wgslsmith_f_op_f32(f32(-1f) * -559f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b.x, -938f, var_1.a.c)) + 1000f) + _wgslsmith_f_op_f32(-var_1.a.b))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(103f, 354f), var_1.a.e.xz, any(select(!global0[_wgslsmith_index_u32(var_2.x, 13u)], select(global0[_wgslsmith_index_u32(var_2.x, 13u)], global0[_wgslsmith_index_u32(var_2.x, 13u)], true), !vec3<bool>(global1[_wgslsmith_index_u32(var_2.x, 8u)], false, false))))));
    let var_5 = global2[_wgslsmith_index_u32(~1u << (~((select(var_0.b, 1u, false) ^ _wgslsmith_sub_u32(103326u, 61198u)) ^ 1u) % 32u), 22u)];
    let var_6 = all(vec2<bool>(true, true));
    var var_7 = func_1(vec3<f32>(_wgslsmith_div_f32(-300f, _wgslsmith_f_op_f32(step(var_1.a.b, _wgslsmith_f_op_f32(-1879f + var_1.a.e.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2362f - _wgslsmith_f_op_f32(1000f + var_4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + -239f))), global3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(2462f, _wgslsmith_f_op_f32(f32(-1f) * -2951f)), var_1.a.b)), _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(527f, -1131f)))))));
}

