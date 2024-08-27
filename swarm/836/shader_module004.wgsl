struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> vec3<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-472f, 539f, -2269f, 305f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-212f, -341f, -1016f, -3130f)))))), u_input.b.yyy);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-545f, -1393f, var_0.a.x, var_0.a.x))))), _wgslsmith_clamp_vec3_u32(countOneBits(~vec3<u32>(var_0.b.x, 4294967295u, u_input.b.x)), vec3<u32>(0u, 29468u, _wgslsmith_dot_vec2_u32(~u_input.b.ww, u_input.b.wx)), vec3<u32>(arg_0.x, reverseBits(firstLeadingBit(101887u)), ~4294967295u)));
    var var_2 = global1.x;
    var_0 = var_1;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x) - _wgslsmith_f_op_f32(floor(var_1.a.x))), 1015f))));
    return _wgslsmith_f_op_vec3_f32(-var_0.a.xzz);
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1466f + _wgslsmith_f_op_f32(arg_0.d + -502f))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.c, arg_0.d)))), arg_0.c) + _wgslsmith_f_op_vec3_f32(func_3(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 0u, 1u), u_input.b.yxx << (vec3<u32>(4253u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))))));
    var var_1 = ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(31572u, ~80998u, 1u), _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.b.x, 0u, 4294967295u, u_input.b.x), u_input.b), ~vec4<u32>(54879u, u_input.b.x, u_input.b.x, 0u))) >> (u_input.b.x % 32u);
    var var_2 = arg_0;
    var var_3 = 1u;
    return select(!vec4<bool>(!(!arg_0.b.x), true, any(!vec3<bool>(false, var_2.b.x, global1.x)), true), select(vec4<bool>(all(vec4<bool>(true, global1.x, true, arg_0.b.x)) || !global0.x, any(select(vec4<bool>(global1.x, true, false, true), vec4<bool>(true, global1.x, var_2.b.x, true), global1.x)), false && var_2.b.x, var_2.b.x), !(!vec4<bool>(false, var_2.b.x, true, global1.x)), vec4<bool>(true, true, all(!vec3<bool>(false, var_2.b.x, true)), true)), !vec4<bool>(global1.x, min(u_input.b.x, 13856u) != u_input.b.x, var_2.b.x, true));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: f32, arg_3: vec3<u32>) -> bool {
    let var_0 = Struct_1(vec4<i32>(u_input.a, firstTrailingBit(-21938i), -66364i, 0i), vec2<bool>(true, global1.x), arg_1, _wgslsmith_f_op_f32(-arg_2), u_input.a);
    var var_1 = !func_2(Struct_1(-var_0.a >> (select(u_input.b, u_input.b, vec4<bool>(false, var_0.b.x, true, true)) % vec4<u32>(32u)), vec2<bool>(true, var_0.b.x), _wgslsmith_f_op_f32(1517f * 1050f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_1, var_0.d)), _wgslsmith_f_op_f32(-205f - arg_2), false)), abs(u_input.a)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -663f), var_0.d), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-1030f * 1241f)), -217f)), select(vec3<u32>(u_input.b.x, u_input.b.x, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, 69456u, arg_3.x)), vec3<u32>(1u, u_input.b.x, 0u))), vec3<u32>(arg_3.x, ~(~arg_3.x), 1u), !var_0.b.x));
    var var_3 = any(select(vec2<bool>(true, true), var_1.zz, (3021u >= u_input.b.x) && func_2(var_0).x)) | !(global0.x | var_0.b.x);
    var_1 = !vec4<bool>(!var_1.x != false, min(min(arg_3.x, 69625u), 10545u) >= 103131u, true, global0.x);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !select(!select(vec2<bool>(true, true), select(global0.yy, vec2<bool>(global0.x, global1.x), true), global1.x), !vec2<bool>(true, !global0.x), !select(!vec2<bool>(global0.x, false), vec2<bool>(true, true), !global0.yz));
    global0 = select(select(!(!(!vec3<bool>(global0.x, global0.x, false))), vec3<bool>(true, global0.x, true), select(vec3<bool>(global1.x | true, func_1(vec2<i32>(-2147483647i, -2147483647i), 1138f, 577f, vec3<u32>(1u, u_input.b.x, 4294967295u)), global1.x != global1.x), vec3<bool>(-2147483647i != u_input.a, true, true), func_2(Struct_1(vec4<i32>(-1075i, u_input.a, 0i, u_input.a), global0.yy, 716f, -948f, u_input.a)).ywx)), vec3<bool>(true, true, select(false, any(vec4<bool>(true, true, true, global0.x)), true == (true || global1.x))), func_2(Struct_1(_wgslsmith_mult_vec4_i32(~vec4<i32>(43388i, u_input.a, u_input.a, u_input.a), -vec4<i32>(u_input.a, 0i, u_input.a, -27515i)), vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(u_input.b.yww)).x * -205f), -1000f, -61950i)).x);
    let var_0 = -1510f;
    let var_1 = vec4<i32>(6883i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(60614i, 1i, u_input.a) << (_wgslsmith_div_u32(u_input.b.x, 28260u) % 32u), reverseBits(-7956i), reverseBits(_wgslsmith_mod_i32(u_input.a, u_input.a)), 36344i), firstTrailingBit(abs(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)) << (~vec4<u32>(1u, 18034u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))), ~(~1i), ~u_input.a);
    global1 = global0.yy;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, var_0) * vec4<f32>(1000f, 368f, var_0, -1612f))) - vec4<f32>(_wgslsmith_f_op_f32(select(var_0, 540f, false)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(-var_0))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0)), vec4<f32>(_wgslsmith_f_op_f32(min(var_0, 270f)), 1400f, 1000f, _wgslsmith_f_op_f32(-var_0)))), abs(~abs(u_input.b.yww)));
    var var_3 = ~(vec3<i32>(var_1.x, var_1.x, -56668i) & _wgslsmith_add_vec3_i32(max(var_1.zxw, firstTrailingBit(var_1.zxy)), ~(~var_1.yzz)));
    var var_4 = var_2.b.x >> (_wgslsmith_mult_u32(u_input.b.x, ~5319u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(max(reverseBits(~49285i), 89090i));
}

