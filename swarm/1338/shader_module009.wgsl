struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: Struct_4,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-553f, -1771f, 243f, 1549f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(840f, 109f, -1911f, 103f) + vec4<f32>(-296f, -280f, 671f, -550f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1006f, -356f, 543f, 1000f))))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-441f + var_0.x), _wgslsmith_f_op_f32(floor(509f))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), var_0.yz))), vec2<f32>(763f, -701f))), vec4<u32>(1u, 1u, 1u, 1u));
    let var_2 = Struct_2(vec2<f32>(var_1.a.x, var_0.x), ~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.b.x, var_1.b.x, 0u, var_1.b.x), _wgslsmith_mod_vec4_u32(var_1.b, var_1.b))));
    var var_3 = ~u_input.a.x >> (abs(1u) % 32u);
    var var_4 = u_input.a.wz;
    return vec4<bool>(true, any(vec2<bool>(false, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false))))), all(vec3<bool>(false, _wgslsmith_div_f32(-2204f, var_2.a.x) < _wgslsmith_f_op_f32(1000f * var_0.x), true)), all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), any(vec2<bool>(true, false))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(all(vec2<bool>(true, true)), true, true, true))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>) -> bool {
    var var_0 = Struct_5(Struct_3(vec4<i32>(_wgslsmith_mod_i32(-30418i, u_input.a.x) >> (18617u % 32u), i32(-1i) * -1i, _wgslsmith_sub_i32(u_input.a.x, ~2147483647i), 2147483647i), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)), -243f), _wgslsmith_f_op_f32(trunc(-241f)))), all(vec3<bool>(true, false, all(vec4<bool>(arg_0.x, false, false, false)))), Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) - arg_1.yz) - arg_1.yy), ~(~vec4<u32>(53702u, 1u, 59273u, 0u))), -1i, ~_wgslsmith_div_vec2_u32(~vec2<u32>(20804u, 0u), vec2<u32>(1u, 1u)), Struct_2(arg_1.zz, firstTrailingBit(vec4<u32>(4294967295u, 4753u, 10666u, 1u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 1u), vec4<u32>(1u, 110183u, 4294967295u, 32347u), vec4<u32>(41217u, 0u, 4294967295u, 0u))), Struct_2(arg_1.yx, vec4<u32>(1u, 1u, 1u, 1u))), arg_1.x, Struct_1(arg_0.x, u_input.a.x, 1u, select(0u, ~firstLeadingBit(9201u), arg_0.x), vec2<u32>(1u, 1u)));
    var var_1 = true;
    var_1 = true;
    return true;
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> bool {
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    var var_0 = Struct_5(Struct_3(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(-2147483647i, u_input.a.x, -14930i, u_input.a.x)), u_input.a, u_input.a << (arg_0.d.b % vec4<u32>(32u))), abs(-u_input.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2.a.x + arg_0.a.a.x), arg_2.a.x) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.a.a, arg_2.a), vec2<f32>(arg_0.a.a.x, arg_2.a.x)))), (any(vec4<bool>(false, false, true, true)) != func_4(func_3(), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, arg_2.a.x, -1054f, arg_2.a.x) - vec4<f32>(305f, arg_2.a.x, -1760f, arg_2.a.x)))) != all(vec4<bool>(true, true, true, true)), arg_0, -1459f, Struct_1(!((u_input.a.x >= -2147483647i) & (5699i > arg_0.b)), _wgslsmith_sub_i32(u_input.a.x, arg_3), (arg_2.b.x & 49198u) ^ 16914u, arg_2.b.x, arg_2.b.ww));
    global0 = array<Struct_1, 29>();
    return (var_0.b || var_0.e.a) && !any(vec3<bool>(var_0.e.a, any(vec2<bool>(false, var_0.b)), select(false, true, false)));
}

