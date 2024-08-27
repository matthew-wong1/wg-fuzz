struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(-881f, 698f, 1000f), vec3<f32>(1000f, -991f, 498f), vec3<f32>(215f, -1000f, 172f), vec3<f32>(1823f, -567f, -1105f), vec3<f32>(-842f, -1004f, -390f), vec3<f32>(-199f, 478f, 1711f), vec3<f32>(511f, -1187f, -804f), vec3<f32>(-1604f, 343f, 2014f), vec3<f32>(856f, -1588f, -405f), vec3<f32>(-2491f, 878f, 591f), vec3<f32>(-1158f, 785f, -530f), vec3<f32>(921f, 1800f, 524f), vec3<f32>(-1019f, -358f, -451f), vec3<f32>(-221f, -1764f, 1157f), vec3<f32>(603f, 339f, -734f), vec3<f32>(314f, 522f, 1543f), vec3<f32>(-963f, 2927f, -1518f), vec3<f32>(1000f, -396f, -1167f), vec3<f32>(-733f, 192f, -872f), vec3<f32>(-553f, -1971f, -758f), vec3<f32>(-1345f, -1000f, -677f), vec3<f32>(590f, 1000f, -2552f), vec3<f32>(830f, 222f, 159f), vec3<f32>(-173f, 732f, 850f), vec3<f32>(-1829f, 2147f, 1544f), vec3<f32>(115f, -720f, -1643f), vec3<f32>(-839f, 840f, 730f), vec3<f32>(-1142f, 1000f, -1072f), vec3<f32>(-209f, 667f, -1000f), vec3<f32>(436f, -1259f, -591f), vec3<f32>(708f, 143f, -444f));

var<private> global1: Struct_1 = Struct_1(vec2<f32>(1942f, -1196f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = ~arg_2.c;
    let var_1 = Struct_1(global1.a);
    var var_2 = _wgslsmith_sub_u32(countOneBits(_wgslsmith_mod_u32(firstLeadingBit(~0u), u_input.b)), arg_1);
    global0 = array<vec3<f32>, 31>();
    var_2 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>((arg_1 & arg_1) & ~var_0.x, reverseBits(arg_2.c.x), _wgslsmith_mod_u32(~arg_2.c.x, 1u))), arg_2.c);
    return global1.a;
}

fn func_2() -> vec2<f32> {
    let var_0 = ~min(vec3<u32>(1u, 31995u, ~0u ^ ~u_input.b), ~vec3<u32>(4294967295u ^ u_input.b, ~u_input.a, u_input.a));
    var var_1 = _wgslsmith_mod_vec2_u32(var_0.zx, countOneBits(~vec2<u32>(_wgslsmith_mod_u32(u_input.b, 4916u), firstLeadingBit(u_input.a))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-871f, global1.a.x) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1146f, global1.a.x), global1.a)), vec2<f32>(global1.a.x, global1.a.x)))), global1.a.x, var_0, global1.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global1.a, _wgslsmith_f_op_vec2_f32(-global1.a))))));
    var var_3 = var_2.e;
    global0 = array<vec3<f32>, 31>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_2.c.x, var_2.c.x, Struct_2(var_2.e, global1.a.x, vec3<u32>(var_1.x, 1u, var_0.x), var_3.a.x, Struct_1(vec2<f32>(global1.a.x, -1000f))))))) + _wgslsmith_f_op_vec2_f32(var_3.a * global1.a)));
}

fn func_1() -> u32 {
    let var_0 = u_input.c.xx;
    var var_1 = Struct_2(Struct_1(global1.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(142f))))), _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.a, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b, 0u), vec3<u32>(u_input.b, u_input.b, u_input.b))), ~u_input.a), ~(~firstTrailingBit(vec3<u32>(u_input.a, 10599u, u_input.b)))), -1217f, Struct_1(_wgslsmith_f_op_vec2_f32(func_2())));
    let var_2 = vec4<u32>(select(_wgslsmith_mult_u32(var_1.c.x, _wgslsmith_clamp_u32(firstLeadingBit(62633u), var_1.c.x, ~17231u)), 35u ^ _wgslsmith_mult_u32(~u_input.a, u_input.b), !(1400i != (var_0.x << (u_input.a % 32u)))), _wgslsmith_add_u32(u_input.b ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.x, u_input.b, 4294967295u, 4294967295u), vec4<u32>(u_input.b, u_input.a, u_input.b, 68764u)), ~1u), min(min(~_wgslsmith_div_u32(0u, 41140u), ~_wgslsmith_sub_u32(4673u, 1u)), u_input.b >> (u_input.b % 32u)), ~var_1.c.x);
    var_1 = Struct_2(var_1.e, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.a.x), var_1.e.a.x, !(global1.a.x > -147f))), reverseBits(var_2.xyx), _wgslsmith_f_op_f32(-2375f * global1.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_add_u32(u_input.b, u_input.b), 4294967295u, Struct_2(Struct_1(global1.a), global1.a.x, vec3<u32>(var_2.x, u_input.b, 1u), var_1.b, Struct_1(global1.a)))))));
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 31>();
    global0 = array<vec3<f32>, 31>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.a, vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-global1.a.x)))));
    var var_1 = u_input.c;
    let var_2 = -1000f;
    var var_3 = global0[_wgslsmith_index_u32(~func_1(), 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - var_3.x)), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(abs(var_0.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(303f - var_2))))));
}

