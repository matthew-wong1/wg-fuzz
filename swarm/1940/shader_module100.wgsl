struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2;
    return _wgslsmith_f_op_f32(-arg_2.a.x);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = 0i;
    let var_1 = vec2<f32>(-845f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -778f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, arg_0.a.x) + _wgslsmith_f_op_f32(-1000f * arg_0.b.x)))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - 1559f), _wgslsmith_f_op_f32(f32(-1f) * -1671f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)));
    var var_3 = 772f;
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(14273u, ~(~(~_wgslsmith_mod_u32(1u, u_input.a)))), 7u)];
    return _wgslsmith_f_op_f32(func_3(vec3<bool>(any(vec2<bool>(any(vec3<bool>(var_4.d, true, var_4.d)), arg_0.d)), var_4.d, false), !(31305u > ~arg_0.c.x) || var_4.d, global0[_wgslsmith_index_u32(54484u, 7u)]));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2108f, arg_0.b.x, 658f, -2216f)))))))), _wgslsmith_f_op_vec3_f32(select(arg_0.a.xwy, arg_0.a.zxy, arg_2)), arg_0.c, arg_0.d);
    return global0[_wgslsmith_index_u32(arg_0.c.x, 7u)];
}

fn func_1() -> f32 {
    global0 = array<Struct_1, 7>();
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-512f, -1229f, -399f, _wgslsmith_div_f32(1679f, -1042f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-793f, 837f, 542f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-234f, 1355f, 1411f) + vec3<f32>(144f, -449f, -1566f))) + vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(-1523f, 498f, -1851f, -2488f), vec3<f32>(224f, -1029f, 1395f), vec4<u32>(u_input.a, u_input.a, u_input.a, 47564u), false), 4294967295u)), _wgslsmith_f_op_f32(693f * 324f), _wgslsmith_f_op_f32(f32(-1f) * -1479f))), vec4<u32>(_wgslsmith_add_u32(32688u, u_input.a), _wgslsmith_add_u32(0u, u_input.a), ~4294967295u, u_input.a) ^ _wgslsmith_add_vec4_u32(~vec4<u32>(67686u, u_input.a, u_input.a, u_input.a), select(vec4<u32>(u_input.a, 33947u, u_input.a, 48360u), vec4<u32>(48452u, u_input.a, 4294967295u, u_input.a), vec4<bool>(true, false, false, true))), true), vec4<i32>(1i, 1i, 1i, 1i), select(vec3<bool>(~15518u >= u_input.a, true, any(vec4<bool>(false, true, true, false))), vec3<bool>(true, true, true), true));
    global0 = array<Struct_1, 7>();
    let var_1 = var_0.c.zzy;
    var var_2 = _wgslsmith_mod_i32(0i ^ _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-3854i, 2147483647i) >> (var_1.xz % vec2<u32>(32u)), vec2<i32>(1i, -17268i))), 42404i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(abs(var_0.c.x | var_0.c.x), 7u)], var_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(933f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(69871u, 7u)];
    var var_1 = u_input.a;
    var_0 = global0[_wgslsmith_index_u32(var_0.c.x, 7u)];
    let var_2 = global0[_wgslsmith_index_u32(max(27051u, u_input.a), 7u)];
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(var_0.a.x, var_0.a.x, -1000f, var_2.b.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(701f, var_2.a.x, -1064f, var_2.b.x)))) + vec4<f32>(_wgslsmith_f_op_f32(min(var_2.a.x, 1564f)), _wgslsmith_f_op_f32(-var_2.a.x), -1639f, var_2.a.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.a.www, _wgslsmith_f_op_vec3_f32(-var_0.b)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(361f + var_2.b.x)), _wgslsmith_f_op_f32(func_1()), -101f), select(vec3<bool>(var_0.d, !var_2.d, true), select(vec3<bool>(var_0.d, var_2.d, false), vec3<bool>(true, var_2.d, true), var_2.d == false), false))), var_2.c, false);
    var var_3 = var_0.d;
    var_3 = any(select(select(select(select(vec4<bool>(var_2.d, var_2.d, true, false), vec4<bool>(var_0.d, true, var_0.d, true), var_0.d), select(vec4<bool>(true, var_2.d, var_2.d, var_0.d), vec4<bool>(var_2.d, true, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(var_0.d, true, true, var_0.d), vec4<bool>(var_2.d, true, false, var_2.d), vec4<bool>(true, var_0.d, false, false))), vec4<bool>(true, 4294967295u < u_input.a, all(vec3<bool>(var_0.d, true, true)), true), true), !vec4<bool>(true, true & var_0.d, false, all(vec2<bool>(true, var_0.d))), !(_wgslsmith_f_op_f32(var_2.a.x - var_2.a.x) > -538f)));
    var var_4 = vec3<i32>(_wgslsmith_mod_i32(27178i, 1i), ~1i, _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_sub_i32(-1i, 1i)) | _wgslsmith_clamp_i32(7828i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(1i, 13400i)), -2147483647i), ~7247i));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.c.yx, var_0.c.wx, firstLeadingBit(min(_wgslsmith_mod_vec3_u32(~var_2.c.zwy, _wgslsmith_mod_vec3_u32(var_2.c.xxz, vec3<u32>(51366u, 10840u, u_input.a))), var_2.c.xwz | var_2.c.yzx)), vec2<i32>(max(-9029i, abs(2147483647i)), select(var_4.x, 2147483647i, var_2.d) << (_wgslsmith_div_u32(38927u, 4294967295u) % 32u)) << (_wgslsmith_add_vec2_u32(vec2<u32>(var_2.c.x ^ 51502u, ~1u), func_4(func_4(global0[_wgslsmith_index_u32(32087u, 7u)], vec4<i32>(var_4.x, var_4.x, -1i, -1i), vec3<bool>(true, var_2.d, var_0.d)), -vec4<i32>(10266i, var_4.x, var_4.x, var_4.x), vec3<bool>(true, true, true)).c.wz) % vec2<u32>(32u)));
}

