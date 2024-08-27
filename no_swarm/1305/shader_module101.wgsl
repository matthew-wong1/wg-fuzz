struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: vec3<bool>,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 24>;

var<private> global1: array<Struct_4, 2>;

var<private> global2: Struct_4 = Struct_4(vec4<bool>(false, false, true, true), -397f, vec3<bool>(true, true, true), 0u, Struct_2(Struct_1(vec2<bool>(true, true), vec2<u32>(65475u, 1u), 0i, vec3<i32>(i32(-2147483648), -1i, 57684i), vec2<u32>(4294967295u, 4294967295u)), 774f, 1304f, Struct_1(vec2<bool>(false, true), vec2<u32>(1u, 54369u), 1i, vec3<i32>(-38737i, 26052i, -1i), vec2<u32>(26121u, 0u))));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_3) -> u32 {
    global2 = global1[_wgslsmith_index_u32(62017u, 2u)];
    return global2.e.a.b.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: f32) -> vec3<u32> {
    global0 = array<vec2<bool>, 24>();
    global2 = Struct_4(vec4<bool>(false || !select(arg_2.b.a.a.x, false, true), arg_2.a.a.x, global2.e.d.a.x, select(!(arg_3 < arg_2.b.b), any(vec4<bool>(false, false, arg_2.a.a.x, arg_2.a.a.x)), all(vec2<bool>(global2.a.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), select(global2.c, select(vec3<bool>(true, 38150u >= u_input.d.x, true), !select(vec3<bool>(false, global2.a.x, true), global2.c, global2.c), true), arg_2.a.a.x), ~(~firstLeadingBit(~1u)), global2.e);
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-324f)), 934f));
    global1 = array<Struct_4, 2>();
    var var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(global2.e.d.e, vec2<u32>(14985u, abs(u_input.c.x)) >> (_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(68502u, u_input.c.x), arg_1), arg_2.b.a.b | vec2<u32>(global2.d, u_input.d.x)) % vec2<u32>(32u))), 46123u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.d ^ (vec4<u32>(38305u, 4294967295u, arg_2.b.d.b.x, u_input.d.x) << (vec4<u32>(global2.e.a.b.x, 26245u, arg_1.x, 15577u) % vec4<u32>(32u))), ~u_input.d), vec4<u32>(_wgslsmith_div_u32(1171u, arg_2.b.a.b.x) >> (arg_1.x % 32u), 10657u, func_2(reverseBits(vec2<u32>(arg_2.a.b.x, arg_1.x)), select(global2.c, global2.c, true), Struct_3(Struct_1(global0[_wgslsmith_index_u32(u_input.d.x, 24u)], vec2<u32>(u_input.d.x, 1u), 1i, vec3<i32>(arg_2.a.d.x, u_input.b.x, -48682i), global2.e.a.b), Struct_2(Struct_1(vec2<bool>(global2.e.a.a.x, false), arg_1, 23557i, vec3<i32>(1i, u_input.b.x, 1i), vec2<u32>(global2.d, 1u)), arg_2.b.b, global2.e.c, Struct_1(arg_2.a.a, arg_2.a.b, u_input.b.x, arg_2.b.a.d, arg_1)))), ~4294967295u)));
    return u_input.c;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> vec3<u32> {
    var var_0 = Struct_4(global2.a, -1041f, vec3<bool>(true, false, true), arg_0.a.b.x ^ max(~abs(arg_0.d.b.x), ~29010u), arg_0);
    let var_1 = ~firstTrailingBit(arg_0.a.c | -_wgslsmith_div_i32(global2.e.d.d.x, global2.e.a.c));
    let var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(~(~func_2(~u_input.c.xy, var_0.c, Struct_3(global2.e.a, Struct_2(Struct_1(vec2<bool>(var_0.a.x, arg_0.a.a.x), arg_0.d.e, -1i, vec3<i32>(-35045i, var_1, u_input.a.x), arg_0.a.e), -262f, -915f, Struct_1(vec2<bool>(true, var_0.a.x), global2.e.a.b, 1i, var_0.e.d.d, vec2<u32>(u_input.d.x, global2.e.d.e.x))))))), 2u)];
    var var_3 = Struct_3(var_2.e.a, Struct_2(global2.e.a, 1042f, _wgslsmith_f_op_f32(floor(var_2.e.b)), global2.e.a));
    var var_4 = _wgslsmith_sub_vec2_i32(~(-(~(vec2<i32>(-52186i, 2147483647i) << (vec2<u32>(global2.d, u_input.c.x) % vec2<u32>(32u))))), select(select(~(~vec2<i32>(-1i, arg_1.x)), ~vec2<i32>(1i, u_input.a.x), true), vec2<i32>(_wgslsmith_mod_i32(firstTrailingBit(var_2.e.a.c), 1i), min(-14699i, var_1)), true));
    return ~vec3<u32>(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-709f, -109f, -1071f))), var_2.e.d.e, Struct_3(global2.e.a, arg_0), var_2.e.b).x, ~var_3.a.b.x, min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.b.x, 1u, var_2.d, 14817u) << (u_input.d % vec4<u32>(32u)), u_input.d), arg_0.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(step(368f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global2.e.c, 890f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * global2.e.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e.b, global2.e.b)) - _wgslsmith_div_vec2_f32(vec2<f32>(global2.b, 315f), vec2<f32>(978f, global2.b)))))));
    let var_1 = _wgslsmith_mult_vec2_u32(u_input.d.wz, _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_mult_u32(global2.e.a.b.x, global2.d)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, 35694u), u_input.d.wz))) << (select(u_input.d.wz, u_input.c.yz, true) % vec2<u32>(32u));
    var var_2 = select(_wgslsmith_mod_vec3_u32(~min(func_1(vec3<f32>(global2.b, var_0.x, global2.e.b), vec2<u32>(var_1.x, u_input.c.x), Struct_3(global2.e.a, global2.e), var_0.x), ~u_input.d.wwx), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_1.x, 31972u), ~var_1.x, 36977u), func_3(global2.e, min(vec4<i32>(global2.e.d.d.x, u_input.b.x, u_input.a.x, 14363i), vec4<i32>(global2.e.a.c, u_input.a.x, 49981i, global2.e.a.c))))), ~vec3<u32>(~0u, u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c << (u_input.c % vec3<u32>(32u)))), select(select(global2.a.xzw, global2.a.xzz, global2.c.x & (global2.a.x | true)), select(vec3<bool>(true, true, true), global2.a.yyw, all(global2.a.yz)), global2.c.x));
    let var_3 = global2.e.a;
    let var_4 = var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(~_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c ^ u_input.c))), global2.e.d.d, reverseBits(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(6925u, var_2.x, 1u, var_3.e.x)), vec4<u32>(var_1.x, 0u, u_input.c.x, global2.e.a.e.x))), -5717i, global2.e.a.d);
}

