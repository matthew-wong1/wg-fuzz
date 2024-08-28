struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(-4885i, i32(-2147483648), 10270i), vec3<i32>(28673i, -54001i, -1i), vec3<i32>(0i, -32091i, 39521i), vec3<i32>(-1i, i32(-2147483648), -12192i), vec3<i32>(11165i, 0i, 3399i), vec3<i32>(9895i, -41156i, i32(-2147483648)), vec3<i32>(-18004i, i32(-2147483648), -55122i), vec3<i32>(2147483647i, -1i, -42111i), vec3<i32>(29971i, 0i, -1i), vec3<i32>(22639i, -1i, 17191i), vec3<i32>(1i, i32(-2147483648), -21828i), vec3<i32>(-38337i, 2147483647i, -1i), vec3<i32>(25992i, 0i, i32(-2147483648)), vec3<i32>(2217i, 0i, 13426i), vec3<i32>(31538i, i32(-2147483648), 2211i), vec3<i32>(2147483647i, 14914i, -13126i), vec3<i32>(-1i, -41964i, 14599i), vec3<i32>(-1i, 1i, i32(-2147483648)), vec3<i32>(17033i, -39860i, -9414i), vec3<i32>(-38023i, -1i, 1i), vec3<i32>(0i, 1i, 1i), vec3<i32>(0i, 0i, 0i), vec3<i32>(1i, 16851i, 26378i), vec3<i32>(-49009i, -9029i, -17001i), vec3<i32>(1i, 0i, 18546i), vec3<i32>(23791i, i32(-2147483648), -33182i), vec3<i32>(2147483647i, 2147483647i, -1i), vec3<i32>(-70147i, -57430i, 1i), vec3<i32>(i32(-2147483648), -23651i, 2147483647i), vec3<i32>(-1i, -5518i, 6787i));

var<private> global1: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    let var_0 = Struct_5(vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(0i, 0i, 0i, u_input.c.x))), -5097i, firstTrailingBit(0i) & 1i, firstLeadingBit(max(40761i, i32(-1i) * -29811i))), i32(-1i) * -2147483647i, _wgslsmith_clamp_vec3_i32(u_input.c.xyy, global0[_wgslsmith_index_u32(u_input.a, 31u)], ~_wgslsmith_sub_vec3_i32(vec3<i32>(-13138i, -1i, 11700i), vec3<i32>(-7817i, -1i, u_input.c.x))));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, firstTrailingBit(_wgslsmith_mod_u32(abs(0u), 1u))), _wgslsmith_clamp_vec2_u32(~(~(~vec2<u32>(4294967295u, u_input.a))), ~(vec2<u32>(u_input.a, 90762u) | vec2<u32>(4294967295u, u_input.a)) | firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(~_wgslsmith_mod_u32(61030u, 4294967295u), _wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(30518u, u_input.a, 29567u, u_input.a), vec4<u32>(u_input.a, 88598u, u_input.a, u_input.a))))));
    let var_2 = !vec4<bool>(true, true, false, all(vec2<bool>(all(vec2<bool>(true, false)), any(vec2<bool>(true, true)))));
    let var_3 = Struct_1(1444f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -926f)))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-165f, -1181f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-311f, -481f) * vec2<f32>(-144f, -1366f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1100f, 2093f)))))), -2754i, max(-select(var_0.c.xz, u_input.c.xz, any(vec4<bool>(true, var_2.x, false, var_2.x))), ~(-var_0.a.wx) | select(vec2<i32>(-46196i, u_input.c.x), _wgslsmith_mod_vec2_i32(u_input.c.yw, vec2<i32>(var_0.b, 2147483647i)), true)), select(countOneBits(~select(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.a, 1u), true)), vec2<u32>(~8097u, 0u), var_2.x));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1521f, _wgslsmith_f_op_f32(ceil(var_3.a)))));
    return -923f;
}

