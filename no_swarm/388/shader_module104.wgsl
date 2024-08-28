struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> bool {
    let var_0 = select(select(!vec4<bool>(true, any(vec2<bool>(true, true)), false, true), vec4<bool>(false, 35839u >= u_input.a, true, true), !select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), false)), select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, any(vec2<bool>(true, false)), any(vec2<bool>(true, false)), any(vec2<bool>(true, true))))), vec4<bool>(~_wgslsmith_mult_u32(0u, u_input.a) >= _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a), true != (all(vec3<bool>(true, false, true)) | any(vec2<bool>(false, false))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true));
    let var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(-1i, -40302i, 1i) >> (vec3<u32>(0u, 0u, u_input.a) % vec3<u32>(32u))), vec3<i32>(-(~(-2147483647i)), 0i, -2147483647i)), -1i, ~_wgslsmith_dot_vec2_i32(~vec2<i32>(-52804i, 2147483647i), _wgslsmith_div_vec2_i32(max(vec2<i32>(-12456i, 1i), vec2<i32>(-2147483647i, 2147483647i)), vec2<i32>(-64041i, 46794i) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)))), max((max(20730i, 1i) << (max(u_input.a, u_input.a) % 32u)) & 1i, 1i));
    var var_2 = 1000f;
    var var_3 = Struct_2(var_0.zz, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(1f, 1f, 1f, 1f))), var_0, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1545f + 1f), _wgslsmith_f_op_f32(f32(-1f) * -693f)), select(vec3<bool>(var_0.x, all(vec2<bool>(true, true)), all(var_0.wx)), var_0.yxw, any(var_0.zy)), vec2<i32>(firstTrailingBit(var_1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 598i), vec2<i32>(var_1.x, 1i)))));
    let var_4 = _wgslsmith_mult_i32(abs(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_1.x), var_3.d.c)), -2147483647i) | 46866i;
    return false;
}

