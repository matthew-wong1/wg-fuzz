struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: i32,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(-29739i, -1i, 56193i), Struct_4(49519i, 64982i, 1i));

var<private> global1: vec2<f32>;

var<private> global2: Struct_4 = Struct_4(-70057i, 0i, 17592i);

var<private> global3: array<vec4<i32>, 29>;

var<private> global4: vec3<u32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> i32 {
    return -2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<u32>) -> vec3<u32> {
    global1 = vec2<f32>(global1.x, global1.x);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-345f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x - 238f))))));
    global4 = ~u_input.a;
    let var_1 = max(~(~vec3<i32>(_wgslsmith_clamp_i32(global2.a, global2.b, -1i), func_1(), func_1())), -reverseBits(-firstTrailingBit(vec3<i32>(-449i, 44797i, -48293i))));
    global4 = func_2(Struct_1(!vec3<bool>(true, true, select(true, false, true))), abs(var_1.zy), ~u_input.a);
    var var_2 = global2.c;
    let var_3 = global1.x;
    let var_4 = ~27554u;
    var var_5 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(298f * 120f) - _wgslsmith_div_f32(var_0, var_0)))), vec4<u32>(67147u, ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_4, var_4), _wgslsmith_clamp_u32(292u, global4.x, u_input.a.x)), ~u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a, ~(~u_input.a))), var_4, vec4<u32>(~4294967295u, u_input.b, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b, 0u), var_4), ~_wgslsmith_clamp_u32(var_4, 4294967295u, 1u)) | vec4<u32>(u_input.b >> (u_input.b % 32u), ~func_2(Struct_1(vec3<bool>(false, true, false)), var_1.xz, vec3<u32>(var_4, 70074u, global4.x)).x, ~1u, ~var_4), -5465i);
}

