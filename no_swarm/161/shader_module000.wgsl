struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
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

var<private> global0: bool = true;

var<private> global1: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false));

var<private> global2: array<vec2<bool>, 20>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: u32) -> u32 {
    return 38200u;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3) -> u32 {
    global0 = !(0i <= u_input.d.x);
    var var_0 = 74203u;
    global1 = array<vec4<bool>, 32>();
    global0 = false;
    global2 = array<vec2<bool>, 20>();
    return firstLeadingBit(_wgslsmith_sub_u32(u_input.c, 4294967295u));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-223f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -2215f), 1160f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0 - -917f), -669f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(482f - -1372f), _wgslsmith_f_op_f32(select(1000f, -642f, false)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 294f, 258f, _wgslsmith_f_op_f32(var_0 - -626f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 733f, -638f, 1697f) * vec4<f32>(-811f, var_0, -1510f, -1099f)) + vec4<f32>(-1309f, var_0, var_0, var_0)))), vec4<f32>(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-var_0)), 153f, 816f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))))));
    global1 = array<vec4<bool>, 32>();
    var var_2 = 544i;
    global1 = array<vec4<bool>, 32>();
    return Struct_3(Struct_1(countOneBits(firstTrailingBit(u_input.d.zz)), 24583u), Struct_2(arg_2.a), Struct_1(vec2<i32>(2147483647i, -(~u_input.d.x)), 4294967295u), 813f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 20>();
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(func_1(~_wgslsmith_add_u32(u_input.a, 29549u)), 1u), u_input.a);
    var var_1 = func_3(Struct_1(~_wgslsmith_mod_vec2_i32(u_input.d.xy, _wgslsmith_clamp_vec2_i32(vec2<i32>(43967i, -1i), u_input.d.xz, vec2<i32>(u_input.d.x, -23778i))), _wgslsmith_dot_vec3_u32(~(vec3<u32>(36644u, 50799u, var_0.x) ^ vec3<u32>(var_0.x, 20980u, var_0.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, var_0.x, 4294967295u), ~vec3<u32>(409u, u_input.a, u_input.b)))), abs(u_input.b) | _wgslsmith_div_u32(~func_2(vec4<f32>(230f, 1785f, 1000f, 1000f), Struct_3(Struct_1(u_input.d.yx, u_input.b), Struct_2(vec3<i32>(-2147483647i, u_input.d.x, -14896i)), Struct_1(u_input.d.yy, 1u), 366f)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 19198u, 30692u), vec3<u32>(58135u, 0u, u_input.a))), Struct_2(vec3<i32>(~u_input.d.x, 1i, u_input.d.x)));
    global2 = array<vec2<bool>, 20>();
    var var_2 = countOneBits(~u_input.a) | (_wgslsmith_sub_u32(var_1.a.b, var_1.a.b) << (max(var_0.x, ~(~var_1.a.b)) % 32u));
    global1 = array<vec4<bool>, 32>();
    var_2 = _wgslsmith_mult_u32(var_0.x, var_1.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mod_i32(countOneBits(3407i) | select(u_input.d.x, -1i, true), _wgslsmith_sub_i32(i32(-1i) * -61679i, var_1.b.a.x)), var_1.b.a.x));
}

