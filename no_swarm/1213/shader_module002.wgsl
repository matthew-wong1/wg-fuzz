struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1711f;

var<private> global1: array<u32, 13> = array<u32, 13>(0u, 1u, 42422u, 58862u, 4294967295u, 1u, 26445u, 80168u, 1u, 1u, 95206u, 1u, 94630u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4) -> i32 {
    let var_0 = _wgslsmith_mod_i32(-(~(-(~u_input.a))), arg_0.d.a.d);
    var var_1 = ~(~u_input.d ^ vec3<u32>(~global1[_wgslsmith_index_u32(arg_0.c.a.x, 13u)], 1u, 1u << (1u % 32u))) | ~countOneBits(countOneBits(vec3<u32>(u_input.d.x, arg_0.c.a.x, arg_0.d.c) << (vec3<u32>(44447u, u_input.c.x, global1[_wgslsmith_index_u32(1u, 13u)]) % vec3<u32>(32u))));
    let var_2 = Struct_3(arg_0.c.a, _wgslsmith_f_op_vec4_f32(select(arg_0.c.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b - vec4<f32>(arg_0.d.d, arg_0.d.a.a, arg_0.d.d, -123f)))), vec4<bool>(true, any(vec2<bool>(true, true)), false, any(select(vec3<bool>(true, arg_0.d.a.c, false), vec3<bool>(arg_0.d.a.c, arg_0.c.c, false), vec3<bool>(arg_0.d.a.c, arg_0.c.c, arg_0.d.a.c)))))), true);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1068f, arg_0.a))), vec2<f32>(_wgslsmith_f_op_f32(var_2.b.x + -552f), _wgslsmith_f_op_f32(f32(-1f) * -510f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b.zz), var_2.b.ww))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_2.b.x)))) * 963f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1907f)))));
    let var_4 = !all(!(!select(vec4<bool>(true, true, var_2.c, false), vec4<bool>(true, true, true, arg_0.c.c), arg_0.d.a.c)));
    return -25663i;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = ~(~_wgslsmith_div_i32(~reverseBits(0i), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-21885i, 7464i, arg_0)), ~vec3<i32>(-40547i, 46151i, u_input.e))));
    var_0 = min(_wgslsmith_mult_i32(func_3(Struct_4(-572f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-209f, 1000f, -1800f, -1696f)), Struct_3(vec2<u32>(0u, 75382u), vec4<f32>(1182f, arg_1.a, arg_1.a, arg_1.a), true), Struct_2(Struct_1(134f, -2147483647i, arg_1.c, u_input.e, arg_1.e), 4294967295u, arg_1.e, -1504f))), u_input.e), -1i);
    var_0 = _wgslsmith_mod_i32(firstLeadingBit(func_3(Struct_4(_wgslsmith_f_op_f32(402f + arg_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, 383f, 1677f, -1118f)), Struct_3(vec2<u32>(73574u, 4294967295u), vec4<f32>(arg_1.a, arg_1.a, 281f, -977f), true), Struct_2(arg_1, 4294967295u, 4294967295u, arg_1.a)))), -33209i);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-110f, arg_1.a, arg_1.a) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-433f, -853f, arg_1.a)))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-585f, arg_1.a, _wgslsmith_f_op_f32(round(-646f)))))));
    let var_2 = Struct_3(u_input.d.yy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1246f, _wgslsmith_f_op_f32(max(-525f, -507f)), _wgslsmith_f_op_f32(f32(-1f) * -542f), _wgslsmith_f_op_f32(f32(-1f) * -2921f)), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x - 1364f), _wgslsmith_f_op_f32(f32(-1f) * -1431f), 1000f)))), !(!(!(arg_1.c || false))));
    return var_1.x;
}

