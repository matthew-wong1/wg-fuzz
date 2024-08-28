struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(12037i, 26051i, 8725i), vec3<i32>(-34974i, 0i, 0i), vec3<i32>(1i, 2147483647i, 60693i), vec3<i32>(2147483647i, 6010i, i32(-2147483648)), vec3<i32>(0i, 35190i, 1i), vec3<i32>(11039i, 2365i, -12988i), vec3<i32>(55014i, 1i, 7652i), vec3<i32>(-30905i, 0i, -1i), vec3<i32>(10149i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, -9220i), vec3<i32>(-12446i, i32(-2147483648), i32(-2147483648)), vec3<i32>(26482i, i32(-2147483648), 2147483647i), vec3<i32>(-33654i, -11011i, 45757i), vec3<i32>(i32(-2147483648), -1i, 25549i), vec3<i32>(7090i, 0i, 2147483647i), vec3<i32>(27470i, 2147483647i, 2147483647i), vec3<i32>(-41284i, 1i, 1i), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<i32>(29280i, -1i, 17827i), vec3<i32>(0i, 1i, 1i), vec3<i32>(6321i, -1i, 0i), vec3<i32>(40757i, 0i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<i32>(-19224i, -1i, -6990i), vec3<i32>(8810i, 2147483647i, 8588i), vec3<i32>(51329i, 2147483647i, -33944i));

var<private> global1: Struct_4 = Struct_4(2147483647i, vec4<i32>(11510i, i32(-2147483648), 1i, -1i), vec4<bool>(false, false, false, true));

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-1i, vec2<u32>(1u, 44711u), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), Struct_1(-1i, vec2<u32>(8389u, 0u), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), Struct_1(0i, vec2<u32>(1u, 6637u), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), Struct_1(-10402i, vec2<u32>(57806u, 4294967295u), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), Struct_1(-1i, vec2<u32>(1u, 9565u), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), Struct_1(17953i, vec2<u32>(0u, 19813u), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), Struct_1(0i, vec2<u32>(4294967295u, 0u), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), Struct_1(4295i, vec2<u32>(0u, 1u), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), Struct_1(-29184i, vec2<u32>(5719u, 32473u), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), Struct_1(-45884i, vec2<u32>(62690u, 57030u), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), Struct_1(-1i, vec2<u32>(4294967295u, 0u), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), Struct_1(0i, vec2<u32>(0u, 5405u), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), Struct_1(77205i, vec2<u32>(0u, 4294967295u), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), Struct_1(-33827i, vec2<u32>(4294967295u, 4294967295u), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), Struct_1(-15288i, vec2<u32>(4294967295u, 0u), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), Struct_1(17839i, vec2<u32>(46992u, 4294967295u), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), Struct_1(-10054i, vec2<u32>(15661u, 9624u), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), Struct_1(10483i, vec2<u32>(65062u, 17023u), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), Struct_1(1i, vec2<u32>(1u, 9857u), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), Struct_1(0i, vec2<u32>(4294967295u, 1u), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), Struct_1(-24976i, vec2<u32>(0u, 0u), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), Struct_1(-1i, vec2<u32>(45869u, 34921u), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), Struct_1(2147483647i, vec2<u32>(27346u, 25386u), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), Struct_1(-10070i, vec2<u32>(32524u, 12058u), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), Struct_1(-1i, vec2<u32>(0u, 38094u), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), Struct_1(-7049i, vec2<u32>(4294967295u, 0u), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), Struct_1(i32(-2147483648), vec2<u32>(2916u, 65426u), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), Struct_1(81191i, vec2<u32>(18003u, 1u), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(_wgslsmith_dot_vec4_i32(-global1.b, abs(firstLeadingBit(-global1.b))), ~global1.b, global1.c);
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-949f, -101f, 1825f, 911f) * vec4<f32>(263f, -1088f, -1000f, 526f))) * vec4<f32>(_wgslsmith_f_op_f32(select(1705f, -981f, false)), _wgslsmith_f_op_f32(-359f + 782f), _wgslsmith_f_op_f32(f32(-1f) * -1130f), _wgslsmith_f_op_f32(-1455f + 173f)))));
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(1u, ~firstLeadingBit(u_input.a.x | u_input.a.x)), 3765u, _wgslsmith_add_u32(_wgslsmith_div_u32(9477u, u_input.a.x), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, 25766u, u_input.e.x, u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.e.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.e.x, u_input.e.x, u_input.a.x)))), ~_wgslsmith_mod_u32(~u_input.e.x, u_input.e.x));
    var_1 = vec4<u32>(_wgslsmith_mod_u32(4294967295u, var_1.x), select(1u, ~(_wgslsmith_sub_u32(0u, u_input.e.x) >> (u_input.a.x % 32u)), 24132u <= (4294967295u & _wgslsmith_div_u32(1u, u_input.a.x))), 1u & select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 45101u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 45320u), var_1.xww)), 0u, all(vec2<bool>(global1.c.x, true))), firstTrailingBit(firstLeadingBit(4294967295u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0.zyy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.xxy))))));
    var var_3 = ~firstLeadingBit(abs(-max(u_input.b.x, 2147483647i)));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.xxy * var_0.xwx));
    let var_4 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, ~_wgslsmith_sub_vec3_u32(var_1.yyw, vec3<u32>(var_1.x, var_1.x, var_1.x) | reverseBits(vec3<u32>(var_1.x, 19381u, u_input.e.x))));
}

