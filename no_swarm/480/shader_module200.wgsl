struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> vec2<u32> {
    let var_0 = false;
    let var_1 = Struct_4(select(!vec3<bool>(var_0, var_0 && true, any(vec4<bool>(var_0, true, false, var_0))), !(!vec3<bool>(false, var_0, false)), select(select(select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, false, var_0), var_0), !vec3<bool>(false, var_0, var_0), !var_0), select(!vec3<bool>(var_0, var_0, true), vec3<bool>(true, var_0, var_0), any(vec4<bool>(var_0, var_0, var_0, false))), any(!vec4<bool>(var_0, true, var_0, true)))), firstTrailingBit(4294967295u));
    global0 = array<i32, 5>();
    let var_2 = _wgslsmith_sub_vec4_i32(~u_input.b, u_input.b);
    global0 = array<i32, 5>();
    return vec2<u32>(_wgslsmith_div_u32(~1u & _wgslsmith_clamp_u32(1u, 4294967295u, 4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(31188u, 1u), vec2<u32>(arg_0, 45086u) ^ vec2<u32>(var_1.b, 1u))), 7718u) | vec2<u32>(var_1.b, countOneBits(arg_0));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = firstTrailingBit(~_wgslsmith_clamp_vec2_u32(arg_3.b.wx >> (~arg_3.b.xz % vec2<u32>(32u)), arg_3.b.wz, (arg_3.b.yx & arg_3.b.zw) << (~vec2<u32>(arg_1.b, 0u) % vec2<u32>(32u))));
    var var_1 = abs(vec2<u32>(arg_1.b, _wgslsmith_mult_u32(7247u, arg_3.b.x << (arg_3.e % 32u)))) << (_wgslsmith_mult_vec2_u32(~vec2<u32>(16819u, arg_1.b), select(~arg_3.b.wz, func_3(30413u, arg_3.a.c.yw) >> (~vec2<u32>(arg_1.b, arg_3.e) % vec2<u32>(32u)), all(vec3<bool>(false, arg_1.a.x, false)))) % vec2<u32>(32u));
    var_1 = arg_3.b.wx;
    let var_2 = arg_2.x;
    let var_3 = min(u_input.b.x, abs(-9895i));
    return Struct_3(arg_0.x);
}

fn func_4(arg_0: Struct_3) -> bool {
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    var var_0 = Struct_4(vec3<bool>(true, false, true), ~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 0u)) & 0u));
    global0 = array<i32, 5>();
    return -761f <= _wgslsmith_div_f32(arg_0.a, arg_0.a);
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> Struct_3 {
    global0 = array<i32, 5>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-336f, 942f, -1636f, 646f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-757f, 556f, -843f, -869f) + vec4<f32>(-1331f, 777f, -1167f, 1118f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(915f, 663f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_0.x))))), -190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x)));
    var var_1 = vec3<bool>(false && all(vec4<bool>(select(true, false, false), false, true, true)), true, true);
    var_1 = vec3<bool>(true, select(var_1.x, func_4(func_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1635f, var_0.x))), Struct_4(vec3<bool>(var_1.x, var_1.x, false), 12694u), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1541f, 2409f, var_0.x, var_0.x))), Struct_2(Struct_1(vec4<f32>(396f, -631f, var_0.x, 1000f), -384f, vec4<i32>(u_input.a, u_input.b.x, 2147483647i, -84697i), vec4<f32>(-670f, var_0.x, 649f, 1167f)), vec4<u32>(0u, 1u, 20629u, 1u), arg_1, var_0.x, 21082u))), true), true);
    return Struct_3(var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    var var_0 = func_1(abs(-5223i), u_input.b.zzy);
    var_0 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_div_f32(var_0.a, var_0.a)), var_0.a)), Struct_4(select(vec3<bool>(false, true, any(vec4<bool>(false, false, false, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, false)), 0u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a) - vec4<f32>(-1399f, -505f, 171f, var_0.a)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a, var_0.a, var_0.a, -1157f)))))))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1947f, 902f, -1387f, -625f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, 1869f)), _wgslsmith_f_op_f32(-802f - 773f)), u_input.b, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1046f, -786f, var_0.a, -506f), vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a)))), firstTrailingBit(select(vec4<u32>(7092u, 1u, 32123u, 0u), select(vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<u32>(23839u, 51820u, 21207u, 1u), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true))), u_input.b.zxz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1108f, _wgslsmith_f_op_f32(-var_0.a), true)), var_0.a), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1217f), _wgslsmith_f_op_f32(ceil(1026f)))), _wgslsmith_f_op_f32(abs(1005f)), -226f, -2660f), ~vec4<u32>(1u, 1u, 1u, 1u), ~firstLeadingBit(~vec2<u32>(0u, 0u)), 0i);
}

