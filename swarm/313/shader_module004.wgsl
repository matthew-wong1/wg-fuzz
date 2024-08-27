struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_2(~(~(-42104i)), Struct_1(!(18259i <= (arg_0.e | arg_0.e)), 32666u, !select(!arg_2.c, !arg_2.c, arg_0.c), arg_0.d, ~arg_2.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(174f))), _wgslsmith_f_op_f32(f32(-1f) * -1450f), _wgslsmith_div_f32(-863f, _wgslsmith_f_op_f32(f32(-1f) * -677f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, 1351f, arg_2.d, -1000f)))))), Struct_1(arg_2.a, 1u, !select(vec2<bool>(arg_0.a, true), !arg_2.c, true), _wgslsmith_f_op_f32(-933f + _wgslsmith_f_op_f32(arg_2.d * _wgslsmith_f_op_f32(max(arg_2.d, -299f)))), _wgslsmith_div_i32(-6971i, arg_1.x)));
    var var_1 = !vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.d + arg_2.d) * -207f) != _wgslsmith_f_op_f32(-1f), all(select(select(vec4<bool>(false, arg_0.c.x, arg_0.a, var_0.d.a), vec4<bool>(true, arg_0.a, false, arg_0.a), true), vec4<bool>(arg_0.a, true, false, true), true)), all(!select(vec4<bool>(false, arg_0.c.x, true, arg_2.c.x), vec4<bool>(false, arg_0.a, false, arg_0.a), var_0.d.c.x)));
    var_1 = select(vec3<bool>(arg_1.x != ~(~34292i), true != any(select(vec3<bool>(var_0.d.a, true, arg_0.a), vec3<bool>(true, true, true), vec3<bool>(true, var_1.x, arg_0.a))), (any(vec3<bool>(true, false, var_0.d.a)) == any(vec3<bool>(var_0.b.c.x, false, false))) & (arg_2.b != u_input.c.x)), vec3<bool>(var_1.x, var_1.x, !any(select(vec2<bool>(arg_2.c.x, arg_2.a), vec2<bool>(arg_2.a, true), var_0.b.c))), select(vec3<bool>(!all(vec2<bool>(false, true)), all(select(vec4<bool>(true, var_0.d.a, arg_0.c.x, true), vec4<bool>(arg_2.a, true, false, var_1.x), vec4<bool>(false, var_0.d.a, arg_0.a, arg_2.c.x))), select(var_1.x, var_0.b.a, arg_2.a) && false), vec3<bool>(all(!vec4<bool>(arg_2.c.x, var_1.x, false, false)), true, true), select(select(vec3<bool>(true, arg_0.c.x, true), vec3<bool>(var_0.d.a, true, var_0.b.a), vec3<bool>(arg_2.c.x, false, var_1.x)), !vec3<bool>(true, arg_2.c.x, arg_2.a), select(!vec3<bool>(arg_2.c.x, var_0.d.c.x, arg_2.a), select(vec3<bool>(false, true, true), vec3<bool>(false, false, arg_2.a), vec3<bool>(arg_2.c.x, false, false)), select(vec3<bool>(true, arg_2.a, var_1.x), vec3<bool>(var_1.x, false, var_0.b.a), arg_0.a)))));
    var var_2 = Struct_1(arg_2.c.x, var_0.d.b, vec2<bool>(true, !arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.d))), ~1i);
    let var_3 = -_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(arg_0.e >> (arg_2.b % 32u), -1i), firstLeadingBit(_wgslsmith_clamp_i32(-3501i, var_0.d.e, -19011i)), 2240i), reverseBits(vec3<i32>(-var_2.e, -1i >> (arg_0.b % 32u), 47543i | arg_0.e)));
    return ~(~var_2.e);
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_div_vec2_u32(u_input.c.zx, select(u_input.c.zw, arg_0, true));
    var var_1 = Struct_1(false, u_input.c.x, vec2<bool>(true, true), _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(-1180f, 4003f)), func_3(Struct_1(true, _wgslsmith_mod_u32(~var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.c.x), vec3<u32>(u_input.c.x, 41315u, arg_0.x))), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1370f * -1677f)), 13829i), _wgslsmith_mult_vec3_i32(~(-vec3<i32>(26932i, 27046i, u_input.a.x)), vec3<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), u_input.a.ww), u_input.a.x)), Struct_1(false, countOneBits(4294967295u), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(trunc(1047f)))), min(u_input.b, u_input.b))));
    let var_2 = Struct_1(false, var_1.b, var_1.c, var_1.d, ~max(-1i, u_input.b));
    let var_3 = Struct_2(firstLeadingBit(~(~var_1.e >> (min(0u, var_1.b) % 32u))), var_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d, 407f, var_1.d, var_1.d))))), Struct_1(any(vec2<bool>(all(vec4<bool>(true, false, var_1.a, var_2.c.x)), true)), var_0.x, select(select(var_2.c, select(vec2<bool>(var_1.a, false), vec2<bool>(true, var_2.c.x), var_2.a), var_1.c.x), var_1.c, !vec2<bool>(var_2.a, true)), _wgslsmith_f_op_f32(-1229f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1005f, 413f)))), abs(_wgslsmith_mult_i32(countOneBits(var_2.e), ~18261i))));
    var_1 = var_2;
    return Struct_1(var_3.b.a, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_div_vec4_u32(u_input.c, min(u_input.c, vec4<u32>(17579u, 1u, 15109u, var_2.b)))), firstTrailingBit(select(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(arg_0.x, arg_0.x, 1u, 0u)), 0u >> (1u % 32u), any(vec2<bool>(true, var_1.c.x))))), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.x)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(~(-32514i), func_3(Struct_1(var_3.b.a, 34757u, var_1.c, 871f, var_2.e), u_input.a.xyx, var_3.d)), -1i));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(arg_1.c.wxx, arg_1.c.zyx)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.c.x, arg_1.b.d, arg_1.d.d), _wgslsmith_f_op_vec3_f32(-arg_0.c.yxy))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.c.xzw + arg_0.c.zzx) - arg_1.c.wwx))), vec3<bool>(all(!vec3<bool>(false, arg_1.b.a, true)), all(!vec4<bool>(arg_0.d.a, true, arg_1.d.c.x, arg_0.b.a)), !arg_1.d.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.d, arg_0.d.d, -483f)) - arg_1.c.yzz), arg_0.c.wxy)))));
    var var_1 = Struct_1(arg_0.d.a || !(true & any(arg_1.b.c)), arg_0.d.b, !arg_1.d.c, arg_0.d.d, -(~(arg_1.b.e ^ arg_0.d.e)) & -_wgslsmith_dot_vec3_i32(min(u_input.a.ywy, u_input.a.yyz), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -22429i, arg_0.a), u_input.a.xyy)));
    var_1 = Struct_1(any(select(select(select(vec3<bool>(true, arg_0.b.a, true), vec3<bool>(true, true, var_1.a), vec3<bool>(true, false, arg_1.b.c.x)), select(vec3<bool>(false, var_1.c.x, arg_1.d.a), vec3<bool>(true, true, arg_1.b.a), vec3<bool>(true, arg_0.b.a, false)), select(vec3<bool>(var_1.c.x, true, false), vec3<bool>(var_1.c.x, false, true), arg_0.b.a)), vec3<bool>(true, true, true), !(!vec3<bool>(false, true, arg_0.d.a)))), countOneBits(4294967295u), vec2<bool>(false, !(!select(arg_1.b.c.x, arg_1.b.a, arg_0.b.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-502f * _wgslsmith_f_op_f32(ceil(1000f)))) + _wgslsmith_f_op_f32(round(248f))), -35570i);
    var var_2 = vec3<i32>(firstLeadingBit(func_3(arg_1.b, vec3<i32>(1i, max(17255i, arg_1.d.e), ~u_input.b), Struct_1(arg_0.d.c.x, 24610u, select(var_1.c, vec2<bool>(false, false), vec2<bool>(true, false)), _wgslsmith_f_op_f32(abs(-546f)), ~47923i))), _wgslsmith_div_i32(firstTrailingBit(28363i >> (u_input.c.x % 32u)), i32(-1i) * -arg_1.d.e), ~(_wgslsmith_mult_i32(max(var_1.e, var_1.e), max(-2467i, arg_0.d.e)) ^ -16466i));
    var var_3 = vec3<bool>(func_2(_wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.c.wx, u_input.c.yw), ~(~vec2<u32>(60072u, var_1.b)))).a, all(!vec4<bool>(var_1.a, false, var_1.c.x, arg_1.b.c.x)) && arg_0.b.a, all(arg_1.d.c));
    return Struct_1(true, ~0u, select(var_1.c, !select(vec2<bool>(arg_1.b.a, true), !vec2<bool>(var_3.x, true), arg_0.b.c), !(!(!vec2<bool>(var_1.a, true)))), var_1.d, countOneBits(countOneBits(-(~(-31320i)))));
}

