struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<f32, 21> = array<f32, 21>(1221f, -1603f, 734f, -960f, -1000f, -134f, 211f, 700f, -1083f, 1478f, -395f, -543f, -1416f, -616f, 154f, 1000f, -2638f, 210f, 1912f, 265f, -930f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = firstTrailingBit(u_input.b.x);
    let var_1 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(26392u, 21u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.b.x, 21u)]))));
    global0 = -_wgslsmith_clamp_vec4_i32(abs(_wgslsmith_add_vec4_i32(-vec4<i32>(-2442i, arg_0.c, u_input.a.x, -34866i), vec4<i32>(arg_0.c, arg_0.c, -49734i, -2147483647i))), vec4<i32>(arg_0.c, arg_0.c, -45097i, global0.x), -reverseBits(select(vec4<i32>(arg_0.c, arg_0.c, global0.x, 57535i), vec4<i32>(arg_0.c, arg_0.c, arg_0.c, global0.x), true)));
    global1 = array<f32, 21>();
    var_0 = u_input.b.x;
    return !vec4<bool>(any(select(select(vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(arg_0.d, arg_0.d)), vec2<bool>(true, arg_0.d), vec2<bool>(false, false))), all(select(!vec3<bool>(true, false, arg_0.d), !vec3<bool>(true, arg_0.d, true), !vec3<bool>(false, arg_0.d, false))), !all(select(vec3<bool>(arg_0.d, arg_0.d, true), vec3<bool>(true, true, false), arg_0.d)), false);
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_dot_vec2_i32(~select(global0.yw, vec2<i32>(1i, -2147483647i), vec2<bool>(false, true)) >> (max(~vec2<u32>(3054u, 13848u), _wgslsmith_sub_vec2_u32(vec2<u32>(49388u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x))) % vec2<u32>(32u)), -(~(-vec2<i32>(0i, global0.x)))), u_input.c, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(145f * -498f) - -242f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1596f, 169f)), 468f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(47315u, 21u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(44750u, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)]) + vec2<f32>(428f, global1[_wgslsmith_index_u32(17537u, 21u)])) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(740f, global1[_wgslsmith_index_u32(4294967295u, 21u)]))))), global0.x, true), ~arg_0.yxz, select(select(vec4<bool>(any(vec3<bool>(true, true, false)), true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true), all(vec4<bool>(true, false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false))), select(vec4<bool>(true, true, true, true), func_3(Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(arg_0.x, 21u)], global1[_wgslsmith_index_u32(63581u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), vec2<f32>(1615f, global1[_wgslsmith_index_u32(arg_0.x, 21u)]), global0.x, false)), all(vec4<bool>(false, false, false, true))), u_input.b.x > _wgslsmith_add_u32(u_input.b.x << (1u % 32u), 114255u >> (u_input.b.x % 32u))));
    let var_1 = ~2147483647i;
    var var_2 = arg_0.x;
    global1 = array<f32, 21>();
    var_2 = _wgslsmith_div_u32(~var_0.d.x, countOneBits(_wgslsmith_clamp_u32(arg_0.x, 13695u, var_0.d.x)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.x, 21u)])));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> Struct_2 {
    let var_0 = Struct_1(vec3<f32>(-2356f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(839f + 579f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_0, global0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1089f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2072f), 1000f, any(vec3<bool>(false, false, false)))), -549f))), vec2<f32>(-369f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1, 21u)] * _wgslsmith_f_op_f32(f32(-1f) * -963f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-514f)) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(43690u, 21u)] + 180f)), true))), 42768i, false);
    let var_1 = arg_0.yxw;
    global0 = -(firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(1i, global0.x), global0.x | 2147483647i, -8941i, u_input.c)) ^ vec4<i32>(global0.x, 2147483647i, -20725i, _wgslsmith_dot_vec3_i32(vec3<i32>(-25188i, 46570i, var_0.c), -u_input.a)));
    global0 = ~vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, global0.x), -vec2<i32>(var_0.c, 0i)), u_input.a.yx), 1i ^ abs(u_input.c), _wgslsmith_clamp_i32(u_input.a.x, -2147483647i, 2147483647i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, var_0.c, global0.x, var_0.c), vec4<i32>(-1i, u_input.a.x, var_0.c, 15337i))), ~(~(-1i) >> (arg_0.x % 32u)));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1036f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-832f - -440f)))), var_0.a.zz, -1i, false);
    return Struct_2(_wgslsmith_sub_i32(-22981i, u_input.a.x), u_input.c, var_0, countOneBits(countOneBits(firstLeadingBit(countOneBits(vec3<u32>(arg_1, 1u, 4162u))))), !func_3(var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 21>();
    global1 = array<f32, 21>();
    let var_0 = global0.wy;
    var var_1 = global0.x;
    var_1 = 2147483647i;
    var var_2 = func_1(~vec4<u32>(u_input.b.x, u_input.b.x, abs(~1u), ~4294967295u >> ((u_input.b.x ^ 1u) % 32u)), ~14797u);
    global0 = countOneBits(vec4<i32>(_wgslsmith_div_i32(0i, -30725i), -(-1i >> (abs(u_input.b.x) % 32u)), ~u_input.a.x, _wgslsmith_clamp_i32(1i, select(-15260i, u_input.c, true) & var_2.b, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global0.yz, vec2<i32>(global0.x, var_2.c.c)), max(vec2<i32>(-60671i, var_2.a), global0.yw)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.c.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c.b.x + 796f), var_2.c.a.x))), var_2.c.a.x, _wgslsmith_f_op_f32(trunc(var_2.c.a.x))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-839f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(102964u, 21u)] * 136f), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 21u)], -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, global1[_wgslsmith_index_u32(0u, 21u)], var_2.c.a.x, var_2.c.a.x)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2.c.b.x, var_2.c.b.x, -440f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.c.a.x, var_2.c.b.x, -178f, -653f), vec4<f32>(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], var_2.c.b.x, var_2.c.b.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.c.a.x, -513f, global1[_wgslsmith_index_u32(1u, 21u)], -985f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1041f, var_2.c.a.x, -1114f, global1[_wgslsmith_index_u32(u_input.b.x, 21u)]) * vec4<f32>(547f, var_2.c.a.x, -1604f, global1[_wgslsmith_index_u32(var_2.d.x, 21u)]))), all(func_1(vec4<u32>(var_2.d.x, 1u, u_input.b.x, var_2.d.x), 38624u).e.yzy))))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a.x)), 1f, 1514f)), var_2.c.b, -abs(global0.x), !(!(!var_2.c.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 21u)] + 796f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(98570u, 21u)])), _wgslsmith_f_op_f32(var_2.c.b.x * global1[_wgslsmith_index_u32(~var_2.d.x, 21u)]))), -(~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a, var_2.c.c, var_0.x, global0.x), vec4<i32>(var_2.c.c, 0i, -8695i, var_4.c)), ~vec4<i32>(global0.x, 26881i, -1i, var_2.a))), (-8042i >> (var_2.d.x % 32u)) | var_2.c.c);
}

