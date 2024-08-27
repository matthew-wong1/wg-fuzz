struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: u32;

var<private> global2: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(45408u, 68961u, 12332u, 1052u), vec4<u32>(38102u, 0u, 54809u, 60453u), vec4<u32>(0u, 70914u, 1u, 4200u), vec4<u32>(4294967295u, 23118u, 64164u, 63541u), vec4<u32>(15740u, 0u, 1u, 81123u), vec4<u32>(4294967295u, 7042u, 11071u, 8882u), vec4<u32>(1u, 0u, 963u, 14026u), vec4<u32>(7254u, 49496u, 0u, 1u), vec4<u32>(36059u, 14035u, 41308u, 8519u), vec4<u32>(5484u, 77278u, 4294967295u, 10990u), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(0u, 37970u, 6230u, 13824u), vec4<u32>(9600u, 15484u, 40325u, 50306u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: u32) -> i32 {
    global1 = u_input.b.x;
    global2 = array<vec4<u32>, 13>();
    let var_0 = all(vec4<bool>(arg_1.x, !global0.x, true, !all(vec2<bool>(false, true))));
    let var_1 = Struct_1(u_input.d, false, true, ~u_input.a.x, 1f);
    let var_2 = global0.x;
    return -8939i;
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<u32>(44220u, _wgslsmith_sub_u32(0u, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 23405u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))) & u_input.b.x);
    var var_1 = Struct_1(reverseBits(u_input.d), !all(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, false, false), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), false))), true, u_input.c.x, -825f);
    let var_2 = Struct_1(~abs(var_1.d & u_input.a.x), global0.x, any(!(!vec4<bool>(true, var_1.b, true, global0.x))) && !(var_1.a != func_3(u_input.b.x, vec3<bool>(false, var_1.b, true), vec3<bool>(global0.x, true, global0.x), var_0.x)), reverseBits(u_input.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e * 416f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.e)))));
    var var_3 = var_2;
    global2 = array<vec4<u32>, 13>();
    return Struct_1(~var_1.d, !var_1.c, var_3.c, _wgslsmith_div_i32(~u_input.d, abs(0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.e)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> vec4<f32> {
    global0 = !(!vec2<bool>(true, arg_0.c));
    let var_0 = func_2();
    let var_1 = Struct_1(func_3(_wgslsmith_add_u32(~_wgslsmith_div_u32(u_input.b.x, u_input.b.x), _wgslsmith_add_u32(reverseBits(u_input.b.x), ~0u)), !(!select(vec3<bool>(false, var_0.c, false), vec3<bool>(arg_0.b, true, true), vec3<bool>(var_0.b, true, var_0.b))), vec3<bool>(reverseBits(u_input.a.x) <= (2147483647i >> (u_input.b.x % 32u)), !var_0.b, all(select(vec2<bool>(true, global0.x), vec2<bool>(arg_0.b, true), global0.x))), u_input.b.x), true, 0u <= min(16023u, max(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u), vec4<u32>(u_input.b.x, 35468u, 42393u, 9226u)))), _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.d << (593u % 32u), 47319i), _wgslsmith_mod_i32(firstTrailingBit(19907i), var_0.d & arg_0.a)), abs(-arg_0.d)), _wgslsmith_f_op_f32(f32(-1f) * -1247f));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.e, arg_1.x, arg_1.x, arg_1.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_1)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.e, arg_1.x, arg_1.x, 1027f), arg_1)), arg_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1047f, -149f, -749f, 1000f) + vec4<f32>(599f, 736f, 493f, -315f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 774f, 985f, 2034f) * vec4<f32>(-750f, -1360f, 213f, -405f)))), _wgslsmith_f_op_vec4_f32(func_1(Struct_1(-6201i, global0.x, global0.x, 23384i, 157f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-595f, 120f, -1000f, -217f) + vec4<f32>(-346f, 865f, -895f, 893f)))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-882f + 2727f), _wgslsmith_f_op_f32(1712f + 198f), -1680f, _wgslsmith_f_op_f32(step(1000f, 1000f)))))));
    let var_1 = global0.x;
    let var_2 = any(!vec4<bool>(all(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, true, global0.x))), false, global0.x == true, ~u_input.b.x >= 0u));
    var var_3 = Struct_1(~(-2147483647i), var_2, true, -(~u_input.a.x), var_0.x);
    var_3 = func_2();
    var_3 = Struct_1(u_input.c.x, any(select(select(select(vec2<bool>(false, global0.x), vec2<bool>(var_3.c, global0.x), vec2<bool>(false, false)), vec2<bool>(var_3.c, false), var_2), vec2<bool>(var_3.c, true), select(vec2<bool>(var_3.b, true), !vec2<bool>(true, var_3.c), !var_3.c))), !select(all(!vec4<bool>(var_3.c, true, true, var_3.c)), var_3.b, var_3.a == ~1i), -_wgslsmith_dot_vec4_i32(reverseBits(abs(vec4<i32>(u_input.c.x, var_3.a, u_input.a.x, -30156i))), vec4<i32>(_wgslsmith_add_i32(var_3.d, -24237i), countOneBits(u_input.d), _wgslsmith_clamp_i32(13799i, -1i, var_3.d), -u_input.c.x)), var_0.x);
    var var_4 = func_2();
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(3033f)) + 747f);
    var var_6 = countOneBits(6720i);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.e, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.e)) + _wgslsmith_f_op_f32(1000f + var_3.e)), _wgslsmith_f_op_f32(-var_4.e), -2303f))), var_0.x);
}

