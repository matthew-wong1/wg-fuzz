struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> bool {
    let var_0 = ~64087u;
    return true;
}

fn func_3(arg_0: vec2<bool>) -> bool {
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    let var_0 = -192f;
    let var_1 = Struct_2(_wgslsmith_mod_vec2_i32(-abs(vec2<i32>(1i, 24193i)) & _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 1i), vec2<i32>(1i, 13720i)), vec2<i32>(12292i, 0i) | vec2<i32>(u_input.e, -1i), ~vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-2147483647i, 26576i)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0)), var_0, u_input.b >= u_input.d.x)), u_input.d.x, _wgslsmith_add_u32(0u, max(_wgslsmith_dot_vec4_u32(vec4<u32>(34345u, u_input.d.x, 0u, 41830u), vec4<u32>(u_input.d.x, 0u, u_input.b, u_input.d.x)), 43021u)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, 20825u, u_input.b) | vec4<u32>(u_input.b, 0u, 1u, u_input.b), vec4<u32>(reverseBits(u_input.b), u_input.b, _wgslsmith_clamp_u32(u_input.d.x, u_input.b, u_input.b), 54748u)), u_input.d.x << (u_input.b % 32u)), vec4<u32>(~(~u_input.d.x), u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.d.x, u_input.d.x)), ~1u) & abs(~vec4<u32>(u_input.b, 71u, 1u, 4294967295u)), global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(~u_input.d.x, abs(u_input.b), ~u_input.d.x) | ~1u), 6u)]);
    let var_2 = 2040i <= ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_1.a, ~vec2<i32>(var_1.a.x, -62312i)), ~reverseBits(u_input.c));
    return !select(true, !(var_1.a.x == 1i), true);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: u32, arg_3: vec2<u32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(arg_3.x, 6u)];
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u & arg_2, 30574u) ^ _wgslsmith_clamp_u32(1u, max(arg_2, var_0.b), _wgslsmith_dot_vec2_u32(arg_1.yy, arg_3)), arg_2), 5666u, _wgslsmith_clamp_u32(0u, ~var_0.c, arg_2 ^ firstLeadingBit(32300u & var_0.c)));
    var var_2 = Struct_4(vec3<u32>(arg_2, _wgslsmith_mod_u32(19795u, 4294967295u), 140825u), -(vec3<i32>(-1i) * -vec3<i32>(u_input.e, -1i, -2147483647i)) & -vec3<i32>(u_input.e, -u_input.c, u_input.c >> (var_0.e % 32u)), func_3(!vec2<bool>(all(vec4<bool>(false, false, true, true)), func_1())), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(533f, -765f), var_0.a)), -1000f), 1u, ~(~abs(arg_1.x)), reverseBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 4188u, 0u), vec4<u32>(arg_2, arg_0, arg_0, arg_1.x))), ~var_0.b));
    var var_3 = u_input.a;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.a, var_2.d.a)), vec2<f32>(var_2.d.a, var_0.a)))));
    return 55336u;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true));
    global0 = array<Struct_1, 6>();
    let var_1 = arg_3;
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-2442f - 439f), arg_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = any(vec3<bool>(true, true, true));
    var_0 = true;
    let var_1 = vec3<bool>(true, true, -(-51178i & firstLeadingBit(u_input.e)) != 8709i);
    let var_2 = _wgslsmith_f_op_vec2_f32(func_4(~firstLeadingBit(vec3<u32>(~4294967295u, 4294967295u, u_input.b)), global0[_wgslsmith_index_u32(func_2(~4294967295u, vec3<u32>(u_input.b, u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.d, u_input.d)) << ((~vec3<u32>(u_input.d.x, u_input.d.x, 26818u) << (u_input.d % vec3<u32>(32u))) % vec3<u32>(32u)), 1u, vec2<u32>(12396u >> (0u % 32u), 1u)), 6u)], ~u_input.b, Struct_2(vec2<i32>(~(-84800i), u_input.a), global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(~u_input.b, min(80009u, u_input.b))), 6u)], ~(~vec4<u32>(4294967295u, 5502u, 57890u, 0u) >> ((vec4<u32>(4294967295u, u_input.b, u_input.d.x, u_input.d.x) & vec4<u32>(u_input.d.x, u_input.b, 4294967295u, 43025u)) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1999f)), u_input.b, 43428u, _wgslsmith_clamp_vec4_u32(vec4<u32>(93116u, 24131u, 10920u, 48371u), abs(vec4<u32>(1u, u_input.d.x, 13743u, u_input.b)), vec4<u32>(u_input.d.x, 0u, 1u, 38316u) ^ vec4<u32>(u_input.b, u_input.d.x, u_input.d.x, 37944u)), _wgslsmith_mod_u32(max(4294967295u, 33846u), ~21094u)))));
    var_0 = any(var_1);
    global0 = array<Struct_1, 6>();
    var var_3 = ~u_input.b;
    var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_f32(-173f * var_2.x), _wgslsmith_f_op_vec2_f32(var_2 + var_2));
}

