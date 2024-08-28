struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 28>;

var<private> global2: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(40640u, 4294967295u, 0u, 4332u), vec4<u32>(0u, 2475u, 4294967295u, 4294967295u), vec4<u32>(33651u, 43541u, 4294967295u, 0u), vec4<u32>(0u, 1u, 40657u, 19927u), vec4<u32>(94085u, 42962u, 1u, 0u));

var<private> global3: array<i32, 13> = array<i32, 13>(-6078i, -37476i, 1301i, -14316i, 2147483647i, 20820i, 1i, -1i, -1i, i32(-2147483648), -8582i, -1i, 2147483647i);

var<private> global4: array<bool, 32> = array<bool, 32>(false, false, false, true, false, false, true, false, true, true, true, false, true, true, true, true, true, true, false, true, true, false, false, false, true, false, true, true, false, false, true, false);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~_wgslsmith_div_u32(u_input.e, 20926u), u_input.d), (vec3<u32>(u_input.d, 54817u, u_input.d) << (vec3<u32>(u_input.e, 1u, u_input.e) % vec3<u32>(32u))) & ~_wgslsmith_add_vec3_u32(vec3<u32>(9329u, u_input.e, 87746u), vec3<u32>(u_input.e, 0u, 13608u))), 17473u);
    var var_1 = global0.a.x;
    return arg_0.x;
}

fn func_2() -> vec4<i32> {
    global2 = array<vec4<u32>, 5>();
    let var_0 = func_3(!vec3<bool>(~38446u >= ~u_input.d, all(vec4<bool>(global4[_wgslsmith_index_u32(u_input.e, 32u)], global0.b.x, global4[_wgslsmith_index_u32(u_input.d, 32u)], global4[_wgslsmith_index_u32(u_input.d, 32u)])), false), !(!vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 28u)], global0.b.x)));
    var var_1 = select(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(39431u, 4294967295u, 25826u), vec3<u32>(u_input.d, 10544u, 10341u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, u_input.e, 1u), vec3<u32>(u_input.d, 49732u, 1u))) >> (_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(53775u, u_input.e, u_input.e), vec3<u32>(68407u, 41231u, u_input.e), vec3<u32>(56573u, 5798u, 1u)), ~vec3<u32>(u_input.e, u_input.e, u_input.e)) % vec3<u32>(32u)), ~vec3<u32>(26878u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 50123u, u_input.e), vec3<u32>(u_input.d, u_input.e, 34375u)), 0u << (u_input.d % 32u)), var_0) >> (~(~(~(vec3<u32>(46064u, 60612u, 1u) << (vec3<u32>(u_input.e, 0u, u_input.e) % vec3<u32>(32u))))) % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-227f, -761f, -948f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(292f, 3366f, 578f) + vec3<f32>(-1408f, -218f, 643f)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-724f, -725f, -112f) - vec3<f32>(-433f, -389f, -1317f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1101f, 307f, 1000f))), select(select(vec3<bool>(var_0, var_0, global0.b.x), vec3<bool>(false, global0.b.x, false), vec3<bool>(true, true, global0.b.x)), select(vec3<bool>(global4[_wgslsmith_index_u32(75168u, 32u)], global0.b.x, true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 28u)], var_0, true), true), var_0)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(abs(285f)), -837f) + vec3<f32>(-937f, 395f, -603f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-1000f * 779f), -441f, -177f)))))));
    let var_3 = ~(i32(-1i) * -1i);
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(-countOneBits(global0.a.x), -10176i, 4516i, global0.a.x) << (global2[_wgslsmith_index_u32(4294967295u, 5u)] % vec4<u32>(32u)), abs(~(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.a.x, u_input.c, 15197i, global0.a.x), vec4<i32>(global0.a.x, -37322i, 0i, global3[_wgslsmith_index_u32(u_input.e, 13u)])) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global0.a.x, global0.a.x, 25799i), vec4<i32>(-2147483647i, global0.a.x, u_input.b, global3[_wgslsmith_index_u32(u_input.e, 13u)])))), (vec4<i32>(1i, ~global3[_wgslsmith_index_u32(u_input.d, 13u)], 1i, -1i) << (_wgslsmith_sub_vec4_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.zx, vec2<u32>(u_input.e, 0u)), 5u)], global2[_wgslsmith_index_u32(u_input.e, 5u)]) % vec4<u32>(32u))) >> (firstLeadingBit(select(~global2[_wgslsmith_index_u32(var_1.x, 5u)], vec4<u32>(u_input.e, u_input.e, 0u, 0u) | global2[_wgslsmith_index_u32(4294967295u, 5u)], true)) % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    var var_0 = func_2();
    global3 = array<i32, 13>();
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_3 = Struct_2(~vec2<i32>(1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-5045i, var_1.a.x), arg_0.a)), var_1.b);
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true | (u_input.d != u_input.e);
    global1 = array<bool, 28>();
    global0 = Struct_2(global0.a, vec2<bool>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, u_input.a, u_input.c, global3[_wgslsmith_index_u32(11241u, 13u)]), ~vec4<i32>(u_input.a, 1i, 2147483647i, global3[_wgslsmith_index_u32(1u, 13u)])) >= -34606i, all(select(select(vec4<bool>(global4[_wgslsmith_index_u32(0u, 32u)], global0.b.x, true, true), vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.d, 32u)], global0.b.x, false), vec4<bool>(false, true, false, false)), !vec4<bool>(true, global0.b.x, false, global4[_wgslsmith_index_u32(u_input.d, 32u)]), !global4[_wgslsmith_index_u32(u_input.d, 32u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(-36463i, ~12776i, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, reverseBits(func_1(Struct_1(vec2<i32>(-1i, 3748i), vec2<u32>(u_input.d, u_input.e), vec3<u32>(u_input.d, u_input.e, u_input.e)), Struct_2(global0.a, vec2<bool>(false, true)))), min(u_input.d, min(u_input.d, 52793u))), ~countOneBits(vec3<u32>(u_input.e, u_input.e, 0u)) << (vec3<u32>(u_input.e, 73529u, u_input.d) % vec3<u32>(32u))), _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(~(~39177u), 5u)], ~(~select(global2[_wgslsmith_index_u32(u_input.d, 5u)], vec4<u32>(50299u, 20197u, u_input.d, 42793u), global0.b.x))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(998f, -1043f)), _wgslsmith_f_op_f32(f32(-1f) * -1190f)), 1284f))));
}

