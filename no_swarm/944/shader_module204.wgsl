struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    let var_0 = Struct_1(5801i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), -1419f, _wgslsmith_f_op_f32(round(-2209f)), _wgslsmith_f_op_f32(arg_0.x - -1000f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(993f, arg_0.x, arg_0.x, arg_0.x) - vec4<f32>(arg_0.x, arg_0.x, -1004f, 389f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-145f, -1045f, -856f, arg_0.x)))))));
    var var_2 = var_0;
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) * _wgslsmith_div_f32(-259f, -1245f)))), arg_0.x)));
    return _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~u_input.b.xx, vec2<i32>(19788i, var_0.a)), ~max(u_input.b.x, firstTrailingBit(-1i)), var_0.a);
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1871f);
    var var_1 = Struct_1(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, -664f, var_0), vec3<f32>(1000f, -1458f, -545f)), vec3<f32>(2008f, var_0, var_0))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1559f, var_0, -617f)));
    var_1 = Struct_1(-1i);
    var var_3 = vec2<i32>(select(_wgslsmith_dot_vec4_i32(-vec4<i32>(18670i, var_1.a, -43482i, 1i), u_input.b), _wgslsmith_dot_vec2_i32(u_input.b.yz, ~u_input.b.zx), false), ~_wgslsmith_clamp_i32(2147483647i, u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, u_input.b.x, 66263i), vec3<i32>(-2147483647i, -2147483647i, 4837i)))) << (vec2<u32>(_wgslsmith_mult_u32(u_input.a, ~_wgslsmith_mult_u32(u_input.a, u_input.a)), ~u_input.a & ~abs(48683u)) % vec2<u32>(32u));
    return Struct_1(~_wgslsmith_clamp_i32(-17758i, 2147483647i, min(arg_1 & arg_1, -arg_1)));
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(-21598i);
    let var_1 = u_input.b.x;
    let var_2 = func_2(true, max(u_input.b.x, ~u_input.b.x | var_0.a));
    var_0 = func_2(!any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false))), firstLeadingBit(var_1));
    var_0 = var_2;
    return StorageBuffer(~vec4<i32>(1469i, _wgslsmith_div_i32(u_input.b.x, -23209i) << (4294967295u % 32u), _wgslsmith_mod_i32(~var_2.a, abs(var_0.a)), _wgslsmith_mult_i32(max(1i, -2147483647i), _wgslsmith_clamp_i32(0i, var_2.a, 31060i))), min(u_input.b.zz, min(u_input.b.zz, vec2<i32>(func_3(vec3<f32>(-157f, -588f, -641f)), ~var_1))), u_input.b.yxz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~_wgslsmith_dot_vec2_i32(u_input.b.wx, _wgslsmith_div_vec2_i32(u_input.b.wy << (vec2<u32>(0u, 62657u) % vec2<u32>(32u)), u_input.b.yy)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2858f), 718f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -813f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f) - -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1124f, _wgslsmith_f_op_f32(select(-272f, 228f, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(781f, -532f))), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2304f + 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -2503f)) - -186f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(432f - -170f) - _wgslsmith_f_op_f32(round(-2792f))))));
    var var_2 = -527f;
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1644f, 539f))), var_1.x));
    var_2 = _wgslsmith_f_op_f32(max(1536f, _wgslsmith_f_op_f32(-var_3)));
    var_2 = 1f;
    let x = u_input.a;
    s_output = func_1();
}

