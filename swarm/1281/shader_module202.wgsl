struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<i32> {
    var var_0 = 1000f;
    let var_1 = Struct_2(Struct_1(vec3<i32>(~(-2147483647i), 1i, ~max(0i, u_input.e.x)), ~(_wgslsmith_mult_vec4_i32(vec4<i32>(-17437i, u_input.a.x, u_input.c.x, u_input.e.x), vec4<i32>(u_input.e.x, u_input.a.x, u_input.a.x, u_input.a.x)) & ~u_input.a), countOneBits(u_input.e)), select(!vec3<bool>(true, true, any(vec2<bool>(true, true))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, false), true), vec3<bool>(all(vec2<bool>(false, false)), 30148i < u_input.a.x, true), vec3<bool>(all(vec3<bool>(true, false, true)), true, false)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)))), Struct_1(vec3<i32>(1i, countOneBits(_wgslsmith_mod_i32(u_input.a.x, u_input.e.x)), 0i), u_input.a, vec4<i32>(max(u_input.c.x, -1897i), -13976i, firstLeadingBit(2147483647i), ~(-u_input.a.x))), firstLeadingBit(abs(firstTrailingBit(~u_input.d))), 20703i);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -111f);
    var var_2 = !select(select(!select(vec4<bool>(var_1.b.x, var_1.b.x, true, var_1.b.x), vec4<bool>(var_1.b.x, var_1.b.x, false, false), vec4<bool>(var_1.b.x, true, var_1.b.x, false)), select(vec4<bool>(var_1.b.x, false, var_1.b.x, true), !vec4<bool>(var_1.b.x, true, var_1.b.x, true), true), !select(vec4<bool>(var_1.b.x, var_1.b.x, false, var_1.b.x), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, true), var_1.b.x)), select(vec4<bool>(true, true, false, true), select(!vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), select(vec4<bool>(true, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(false, false, false, false), true), all(vec4<bool>(var_1.b.x, true, true, false))), all(select(var_1.b, vec3<bool>(false, var_1.b.x, var_1.b.x), var_1.b.x))), select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.b.x || true, true, true | var_1.b.x, all(vec4<bool>(false, var_1.b.x, false, false))), select(vec4<bool>(var_1.b.x, false, var_1.b.x, var_1.b.x), vec4<bool>(var_1.b.x, var_1.b.x, true, var_1.b.x), select(vec4<bool>(false, false, var_1.b.x, false), vec4<bool>(var_1.b.x, var_1.b.x, false, false), true))));
    let var_3 = vec3<i32>(u_input.e.x, ~var_1.c.c.x, _wgslsmith_sub_i32(~1i, -var_1.c.c.x)) << (_wgslsmith_add_vec3_u32(~(~(vec3<u32>(4294967295u, u_input.d, 1u) & vec3<u32>(58527u, 31251u, u_input.b.x))), vec3<u32>(~41025u, max(4294967295u, 8828u), 1u)) % vec3<u32>(32u));
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> vec2<u32> {
    var var_0 = ~arg_1.d;
    var var_1 = arg_1.a;
    var_0 = _wgslsmith_mod_u32(83910u, countOneBits(~(~(~41713u))));
    var var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(~arg_1.d, u_input.d, _wgslsmith_add_u32(_wgslsmith_add_u32(0u, u_input.d), 4294967295u)), ~_wgslsmith_dot_vec2_u32(u_input.b & u_input.b, u_input.b), ~0u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.d, 0u, ~u_input.b.x), vec3<u32>(arg_1.d, ~arg_1.d, ~0u), ~(~vec3<u32>(arg_1.d, 51355u, u_input.d))));
    var_2 = abs(vec3<u32>(u_input.d | _wgslsmith_mod_u32(1u, min(0u, var_2.x)), arg_1.d, 13786u));
    return u_input.b;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: f32) -> vec4<i32> {
    let var_0 = func_4(Struct_1(~func_3(), u_input.e, vec4<i32>(select(1i ^ u_input.e.x, min(0i, 27187i), !arg_1.x), 7069i, ~_wgslsmith_dot_vec3_i32(u_input.e.zyz, vec3<i32>(arg_0, u_input.c.x, 54195i)), -35210i)), Struct_2(Struct_1(select(vec3<i32>(u_input.c.x, 1i, -6262i), abs(vec3<i32>(u_input.e.x, 1i, u_input.c.x)), all(vec4<bool>(true, arg_1.x, arg_1.x, true))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, arg_0, u_input.a.x, 0i), vec4<i32>(28388i, arg_0, -2147483647i, 1i)), vec4<i32>(arg_0, u_input.c.x, max(-56314i, u_input.c.x), abs(-36i))), select(vec3<bool>(arg_1.x, true, u_input.d > u_input.b.x), !(!vec3<bool>(arg_1.x, false, arg_1.x)), arg_1.x), Struct_1(~reverseBits(vec3<i32>(2541i, u_input.e.x, arg_0)), abs(-vec4<i32>(0i, 0i, arg_0, arg_0)), vec4<i32>(abs(2147483647i), func_3().x, u_input.e.x >> (u_input.d % 32u), _wgslsmith_clamp_i32(u_input.e.x, 14058i, 1i))), u_input.b.x, 0i), Struct_1(vec3<i32>(~(~(-1i)), firstLeadingBit(arg_0) & -2147483647i, ~(-2147483647i)), vec4<i32>(i32(-1i) * -2147483647i, 2147483647i >> (_wgslsmith_mod_u32(u_input.b.x, 13441u) % 32u), u_input.e.x, 1i), u_input.e), _wgslsmith_f_op_f32(-arg_2));
    let var_1 = vec2<u32>(~(~0u), var_0.x);
    let var_2 = 2241f;
    var var_3 = Struct_2(Struct_1(~(~(~u_input.a.zwz)), vec4<i32>(-1i, 0i, ~(-arg_0), abs(arg_0) & _wgslsmith_mod_i32(80346i, 1i)), vec4<i32>(-u_input.c.x & 1i, ~(-10118i), ~max(arg_0, u_input.c.x), i32(-1i) * -arg_0)), select(vec3<bool>(false, arg_1.x, !(u_input.b.x >= 16736u)), !select(!vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(true, true, true), false), !select(select(vec3<bool>(false, arg_1.x, true), vec3<bool>(false, arg_1.x, arg_1.x), true), select(vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(false, true, arg_1.x), vec3<bool>(arg_1.x, true, arg_1.x)), select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(arg_1.x, arg_1.x, true), false))), Struct_1(vec3<i32>(u_input.a.x, arg_0, -11307i), _wgslsmith_mult_vec4_i32(u_input.a, abs(-u_input.e)), vec4<i32>(-abs(25361i), arg_0, 29230i, min(-arg_0, select(-784i, u_input.e.x, arg_1.x)))), firstLeadingBit(func_4(Struct_1(vec3<i32>(-25473i, u_input.c.x, u_input.e.x), vec4<i32>(u_input.c.x, -2147483647i, arg_0, u_input.e.x), u_input.a), Struct_2(Struct_1(vec3<i32>(arg_0, 1i, 1i), u_input.e, vec4<i32>(arg_0, u_input.e.x, -2147483647i, 14253i)), vec3<bool>(false, false, arg_1.x), Struct_1(u_input.e.xxy, vec4<i32>(u_input.c.x, -424i, 2147483647i, u_input.e.x), u_input.e), 17062u, -4683i), Struct_1(vec3<i32>(arg_0, 1i, u_input.c.x), vec4<i32>(-23616i, arg_0, u_input.a.x, arg_0), vec4<i32>(-2147483647i, u_input.a.x, arg_0, -23985i)), _wgslsmith_f_op_f32(-143f * 237f)).x | abs(_wgslsmith_sub_u32(var_1.x, var_0.x))), -13782i);
    var_3 = Struct_2(var_3.c, !var_3.b, var_3.c, ~u_input.b.x, -1i);
    return vec4<i32>(abs(_wgslsmith_mod_i32(arg_0, ~77354i)), _wgslsmith_dot_vec4_i32(~countOneBits(abs(u_input.a)), u_input.a), arg_0, 0i);
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> bool {
    var var_0 = Struct_1(abs(vec3<i32>(_wgslsmith_add_i32(arg_0.e | arg_0.c.c.x, 0i), 2147483647i, u_input.c.x)), vec4<i32>(-1i, 63188i, countOneBits(~arg_0.a.a.x) & _wgslsmith_sub_i32(u_input.c.x, firstLeadingBit(arg_1)), _wgslsmith_add_i32(u_input.c.x, 1i)), arg_0.a.c);
    var var_1 = true;
    var var_2 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-func_2(u_input.c.x, vec2<bool>(false, arg_0.b.x), -763f), min(vec4<i32>(14276i, arg_0.a.c.x, u_input.e.x, arg_0.a.a.x), arg_0.c.c) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 21807u, u_input.b.x, arg_0.d), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_div_i32(~var_0.a.x, 41703i)), -10209i, arg_0.e);
    var var_3 = _wgslsmith_mod_vec4_u32(~vec4<u32>(~(~arg_0.d), arg_0.d, abs(~arg_0.d), max(arg_0.d, ~u_input.d)), countOneBits(vec4<u32>(82813u, arg_0.d, firstTrailingBit(4294967295u), 0u) >> (~vec4<u32>(1u, 22246u, arg_0.d, u_input.d) % vec4<u32>(32u))));
    var var_4 = Struct_3(!arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2031f)) + -1000f), -1000f) * -1200f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(263f * -553f), -198f, _wgslsmith_f_op_f32(-407f - -970f), _wgslsmith_f_op_f32(ceil(-815f))) * vec4<f32>(_wgslsmith_f_op_f32(floor(-579f)), 1f, _wgslsmith_f_op_f32(-1763f * -446f), _wgslsmith_f_op_f32(-503f * -141f))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f)))), !(!select(vec2<bool>(arg_0.b.x, arg_0.b.x), !vec2<bool>(arg_0.b.x, arg_0.b.x), !vec2<bool>(arg_0.b.x, true))));
    return countOneBits(arg_1) == reverseBits(-6452i);
}