fn func_4(arg_0: f32) -> vec4<i32> {
    global1 = array<u32, 13>();
    global1 = array<u32, 13>();
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1220f)))) + _wgslsmith_f_op_f32(-arg_0))));
    var var_0 = _wgslsmith_clamp_i32(24166i, 0i, u_input.a);
    var var_1 = !(_wgslsmith_f_op_f32(sign(arg_0)) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), arg_0)));
    return vec4<i32>(-u_input.e, ~11076i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(firstTrailingBit(firstLeadingBit(u_input.e)), reverseBits(-2147483647i)), _wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(u_input.b, u_input.b, u_input.b), u_input.b)), ~max(reverseBits(-2147483647i), u_input.b.x));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec2<i32>, arg_3: vec4<u32>) -> f32 {
    global1 = array<u32, 13>();
    var var_0 = func_4(_wgslsmith_f_op_f32(func_2(arg_1, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(272f, 661f, false))), 1i, any(vec2<bool>(false, true)), -59058i, min(_wgslsmith_dot_vec2_u32(arg_3.ww, u_input.d.zx), select(arg_3.x, u_input.c.x, false))), 69877u)));
    var var_1 = 24832u;
    let var_2 = Struct_3(min(~(~(~vec2<u32>(0u, arg_3.x))), ~_wgslsmith_sub_vec2_u32(u_input.c & arg_3.xz, u_input.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-815f)) * 360f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(783f))), 1337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-554f)))) * vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1159f))), _wgslsmith_f_op_f32(-555f + _wgslsmith_f_op_f32(-694f + -1000f)), -254f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1012f) * 1312f))), true);
    var var_3 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_vec4_f32(select(var_2.b, _wgslsmith_div_vec4_f32(vec4<f32>(-132f, var_2.b.x, _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(select(var_2.b.x, -1182f, var_2.c))), _wgslsmith_f_op_vec4_f32(abs(var_2.b))), true)), Struct_3(vec2<u32>(global1[_wgslsmith_index_u32(70652u, 13u)], 8448u), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(1277f - var_2.b.x), -462f, _wgslsmith_f_op_f32(abs(var_2.b.x)), 832f))), true), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2196f, var_2.b.x) * 1f), arg_1, var_2.c || (var_2.b.x == var_2.b.x), ~var_0.x | 45271i, max(min(var_2.a.x, 0u), 4294967295u)), ~1u, arg_3.x, var_2.b.x));
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(0i >> (_wgslsmith_add_u32(reverseBits(1u << (global1[_wgslsmith_index_u32(u_input.d.x, 13u)] % 32u)), ~59863u) % 32u));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(895f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1630f)) + _wgslsmith_div_f32(-1753f, -1128f)))));
    let var_1 = _wgslsmith_sub_u32(~(~global1[_wgslsmith_index_u32(u_input.d.x, 13u)]) ^ (78464u | ((global1[_wgslsmith_index_u32(41814u, 13u)] >> (27390u % 32u)) ^ 15415u)), 19429u);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1352f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-185f + 1000f) + _wgslsmith_f_op_f32(1367f - 261f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(199f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1614f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_1, -28882i, u_input.b, _wgslsmith_mod_vec4_u32(vec4<u32>(var_1, global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(u_input.d.x, 13u)], global1[_wgslsmith_index_u32(33605u, 13u)]), vec4<u32>(41826u, u_input.d.x, u_input.c.x, 32078u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + 808f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(612f + -1000f), 196f, _wgslsmith_f_op_f32(ceil(1128f)), _wgslsmith_f_op_f32(230f + 159f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1795f, 2090f, -270f, -342f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-470f, 523f, -857f, -559f), vec4<f32>(1000f, 1077f, -1000f, -155f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(547f, 1341f, 1944f, -1258f)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false))))))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-879f * -275f))), ~func_3(Struct_4(-889f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, -2186f, -881f)), Struct_3(u_input.d.xz, vec4<f32>(var_2.x, var_2.x, var_2.x, 456f), false), Struct_2(Struct_1(var_2.x, 29729i, true, u_input.e, var_1), u_input.c.x, 1u, var_2.x))), select(any(vec2<bool>(true, true)), false, any(vec2<bool>(true, true))), 25891i, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32((u_input.d.x << (_wgslsmith_mod_u32(93584u, 2922u) % 32u)) & (1u ^ var_1), global1[_wgslsmith_index_u32(u_input.c.x, 13u)]), 13u)]);
    var_0 = _wgslsmith_mult_i32(countOneBits(-2147483647i), 0i);
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.a, var_2.x, -1000f, 488f), vec4<f32>(var_2.x, var_3.a, -2572f, 1225f))), vec4<f32>(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(23827u, 13u)], -15518i, vec2<i32>(5534i, -1i), vec4<u32>(0u, var_3.e, var_1, 0u))), _wgslsmith_f_op_f32(var_3.a - var_3.a), 1093f, _wgslsmith_f_op_f32(-var_2.x)), !select(vec4<bool>(var_3.c, var_3.c, false, true), vec4<bool>(true, var_3.c, true, var_3.c), var_3.c))) - vec4<f32>(311f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(521f - var_3.a) + -422f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -488f)), -1000f)));
    var var_4 = u_input.a;
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_add_u32(~66962u, ~var_1), 20510u, ~_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(var_3.e, u_input.d.x, u_input.c.x)) >> (42573u % 32u), 17782u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.a))) - var_2.x));
}

