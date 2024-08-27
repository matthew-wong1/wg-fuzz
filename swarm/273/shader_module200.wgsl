struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(1i, -37688i), vec2<i32>(13414i, -3615i), vec2<i32>(-1i, 52823i), vec2<i32>(54563i, 1i), vec2<i32>(-1i, 75525i), vec2<i32>(-51618i, i32(-2147483648)), vec2<i32>(-15957i, i32(-2147483648)), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-40035i, 1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(6216i, 19551i), vec2<i32>(2147483647i, -1i), vec2<i32>(1i, 2147483647i), vec2<i32>(-6260i, -37591i), vec2<i32>(11809i, -1i), vec2<i32>(2147483647i, -1i), vec2<i32>(-1i, 0i), vec2<i32>(-13358i, 2147483647i), vec2<i32>(1i, -28988i), vec2<i32>(-1i, -20763i), vec2<i32>(2147483647i, -49985i), vec2<i32>(67504i, -39349i), vec2<i32>(2147483647i, -17768i), vec2<i32>(-24389i, 51507i), vec2<i32>(-11894i, -3393i), vec2<i32>(8043i, -38404i), vec2<i32>(i32(-2147483648), -8388i), vec2<i32>(-9128i, 35633i), vec2<i32>(0i, 13739i));

var<private> global1: bool;

var<private> global2: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32, arg_3: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(242f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-426f, 533f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_2)))))));
    let var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(57234i, reverseBits(1i), -45020i >> (1u % 32u), min(_wgslsmith_div_i32(u_input.b, -1i), _wgslsmith_add_i32(1i, -57116i))), vec4<i32>(_wgslsmith_clamp_i32(reverseBits(u_input.e.x), 30632i, _wgslsmith_sub_i32(262i, u_input.d.x)), u_input.c.x, _wgslsmith_mult_i32(~27614i, -1i), 10595i)), vec4<i32>(-_wgslsmith_clamp_i32(u_input.a, -u_input.d.x, u_input.e.x), 1i, select(u_input.b, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(19984i, -38385i), u_input.e.xy), ~u_input.d), arg_0.d.x), _wgslsmith_add_i32(countOneBits(1i), -_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)]))));
    return ~_wgslsmith_clamp_u32(1u, 0u, 4294967295u);
}

fn func_2() -> Struct_1 {
    var var_0 = ~(~_wgslsmith_clamp_u32(func_3(Struct_1(-809f, 31022u, 4294967295u, vec3<bool>(false, true, false)), vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(203f * -225f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1178f, 546f, 1000f, -991f)))), ~16066u, 1u));
    global0 = array<vec2<i32>, 29>();
    global2 = _wgslsmith_sub_i32(u_input.b, firstTrailingBit(-1i));
    let var_1 = 111u;
    let var_2 = Struct_1(101f, 45835u, 0u & ~var_1, vec3<bool>(true, !all(vec4<bool>(false, true, false, false)), true));
    return var_2;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = func_2();
    var var_1 = func_2();
    var var_2 = !(!(!(!any(vec3<bool>(true, arg_1.d.x, true)))));
    var var_3 = arg_1;
    let var_4 = func_2();
    return -(~_wgslsmith_dot_vec3_i32(~u_input.e ^ vec3<i32>(0i, u_input.c.x, u_input.b), (u_input.e | vec3<i32>(-62858i, u_input.d.x, u_input.a)) << (vec3<u32>(17627u, arg_1.b, 4294967295u) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(true || any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1341f, 346f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-394f)) + -114f)) & select(any(vec3<bool>(true, false, false)), true, true), -func_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1545f, -488f, 576f), vec3<f32>(2133f, -517f, 131f))), Struct_1(171f, 4294967295u, 28845u, vec3<bool>(true, true, false))) >= -(~_wgslsmith_mult_i32(0i, -10394i)));
    let var_0 = Struct_1(2157f, 4294967295u, max(1u, ~(~min(28656u, 9547u))), vec3<bool>(all(vec2<bool>(true, true)) || false, func_2().d.x, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    let var_1 = firstLeadingBit(~(~vec2<u32>(1u, 1u))) ^ _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.b, 8330u), vec2<u32>(4294967295u, var_0.c), vec2<u32>(48006u, var_0.b))), ~(vec2<u32>(var_0.c, 99165u) & vec2<u32>(var_0.b, 1u))), vec2<u32>(~max(var_0.c, var_0.b), _wgslsmith_sub_u32(func_3(Struct_1(var_0.a, var_0.b, var_0.c, var_0.d), vec3<u32>(var_0.b, var_0.b, 60405u), -593f, vec4<f32>(-1092f, var_0.a, var_0.a, var_0.a)), 0u)));
    var var_2 = max(-_wgslsmith_add_i32(u_input.e.x, abs(abs(2147483647i))), -(~(~2147483647i)));
    global0 = array<vec2<i32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1347f + -1159f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + var_0.a) + -1000f)))), var_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a, -1090f), vec2<f32>(-364f, 3188f), true)))))));
}

