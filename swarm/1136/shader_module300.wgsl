struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = firstTrailingBit(~vec2<u32>(arg_0.d, 40175u)) << (vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, arg_0.b) ^ vec4<u32>(0u, arg_0.d, arg_0.d, 9136u), _wgslsmith_mod_vec4_u32(vec4<u32>(13257u, 0u, 1u, arg_0.b), vec4<u32>(arg_0.b, 0u, arg_0.d, arg_0.d))), ~abs(arg_0.b << (1u % 32u))) % vec2<u32>(32u));
    let var_1 = arg_0.e.a.x;
    var_0 = vec2<u32>(~var_0.x, ~arg_0.b);
    var var_2 = -vec4<i32>(0i, -(var_1 >> (39366u % 32u)), 18870i, -16138i);
    let var_3 = select(vec3<bool>(all(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), 770f != arg_0.a.b.x)), -u_input.a > countOneBits(_wgslsmith_sub_i32(var_1, -25601i)), !(countOneBits(var_1) <= -var_2.x)), select(vec3<bool>(true, true, true), !vec3<bool>(all(vec3<bool>(false, false, true)), any(vec3<bool>(true, false, true)), all(vec3<bool>(false, false, true))), false), vec3<bool>(abs(17528i) > _wgslsmith_sub_i32(_wgslsmith_add_i32(var_1, var_2.x), -7689i & arg_0.e.a.x), true, any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(false, false, true), arg_0.e.b.x < 746f))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)) - -344f)));
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 49864i), vec2<i32>(5757i, u_input.a))), 39364i);
    var var_1 = Struct_2(Struct_1(firstTrailingBit(_wgslsmith_mod_vec3_i32(select(vec3<i32>(var_0.x, u_input.a, 0i), vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<bool>(true, false, false)), -vec3<i32>(var_0.x, -2147483647i, var_0.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1326f, 691f, 1605f, 1234f))))), 10874u, vec4<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(528f, 714f)) * -617f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec3<i32>(32326i, u_input.a, u_input.a), vec4<f32>(1355f, 2095f, 673f, 1503f)), arg_0.x, vec4<f32>(589f, -535f, -434f, -523f), 17341u | arg_0.x, Struct_1(vec3<i32>(-24709i, var_0.x, var_0.x), vec4<f32>(2170f, 326f, -900f, -856f))))), 516f), 49918u, Struct_1(-(~countOneBits(vec3<i32>(2147483647i, u_input.a, -2147483647i))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(169f, -498f, -1401f, -1147f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(607f, -1523f, -653f, 1025f), vec4<f32>(1000f, 934f, 266f, 531f))), false))));
    var var_2 = Struct_3(1u ^ _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(arg_0, vec4<u32>(var_1.d, arg_0.x, arg_0.x, 27027u)), ~arg_0), ~(~arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(var_1.e.b * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.b.x, var_1.e.b.x, var_1.c.x, -411f), var_1.c, false))), _wgslsmith_f_op_vec4_f32(var_1.a.b * vec4<f32>(1384f, var_1.c.x, 3279f, 948f))))), ((984f == var_1.a.b.x) || true) & any(!select(vec2<bool>(true, true), vec2<bool>(false, true), false)));
    var_2 = Struct_3(~87972u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(146f)), -597f, var_2.b.x, _wgslsmith_f_op_f32(var_1.a.b.x * var_2.b.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-407f, 501f, var_1.a.b.x, var_1.c.x), var_1.e.b)), false)) - vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(var_1.a, var_2.a, vec4<f32>(537f, 521f, 172f, var_1.c.x), var_1.d, var_1.e))), _wgslsmith_f_op_f32(var_2.b.x + -1000f), var_1.e.b.x, _wgslsmith_f_op_f32(min(var_2.b.x, _wgslsmith_f_op_f32(-var_1.c.x))))), all(select(select(vec2<bool>(true, var_2.c), vec2<bool>(false, var_2.c), select(vec2<bool>(false, var_2.c), vec2<bool>(false, var_2.c), vec2<bool>(false, var_2.c))), select(vec2<bool>(true, true), !vec2<bool>(var_2.c, var_2.c), false), var_2.c)));
    var_0 = _wgslsmith_div_vec2_i32(var_1.a.a.zz, _wgslsmith_mod_vec2_i32(~(~_wgslsmith_sub_vec2_i32(var_1.a.a.xx, vec2<i32>(var_0.x, -45308i))), var_1.e.a.zx));
    return _wgslsmith_div_f32(var_1.a.b.x, _wgslsmith_f_op_f32(abs(var_1.a.b.x)));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> bool {
    var var_0 = 1i;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 39934u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -258f) - -1484f)));
    var_0 = -12483i;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(max(288f, 1392f));
    return true;
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_u32(~vec3<u32>(56310u, 50553u, reverseBits(41327u)), vec3<u32>(1u, 1u, 1u));
    var var_1 = select(countOneBits(1i), arg_2.x, all(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false))));
    var_1 = u_input.a;
    var_1 = -select(0i, -19402i, true || (false & any(vec4<bool>(true, false, true, true))));
    let var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(49775u, 0u, 0u, var_0.x) ^ ~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), max(vec4<u32>(var_0.x, var_0.x, 17601u, 22990u) | vec4<u32>(var_0.x, 0u, var_0.x, 8160u), select(vec4<u32>(81701u, var_0.x, 0u, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, false, false))) << (~(~vec4<u32>(var_0.x, 4294967295u, 1u, var_0.x)) % vec4<u32>(32u))), ~var_0.x << (46047u % 32u), 14256u, var_0.x);
    return Struct_2(Struct_1(-vec3<i32>(i32(-1i) * -31023i, u_input.a, -arg_2.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1366f, 156f, arg_1, arg_1) + vec4<f32>(arg_1, arg_1, arg_1, -1885f)) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_0.x, 128f, arg_0.x), vec4<f32>(arg_0.x, arg_1, 591f, 1007f)))))), var_2.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -1759f, -256f))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1204f, arg_1, -382f, arg_1), vec4<f32>(arg_1, 422f, arg_1, arg_1)) + vec4<f32>(488f, arg_1, -984f, arg_1)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, -701f, -1158f, arg_0.x))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, arg_1, arg_0.x, 2197f))))))), countOneBits(reverseBits(~73606u)), Struct_1(-max(vec3<i32>(u_input.a, u_input.a, 5592i), -arg_2), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -2629f, -153f) - vec4<f32>(1152f, 359f, -1000f, arg_0.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(true, true, true), vec3<bool>(false, !all(vec4<bool>(true, false, false, false)), all(vec2<bool>(true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), all(vec3<bool>(false, true, true)) != true)), !vec3<bool>(any(vec4<bool>(true, true, true, true)), false, true), !all(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, true))));
    var var_1 = func_4(vec3<f32>(-558f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-512f - 1000f))), _wgslsmith_f_op_f32(max(873f, _wgslsmith_f_op_f32(select(-270f, _wgslsmith_f_op_f32(sign(-246f)), func_1(Struct_1(vec3<i32>(u_input.a, 34495i, -2147483647i), vec4<f32>(1232f, 174f, 731f, 195f)), true)))))), -1832f, ~firstLeadingBit(max(vec3<i32>(u_input.a, 28725i, u_input.a), ~vec3<i32>(u_input.a, -18288i, u_input.a))));
    var_1 = func_4(_wgslsmith_f_op_vec3_f32(sign(var_1.c.zyz)), -807f, vec3<i32>(var_1.a.a.x, select(10643i, var_1.a.a.x, _wgslsmith_f_op_f32(-886f + var_1.a.b.x) > _wgslsmith_f_op_f32(989f - 2234f)), _wgslsmith_add_i32(var_1.e.a.x, 56426i)));
    let var_2 = Struct_2(func_4(var_1.a.b.xxx, _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec3<i32>(1i, -1i, var_1.e.a.x), var_1.a.b), _wgslsmith_mult_u32(4294967295u, var_1.b), _wgslsmith_f_op_vec4_f32(-var_1.c), 1u, Struct_1(var_1.e.a, vec4<f32>(var_1.a.b.x, 140f, 308f, -1000f))))), ~(-var_1.e.a) ^ (~vec3<i32>(1i, -13393i, u_input.a) >> (vec3<u32>(var_1.d, var_1.b, 4294967295u) % vec3<u32>(32u)))).a, firstTrailingBit(firstTrailingBit(var_1.b) << (var_1.b % 32u)), vec4<f32>(-677f, _wgslsmith_f_op_f32(f32(-1f) * -1718f), var_1.e.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-606f * var_1.e.b.x)), -896f)), 0u & ~_wgslsmith_div_u32(var_1.d ^ var_1.d, 65567u), Struct_1(-_wgslsmith_mult_vec3_i32(max(vec3<i32>(-16355i, 0i, 1i), vec3<i32>(var_1.e.a.x, -41994i, 0i)), min(vec3<i32>(-1i, var_1.e.a.x, 0i), vec3<i32>(var_1.a.a.x, -1i, 40367i))), _wgslsmith_f_op_vec4_f32(max(var_1.c, vec4<f32>(-895f, _wgslsmith_f_op_f32(abs(-1000f)), -506f, _wgslsmith_div_f32(-1476f, var_1.a.b.x))))));
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-8565i, var_3.a.a.x, _wgslsmith_div_u32(var_1.b, min(var_2.b, min(4294967295u << (var_3.d % 32u), var_1.b))), (-var_2.e.a.x << (0u % 32u)) >> (var_3.d % 32u));
}

