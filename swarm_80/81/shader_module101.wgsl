struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2>;

var<private> global1: bool;

var<private> global2: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(0i, -1i), vec2<i32>(-64990i, 19386i), vec2<i32>(-1i, 30730i), vec2<i32>(-4944i, 2147483647i), vec2<i32>(44464i, -75194i), vec2<i32>(8128i, -73241i), vec2<i32>(1744i, -13461i), vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(21597i, i32(-2147483648)), vec2<i32>(-11570i, 19636i), vec2<i32>(1i, 771i), vec2<i32>(39955i, -1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(8476i, -50885i), vec2<i32>(34579i, 13216i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -12668i), vec2<i32>(-42515i, 18458i));

var<private> global3: vec2<u32> = vec2<u32>(6700u, 4294967295u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> vec4<bool> {
    var var_0 = 20781i;
    return vec4<bool>(arg_0.x == 1147f, all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(sign(-522f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-230f * _wgslsmith_f_op_f32(abs(-397f))) + _wgslsmith_f_op_f32(-902f + _wgslsmith_f_op_f32(-arg_0.x))), true || (-(u_input.c.x & u_input.e) >= select(countOneBits(u_input.c.x), ~u_input.d, true)));
}

fn func_2() -> f32 {
    let var_0 = vec3<f32>(-749f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(698f * -1205f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(162f * _wgslsmith_f_op_f32(-3366f - 798f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1316f))))) - _wgslsmith_f_op_f32(-255f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-117f, -158f, true))))));
    var var_1 = all(vec3<bool>(true, true, true));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1374f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, 157f))), var_0.x, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true))));
    var_2 = Struct_1(vec4<f32>(var_2.a.x, var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(select(var_2.a.x, var_2.a.x, any(vec3<bool>(true, false, false))))));
    var_1 = any(select(vec4<bool>(any(vec3<bool>(true, true, true)), true, all(vec2<bool>(true, false)), true), func_3(var_0.xx), vec4<bool>(true, true, select(true, true, true) == true, min(-2147483647i, 5695i) != (u_input.d << (u_input.a % 32u)))));
    return 1534f;
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = -(~countOneBits(abs(-vec4<i32>(arg_0.x, u_input.b.x, 38373i, u_input.c.x))));
    let var_1 = false;
    global1 = !var_1 && true;
    let var_2 = global0[_wgslsmith_index_u32(67077u, 2u)];
    var var_3 = _wgslsmith_f_op_f32(func_2());
    return Struct_2(~(~vec4<u32>(min(global3.x, global3.x), global3.x & 4294967295u, 63301u, var_2.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_3(-22427i, vec2<bool>(true, false | (556f != _wgslsmith_f_op_f32(round(-1000f)))));
    global3 = _wgslsmith_mult_vec2_u32(arg_0.a.zz, ~(arg_0.a.zz >> (arg_0.a.wx % vec2<u32>(32u))));
    global1 = _wgslsmith_clamp_u32(1u << (~(u_input.a << (0u % 32u)) % 32u), _wgslsmith_div_u32(13741u, _wgslsmith_dot_vec4_u32(arg_0.a, arg_0.a)), 16980u) > reverseBits(32152u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1101f, _wgslsmith_f_op_f32(-972f - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(721f))), -750f, -1000f)));
    let var_2 = Struct_2(~(~arg_0.a));
    return func_1(global2[_wgslsmith_index_u32(~(~1u), 19u)]);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<u32>) -> Struct_2 {
    global0 = array<Struct_4, 2>();
    return func_4(func_4(func_4(arg_0, -select(global2[_wgslsmith_index_u32(arg_0.a.x, 19u)], global2[_wgslsmith_index_u32(63492u, 19u)], false)), _wgslsmith_add_vec2_i32(max(vec2<i32>(arg_1.a, 9354i), vec2<i32>(u_input.b.x, -40664i)), abs(global2[_wgslsmith_index_u32(u_input.a, 19u)])) | _wgslsmith_sub_vec2_i32(global2[_wgslsmith_index_u32(1u, 19u)], ~u_input.c)), countOneBits(-_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.a, 2147483647i), firstTrailingBit(vec2<i32>(37707i, arg_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 19>();
    global0 = array<Struct_4, 2>();
    var var_0 = func_5(func_4(func_1(vec2<i32>(-44089i << (global3.x % 32u), firstTrailingBit(-13441i))), u_input.b), Struct_3(u_input.b.x, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-600f, -178f))).zw), ~_wgslsmith_div_vec4_u32(func_1(~vec2<i32>(u_input.b.x, -1i)).a, ~vec4<u32>(0u, 4294967295u, u_input.a, u_input.a)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-686f, -739f, 2175f, 128f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2871f, 212f, 1000f, 349f), vec4<f32>(1f, 1f, 1f, 1f)) + vec4<f32>(-1701f, _wgslsmith_f_op_f32(f32(-1f) * -419f), -814f, _wgslsmith_f_op_f32(571f + -1562f)))));
    var var_2 = Struct_1(_wgslsmith_div_vec4_f32(var_1.a, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(260f, -373f, var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x))))));
    global2 = array<vec2<i32>, 19>();
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.a.x, 2041f, var_1.a.x, 1050f), vec4<f32>(-1004f, var_1.a.x, 1023f, -1000f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.a.x, var_2.a.x, 307f, -1818f))))))) + vec4<f32>(_wgslsmith_f_op_f32(-200f - _wgslsmith_f_op_f32(var_2.a.x * var_2.a.x)), 328f, 754f, _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(-1113f - -1213f)))));
    var var_4 = firstTrailingBit(vec3<u32>(~0u, ~_wgslsmith_mod_u32(firstLeadingBit(479u), var_0.a.x), u_input.a));
    global3 = ~(~abs(~_wgslsmith_mult_vec2_u32(var_0.a.wy, vec2<u32>(var_4.x, global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, _wgslsmith_f_op_vec3_f32(var_1.a.yxy * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.ywx), vec3<f32>(var_2.a.x, 1000f, var_2.a.x)))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(27621i, u_input.c.x, u_input.b.x, u_input.b.x), firstLeadingBit(vec4<i32>(u_input.e, u_input.c.x, u_input.c.x, u_input.d))), ~(-25485i)) & firstLeadingBit(firstLeadingBit(global2[_wgslsmith_index_u32(var_4.x, 19u)] >> (vec2<u32>(49953u, u_input.a) % vec2<u32>(32u)))));
}

