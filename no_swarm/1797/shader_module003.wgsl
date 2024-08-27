struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(0u, 27386u, 17425u), vec3<u32>(34927u, 74154u, 4294967295u), vec3<u32>(14856u, 4294967295u, 0u), vec3<u32>(39401u, 8292u, 11081u), vec3<u32>(23374u, 66885u, 0u), vec3<u32>(0u, 4294967295u, 54571u), vec3<u32>(78309u, 39524u, 9531u), vec3<u32>(0u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 4119u), vec3<u32>(0u, 0u, 0u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(0u, 4294967295u, 76195u), vec3<u32>(38654u, 1u, 14909u), vec3<u32>(17254u, 1u, 53171u), vec3<u32>(0u, 34095u, 100258u), vec3<u32>(11045u, 11992u, 0u), vec3<u32>(4294967295u, 94422u, 28643u), vec3<u32>(0u, 58007u, 4294967295u), vec3<u32>(4294967295u, 0u, 49105u), vec3<u32>(0u, 24206u, 9630u), vec3<u32>(4294967295u, 0u, 32766u), vec3<u32>(8219u, 17683u, 80051u), vec3<u32>(80517u, 29058u, 1u), vec3<u32>(1u, 4294967295u, 23677u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(46789u, 0u, 0u), vec3<u32>(4294967295u, 445u, 24345u), vec3<u32>(60897u, 66627u, 140268u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4029u, 4294967295u, 35199u), vec3<u32>(23669u, 49954u, 15267u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(1i, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2042f, 749f, 1005f)) - vec3<f32>(1356f, -958f, 993f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2480f, 853f, -1641f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-537f, 1000f, -260f))), true)))));
    let var_1 = 0i;
    var_0 = Struct_1(abs(var_0.a), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(508f, var_0.b.x, var_0.b.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1568f), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(trunc(-213f))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.b)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b.x, -1485f, -201f)))))));
    let var_2 = select(select(select(vec4<bool>(all(vec4<bool>(true, false, true, true)), 34511u == u_input.d, select(false, false, true), any(vec4<bool>(false, false, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true))), vec4<bool>(true, var_0.a == 50582i, any(vec3<bool>(true, false, false)), false)), vec4<bool>(u_input.b < ~u_input.b, any(vec4<bool>(true, true, false, true)) | all(vec2<bool>(true, false)), true, !all(vec2<bool>(true, true))), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), true)), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), false), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true))));
    let var_3 = !select(var_2.yw, !vec2<bool>(!var_2.x, true), var_2.ww);
    return u_input.a.x & _wgslsmith_div_u32(48520u, ~u_input.b << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 28718u, 6330u, 1u) | vec4<u32>(1u, 31515u, u_input.a.x, 1u), ~vec4<u32>(6608u, u_input.b, u_input.d, 101982u)) % 32u));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: bool) -> vec4<bool> {
    let var_0 = Struct_1(((-u_input.e >> (func_3() % 32u)) >> (u_input.b % 32u)) & ~39115i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1000f, arg_0.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x))));
    global0 = array<vec3<u32>, 31>();
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, -1000f), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(973f - _wgslsmith_div_f32(arg_0.x, var_0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)) + arg_0.x)), vec2<bool>(false, arg_1.x)));
    let var_3 = select(~(-select(min(vec3<i32>(var_0.a, 1i, var_0.a), u_input.c.ywz), vec3<i32>(0i, 0i, var_0.a) ^ vec3<i32>(-14527i, 21835i, -2147483647i), arg_2)), select(select(vec3<i32>(u_input.c.x, var_0.a, var_1.a), max(countOneBits(vec3<i32>(var_0.a, 1i, u_input.c.x)), vec3<i32>(var_1.a, var_0.a, var_1.a) >> (vec3<u32>(u_input.a.x, u_input.b, 46378u) % vec3<u32>(32u))), !(!arg_1)), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(var_0.a, -1i, var_1.a)), vec3<i32>(var_1.a, 1i, var_1.a) << (global0[_wgslsmith_index_u32(0u, 31u)] % vec3<u32>(32u)), vec3<i32>(u_input.e, u_input.e, -7343i)) << (vec3<u32>(u_input.b, ~1u, ~4294967295u) % vec3<u32>(32u)), !(!select(vec3<bool>(arg_2, true, true), vec3<bool>(arg_2, false, false), true))), vec3<bool>(!all(!vec4<bool>(arg_2, true, arg_1.x, false)), all(arg_1), arg_0.x < -1547f));
    return !select(select(vec4<bool>(any(vec3<bool>(arg_2, true, false)), 1382f >= var_2.x, all(vec3<bool>(arg_1.x, false, true)), arg_2), vec4<bool>(false, true, arg_0.x != 431f, arg_1.x), any(!vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x))), !select(!vec4<bool>(true, arg_1.x, false, true), vec4<bool>(arg_1.x, arg_1.x, arg_2, true), false), select(!(!vec4<bool>(arg_2, true, arg_2, false)), !vec4<bool>(false, arg_2, false, arg_1.x), vec4<bool>(u_input.d > u_input.d, arg_1.x, false, false)));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = !(!vec4<bool>(_wgslsmith_add_u32(18413u, arg_0) == ~arg_0, true, true, true));
    var var_1 = select(!select(select(func_2(vec4<f32>(457f, 1257f, -830f, 567f), vec3<bool>(var_0.x, true, true), true), vec4<bool>(var_0.x, true, var_0.x, true), all(vec4<bool>(var_0.x, var_0.x, false, false))), !select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(true, false, true, false), true), vec4<bool>(u_input.e >= 2147483647i, !var_0.x, func_2(vec4<f32>(-439f, arg_2.b.x, 1263f, arg_2.b.x), vec3<bool>(true, false, var_0.x), var_0.x).x, !var_0.x)), select(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(!var_0.x, !var_0.x, 1i < arg_2.a, !var_0.x), !select(var_0.x, var_0.x, var_0.x)), func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-225f, arg_2.b.x, arg_1.x, arg_2.b.x) + vec4<f32>(1000f, arg_2.b.x, arg_2.b.x, 498f)))), vec3<bool>(!var_0.x, true, true), var_0.x), vec4<bool>(var_0.x, true, _wgslsmith_clamp_i32(u_input.c.x, -2147483647i, -49890i) > -1190i, !var_0.x)), !vec4<bool>(var_0.x, 46062i >= (u_input.e | arg_2.a), select(var_0.x, true, var_0.x & var_0.x), var_0.x));
    var var_2 = Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~firstLeadingBit(u_input.c.xx), u_input.c.yz ^ u_input.c.zx), u_input.c.x), vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.b.x, arg_1.x), arg_2.b.x), arg_2.b.x));
    var var_3 = !(0u > (~0u & abs(u_input.d)));
    var var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -304f, -502f, 2136f) * vec4<f32>(arg_1.x, arg_2.b.x, 249f, -664f)), vec4<f32>(arg_2.b.x, arg_2.b.x, -1368f, arg_2.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, -792f, arg_2.b.x, -1012f), vec4<f32>(-205f, arg_2.b.x, arg_2.b.x, 308f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x - arg_2.b.x) - _wgslsmith_f_op_f32(arg_2.b.x + 378f)), _wgslsmith_f_op_f32(f32(-1f) * -1962f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + 133f)), var_2.b.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -426f), var_2.b.x, arg_1.x, 810f), (max(~51256u, u_input.b) | _wgslsmith_add_u32(1u << (1u % 32u), u_input.b)) <= 1u));
    return vec2<i32>(firstLeadingBit(~(-(2147483647i << (u_input.d % 32u)))), -18060i);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>) -> vec4<bool> {
    var var_0 = Struct_1(countOneBits(~(firstLeadingBit(arg_0.x) >> ((27813u << (u_input.b % 32u)) % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) * _wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, 1154f, -1684f) + vec3<f32>(-1072f, 1808f, 447f)), vec3<f32>(var_0.b.x, var_0.b.x, -855f)), false)))));
    return !(!vec4<bool>(u_input.a.x > ~u_input.d, true, false, 40391i >= u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1313f, _wgslsmith_f_op_f32(-811f + 1f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-398f)), 184f)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-797f + _wgslsmith_f_op_f32(-846f - -807f)))));
    global0 = array<vec3<u32>, 31>();
    let var_1 = select(func_4(min(func_1(max(u_input.d, u_input.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -833f) * vec2<f32>(-1463f, var_0.x)), Struct_1(55887i, vec3<f32>(-892f, var_0.x, -919f))), _wgslsmith_div_vec2_i32(u_input.c.zw, ~u_input.c.xw)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, u_input.c.x, 38370i), ~vec3<i32>(u_input.c.x, u_input.e, u_input.e)), vec3<i32>(u_input.e, -5280i, select(52482i, u_input.c.x, false)))), !vec4<bool>(func_3() <= u_input.a.x, false, !select(true, true, false), true), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(191f, var_0.x, 324f, -1186f) * vec4<f32>(var_0.x, 289f, -1342f, 714f)))), func_4(-vec2<i32>(u_input.e, u_input.c.x), u_input.c.wxz).xwz, true));
    global0 = array<vec3<u32>, 31>();
    var var_2 = Struct_1(u_input.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-138f, -587f, -336f)));
    var_0 = vec2<f32>(var_0.x, -473f);
    global0 = array<vec3<u32>, 31>();
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(250f - var_2.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1068f, 561f)), var_2.b.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.b.x, 349f), var_2.b.yy)), var_2.b.zy), vec2<f32>(_wgslsmith_f_op_f32(var_2.b.x * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -871f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, u_input.d, var_2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-564f, -199f, -444f) - var_2.b))), vec2<u32>(func_3() >> (~u_input.d % 32u), u_input.b));
}

