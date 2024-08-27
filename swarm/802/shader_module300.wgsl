struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 12027u;

var<private> global1: vec2<i32> = vec2<i32>(-1i, 39066i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = u_input.c.zy;
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(21501u, 4294967295u), select(reverseBits(~vec2<u32>(u_input.e.x, var_0.x)), u_input.e.xz, select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), any(vec4<bool>(true, true, false, false)))) & u_input.e.xy);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -219f), _wgslsmith_f_op_f32(f32(-1f) * -504f))), 1f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-133f + 798f), -725f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(570f)))))));
    var_0 = firstTrailingBit(_wgslsmith_sub_vec2_u32(~(~u_input.e.zx), u_input.c.xx | vec2<u32>(1u, 1u)));
    let var_2 = vec2<u32>(select(var_0.x, u_input.e.x, false != all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))), u_input.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(712f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * -701f) + 334f))));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: bool) -> vec3<f32> {
    let var_0 = _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(-10089i, _wgslsmith_div_i32(u_input.d.x & arg_1, u_input.d.x), -(~(-1i)))), -(vec3<i32>(~global1.x, -global1.x, 1i) >> (vec3<u32>(97381u, countOneBits(19973u), countOneBits(u_input.e.x)) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(50768u, 508u, 1u), ~(~(~max(vec3<u32>(4294967295u, u_input.a.x, u_input.e.x), u_input.e))));
    global0 = u_input.e.x;
    var var_2 = vec2<bool>(false, all(vec4<bool>(false, firstLeadingBit(var_1) < _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 1u, 0u, u_input.a.x), vec4<u32>(14364u, u_input.c.x, u_input.e.x, u_input.c.x)), true, arg_0.x < 303f)));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-136f - _wgslsmith_f_op_f32(func_3()))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1504f, 712f, arg_0.x) + vec3<f32>(var_3, var_3, arg_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-438f, var_3, arg_0.x)))))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(676f, 1166f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2052f)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1662f, 653f) - vec2<f32>(-1597f, -442f))))))), global1.x, any(vec2<bool>(true, true))));
    let var_1 = Struct_1(false, global1.x);
    let var_2 = var_1.b;
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-781f * var_0.x)), var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_3()), -945f)));
    var var_4 = vec4<f32>(var_0.x, -595f, 1226f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, 648f), _wgslsmith_f_op_f32(floor(var_0.x)))), var_3.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - 1000f) * _wgslsmith_f_op_f32(-var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(-4165i, -1i), u_input.d.x), 4017i);
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(2790f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(select(-174f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -u_input.d.x == 1i))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-820f * 335f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(-122f * 481f)), _wgslsmith_f_op_f32(f32(-1f) * -273f)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0 * vec3<f32>(var_0.x, -1405f, var_0.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1793f, var_0.x) - var_0))));
    global1 = ~_wgslsmith_mult_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(u_input.d, u_input.b, vec2<i32>(-23792i, u_input.b.x))) >> ((_wgslsmith_mod_vec2_u32(vec2<u32>(40317u, 8402u), vec2<u32>(u_input.c.x, u_input.c.x)) & u_input.a) % vec2<u32>(32u)), ~firstLeadingBit(vec2<i32>(global1.x, -68487i)) | ~reverseBits(vec2<i32>(u_input.d.x, global1.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-374f, 579f, var_0.x, 1160f)))))));
    var var_3 = Struct_1(false, -1i);
    var var_4 = u_input.e.x > countOneBits(u_input.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_2.xw, var_2.yy, vec2<bool>(var_3.a, var_3.a)))), _wgslsmith_f_op_vec2_f32(var_2.xy - var_1.a.yx)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.x, var_0.x), var_2.yw)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(596f, 1113f) * vec2<f32>(var_2.x, 1362f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + _wgslsmith_f_op_f32(sign(292f))));
}

