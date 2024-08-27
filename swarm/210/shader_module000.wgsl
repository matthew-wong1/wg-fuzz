struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> f32 {
    var var_0 = select(vec2<bool>(true, true), !vec2<bool>(true, select(true, all(vec4<bool>(false, false, true, false)), true)), vec2<bool>(true, true));
    global0 = arg_0;
    var var_1 = reverseBits(abs(max(u_input.c.ww, vec2<i32>(u_input.c.x, -10327i))) ^ (vec2<i32>(-1i) * -u_input.c.xy)) & -vec2<i32>(arg_2.a, ~max(1i, arg_1));
    var var_2 = Struct_2(-(var_1.x & ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, var_1.x), u_input.c.xx)), _wgslsmith_f_op_f32(min(529f, _wgslsmith_f_op_f32(604f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-601f + 922f) + 504f)))));
    let var_3 = Struct_2(-2147483647i, var_2.b);
    return -1000f;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    global0 = Struct_1(4294967295u);
    let var_0 = Struct_2(u_input.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(33100u), u_input.c.x << (u_input.b % 32u), Struct_2(-11082i, arg_0.x))) + _wgslsmith_f_op_f32(-434f - 1f)))));
    var var_1 = Struct_2(u_input.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-arg_0.x))));
    let var_2 = min(vec4<u32>(_wgslsmith_add_u32(u_input.a.x, 1u), u_input.b, firstLeadingBit(~3424u), _wgslsmith_div_u32(u_input.a.x, 9921u)), ~u_input.a);
    var var_3 = var_0;
    return Struct_1(~_wgslsmith_mult_u32(min(0u, 4294967295u | global0.a), _wgslsmith_sub_u32(global0.a, u_input.b)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<u32>) -> u32 {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-944f, -703f, -1000f, 1064f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-509f, -794f, 462f, -598f) + vec4<f32>(-886f, 870f, 924f, 460f))))));
    let var_1 = !select(vec2<bool>(false, true), vec2<bool>(true, true), select(true, true, true) || false);
    var var_2 = 815f;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    var var_4 = Struct_2(-_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -1i, abs(-2147483647i), u_input.c.x, abs(21958i)), u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -1213f));
    return 19849u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(func_1(vec4<i32>(_wgslsmith_sub_i32(~(-49023i), _wgslsmith_mod_i32(u_input.c.x, u_input.c.x)), 9524i, ~_wgslsmith_add_i32(24532i, u_input.c.x), abs(u_input.c.x)), select(vec2<u32>(36045u, u_input.a.x), abs(~u_input.a.yz), vec2<bool>(0i >= u_input.c.x, true))));
    global0 = func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -894f), -1157f, _wgslsmith_f_op_f32(-2346f * 1478f), 213f)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(947f)), -316f, _wgslsmith_f_op_f32(select(-1890f, -421f, false)), _wgslsmith_f_op_f32(ceil(-802f))), vec4<f32>(964f, _wgslsmith_f_op_f32(-660f * -779f), _wgslsmith_f_op_f32(-1503f + 990f), _wgslsmith_f_op_f32(min(868f, -486f)))))));
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(-43189i, firstTrailingBit(-2147483647i)), _wgslsmith_clamp_i32(2147483647i, u_input.c.x, 1i), 10776i, u_input.c.x & select(-u_input.c.x, ~u_input.c.x, any(vec4<bool>(false, true, false, true)))) & u_input.c;
    var var_1 = Struct_1(u_input.a.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1691f, _wgslsmith_f_op_f32(f32(-1f) * -220f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-358f)), 313f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(370f, -811f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(802f, -2098f)))))));
    var_2 = vec3<f32>(-1833f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, var_2.x, ~25779i, ~var_0);
}

