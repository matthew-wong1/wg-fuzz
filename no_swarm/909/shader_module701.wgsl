struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -407f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2)), arg_2)))));
    let var_1 = 1i;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, arg_2, arg_0.a || arg_1)), arg_2)));
    var var_2 = arg_2;
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(ceil(-1002f));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> vec3<i32> {
    var var_0 = ~_wgslsmith_div_u32(65602u, ~(~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x)));
    var var_1 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(func_2(Struct_1(!(!global0.x), 2885u), global0.x, -929f)));
    return ~arg_1;
}

fn func_3(arg_0: vec3<i32>) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_clamp_i32(u_input.e.x, select(~(-2147483647i), 35293i, all(vec2<bool>(global0.x, false))), ~arg_0.x) <= u_input.a, ~_wgslsmith_mod_u32(1u, countOneBits(u_input.b.x) | 1u));
    var var_1 = Struct_1(var_0.a, ~u_input.b.x);
    var_1 = Struct_1(true, min(var_0.b, ~21686u));
    var_0 = Struct_1(global0.x, u_input.b.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(744f, _wgslsmith_f_op_f32(534f * _wgslsmith_f_op_f32(-481f - _wgslsmith_f_op_f32(trunc(-477f))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(550f, 446f) - 934f)))));
    return !vec2<bool>(!var_0.a, select(true, true, all(!vec2<bool>(global0.x, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1168f) * 1795f)))));
    var var_1 = true;
    global0 = select(vec2<bool>(global0.x, global0.x), func_3(func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - var_0.x))), min(-vec3<i32>(u_input.c, -30725i, u_input.c), vec3<i32>(u_input.a, u_input.c, 1i) << (u_input.b.zxy % vec3<u32>(32u))))), select(func_3(~_wgslsmith_add_vec3_i32(vec3<i32>(-170i, u_input.c, -21241i), vec3<i32>(u_input.a, 0i, -2147483647i))), select(vec2<bool>(global0.x != false, true), func_3(abs(vec3<i32>(10906i, -1i, 0i))), select(func_3(vec3<i32>(73529i, -2147483647i, 0i)), vec2<bool>(global0.x, global0.x), true)), vec2<bool>(_wgslsmith_mod_u32(u_input.b.x, 17770u) < ~4294967295u, true)));
    var var_2 = Struct_1(global0.x, _wgslsmith_mod_u32(1u, 64332u ^ firstLeadingBit(u_input.b.x)));
    var var_3 = (~func_1(_wgslsmith_f_op_f32(max(var_0.x, 671f)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 0i, 1i), vec3<i32>(u_input.a, u_input.a, u_input.d.x))) << (_wgslsmith_div_vec3_u32(u_input.b.xwx, select(vec3<u32>(44034u, 27303u, var_2.b) ^ u_input.b.wwy, ~u_input.b.zzw, vec3<bool>(true, false, var_2.a))) % vec3<u32>(32u))) | ~(vec3<i32>(-1i, _wgslsmith_sub_i32(u_input.d.x, u_input.a), 8313i) << (u_input.b.xyw % vec3<u32>(32u)));
    var var_4 = u_input.b.x;
    var_1 = any(vec4<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -992f))) >= 1576f, !(all(vec4<bool>(global0.x, false, true, false)) && false), !var_2.a, true));
    let var_5 = !(!(!vec3<bool>(var_2.a, var_2.b == 0u, false)));
    var_4 = 35466u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_sub_u32(~(99019u >> (u_input.b.x % 32u)), select(~27461u, var_2.b ^ u_input.b.x, true)), ~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 4294967295u)), ~vec2<u32>(0u, 5960u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-594f, var_0.x)), var_0.x, u_input.b.zxw, abs(vec3<u32>(~firstTrailingBit(0u), firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.b.xzy, u_input.b.zyx)), ~var_2.b)));
}

