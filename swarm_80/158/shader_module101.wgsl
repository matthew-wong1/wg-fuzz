struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<f32>) -> vec2<bool> {
    var var_0 = 2015f;
    let var_1 = min(~(~abs(abs(vec4<i32>(-18661i, 16056i, -1i, arg_2.b)))), vec4<i32>(1i, min(2147483647i, 1i) >> (u_input.a % 32u), (arg_2.b << (u_input.a % 32u)) | -arg_0.b, _wgslsmith_div_i32(0i >> (u_input.a % 32u), select(30213i, arg_0.b, false))) << (_wgslsmith_div_vec4_u32(~vec4<u32>(18906u, u_input.a, u_input.a, u_input.a) & ~vec4<u32>(1u, 64052u, 0u, u_input.a), vec4<u32>(max(u_input.a, 0u), u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)));
    let var_2 = Struct_2(arg_1.a, arg_0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a.x + -373f), arg_1.c)));
    var var_3 = arg_2;
    var var_4 = u_input.a;
    return vec2<bool>(false, global1.x);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_2(select(func_3(Struct_2(!global1.zz, 0i, 1289f), Struct_2(select(global1.xw, vec2<bool>(global1.x, false), vec2<bool>(false, global1.x)), -2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -665f)), Struct_2(!global1.yx, _wgslsmith_add_i32(21625i, 1i), _wgslsmith_f_op_f32(max(global0.a.x, 111f))), vec4<f32>(_wgslsmith_f_op_f32(arg_0 - -1714f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-460f + arg_0), _wgslsmith_f_op_f32(abs(-299f)))), !vec2<bool>(global1.x, !global1.x), select(vec2<bool>(true, select(global1.x, false, false)), global1.yz, global1.x)), ~_wgslsmith_mult_i32(~abs(7946i), reverseBits(-1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, -654f))))) + _wgslsmith_f_op_f32(1872f + -1000f)));
    var var_1 = Struct_2(!var_0.a, 7505i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -858f)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(var_0.c, 1474f, -467f)))));
    var var_3 = true;
    global1 = !(!(!(!select(vec4<bool>(true, var_0.a.x, false, var_0.a.x), vec4<bool>(true, var_0.a.x, true, false), var_1.a.x))));
    return Struct_1(global0.a);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<u32>) -> u32 {
    global0 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(868f)))))), _wgslsmith_f_op_f32(max(231f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, global0.a.x) * _wgslsmith_f_op_f32(1538f + global0.a.x))))));
    var var_0 = Struct_2(select(func_3(Struct_2(select(global1.wx, global1.xy, global1.zy), ~58664i, global0.a.x), Struct_2(global1.wx, firstLeadingBit(1i), 173f), Struct_2(global1.zz, -15333i, global0.a.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(371f, 648f, -766f, global0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 1001f, 289f, global0.a.x))))), vec2<bool>(true, select(true, global1.x, global1.x)), !global1.x), 1i, -220f);
    var var_1 = ~firstLeadingBit(min(select(vec2<u32>(3191u, 4294967295u), vec2<u32>(arg_2.x, 24011u), vec2<bool>(global1.x, false)), vec2<u32>(arg_2.x, 0u)) & abs(vec2<u32>(1u, 1u)));
    return _wgslsmith_clamp_u32(~(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(arg_2.x, arg_2.x, 1u)), ~vec3<u32>(u_input.a, 1u, arg_0))), _wgslsmith_div_u32(arg_0, abs(u_input.a) ^ _wgslsmith_sub_u32(50087u, _wgslsmith_dot_vec3_u32(vec3<u32>(72189u, 4294967295u, u_input.a), vec3<u32>(46739u, arg_0, var_1.x)))), _wgslsmith_sub_u32(abs(~u_input.a), ~(~arg_2.x)) ^ 16700u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global0.a);
    global0 = var_0;
    global0 = Struct_1(var_0.a);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1526f) + _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-359f + -1000f))))));
    var var_2 = global1.yyw;
    let var_3 = u_input.a ^ (countOneBits(~(~u_input.a)) | max(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(14397u, 1u, u_input.a, 60666u), vec4<u32>(11770u, 1u, 93894u, u_input.a))), ~func_1(u_input.a, global1.x, vec2<u32>(u_input.a, u_input.a))));
    let var_4 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(1152f - var_0.a.x), -874f, global0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-select(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i), -1142f <= _wgslsmith_f_op_f32(-var_4.x)));
}

