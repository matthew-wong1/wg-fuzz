struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_4,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<bool>) -> vec3<f32> {
    let var_0 = Struct_5(Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-244f, 375f, -143f, -824f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-141f, -1000f, 1296f))), vec3<i32>(2147483647i, u_input.b, 1i)), u_input.b < abs(u_input.b), Struct_1(vec4<f32>(1479f, -2013f, 2168f, 445f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1727f, 475f, -722f) + vec3<f32>(286f, -854f, -985f)), -vec3<i32>(u_input.b, 1i, 45000i))), 8424u, true, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1008f, 840f, 601f, 2552f) + vec4<f32>(-1451f, 1000f, 1069f, 401f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-691f, 540f, 1412f), vec3<f32>(-946f, 124f, -1068f))) + vec3<f32>(-508f, -1179f, -1194f)), vec3<i32>(~28526i, _wgslsmith_div_i32(-2147483647i, -1i), ~1i))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(841f + -505f), _wgslsmith_f_op_f32(max(-1169f, -138f)), _wgslsmith_f_op_f32(f32(-1f) * -394f), _wgslsmith_f_op_f32(-1137f - 258f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-422f, -999f, 1000f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-663f, -750f, -1501f) * vec3<f32>(-620f, 2730f, -814f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1022f, -399f, 2290f), vec3<f32>(2529f, 1223f, 270f)) + _wgslsmith_div_vec3_f32(vec3<f32>(2554f, -439f, 797f), vec3<f32>(-1412f, -138f, 381f)))), -reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, 15346i), vec3<i32>(u_input.b, 2147483647i, u_input.b)))), Struct_4(!vec3<bool>(true, arg_0.x, all(vec2<bool>(false, arg_1.x)))), all(vec3<bool>(true, true, true)));
    var var_1 = var_0.c.a;
    var var_2 = var_0.a.a.c.c.x;
    var var_3 = Struct_3(var_0.a.a, u_input.a, any(!(!(!vec4<bool>(arg_1.x, arg_0.x, false, var_0.a.a.b)))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b.x, 993f, _wgslsmith_f_op_f32(-var_0.a.a.c.b.x), _wgslsmith_f_op_f32(-284f + var_0.a.a.a.a.x))), vec3<f32>(var_0.a.d.a.x, -2235f, 243f), ~(~(-vec3<i32>(u_input.b, 21677i, -12419i)))));
    var_1 = var_0.c.a;
    return var_3.d.a.xyz;
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: i32) -> i32 {
    var var_0 = false;
    let var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1044f, -622f, true)) - _wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(true, true), vec2<bool>(true, true))).x), _wgslsmith_f_op_f32(arg_0.x + -1073f), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-2090f + _wgslsmith_f_op_f32(961f - -155f))), arg_0, firstLeadingBit(~select(vec3<i32>(arg_2, arg_1, arg_2), vec3<i32>(arg_2, arg_1, -2147483647i), vec3<bool>(true, false, false)))), true, Struct_1(vec4<f32>(-886f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1678f)) * _wgslsmith_f_op_f32(-arg_0.x)), arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1117f)), _wgslsmith_div_f32(arg_0.x, 1333f))), arg_0, ((vec3<i32>(arg_2, 0i, u_input.b) & vec3<i32>(u_input.b, -49275i, arg_2)) & _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.b, 0i), vec3<i32>(56429i, 28201i, arg_2))) | vec3<i32>(~20194i, 1i, arg_1 & u_input.b)));
    var var_2 = _wgslsmith_f_op_f32(round(1f));
    var var_3 = u_input.a;
    return arg_2;
}

fn func_4(arg_0: i32) -> vec2<bool> {
    var var_0 = -321i;
    let var_1 = any(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), select(false, true, all(vec2<bool>(false, false)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2189f, -121f, -1157f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2234f + 608f) + _wgslsmith_f_op_f32(f32(-1f) * -967f)) - -235f))));
    let var_3 = var_1;
    var_0 = 1i;
    return !(!select(vec2<bool>(true || var_1, 333f <= var_2.x), !select(vec2<bool>(var_1, var_3), vec2<bool>(false, false), true), !select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), vec2<bool>(var_3, false))));
}

