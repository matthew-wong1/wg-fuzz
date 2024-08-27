struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = vec3<i32>(2408i, arg_3.c, u_input.c.x);
    global0 = select(arg_3.d, firstTrailingBit(_wgslsmith_sub_i32(-(i32(-1i) * -65648i), -1i)), !any(vec2<bool>(true, all(vec2<bool>(false, true)))));
    let var_1 = ~(~select(vec4<u32>(~u_input.b, arg_0.a, 1u, ~arg_3.a), vec4<u32>(_wgslsmith_mod_u32(30692u, u_input.e.x), 53382u | arg_2.a.x, 4294967295u, 2234u), (2147483647i >> (arg_3.a % 32u)) <= ~(-1i)));
    let var_2 = vec2<u32>(56425u, u_input.e.x);
    return vec4<i32>(8609i, ~(min(_wgslsmith_mult_i32(1i, arg_0.b.x), reverseBits(1i)) & ((arg_3.e.x >> (arg_2.a.x % 32u)) << (max(arg_0.a, u_input.e.x) % 32u))), ~(~arg_0.d) << (arg_0.a % 32u), ~max(_wgslsmith_add_i32(1i, var_0.x >> (var_1.x % 32u)), max(arg_3.e.x, arg_3.d)));
}

fn func_2() -> vec4<i32> {
    var var_0 = _wgslsmith_clamp_vec4_i32(-(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, 1i, u_input.a.x)) ^ (vec4<i32>(u_input.a.x, 0i, u_input.a.x, 1i) ^ (vec4<i32>(u_input.c.x, 1i, u_input.a.x, u_input.d.x) << (vec4<u32>(34078u, 59674u, 11290u, u_input.b) % vec4<u32>(32u))))), _wgslsmith_add_vec4_i32(-firstTrailingBit(vec4<i32>(u_input.c.x, 2147483647i, 2147483647i, u_input.a.x)) >> (~max(u_input.e, vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 0u)) % vec4<u32>(32u)), min(vec4<i32>(u_input.d.x, u_input.a.x | u_input.d.x, u_input.c.x, u_input.a.x), func_3(Struct_1(0u, vec4<i32>(843i, -2147483647i, u_input.a.x, 2147483647i), u_input.d.x, u_input.a.x, vec4<i32>(u_input.c.x, u_input.a.x, u_input.c.x, 46800i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1078f, 886f)), Struct_2(vec3<u32>(73782u, 23342u, u_input.b), Struct_1(4294967295u, vec4<i32>(-18459i, u_input.a.x, u_input.d.x, u_input.a.x), u_input.d.x, u_input.d.x, vec4<i32>(u_input.c.x, u_input.d.x, u_input.d.x, -1i))), Struct_1(u_input.b, vec4<i32>(2147483647i, u_input.d.x, u_input.c.x, 48573i), u_input.d.x, 27086i, vec4<i32>(u_input.a.x, 1i, -24108i, u_input.c.x))))), vec4<i32>(u_input.c.x, -(i32(-1i) * -18265i), -33978i, ~firstTrailingBit(u_input.c.x | 9765i)));
    let var_1 = firstLeadingBit(vec2<i32>(abs(var_0.x), i32(-1i) * -(i32(-1i) * -7524i)));
    let var_2 = _wgslsmith_mult_i32(1600i, var_1.x);
    let var_3 = 997f;
    var var_4 = false;
    return _wgslsmith_div_vec4_i32(vec4<i32>(~var_0.x, _wgslsmith_dot_vec3_i32(select(u_input.a, vec3<i32>(-2147483647i, var_2, 36599i), false), -vec3<i32>(-1i, var_1.x, 2147483647i)), ~(-var_0.x), -2147483647i) | (vec4<i32>(-1i) * -(~vec4<i32>(1i, -5083i, 32136i, -11096i))), vec4<i32>(~(var_0.x ^ -9967i) ^ u_input.a.x, firstTrailingBit(var_2), 1i, _wgslsmith_sub_i32(min(-35613i, 1i), _wgslsmith_sub_i32(var_1.x << (u_input.b % 32u), ~42806i))));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> f32 {
    let var_0 = -(~func_2());
    global0 = -((var_0.x & ~(-var_0.x)) ^ (-max(2147483647i, u_input.a.x) << (~u_input.b % 32u)));
    let var_1 = Struct_2(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.e.x, u_input.b << (u_input.b % 32u), _wgslsmith_div_u32(u_input.b, 20603u)), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, u_input.e.x, u_input.e.x), ~u_input.e.wyy)), Struct_1(0u, _wgslsmith_clamp_vec4_i32(~_wgslsmith_mult_vec4_i32(var_0, var_0), var_0, var_0), reverseBits(-arg_1 >> (4294967295u % 32u)), _wgslsmith_clamp_i32(u_input.a.x, ~1i, ~(0i >> (u_input.b % 32u))), -var_0 << (abs(abs(vec4<u32>(u_input.e.x, 34912u, 43654u, u_input.b))) % vec4<u32>(32u))));
    var var_2 = Struct_1(61614u, var_1.b.b, _wgslsmith_sub_i32(u_input.d.x, ~u_input.d.x ^ func_3(var_1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), Struct_2(u_input.e.zxw, Struct_1(var_1.a.x, var_1.b.e, arg_1, 2147483647i, var_0)), Struct_1(1u, var_0, -26011i, var_1.b.e.x, vec4<i32>(u_input.a.x, u_input.a.x, 44642i, var_0.x))).x), -(~_wgslsmith_dot_vec4_i32(firstLeadingBit(var_1.b.e), _wgslsmith_mod_vec4_i32(var_0, vec4<i32>(u_input.c.x, arg_1, u_input.c.x, arg_1)))), vec4<i32>(-72281i, (var_1.b.c ^ var_0.x) >> (firstLeadingBit(~var_1.a.x) % 32u), 1i, 45957i));
    let var_3 = !(!select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>(all(vec4<bool>(false, false, true, true)), true), all(vec4<bool>(true, true, true, true))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), -2318f))) * 328f);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_1(1u, vec4<i32>(func_2().x, -(_wgslsmith_div_i32(33673i, -41589i) << ((1u << (u_input.b % 32u)) % 32u)), ~1i, _wgslsmith_dot_vec4_i32(abs(_wgslsmith_div_vec4_i32(arg_0.b.b, vec4<i32>(-29812i, 21631i, arg_0.b.c, -1375i))), vec4<i32>(-57276i, -u_input.c.x, reverseBits(-18663i), ~(-2147483647i)))), -4290i, ~1i, func_2());
    let var_1 = arg_3;
    let var_2 = arg_0.b;
    let var_3 = arg_3;
    let var_4 = ~var_0.d;
    return Struct_2(u_input.e.zwy, Struct_1(26457u ^ (58774u ^ ~u_input.b), vec4<i32>(0i, var_4, ~2147483647i, _wgslsmith_dot_vec2_i32(var_0.e.zz, vec2<i32>(22558i, u_input.a.x))) | _wgslsmith_add_vec4_i32(arg_0.b.e, vec4<i32>(u_input.d.x, -31241i, 428i, 38392i)), -(~var_4), -((i32(-1i) * -11164i) & u_input.a.x), vec4<i32>(2147483647i, 1i & func_3(Struct_1(u_input.b, arg_0.b.b, arg_0.b.d, 59196i, var_0.b), vec3<f32>(-667f, var_1, var_1), arg_0, var_2).x, _wgslsmith_mod_i32(-1i, 2147483647i), _wgslsmith_add_i32(~1i, -var_0.e.x))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<bool>) -> vec3<bool> {
    var var_0 = -arg_2.b.d;
    return select(select(!vec3<bool>(select(false, arg_3.x, arg_3.x), true, all(vec4<bool>(arg_3.x, true, true, arg_3.x))), select(!vec3<bool>(false, false, arg_3.x), arg_3.wyz, vec3<bool>(any(arg_3.xy), arg_3.x, !arg_3.x)), abs(abs(arg_1.b.d)) <= 22848i), select(vec3<bool>(all(vec2<bool>(true, true)), true, true), arg_3.xwx, arg_3.x), select(arg_3.zwy, select(vec3<bool>(arg_3.x, !arg_3.x, !arg_3.x), arg_3.xyx, select(arg_3.yyx, !arg_3.yyx, !vec3<bool>(arg_3.x, arg_3.x, arg_3.x))), arg_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec2<u32>(u_input.b, ~max(_wgslsmith_dot_vec2_u32(u_input.e.yw, vec2<u32>(18501u, 4269u)), u_input.e.x)), func_4(Struct_2(vec3<u32>(u_input.b, u_input.e.x, 53863u), Struct_1(countOneBits(4294967295u), vec4<i32>(u_input.d.x, 0i, -1i, u_input.d.x) ^ vec4<i32>(u_input.c.x, 18439i, -1i, 56958i), 1i, 6600i, select(vec4<i32>(u_input.a.x, u_input.d.x, -2147483647i, u_input.c.x), vec4<i32>(u_input.d.x, u_input.c.x, u_input.a.x, -2147483647i), vec4<bool>(true, false, true, false)))), !select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, true, false, true)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(1002f, -808f), -38477i))))), func_4(Struct_2(vec3<u32>(u_input.b, max(u_input.e.x, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 28016u, u_input.b), u_input.e)), Struct_1(~u_input.e.x, _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, -1i), vec4<i32>(u_input.a.x, 2147483647i, -1722i, 26927i), vec4<i32>(2147483647i, 0i, u_input.a.x, -37634i)), 2147483647i, -1i, -vec4<i32>(0i, u_input.d.x, 2147483647i, 7281i))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(false, false, true, true), u_input.d.x < 0i), select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), true)), select(vec3<bool>(true, true, 60215u <= u_input.b), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(sign(1f))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(false, true, true, false)), all(vec2<bool>(true, false)), true, true), any(vec4<bool>(true, true, true, true))), true));
    let var_1 = all(vec2<bool>(var_0.x, !var_0.x & (~u_input.e.x == ~u_input.b)));
    var_0 = select(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.x, true, var_1), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), true)), !func_5(u_input.e.wy, func_4(func_4(Struct_2(vec3<u32>(u_input.e.x, u_input.e.x, 0u), Struct_1(1u, vec4<i32>(20138i, u_input.a.x, u_input.d.x, u_input.d.x), -3800i, 2147483647i, vec4<i32>(0i, 0i, 13446i, -1i))), vec4<bool>(false, false, true, true), vec3<bool>(false, var_0.x, var_1), 528f), !vec4<bool>(var_1, true, var_1, var_0.x), !vec3<bool>(var_1, true, false), _wgslsmith_f_op_f32(f32(-1f) * -1626f)), func_4(func_4(Struct_2(vec3<u32>(1u, 4294967295u, 48794u), Struct_1(u_input.b, vec4<i32>(u_input.c.x, 1i, -12663i, 16923i), -19317i, u_input.d.x, vec4<i32>(u_input.a.x, 24651i, u_input.a.x, u_input.a.x))), vec4<bool>(var_0.x, true, true, false), vec3<bool>(var_1, var_0.x, true), 217f), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_1), true), select(vec3<bool>(false, var_0.x, var_1), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), 401f), select(!vec4<bool>(false, var_1, false, var_1), !vec4<bool>(false, true, false, var_1), select(vec4<bool>(var_1, var_0.x, false, true), vec4<bool>(true, var_1, false, var_1), var_0.x))), _wgslsmith_sub_u32(~u_input.e.x, u_input.e.x) != u_input.b);
    let var_2 = func_4(Struct_2(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 1u, 26148u) >> (u_input.e.xzw % vec3<u32>(32u)), ~u_input.e.xww), func_4(Struct_2(u_input.e.ywy, func_4(Struct_2(vec3<u32>(14847u, u_input.b, u_input.b), Struct_1(45237u, vec4<i32>(19651i, -33904i, u_input.a.x, u_input.a.x), -43826i, u_input.d.x, vec4<i32>(-2147483647i, 1i, u_input.d.x, 2147483647i))), vec4<bool>(var_1, true, true, false), vec3<bool>(var_1, var_1, false), 409f).b), select(vec4<bool>(var_1, var_1, var_1, var_1), select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(false, true, var_1, var_0.x), vec4<bool>(var_0.x, false, true, true)), true), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -651f)).b), !(!(!vec4<bool>(true, false, true, var_0.x))), vec3<bool>(var_1, var_0.x, !all(vec3<bool>(var_0.x, true, true)) && any(!vec4<bool>(false, false, false, var_0.x))), 885f);
    let var_3 = func_4(var_2, select(!select(select(vec4<bool>(true, true, var_0.x, true), vec4<bool>(false, var_1, var_1, var_0.x), vec4<bool>(var_1, var_0.x, true, var_1)), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, false, true, false), false), !vec4<bool>(var_1, true, var_1, var_1)), !vec4<bool>(select(var_1, false, var_1), var_1, all(vec3<bool>(true, false, var_1)), var_0.x), vec4<bool>(all(vec3<bool>(false, true, var_0.x)), true, !var_0.x, var_0.x)), func_5(min(countOneBits(u_input.e.wy & var_2.a.xy), _wgslsmith_add_vec2_u32(~u_input.e.zx, vec2<u32>(0u, 48893u))), func_4(var_2, select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, var_1, var_0.x), vec4<bool>(var_1, true, var_0.x, false)), vec4<bool>(var_0.x, false, var_0.x, var_1), vec4<bool>(var_0.x, false, true, var_0.x)), vec3<bool>(all(vec3<bool>(var_1, false, true)), all(vec2<bool>(false, false)), false), _wgslsmith_f_op_f32(f32(-1f) * -2413f)), func_4(Struct_2(~vec3<u32>(0u, 1u, 82616u), Struct_1(u_input.e.x, var_2.b.b, 23766i, -14797i, vec4<i32>(var_2.b.c, 0i, var_2.b.d, -14400i))), !vec4<bool>(false, false, var_0.x, var_0.x), !(!vec3<bool>(false, var_0.x, var_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -942f))), !select(select(vec4<bool>(true, var_0.x, var_1, false), vec4<bool>(true, var_1, true, true), false), select(vec4<bool>(var_0.x, var_1, true, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x), var_0.x), func_5(vec2<u32>(var_2.a.x, 7841u), var_2, Struct_2(var_2.a, var_2.b), vec4<bool>(true, var_0.x, var_1, var_0.x)).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-545f * -1333f) - _wgslsmith_f_op_f32(f32(-1f) * -651f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-779f, 1234f)))) + _wgslsmith_f_op_f32(f32(-1f) * -350f)))).b;
    let var_4 = -2147483647i;
    var_0 = !vec3<bool>(!(!select(var_0.x, false, false)), !all(!var_0.zy), all(vec3<bool>(true, true, false)));
    var_0 = select(!vec3<bool>(any(vec3<bool>(true, true, false)), !all(vec3<bool>(var_1, false, var_1)), func_5(vec2<u32>(19503u, var_2.b.a), var_2, func_4(var_2, vec4<bool>(var_0.x, false, var_0.x, true), vec3<bool>(var_1, false, var_0.x), -181f), !vec4<bool>(false, var_1, var_0.x, var_1)).x), select(!vec3<bool>(var_1 || var_0.x, !var_1, var_1), select(!select(vec3<bool>(false, true, true), vec3<bool>(var_1, true, var_0.x), var_1), func_5(~u_input.e.xw, var_2, func_4(var_2, vec4<bool>(false, true, false, true), vec3<bool>(var_0.x, var_0.x, var_1), -1000f), select(vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, var_1, var_0.x))), all(vec4<bool>(true, false, true, var_0.x))), var_0.x), select(vec3<bool>(var_0.x, true, select(!var_0.x, false, !var_0.x)), !select(!vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(true, var_0.x, var_0.x), func_5(var_2.a.zx, Struct_2(vec3<u32>(1u, var_3.a, 4294967295u), var_3), var_2, vec4<bool>(var_0.x, var_1, true, var_0.x))), var_0.x && (var_3.a != 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(33602u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -502f))) + _wgslsmith_f_op_f32(select(-1827f, -702f, reverseBits(u_input.c.x) >= ~(-24905i)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 372f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-411f, 275f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-452f, -130f)) * vec2<f32>(473f, -731f)), vec2<bool>(false, any(vec2<bool>(true, false))))), var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(878f + 1418f), -184f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-902f + -161f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2396f, 790f, var_0.x))))), ~select(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(5016u, u_input.e.x, var_3.a, var_2.b.a)), u_input.e), vec4<u32>(abs(100413u), 33920u, var_3.a, 41127u), true == any(vec4<bool>(false, false, true, true))));
}

