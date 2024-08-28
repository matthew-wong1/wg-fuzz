struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(true, 1i), Struct_1(false, 44574i), Struct_1(true, -1721i), Struct_1(true, 18289i), Struct_1(false, -30726i), Struct_1(false, 1i), Struct_1(false, i32(-2147483648)), Struct_1(false, -20323i), Struct_1(true, -23247i), Struct_1(true, 17790i), Struct_1(false, -1i), Struct_1(true, 2147483647i), Struct_1(false, 8727i), Struct_1(false, 29136i), Struct_1(false, 1302i), Struct_1(true, -37013i), Struct_1(true, -359i), Struct_1(false, -50429i), Struct_1(true, 2147483647i), Struct_1(false, 27608i), Struct_1(true, 0i), Struct_1(false, -205i), Struct_1(true, 1i), Struct_1(true, 0i), Struct_1(true, 1i), Struct_1(true, i32(-2147483648)), Struct_1(false, 2147483647i), Struct_1(true, i32(-2147483648)), Struct_1(true, -22936i), Struct_1(false, 17132i));

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(false, 38128i), Struct_1(true, 84183i), Struct_1(false, 1i), Struct_1(false, -9799i), Struct_1(false, i32(-2147483648)), Struct_1(false, 41911i), Struct_1(true, 7563i), Struct_1(true, -1i), Struct_1(false, 19842i), Struct_1(true, 2147483647i), Struct_1(false, -24984i), Struct_1(true, 21550i), Struct_1(false, 1i), Struct_1(true, 21904i), Struct_1(false, 2147483647i), Struct_1(false, 18845i));

var<private> global3: vec2<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> vec4<u32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1146f))))))), _wgslsmith_f_op_f32(-global3.x));
    var var_1 = Struct_1(true, countOneBits(208i));
    var_1 = Struct_1(all(vec2<bool>(true, true)) || any(!select(vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(true, var_1.a, var_1.a), true)), 2147483647i);
    let var_2 = Struct_2(_wgslsmith_mod_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 34424u, 13333u, 1u), abs(vec4<u32>(0u, u_input.b, 46274u, u_input.a)))), ~vec4<u32>(u_input.b, 1u, 1u, 90166u) >> (_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, 86454u)), ~vec4<u32>(u_input.a, 1u, u_input.b, 0u)) % vec4<u32>(32u))), u_input.c.x);
    global0 = array<Struct_1, 25>();
    return var_2.a;
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: vec2<i32>) -> vec4<u32> {
    var var_0 = reverseBits(vec4<u32>(select(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.a, 1u, 4294967295u), firstTrailingBit(vec4<u32>(59067u, u_input.c.x, u_input.a, 1u))), ~select(8471u, 13892u, true), true), func_2().x | u_input.c.x, u_input.b, abs(u_input.b)));
    var var_1 = Struct_2(firstLeadingBit(vec4<u32>(var_0.x, _wgslsmith_mod_u32(~4294967295u, ~1u), ~var_0.x, var_0.x)), 0u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_2.x)), -686f) * vec2<f32>(1000f, -715f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-446f, -645f) + arg_2.yz)))))));
    return ~var_1.a;
}

fn func_1() -> vec4<u32> {
    return _wgslsmith_mod_vec4_u32(min(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b | 4294967295u, u_input.a << (15058u % 32u), ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c.x, 44950u), vec3<u32>(8009u, u_input.c.x, 81352u))), func_2() >> (firstTrailingBit(vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, 13402u)) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(~func_3(true, vec3<bool>(false, false, true), vec4<f32>(-1000f, global3.x, global3.x, 1000f), vec2<i32>(76440i, -2147483647i)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, u_input.a, u_input.a, 1u), ~vec4<u32>(48122u, u_input.c.x, u_input.c.x, u_input.a)))), ~(~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(86860u, u_input.c.x, u_input.b, u_input.a), vec4<u32>(41995u, u_input.c.x, 4294967295u, u_input.a)), vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b;
    let var_1 = Struct_2((countOneBits(vec4<u32>(u_input.a, u_input.b, 4294967295u, 0u)) << (func_1() % vec4<u32>(32u))) & (vec4<u32>(93798u, ~73385u, _wgslsmith_dot_vec2_u32(vec2<u32>(23281u, u_input.a), u_input.c), u_input.a) ^ vec4<u32>(~u_input.b, max(u_input.c.x, 19761u), ~u_input.a, _wgslsmith_add_u32(u_input.a, u_input.c.x))), u_input.a);
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(-1299f, 190f), 1f)))));
    global1 = array<Struct_1, 30>();
    global2 = array<Struct_1, 16>();
    var_0 = _wgslsmith_sub_u32(u_input.b, _wgslsmith_mult_u32(1u, var_1.b & u_input.a));
    let var_2 = vec2<f32>(_wgslsmith_div_f32(2709f, global3.x), _wgslsmith_f_op_f32(ceil(global3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.b, ~(~var_1.a.x));
}

