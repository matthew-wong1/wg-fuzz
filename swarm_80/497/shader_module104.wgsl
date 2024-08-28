struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1605f, -1343f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1145f - global0.b) * _wgslsmith_f_op_f32(abs(-531f))) + global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -616f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-122f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1870f, -729f))) - _wgslsmith_f_op_f32(min(1285f, global0.b))), _wgslsmith_f_op_f32(exp2(var_0.b)));
    var var_1 = _wgslsmith_dot_vec2_u32(~u_input.b.zz ^ vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, 0u), vec3<u32>(0u, 5335u, u_input.b.x)), 4294967295u), u_input.b.x), u_input.b.yz);
    var_1 = 4294967295u;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1998f + 417f))))), global0.a);
    return var_2;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> f32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3.a)) * -516f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -3074f)))), _wgslsmith_div_f32(732f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2355f)))));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.b, global0.a)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1539f, -772f, -260f) - vec3<f32>(-526f, -693f, 537f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_3.b, -1000f, 1201f))))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_3.a, 840f))), _wgslsmith_div_f32(arg_3.b, _wgslsmith_f_op_f32(min(arg_3.b, -659f))), _wgslsmith_f_op_f32(-546f + global0.b))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(543f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1601f) - _wgslsmith_f_op_f32(138f - 2465f)), _wgslsmith_f_op_f32(-arg_3.b)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-717f, var_0.x, arg_3.b)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1291f, -1050f, var_0.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1532f, -1049f, global0.b)))))), false)));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, arg_3.b));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1422f + _wgslsmith_f_op_f32(global0.a * -154f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, arg_3.a)), -1000f), -126f)) * vec3<f32>(_wgslsmith_f_op_f32(trunc(-680f)), global0.a, func_2(max(-63687i, 5213i >> (arg_2 % 32u))).b));
    return _wgslsmith_f_op_f32(920f + 267f);
}

fn func_1() -> f32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b))) - _wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(global0.b, -332f) < _wgslsmith_f_op_f32(ceil(global0.a)), _wgslsmith_div_u32(11751u, ~u_input.b.x), ~(~u_input.b.x), func_2(u_input.a.x)))), _wgslsmith_f_op_f32(floor(735f)));
    let var_0 = func_2(~_wgslsmith_div_i32(firstTrailingBit(u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, u_input.a.x), _wgslsmith_clamp_i32(u_input.a.x, -2147483647i, u_input.a.x))));
    var var_1 = _wgslsmith_add_u32(0u, ~u_input.b.x);
    var_1 = 2160u;
    let var_2 = ~(~_wgslsmith_div_u32(u_input.b.x, (4294967295u << (u_input.b.x % 32u)) >> (18694u % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1621f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1175f - _wgslsmith_f_op_f32(-global0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b + global0.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2262f))))));
    let var_1 = true;
    let var_2 = u_input.a.x;
    global0 = Struct_1(_wgslsmith_f_op_f32(func_1()), -198f);
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-234f + -391f) - _wgslsmith_f_op_f32(exp2(var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)));
    let var_3 = _wgslsmith_f_op_f32(func_3(!var_1, 34764u, ~(~1u), var_0));
    let var_4 = var_0;
    global0 = func_2(min(1i, _wgslsmith_div_i32(reverseBits(reverseBits(10233i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_2, u_input.a.x, var_2) & vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), min(vec4<i32>(var_2, -25890i, -34940i, 1i), vec4<i32>(-81814i, 0i, var_2, u_input.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(908f + var_3), _wgslsmith_f_op_f32(-1226f - _wgslsmith_f_op_f32(round(var_3))), _wgslsmith_f_op_f32(-848f * _wgslsmith_f_op_f32(sign(global0.a))), var_4.a))), ~(_wgslsmith_div_vec3_u32(u_input.b.wyy, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) & vec3<u32>(u_input.b.x, 1u, u_input.b.x)) >> (countOneBits(~u_input.b.zzx) % vec3<u32>(32u)), 119f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 + global0.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_4.b, 1000f, true)) - _wgslsmith_f_op_f32(-969f * var_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -104f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_4.b, global0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -494f))) * -106f), var_3), vec2<f32>(var_3, _wgslsmith_f_op_f32(-var_4.b)));
}

