struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> bool {
    var var_0 = Struct_1(_wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 14376u, 132678u), vec3<u32>(4294967295u, u_input.b, u_input.b)), ~vec3<u32>(~u_input.b, 1u, u_input.b)));
    let var_1 = max(abs(var_0.a.x), _wgslsmith_clamp_u32(u_input.b, u_input.b, 8399u)) & ~29301u;
    var_0 = Struct_1(vec3<u32>(~29276u, 4294967295u ^ _wgslsmith_div_u32(1u, _wgslsmith_mod_u32(u_input.b, u_input.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b, 0u), vec4<u32>(17277u, var_1, var_0.a.x, 5924u)) >> (u_input.b % 32u)));
    global1 = ~var_1;
    var var_2 = false;
    return !(!(all(global0.zz) | global0.x)) || !(!((global0.x || false) && true));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> bool {
    var var_0 = Struct_1(countOneBits(countOneBits(arg_0.c.a)));
    var_0 = Struct_1(~(var_0.a >> (_wgslsmith_div_vec3_u32(arg_0.c.a << (vec3<u32>(36253u, 33055u, u_input.b) % vec3<u32>(32u)), vec3<u32>(var_0.a.x, var_0.a.x, arg_0.c.a.x)) % vec3<u32>(32u))));
    let var_1 = -(-u_input.a | (vec2<i32>(-1i) * -u_input.a));
    var var_2 = firstLeadingBit(arg_0.c.a.zz);
    var_0 = Struct_1(~var_0.a);
    return !arg_0.b;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    var var_0 = (false | any(select(!vec4<bool>(arg_2.c, true, global0.x, true), select(vec4<bool>(arg_1.b, global0.x, false, global0.x), vec4<bool>(global0.x, arg_2.c, false, global0.x), vec4<bool>(false, global0.x, global0.x, false)), global0.x))) & !arg_1.b;
    global0 = vec3<bool>(func_2(), func_2(), func_3(arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(~1i, -arg_0.x), ~vec2<i32>(-32719i, arg_0.x))));
    global1 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(select(~(arg_2.a ^ arg_2.a), ~min(43553u, arg_2.a), true), ~firstTrailingBit(38462u), _wgslsmith_clamp_u32(u_input.b, 22050u >> (arg_2.a % 32u), arg_2.a) ^ _wgslsmith_mult_u32(u_input.b, arg_1.c.a.x)), _wgslsmith_dot_vec4_u32(~abs(~vec4<u32>(46937u, arg_1.c.a.x, 75958u, arg_1.c.a.x)), vec4<u32>(arg_1.c.a.x, 24083u, _wgslsmith_mod_u32(30678u, _wgslsmith_mult_u32(arg_1.c.a.x, 71898u)), _wgslsmith_div_u32(4294967295u, arg_2.a) & 1u)));
    let var_1 = arg_1.c.a.x;
    let var_2 = 1u;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(480f + -1420f) * -1341f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -937f), _wgslsmith_f_op_f32(f32(-1f) * -1772f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -162f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1060f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(972f, 833f))), _wgslsmith_f_op_f32(select(-1182f, 137f, func_1(vec4<i32>(u_input.a.x, 2147483647i, u_input.d.x, u_input.d.x), Struct_3(vec4<f32>(650f, 1372f, 1087f, -1073f), true, Struct_1(vec3<u32>(u_input.b, 1u, u_input.b)), vec4<f32>(647f, 451f, -1201f, -1000f)), Struct_2(u_input.b, 952f, true))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_f_op_f32(var_0.x - var_0.x))));
    var var_1 = Struct_1(vec3<u32>(~_wgslsmith_sub_u32(u_input.b, 10679u), 99661u, ~(~u_input.b)) & vec3<u32>(42501u, 36896u, max(u_input.b, 29104u ^ u_input.b)));
    let var_2 = _wgslsmith_f_op_f32(-784f * 1000f);
    let var_3 = _wgslsmith_mult_i32(16957i, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_2, abs(select(~vec4<i32>(var_3, u_input.c, var_3, var_3), countOneBits(vec4<i32>(-19977i, -38809i, u_input.d.x, 8055i)), (var_0.x != var_2) & !global0.x)), var_1.a.x);
}

