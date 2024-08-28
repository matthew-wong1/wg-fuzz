struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(select(4294967295u, ~1u, arg_0 & arg_0), ~(~arg_2.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(64878u, u_input.a.x, 67093u, arg_2.x), firstLeadingBit(vec4<u32>(1u, arg_1.x, 26469u, 31075u))), firstLeadingBit(_wgslsmith_mult_u32(12456u, 1u))), vec4<u32>(arg_2.x, _wgslsmith_dot_vec2_u32(arg_2, ~arg_1), firstTrailingBit(arg_2.x) | _wgslsmith_dot_vec3_u32(u_input.a, u_input.a), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), ~1u, reverseBits(arg_1.x)))), vec2<i32>(reverseBits(firstLeadingBit(-17179i)), abs(i32(-1i) * -7016i)), select(select(!select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, arg_0, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, true), !vec3<bool>(false, true, arg_0), vec3<bool>(false, false, true)), !(!vec3<bool>(arg_0, arg_0, arg_0))), !(!vec3<bool>(arg_0, false, arg_0)), any(!vec2<bool>(true, arg_0))), all(!select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, false, true, arg_0), arg_0), all(vec4<bool>(true, false, arg_0, arg_0)))));
    var var_1 = select(~(-arg_3.x), _wgslsmith_clamp_i32(6039i, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.yz), -2147483647i), false) & 2147483647i;
    var_1 = i32(-1i) * -18986i;
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(515f, -1150f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -790f) - vec2<f32>(1163f, 1294f)), !select(var_0.c.xy, vec2<bool>(arg_0, arg_0), false))))), Struct_3(!select(var_0.c, vec3<bool>(true, true, true), select(var_0.c, var_0.c, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1649f, _wgslsmith_f_op_f32(step(148f, 1000f)), -540f, _wgslsmith_f_op_f32(f32(-1f) * -259f))), Struct_2(2147483647i, Struct_1(var_0.a, _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -54544i), vec2<i32>(var_0.b.x, arg_3.x)), !var_0.c, var_0.d)), Struct_2(1i, Struct_1(firstTrailingBit(vec4<u32>(arg_1.x, arg_1.x, u_input.a.x, var_0.a.x)), vec2<i32>(u_input.b.x, 4236i), !var_0.c, !var_0.c.x)), true), Struct_1(max(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, 16021u, arg_2.x), var_0.a), var_0.a), -var_0.b, select(select(var_0.c, !vec3<bool>(arg_0, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, arg_0, var_0.c.x), vec3<bool>(false, arg_0, false))), select(var_0.c, !vec3<bool>(false, arg_0, true), true), !(!vec3<bool>(var_0.d, arg_0, var_0.d))), any(vec2<bool>(true, var_0.c.x)) || var_0.d), true);
    var var_3 = var_2.c;
    return vec4<u32>(u_input.a.x, max(1u, arg_1.x) >> (abs(arg_1.x) % 32u), ~1u, 1u | arg_2.x) >> (~(abs(~vec4<u32>(var_2.b.c.b.a.x, var_3.a.x, var_2.c.a.x, u_input.a.x)) >> (vec4<u32>(_wgslsmith_sub_u32(arg_2.x, u_input.a.x), ~26246u, u_input.a.x, 4294967295u ^ var_0.a.x) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec3<i32>) -> vec3<bool> {
    let var_0 = -200f;
    let var_1 = vec2<bool>(true, true);
    var var_2 = Struct_1(~(func_3(var_1.x, u_input.a.yy, vec2<u32>(0u, u_input.a.x), u_input.b) ^ vec4<u32>(4294967295u, u_input.a.x, 31812u, u_input.a.x)) ^ func_3(var_1.x, ~countOneBits(u_input.a.zx), vec2<u32>(~4294967295u, ~0u), u_input.b), vec2<i32>(u_input.b.x, _wgslsmith_div_i32(i32(-1i) * -arg_0.x, _wgslsmith_mult_i32(arg_0.x, u_input.b.x))), select(vec3<bool>(!(u_input.a.x != u_input.a.x), var_1.x, any(select(var_1, var_1, var_1.x))), !(!(!vec3<bool>(false, var_1.x, true))), select(vec3<bool>(all(var_1), true, select(var_1.x, var_1.x, var_1.x)), select(!vec3<bool>(true, var_1.x, var_1.x), select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, false, var_1.x), vec3<bool>(true, var_1.x, false)), any(vec3<bool>(var_1.x, var_1.x, false))), vec3<bool>(var_1.x, var_1.x, true))), any(var_1));
    var_2 = Struct_1(~countOneBits(var_2.a << (min(var_2.a, vec4<u32>(0u, 2295u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))), vec2<i32>(var_2.b.x, var_2.b.x), select(!vec3<bool>(var_1.x, var_1.x, u_input.b.x < 0i), select(var_2.c, vec3<bool>(true, true, true), select(var_2.c, vec3<bool>(true, var_1.x, var_2.d), 133f < var_0)), true), false);
    let var_3 = Struct_2(-u_input.b.x, Struct_1(~(var_2.a >> (var_2.a % vec4<u32>(32u))), vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -2147483647i, arg_0.x), _wgslsmith_dot_vec3_i32(countOneBits(u_input.b.wyz), arg_0)), vec3<bool>(firstLeadingBit(var_2.a.x) >= 1u, !(!var_1.x), true), 25545u < select(_wgslsmith_add_u32(1u, var_2.a.x), ~u_input.a.x, var_2.c.x)));
    return var_2.c;
}

