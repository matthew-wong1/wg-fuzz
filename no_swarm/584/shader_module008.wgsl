struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(arg_0)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(537f, 1034f)))), -1740f), vec2<bool>(any(select(vec2<bool>(arg_1.x, true), vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(false, true))), true))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1041f) + 254f)), var_0.x);
    var var_1 = Struct_1(~_wgslsmith_mod_u32(~16377u, 41766u), ~(arg_2 << (~93162u % 32u)), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(ceil(arg_0.x))))))), -select(vec3<i32>(37692i, i32(-1i) * -34201i, 1i), -select(vec3<i32>(29095i, 42627i, -2147483647i), vec3<i32>(1i, -33537i, -38563i), arg_1), !all(vec2<bool>(arg_1.x, true))), true);
    return vec4<u32>(select(reverseBits(~arg_2 | u_input.a.x), abs(~u_input.a.x), arg_1.x), 6994u, ~(~(~(~var_1.a))), ~var_1.a);
}

fn func_2() -> f32 {
    let var_0 = countOneBits(max(~u_input.a ^ vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), 40829u >> (0u % 32u), 1u, ~u_input.a.x), _wgslsmith_add_vec4_u32(select(func_3(vec2<f32>(-2059f, 1000f), vec3<bool>(true, false, false), u_input.a.x), min(u_input.a, u_input.a), true), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(47810u, u_input.a.x, u_input.a.x), vec3<u32>(29249u, 62162u, u_input.a.x)), 24995u, ~u_input.a.x, _wgslsmith_div_u32(18675u, 4294967295u)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(250f, -809f, 439f, 452f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(546f, -1729f, 1124f, -313f)))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(453f, -200f, 1578f, 1417f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1175f, 691f, 2156f, 784f) + vec4<f32>(-227f, -1920f, -779f, 1000f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(612f, -2517f, -748f, 166f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1379f, -1046f, 1033f, 176f)))))))));
    let var_2 = Struct_3(~vec2<u32>(_wgslsmith_div_u32(7874u, u_input.a.x), ~abs(var_0.x)));
    let var_3 = Struct_1(abs(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + var_1.yy)), vec3<bool>(true, true, true), firstLeadingBit(0u)).x), 42885u, _wgslsmith_div_f32(940f, -408f), -_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-36540i, -59073i, 18875i)) << (_wgslsmith_clamp_vec3_u32(firstTrailingBit(~vec3<u32>(var_0.x, var_2.a.x, var_0.x)), (vec3<u32>(u_input.a.x, 0u, 4294967295u) | var_0.yzw) | vec3<u32>(34531u, var_0.x, 1u), _wgslsmith_mult_vec3_u32(u_input.a.yyx & u_input.a.zwy, vec3<u32>(var_2.a.x, var_2.a.x, 1u))) % vec3<u32>(32u)), !(!(true || any(vec2<bool>(true, true)))));
    var var_4 = Struct_2(var_3, _wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(-211f, -1408f)), 0u, -273f, var_3);
    return _wgslsmith_f_op_f32(sign(-641f));
}

fn func_1() -> f32 {
    var var_0 = 362f;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-1349f * _wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(func_2())), _wgslsmith_div_f32(1058f, 1084f)));
    let var_2 = Struct_3(~abs(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(u_input.a.x, u_input.a.x) ^ u_input.a.zx)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(2150f, -178f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -610f)))));
    var var_3 = max(abs(_wgslsmith_clamp_u32(0u, _wgslsmith_clamp_u32(4294967295u, 51268u, var_2.a.x), ~u_input.a.x)) << (13358u % 32u), _wgslsmith_dot_vec2_u32(max(_wgslsmith_mod_vec2_u32(firstLeadingBit(var_2.a), var_2.a | u_input.a.yw), var_2.a), vec2<u32>(u_input.a.x, var_2.a.x)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1000f)), -715f)) + _wgslsmith_f_op_f32(-378f * -396f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -768f), _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(319f)), _wgslsmith_f_op_f32(select(-904f, 2242f, true)))))) * _wgslsmith_div_f32(-909f, 1f)));
    let var_1 = _wgslsmith_f_op_f32(func_2()) != _wgslsmith_f_op_f32(func_2());
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_u32(countOneBits(u_input.a.x), 4294967295u) ^ 0u), -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-49633i, -1i), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-7629i, 63482i, -6771i), vec3<i32>(65388i, 1i, 2147483647i))), ~(~0i)), vec3<f32>(var_0, 1766f, var_0), -1i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i) << (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u)), ~reverseBits(vec2<i32>(-49815i, -5345i))));
}