fn func_5(arg_0: vec2<bool>) -> Struct_5 {
    var var_0 = abs(i32(-1i) * -max(u_input.b, 5839i));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1608f, 1000f, -1930f, -698f)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1342f, -1466f, -820f, -381f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(249f, 1776f, 1479f, 240f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-153f, 387f, 802f, -847f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(611f, 2026f, 305f, -611f), vec4<f32>(-1078f, 1000f, -796f, -1000f), vec4<bool>(arg_0.x, true, false, false))) - vec4<f32>(-106f, -1760f, -156f, -1107f)))), vec3<f32>(-978f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -620f) - -1361f), 1f), _wgslsmith_add_vec3_i32(firstTrailingBit(reverseBits(vec3<i32>(u_input.b, 5129i, -2147483647i) >> (vec3<u32>(u_input.a, 93386u, 1u) % vec3<u32>(32u)))), _wgslsmith_div_vec3_i32(-(vec3<i32>(1i, u_input.b, -27216i) >> (vec3<u32>(u_input.a, 18698u, 1u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mod_i32(-32722i, u_input.b), -1i, ~(-3533i)))));
    let var_2 = Struct_3(Struct_2(Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(126f, -1323f, -919f))), -var_1.c), abs(~u_input.a) <= 4294967295u, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.b.x)), var_1.a.x, -280f, var_1.a.x), vec3<f32>(1541f, var_1.b.x, -509f), var_1.c | ~var_1.c)), _wgslsmith_mult_u32(~firstTrailingBit(u_input.a ^ 103704u), u_input.a), arg_0.x, Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), var_1.a.xzz, -(~var_1.c)));
    var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(1i, 0i), var_2.a.a.c.zx);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -2300f);
    return Struct_5(var_2, Struct_1(_wgslsmith_f_op_vec4_f32(var_2.a.c.a - var_1.a), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_1.b), var_1.a.ywx)), vec3<i32>(-1i) * -vec3<i32>(1i, 44332i, u_input.b)), Struct_4(vec3<bool>(false, any(!vec3<bool>(var_2.a.b, false, arg_0.x)), true)), !var_2.c);
}

fn func_1(arg_0: f32) -> vec3<u32> {
    var var_0 = func_5(func_4(firstLeadingBit(func_3(_wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(false, true), vec2<bool>(true, false))), -1i, u_input.b))));
    let var_1 = -1i;
    var var_2 = func_5(var_0.c.a.zy).c;
    let var_3 = var_0.a.a;
    var var_4 = abs(~(func_5(!vec2<bool>(var_3.b, var_0.d)).b.c.x ^ max(~u_input.b, var_0.b.c.x)));
    return ~_wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(4294967295u, 36000u), _wgslsmith_div_u32(37144u, 1u), u_input.a), vec3<u32>(~(~var_0.a.b), 0u, var_0.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(abs(~((vec2<u32>(1u, u_input.a) ^ vec2<u32>(55585u, u_input.a)) ^ ~vec2<u32>(1u, u_input.a))));
    var_0 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -312f)), ~(~vec3<u32>(52158u, u_input.a, var_0.x))), firstLeadingBit(~52335u << (_wgslsmith_dot_vec3_u32(vec3<u32>(30882u, 56665u, var_0.x), vec3<u32>(var_0.x, 4294967295u, 4578u)) % 32u)));
    var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(_wgslsmith_sub_u32(~var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(50250u, var_0.x), vec2<u32>(0u, 35151u))), 4294967295u) & ~(~(~vec2<u32>(u_input.a, 40680u))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1330f);
    var var_2 = select(select(!select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), true), !vec4<bool>(select(true, true, true), true, select(true, true, false), func_4(u_input.b).x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !all(vec2<bool>(false, false)))), !select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(-53140i << (~_wgslsmith_clamp_u32(u_input.a, 1u, 73300u) % 32u)), i32(-1i) * -2147483647i, vec4<u32>(reverseBits(28022u), u_input.a, select(~var_0.x, var_0.x, false) << ((~var_0.x | ~u_input.a) % 32u), 0u), ~vec2<u32>(min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(4294967295u, var_0.x)), 1u), ~(~u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)));
}

