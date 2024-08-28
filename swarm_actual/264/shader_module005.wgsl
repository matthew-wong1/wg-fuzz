struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<f32>(535f, -820f, 661f, -401f)), Struct_1(vec4<f32>(-1990f, 107f, 876f, 1345f)), Struct_1(vec4<f32>(413f, 1524f, -318f, 485f)), Struct_1(vec4<f32>(1000f, 406f, -784f, 1000f)), Struct_1(vec4<f32>(-1825f, 1418f, -1000f, -1003f)), Struct_1(vec4<f32>(361f, 2528f, -671f, -936f)), Struct_1(vec4<f32>(-344f, 491f, 865f, -329f)), Struct_1(vec4<f32>(-884f, -328f, 1157f, 1000f)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -336f)), -158f, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global0 = array<Struct_1, 8>();
    let var_1 = u_input.b.yyw;
    global0 = array<Struct_1, 8>();
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.a.x), _wgslsmith_f_op_f32(arg_2 + arg_0.c.a.x)))))));
    return _wgslsmith_f_op_f32(select(1000f, arg_0.c.a.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-120f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-114f)))))));
    global0 = array<Struct_1, 8>();
    let var_1 = vec2<bool>(any(vec2<bool>(true, true)), true);
    var var_2 = Struct_2(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(10285i, -4198i) & vec2<i32>(u_input.a.x, -2147483647i), ~vec2<i32>(u_input.a.x, u_input.a.x)), ~(~40630u), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(738f)), _wgslsmith_f_op_f32(func_1(Struct_2(vec2<i32>(-53079i, 1i), 0u, Struct_1(vec4<f32>(-1608f, -1000f, var_0, 1550f))), vec3<bool>(true, var_1.x, var_1.x), var_0)), _wgslsmith_f_op_f32(-var_0), var_0))));
    var var_3 = _wgslsmith_mult_i32(var_2.a.x, 46354i);
    let var_4 = vec2<bool>((all(select(vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(var_1.x, var_1.x, var_1.x, false), true)) & (~var_2.b < max(var_2.b, var_2.b))) && var_1.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_div_u32(var_2.b, ~var_2.b), ~min(var_2.b, var_2.b), _wgslsmith_mod_u32(4294967295u, firstLeadingBit(22312u))) ^ select(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.b, var_2.b, var_2.b), vec3<u32>(var_2.b, var_2.b, var_2.b)), ~vec3<u32>(29736u, var_2.b, 1u), ~vec3<u32>(var_2.b, 13065u, var_2.b)), select(~vec3<u32>(var_2.b, 0u, var_2.b), vec3<u32>(19537u, 53429u, var_2.b) & vec3<u32>(var_2.b, var_2.b, var_2.b), vec3<bool>(var_4.x, var_1.x, false)), true), _wgslsmith_mult_vec3_u32(vec3<u32>(~var_2.b, 0u >> (var_2.b % 32u), var_2.b) ^ _wgslsmith_mod_vec3_u32(select(vec3<u32>(var_2.b, 14713u, var_2.b), vec3<u32>(1u, var_2.b, var_2.b), false), ~vec3<u32>(var_2.b, 24898u, var_2.b)), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_2.b, 4294967295u, 41270u), vec3<u32>(4294967295u, var_2.b, var_2.b), vec3<u32>(var_2.b, 7383u, 18043u) << (vec3<u32>(var_2.b, var_2.b, var_2.b) % vec3<u32>(32u)))));
}

