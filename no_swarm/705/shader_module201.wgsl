struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18>;

var<private> global1: array<Struct_1, 2>;

var<private> global2: array<f32, 26> = array<f32, 26>(1024f, -1399f, -586f, -880f, -224f, -901f, 2506f, 2305f, 1000f, -1864f, 609f, 1963f, -191f, 135f, -772f, -275f, 216f, 181f, -477f, 1151f, -213f, -2221f, 189f, 372f, 1000f, 913f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> i32 {
    return ~min(_wgslsmith_mod_i32(reverseBits(-25572i), ~(-18653i)), _wgslsmith_mult_i32(-46041i, -1i));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<bool>) -> f32 {
    global1 = array<Struct_1, 2>();
    global0 = array<vec2<f32>, 18>();
    global2 = array<f32, 26>();
    let var_0 = arg_0;
    let var_1 = global1[_wgslsmith_index_u32(0u, 2u)];
    return -422f;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    return arg_1.c;
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = Struct_1(108422u, vec2<bool>(true, false), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(u_input.a << (u_input.b % 32u), _wgslsmith_add_u32(1u, 1u)), ~_wgslsmith_add_u32(23815u, 1u)), 26u)]));
    var var_1 = Struct_2(-(~(-vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x)) | firstLeadingBit(abs(vec4<i32>(-14216i, 0i, u_input.e.x, 18406i)))), u_input.e.yy);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-748f + _wgslsmith_f_op_f32(exp2(var_0.c))) + arg_0) - _wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(var_1.a, firstTrailingBit(var_1.a)), -17129i, func_2() ^ ~var_1.a.x), global1[_wgslsmith_index_u32(u_input.d.x, 2u)], Struct_1(~10002u, !vec2<bool>(true, var_0.b.x), _wgslsmith_f_op_f32(func_3(1i, ~u_input.c.zxx, vec3<bool>(var_0.b.x, true, var_0.b.x)))))));
    var var_3 = Struct_2(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(min(1i, -2147483647i), _wgslsmith_clamp_i32(var_1.b.x, 1i, -29014i), countOneBits(var_1.b.x), max(4217i, -73021i)), ~countOneBits(var_1.a))), var_1.b);
    global0 = array<vec2<f32>, 18>();
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 18>();
    global2 = array<f32, 26>();
    let var_0 = Struct_1(func_1(-1997f), vec2<bool>(true, false && ((u_input.b <= 72794u) && true)), 1000f);
    global1 = array<Struct_1, 2>();
    global2 = array<f32, 26>();
    let var_1 = Struct_1(u_input.c.x, select(vec2<bool>(all(!vec2<bool>(true, var_0.b.x)), false), var_0.b, var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1798f - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.a, 26u)])))));
    global0 = array<vec2<f32>, 18>();
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1428f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(-1i, u_input.c.yww, vec3<bool>(false, var_0.b.x, true))))), -747f)), -405f));
    let var_3 = ~vec3<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 102903u, var_0.a), vec3<u32>(u_input.c.x, 0u, var_0.a) & u_input.c.wzx)), u_input.d.x, reverseBits(~10859u) | reverseBits(var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(reverseBits(~(~3313u)), func_1(var_1.c)));
}

