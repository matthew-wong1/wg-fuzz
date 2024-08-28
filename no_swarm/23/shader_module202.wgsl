struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1>;

var<private> global1: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(52370u, 4294967295u, 90362u), vec3<u32>(25036u, 32301u, 12271u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1u, 0u, 39318u), vec3<u32>(1u, 1u, 36074u), vec3<u32>(14305u, 11209u, 1u), vec3<u32>(1u, 49866u, 22473u), vec3<u32>(1u, 0u, 18148u), vec3<u32>(36026u, 0u, 4294967295u), vec3<u32>(39400u, 4294967295u, 11344u), vec3<u32>(10892u, 19329u, 47359u), vec3<u32>(48482u, 29480u, 43101u), vec3<u32>(15699u, 4294967295u, 61687u), vec3<u32>(0u, 22153u, 4679u), vec3<u32>(4294967295u, 25218u, 4294967295u), vec3<u32>(28667u, 32490u, 61324u), vec3<u32>(44166u, 31521u, 33243u), vec3<u32>(4294967295u, 2870u, 1u), vec3<u32>(18003u, 10726u, 48996u), vec3<u32>(91734u, 5902u, 4294967295u), vec3<u32>(1u, 14682u, 0u), vec3<u32>(0u, 4294967295u, 38429u), vec3<u32>(1u, 1u, 48075u), vec3<u32>(0u, 0u, 1u), vec3<u32>(144679u, 0u, 1u));

var<private> global2: i32 = -46165i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    global2 = u_input.b.x;
    global0 = array<vec3<u32>, 1>();
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1040f, -1000f, 797f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(904f, -212f, 312f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-528f, 254f, 1319f), vec3<f32>(1000f, 107f, -568f))))))));
    var var_1 = _wgslsmith_div_vec3_i32(~vec3<i32>(select(u_input.b.x, -829i, true), u_input.b.x, 5099i) << (vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 13360u, 71533u)), vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u)), u_input.a.x, u_input.a.x) % vec3<u32>(32u)), abs(vec3<i32>(~0i, reverseBits(countOneBits(u_input.b.x)), -3453i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1555f, var_0.x, _wgslsmith_f_op_f32(step(-651f, -372f)))))) - vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -613f)));
    return ~(_wgslsmith_add_i32(u_input.b.x, var_1.x) & u_input.b.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1006f, 1028f, 963f, 262f) - vec4<f32>(-207f, 1871f, 1226f, 752f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(133f, 1474f, 1607f, -1344f)))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-505f, 171f, -2078f, 1324f))))));
    var var_1 = !(!all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))) | true;
    let var_2 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(117i, 22219i, -1i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -1i)), _wgslsmith_add_i32(-32987i & u_input.b.x, u_input.b.x)), reverseBits(-(i32(-1i) * -42222i))), -u_input.b.x, u_input.b.x, func_3());
    var var_3 = vec2<bool>(any(vec3<bool>(true, true, true)), !any(vec2<bool>(true, true)));
    var var_4 = Struct_3(Struct_2(var_2, Struct_1(!select(vec3<bool>(var_3.x, false, false), vec3<bool>(true, true, var_3.x), vec3<bool>(var_3.x, var_3.x, var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -2132f)), ~global0[_wgslsmith_index_u32(~arg_1, 1u)], 1000f), Struct_1(select(select(vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(var_3.x, var_3.x, var_3.x)), !vec3<bool>(true, true, var_3.x), vec3<bool>(false, var_3.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3491f) - var_0.x), ~(~vec3<u32>(arg_0.x, 1u, arg_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x)))), -108f));
    return _wgslsmith_mod_i32(~select(_wgslsmith_sub_i32(-14752i, -u_input.b.x), var_4.a.a.x, var_4.a.b.a.x), _wgslsmith_dot_vec2_i32(~var_2.xy, select(var_2.xw, ~u_input.b, true)));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global1 = array<vec3<u32>, 25>();
    global2 = func_2(u_input.a, u_input.a.x);
    let var_0 = ~firstTrailingBit(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.c.x, 88178u, 13958u, 21755u), vec4<u32>(57693u, 1u, u_input.a.x, arg_0.b.c.x)), ~0u, 1u));
    let var_1 = u_input.a.x;
    global2 = arg_0.a.x;
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(vec3<u32>(max(~23298u, _wgslsmith_sub_u32(u_input.a.x, 0u)), u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 4294967295u)) & (_wgslsmith_add_vec3_u32(global1[_wgslsmith_index_u32(~u_input.a.x, 25u)], ~global1[_wgslsmith_index_u32(28541u, 25u)]) >> ((~global0[_wgslsmith_index_u32(u_input.a.x, 1u)] | ~vec3<u32>(1u, 0u, 0u)) % vec3<u32>(32u))));
    let var_1 = 33i;
    var var_2 = Struct_3(Struct_2(abs(min(vec4<i32>(1i, u_input.b.x, 2147483647i, var_1), vec4<i32>(-42956i, 18136i, -37241i, u_input.b.x))), func_1(Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(68042i, -1i, -19815i, -1i), vec4<i32>(u_input.b.x, 14042i, u_input.b.x, 1i)), Struct_1(vec3<bool>(true, true, true), -227f, vec3<u32>(17792u, 43514u, 32638u), 1030f), Struct_1(vec3<bool>(true, true, false), 455f, vec3<u32>(u_input.a.x, 1u, var_0.x), -1761f), -207f)), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(536f, 922f) - _wgslsmith_f_op_f32(-248f - 106f)), min(vec3<u32>(4294967295u, 9737u, 4294967295u), global0[_wgslsmith_index_u32(~var_0.x, 1u)]), 116f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-795f - -1253f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.a.c.d, var_2.a.d, -221f, var_2.a.d), vec4<f32>(var_2.a.c.d, 3096f, -336f, var_2.a.b.b))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-2421f, var_2.a.b.b, -362f, var_2.a.d) * vec4<f32>(-1235f, var_2.a.c.d, -307f, 1344f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-328f, var_2.a.b.b, 619f, 466f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(574f, 343f, -324f, -1171f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.c.d, 2183f, 310f, var_2.a.d) - vec4<f32>(var_2.a.b.b, 1261f, var_2.a.c.b, var_2.a.b.b))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(var_2.a.d - _wgslsmith_f_op_f32(var_2.a.d * var_2.a.d)))), u_input.b.x);
}

