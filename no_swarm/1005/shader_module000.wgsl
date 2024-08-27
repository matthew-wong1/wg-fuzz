struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    let var_0 = select(vec4<bool>(true && (_wgslsmith_f_op_f32(select(arg_0, global0.x, false)) < _wgslsmith_f_op_f32(143f - 874f)), all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, true)), true), vec4<bool>(true, !(u_input.b <= select(u_input.d.x, 0i, true)), (-384f < _wgslsmith_f_op_f32(arg_0 + arg_0)) | true, true), vec4<bool>(!all(vec3<bool>(false, true, true)), select(34534u ^ u_input.c, 0u, true) >= ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.c), vec3<u32>(57884u, 45957u, u_input.a)), true, u_input.d.x <= 0i));
    return u_input.d.x;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> f32 {
    let var_0 = _wgslsmith_sub_i32(func_3(arg_0.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(global0.xx + global0.yx))) ^ _wgslsmith_div_i32(u_input.b, 1i ^ abs(u_input.b)), u_input.b ^ (~_wgslsmith_add_i32(u_input.d.x, u_input.d.x) | 0i));
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, global0.x, global0.x)), vec3<f32>(1017f, arg_0.a.x, arg_1), false)))))));
    let var_1 = any(select(select(vec4<bool>(true, all(vec3<bool>(false, false, true)), true, false), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), select(vec4<bool>(arg_1 < arg_0.a.x, all(vec2<bool>(true, false)), true, all(vec3<bool>(true, true, true))), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, var_0 == 6277i, arg_0.a.x == 211f, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    let var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-477f, _wgslsmith_f_op_f32(trunc(arg_0.a.x))), global0.x), arg_0.a.x, -1053f);
    let var_3 = true;
    return 1180f;
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    global0 = vec3<f32>(-1297f, arg_2.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_div_f32(arg_2.a.x, 830f)), true || (u_input.a >= u_input.a))), -659f)));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-232f, global0.x) * _wgslsmith_f_op_f32(step(arg_1.x, -455f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-689f + 2047f) + global0.x))), 1630f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(401f, -188f, true))))));
    let var_0 = true;
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(max(-1010f, _wgslsmith_f_op_f32(floor(arg_1.x)))), _wgslsmith_f_op_f32(498f - _wgslsmith_f_op_f32(step(374f, global0.x)))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), global0.x, _wgslsmith_f_op_f32(ceil(609f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, global0.x, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(228f, arg_2.a.x, -611f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-295f, -1411f, global0.x)))))), select(select(!select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, true), var_0), vec3<bool>(true, true, true), select(var_0, u_input.b != u_input.d.x, all(vec4<bool>(var_0, false, false, true)))), !select(select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_0, var_0)), select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, var_0, var_0)), select(vec3<bool>(false, true, false), vec3<bool>(var_0, false, false), var_0)), select(vec3<bool>(any(vec4<bool>(true, var_0, var_0, var_0)), true && var_0, 0i < arg_0), vec3<bool>(false, any(vec4<bool>(var_0, false, false, var_0)), true && var_0), all(vec2<bool>(var_0, var_0))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_2.a));
    return arg_2;
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.xy));
    let var_1 = 1i;
    var var_2 = select(u_input.d, u_input.d, true) & _wgslsmith_clamp_vec4_i32(select(~vec4<i32>(46054i, u_input.d.x, -1i, -32323i), ~u_input.d >> (vec4<u32>(4294967295u, u_input.a, 36990u, u_input.a) % vec4<u32>(32u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true))), vec4<i32>(firstLeadingBit(~1i), reverseBits(_wgslsmith_mod_i32(20012i, -2147483647i)), u_input.d.x, -abs(72197i)), u_input.d);
    var var_3 = func_4(var_1, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -401f)) * var_0.a), vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x * global0.x), _wgslsmith_div_f32(1270f, var_0.a.x))), vec2<f32>(776f, _wgslsmith_f_op_f32(func_2(Struct_1(var_0.a), global0.x))))), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(global0.zz, global0.zz))))));
    var_0 = Struct_1(vec2<f32>(-1218f, _wgslsmith_f_op_f32(-1476f - -1000f)));
    return StorageBuffer(firstLeadingBit(reverseBits(vec3<i32>(reverseBits(var_1), ~61253i, var_1))), reverseBits(~0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.d.wxz;
    let x = u_input.a;
    s_output = func_1();
}

