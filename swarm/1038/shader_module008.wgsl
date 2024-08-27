struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: vec4<bool>) -> bool {
    let var_0 = vec2<u32>((_wgslsmith_mult_u32(u_input.b.x, u_input.c.x) & ~4294967295u) | 4294967295u, u_input.d.x);
    var var_1 = _wgslsmith_f_op_f32(706f - arg_0);
    let var_2 = all(arg_3);
    let var_3 = arg_3.zy;
    let var_4 = -1117f;
    return true;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(1f)));
    let var_1 = 27125u;
    var_0 = _wgslsmith_f_op_f32(-427f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -695f)))));
    var_0 = -780f;
    var var_2 = Struct_1(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, var_1, 7244u, u_input.b.x), vec4<u32>(u_input.e, u_input.e, 0u, var_1))));
    return Struct_2(true);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    var var_1 = Struct_2(!(~4294967295u <= max(u_input.d.x << (4294967295u % 32u), ~1u)));
    let var_2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2523f * 372f))))), u_input.a.x ^ 44944i, ~u_input.d.x, !vec4<bool>(true, var_1.a, !var_1.a == true, true));
    var_1 = func_3(Struct_2(!any(vec2<bool>(var_2, var_2))), func_2(), Struct_1(vec4<u32>(4294967295u, 1u, select(u_input.e << (21877u % 32u), select(u_input.d.x, 31545u, true), var_2), u_input.e)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1139f + 263f)))), -275f));
    var var_4 = _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(reverseBits(73731u), ~u_input.d.x, ~_wgslsmith_mod_u32(u_input.e, 62213u), _wgslsmith_div_u32(~u_input.c.x, u_input.e))), ~(~vec4<u32>(_wgslsmith_sub_u32(6477u, u_input.b.x), 1u, u_input.e, u_input.d.x)));
    var var_5 = Struct_2(select(true, false && (!var_2 & select(false, var_2, true)), select(true, var_1.a, true || (u_input.e >= u_input.b.x))));
    var var_6 = ~_wgslsmith_add_vec4_i32(~(~(vec4<i32>(-1i, -18149i, -2147483647i, -1i) & vec4<i32>(-13368i, 6014i, 1198i, u_input.a.x))), ~(~vec4<i32>(-29432i, 7261i, u_input.a.x, var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(668f)), _wgslsmith_f_op_f32(min(-298f, _wgslsmith_f_op_f32(step(1000f, 458f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_3.x, var_3.x)), _wgslsmith_f_op_f32(round(var_3.x))))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~81407u, ~u_input.e, ~u_input.d.x, ~u_input.b.x), max(~vec4<u32>(u_input.c.x, 1u, 34101u, 78129u), min(u_input.d, u_input.d)), _wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(u_input.c.x, u_input.b.x, u_input.d.x, u_input.b.x)) ^ ~u_input.d));
}