fn func_5(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(662f, -1983f, false)), 1072f, -1571f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-653f, 1266f, -531f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(554f, 570f, -940f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 1838f, 929f))))))));
    return Struct_1(u_input.e.ywx, u_input.e, -(u_input.a | u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(!any(vec4<bool>(func_1(Struct_2(Struct_1(u_input.a.zyw, vec4<i32>(u_input.c.x, u_input.a.x, -1641i, u_input.e.x), u_input.a), vec3<bool>(false, false, true), Struct_1(u_input.a.zxy, vec4<i32>(u_input.c.x, 1i, u_input.c.x, u_input.a.x), vec4<i32>(u_input.a.x, -40094i, 0i, u_input.a.x)), 59256u, u_input.e.x), u_input.e.x), true, true, u_input.a.x >= u_input.c.x)));
    var_0 = Struct_1(_wgslsmith_div_vec3_i32(u_input.a.ywz, -(vec3<i32>(-1i) * -var_0.c.yyw)), u_input.e, vec4<i32>(max(var_0.a.x, func_5(func_1(Struct_2(Struct_1(vec3<i32>(var_0.b.x, var_0.b.x, -29730i), u_input.a, vec4<i32>(4357i, u_input.e.x, var_0.b.x, 21269i)), vec3<bool>(false, false, false), Struct_1(vec3<i32>(u_input.e.x, 2448i, 11130i), var_0.c, vec4<i32>(var_0.a.x, -84827i, 11137i, -2147483647i)), u_input.b.x, 0i), -2147483647i)).a.x), 0i, ~var_0.c.x, 880i));
    var var_1 = Struct_2(Struct_1(abs(u_input.e.xxz), min(var_0.b, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 9472i, var_0.c.x, var_0.c.x), u_input.a)), u_input.e), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !all(vec2<bool>(false, false))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), false)), func_5(false), 41992u, ~var_0.a.x);
    var var_2 = ~(u_input.b ^ _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.b, ~vec2<u32>(var_1.d, 4294967295u)), firstLeadingBit(u_input.b) >> (abs(vec2<u32>(var_1.d, var_1.d)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(16808u, var_1.d), u_input.b, vec2<u32>(2273u, 4294967295u))));
    var var_3 = func_3();
    var_3 = ~reverseBits(~u_input.a.xyy);
    var_3 = -_wgslsmith_mod_vec3_i32(vec3<i32>(func_2(var_0.a.x, vec2<bool>(true, true), -406f).x, var_1.a.c.x, i32(-1i) * -11814i), max(firstLeadingBit(var_0.c.yzz), vec3<i32>(u_input.c.x, var_3.x, 23436i)) | vec3<i32>(var_1.c.b.x, func_2(u_input.e.x, var_1.b.yy, 957f).x, _wgslsmith_mod_i32(var_1.c.b.x, -2147483647i)));
    var var_4 = !(!vec4<bool>(var_1.b.x && !var_1.b.x, var_1.b.x, false, true));
    let var_5 = min(vec3<u32>(~var_1.d, ~30036u, select(_wgslsmith_clamp_u32(select(33425u, var_2.x, var_1.b.x), var_1.d, u_input.d), _wgslsmith_mod_u32(~47766u, firstTrailingBit(var_1.d)), true)), ~_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(var_2.x, 51297u, 11518u)), vec3<u32>(53260u, var_1.d ^ 101501u, ~var_1.d), ~vec3<u32>(32944u, var_2.x, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a.x, 0i), _wgslsmith_mult_i32(8974i >> (max(var_1.d, 4294967295u) % 32u), -var_1.c.c.x), var_1.c.a.x), max(~(vec2<u32>(u_input.b.x, u_input.b.x) << ((u_input.b & u_input.b) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_clamp_u32(36439u, var_2.x, u_input.d) ^ firstLeadingBit(u_input.d), var_1.d)), var_1.d, -564f, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(2204f * 1455f))), -771f, true)), -343f, _wgslsmith_f_op_f32(-621f - 1f)));
}

