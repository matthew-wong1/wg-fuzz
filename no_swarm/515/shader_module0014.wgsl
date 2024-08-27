struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(39635i, -33393i, -75310i, 20429i, -24444i, 0i, -1i, -1i, 1i, 1i, i32(-2147483648), 7650i, -25373i, 1i, 1i, -9307i, 41105i, -1i, 6892i, 2147483647i, 2147483647i, -46002i, i32(-2147483648), i32(-2147483648), -1i, 17283i, -14457i, -83436i, -24229i);

var<private> global1: array<Struct_4, 16>;

var<private> global2: array<vec4<i32>, 18>;

var<private> global3: array<u32, 1> = array<u32, 1>(8770u);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_2 {
    var var_0 = true;
    var_0 = arg_1;
    global2 = array<vec4<i32>, 18>();
    global2 = array<vec4<i32>, 18>();
    var var_1 = global3[_wgslsmith_index_u32(~abs(reverseBits(_wgslsmith_clamp_u32(~0u, arg_0, ~1u))), 1u)];
    return Struct_2(-u_input.c, _wgslsmith_sub_vec2_i32(vec2<i32>(-25281i, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(0u, 1u), min(u_input.d, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 1u)], 1u)])), 29u)]), ~vec2<i32>(-u_input.c, 2147483647i)), -350f, -abs(-(~vec2<i32>(global0[_wgslsmith_index_u32(arg_0, 29u)], u_input.a))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, global3[_wgslsmith_index_u32(21730u, 1u)], arg_0) | ~vec3<u32>(1u, 0u, u_input.b), max(~vec3<u32>(arg_0, u_input.b, 64135u), countOneBits(vec3<u32>(36963u, global3[_wgslsmith_index_u32(arg_0, 1u)], 1u)))) ^ arg_0, 1u)]);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-798f + 1632f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))));
    let var_1 = select(true, !(firstTrailingBit(arg_1.b) < (arg_3.x << ((4294967295u ^ arg_1.a.x) % 32u))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    return _wgslsmith_f_op_f32(abs(var_0));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_4, arg_3: f32) -> Struct_1 {
    global2 = array<vec4<i32>, 18>();
    var var_0 = !select(vec2<bool>(true, true), vec2<bool>(true, !all(vec4<bool>(false, true, false, true))), all(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-2147483647i, arg_1 << ((u_input.d ^ u_input.d) % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c, global0[_wgslsmith_index_u32(u_input.b, 29u)]), vec3<i32>(2329i, u_input.a, 1i)))), min((vec3<i32>(arg_1, 1i, 1i) | ~vec3<i32>(arg_1, global0[_wgslsmith_index_u32(0u, 29u)], u_input.a)) & -(~vec3<i32>(global0[_wgslsmith_index_u32(33185u, 29u)], -2147483647i, u_input.a)), ~vec3<i32>(0i, global0[_wgslsmith_index_u32(min(1u, 9197u), 29u)], global0[_wgslsmith_index_u32(~4294967295u, 29u)])));
    var var_2 = arg_2.a.yyz;
    global2 = array<vec4<i32>, 18>();
    return Struct_1(vec2<u32>(reverseBits(~(~u_input.b)), abs(abs(arg_2.a.x ^ 0u))), var_1, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2786f + arg_3))), -1217f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(4294967295u, 10214u);
    global3 = array<u32, 1>();
    let var_1 = func_1(firstLeadingBit(u_input.d), false);
    var var_2 = Struct_3(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.c)), 321f, _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(0u, 16u)], Struct_1(var_0, -85107i, vec3<f32>(var_1.c, 568f, 965f)), vec4<f32>(var_1.c, -263f, -633f, 199f), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 1u)], 1u)], 18u)])))), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(1u, 1u)], var_1.e, 1u), vec3<u32>(u_input.d, var_1.e, 51979u)), 29u)], _wgslsmith_dot_vec3_i32(-vec3<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(22862u, 1u)], 29u)], u_input.a, -1i), ~vec3<i32>(var_1.a, -9168i, -6581i))), global1[_wgslsmith_index_u32(40315u, 16u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(367f)))), _wgslsmith_f_op_f32(max(var_1.c, -1920f))))), countOneBits(-_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -40918i), vec3<i32>(global0[_wgslsmith_index_u32(13420u, 29u)], var_1.b.x, 21945i) | vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(var_1.e, 29u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13142u, 1u)], 29u)]))));
    var var_3 = global2[_wgslsmith_index_u32(var_1.e >> (~var_2.a.a.x % 32u), 18u)];
    let var_4 = Struct_3(Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 95843u), var_0), vec2<u32>(3008u, ~61633u)), _wgslsmith_div_i32(_wgslsmith_sub_i32(2147483647i, _wgslsmith_sub_i32(var_3.x, u_input.c)), _wgslsmith_mod_i32(-24447i, var_3.x)), _wgslsmith_f_op_vec3_f32(round(var_2.a.c))), vec3<i32>(u_input.a, _wgslsmith_sub_i32(func_3(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.c, var_1.c, -1000f), var_2.a.c)), u_input.c >> (52393u % 32u), global1[_wgslsmith_index_u32(countOneBits(var_0.x), 16u)], _wgslsmith_f_op_f32(-511f + var_2.a.c.x)).b, var_2.a.b), -1i));
    var var_5 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1.b.x, countOneBits(_wgslsmith_mult_i32(~var_2.b.x, i32(-1i) * -57981i)), _wgslsmith_div_i32(~1i, u_input.c), max(max(1i, -1i), ~(var_1.a & u_input.a))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_2.a.c.x))))), 763f));
}

