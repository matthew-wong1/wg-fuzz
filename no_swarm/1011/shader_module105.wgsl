struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<u32>(30713u, 41721u)), Struct_1(vec2<u32>(19163u, 1u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(4294967295u, 18971u)), Struct_1(vec2<u32>(91901u, 4294967295u)), Struct_1(vec2<u32>(1u, 65040u)), Struct_1(vec2<u32>(50307u, 1u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(49051u, 14512u)), Struct_1(vec2<u32>(48228u, 0u)), Struct_1(vec2<u32>(102955u, 0u)), Struct_1(vec2<u32>(1u, 4208u)), Struct_1(vec2<u32>(4294967295u, 0u)), Struct_1(vec2<u32>(16472u, 1u)), Struct_1(vec2<u32>(10656u, 51451u)), Struct_1(vec2<u32>(4812u, 103332u)), Struct_1(vec2<u32>(4294967295u, 1u)));

var<private> global1: vec3<u32> = vec3<u32>(1u, 4294967295u, 0u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<f32>) -> i32 {
    return -55117i;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(abs(~(~select(countOneBits(arg_1.a.x), 4294967295u, true))), 17u)];
    var var_1 = vec4<i32>(~(u_input.d.x & firstLeadingBit(31529i)), func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -826f, 746f, 719f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -223f) - _wgslsmith_f_op_f32(floor(arg_0))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f * 496f), _wgslsmith_f_op_f32(select(arg_0, arg_0, true)), _wgslsmith_f_op_f32(abs(972f)), _wgslsmith_f_op_f32(trunc(1651f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-399f, -994f, -1636f, -872f) + vec4<f32>(arg_0, arg_0, arg_0, arg_0)) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -1080f, arg_0, arg_0), vec4<f32>(arg_0, arg_0, -390f, 1195f))))), -11363i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(firstLeadingBit(-1i), ~u_input.b.x, u_input.d.x << (arg_1.a.x % 32u), u_input.a), ~(vec4<i32>(u_input.a, u_input.b.x, 0i, u_input.c.x) << (vec4<u32>(1u, 8848u, 4294967295u, 0u) % vec4<u32>(32u))), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true)), abs(min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.c.x, u_input.a), vec4<i32>(u_input.d.x, 0i, u_input.b.x, u_input.b.x)), reverseBits(vec4<i32>(u_input.d.x, 0i, u_input.b.x, -1i))))));
    global0 = array<Struct_1, 17>();
    let var_2 = vec3<f32>(1000f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1128f) - _wgslsmith_f_op_f32(arg_0 + arg_0)), any(vec2<bool>(true, true)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 * -1888f))))));
    var var_3 = arg_1.a.x;
    return ~58612u;
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.x, 0u, 34713u) ^ vec3<u32>(1u, global1.x, 0u), firstTrailingBit(vec3<u32>(global1.x, 0u, global1.x)) << (~vec3<u32>(global1.x, 4294967295u, 44059u) % vec3<u32>(32u))), _wgslsmith_clamp_u32(global1.x, ~(~18357u), firstLeadingBit(min(global1.x, 1u)))));
    let var_1 = global0[_wgslsmith_index_u32(global1.x, 17u)];
    var var_2 = -1i;
    var var_3 = Struct_1(abs(vec2<u32>(_wgslsmith_mult_u32(0u, min(var_1.a.x, 4091u)), 1u)));
    let var_4 = global1.x;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<u32>(_wgslsmith_div_u32(3522u, global1.x << (func_1(_wgslsmith_f_op_f32(step(468f, 505f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(5124u, global1.x, 1u), vec3<u32>(global1.x, global1.x, global1.x)), 17u)]) % 32u)), _wgslsmith_div_u32(24323u, 10420u), firstLeadingBit(reverseBits(global1.x)));
    global1 = vec3<u32>(global1.x | 40531u, func_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1828f, 835f, -935f)))))), ~(~36563u >> (global1.x % 32u))) ^ max(reverseBits(~(vec3<u32>(1u, 4344u, global1.x) ^ vec3<u32>(global1.x, global1.x, 1u))), vec3<u32>(global1.x, _wgslsmith_sub_u32(global1.x, global1.x), ~(~4336u)));
    global1 = vec3<u32>(4294967295u, _wgslsmith_mod_u32(global1.x, ~(~(~1u))), _wgslsmith_mult_u32(14486u, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-674f + 1033f)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3(vec3<f32>(-1061f, 2152f, 275f)), 38387u), 17u)])));
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 17u)];
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1189f) + 1482f), 503f, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(327f - 2411f)))), _wgslsmith_f_op_f32(f32(-1f) * -119f)), _wgslsmith_mult_vec2_u32(global1.zz, max(global1.yy, ~min(vec2<u32>(0u, var_0.a.x), vec2<u32>(0u, global1.x)))), u_input.c, -64435i, var_0.a.x);
}

