struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32>;

var<private> global1: array<u32, 13>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(4294967295u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(21182u, 13u)], 7606u), vec2<u32>(1u, global1[_wgslsmith_index_u32(u_input.b, 13u)])), vec2<u32>(0u, u_input.b)), 13u)], 13u)]), 32u)], _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -145f), _wgslsmith_f_op_f32(abs(-1446f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), 170f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(18278u, 32u)] + global0[_wgslsmith_index_u32(6290u, 32u)]))) - vec2<f32>(1397f, _wgslsmith_f_op_f32(step(449f, 697f))))))));
    global1 = array<u32, 13>();
    let var_1 = 7677u;
    let var_2 = Struct_4(max(0u, countOneBits(global1[_wgslsmith_index_u32(30949u, 13u)])), select(vec3<bool>(!all(vec2<bool>(false, false)), true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, -135f >= var_0.x), all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)))));
    var var_3 = any(vec2<bool>(all(select(var_2.b, select(var_2.b, var_2.b, true), any(var_2.b.zx))), true));
    return !var_2.b;
}

fn func_2() -> bool {
    var var_0 = all(!select(vec3<bool>(true, false, true), func_3(), true));
    var var_1 = !all(vec2<bool>(false, true));
    let var_2 = 1f < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + -890f), _wgslsmith_f_op_f32(-414f * 2264f)))))));
    var var_3 = false;
    var_0 = (_wgslsmith_f_op_f32(ceil(-1356f)) == _wgslsmith_f_op_f32(ceil(895f))) & var_2;
    return !(_wgslsmith_div_i32(-14020i, u_input.a.x) <= firstLeadingBit(u_input.a.x));
}

fn func_1() -> i32 {
    global1 = array<u32, 13>();
    global1 = array<u32, 13>();
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * -1044f), func_2())), -1396f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(902f, _wgslsmith_f_op_f32(trunc(-1000f)))), -2652f), vec4<f32>(694f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(-1671f * 295f), _wgslsmith_f_op_f32(f32(-1f) * -816f)));
    var var_1 = var_0.x;
    var var_2 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(u_input.b, ~(~63648u)), _wgslsmith_div_u32(reverseBits(u_input.b), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b, global1[_wgslsmith_index_u32(u_input.b, 13u)]), _wgslsmith_sub_u32(30103u, 0u))), ~u_input.b, global1[_wgslsmith_index_u32(~(~1u), 13u)]), true, abs(vec2<i32>(1i, -firstLeadingBit(2147483647i))), ~(~(~_wgslsmith_add_u32(55253u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 13u)]))));
    return -32230i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 13>();
    var var_0 = Struct_1(~(~abs(~vec4<u32>(23220u, u_input.b, 0u, global1[_wgslsmith_index_u32(u_input.b, 13u)]))), true, -max(u_input.a.zw & vec2<i32>(-2147483647i, u_input.a.x), select(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.wx, false)) ^ u_input.a.xw, _wgslsmith_div_u32(countOneBits(~69702u), u_input.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2343f, 1379f)), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.b, 32u)])))))));
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec3_i32(u_input.a.yzz, vec3<i32>(-12801i, -30730i, var_0.c.x)), ~func_1(), var_0.c.x) ^ reverseBits(vec3<i32>(var_0.c.x, 28039i, u_input.a.x)), ~u_input.a.xyy);
    var var_3 = ~(~(~(vec2<u32>(var_0.a.x, u_input.b) >> (vec2<u32>(75850u, u_input.b) % vec2<u32>(32u)))) & _wgslsmith_add_vec2_u32(vec2<u32>(~var_0.a.x, 100986u), ~vec2<u32>(18231u, 5632u)));
    let var_4 = Struct_3(vec4<bool>(var_0.b, var_0.b, var_0.b, true), Struct_1(vec4<u32>(36381u, ~(~1u), global1[_wgslsmith_index_u32(var_3.x, 13u)], 29118u), any(vec4<bool>(var_0.b, all(vec2<bool>(false, var_0.b)), all(vec3<bool>(false, false, var_0.b)), all(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b)))), -(select(vec2<i32>(-2946i, var_0.c.x), vec2<i32>(var_0.c.x, 2147483647i), var_0.b) & _wgslsmith_div_vec2_i32(vec2<i32>(var_0.c.x, var_0.c.x), var_0.c)), global1[_wgslsmith_index_u32(4294967295u, 13u)] >> (countOneBits(u_input.b) % 32u)), u_input.a.x << (reverseBits(1u) % 32u), vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -523f)))));
    let var_5 = true;
    let var_6 = Struct_4(_wgslsmith_dot_vec2_u32(firstTrailingBit(~(vec2<u32>(var_0.a.x, u_input.b) & vec2<u32>(var_4.b.a.x, u_input.b))), var_4.b.a.zy), select(vec3<bool>(true, var_4.a.x, !var_0.b), vec3<bool>(var_4.a.x, any(!var_4.a.zww), false), vec3<bool>(any(var_4.a), var_5, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(~(~(-vec3<i32>(var_0.c.x, var_4.c, 1i))), -_wgslsmith_div_vec3_i32(min(u_input.a.ywy, vec3<i32>(0i, 2147483647i, u_input.a.x)), select(u_input.a.wwx, u_input.a.xzx, true))), var_1.x, vec4<i32>(var_0.c.x, var_0.c.x, firstTrailingBit(~2147483647i), firstLeadingBit(-9189i)), firstTrailingBit(select(u_input.a.xwx, u_input.a.zyx, select(vec3<bool>(var_4.b.b, var_6.b.x, false), vec3<bool>(var_0.b, var_4.a.x, var_0.b), !var_6.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-var_4.d.x), -1375f), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(var_6.a), ~18757u, ~0u), 32u)]))));
}

