struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(53797u, 4294967295u, 14314u, 0u);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec2<i32> {
    var var_0 = Struct_1(vec2<i32>(u_input.b.x, u_input.c.x) >> (countOneBits(u_input.d.yx) % vec2<u32>(32u)));
    var var_1 = !(!all(!select(vec4<bool>(true, true, true, arg_0), vec4<bool>(true, false, arg_0, false), vec4<bool>(true, true, true, arg_0))));
    var var_2 = select(select(select(vec4<bool>(true, 2147483647i >= u_input.c.x, arg_0, !arg_0), vec4<bool>(true, arg_0, arg_0, arg_0), select(select(vec4<bool>(arg_0, false, false, false), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, false, false, true)), vec4<bool>(arg_0, true, true, arg_0), !vec4<bool>(false, false, arg_0, false))), vec4<bool>(all(!vec4<bool>(true, arg_0, false, arg_0)), select(all(vec4<bool>(false, arg_0, arg_0, arg_0)), arg_0, false), arg_0, true), arg_0), !vec4<bool>(_wgslsmith_add_i32(u_input.b.x, var_0.a.x) >= var_0.a.x, arg_0, false, true), !vec4<bool>(arg_0, arg_0 == (u_input.c.x >= u_input.c.x), any(!vec4<bool>(arg_0, true, true, arg_0)), arg_0));
    var var_3 = vec3<bool>(any(var_2.yzw), true, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c) != u_input.b.x);
    var var_4 = ~vec3<i32>(_wgslsmith_mult_i32(var_0.a.x, ~u_input.c.x) << (global0.x % 32u), reverseBits(~(-1i)), -11308i);
    return u_input.b.zx;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: bool) -> vec2<i32> {
    var var_0 = ~vec4<u32>(_wgslsmith_div_u32(global0.x, 15438u), u_input.e, _wgslsmith_dot_vec3_u32(~select(vec3<u32>(u_input.d.x, global0.x, u_input.e), global0.yyy, false), abs(~global0.yyz)), global0.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-277f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(349f + _wgslsmith_f_op_f32(904f * 151f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(834f + 611f))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 1879f, 386f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1770f, 1241f, 1307f))))))));
    var var_2 = Struct_1(u_input.b.xz);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-706f, var_1.x, _wgslsmith_f_op_f32(-var_1.x)) + vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), var_1.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -811f, 1000f)))) - var_1);
    var var_4 = Struct_1(func_3(arg_2));
    return u_input.b.zx;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = u_input.d;
    global0 = _wgslsmith_sub_vec4_u32(~(~var_0), _wgslsmith_mod_vec4_u32(abs(_wgslsmith_sub_vec4_u32(~var_0, u_input.d)), ~var_0));
    global0 = ~vec4<u32>(4294967295u, reverseBits(28342u), u_input.e, 62207u);
    global0 = var_0;
    global0 = ~(~vec4<u32>(~(~1u), u_input.d.x, ~_wgslsmith_add_u32(50617u, 45905u), ~var_0.x));
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> vec4<i32> {
    var var_0 = u_input.c;
    var var_1 = func_4(Struct_1(select(u_input.c.wy, func_2(_wgslsmith_mod_vec4_i32(u_input.c, u_input.b), vec4<bool>(true, true, true, true), all(vec4<bool>(true, arg_0, true, false))), all(vec4<bool>(true, true, false, arg_0)))), 0i);
    let var_2 = 51006u;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f * 889f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-975f)) * 682f))), -781f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(1782f - 612f)), _wgslsmith_f_op_f32(540f * _wgslsmith_f_op_f32(abs(1541f))), false || !arg_0))));
    let var_4 = Struct_1(~var_1.a);
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(21522i);
    var var_1 = 48845u;
    var_0 = u_input.b.x ^ ~0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(u_input.c & vec4<i32>(_wgslsmith_add_i32(8682i, -1i), ~(-737i), _wgslsmith_clamp_i32(-46557i, u_input.c.x, u_input.a), abs(u_input.b.x)), func_1(any(vec2<bool>(true, false)) || (u_input.c.x == u_input.b.x), firstLeadingBit(global0.yx))), ~(countOneBits(abs(u_input.d)) & vec4<u32>(abs(global0.x), u_input.d.x, u_input.e, _wgslsmith_dot_vec2_u32(global0.xw, global0.wx))), (u_input.b.x << (~1u % 32u)) ^ ~64025i, 1u);
}

