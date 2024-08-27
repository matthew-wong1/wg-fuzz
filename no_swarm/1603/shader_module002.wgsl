struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 13>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>) -> u32 {
    global0 = array<vec4<i32>, 13>();
    let var_0 = countOneBits(arg_0.a.c.x);
    global0 = array<vec4<i32>, 13>();
    let var_1 = -997f;
    global0 = array<vec4<i32>, 13>();
    return 3083u;
}

fn func_3(arg_0: vec4<i32>) -> vec4<bool> {
    global0 = array<vec4<i32>, 13>();
    var var_0 = !vec2<bool>(true, u_input.a >= ~min(1u, 1u));
    let var_1 = Struct_3(select(vec4<bool>(true, !(arg_0.x == -2147483647i), any(vec2<bool>(var_0.x, var_0.x)), select(true, true, var_0.x)), !vec4<bool>(var_0.x, true, select(var_0.x, true, false), true), select(select(!vec4<bool>(true, true, var_0.x, var_0.x), select(vec4<bool>(var_0.x, true, true, true), vec4<bool>(false, false, false, var_0.x), var_0.x), select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), var_0.x)), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x))), _wgslsmith_div_vec3_f32(vec3<f32>(734f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -354f) + -244f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -684f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-312f, 142f, _wgslsmith_div_f32(-839f, 1074f)))));
    var_0 = !var_1.a.xx;
    global0 = array<vec4<i32>, 13>();
    return var_1.a;
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = Struct_3(func_3(vec4<i32>(_wgslsmith_mult_i32(44810i, -33013i), u_input.d.x, 1i, select(u_input.d.x, u_input.d.x, false)) ^ -vec4<i32>(u_input.d.x, -1i, u_input.d.x, u_input.d.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1281f, -1000f, -2646f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-774f, -1000f, -584f) + vec3<f32>(266f, -1422f, -1000f)))))));
    let var_1 = Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.d, vec3<i32>(26682i, 40548i, u_input.d.x), vec3<i32>(-39218i, -4213i, u_input.d.x)), ~vec3<i32>(u_input.d.x, 34343i, 2147483647i)) ^ vec3<i32>(select(u_input.d.x, _wgslsmith_div_i32(u_input.d.x, u_input.d.x), true), -44312i, 2147483647i ^ u_input.d.x), arg_0, vec2<i32>(-1i, 19661i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -1000f, -577f, _wgslsmith_f_op_f32(-var_0.b.x))));
    let var_2 = _wgslsmith_add_vec3_i32(~vec3<i32>(_wgslsmith_clamp_i32(2147483647i, 1i, -var_1.c.x), 32409i, -abs(10834i)), -abs(abs(var_1.a)));
    let var_3 = Struct_3(!(!vec4<bool>(53022i == var_2.x, true, var_1.b, false)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(-902f - var_0.b.x), 1000f))));
    let var_4 = Struct_2(Struct_1(-u_input.d, select(var_3.a.x, false, all(var_3.a)), vec2<i32>(_wgslsmith_clamp_i32(u_input.d.x, 2147483647i, 10497i), _wgslsmith_add_i32(u_input.d.x, var_2.x)) | var_2.zy, vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1148f)), var_0.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-507f, 1446f))))), Struct_1(~vec3<i32>(1i, ~u_input.d.x, u_input.d.x), false, vec2<i32>(abs(_wgslsmith_dot_vec2_i32(var_2.yz, var_1.a.xx)), u_input.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.b.x, var_1.d.x, -417f, 451f), vec4<f32>(1080f, 1085f, 128f, var_1.d.x))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, -2498f, var_0.b.x, -387f)))), Struct_1((_wgslsmith_add_vec3_i32(vec3<i32>(0i, var_1.a.x, 28000i), vec3<i32>(var_1.c.x, var_1.a.x, -28956i)) & select(vec3<i32>(-54018i, var_2.x, u_input.d.x), vec3<i32>(-1i, var_2.x, u_input.d.x), false)) >> (abs(vec3<u32>(u_input.a, u_input.b, 0u)) % vec3<u32>(32u)), var_3.b.x > _wgslsmith_f_op_f32(-var_3.b.x), var_2.zz, vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x), -1455f, var_0.b.x)), var_0.b);
    return reverseBits(~(-u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 13>();
    var var_0 = select(select(!vec3<bool>(false, true, all(vec2<bool>(true, true))), select(vec3<bool>(27511u <= u_input.b, u_input.a != 1u, true), vec3<bool>(all(vec4<bool>(true, true, true, false)), all(vec4<bool>(true, true, false, false)), select(false, true, false)), all(vec3<bool>(true, true, false))), true), vec3<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1198f * 1593f))) < -1012f, (min(u_input.d.x, u_input.d.x) >> (firstTrailingBit(0u) % 32u)) > (2147483647i >> (u_input.c % 32u)), !all(vec4<bool>(true, true, true, true))), u_input.d.x >= 2147483647i);
    var_0 = !(!select(select(select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), select(!var_0.x, all(var_0.zy), var_0.x)));
    var var_1 = var_0.x;
    var var_2 = Struct_1(vec3<i32>(-2147483647i << (_wgslsmith_sub_u32(4294967295u, func_1(Struct_2(Struct_1(u_input.d, true, vec2<i32>(1i, -18433i), vec4<f32>(534f, -1417f, 142f, -1748f)), Struct_1(vec3<i32>(u_input.d.x, -69272i, u_input.d.x), var_0.x, u_input.d.xz, vec4<f32>(-512f, 2071f, -1000f, 783f)), Struct_1(u_input.d, true, vec2<i32>(u_input.d.x, u_input.d.x), vec4<f32>(1282f, -1000f, 541f, -406f)), vec3<f32>(-676f, -232f, -868f)), u_input.a, var_0.xz)) % 32u), func_2(true), 1i), all(func_3(_wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(u_input.a, 13u)], vec4<i32>(-1i, u_input.d.x, 2147483647i, u_input.d.x)))) | var_0.x, -vec2<i32>(abs(_wgslsmith_clamp_i32(u_input.d.x, 0i, -9524i)), -2147483647i << (firstLeadingBit(u_input.b) % 32u)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(881f + 2938f)), -1434f, _wgslsmith_f_op_f32(-660f + _wgslsmith_f_op_f32(round(1064f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1854f, -417f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(~u_input.b, 22421u), ~47288u | func_1(Struct_2(Struct_1(var_2.a, true, vec2<i32>(-18518i, -2147483647i), var_2.d), Struct_1(vec3<i32>(-12516i, u_input.d.x, var_2.c.x), false, var_2.c, var_2.d), Struct_1(vec3<i32>(var_2.a.x, u_input.d.x, 0i), var_0.x, vec2<i32>(u_input.d.x, var_2.c.x), vec4<f32>(var_2.d.x, var_2.d.x, var_2.d.x, -1091f)), vec3<f32>(var_2.d.x, var_2.d.x, -477f)), 30595u, vec2<bool>(var_0.x, false))), countOneBits(~abs(49747u)), _wgslsmith_div_u32(reverseBits(u_input.c), 4294967295u), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(974f - -374f)), 1f, true))), ~(~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_2.c.x, u_input.d.x), vec2<i32>(var_2.a.x, u_input.d.x)), ~vec2<i32>(27786i, u_input.d.x))), _wgslsmith_dot_vec2_i32(var_2.c, countOneBits(~countOneBits(var_2.c))), var_2.d);
}

