struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: bool,
    d: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec3<f32>) -> bool {
    var var_0 = ~vec4<i32>(_wgslsmith_sub_i32(1639i, u_input.a), _wgslsmith_mult_i32(u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x ^ -21727i, 6346i, u_input.a)), firstTrailingBit(_wgslsmith_sub_i32(-1i, u_input.b) ^ (u_input.b >> (u_input.d.x % 32u))), min(firstTrailingBit(2147483647i), u_input.c.x) >> (abs(~12243u) % 32u));
    var_0 = vec4<i32>(_wgslsmith_mod_i32(-56672i, ~(u_input.a | u_input.c.x)) & -u_input.c.x, -(~var_0.x), var_0.x, _wgslsmith_add_i32(var_0.x << (u_input.d.x % 32u), u_input.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_2.xy);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-257f, -839f)))), select(vec2<bool>(any(vec3<bool>(true, false, arg_1.x)), true), vec2<bool>(arg_1.x, true), select(arg_1.yz, vec2<bool>(arg_1.x, true), !arg_1.ww)))));
    var_2 = vec2<f32>(var_1.x, 1000f);
    return select(false, select(arg_1.x, 1u < _wgslsmith_clamp_u32(4294967295u, u_input.d.x | 0u, firstLeadingBit(1u)), false), _wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 1i, -2147483647i, 2147483647i), vec4<i32>(u_input.c.x, -15083i, -1i, 2147483647i)), reverseBits(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)) | ~vec4<i32>(u_input.a, -1025i, 0i, u_input.c.x)) != _wgslsmith_dot_vec4_i32(firstTrailingBit(-vec4<i32>(u_input.a, var_0.x, -2147483647i, u_input.c.x)), vec4<i32>(var_0.x, 2147483647i, var_0.x, u_input.c.x) >> (vec4<u32>(79968u, 35223u, 1u, 58678u) % vec4<u32>(32u))));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_4(Struct_3(Struct_1(vec4<bool>(false, func_3(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec3<f32>(1291f, -519f, -303f)), true, u_input.d.x >= u_input.d.x), ~firstTrailingBit(vec4<i32>(0i, u_input.b, u_input.c.x, 5947i)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false))), Struct_3(Struct_1(vec4<bool>(true, true, true, true), ~firstTrailingBit(vec4<i32>(-2147483647i, u_input.b, 23565i, -2147483647i)), vec4<bool>(any(vec4<bool>(true, false, false, false)), true, true, func_3(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec3<f32>(249f, -990f, -1388f))))), any(vec4<bool>(true, true, true, true)) | !func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec3<f32>(233f, -897f, 123f)), ~53518u);
    return Struct_4(var_0.a, Struct_3(var_0.a.a), true, ~var_0.d);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_4) -> Struct_1 {
    return Struct_1(!arg_2.a.a.c, -countOneBits(vec4<i32>(_wgslsmith_mod_i32(u_input.b, arg_0), reverseBits(u_input.c.x), _wgslsmith_add_i32(arg_0, u_input.a), u_input.c.x)), arg_2.b.a.a);
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_add_vec2_u32(u_input.d.zy, u_input.d.yz | vec2<u32>(4294967295u, 0u));
    let var_1 = select(all(select(vec4<bool>(true, u_input.a >= u_input.c.x, all(vec2<bool>(false, false)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false), true), all(vec3<bool>(false, true, true)))), false, true);
    var var_2 = func_4(u_input.b, var_1, func_2());
    var var_3 = !vec4<bool>(var_2.c.x, !var_2.c.x, false, false);
    var var_4 = func_2().b;
    return !select(vec2<bool>(true, var_2.c.x), func_4(0i, true, Struct_4(Struct_3(Struct_1(vec4<bool>(true, false, var_2.a.x, var_1), vec4<i32>(-25606i, -1i, 30570i, var_2.b.x), var_4.a.c)), func_2().a, any(var_2.c), _wgslsmith_add_u32(0u, var_0.x))).a.xx, func_4(2147483647i, true, func_2()).c.wy);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = -1514f;
    let var_1 = true;
    var var_2 = ~vec2<i32>(4815i, -(arg_1.a.a.b.x & arg_1.b.a.b.x));
    var var_3 = false;
    var_2 = ~select(-vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_2.x), vec2<i32>(arg_1.a.a.b.x, arg_1.b.a.b.x))), ~_wgslsmith_sub_vec2_i32(~arg_1.b.a.b.zw, ~arg_1.a.a.b.ww), true);
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(u_input.c.x, -select(countOneBits(u_input.c), vec2<i32>(u_input.a, u_input.a) << (u_input.d.yx % vec2<u32>(32u)), vec2<bool>(true, true)), select(vec2<bool>(u_input.a > -48912i, true), vec2<bool>(true, all(vec3<bool>(true, true, false))), !func_1()), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -119f), 936f)), Struct_4(Struct_3(Struct_1(vec4<bool>(false, true, false, true), ~vec4<i32>(10049i, u_input.b, u_input.a, 6055i), vec4<bool>(false, false, false, false))), Struct_3(Struct_1(func_4(-13761i, true, Struct_4(Struct_3(Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(u_input.c.x, u_input.b, u_input.c.x, u_input.a), vec4<bool>(false, false, true, true))), Struct_3(Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(u_input.b, 54871i, u_input.a, -2147483647i), vec4<bool>(false, true, false, true))), true, 0u)).a, vec4<i32>(u_input.c.x, u_input.c.x, 28100i, u_input.c.x) ^ vec4<i32>(-1i, 53428i, u_input.c.x, 2147483647i), func_4(-2147483647i, false, Struct_4(Struct_3(Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(58176i, 0i, 26938i, 1i), vec4<bool>(true, true, false, false))), Struct_3(Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(-10546i, u_input.a, -2147483647i, 2147483647i), vec4<bool>(false, false, false, true))), true, 80700u)).a)), true, u_input.d.x ^ ~(1u << (u_input.d.x % 32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(502f, 221f)))) - vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(151f - -781f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(396f))))), !func_2().a.a.a.xz);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(270f, -2604f)), _wgslsmith_f_op_f32(1450f + -326f), var_0.a.c.x)), _wgslsmith_f_op_f32(-501f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 919f, 117f)));
    let var_2 = Struct_1(vec4<bool>(!(!var_0.a.a.x), !all(vec4<bool>(true, true, true, var_0.a.a.x)), var_0.a.c.x, func_1().x || true), firstTrailingBit(select(~vec4<i32>(-10614i, var_0.a.b.x, var_0.a.b.x, 1i), vec4<i32>(var_0.a.b.x, u_input.c.x, u_input.a, var_0.a.b.x) << (max(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 6395u), vec4<u32>(20840u, 4294967295u, 0u, 0u)) % vec4<u32>(32u)), true)), !func_5(Struct_2(u_input.a, _wgslsmith_sub_vec2_i32(u_input.c, u_input.c), select(var_0.a.c.xw, var_0.a.c.yx, var_0.a.c.xw), _wgslsmith_f_op_vec2_f32(-var_1.xz)), func_2(), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(var_1.yy)))), select(!vec2<bool>(var_0.a.c.x, true), var_0.a.a.wz, func_4(-2147483647i, var_0.a.c.x, Struct_4(Struct_3(Struct_1(vec4<bool>(true, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), var_0.a.b, vec4<bool>(false, true, var_0.a.a.x, true))), var_0, var_0.a.c.x, u_input.d.x)).c.x)).a.a);
    let var_3 = (reverseBits(_wgslsmith_dot_vec3_i32(var_2.b.xww & vec3<i32>(u_input.c.x, u_input.a, var_2.b.x), vec3<i32>(u_input.c.x, -45939i, 1i))) ^ select(-1i, -27155i, !(-2147483647i >= var_0.a.b.x))) ^ (var_2.b.x << (~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x), u_input.d.x, ~1u) % 32u));
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_div_f32(491f, var_1.x))), _wgslsmith_f_op_f32(670f + var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-357f + _wgslsmith_f_op_f32(sign(-1000f))), -628f)))));
    var_4 = var_1.x;
    let var_5 = Struct_4(func_5(Struct_2(1i, var_2.b.yx, var_0.a.c.wz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zz) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)))), func_2(), _wgslsmith_f_op_vec2_f32(sign(var_1.xw)), vec2<bool>(false, any(func_4(var_2.b.x, true, Struct_4(var_0, var_0, true, 6206u)).a.xw))), Struct_3(Struct_1(!vec4<bool>(var_2.c.x, false, true, false), vec4<i32>(~var_3, var_3, var_3, i32(-1i) * -53i), vec4<bool>(var_2.a.x, true, func_5(Struct_2(-8036i, vec2<i32>(u_input.c.x, u_input.a), var_0.a.a.wx, var_1.xy), Struct_4(Struct_3(var_2), Struct_3(Struct_1(var_2.a, vec4<i32>(-2147483647i, -5270i, -20696i, var_3), vec4<bool>(true, true, var_0.a.a.x, var_0.a.a.x))), true, 51391u), var_1.yx, vec2<bool>(var_2.a.x, var_0.a.a.x)).a.c.x, var_2.a.x && var_0.a.c.x))), !select(var_2.c.x, true, var_2.a.x), u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-15124i, 0i), var_1.x, firstTrailingBit(var_5.a.a.b.wzx), vec3<i32>(var_2.b.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-32561i, var_3), var_2.b.x), 5666i));
}