fn func_2() -> Struct_4 {
    global0 = array<vec3<i32>, 31>();
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(-u_input.c.x, u_input.b.x, abs(i32(-1i) * -2147483647i)), ~_wgslsmith_add_vec3_i32(global0[_wgslsmith_index_u32(u_input.a ^ 1u, 31u)], vec3<i32>(~u_input.c.x, u_input.c.x, u_input.b.x | u_input.c.x)));
    var var_1 = true;
    let var_2 = reverseBits(vec2<i32>(var_0.x | (i32(-1i) * -1i), -var_0.x));
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1009f + 1072f)))), all(vec3<bool>(true, select(any(vec3<bool>(false, true, true)), any(vec4<bool>(true, true, false, false)), true), _wgslsmith_f_op_f32(ceil(793f)) >= _wgslsmith_f_op_f32(894f - -1340f)))));
    return Struct_4(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -258f)), _wgslsmith_f_op_f32(f32(-1f) * -683f), _wgslsmith_f_op_f32(trunc(832f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -693f)))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 16112u, u_input.a) & ~vec3<u32>(u_input.a, u_input.a, u_input.a), ~min(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, 0u, 11542u))), ~select(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), false), Struct_1(_wgslsmith_f_op_f32(floor(-1317f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(278f, 511f)), reverseBits(~u_input.b.x), countOneBits(u_input.c.xy), ~firstTrailingBit(vec2<u32>(u_input.a, u_input.a)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1064f, 367f))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1556f, 339f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1121f, 1636f) + vec2<f32>(1970f, 1683f)))))));
}

fn func_1(arg_0: f32) -> vec2<f32> {
    global0 = array<vec3<i32>, 31>();
    global1 = _wgslsmith_f_op_f32(-arg_0);
    let var_0 = func_2();
    let var_1 = Struct_1(-1729f, var_0.b, u_input.b.x, vec2<i32>(-12535i, countOneBits(12339i)), _wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u), var_0.a.d.e), var_0.a.c.ww), ~func_2().a.b.xx & var_0.a.d.e, vec2<u32>(abs(1u), ~u_input.a) >> (max(min(vec2<u32>(52446u, 1u), var_0.a.c.xw), _wgslsmith_sub_vec2_u32(var_0.a.d.e, var_0.a.b.zx)) % vec2<u32>(32u))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2().a.d.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1110f))) + _wgslsmith_f_op_f32(round(-1432f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-313f + var_1.b.x))), var_1.b.x))), var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2().a.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -141f) * 1422f))));
    return _wgslsmith_f_op_vec2_f32(abs(var_2.xz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(abs(_wgslsmith_mod_vec4_i32(-firstTrailingBit(vec4<i32>(1i, 9901i, u_input.b.x, u_input.b.x)), vec4<i32>(-1i ^ u_input.c.x, u_input.b.x, _wgslsmith_mod_i32(u_input.c.x, 2147483647i), u_input.c.x))), u_input.b.x, firstLeadingBit(global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(u_input.a, u_input.a)), 31u)]));
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2441f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-416f, 426f, false)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1104f)) + 3063f)), 631f))));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(round(-247f))));
    var var_3 = Struct_3(countOneBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(40064u, 4294967295u, 1u, u_input.a) | vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), vec4<u32>(741u, 26363u, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 85766u) << (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)))), _wgslsmith_mult_u32(abs(23802u), _wgslsmith_mult_u32(countOneBits(~1u), u_input.a)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(u_input.a, 42407u, u_input.a), 46072u), 31u)] & vec3<i32>(2147483647i, -5984i, _wgslsmith_mod_i32(7979i, _wgslsmith_dot_vec2_i32(vec2<i32>(18381i, u_input.c.x), var_0.c.zz))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 484f, 669f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(2305f, 117f, 736f))))))));
    let var_4 = func_2().a;
    var_3 = Struct_3(vec4<u32>(_wgslsmith_clamp_u32(u_input.a, var_3.b, _wgslsmith_dot_vec2_u32(vec2<u32>(var_4.d.e.x, 1u) | vec2<u32>(4294967295u, var_4.b.x), ~vec2<u32>(66640u, 9328u))), ~(~abs(var_4.d.e.x)), min(0u, countOneBits(~u_input.a)), ~_wgslsmith_mod_u32(var_4.d.e.x, 11451u) >> (~30462u % 32u)), 1u, vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_add_i32(var_4.d.d.x, -15190i), ~(-1i), var_4.d.c), vec3<f32>(_wgslsmith_f_op_vec2_f32(func_1(var_2.x)).x, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.d.x), _wgslsmith_f_op_f32(2360f - var_3.d.x))))));
    let var_5 = 52230i;
    var_1 = Struct_5(var_0.a, abs(firstTrailingBit(_wgslsmith_mod_i32(var_4.d.c, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.c.x, 0i), var_4.d.d)))), min(var_0.a.xxw, u_input.c.yxy));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_clamp_u32(~var_4.d.e.x, _wgslsmith_add_u32(12268u, 6808u), _wgslsmith_mult_u32(var_4.b.x, 4294967295u)), 1u) | var_4.c.yz, select(func_2().a.d.e, firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(var_4.d.e.x, var_3.a.x), _wgslsmith_mod_u32(4294967295u, u_input.a))), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, false, true)), true), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_4.a))));
}