fn func_2(arg_0: vec3<i32>) -> vec4<u32> {
    let var_0 = any(vec2<bool>(~88441u > u_input.a, !func_3()));
    var var_1 = Struct_2(vec2<bool>(var_0, any(!select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, false, true, var_0), vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-322f, 175f, -244f, -372f) * vec4<f32>(-1000f, 1363f, 324f, -500f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(980f, -600f, -897f, 902f) - vec4<f32>(396f, 431f, -1702f, -228f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-141f, 1208f, 565f, -1000f)), vec4<f32>(-713f, 1995f, -336f, 1000f), var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1545f, -756f, -177f, 312f) - vec4<f32>(2346f, -1000f, -1565f, 300f)))))), select(select(!select(vec4<bool>(false, false, var_0, true), vec4<bool>(var_0, var_0, var_0, true), var_0), select(select(vec4<bool>(var_0, true, false, var_0), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), !vec4<bool>(var_0, true, true, true), true), vec4<bool>(!var_0, false, true, var_0 || var_0)), !vec4<bool>(all(vec3<bool>(var_0, var_0, true)), true, var_0 & var_0, var_0), true), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-311f + _wgslsmith_f_op_f32(ceil(867f))))), select(!(!vec3<bool>(var_0, true, var_0)), vec3<bool>(false, true || var_0, false), var_0), -reverseBits(arg_0.zx & vec2<i32>(-24501i, 2147483647i))));
    var var_2 = reverseBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.x, 19260i), vec2<i32>(var_1.d.c.x, 1i)), (vec2<i32>(2147483647i, arg_0.x) & vec2<i32>(-15821i, var_1.d.c.x)) ^ vec2<i32>(var_1.d.c.x, var_1.d.c.x)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_1.d.c.x, -2161i, -2147483647i)), vec3<i32>(arg_0.x, -1i, -8445i)), 2147483647i)));
    var_1 = Struct_2(!var_1.c.wz, var_1.b, vec4<bool>(var_0, func_3(), !any(select(vec4<bool>(false, var_0, var_1.a.x, var_0), var_1.c, var_1.c)), false), Struct_1(1026f, vec3<bool>(abs(4294967295u) <= u_input.a, false, true), vec2<i32>(i32(-1i) * -23546i, var_1.d.c.x)));
    var var_3 = Struct_2(select(select(select(vec2<bool>(false, var_1.a.x), !vec2<bool>(false, var_0), false && var_1.a.x), var_1.a, var_1.a), select(vec2<bool>(true, false), vec2<bool>(false, var_0), vec2<bool>(true, var_0)), vec2<bool>(true, var_0 != !var_0)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_1.b)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1139f), _wgslsmith_div_f32(-1100f, _wgslsmith_f_op_f32(-var_1.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(929f, var_1.b.x, true))), var_1.d.a)), var_1.c, Struct_1(_wgslsmith_f_op_f32(trunc(var_1.d.a)), var_1.c.xzx, -var_1.d.c >> (~select(vec2<u32>(72355u, 65546u), vec2<u32>(4294967295u, u_input.a), var_0) % vec2<u32>(32u))));
    return select(select(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, u_input.a, u_input.a), ~vec4<u32>(1u, u_input.a, 1u, 0u)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 0u, 4294967295u, 13106u) ^ vec4<u32>(u_input.a, 72854u, u_input.a, 17291u), vec4<u32>(u_input.a, ~1u, ~u_input.a, 0u)), !var_1.c), ~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(1700u, 4294967295u, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, 0u, u_input.a, 1u) % vec4<u32>(32u)), ~vec4<u32>(18572u, 112896u, u_input.a, u_input.a))), select(select(vec4<bool>(!var_0, any(vec2<bool>(true, var_3.d.b.x)), true, var_1.a.x && true), vec4<bool>(all(vec4<bool>(var_3.d.b.x, var_3.c.x, var_3.a.x, var_0)), select(var_3.c.x, var_3.c.x, false), true, u_input.a >= 6568u), !all(var_1.a)), !select(vec4<bool>(true, true, false, var_0), vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, var_3.d.b.x, false), var_3.c, false)), true));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(func_2(vec3<i32>(44674i, arg_2.c.x, arg_2.c.x)).x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 57944u), vec2<u32>(u_input.a, 14806u))), abs(~0u)) | abs(abs(~vec2<u32>(u_input.a, u_input.a))), ~arg_1.wz);
    var_0 = arg_1.xw;
    let var_1 = func_3();
    var var_2 = arg_2;
    return _wgslsmith_f_op_f32(exp2(var_2.a));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(true, _wgslsmith_clamp_vec4_u32(func_2(vec3<i32>(-1i, 2147483647i, -31489i)), countOneBits(vec4<u32>(43469u, u_input.a, u_input.a, 13391u)), vec4<u32>(u_input.a, 32119u, u_input.a, u_input.a)), arg_2))), !vec3<bool>(true, all(arg_3.zx), !arg_1), arg_2.c);
    let var_1 = _wgslsmith_sub_vec3_i32(select(~(~(~vec3<i32>(var_0.c.x, var_0.c.x, -1i))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.c.x, var_0.c.x), var_0.c.x), -max(-1i, -14121i), ~arg_2.c.x), select(vec3<bool>(true, true, true), !arg_2.b, arg_2.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(0i >> (u_input.a % 32u), _wgslsmith_mod_i32(_wgslsmith_add_i32(-55337i, arg_2.c.x), 2147483647i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-20797i, var_0.c.x, 2147483647i, arg_2.c.x), vec4<i32>(1i, -27864i, arg_2.c.x, var_0.c.x)))));
    var var_2 = abs(_wgslsmith_add_vec3_i32(~(~min(vec3<i32>(-2147483647i, var_1.x, var_0.c.x), vec3<i32>(-42019i, 42141i, var_1.x))), var_1));
    var_2 = abs(var_1);
    let var_3 = firstLeadingBit(u_input.a);
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(countOneBits(~(~u_input.a)), _wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(var_3, select(var_3, var_3, arg_3.x)), _wgslsmith_add_u32(4294967295u, 0u)), var_3 | ~0u, ~(~49742u)), vec4<u32>(_wgslsmith_sub_u32(1u, var_3), ~_wgslsmith_mult_u32(u_input.a, 24900u), 15045u, abs(max(u_input.a, var_3))) & ~(~(~vec4<u32>(43629u, 71309u, u_input.a, 0u))), ~vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(91593u, var_3), ~vec2<u32>(var_3, 0u)), var_3, 0u, ~(var_3 | u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (abs(reverseBits(~vec4<i32>(32660i, 0i, -25231i, -1i))) << (select(vec4<u32>(firstLeadingBit(u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 16404u), vec3<u32>(u_input.a, u_input.a, u_input.a)), ~18552u), countOneBits(vec4<u32>(u_input.a, 34731u, 39178u, 4294967295u) << (vec4<u32>(u_input.a, 32159u, u_input.a, 4294967295u) % vec4<u32>(32u))), true) % vec4<u32>(32u))) << ((countOneBits(countOneBits(func_1(false, false, Struct_1(-1000f, vec3<bool>(true, false, true), vec2<i32>(1231i, 1803i)), vec3<bool>(false, false, false)))) | _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 0u, 1u, u_input.a), firstLeadingBit(select(vec4<u32>(u_input.a, 4294967295u, u_input.a, 2788u), vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), vec4<bool>(true, true, true, false))))) % vec4<u32>(32u));
    let var_1 = select(!(!vec2<bool>(all(vec4<bool>(false, true, true, false)), false)), vec2<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true)), (~(-1i) > var_0.x) || all(vec2<bool>(true, true))), !(false || all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))));
    var_0 = vec4<i32>(var_0.x, _wgslsmith_clamp_i32(var_0.x, -2147483647i, 2147483647i) | 1i, 0i, -1i);
    let var_2 = !(!vec2<bool>(true, func_3()));
    var var_3 = select(~((min(vec4<i32>(var_0.x, var_0.x, var_0.x, 18888i), vec4<i32>(var_0.x, 40621i, 0i, -27700i)) ^ -vec4<i32>(1i, var_0.x, var_0.x, -1i)) << ((select(vec4<u32>(u_input.a, 32378u, 4294967295u, 1u), vec4<u32>(1u, 22782u, 4294967295u, u_input.a), vec4<bool>(var_1.x, var_2.x, true, var_2.x)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(13928u, 4294967295u, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u))), ~reverseBits(-_wgslsmith_div_vec4_i32(vec4<i32>(-17813i, -11809i, var_0.x, -18445i), vec4<i32>(52271i, var_0.x, -40417i, 52182i))), vec4<bool>(!(!var_2.x) && var_1.x, !var_2.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-493f, -703f))) == _wgslsmith_f_op_f32(2561f * 1716f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -((vec4<i32>(12098i, 34999i, 8008i, 38132i) & vec4<i32>(1i, var_3.x, 36678i, var_0.x)) | (vec4<i32>(var_0.x, var_3.x, var_0.x, -2147483647i) & vec4<i32>(-21129i, var_3.x, 10285i, 16657i))), 58626i);
}

