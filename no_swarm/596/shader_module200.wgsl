struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: bool;

var<private> global2: Struct_2 = Struct_2(vec4<bool>(true, true, true, true), 1u, vec2<bool>(true, false));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: f32) -> vec2<i32> {
    let var_0 = any(global2.a);
    global2 = Struct_2(!vec4<bool>(!all(vec3<bool>(var_0, true, global2.c.x)), ~0u == u_input.c, global2.c.x, !(!global2.c.x)), 4294967295u, global2.c);
    return u_input.b;
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2, arg_3: vec2<i32>) -> vec4<u32> {
    global2 = arg_2;
    global2 = Struct_2(arg_2.a, _wgslsmith_mod_u32(_wgslsmith_div_u32(~arg_2.b, 4294967295u), ~arg_2.b), vec2<bool>(true, _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0.a.a, u_input.a), min(u_input.a, u_input.c)) <= 40381u));
    return vec4<u32>(10087u, 4294967295u, ~1u, 0u);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: f32) -> vec4<u32> {
    var var_0 = Struct_1(1u | ((u_input.a & 1u) << (abs(countOneBits(arg_1.a.b)) % 32u)));
    global1 = false;
    var_0 = Struct_1(_wgslsmith_add_u32(9973u, firstLeadingBit(countOneBits(arg_1.a.b) ^ 0u)));
    let var_1 = ~(~arg_2.x);
    var var_2 = global0[_wgslsmith_index_u32(12142u, 4u)];
    return min(~func_4(Struct_4(Struct_1(global2.b), arg_1.a.c.x), global2.b & var_0.a, global0[_wgslsmith_index_u32(72479u, 4u)], func_3(u_input.a, vec4<f32>(arg_0.x, -1621f, arg_0.x, -392f), vec3<f32>(arg_0.x, arg_3, 542f), 165f)) & ~_wgslsmith_mult_vec4_u32(max(vec4<u32>(4294967295u, 28818u, 4294967295u, u_input.c), vec4<u32>(global2.b, u_input.a, var_2.b, 294u)), _wgslsmith_mod_vec4_u32(vec4<u32>(45828u, u_input.c, u_input.a, 9255u), vec4<u32>(1u, 7624u, global2.b, 31507u))), min(~(~vec4<u32>(u_input.a, u_input.c, 1u, 0u)) & vec4<u32>(~arg_1.a.b, _wgslsmith_div_u32(0u, var_2.b), _wgslsmith_dot_vec2_u32(vec2<u32>(12960u, 1u), vec2<u32>(0u, 5427u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b, global2.b, var_0.a, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.a, var_2.b))), _wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(var_2.b, 1u, 0u, 39633u)), vec4<u32>(~arg_1.a.b, u_input.c, var_2.b << (51939u % 32u), arg_1.a.b ^ u_input.a), select(vec4<u32>(u_input.a, var_2.b, global2.b, var_2.b), select(vec4<u32>(var_2.b, arg_1.a.b, 481u, global2.b), vec4<u32>(22845u, arg_1.a.b, 50947u, var_0.a), false), vec4<bool>(global2.c.x, arg_1.a.a.x, false, global2.c.x)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<i32>) -> Struct_4 {
    global0 = array<Struct_2, 4>();
    let var_0 = abs(_wgslsmith_mult_vec4_u32(~(~func_2(vec2<f32>(-137f, -308f), Struct_3(global0[_wgslsmith_index_u32(59407u, 4u)]), vec4<i32>(1i, -40661i, u_input.b.x, 2147483647i), -1621f)), max(vec4<u32>(global2.b, u_input.a, ~3282u, _wgslsmith_div_u32(global2.b, 4294967295u)), ~vec4<u32>(u_input.c, 4294967295u, 64816u, 0u))));
    global1 = all(vec2<bool>(global2.a.x, all(!vec3<bool>(false, global2.c.x, global2.c.x)) & global2.a.x));
    var var_1 = select(true, !global2.c.x, true);
    var var_2 = ~var_0;
    return Struct_4(Struct_1(1u), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 4>();
    var var_0 = func_1(u_input.b, countOneBits(_wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.b.x, 16769i, -7261i), vec3<i32>(u_input.b.x, -58166i, -1i), global2.a.zxy), vec3<i32>(2147483647i, u_input.b.x, u_input.b.x) ^ vec3<i32>(-33152i, u_input.b.x, 4617i))) << (vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(global2.b, u_input.a, 4294967295u), countOneBits(vec3<u32>(global2.b, u_input.a, 4294967295u))), 15705u, 42353u) % vec3<u32>(32u)));
    var var_1 = func_1(vec2<i32>(reverseBits(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(~1i, -u_input.b.x, reverseBits(62735i), u_input.b.x), select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -1158i, u_input.b.x)), min(vec4<i32>(-55545i, u_input.b.x, u_input.b.x, -32972i), vec4<i32>(25536i, u_input.b.x, -2452i, u_input.b.x)), !vec4<bool>(global2.c.x, var_0.b, false, false)))), firstTrailingBit(firstLeadingBit(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(19107i, u_input.b.x, -32343i), vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i)))))).a;
    let var_2 = global0[_wgslsmith_index_u32(61952u, 4u)];
    let var_3 = countOneBits(~select(vec3<u32>(_wgslsmith_div_u32(0u, 2124u), global2.b, var_0.a.a), vec3<u32>(1u, max(0u, var_0.a.a), global2.b), global2.a.xzw));
    let var_4 = abs(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-713f, -807f, 542f, -1591f), vec4<f32>(-892f, -1855f, -520f, -1339f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1644f, -651f, -274f, -882f), vec4<f32>(-330f, -250f, -1178f, -308f), false)))), false)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-649f, -1150f, 1000f, -873f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(692f, -1683f, 481f, -1502f)))) * vec4<f32>(-198f, _wgslsmith_f_op_f32(f32(-1f) * -998f), _wgslsmith_f_op_f32(f32(-1f) * -643f), _wgslsmith_div_f32(892f, -985f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1020f, -682f, 1491f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(280f, 363f, 1774f))))), var_1.a);
}

