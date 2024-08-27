struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<f32>) -> vec4<bool> {
    var var_0 = -(~vec4<i32>(_wgslsmith_add_i32(1i, -14124i) << (1u % 32u), 0i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -48753i, 2147483647i, u_input.a.x), vec4<i32>(-2147483647i, -1i, -69381i, u_input.a.x)), -11173i));
    var var_1 = Struct_1(arg_1.x, vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -166f) - arg_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1139f))))));
    let var_2 = vec2<i32>(-countOneBits(var_0.x), ~2147483647i) >> (~arg_0.xx % vec2<u32>(32u));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -162f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(665f, -835f)), arg_1.x, var_1.a) + var_1.b));
    let var_4 = -559f;
    return vec4<bool>(false, !any(vec3<bool>(true, true, true)), true, any(select(vec2<bool>(any(vec4<bool>(false, false, true, false)), select(true, true, true)), !select(vec2<bool>(false, true), vec2<bool>(false, false), true), all(vec2<bool>(false, false)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> vec2<i32> {
    let var_0 = _wgslsmith_sub_i32(2147483647i, arg_0.x);
    var var_1 = vec3<bool>(all(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, true, false))), all(!select(func_3(u_input.b, vec2<f32>(-267f, arg_3)), func_3(vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, arg_2), arg_1.b.xx), vec4<bool>(true, false, true, true))), func_3(_wgslsmith_sub_vec4_u32(u_input.b, select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, arg_2), u_input.b), vec4<u32>(arg_2, arg_2, 1u, 18782u), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_3)) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_1.b.x)))).x);
    let var_2 = arg_1;
    var var_3 = vec3<bool>(any(select(vec2<bool>(var_1.x, false), var_1.yz, select(var_1.zx, func_3(u_input.b, arg_1.b.zx).yw, !var_1.xy))), var_1.x, any(!(!func_3(vec4<u32>(0u, 1u, arg_2, arg_2), arg_1.b.xz).zz)));
    let var_4 = vec3<i32>(-u_input.a.x >> (29989u % 32u), select(reverseBits(_wgslsmith_mod_i32(abs(u_input.e), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 2147483647i)))), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 29634i >> (arg_2 % 32u)), abs(-vec2<i32>(1i, 93948i))), all(vec2<bool>(var_3.x, var_1.x))), _wgslsmith_div_i32(9814i, -(~(~1i))));
    return ~var_4.xy;
}

fn func_1(arg_0: i32, arg_1: f32) -> vec3<i32> {
    let var_0 = u_input.a | _wgslsmith_mult_vec2_i32(abs(u_input.a), countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 21822i) & vec2<i32>(u_input.c, u_input.c), func_2(vec2<i32>(14812i, -34306i), Struct_1(-960f, vec3<f32>(arg_1, -801f, -1159f)), u_input.d.x, arg_1))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 653f, arg_1) + vec3<f32>(-1260f, arg_1, arg_1)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -1373f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(arg_1, arg_1)), _wgslsmith_f_op_f32(-589f - arg_1), _wgslsmith_f_op_f32(-arg_1)), vec3<f32>(arg_1, arg_1, arg_1))));
    var var_2 = true;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)))))), var_1.b);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1276f)), _wgslsmith_f_op_f32(trunc(var_3.b.x))) * arg_1) * var_1.a));
    return ~vec3<i32>(arg_0 | -2147483647i, 2147483647i, (var_0.x ^ ~(-1i)) & _wgslsmith_clamp_i32(max(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.c, arg_0, 13161i), vec4<i32>(-8548i, arg_0, 1i, 0i)), countOneBits(-21765i)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = arg_2;
    var var_1 = arg_1;
    var var_2 = vec4<bool>(all(vec4<bool>(true, true, 1i == _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 0i, 24134i), vec3<i32>(33889i, 26266i, 29310i)), true)), true, false, all(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(false, any(vec2<bool>(true, false)), true))));
    var var_3 = ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_0.x, arg_0.x, 4092i), -(~vec4<i32>(-25615i, u_input.a.x, -2147483647i, -1i))), u_input.c, arg_0.x);
    var var_4 = u_input.b.yy;
    return ~vec4<i32>(u_input.c, -11314i, 32183i, select(abs(-42204i), 0i, u_input.c >= (arg_0.x >> (62313u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-1i) * -func_4(firstLeadingBit(func_1(u_input.e, 2645f)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -944f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1041f, 1434f, 317f))), Struct_1(_wgslsmith_f_op_f32(1226f - -1193f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(166f, 286f, 826f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-215f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 756f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-288f + -771f)))), _wgslsmith_f_op_f32(f32(-1f) * -892f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1163f)), _wgslsmith_f_op_f32(step(-278f, -877f))), 164f)) + _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1613f, 275f, 906f, -1587f)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(291f, 1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, 470f), var_1.yxx))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.xxw, _wgslsmith_f_op_vec3_f32(-var_1.xxx), vec3<bool>(true, true, true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1275f, var_1.x, var_1.x))))));
    var var_3 = var_1;
    var_3 = var_1;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1743f)))), true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b)));
    var var_5 = vec2<f32>(_wgslsmith_div_f32(1155f, -448f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1252f - var_3.x) - _wgslsmith_div_f32(-2121f, var_4.a))) - var_3.x));
    let var_6 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, reverseBits(u_input.b.ww & _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d, u_input.b.xy), ~u_input.d)));
}

