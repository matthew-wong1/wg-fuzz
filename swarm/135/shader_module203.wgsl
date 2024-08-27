struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 19>;

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec4<f32>(1419f, -204f, 407f, 116f), Struct_1(-2156f, 660f, -9830i, false, vec4<u32>(87591u, 1u, 0u, 93329u))), Struct_2(vec4<f32>(-379f, -1604f, 955f, -101f), Struct_1(-450f, 826f, -4806i, true, vec4<u32>(4294967295u, 4294967295u, 1u, 17221u))), Struct_2(vec4<f32>(184f, -1816f, -1775f, -121f), Struct_1(-274f, 1816f, 15256i, true, vec4<u32>(0u, 8883u, 14652u, 1u))), Struct_2(vec4<f32>(632f, 1000f, -1000f, 368f), Struct_1(1499f, -629f, i32(-2147483648), false, vec4<u32>(4294967295u, 0u, 1u, 6243u))), Struct_2(vec4<f32>(-197f, 1000f, 2110f, -437f), Struct_1(-1409f, -292f, i32(-2147483648), true, vec4<u32>(11467u, 0u, 1u, 0u))), Struct_2(vec4<f32>(-695f, -670f, -384f, -559f), Struct_1(116f, 2019f, 1i, true, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u))), Struct_2(vec4<f32>(797f, 1698f, -998f, 359f), Struct_1(213f, -1946f, -10726i, true, vec4<u32>(30244u, 0u, 0u, 0u))), Struct_2(vec4<f32>(702f, -1309f, -349f, -1905f), Struct_1(877f, 398f, 1i, false, vec4<u32>(0u, 0u, 52590u, 2404u))));

var<private> global2: array<Struct_2, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: i32, arg_3: i32) -> vec2<bool> {
    var var_0 = countOneBits(i32(-1i) * -(arg_3 << (u_input.a.x % 32u)));
    return vec2<bool>(false, !select(false == any(vec3<bool>(arg_0.a, arg_1, arg_1)), any(vec4<bool>(true, arg_0.a, arg_1, true)), true));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_4) -> vec2<u32> {
    global2 = array<Struct_2, 13>();
    global0 = array<Struct_4, 19>();
    var var_0 = _wgslsmith_mod_vec3_u32(firstLeadingBit(firstLeadingBit(firstLeadingBit(vec3<u32>(u_input.e, u_input.e, 21261u)))) ^ max(~firstTrailingBit(u_input.a), ~max(u_input.a, u_input.a)), u_input.a);
    global2 = array<Struct_2, 13>();
    global1 = array<Struct_2, 8>();
    return vec2<u32>(_wgslsmith_add_u32(~u_input.e, 1u) ^ 19766u, ~1u);
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(select(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.e, 1u), func_4(Struct_3(261f, vec3<i32>(u_input.b.x, u_input.b.x, u_input.c)), func_3(global0[_wgslsmith_index_u32(25712u, 19u)], false, -2885i, 2147483647i), Struct_4(false))), select(13220u, u_input.e, arg_0), false), 58525u);
    let var_1 = -396f;
    global2 = array<Struct_2, 13>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-1668f + var_1), var_1, var_1);
    global0 = array<Struct_4, 19>();
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(step(139f, _wgslsmith_f_op_f32(f32(-1f) * -320f)))), _wgslsmith_f_op_f32(min(-492f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(932f + -491f) - _wgslsmith_f_op_f32(-var_2.x)))))), u_input.b.x & max(19340i, u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -441f))) != _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-207f, 1803f))), firstLeadingBit(abs(select(~vec4<u32>(4294967295u, 4294967295u, u_input.e, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 44346u, u_input.a.x, var_0), vec4<u32>(u_input.a.x, var_0, u_input.e, 7920u), vec4<u32>(25119u, 28550u, var_0, u_input.e)), arg_0))));
}

fn func_1() -> vec3<i32> {
    var var_0 = vec2<f32>(615f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1080f + 103f))), _wgslsmith_div_f32(-789f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-918f)), _wgslsmith_f_op_f32(183f + -1000f)))), -24183i > firstTrailingBit(max(u_input.d, -1225i)))));
    let var_1 = func_2(any(select(vec4<bool>(false, true, all(vec2<bool>(true, false)), all(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))))));
    global0 = array<Struct_4, 19>();
    global1 = array<Struct_2, 8>();
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(625f, var_0.x))) * vec2<f32>(360f, var_1.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(609f, -336f)))))))));
    return select(vec3<i32>(u_input.c, _wgslsmith_mult_i32(~u_input.d, -var_1.c), u_input.b.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-13543i, var_1.c, -16513i) | _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, u_input.c, var_1.c), vec3<i32>(-60059i, 51924i, -30656i)), min(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 11198i, var_1.c), vec3<i32>(35273i, u_input.c, var_1.c)), vec3<i32>(u_input.d, -62772i, 1i))), true) & abs(vec3<i32>(max(22653i, countOneBits(var_1.c)), -22123i, ~var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec3<i32>(firstTrailingBit(-countOneBits(-2147483647i)), u_input.c, 1i));
    var var_1 = ~u_input.e;
    var var_2 = u_input.a.x;
    global2 = array<Struct_2, 13>();
    global2 = array<Struct_2, 13>();
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 1319f));
}

