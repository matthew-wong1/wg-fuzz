struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-2390f), Struct_1(1000f), Struct_1(-1000f), Struct_1(-1004f), Struct_1(-1108f), Struct_1(-573f), Struct_1(676f), Struct_1(-2001f), Struct_1(1581f), Struct_1(-1286f));

var<private> global1: array<Struct_3, 20>;

var<private> global2: array<u32, 21> = array<u32, 21>(80909u, 46519u, 4294967295u, 4294967295u, 65915u, 0u, 29023u, 39430u, 9981u, 34713u, 35969u, 42833u, 7407u, 53098u, 23723u, 4294967295u, 47179u, 10725u, 20843u, 61062u, 53537u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<u32> {
    let var_0 = 1u;
    global1 = array<Struct_3, 20>();
    return _wgslsmith_mod_vec4_u32(vec4<u32>(select(min(select(u_input.c, global2[_wgslsmith_index_u32(0u, 21u)], false), var_0), 0u, !select(true, false, true)), 4294967295u, ~(~(1u >> (u_input.c % 32u))), 1u), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(22077u, 21u)], 4294967295u, var_0, 8616u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 21u)], 21u)], 0u, var_0, 103230u) | vec4<u32>(86226u, 4294967295u, 1u, var_0)), min(vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], global2[_wgslsmith_index_u32(var_0, 21u)], u_input.c, u_input.c) ^ vec4<u32>(global2[_wgslsmith_index_u32(81382u, 21u)], global2[_wgslsmith_index_u32(var_0, 21u)], global2[_wgslsmith_index_u32(var_0, 21u)], 1u), vec4<u32>(10608u, u_input.b.x, 27710u, var_0))), firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 1u, 47187u, 4294967295u), vec4<u32>(4294967295u, 58766u, global2[_wgslsmith_index_u32(u_input.b.x, 21u)], 45948u)) ^ vec4<u32>(u_input.c, 24773u, global2[_wgslsmith_index_u32(u_input.b.x, 21u)], var_0))));
}

fn func_2() -> u32 {
    return _wgslsmith_dot_vec4_u32(vec4<u32>(31614u | (global2[_wgslsmith_index_u32(17265u, 21u)] >> (1u % 32u)), global2[_wgslsmith_index_u32(~u_input.b.x, 21u)], firstTrailingBit(~1u), 2245u) | firstTrailingBit(countOneBits(vec4<u32>(u_input.c, 4294967295u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], 21u)])) ^ vec4<u32>(u_input.c, 7374u, 4294967295u, global2[_wgslsmith_index_u32(3339u, 21u)])), min(~_wgslsmith_add_vec4_u32(func_3(), firstLeadingBit(vec4<u32>(u_input.b.x, 51597u, 59336u, global2[_wgslsmith_index_u32(1u, 21u)]))), min(select(~vec4<u32>(u_input.b.x, 5293u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 21u)], 21u)], u_input.c), ~vec4<u32>(4294967295u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4259u, 21u)], 21u)], 21u)], 39397u), vec4<bool>(true, true, true, true)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(46181u, 21u)], 48774u), vec2<u32>(global2[_wgslsmith_index_u32(u_input.c, 21u)], 84577u)), 1u << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 21u)], 21u)] % 32u), 8046u, 11359u))));
}

fn func_1() -> f32 {
    let var_0 = vec4<u32>(~4294967295u, 1u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(_wgslsmith_sub_u32(func_2(), u_input.c), u_input.c, abs(~47722u))), 9869u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-144f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1954f)) * -429f) * -1367f)));
    global1 = array<Struct_3, 20>();
    var var_2 = 1i;
    global2 = array<u32, 21>();
    return _wgslsmith_f_op_f32(-var_1);
}

fn func_4(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_3(vec2<u32>(~(~select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], u_input.c, true)), abs(u_input.b.x) & ~(~1u)), Struct_1(arg_0));
    global0 = array<Struct_1, 10>();
    var var_1 = (global2[_wgslsmith_index_u32(u_input.b.x, 21u)] & ~var_0.a.x) | ~(~0u);
    let var_2 = -firstLeadingBit(_wgslsmith_mult_i32(2147483647i, u_input.a.x));
    global1 = array<Struct_3, 20>();
    return global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, abs(1u)) | var_0.a.x, 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(select(u_input.b.x, ~_wgslsmith_clamp_u32(~1u, 0u, ~(global2[_wgslsmith_index_u32(1u, 21u)] << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(79126u, 21u)], 21u)] % 32u))), false), 20u)];
    global1 = array<Struct_3, 20>();
    var var_1 = _wgslsmith_div_u32(firstTrailingBit(var_0.a.x), u_input.b.x >> ((firstTrailingBit(26309u) | global2[_wgslsmith_index_u32(25770u, 21u)]) % 32u));
    var var_2 = func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-809f, _wgslsmith_div_f32(-769f, -1748f)))), _wgslsmith_f_op_f32(func_1()))));
    global0 = array<Struct_1, 10>();
    let var_3 = Struct_2(52872u, vec2<bool>((_wgslsmith_sub_u32(var_0.a.x, u_input.c) << (~1u % 32u)) >= u_input.c, true), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(541f, var_2.a, 515f, -239f) - vec4<f32>(-600f, var_2.a, -553f, var_0.b.a)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.a, var_0.b.a, var_0.b.a, 1000f), vec4<f32>(var_2.a, -705f, var_0.b.a, var_0.b.a))))) - vec4<f32>(_wgslsmith_f_op_f32(select(1933f, var_2.a, true)), _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_f32(-var_0.b.a))))), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.a.x, u_input.c), var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2.a - var_3.c.x), var_3.c.zyw, ~_wgslsmith_mult_i32(11588i, _wgslsmith_dot_vec3_i32(vec3<i32>(24262i, u_input.a.x, 1i), vec3<i32>(u_input.a.x, 27567i, 3203i)) & firstTrailingBit(0i)), -2147483647i, var_2.a);
}

