struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: u32) -> i32 {
    let var_0 = _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(0i, _wgslsmith_mod_i32(-1i, u_input.d), -2147483647i)), vec3<i32>(u_input.d, u_input.d, _wgslsmith_div_i32(i32(-1i) * -u_input.d, u_input.b.x)));
    let var_1 = Struct_3(2147483647i, (arg_0.x > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x - -700f)))) == !(_wgslsmith_f_op_f32(sign(1000f)) < -898f), Struct_2(min(0u, ~(~71916u)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x + -538f))), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), vec3<bool>(1u < arg_2, u_input.a > 115108u, true)), Struct_1(arg_0.x, arg_0, !(!vec3<bool>(arg_1, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -651f))));
    var var_2 = Struct_3(u_input.b.x, all(var_1.c.c.c), Struct_2(var_1.c.a, Struct_1(arg_0.x, var_1.c.c.b, vec3<bool>(all(var_1.c.b.c), all(var_1.c.b.c), true)), Struct_1(519f, _wgslsmith_f_op_vec2_f32(step(var_1.c.b.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.b.a, 1068f) - vec2<f32>(arg_0.x, -1639f)))), select(!var_1.c.c.c, vec3<bool>(false, var_1.b, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(arg_0.x * var_1.c.b.b.x)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * arg_0.x);
    let var_4 = var_2.c.c;
    return -1i;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_mult_u32(u_input.a | 45767u, u_input.a);
    var_0 = 66079u;
    var_0 = u_input.a;
    let var_1 = Struct_3(_wgslsmith_clamp_i32(1i, 2147483647i, arg_0 ^ arg_1), arg_2 == true, Struct_2(6070u, Struct_1(_wgslsmith_f_op_f32(-538f + _wgslsmith_f_op_f32(838f - 662f)), vec2<f32>(_wgslsmith_f_op_f32(-2417f + 452f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(!vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_2, arg_2, arg_2), 0u <= u_input.a)), Struct_1(1f, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-638f, -909f))))), select(select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(true, true, false), arg_2), vec3<bool>(arg_2, arg_2, false), all(vec3<bool>(true, arg_2, arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1039f * _wgslsmith_f_op_f32(trunc(-2342f))) * -522f)));
    var_0 = _wgslsmith_mod_u32(~var_1.c.a, max(var_1.c.a, firstLeadingBit(~u_input.c.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.a, 105380u, 0u, u_input.a), vec4<u32>(0u, var_1.c.a, var_1.c.a, var_1.c.a)))));
    return _wgslsmith_f_op_f32(abs(1135f));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec4<f32>) -> vec4<u32> {
    let var_0 = Struct_2(0u, Struct_1(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1965f, 290f))), select(!(!vec3<bool>(true, arg_0, false)), !vec3<bool>(arg_0, arg_0, arg_0), !arg_0)), Struct_1(327f, arg_2.xz, !(!(!vec3<bool>(arg_0, false, arg_0)))), _wgslsmith_f_op_f32(func_4(6002i, select(_wgslsmith_mod_i32(u_input.b.x << (0u % 32u), ~u_input.b.x), func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-1972f, -1000f), arg_2.zx), arg_0, arg_1), true), false)));
    let var_1 = countOneBits(-u_input.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.b.b)) * vec2<f32>(var_0.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_0.c.b)));
    let var_3 = Struct_2(var_0.a, Struct_1(125f, vec2<f32>(arg_2.x, -1157f), vec3<bool>(true, true, true)), var_0.b, var_2.x);
    let var_4 = var_3.c;
    return reverseBits(vec4<u32>(0u, 0u, 4294967295u, ~u_input.c.x));
}

fn func_1() -> vec4<f32> {
    var var_0 = select(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.c.x, ~(~u_input.c.x), u_input.c.x), max(vec4<u32>(countOneBits(u_input.c.x), 52784u, u_input.a, u_input.a >> (0u % 32u)), func_2(true, ~u_input.c.x, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-363f, 1347f, 2087f, 503f)))))), select(firstLeadingBit(~vec4<u32>(u_input.a, 9947u, u_input.a, u_input.a)), firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, 40803u, 0u, 4643u), ~vec4<u32>(37639u, u_input.a, 1u, 4294967295u))), select(vec4<bool>(false, any(vec4<bool>(false, true, false, true)), any(vec2<bool>(false, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false))), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false)))), !(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), false))));
    var_0 = vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(var_0.x, func_2(true, min(var_0.x, u_input.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 672f, -871f, -163f), vec4<f32>(3196f, 714f, -1191f, -1206f), true))).x), _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(6653u, u_input.c.x), var_0.x >> (57356u % 32u)) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 4294967295u, 2363u, 45372u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 48309u, var_0.x), vec4<u32>(var_0.x, u_input.c.x, u_input.a, 1u)))), ~u_input.a);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-1405f + _wgslsmith_f_op_f32(1f - -1370f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(650f, 161f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 697f), vec2<f32>(-315f, 1289f)))))), vec3<bool>(!(any(vec3<bool>(true, true, true)) && all(vec2<bool>(false, false))), any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), true));
    var_1 = Struct_1(_wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(452f * 207f), _wgslsmith_f_op_f32(523f - 1295f)), var_1.a), (true || !var_1.c.x) | var_1.c.x)), var_1.b, !var_1.c);
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-54061i, ~1i >> (1u % 32u)), ~(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-25191i, -2147483647i, u_input.b.x, -50149i), vec4<i32>(-1i, -24982i, u_input.b.x, u_input.d)), -2147483647i)));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -466f), -2176f, -983f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -526f), vec2<f32>(-705f, -1048f), !vec3<bool>(all(vec3<bool>(true, true, true)) || false, true, u_input.d != -u_input.d));
    let var_1 = vec2<bool>(any(!(!vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x))), false);
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-700f, 1254f, var_0.a, var_0.b.x) * vec4<f32>(var_0.a, var_0.b.x, -188f, -1351f))))));
    let var_3 = -399f;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3, -967f)) * 978f);
    var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3, _wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b.x, 198f), var_2.x))), var_0.b.x, -116f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1478f, 1447f, var_3, var_2.x) * vec4<f32>(var_0.a, var_0.a, 1079f, var_3))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -861f, var_3, -1742f)))), any(!var_0.c.xz))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.b.x, 534f, -1422f) - vec4<f32>(var_0.b.x, 1089f, var_3, var_3)))))), false));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1088f, 1000f, var_2.x, 548f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_2.x, var_3, -363f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3, var_2.x, 446f, var_0.b.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-115f, -383f, 1402f, -528f))), true)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-410f, 164f, -608f, var_3) * vec4<f32>(var_0.a, var_3, var_2.x, var_3))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-403f, 564f, -2257f, var_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -850f, -585f, 1054f) + vec4<f32>(var_3, var_2.x, var_2.x, 803f)), all(vec4<bool>(var_1.x, var_1.x, true, var_0.c.x)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.d, u_input.b.x, 2147483647i, u_input.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, 1i, -12574i, 26029i), vec4<i32>(u_input.b.x, u_input.d, u_input.d, u_input.b.x), vec4<i32>(45973i, u_input.d, 2147483647i, 778i))), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.b.x, 0i, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(-25765i, u_input.d, -2147483647i, u_input.d), vec4<i32>(2147483647i, 24716i, u_input.b.x, 28280i))), !select(vec4<bool>(false, var_0.c.x, false, true), vec4<bool>(var_1.x, false, false, var_0.c.x), false))));
}

