struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: bool,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1470f, vec2<bool>(true, false), -825f, 131f, Struct_1(vec3<i32>(0i, 1i, 0i), vec2<f32>(153f, 732f), false, vec3<u32>(4294967295u, 107708u, 129687u), vec2<bool>(true, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_clamp_vec3_i32(global0.e.a, vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, global0.e.a.x), abs(vec2<i32>(u_input.d.x, -2147483647i))), 1i, -(countOneBits(u_input.d.x) | u_input.d.x)), global0.e.a);
    global0 = Struct_2(global0.a, vec2<bool>(global0.e.e.x, global0.e.c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(global0.e.b.x + global0.d))), -695f, global0.e.e.x)), _wgslsmith_div_f32(global0.c, -1528f), global0.e);
    let var_1 = _wgslsmith_f_op_vec2_f32(global0.e.b + global0.e.b);
    let var_2 = u_input.d.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(round(var_1.x)), -706f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -370f), global0.c)), 788f, true)))));
    return false || (_wgslsmith_f_op_f32(f32(-1f) * -657f) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -339f) * _wgslsmith_f_op_f32(-var_1.x)), -467f));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec3<f32>) -> vec3<f32> {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_add_u32(select(arg_0.a.d.x ^ 15731u, ~0u, func_3()) >> ((abs(4294967295u) ^ _wgslsmith_dot_vec3_u32(global0.e.d, vec3<u32>(arg_0.a.d.x, u_input.e.x, 0u))) % 32u), select(0u, ~(~global0.e.d.x), all(select(global0.e.e, global0.e.e, vec2<bool>(true, false))))), 47971u);
    return vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-730f + -1928f), _wgslsmith_div_f32(arg_3.x, global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_div_f32(arg_3.x, -1067f));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_4(39864i, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, -408f, -295f)))), Struct_2(_wgslsmith_f_op_f32(ceil(global0.d)), global0.e.e, -1152f, 200f, global0.e));
    var_0 = Struct_4(var_0.c.e.a.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_3(Struct_1(vec3<i32>(37055i, var_0.c.e.a.x, var_0.a), vec2<f32>(-1149f, -1098f), global0.b.x, vec3<u32>(40775u, 4294967295u, u_input.a.x), vec2<bool>(true, true)), var_0.a), global0.e.a.xz, u_input.d | var_0.c.e.a, var_0.b)) - var_0.b), vec3<f32>(var_0.c.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a + 578f), _wgslsmith_f_op_f32(min(var_0.c.a, 443f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.c - global0.e.b.x)))))), Struct_2(_wgslsmith_f_op_f32(trunc(-1284f)), select(select(!global0.e.e, vec2<bool>(false, true), u_input.a.x > var_0.c.e.d.x), var_0.c.b, var_0.c.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(443f, _wgslsmith_f_op_f32(round(1161f)))) * _wgslsmith_f_op_f32(global0.e.b.x - -295f)), var_0.b.x, var_0.c.e));
    let var_1 = var_0.c;
    let var_2 = var_0.c;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.e.b.x), _wgslsmith_f_op_f32(1009f - var_2.c))))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(-var_3)), select(!var_0.c.b, var_0.c.e.e, true), -1876f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1846f)))), Struct_1(vec3<i32>(global0.e.a.x, u_input.d.x, 31879i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.yx)), true != any(select(vec3<bool>(var_0.c.e.c, var_0.c.e.c, true), vec3<bool>(global0.b.x, var_1.e.e.x, var_0.c.e.e.x), false)), vec3<u32>(_wgslsmith_mult_u32(~64241u, ~var_0.c.e.d.x), 1u, u_input.a.x), select(vec2<bool>(true, true), vec2<bool>(true, true), var_0.c.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(u_input.b.x, global0.e.d.x) <= global0.e.d.x;
    let var_1 = u_input.d.x;
    var var_2 = func_1();
    var_2 = func_1();
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.e.a.x, ~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global0.e.d.x, 4294967295u, var_2.e.d.x), vec4<u32>(var_2.e.d.x, u_input.e.x, var_2.e.d.x, global0.e.d.x)), u_input.c ^ vec4<u32>(u_input.c.x, global0.e.d.x, 4294967295u, 0u)), ~u_input.a >> (max(u_input.a, u_input.a) % vec4<u32>(32u))), _wgslsmith_mod_u32(abs(global0.e.d.x), abs(~15024u)), select(~vec3<u32>(global0.e.d.x | global0.e.d.x, 70274u, u_input.b.x), vec3<u32>(u_input.c.x, ~37726u, 28079u), true), var_2.e.a);
}

