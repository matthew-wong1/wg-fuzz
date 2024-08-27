struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 22>;

var<private> global1: f32;

var<private> global2: array<vec2<i32>, 17>;

var<private> global3: array<bool, 2> = array<bool, 2>(true, true);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = vec4<bool>(all(vec3<bool>(global3[_wgslsmith_index_u32(1u ^ ~u_input.a.x, 2u)], all(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 2u)], true, global3[_wgslsmith_index_u32(u_input.b.x, 2u)], global3[_wgslsmith_index_u32(u_input.b.x, 2u)])), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, 41911u, u_input.a.x, 31537u), u_input.e), vec4<u32>(u_input.d.x, u_input.e.x, 57075u, 1u)), 2u)])), true, any(vec3<bool>(!global3[_wgslsmith_index_u32(0u, 2u)], !(global3[_wgslsmith_index_u32(u_input.e.x, 2u)] || false), false)), (firstLeadingBit(u_input.c.x) < abs(u_input.c.x | -1i)) || global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e.x, 4294967295u), 2u)]);
    global3 = array<bool, 2>();
    global2 = array<vec2<i32>, 17>();
    let var_1 = -269f;
    var var_2 = !var_0.x;
    return _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(-1i), firstLeadingBit(firstLeadingBit(arg_0)), select(-33347i, arg_0, true)), u_input.c) >> (u_input.e.x % 32u);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: vec2<u32>) -> i32 {
    let var_0 = Struct_2(Struct_1(func_3(41398i) << (_wgslsmith_mod_u32(~arg_2.x, 0u) % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, _wgslsmith_div_f32(arg_1.x, -949f), _wgslsmith_div_f32(247f, -243f), arg_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.wzy)), vec4<bool>(any(vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 2u)])), true, -1i == select(u_input.c.x, -2147483647i, false), !(!global3[_wgslsmith_index_u32(arg_3.x, 2u)]))), arg_0, max(_wgslsmith_div_vec2_u32(vec2<u32>(~arg_3.x, _wgslsmith_dot_vec2_u32(u_input.e.zw, arg_3)), ~abs(arg_2.zz)), vec2<u32>(_wgslsmith_sub_u32(22027u, ~arg_2.x), abs(~1u))), min(arg_3.x, ~arg_3.x) >> (~(~(~27009u)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1199f, 1110f, true)) + _wgslsmith_div_f32(arg_1.x, -664f))))));
    var var_1 = max(12534u, 16654u ^ ~arg_2.x);
    var var_2 = arg_2.x;
    global0 = array<Struct_4, 22>();
    global1 = _wgslsmith_f_op_f32(step(-675f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(639f, -168f), var_0.a.c.x) - var_0.a.b.x), true))));
    return 0i ^ _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.c.x, abs(u_input.c.x)), -2147483647i);
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = func_2(u_input.e << (~u_input.e % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, _wgslsmith_f_op_f32(-1586f - 861f), _wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, 859f, arg_0.x, -292f)))), u_input.e, ~vec2<u32>(abs(countOneBits(u_input.e.x)), _wgslsmith_mod_u32(u_input.e.x, u_input.d.x)));
    global2 = array<vec2<i32>, 17>();
    global0 = array<Struct_4, 22>();
    global3 = array<bool, 2>();
    var var_1 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(abs(u_input.c.x), min(0i, var_0)), countOneBits(-2366i & (var_0 & 51500i))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(abs(u_input.c.x), ~9105i), var_0 ^ 2147483647i), _wgslsmith_div_i32(u_input.c.x, -2147483647i)), abs(u_input.c.x), ~u_input.c.x);
    return Struct_1(var_1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -708f, 1000f, 820f) * vec4<f32>(arg_0.x, arg_0.x, 895f, arg_0.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, 1203f, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-823f, arg_0.x, arg_0.x, arg_0.x))))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(sign(arg_0.x))), 319f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 149f))), select(select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 2u)] && global3[_wgslsmith_index_u32(u_input.b.x, 2u)], all(vec3<bool>(false, false, false)), false, global3[_wgslsmith_index_u32(abs(u_input.a.x), 2u)]), select(select(vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(u_input.a.x, 2u)], global3[_wgslsmith_index_u32(u_input.b.x, 2u)]), vec4<bool>(global3[_wgslsmith_index_u32(4362u, 2u)], global3[_wgslsmith_index_u32(u_input.b.x, 2u)], false, global3[_wgslsmith_index_u32(u_input.e.x, 2u)]), global3[_wgslsmith_index_u32(u_input.d.x, 2u)]), select(vec4<bool>(false, global3[_wgslsmith_index_u32(68778u, 2u)], true, global3[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec4<bool>(true, true, global3[_wgslsmith_index_u32(91127u, 2u)], global3[_wgslsmith_index_u32(1u, 2u)]), vec4<bool>(false, false, global3[_wgslsmith_index_u32(0u, 2u)], true)), false == global3[_wgslsmith_index_u32(u_input.d.x, 2u)]), global3[_wgslsmith_index_u32(~select(u_input.b.x, u_input.e.x, global3[_wgslsmith_index_u32(22100u, 2u)]), 2u)]), vec4<bool>(true || all(vec3<bool>(false, true, false)), countOneBits(var_0) <= -60395i, !any(vec2<bool>(false, true)), !global3[_wgslsmith_index_u32(4294967295u, 2u)] | true), select(select(!vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(u_input.d.x, 2u)], global3[_wgslsmith_index_u32(60795u, 2u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(30326u, 2u)], true, true, true), vec4<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 2u)], global3[_wgslsmith_index_u32(u_input.b.x, 2u)], global3[_wgslsmith_index_u32(u_input.a.x, 2u)], global3[_wgslsmith_index_u32(u_input.d.x, 2u)]), vec4<bool>(true, true, global3[_wgslsmith_index_u32(4294967295u, 2u)], true)), vec4<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 2u)], global3[_wgslsmith_index_u32(49804u, 2u)], true, true)), vec4<bool>(true, true, true, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(29629u, u_input.b.x), 2u)];
    var var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 22u)];
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2020f - _wgslsmith_f_op_f32(160f - _wgslsmith_f_op_f32(-var_1.b.e))), -1434f);
    let var_2 = Struct_3(var_1.b, func_1(_wgslsmith_f_op_vec2_f32(var_1.b.a.b.wz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.yx)))), var_1.b.a, var_1.b.a.d, !var_1.b.a.d.x);
    var var_3 = !global3[_wgslsmith_index_u32(1u, 2u)] | !(var_2.a.a.a < -_wgslsmith_mult_i32(26775i, 5123i));
    let var_4 = ~min(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(var_2.a.b, u_input.e), countOneBits(var_2.a.b)), reverseBits(1u), ~var_1.b.d), vec3<u32>(~_wgslsmith_dot_vec3_u32(var_2.a.b.yyy, vec3<u32>(0u, u_input.e.x, var_1.b.d)), 0u >> (u_input.a.x % 32u), _wgslsmith_div_u32(abs(4294967295u), u_input.a.x | u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(~(~u_input.c.x), -20870i), vec2<u32>(abs(_wgslsmith_clamp_u32(var_2.a.d, var_1.b.d, u_input.d.x ^ var_4.x)), var_2.a.b.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-395f)) + _wgslsmith_f_op_f32(trunc(-528f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.c.c.x)) + -351f), _wgslsmith_f_op_f32(f32(-1f) * -1943f)), _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(15086i, u_input.c.x, -13313i, 0i), ~vec4<i32>(u_input.c.x, 2147483647i, -1i, u_input.c.x))), ~select(i32(-1i) * -3756i, var_2.b.a, true)), -2147483647i);
}

