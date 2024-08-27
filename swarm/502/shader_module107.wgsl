struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
    d: Struct_2,
    e: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(false, vec3<f32>(-1701f, 1040f, -747f), 1881f, vec4<f32>(1251f, 2065f, -1000f, 1000f), vec2<u32>(82534u, 98844u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> vec3<f32> {
    let var_0 = _wgslsmith_sub_u32(~global0.e.x, abs(global0.e.x));
    let var_1 = Struct_2(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a, 4294967295u), 1u, u_input.a), select(min(arg_0.c.x, firstLeadingBit(1u)), ~u_input.a, true && (u_input.c < arg_1.x)), 118275u, ~u_input.a), arg_1.yy, !(!(!vec4<bool>(false, global0.a, global0.a, global0.a))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_0.a)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.b.x, global0.c, 923f, global0.c), vec4<f32>(global0.c, global0.b.x, arg_0.b, arg_0.a.x))))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.d)));
    var var_3 = vec3<i32>(arg_1.x, arg_1.x, ~max(u_input.b.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(-7940i, var_1.b.x, 1i, 2147483647i), vec4<i32>(16591i, -1i, u_input.b.x, arg_1.x))));
    var var_4 = arg_0.a.zyy;
    return vec3<f32>(_wgslsmith_f_op_f32(sign(1010f)), _wgslsmith_f_op_f32(ceil(-1517f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1542f))));
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_4(false, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, 1000f, 2143f, global0.b.x) + vec4<f32>(global0.b.x, global0.b.x, global0.c, global0.d.x)), global0.c, _wgslsmith_mod_vec2_u32(vec2<u32>(35928u, global0.e.x), vec2<u32>(global0.e.x, u_input.a))), ~(-vec3<i32>(u_input.b.x, u_input.b.x, -1i)))), global0.d.ywy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global0.c)), _wgslsmith_div_f32(global0.c, global0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.d.x)))))), _wgslsmith_f_op_vec4_f32(global0.d + global0.d), _wgslsmith_add_vec2_u32(global0.e, ~vec2<u32>(u_input.a, u_input.a)));
    let var_1 = _wgslsmith_f_op_f32(sign(var_0.c));
    var var_2 = vec2<i32>(-(~u_input.c), countOneBits((u_input.c | -u_input.b.x) << (var_0.e.x % 32u)));
    var var_3 = ~(min(_wgslsmith_div_u32(_wgslsmith_div_u32(global0.e.x, 5956u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 3764u, var_0.e.x, 18775u), vec4<u32>(var_0.e.x, 38572u, u_input.a, u_input.a))), reverseBits(69199u)) >> (_wgslsmith_sub_u32(countOneBits(1u), _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, var_0.e.x), 88664u)) % 32u));
    var_3 = ~(~firstTrailingBit(0u));
    return -(vec2<i32>(_wgslsmith_clamp_i32(0i >> (var_0.e.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_2.x, u_input.b.x), vec3<i32>(2147483647i, -1i, u_input.c)), ~var_2.x), var_2.x) & u_input.b);
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec4<i32>) -> vec3<u32> {
    let var_0 = func_2();
    let var_1 = -1i;
    let var_2 = arg_0;
    global0 = Struct_4(arg_0, _wgslsmith_f_op_vec3_f32(-global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -755f))) + global0.c), global0.d, ~global0.e);
    global0 = Struct_4(false, global0.b, _wgslsmith_f_op_f32(2606f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.d.x + global0.b.x), -665f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) - _wgslsmith_f_op_f32(abs(1138f))), -260f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b.x))), global0.c) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.d + global0.d))))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, ~u_input.a), vec2<u32>(_wgslsmith_sub_u32(u_input.a, global0.e.x), 1u)), _wgslsmith_div_u32(~u_input.a << (~global0.e.x % 32u), 1u)));
    return vec3<u32>(~76723u, 4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 53400u, 4294967295u), vec3<u32>(global0.e.x, 4294967295u, 57926u)), ~abs(vec3<u32>(0u, 4294967295u, global0.e.x))), min(vec3<u32>(~0u, 11134u, global0.e.x), abs(vec3<u32>(global0.e.x, global0.e.x, u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(70934u & global0.e.x, ~0u, 0u, global0.e.x);
    var_0 = vec4<u32>(firstLeadingBit(_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0.x, 1u, 4294967295u)), _wgslsmith_mult_vec3_u32(var_0.www, var_0.zxx)))), ~(~53374u), ~_wgslsmith_mult_u32(~u_input.a << (reverseBits(0u) % 32u), ~(~54894u)), ~abs(~countOneBits(0u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xw, -(min(vec3<i32>(u_input.c, u_input.c, -1i) << (vec3<u32>(7780u, 4294967295u, 0u) % vec3<u32>(32u)), vec3<i32>(u_input.c, 0i, 0i)) << (abs(func_1(true, vec2<i32>(0i, -2147483647i), vec3<i32>(u_input.c, u_input.b.x, u_input.c), vec4<i32>(u_input.c, 1i, 2147483647i, u_input.b.x))) % vec3<u32>(32u))));
}

