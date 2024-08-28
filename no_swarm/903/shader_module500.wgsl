struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<bool> {
    global0 = Struct_2(arg_0.a);
    global0 = arg_0;
    global0 = arg_0;
    global0 = Struct_2(Struct_1(~_wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, global0.a.a), 4294967295u)));
    return vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))) && false, max(-(i32(-1i) * -15714i), abs(select(-14104i, 51322i, true))) <= -_wgslsmith_div_i32(firstTrailingBit(-265i), ~4045i), true, all(vec2<bool>(true, true)));
}

fn func_2() -> Struct_3 {
    var var_0 = vec3<u32>(~select(~(~19276u), ~12618u, true), _wgslsmith_dot_vec2_u32(countOneBits(countOneBits(vec2<u32>(12556u, 0u))), vec2<u32>(~firstTrailingBit(8450u), global0.a.a)), _wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.a, 9789u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.a, global0.a.a, 4294967295u), vec3<u32>(1u, global0.a.a, 47968u)), firstLeadingBit(34894u)), ~abs(vec3<u32>(u_input.a, 1u, global0.a.a)))));
    let var_1 = !(!select(!func_3(Struct_2(global0.a), global0.a, vec4<u32>(u_input.a, var_0.x, u_input.a, 0u)), vec4<bool>(true, true, all(vec4<bool>(false, true, false, false)), true), vec4<bool>(true, true, true, true)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1329f * -2600f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1426f, 1028f))))), 364f);
    var var_3 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, -2147483647i), -38498i), -1i, reverseBits(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(-13138i, 17845i), vec2<i32>(24201i, -31177i))), ~select(vec2<i32>(2147483647i, 0i), vec2<i32>(23037i, -2147483647i), var_1.x))));
    var var_4 = Struct_2(Struct_1(1u));
    return Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_div_f32(var_2.x, 442f)))));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.a, arg_0.a))))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.a, -513f))), _wgslsmith_f_op_f32(exp2(arg_0.a)))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -129f) * arg_0.a))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))), vec2<f32>(-1915f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(689f))))))));
    var var_1 = arg_0;
    var var_2 = countOneBits(_wgslsmith_clamp_i32(~max(1i, _wgslsmith_div_i32(1i, 2147483647i)), -1i, firstTrailingBit(1i)));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(-1510f + _wgslsmith_f_op_f32(max(arg_0.a, 376f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-509f, var_1.a)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a, var_0.x), vec2<f32>(-1139f, -880f), false)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, arg_0.a)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_0.x) + vec2<f32>(var_0.x, var_1.a)), vec2<f32>(arg_0.a, 251f))))));
    return ~0i;
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = func_4(func_2(), 87446u, Struct_2(Struct_1(u_input.a)));
    global0 = Struct_2(global0.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(312f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(387f - -517f))), 1000f, 321f))) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(func_2().a + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-127f * 900f), -760f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-449f - -294f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(181f)) + _wgslsmith_div_f32(1000f, -828f))), -1174f));
    let var_2 = Struct_2(Struct_1(29447u));
    var var_3 = vec2<i32>(func_4(func_2(), var_2.a.a, Struct_2(Struct_1(~var_2.a.a))), -(min(func_4(Struct_3(-1107f), global0.a.a, var_2), firstLeadingBit(0i)) ^ countOneBits(2147483647i)));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a);
    global0 = func_1(1u);
    global0 = Struct_2(Struct_1(u_input.a));
    var var_0 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(447f)), _wgslsmith_f_op_f32(select(-1198f, 642f, false))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))))));
    var var_1 = Struct_2(func_1(u_input.a).a);
    var var_2 = var_1.a;
    var var_3 = vec2<f32>(999f, 954f);
    var_2 = global0.a;
    var var_4 = _wgslsmith_add_u32(103833u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~vec4<u32>(1u, global0.a.a, 4294967295u, 28858u)));
}

