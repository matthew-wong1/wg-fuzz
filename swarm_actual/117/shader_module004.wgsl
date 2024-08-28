struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: i32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> i32 {
    let var_0 = false;
    global0 = !arg_0.b.xz;
    global1 = 33878i;
    var var_1 = Struct_1(vec2<i32>(2147483647i, _wgslsmith_mod_i32(max(0i, 1i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 33373u), vec3<u32>(49455u, 4294967295u, 27846u)) % 32u), -11652i)), vec2<u32>(1u, 11039u), 682f);
    let var_2 = Struct_1(select(var_1.a, arg_1, !select(arg_0.a.zz, vec2<bool>(false, false), var_0)) | var_1.a, _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(var_1.b.x, firstTrailingBit(4294967295u))), firstTrailingBit(vec2<u32>(0u, var_1.b.x))), var_1.c);
    return firstTrailingBit(arg_0.d);
}

fn func_3() -> vec2<u32> {
    global1 = u_input.a.x;
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-2047f, 1f)));
    global0 = !vec2<bool>(global0.x, var_0 == _wgslsmith_f_op_f32(1f - var_0));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1000f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1331f, -1584f)))))));
    return vec2<u32>(0u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u))) | reverseBits(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(1u, 1u)), ~vec2<u32>(1u, 1u)));
}

fn func_1() -> u32 {
    var var_0 = -613f;
    let var_1 = Struct_1(vec2<i32>(35083i, ~firstLeadingBit(func_2(Struct_2(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, global0.x, global0.x), true, 0i), vec2<i32>(u_input.a.x, u_input.b.x)))), func_3(), 223f);
    var var_2 = Struct_2(select(vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(global0.x, false), vec2<bool>(false, global0.x))), global0.x, !global0.x), !select(select(vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, true, global0.x)), vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, false)), vec3<bool>(u_input.b.x <= _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, -1i, 62505i), u_input.a), any(select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, true), true)), false)), vec3<bool>(true, true, true), global0.x, -2147483647i);
    var var_3 = 1u;
    var var_4 = var_2.a.zz;
    return _wgslsmith_mult_u32(~var_1.b.x, ~(~33416u));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = u_input.b;
    let var_1 = Struct_2(vec3<bool>(any(!(!vec3<bool>(false, global0.x, true))), !(!global0.x) && false, true), !select(vec3<bool>(!global0.x, any(vec4<bool>(true, global0.x, true, true)), global0.x != global0.x), vec3<bool>(global0.x, all(vec4<bool>(global0.x, global0.x, true, true)), !global0.x), arg_3.x < _wgslsmith_f_op_f32(arg_3.x * -1410f)), all(vec2<bool>(all(vec4<bool>(true, true, true, global0.x)), !global0.x)), -1i);
    global1 = ~_wgslsmith_sub_i32(-min(var_1.d, ~var_0.x), 1i);
    var var_2 = -arg_2;
    let var_3 = vec3<u32>(arg_0.x << (((arg_1.x >> (arg_0.x % 32u)) >> (4294967295u % 32u)) % 32u), arg_1.x, arg_1.x) >> (arg_0 % vec3<u32>(32u));
    return Struct_1(select(vec2<i32>(-2147483647i, _wgslsmith_mod_i32(var_2.x, ~arg_2.x)), u_input.b, vec2<bool>(!(global0.x | true), all(vec4<bool>(false, false, global0.x, global0.x)))), min(abs(abs(vec2<u32>(var_3.x, 96918u))), reverseBits(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 0u, var_3.x, arg_0.x), vec4<u32>(4294967295u, arg_1.x, 123703u, 0u)), reverseBits(var_3.x)))), -524f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1702f, -588f, 1108f) + vec3<f32>(981f, -577f, -666f)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(434f, 1143f, -1520f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1471f, -105f, -163f))), any(vec4<bool>(global0.x, false, false, global0.x))))))));
    let var_1 = func_4(~vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u), -vec3<i32>(16933i, ~u_input.b.x << (func_1() % 32u), firstTrailingBit(i32(-1i) * -2720i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 1175f) * _wgslsmith_f_op_f32(f32(-1f) * -741f)), var_0.x, 349f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1477f * 721f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1349f, 467f, var_0.x, -820f)), vec4<f32>(var_0.x, var_0.x, -1143f, var_0.x), !global0.x)))));
    global0 = !select(!(!vec2<bool>(true, global0.x)), select(vec2<bool>(true, u_input.a.x <= 33685i), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(global0.x, true), vec2<bool>(false, global0.x))), select(!(!vec2<bool>(global0.x, global0.x)), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true)), true));
    var var_2 = Struct_2(vec3<bool>(global0.x, all(!select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, false, true))), true), !vec3<bool>(false, global0.x, global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1266f + -443f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_1.c))))), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b.x, _wgslsmith_div_i32(12175i ^ var_1.a.x, 2147483647i)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_1.a.x, var_1.a.x), var_1.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), var_1.a), vec2<i32>(-10355i, -1i)), ~select(-23626i, u_input.a.x, global0.x))));
    global1 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, firstTrailingBit(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(29505u, 13739u, var_1.b.x) ^ vec3<u32>(var_1.b.x, 0u, var_1.b.x), abs(vec3<u32>(9330u, var_1.b.x, 4294967295u))))));
}