fn func_5(arg_0: Struct_5, arg_1: bool) -> Struct_1 {
    var var_0 = firstTrailingBit(vec2<i32>(~u_input.a.x, 1i)) >> (arg_0.c.c % vec2<u32>(32u));
    let var_1 = firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_div_u32(~arg_0.e.d, ~arg_0.e.e.x), arg_0.c.d.b.x));
    var var_2 = arg_1;
    let var_3 = var_1;
    var_0 = vec2<i32>(~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_0.c.b, 16576i)), _wgslsmith_mod_vec2_i32(arg_0.a.a.wz, vec2<i32>(var_0.x, u_input.a.x)) & select(vec2<i32>(35247i, -2147483647i), arg_0.a.a.zw, vec2<bool>(arg_0.b, false))), countOneBits(reverseBits(~1i)));
    return global0[_wgslsmith_index_u32(1405u, 29u)];
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = select(arg_3.x, -1i, firstTrailingBit(abs(arg_0.b)) == ~(i32(-1i) * -5729i)) & reverseBits(0i);
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-243f, 1445f)))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1136f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), abs(vec4<u32>(4294967295u, ~arg_0.e.x, abs(~0u), firstTrailingBit(~arg_0.e.x))));
    global0 = array<Struct_1, 29>();
    var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(trunc(var_1.a.x))), _wgslsmith_f_op_f32(min(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))))), ~vec4<u32>(25846u, max(min(arg_0.e.x, arg_0.c), ~0u), _wgslsmith_dot_vec2_u32(countOneBits(arg_0.e), _wgslsmith_mod_vec2_u32(var_1.b.zx, vec2<u32>(arg_0.e.x, var_1.b.x))), 1u));
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-342f, 1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.a.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, -1609f) - vec2<f32>(var_1.a.x, 1492f)) - _wgslsmith_f_op_vec2_f32(-var_1.a))), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(var_1.b, vec4<u32>(10684u, _wgslsmith_div_u32(4294967295u, arg_0.e.x), _wgslsmith_mod_u32(1u, 19276u), ~var_1.b.x)), max(var_1.b, vec4<u32>(5850u | var_1.b.x, ~1u, 4294967295u, 22112u))));
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.e.x, min(~arg_0.d, 65062u)), 29u)];
}

fn func_1(arg_0: Struct_5) -> Struct_3 {
    var var_0 = vec3<u32>(_wgslsmith_sub_u32(6012u, ~max(arg_0.e.d, abs(arg_0.e.e.x))), 4294967295u, 0u);
    var var_1 = func_6(func_5(arg_0, !(!func_2(Struct_4(Struct_2(vec2<f32>(arg_0.d, 1838f), arg_0.c.e.b), 1i, arg_0.e.e, Struct_2(vec2<f32>(-1007f, arg_0.d), arg_0.c.d.b), arg_0.c.d), arg_0.c.a.a.x, Struct_2(vec2<f32>(arg_0.c.e.a.x, arg_0.d), vec4<u32>(arg_0.e.c, 0u, 13637u, arg_0.e.c)), arg_0.c.b))), vec2<bool>(arg_0.b, arg_0.e.a), arg_0.b, abs(u_input.a.zx));
    var var_2 = arg_0.e;
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1272f, arg_0.a.b.x, arg_0.c.a.a.x, 1204f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.d, 2522f, 299f, arg_0.c.d.a.x), vec4<f32>(130f, -183f, 260f, arg_0.d), vec4<bool>(arg_0.e.a, false, var_2.a, false))))), vec4<f32>(arg_0.c.d.a.x, -628f, _wgslsmith_div_f32(-1064f, 144f), _wgslsmith_f_op_f32(-arg_0.a.b.x)), ~var_2.d >= var_1.e.x)) - vec4<f32>(1237f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.d.a.x)), _wgslsmith_f_op_f32(min(-328f, arg_0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1199f + arg_0.d) + _wgslsmith_f_op_f32(-247f - 478f))))));
    var_0 = vec3<u32>(4294967295u, _wgslsmith_mult_u32(func_6(global0[_wgslsmith_index_u32(select(~var_1.e.x, arg_0.e.e.x, var_2.b > var_2.b), 29u)], select(select(vec2<bool>(false, true), vec2<bool>(false, false), var_1.a), select(vec2<bool>(var_1.a, false), vec2<bool>(var_2.a, var_2.a), vec2<bool>(true, var_1.a)), true), var_1.a, arg_0.a.a.xz).c, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.e.x, arg_0.c.a.b.x, 8465u, 6865u), arg_0.c.d.b) << (var_1.e.x % 32u))), select(min(59653u, 1u) ^ _wgslsmith_clamp_u32(reverseBits(var_1.c), ~var_0.x, 6528u), _wgslsmith_mod_u32(var_1.c, ~var_1.d), !(var_2.a | var_1.a)));
    return arg_0.a;
}

