struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global1: array<Struct_2, 5>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(33316u, 47417u, arg_0.d.c, u_input.a.x))), ~(abs(u_input.a) ^ (vec4<u32>(u_input.a.x, 113773u, 1u, 0u) << (vec4<u32>(arg_0.b.x, arg_0.b.x, 1u, 1u) % vec4<u32>(32u))))), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.x, 4294967295u, ~countOneBits(0u), _wgslsmith_sub_u32(arg_0.b.x, arg_0.b.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, 45265u, 20093u, u_input.b.x), vec4<u32>(~arg_0.b.x, arg_0.d.b, 28018u, ~36133u), arg_0.b)));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(abs(-865f)), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(57516u, u_input.a.x), ~arg_0.d.d, u_input.a.x, ~1u), _wgslsmith_add_vec4_u32(~u_input.a, _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.x, u_input.b.x, 25154u, 0u), firstTrailingBit(vec4<u32>(79107u, 1u, 18468u, var_0.x))))), Struct_1(i32(-1i) * -1i, 1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-308f, 236f))))), _wgslsmith_f_op_vec2_f32(-arg_0.c.d), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c.e)), vec4<f32>(_wgslsmith_f_op_f32(trunc(378f)), arg_0.a, _wgslsmith_f_op_f32(-679f + arg_0.c.e.x), _wgslsmith_f_op_f32(round(-820f))), !(global0.x || false)))), arg_0.d);
    global1 = array<Struct_2, 5>();
    let var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 5u)];
    return -13804i;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(u_input.e.x, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.e.x, ~func_3(Struct_4(-700f, vec4<u32>(1u, 21250u, 2679u, u_input.a.x), Struct_1(u_input.d.x, 0i, vec2<f32>(-110f, -469f), vec2<f32>(-277f, -1510f), vec4<f32>(-527f, -1000f, 262f, -430f)), Struct_3(global0.x, 32577u, 41455u, u_input.a.x)))), 29316i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1297f, 804f))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1861f, -352f), _wgslsmith_f_op_f32(select(-1907f, -785f, global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-168f, 114f), vec2<f32>(-1625f, -151f)))), vec2<f32>(_wgslsmith_div_f32(578f, -430f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1402f, -281f)) + 246f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(810f, 117f, 696f, 1112f))))));
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    var var_0 = func_2();
    var var_1 = select(-_wgslsmith_sub_i32(var_0.a, 0i), abs(-53630i >> (arg_1.c % 32u)), arg_1.a);
    var var_2 = var_0.e;
    global0 = vec4<bool>(!(true | (!arg_1.a | (arg_1.a & global0.x))), global0.x, false, true & !select(all(vec4<bool>(arg_1.a, global0.x, arg_1.a, arg_1.a)), all(global0.wz), arg_0.d.x > 493f));
    let var_3 = select(vec2<bool>(global0.x, false), select(vec2<bool>(true, all(global0.zw) || !global0.x), select(!global0.wy, vec2<bool>(global0.x, arg_1.a || global0.x), global0.wx), !vec2<bool>(!arg_1.a, var_0.e.x > var_2.x)), vec2<bool>(!global0.x, global0.x));
    return arg_0.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 69412i << (~(~u_input.a.x) % 32u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(1379f + 1640f)) + _wgslsmith_div_f32(-1053f, _wgslsmith_f_op_f32(floor(-1000f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1673f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(-12005i, -2147483647i, vec2<f32>(-1077f, 896f), vec2<f32>(-158f, -1635f), vec4<f32>(1508f, 898f, -1000f, -709f)), Struct_3(global0.x, u_input.b.x, 0u, u_input.b.x)))))));
    let var_2 = max(min(4727u, 4294967295u), 0u);
    let var_3 = _wgslsmith_dot_vec3_u32(u_input.a.wxw, vec3<u32>(73298u, select(~var_2, _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_2, u_input.b.x, 17139u), 0u), all(!global0.wy)), u_input.a.x));
    global0 = vec4<bool>(global0.x, _wgslsmith_div_i32(u_input.d.x, ~firstTrailingBit(-2147483647i)) < -10483i, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-153f)))), -u_input.c.wxx);
}

