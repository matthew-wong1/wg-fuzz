struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-508f, 417f);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-561f, global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 - 1009f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-884f, -726f, global0.x, arg_2.a), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a, 260f, arg_0, arg_2.a), vec4<f32>(global0.x, -1329f, arg_0, -519f)), vec4<bool>(true, true, true, true)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1217f, var_0.x))), vec2<f32>(529f, -827f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.wz) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yz))));
    var var_2 = vec4<bool>(all(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), !all(vec4<bool>(false, true, true, false)))), !any(vec2<bool>(true, any(vec2<bool>(false, true)))), true, true);
    let var_3 = all(var_2.zzx);
    let var_4 = u_input.a;
    return vec2<i32>(1i, var_4.x) | ~u_input.c.yx;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec2_i32(reverseBits(func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-820f)), _wgslsmith_f_op_f32(-1352f - -1389f))), arg_2.a.b, arg_2.a)), u_input.c.yy);
    let var_1 = abs(u_input.d);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zw))));
    return Struct_2(~(var_1 & 0u));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec2<f32>) -> f32 {
    var var_0 = 545f;
    let var_1 = arg_2;
    var var_2 = ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, 22026u, u_input.d, 0u), vec4<u32>(36663u, u_input.b, arg_2.a, 27185u), vec4<u32>(4294967295u, 78415u, arg_2.a, arg_1.x))));
    var var_3 = vec4<bool>(!arg_0, !arg_0, arg_0, false);
    var_3 = !(!select(select(select(vec4<bool>(var_3.x, arg_0, false, true), vec4<bool>(arg_0, arg_0, false, arg_0), var_3.x), select(vec4<bool>(var_3.x, true, false, var_3.x), vec4<bool>(true, var_3.x, arg_0, arg_0), var_3.x), all(vec4<bool>(arg_0, false, true, false))), !select(vec4<bool>(arg_0, true, true, false), vec4<bool>(false, var_3.x, false, arg_0), false), arg_0 & all(vec3<bool>(arg_0, true, var_3.x))));
    return _wgslsmith_f_op_f32(-global0.x);
}

fn func_1() -> vec3<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1105f, global0.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-191f, -172f)))))));
    let var_0 = true;
    global0 = vec2<f32>(-515f, _wgslsmith_f_op_f32(sign(576f)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2598f, _wgslsmith_f_op_f32(max(-1000f, global0.x)))), vec2<f32>(817f, _wgslsmith_f_op_f32(func_4(true, ~vec3<u32>(u_input.d, 0u, 29621u), func_2(vec4<f32>(-1124f, global0.x, global0.x, 1161f), 200f, Struct_3(Struct_1(-1000f, 1i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-336f, 1056f) + vec2<f32>(733f, global0.x))))))));
    var var_1 = min(vec2<i32>(abs(-(u_input.c.x | 22051i)), countOneBits(_wgslsmith_div_i32(u_input.a.x | u_input.c.x, ~0i))), reverseBits(vec2<i32>(u_input.c.x, u_input.c.x)));
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(firstTrailingBit(u_input.a.x), 1i, 0i ^ u_input.a.x, ~2147483647i), u_input.a), u_input.a));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_1()))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(-global0.x)))));
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(-var_1.x)));
    var var_2 = abs(u_input.c.x) <= -11277i;
    var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-509f, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - -199f) * _wgslsmith_f_op_f32(max(var_1.x, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-689f, var_1.x, 1000f) * vec3<f32>(global0.x, -1675f, -1645f)), vec3<f32>(var_1.x, var_1.x, global0.x))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, var_1.x, -1050f), vec3<f32>(global0.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-841f, global0.x, var_1.x) * vec3<f32>(var_1.x, var_1.x, -874f))))), select(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), firstLeadingBit(-2147483647i) > u_input.c.x), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, false), all(vec2<bool>(true, false))), select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(false, false, false))), select(vec3<bool>(true, any(vec2<bool>(true, true)), true), vec3<bool>(select(false, true, false), true, false), false))));
    let var_3 = firstLeadingBit(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, u_input.d)) >> (select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 0u), vec2<bool>(false, true)) % vec2<u32>(32u)), vec2<u32>(u_input.d, abs(u_input.d))) | ((1u >> (u_input.b % 32u)) ^ u_input.b));
    let var_4 = _wgslsmith_sub_i32(~(u_input.a.x << (u_input.b % 32u)), ~u_input.c.x);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-531f * 444f)) + _wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_f32(trunc(898f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(389f)) * _wgslsmith_f_op_f32(-global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(u_input.c.yx, u_input.a.xy << (vec2<u32>(u_input.d, 40102u) % vec2<u32>(32u))), select(u_input.c.zx, abs(u_input.a.wz ^ vec2<i32>(2147483647i, -22940i)), true)), ~1i, vec4<f32>(_wgslsmith_f_op_vec3_f32(func_1()).x, global0.x, var_1.x, _wgslsmith_f_op_f32(-global0.x)));
}

