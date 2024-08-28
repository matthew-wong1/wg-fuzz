struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    let var_0 = any(vec4<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(false, true)), select(!all(vec3<bool>(false, false, true)), any(vec2<bool>(false, false)) | (u_input.b.x < 0u), true), 341f != _wgslsmith_f_op_f32(select(-2629f, _wgslsmith_f_op_f32(1408f - 256f), true))));
    var var_1 = vec2<i32>(~_wgslsmith_mult_i32(~(~(-11751i)), -1i), countOneBits(~_wgslsmith_div_i32(abs(u_input.a), -u_input.a)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-760f, -535f)), _wgslsmith_f_op_f32(f32(-1f) * -1714f)) + 365f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(332f))) * 426f), _wgslsmith_f_op_f32(max(-1005f, _wgslsmith_f_op_f32(trunc(-151f)))), true)));
    let var_3 = max(u_input.b.x, _wgslsmith_div_u32(37388u, u_input.b.x));
    var var_4 = vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b >> (u_input.b % vec3<u32>(32u)), vec3<u32>(~var_3, _wgslsmith_sub_u32(u_input.b.x, ~var_3), ~1u)), min(55360u, u_input.b.x));
    return 2246u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(i32(-1i) * -28180i, max(u_input.a, -2147483647i)), _wgslsmith_dot_vec3_i32(select(arg_1.a, arg_1.a, arg_0.a), arg_1.a), u_input.a), vec3<i32>(~(-63636i), 45206i, ~_wgslsmith_dot_vec3_i32(arg_1.a, arg_1.a))) & _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, arg_1.a.x, arg_1.a.x), vec4<i32>(u_input.a, arg_1.a.x, u_input.a, u_input.a)), arg_1.a.x), arg_1.a.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(-2147483647i, arg_1.a.x), arg_1.a.x)), _wgslsmith_add_vec3_i32(min(arg_1.a, vec3<i32>(arg_1.a.x, arg_1.a.x, -2147483647i)), arg_1.a));
    let var_1 = !(!(!vec4<bool>(true, true, arg_0.a.x, arg_0.a.x)));
    let var_2 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(func_3(), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(25168u, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(0u, u_input.b.x, u_input.b.x, 0u)), 15598u << (0u % 32u))), ~u_input.b.xz);
    var var_3 = 733f;
    var var_4 = var_1.x;
    return select(var_1.xw, !arg_0.a.xy, arg_0.a.xz);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<f32>) -> vec4<u32> {
    let var_0 = select(select(select(select(!vec4<bool>(arg_1.a, true, true, true), vec4<bool>(arg_1.a, false, arg_2.a, arg_1.a), !vec4<bool>(arg_1.a, arg_2.a, false, arg_1.a)), !(!vec4<bool>(arg_1.a, false, false, arg_1.a)), !(!vec4<bool>(arg_2.a, arg_1.a, arg_1.a, arg_1.a))), select(!(!vec4<bool>(true, arg_2.a, false, false)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, arg_2.a, arg_1.a), arg_1.a), vec4<bool>(true, true, true, true), select(vec4<bool>(arg_2.a, arg_2.a, arg_1.a, arg_1.a), vec4<bool>(false, false, arg_1.a, arg_2.a), vec4<bool>(false, false, arg_2.a, arg_2.a))), vec4<bool>(arg_2.a, true, u_input.b.x <= u_input.b.x, !arg_1.a)), arg_1.a), vec4<bool>(arg_2.a, arg_2.a, true, all(!(!vec2<bool>(arg_1.a, arg_1.a)))), arg_1.a);
    let var_1 = arg_2.c;
    var var_2 = var_0;
    let var_3 = !(!(!func_2(Struct_1(var_2.xyy, arg_3.x), var_1)));
    var_2 = var_0;
    return vec4<u32>(_wgslsmith_clamp_u32(~func_3(), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 24049u, 0u), u_input.b), abs(u_input.b.x)), 30842u), 486u, reverseBits(71137u), ~func_3());
}

fn func_4(arg_0: vec4<u32>) -> i32 {
    let var_0 = vec4<i32>(firstLeadingBit(~0i), ~(~1i), _wgslsmith_clamp_i32(reverseBits(~(~u_input.a)), ~u_input.a, u_input.a), ~u_input.a);
    let var_1 = 1654u;
    let var_2 = select(select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, false, true, true), all(vec3<bool>(true, false, false))), vec4<bool>(true, true, true, true), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true))), true), vec4<bool>(true, true, true, true), !(!all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false))));
    var var_3 = ~0u;
    let var_4 = u_input.b;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(vec4<i32>(-_wgslsmith_sub_i32(u_input.a, reverseBits(u_input.a)), -u_input.a, _wgslsmith_mod_i32(u_input.a, ~u_input.a), _wgslsmith_mod_i32(func_4(func_1(Struct_2(vec3<i32>(2147483647i, u_input.a, u_input.a)), Struct_3(true, u_input.a, Struct_2(vec3<i32>(u_input.a, 3166i, 2147483647i)), u_input.a, 49810i), Struct_3(true, u_input.a, Struct_2(vec3<i32>(0i, u_input.a, -2147483647i)), 1i, u_input.a), vec3<f32>(-323f, 1136f, 304f))), -1i)));
    var var_1 = Struct_1(!select(vec3<bool>(false, u_input.b.x == 1u, all(vec4<bool>(false, false, true, true))), vec3<bool>(true, all(vec3<bool>(true, true, false)), false), _wgslsmith_f_op_f32(ceil(-659f)) >= _wgslsmith_div_f32(511f, 1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-3056f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1738f + 1337f))) + _wgslsmith_f_op_f32(step(-1079f, -948f))), true)));
    var var_2 = Struct_3(true, abs(countOneBits(_wgslsmith_add_i32(65632i, -26189i))), Struct_2(vec3<i32>(u_input.a, i32(-1i) * -var_0.x, min(2147483647i, min(u_input.a, 0i)))), _wgslsmith_sub_i32(_wgslsmith_div_i32(countOneBits(u_input.a), select(u_input.a, 1i, false)), ~var_0.x) << (_wgslsmith_mult_u32(~(~71289u), ~_wgslsmith_dot_vec3_u32(u_input.b, u_input.b)) % 32u), ~u_input.a);
    var_1 = Struct_1(select(!vec3<bool>(var_2.a, false, !var_1.a.x), var_1.a, vec3<bool>(13536u <= u_input.b.x, !(!var_1.a.x), var_1.b > _wgslsmith_div_f32(var_1.b, var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b, var_1.b, var_2.a)) - _wgslsmith_f_op_f32(abs(1293f))))));
    var_1 = Struct_1(!vec3<bool>(all(!var_1.a), select(select(false, true, true), all(vec3<bool>(false, true, var_2.a)), var_1.a.x), !(!var_2.a)), -180f);
    var_2 = Struct_3(true, 1i, var_2.c, -(u_input.a << (4294967295u % 32u)), -1i);
    var var_3 = Struct_3(true, u_input.a, Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, var_0.x), vec2<i32>(-45075i, var_2.c.a.x)), -31652i, min(~22518i, ~2147483647i))), ~var_2.e, min(1i, var_2.e));
    var_1 = Struct_1(vec3<bool>(var_3.a, var_2.a, var_3.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(min(var_1.b, var_1.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_1.b, 713f));
}

