struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, true, false, false, true, true, true, false, true, true, false, true, false, true, false);

var<private> global1: array<i32, 18> = array<i32, 18>(8841i, -1i, 24737i, 2147483647i, -1i, -37067i, 2147483647i, -18635i, 2147483647i, i32(-2147483648), -19435i, 5969i, 2147483647i, 2147483647i, 0i, -1i, i32(-2147483648), 0i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-337f, -257f, -1565f, arg_0.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1521f, 334f, 1010f, arg_0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(663f, 618f, arg_0.x, arg_0.x))))));
    global1 = array<i32, 18>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1178f, _wgslsmith_f_op_f32(sign(-402f))) * arg_0.xx);
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.x, 772f), var_0.xw))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -535f) + vec2<f32>(var_0.x, 1700f)) + vec2<f32>(1834f, 635f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.wz + var_0.zy), _wgslsmith_f_op_vec2_f32(var_0.wz * arg_0.zx)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_1.x + arg_0.x)))), arg_0.x));
    let var_2 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(-847f)));
    return -global1[_wgslsmith_index_u32(u_input.a.x, 18u)];
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(func_3(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, 1000f, 268f), vec3<f32>(-764f, -494f, arg_0.x))), _wgslsmith_div_i32(~global1[_wgslsmith_index_u32(arg_1.x, 18u)], countOneBits(global1[_wgslsmith_index_u32(u_input.a.x, 18u)]))), vec2<i32>(2147483647i, 9081i), _wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(59571u, 18u)], -21667i) & vec2<i32>(12172i, -2147483647i), vec2<i32>(-1i, 56866i)) >> (reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(53504u, 4294967295u), u_input.a.zy)) % vec2<u32>(32u))) & abs((vec2<i32>(-1i) * -vec2<i32>(global1[_wgslsmith_index_u32(arg_1.x, 18u)], global1[_wgslsmith_index_u32(arg_1.x, 18u)])) ^ vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], abs(-5725i)));
    var var_1 = Struct_3(vec2<bool>(select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(14819u, arg_1.x), 15u)], global0[_wgslsmith_index_u32(~abs(1u), 15u)], any(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 15u)], true))), global0[_wgslsmith_index_u32(~u_input.a.x, 15u)]), min(min(~abs(global1[_wgslsmith_index_u32(4294967295u, 18u)]), 15096i), countOneBits(global1[_wgslsmith_index_u32(4294967295u, 18u)])), Struct_2(u_input.a.zy));
    var var_2 = _wgslsmith_mod_u32(firstLeadingBit(0u ^ select(var_1.c.a.x, arg_1.x, var_1.c.a.x >= 4294967295u)), abs(_wgslsmith_sub_u32(_wgslsmith_mod_u32(81169u >> (arg_1.x % 32u), 1u), _wgslsmith_div_u32(arg_1.x ^ var_1.c.a.x, _wgslsmith_sub_u32(40406u, 37472u)))));
    let var_3 = Struct_2(~(u_input.a.zy & (vec2<u32>(0u, 4294967295u) | vec2<u32>(0u, var_1.c.a.x))) << (var_1.c.a % vec2<u32>(32u)));
    let var_4 = Struct_3(var_1.a, 2147483647i, var_3);
    return var_4;
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, 874f, arg_0.a) * vec3<f32>(-397f, arg_0.a, arg_0.a)) + vec3<f32>(-173f, arg_0.a, arg_0.a)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, -692f) * vec3<f32>(arg_0.a, arg_0.a, -1122f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, 792f), vec3<f32>(arg_0.a, 969f, -1051f)), vec3<f32>(-765f, arg_0.a, 1194f))), !global0[_wgslsmith_index_u32(4294967295u, 15u)])), u_input.a.xx);
    return ~abs(~(~(vec4<u32>(67183u, 16299u, 23677u, u_input.a.x) | vec4<u32>(u_input.a.x, var_0.c.a.x, var_0.c.a.x, var_0.c.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -352f))), true);
    var var_1 = ~firstTrailingBit(1u);
    global1 = array<i32, 18>();
    let var_2 = all(!vec4<bool>(3692i < global1[_wgslsmith_index_u32(min(31333u, 62690u), 18u)], var_0.b, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], !global0[_wgslsmith_index_u32(4294967295u, 15u)] | var_0.b));
    var var_3 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), _wgslsmith_add_vec4_u32(func_1(Struct_1(var_0.a, false)), abs(vec4<u32>(u_input.a.x, 52710u, u_input.a.x, 0u)))), abs(1u));
    var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(36690u, 9606u, 2119u)), u_input.a), select(67258u, _wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x), true), u_input.a.x), _wgslsmith_add_vec3_u32(~vec3<u32>(~4294967295u, 0u, u_input.a.x), vec3<u32>(22413u, ~u_input.a.x, 57154u)));
    let x = u_input.a;
    s_output = StorageBuffer(11205i, ~firstLeadingBit(u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, 200f, var_0.a)), vec4<f32>(var_0.a, 1530f, 362f, 118f)))))), -vec4<i32>(global1[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a, var_0.a, 957f))), abs(vec2<u32>(u_input.a.x, u_input.a.x))).c.a.x, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)] & global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 18u)], _wgslsmith_mult_i32(-32062i, 2147483647i ^ global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), global1[_wgslsmith_index_u32(u_input.a.x, 18u)]));
}