fn func_4(arg_0: vec3<bool>) -> vec3<bool> {
    var var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_f32(547f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1332f))))))));
    var_0 = _wgslsmith_add_i32(firstLeadingBit(u_input.b.x), u_input.b.x);
    var_0 = firstTrailingBit(_wgslsmith_clamp_i32(2147483647i, u_input.b.x, 1i));
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~(~select(vec4<u32>(0u, u_input.a.x, u_input.a.x, 25680u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 43047u), arg_0.x)), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(17778u, 97641u, 38743u, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 31607u), vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u))) >> (abs(max(vec4<u32>(u_input.a.x, 1776u, u_input.a.x, u_input.a.x), vec4<u32>(72870u, 26005u, 4294967295u, u_input.a.x))) % vec4<u32>(32u))), _wgslsmith_mult_u32(60548u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(8692u, 1u, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, 0u, 0u, 41564u)) << (_wgslsmith_div_u32(u_input.a.x, ~0u) % 32u)));
    return arg_0;
}

fn func_1() -> bool {
    let var_0 = Struct_3(func_4(func_2(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -32671i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(910f, 1086f))), 1f, 1000f, -1527f))), Struct_2(1i, Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(10930u, 14438u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) ^ (vec4<u32>(u_input.a.x, 655u, u_input.a.x, u_input.a.x) >> (vec4<u32>(27586u, 30588u, u_input.a.x, 0u) % vec4<u32>(32u))), u_input.b.yy, vec3<bool>(true, true, true), all(vec2<bool>(true, true)))), Struct_2(_wgslsmith_dot_vec3_i32(u_input.b.xyy, firstLeadingBit(-u_input.b.yxw)), Struct_1(~vec4<u32>(u_input.a.x, 11683u, u_input.a.x, 7479u) & firstTrailingBit(vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x)), vec2<i32>(-22880i, abs(u_input.b.x)), vec3<bool>(false, true, true), any(vec3<bool>(false, false, false)))), all(func_4(vec3<bool>(true, true, all(vec3<bool>(false, true, true)))).yy));
    let var_1 = vec4<bool>(!any(vec4<bool>(any(vec3<bool>(var_0.a.x, true, var_0.d.b.c.x)), true, var_0.d.b.c.x, true)), false, false, var_0.d.b.d);
    var var_2 = all(vec3<bool>(select(func_2(-u_input.b.yyw).x, true, false), !(!func_4(var_0.a).x), -2147483647i <= (~var_0.d.b.b.x & u_input.b.x)));
    var var_3 = ~(~var_0.d.b.a);
    var_3 = ~(~(~(~var_0.d.b.a)));
    return all(select(select(vec3<bool>(var_1.x, true, var_0.d.b.c.x), var_0.a, true), var_0.d.b.c, true)) || var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>(func_1(), reverseBits(u_input.b.x) == (0i ^ u_input.b.x), func_1() != true));
    var_0 = vec3<bool>(!func_4(vec3<bool>(var_0.x, var_0.x, any(vec3<bool>(var_0.x, true, var_0.x)))).x, func_1(), !all(vec2<bool>(u_input.a.x != 4294967295u, true)));
    let var_1 = _wgslsmith_div_f32(-760f, -1154f);
    var var_2 = ~u_input.a;
    let var_3 = reverseBits(max(45967u, ~(firstLeadingBit(var_2.x) << (_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) % 32u))));
    var_0 = vec3<bool>(true, true, ~_wgslsmith_mult_i32(-26245i, u_input.b.x) <= 1i);
    var var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -879f) * vec2<f32>(-426f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1)) - _wgslsmith_f_op_f32(f32(-1f) * -1474f)))), Struct_3(!vec3<bool>(!var_0.x, !var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, var_1, var_1, 899f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, var_1, var_1, -1070f), vec4<f32>(var_1, var_1, -1000f, var_1)))))), Struct_2(firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), Struct_1(vec4<u32>(1u, var_3, var_2.x, var_2.x), ~u_input.b.yx, vec3<bool>(var_0.x, var_0.x, false), true)), Struct_2(u_input.b.x, Struct_1(select(vec4<u32>(69742u, u_input.a.x, 4294967295u, var_2.x), vec4<u32>(var_3, 50170u, 4294967295u, u_input.a.x), true), u_input.b.zx >> (vec2<u32>(0u, 68086u) % vec2<u32>(32u)), vec3<bool>(false, var_0.x, var_0.x), true)), var_0.x), Struct_1(min(vec4<u32>(4294967295u, 32457u ^ var_2.x, _wgslsmith_mod_u32(4294967295u, u_input.a.x), 1u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 1u, u_input.a.x, var_3), vec4<u32>(50988u, u_input.a.x, 1u, var_2.x))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.zy ^ u_input.b.xz, abs(vec2<i32>(9690i, u_input.b.x))), ~(~vec2<i32>(29556i, u_input.b.x)), ~(-vec2<i32>(32974i, u_input.b.x))), !vec3<bool>(!var_0.x, true, !var_0.x), var_0.x), var_0.x);
    var_4 = Struct_4(var_4.b.b.zx, var_4.b, var_4.c, var_0.x);
    var var_5 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_2.x | var_3, 0u), ~var_3), var_4.c.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-621f, -vec3<i32>(var_4.c.b.x, -10993i, -(~(-12238i))), var_4.b.b);
}