fn func_7(arg_0: Struct_5, arg_1: bool, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = arg_0.c;
    var_0 = Struct_4(var_0.a, arg_0.e.b, _wgslsmith_div_vec2_u32(var_0.e.b.wy, _wgslsmith_mod_vec2_u32(~var_0.e.b.wy, vec2<u32>(reverseBits(58482u), 51742u))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1274f, -1000f)), _wgslsmith_f_op_f32(min(var_0.d.a.x, 984f)))), arg_0.d), ~(~(~vec4<u32>(var_0.c.x, arg_0.c.c.x, 0u, arg_0.e.c)))), Struct_2(vec2<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(abs(-858f))), arg_0.c.e.b));
    global0 = array<Struct_1, 29>();
    let var_1 = arg_2.yy;
    global0 = array<Struct_1, 29>();
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 29>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-333f, 551f)), -1371f);
    global0 = array<Struct_1, 29>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-var_0));
    var_1 = -135f;
    global0 = array<Struct_1, 29>();
    var var_2 = Struct_4(func_7(Struct_5(func_1(Struct_5(Struct_3(vec4<i32>(35513i, u_input.a.x, u_input.a.x, u_input.a.x), vec2<f32>(-416f, var_0)), false, Struct_4(Struct_2(vec2<f32>(var_0, -2853f), vec4<u32>(0u, 45671u, 24919u, 4294967295u)), 42197i, vec2<u32>(13614u, 72013u), Struct_2(vec2<f32>(var_0, 707f), vec4<u32>(68720u, 1u, 0u, 7067u)), Struct_2(vec2<f32>(var_0, -520f), vec4<u32>(40720u, 4331u, 46085u, 0u))), -1000f, global0[_wgslsmith_index_u32(35810u, 29u)])), func_4(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -907f, 1726f, -790f))), Struct_4(Struct_2(vec2<f32>(var_0, -1549f), vec4<u32>(61979u, 12017u, 1u, 29701u)), 13884i, ~vec2<u32>(1u, 4294967295u), Struct_2(vec2<f32>(var_0, -259f), vec4<u32>(1u, 44821u, 28270u, 1u)), Struct_2(vec2<f32>(var_0, -1284f), vec4<u32>(1u, 35205u, 47101u, 36075u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -504f))), Struct_1(false, u_input.a.x, ~4294967295u, ~0u, func_5(Struct_5(Struct_3(vec4<i32>(6551i, u_input.a.x, 1i, -1i), vec2<f32>(var_0, 650f)), true, Struct_4(Struct_2(vec2<f32>(2038f, var_0), vec4<u32>(13652u, 34397u, 1u, 4294967295u)), 0i, vec2<u32>(0u, 107560u), Struct_2(vec2<f32>(-1615f, var_0), vec4<u32>(6215u, 0u, 0u, 19104u)), Struct_2(vec2<f32>(var_0, 442f), vec4<u32>(4294967295u, 0u, 44435u, 12254u))), 1082f, global0[_wgslsmith_index_u32(38736u, 29u)]), false).e)), true, select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), -2147483647i != u_input.a.x))), firstLeadingBit(1i), vec2<u32>(67562u, 4294967295u), func_7(Struct_5(func_1(Struct_5(Struct_3(vec4<i32>(43984i, -26437i, -8505i, u_input.a.x), vec2<f32>(1000f, -2423f)), false, Struct_4(Struct_2(vec2<f32>(941f, -1000f), vec4<u32>(0u, 4294967295u, 28269u, 58303u)), u_input.a.x, vec2<u32>(18384u, 0u), Struct_2(vec2<f32>(636f, -517f), vec4<u32>(0u, 0u, 71062u, 0u)), Struct_2(vec2<f32>(565f, var_0), vec4<u32>(0u, 4294967295u, 1u, 44510u))), -102f, Struct_1(false, 2147483647i, 79672u, 25291u, vec2<u32>(1u, 0u)))), true, Struct_4(func_7(Struct_5(Struct_3(vec4<i32>(1664i, 10282i, u_input.a.x, u_input.a.x), vec2<f32>(-1945f, var_0)), false, Struct_4(Struct_2(vec2<f32>(var_0, -2225f), vec4<u32>(1u, 5511u, 51028u, 18733u)), -1i, vec2<u32>(21986u, 1u), Struct_2(vec2<f32>(var_0, 1000f), vec4<u32>(1u, 0u, 0u, 1u)), Struct_2(vec2<f32>(991f, var_0), vec4<u32>(77030u, 1u, 4522u, 1u))), -1859f, global0[_wgslsmith_index_u32(68315u, 29u)]), true, vec4<bool>(true, true, false, false)), -9943i, ~vec2<u32>(0u, 4294967295u), func_7(Struct_5(Struct_3(u_input.a, vec2<f32>(-237f, var_0)), true, Struct_4(Struct_2(vec2<f32>(1000f, var_0), vec4<u32>(1u, 30397u, 42930u, 35747u)), u_input.a.x, vec2<u32>(2880u, 0u), Struct_2(vec2<f32>(-1086f, 114f), vec4<u32>(12854u, 22316u, 27082u, 42739u)), Struct_2(vec2<f32>(-1563f, var_0), vec4<u32>(0u, 67366u, 0u, 3150u))), var_0, Struct_1(false, u_input.a.x, 0u, 78407u, vec2<u32>(1u, 4294967295u))), false, vec4<bool>(true, false, false, false)), Struct_2(vec2<f32>(var_0, 1000f), vec4<u32>(1u, 0u, 52410u, 63022u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) * 1238f), Struct_1(true, 17238i, func_6(Struct_1(true, u_input.a.x, 83839u, 49685u, vec2<u32>(0u, 0u)), vec2<bool>(false, false), true, u_input.a.ww).d, _wgslsmith_clamp_u32(0u, 26308u, 14866u), select(vec2<u32>(4294967295u, 12390u), vec2<u32>(112358u, 7688u), false))), func_3().x && !(u_input.a.x > u_input.a.x), vec4<bool>(!func_5(Struct_5(Struct_3(u_input.a, vec2<f32>(2747f, var_0)), true, Struct_4(Struct_2(vec2<f32>(var_0, -202f), vec4<u32>(35181u, 0u, 53465u, 4294967295u)), 0i, vec2<u32>(5145u, 1u), Struct_2(vec2<f32>(var_0, var_0), vec4<u32>(14616u, 2469u, 23187u, 4294967295u)), Struct_2(vec2<f32>(var_0, var_0), vec4<u32>(1u, 1u, 4294967295u, 0u))), -1073f, global0[_wgslsmith_index_u32(6134u, 29u)]), true).a, func_6(func_5(Struct_5(Struct_3(u_input.a, vec2<f32>(var_0, -637f)), true, Struct_4(Struct_2(vec2<f32>(-1000f, var_0), vec4<u32>(60856u, 1u, 4294967295u, 52523u)), 2147483647i, vec2<u32>(0u, 60843u), Struct_2(vec2<f32>(1446f, 2054f), vec4<u32>(92040u, 1u, 4294967295u, 4294967295u)), Struct_2(vec2<f32>(var_0, 101f), vec4<u32>(40200u, 33668u, 59002u, 26965u))), var_0, Struct_1(false, u_input.a.x, 303u, 9698u, vec2<u32>(7361u, 1u))), false), vec2<bool>(false, false), true, vec2<i32>(2147483647i, u_input.a.x)).a, func_5(Struct_5(Struct_3(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x), vec2<f32>(1383f, var_0)), false, Struct_4(Struct_2(vec2<f32>(-511f, -2896f), vec4<u32>(4294967295u, 112105u, 25354u, 62684u)), u_input.a.x, vec2<u32>(1u, 73174u), Struct_2(vec2<f32>(1043f, -490f), vec4<u32>(0u, 0u, 1u, 4294967295u)), Struct_2(vec2<f32>(-797f, 1614f), vec4<u32>(1u, 14224u, 1u, 4009u))), -990f, Struct_1(false, u_input.a.x, 1u, 0u, vec2<u32>(19971u, 0u))), true).a, _wgslsmith_f_op_f32(-var_0) >= var_0)), func_7(Struct_5(Struct_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.a.x, 2147483647i, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -77678i), vec4<i32>(-14374i, u_input.a.x, u_input.a.x, u_input.a.x)), vec2<f32>(var_0, var_0)), true, Struct_4(func_7(Struct_5(Struct_3(vec4<i32>(u_input.a.x, 26901i, 2147483647i, u_input.a.x), vec2<f32>(1108f, var_0)), false, Struct_4(Struct_2(vec2<f32>(var_0, -1259f), vec4<u32>(0u, 29188u, 5101u, 4294967295u)), -43336i, vec2<u32>(5488u, 0u), Struct_2(vec2<f32>(468f, 359f), vec4<u32>(0u, 1u, 1u, 4294967295u)), Struct_2(vec2<f32>(var_0, 670f), vec4<u32>(4294967295u, 4294967295u, 31889u, 4294967295u))), var_0, global0[_wgslsmith_index_u32(0u, 29u)]), true, vec4<bool>(true, true, true, false)), ~u_input.a.x, firstLeadingBit(vec2<u32>(70069u, 1u)), func_7(Struct_5(Struct_3(vec4<i32>(1i, 0i, -68155i, u_input.a.x), vec2<f32>(-1106f, 1462f)), true, Struct_4(Struct_2(vec2<f32>(var_0, var_0), vec4<u32>(4294967295u, 1u, 28419u, 4294967295u)), -2147483647i, vec2<u32>(64584u, 4294967295u), Struct_2(vec2<f32>(-1099f, -1000f), vec4<u32>(0u, 0u, 37665u, 0u)), Struct_2(vec2<f32>(-1047f, 712f), vec4<u32>(1u, 4294967295u, 36970u, 26118u))), var_0, Struct_1(true, -3150i, 25437u, 66364u, vec2<u32>(1962u, 1u))), false, vec4<bool>(false, false, true, true)), Struct_2(vec2<f32>(var_0, var_0), vec4<u32>(1u, 72838u, 4294967295u, 17616u))), _wgslsmith_f_op_f32(f32(-1f) * -436f), func_6(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(7526u, 4294967295u), vec2<u32>(48405u, 4294967295u)), 29u)], select(vec2<bool>(true, true), vec2<bool>(true, false), false), func_2(Struct_4(Struct_2(vec2<f32>(var_0, -144f), vec4<u32>(0u, 47518u, 4294967295u, 0u)), 7194i, vec2<u32>(1u, 0u), Struct_2(vec2<f32>(var_0, var_0), vec4<u32>(10664u, 29830u, 41120u, 43229u)), Struct_2(vec2<f32>(var_0, var_0), vec4<u32>(18636u, 1u, 4972u, 4294967295u))), 875f, Struct_2(vec2<f32>(-289f, var_0), vec4<u32>(4152u, 1u, 4294967295u, 4294967295u)), 2147483647i), _wgslsmith_clamp_vec2_i32(u_input.a.yx, u_input.a.zx, vec2<i32>(u_input.a.x, u_input.a.x)))), false, !(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(Struct_5(func_1(Struct_5(Struct_3(u_input.a, vec2<f32>(var_2.a.a.x, var_0)), true, Struct_4(Struct_2(var_2.e.a, var_2.d.b), -18105i, vec2<u32>(var_2.d.b.x, var_2.d.b.x), Struct_2(var_2.e.a, var_2.a.b), var_2.e), -618f, global0[_wgslsmith_index_u32(var_2.c.x, 29u)])), true, Struct_4(var_2.e, 1i, vec2<u32>(4294967295u, var_2.a.b.x), Struct_2(var_2.d.a, var_2.e.b), Struct_2(vec2<f32>(-1495f, 1470f), var_2.a.b)), _wgslsmith_f_op_f32(f32(-1f) * -993f), global0[_wgslsmith_index_u32(var_2.c.x & 41666u, 29u)])).a.wz << (select(~vec2<u32>(34736u, 4294967295u), var_2.e.b.ww, all(func_3().wy)) % vec2<u32>(32u)), var_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1135f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(186f * func_1(Struct_5(Struct_3(u_input.a, var_2.a.a), false, Struct_4(Struct_2(vec2<f32>(var_2.a.a.x, var_2.a.a.x), var_2.a.b), 2147483647i, vec2<u32>(1u, var_2.c.x), var_2.e, var_2.d), var_0, Struct_1(true, -20014i, var_2.a.b.x, 7902u, var_2.c))).b.x)))), vec4<f32>(var_2.e.a.x, _wgslsmith_f_op_f32(899f - -1211f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(573f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -588f))), -996f), vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, var_0)), var_0));
}

