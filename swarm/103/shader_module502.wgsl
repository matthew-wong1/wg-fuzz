struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> u32 {
    let var_0 = true;
    var var_1 = arg_0.e;
    var var_2 = arg_0.a < -38441i;
    let var_3 = !(22910i > _wgslsmith_add_i32(~(~arg_0.b), arg_0.b));
    var_2 = var_3;
    return u_input.a.x;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d, 1038f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d, -191f)) + vec2<f32>(arg_2.d, 282f)) + vec2<f32>(_wgslsmith_f_op_f32(-arg_2.d), arg_2.d)), vec2<bool>(true, true))), !vec2<bool>(!all(vec3<bool>(arg_0, false, arg_2.e.x)), 2600i >= countOneBits(arg_2.b)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -441f) + arg_2.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d) + _wgslsmith_div_f32(-902f, -316f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-124f, 451f)), _wgslsmith_f_op_f32(-arg_2.d)))), var_0.a.x);
    var var_2 = any(vec3<bool>(arg_1.x > func_3(arg_2, vec3<f32>(-526f, 903f, var_0.a.x)), all(arg_2.e), var_0.b.x));
    let var_3 = (arg_2.d == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(1654f, -1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-943f)) * -566f))) & !(select(true, any(vec3<bool>(true, true, true)), false) | arg_0);
    let var_4 = min(_wgslsmith_mod_vec4_i32(max(vec4<i32>(arg_2.c.x, -2147483647i, -26280i, -2147483647i), select(vec4<i32>(63472i, 0i, -2147483647i, -1i), vec4<i32>(arg_2.a, arg_2.c.x, arg_2.a, arg_2.a), true)) | _wgslsmith_sub_vec4_i32(vec4<i32>(-64271i, arg_2.b, arg_2.a, arg_2.a), -vec4<i32>(arg_2.a, arg_2.b, -23454i, -372i)), _wgslsmith_mod_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.b, arg_2.b, arg_2.a, arg_2.b), vec4<i32>(2681i, arg_2.a, arg_2.b, 14934i)), ~vec4<i32>(arg_2.c.x, 1i, 0i, arg_2.a) | firstTrailingBit(vec4<i32>(arg_2.a, arg_2.a, arg_2.a, arg_2.c.x)))), vec4<i32>(38069i, arg_2.c.x, _wgslsmith_mod_i32(arg_2.b, 15689i), -2147483647i));
    return -1324f;
}

fn func_4(arg_0: vec4<bool>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1373f, -847f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(474f, -969f) * _wgslsmith_div_vec2_f32(vec2<f32>(1019f, -170f), vec2<f32>(102f, 1000f))))), arg_0.zw);
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.x, 271f), var_0.a, var_0.b.x)), var_0.a)), !arg_0.yw);
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(366f, _wgslsmith_f_op_f32(var_0.a.x - 1300f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(661f, var_0.a.x) + vec2<f32>(-772f, var_0.a.x)))), _wgslsmith_f_op_vec2_f32(var_0.a - _wgslsmith_f_op_vec2_f32(-vec2<f32>(566f, -847f))), true))), !arg_0.zz);
    let var_1 = true;
    let var_2 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + -202f);
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(1129f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -184f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -188f), _wgslsmith_f_op_f32(round(-734f)))))));
    var_1 = _wgslsmith_f_op_f32(func_4(select(!(!vec4<bool>(var_0, true, var_0, var_0)), vec4<bool>(1742f == _wgslsmith_f_op_f32(func_2(var_0, vec3<u32>(u_input.a.x, u_input.a.x, 1u), Struct_1(arg_0, 2147483647i, vec3<i32>(arg_0, arg_0, arg_0), 800f, vec2<bool>(var_0, true)))), any(select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, true, var_0), var_0)), true, true), vec4<bool>(var_0, _wgslsmith_f_op_f32(-831f + 932f) > _wgslsmith_f_op_f32(ceil(-1541f)), var_0, _wgslsmith_f_op_f32(f32(-1f) * -507f) >= _wgslsmith_f_op_f32(func_2(false, vec3<u32>(4294967295u, u_input.b.x, u_input.a.x), Struct_1(0i, arg_0, vec3<i32>(2147483647i, arg_0, -86617i), -883f, vec2<bool>(var_0, var_0))))))));
    var var_2 = all(!(!(!vec2<bool>(false, var_0)))) || false;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -999f);
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_u32(76184u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(9849u, 1u, 20288u, 4294967295u) << (vec4<u32>(29572u, u_input.b.x, u_input.a.x, u_input.b.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.b.x, 40567u, u_input.b.x))));
    var var_1 = var_0;
    var_1 = 33071u;
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-404f, -186f))))), select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(select(true, false, true), true), false), !select(true, false, true)));
    let var_3 = ~(~reverseBits(vec4<u32>(0u, u_input.b.x, func_1(0i), 57215u)));
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(-var_2.a.x))))), !var_2.b);
    let var_5 = false;
    var var_6 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec2_u32(var_3.xw, vec2<u32>(65277u, ~u_input.a.x)), 1u, func_3(Struct_1(2147483647i, -2147483647i, -vec3<i32>(5649i, -40379i, 3672i), _wgslsmith_f_op_f32(var_4.a.x - var_4.a.x), !var_2.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-250f, var_2.a.x, var_2.a.x)))), 27207u >> ((~u_input.b.x << (1u % 32u)) % 32u)));
}

