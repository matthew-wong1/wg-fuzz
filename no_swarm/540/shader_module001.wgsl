struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1192f, false);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: Struct_1) -> f32 {
    global0 = arg_3;
    var var_0 = countOneBits(vec2<u32>(~53073u, ~u_input.b.x));
    var_0 = _wgslsmith_add_vec2_u32(u_input.b.xz, u_input.b.yz) << (_wgslsmith_mult_vec2_u32(u_input.b.yy, ~countOneBits(~vec2<u32>(1u, 47470u))) % vec2<u32>(32u));
    var_0 = ~vec2<u32>(~1u >> (1u % 32u), 0u);
    let var_1 = _wgslsmith_mod_u32(~(~u_input.a), 4294967295u);
    return _wgslsmith_f_op_f32(step(-1269f, -1000f));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> vec2<u32> {
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2134f))) - -248f), all(vec2<bool>(any(vec2<bool>(true, false)), all(vec4<bool>(global0.b, true, global0.b, false)))));
    global0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(u_input.a, vec3<f32>(global0.a, global0.a, global0.a), arg_1, Struct_1(global0.a, global0.b))), _wgslsmith_f_op_f32(global0.a - -484f)))), -458f, false)), !global0.b);
    var var_0 = ~_wgslsmith_mult_u32(23328u, ~(u_input.b.x << (u_input.a % 32u)));
    return ~u_input.b.zy;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(2407u, u_input.b.x, 1u, u_input.a), abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), ~(~(~vec4<u32>(u_input.a, 4294967295u, u_input.a, 26730u)))) | reverseBits(max(vec4<u32>(42548u, ~u_input.b.x, u_input.b.x, abs(u_input.b.x)), vec4<u32>(~70312u, _wgslsmith_add_u32(u_input.a, 1u), u_input.b.x, 0u)));
    global0 = Struct_1(global0.a, true);
    var var_1 = -10282i;
    var var_2 = 108f;
    let var_3 = ~(-countOneBits(-_wgslsmith_div_vec2_i32(vec2<i32>(-15878i, 0i), vec2<i32>(-54792i, -1i))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a))) + _wgslsmith_f_op_f32(floor(global0.a))), _wgslsmith_dot_vec2_u32(vec2<u32>(56512u, 16173u) & func_2(var_3.x, vec4<i32>(-83276i, var_3.x, var_3.x, var_3.x)), ~vec2<u32>(u_input.a, var_0.x)) <= _wgslsmith_dot_vec4_u32(~var_0 >> (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, 0u, 4294967295u), vec4<u32>(var_0.x, var_0.x, var_0.x, 0u)) % vec4<u32>(32u)), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -307f)), -2293f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(552f + _wgslsmith_f_op_f32(global0.a + global0.a))), all(select(select(vec3<bool>(false, global0.b, true), vec3<bool>(false, global0.b, global0.b), false), vec3<bool>(global0.b, true, global0.b), vec3<bool>(global0.b, false, global0.b)))));
    let var_1 = true;
    let var_2 = ~0u;
    global0 = Struct_1(-1000f, var_0.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(u_input.b.x, ~u_input.b.x) & ~var_2, global0.a, _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(792f)), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(func_3(var_2, vec3<f32>(1435f, var_0.a, -700f), vec4<i32>(35816i, -752i, -32309i, -2147483647i), var_0.b)), _wgslsmith_f_op_f32(ceil(846f))) + vec4<f32>(_wgslsmith_f_op_f32(global0.a * 336f), _wgslsmith_f_op_f32(var_0.b.a - var_0.b.a), func_1().a, _wgslsmith_f_op_f32(min(-704f, -1030f))))), -2147483647i);
}