fn func_1() -> vec2<bool> {
    var var_0 = func_4(Struct_2(1i, func_2(~(~vec2<u32>(u_input.c.x, u_input.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1420f, -678f, -555f, -896f), vec4<f32>(-375f, -628f, -1050f, -733f), true)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-507f, 809f, 243f, 336f)))))), func_2(~u_input.c.xx)), Struct_2(~6898i, func_2(max(firstTrailingBit(vec2<u32>(u_input.c.x, u_input.c.x)), u_input.c.wz)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(416f, -827f, 175f, 1837f), vec4<f32>(177f, -809f, -704f, -1000f))), vec4<f32>(1594f, 981f, 1000f, 352f), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)))))), func_2(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.c.x, 1500u), u_input.c.zz ^ vec2<u32>(u_input.c.x, u_input.c.x), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.xy)))));
    var_0 = func_2(vec2<u32>(var_0.b, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(41624u, var_0.b, 21048u, var_0.b), u_input.c), ~u_input.c & ~u_input.c)));
    var var_1 = min(~reverseBits(-(~var_0.e)), var_0.e);
    var_1 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b, func_4(Struct_2(var_0.e, Struct_1(true, u_input.c.x, vec2<bool>(true, var_0.c.x), var_0.d, 1i), vec4<f32>(-1000f, 732f, -327f, var_0.d), Struct_1(var_0.a, u_input.c.x, vec2<bool>(var_0.c.x, var_0.a), var_0.d, -1i)), Struct_2(1943i, Struct_1(var_0.a, var_0.b, var_0.c, var_0.d, -6912i), vec4<f32>(478f, -544f, -836f, 1002f), Struct_1(var_0.a, 0u, var_0.c, -655f, var_0.e))).e ^ -32948i), select(-_wgslsmith_div_i32(var_0.e, -2147483647i), -(var_0.e ^ 22848i), var_0.a)), -var_0.e, 9042i);
    var var_2 = false;
    return !select(vec2<bool>(var_0.a, false || !var_0.c.x), var_0.c, var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(((_wgslsmith_dot_vec4_i32(vec4<i32>(-32357i, -40857i, -1i, 0i), vec4<i32>(1i, u_input.b, u_input.a.x, 32407i)) == -2147483647i) && true) | (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(1u, u_input.c.x, u_input.c.x)) >= ~(~u_input.c.x)), 24849u, vec2<bool>(true, true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1140f, 345f)))))), _wgslsmith_clamp_i32(0i, -38292i, _wgslsmith_add_i32(i32(-1i) * -25492i, ~_wgslsmith_sub_i32(u_input.b, 2147483647i))));
    var_0 = Struct_1(any(select(var_0.c, select(!vec2<bool>(var_0.a, true), vec2<bool>(true, true), var_0.c), select(vec2<bool>(true, var_0.c.x), vec2<bool>(false, true), func_1()))), ~46655u, vec2<bool>(u_input.c.x == _wgslsmith_mod_u32(~1u, 23854u & var_0.b), !(!var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.d, _wgslsmith_f_op_f32(abs(1000f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.d * var_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(561f)))))), _wgslsmith_add_i32(2147483647i, -u_input.a.x));
    var_0 = func_2(~u_input.c.wy >> (((~vec2<u32>(var_0.b, u_input.c.x) ^ ~vec2<u32>(4294967295u, var_0.b)) << (_wgslsmith_div_vec2_u32(~u_input.c.xy, u_input.c.zx) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(-926f + var_0.d)), var_0.d));
    let var_2 = -(countOneBits(_wgslsmith_mod_i32(-2147483647i, -1i)) >> (~countOneBits(u_input.c.x) % 32u)) >> (0u % 32u);
    let var_3 = all(select(select(select(!vec3<bool>(true, false, var_0.c.x), vec3<bool>(false, true, var_0.a), var_0.a), !vec3<bool>(false, false, var_0.a), select(false, !var_0.a, false)), select(vec3<bool>(true, any(vec4<bool>(true, true, false, false)), var_0.a), vec3<bool>(var_0.c.x, var_2 == -2147483647i, all(var_0.c)), select(vec3<bool>(true, true, true), vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), var_0.a)), vec3<bool>(true, func_1().x, false)));
    var_0 = func_2(vec2<u32>(_wgslsmith_mult_u32(~firstLeadingBit(u_input.c.x), ~(~1u)), firstTrailingBit(u_input.c.x) | ~_wgslsmith_dot_vec3_u32(vec3<u32>(33631u, u_input.c.x, var_0.b), u_input.c.zzz)));
    var var_4 = ~((~u_input.a.x & -_wgslsmith_div_i32(var_2, u_input.a.x)) | var_2);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -u_input.a, vec3<u32>(0u, func_2(~(u_input.c.yw & u_input.c.yz)).b, ~(~9840u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -3143f), -256f, func_2(vec2<u32>(u_input.c.x, 26004u)).d) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2054f, var_0.d, var_0.d, -1461f) * vec4<f32>(var_0.d, -274f, -1208f, -1230f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1860f - 975f))) + var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -758f)), u_input.c.x);
}

