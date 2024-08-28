struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_2, 17>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> u32 {
    return select(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_1.b.xxw, ~vec3<u32>(75236u, 28092u, arg_1.b.x)), vec3<u32>(4294967295u, countOneBits(arg_1.b.x), ~arg_1.b.x)) >> (firstTrailingBit(~(~arg_1.b.x)) % 32u), 7231u, arg_1.a);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    global0 = array<Struct_1, 4>();
    var var_0 = Struct_1(true, _wgslsmith_sub_vec4_u32(~arg_1.b, ~(vec4<u32>(0u, 34201u, 31927u, 4010u) >> (arg_1.b % vec4<u32>(32u)))) ^ _wgslsmith_mod_vec4_u32(arg_1.b, abs(abs(arg_1.b))));
    var var_1 = firstTrailingBit(min(~(~1664u), abs(~(56127u ^ u_input.b))));
    let var_2 = arg_1;
    let var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-u_input.c.x, 1i), global1.x, -31011i, select(-u_input.d.x << ((u_input.b >> (arg_1.b.x % 32u)) % 32u), -1i, var_0.a)), vec4<i32>(global1.x, global1.x >> (~_wgslsmith_mult_u32(arg_1.b.x, 0u) % 32u), u_input.d.x, ~(-u_input.d.x)));
    return arg_1.b.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_2) -> u32 {
    var var_0 = max(vec4<u32>(u_input.b, _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.b), vec3<u32>(1u, 1773u, 21387u)), _wgslsmith_add_u32(max(u_input.b, 10726u), countOneBits(1u))), firstLeadingBit(1978u), min(1u, max(~u_input.a, ~0u))), vec4<u32>(u_input.a, ~1u, ~func_2(-vec3<i32>(arg_1.b, 6891i, arg_3.b), global0[_wgslsmith_index_u32(~43521u, 4u)]), 4294967295u));
    global0 = array<Struct_1, 4>();
    global2 = array<Struct_2, 17>();
    let var_1 = u_input.c;
    var_0 = ~(~min(vec4<u32>(1u, var_0.x, 4294967295u, 4294967295u) & vec4<u32>(10052u, 4294967295u, 1u, 26605u), _wgslsmith_mod_vec4_u32(vec4<u32>(13883u, 1u, u_input.b, 78319u), vec4<u32>(4294967295u, var_0.x, var_0.x, u_input.b)))) ^ ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, ~4294967295u, u_input.a, u_input.b), vec4<u32>(~var_0.x, 31475u, func_3(arg_1.c, Struct_1(arg_2.x, vec4<u32>(var_0.x, 32617u, 62283u, var_0.x)), vec4<bool>(arg_2.x, false, true, false)), var_0.x), ~vec4<u32>(18048u, u_input.b, u_input.a, var_0.x));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 17>();
    global2 = array<Struct_2, 17>();
    let var_0 = ~vec4<u32>(_wgslsmith_mod_u32(47113u, u_input.a), u_input.a, func_1(vec3<i32>(~global1.x, -2147483647i, 2147483647i), global2[_wgslsmith_index_u32(1u, 17u)], select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), Struct_2(_wgslsmith_f_op_f32(select(-322f, 374f, true)), global1.x << (21774u % 32u), _wgslsmith_f_op_f32(592f - -1000f))), abs(u_input.a << (u_input.b % 32u)) >> (firstTrailingBit(u_input.b) % 32u));
    var var_1 = global0[_wgslsmith_index_u32(~select(max(_wgslsmith_mult_u32(u_input.b, ~4294967295u), max(reverseBits(77570u), select(var_0.x, var_0.x, true))), ~0u, true), 4u)];
    global0 = array<Struct_1, 4>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2047f), -285f), _wgslsmith_f_op_f32(min(415f, _wgslsmith_f_op_f32(f32(-1f) * -553f)))))), _wgslsmith_mult_i32(~u_input.d.x, abs(max(~global1.x, -global1.x))), -292f);
    var var_3 = Struct_1(any(select(vec3<bool>(all(vec4<bool>(true, var_1.a, true, true)), !var_1.a, u_input.c.x > -31256i), vec3<bool>(var_1.a & var_1.a, var_2.b >= global1.x, var_1.a & var_1.a), select(vec3<bool>(var_1.a, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, var_1.a), vec3<bool>(var_1.a, true, true)), true))), firstTrailingBit(_wgslsmith_sub_vec4_u32(firstLeadingBit(var_1.b) >> (var_1.b % vec4<u32>(32u)), var_0)));
    global0 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-_wgslsmith_div_i32(u_input.d.x, 2147483647i), -2147483647i));
}

