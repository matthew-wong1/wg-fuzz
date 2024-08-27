struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-574f, -159f, -1000f, -1487f), vec3<bool>(true, true, false), vec4<u32>(4294967295u, 4294967295u, 0u, 1u));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> bool {
    var var_0 = global2.c.zxz;
    var_0 = ~reverseBits(select(global2.c.zwz, global2.c.www ^ ~vec3<u32>(global2.c.x, var_0.x, var_0.x), global2.b));
    var var_1 = Struct_1(global2.a, vec3<bool>(false, all(global2.b), all(vec3<bool>(global2.c.x == var_0.x, any(vec4<bool>(global2.b.x, false, false, global2.b.x)), !global2.b.x))), vec4<u32>(~global2.c.x, ~max(global2.c.x, 4294967295u), ~50420u, global2.c.x));
    return -_wgslsmith_clamp_i32(~_wgslsmith_mod_i32(u_input.c.x, u_input.d.x), u_input.e.x, ~u_input.a.x) < -53794i;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> vec3<bool> {
    let var_0 = arg_1;
    global0 = _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), ~_wgslsmith_div_vec3_u32(arg_1.c.wwz, global2.c.yzw));
    let var_1 = ~arg_1.c.xx ^ var_0.c.wx;
    var var_2 = firstTrailingBit(~_wgslsmith_clamp_i32(arg_0.x, _wgslsmith_div_i32(-u_input.b, ~u_input.b), firstTrailingBit(-1i)));
    global2 = var_0;
    return arg_1.b;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> bool {
    global2 = Struct_1(vec4<f32>(310f, arg_0.a.x, -477f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1211f))) * arg_0.a.x)), func_4(abs(vec4<i32>(firstLeadingBit(u_input.b), u_input.d.x >> (global2.c.x % 32u), u_input.e.x, u_input.e.x)), arg_0, !select(vec3<bool>(global2.b.x, false, arg_0.b.x), global2.b, !vec3<bool>(true, arg_1, arg_1)), func_3()), _wgslsmith_clamp_vec4_u32(firstTrailingBit(~arg_0.c), vec4<u32>(global2.c.x, abs(_wgslsmith_mod_u32(global2.c.x, 1u)), 36686u, 32585u), arg_0.c));
    global1 = u_input.e.x;
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_0.a, vec4<f32>(-329f, 600f, -993f, 1250f)) + vec4<f32>(-1177f, arg_0.a.x, _wgslsmith_f_op_f32(min(550f, arg_0.a.x)), _wgslsmith_f_op_f32(step(arg_0.a.x, arg_0.a.x))))), arg_0.b, vec4<u32>(_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global2.c.zw, vec2<u32>(arg_0.c.x, global2.c.x)), vec2<u32>(global2.c.x, arg_0.c.x) | global2.c.yx)), _wgslsmith_mult_u32(arg_0.c.x ^ ~18082u, min(_wgslsmith_add_u32(1u, global2.c.x), min(global2.c.x, 3170u))), arg_0.c.x, 31463u));
    global0 = abs(var_0.c.x);
    global0 = 13024u;
    return !arg_1;
}

fn func_1() -> Struct_1 {
    var var_0 = 38871u;
    return Struct_1(global2.a, select(!vec3<bool>(true, true, func_2(Struct_1(vec4<f32>(global2.a.x, -1050f, global2.a.x, 2761f), vec3<bool>(global2.b.x, false, false), global2.c), true)), func_4(u_input.e, Struct_1(vec4<f32>(1233f, global2.a.x, 862f, global2.a.x), select(vec3<bool>(true, true, true), vec3<bool>(global2.b.x, global2.b.x, false), false), vec4<u32>(global2.c.x, global2.c.x, 0u, 50951u) << (global2.c % vec4<u32>(32u))), select(select(global2.b, vec3<bool>(global2.b.x, false, true), global2.b.x), !global2.b, select(global2.b, global2.b, vec3<bool>(true, false, false))), global2.b.x), false), vec4<u32>(global2.c.x, 39224u, global2.c.x << (1u % 32u), global2.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = 768f;
    let var_2 = u_input.e.xxw;
    let var_3 = any(!var_0.b.yz);
    let var_4 = var_0.a.ww;
    global0 = 39997u;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, var_0.c);
}

