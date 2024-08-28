struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_4) -> vec3<bool> {
    global0 = array<Struct_2, 29>();
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-785f + _wgslsmith_f_op_f32(-1751f + -825f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-294f)), _wgslsmith_f_op_f32(f32(-1f) * -2149f))));
    let var_1 = max(~arg_2.c ^ -8149i, 1i);
    var var_2 = ~firstLeadingBit(~(-_wgslsmith_div_vec2_i32(vec2<i32>(-1i, arg_0), vec2<i32>(3318i, var_1))));
    global0 = array<Struct_2, 29>();
    return vec3<bool>((4294967295u ^ reverseBits(u_input.c)) < 41821u, !(!(!any(vec2<bool>(arg_2.d.x, true)))), all(!select(arg_2.d.xx, !arg_2.d.xz, true)));
}

fn func_2(arg_0: vec2<bool>) -> bool {
    var var_0 = Struct_2(arg_0.x, Struct_1(_wgslsmith_mod_u32(u_input.d.x, _wgslsmith_clamp_u32(u_input.d.x, 1u, u_input.b)) >> (43228u % 32u), 18933i, _wgslsmith_mod_vec2_i32(~select(vec2<i32>(1i, -1i), vec2<i32>(27482i, 23113i), arg_0), ~vec2<i32>(1i, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(59248i, -30730i, -19086i, -1i) >> (u_input.d % vec4<u32>(32u)), vec4<i32>(2147483647i, ~45044i, _wgslsmith_mult_i32(0i, -1i), ~(-12757i))), reverseBits(vec3<u32>(18243u, 39096u, u_input.b) ^ vec3<u32>(u_input.b, 0u, 0u)) & vec3<u32>(firstTrailingBit(u_input.c), ~u_input.d.x, 31823u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-346f, 1000f, 416f, 114f) - vec4<f32>(1f, 1f, 1f, 1f))) - vec4<f32>(_wgslsmith_div_f32(-1137f, _wgslsmith_f_op_f32(f32(-1f) * -345f)), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-574f, 738f) + _wgslsmith_f_op_f32(ceil(-925f))), _wgslsmith_f_op_f32(round(-120f)))), Struct_1(0u, 0i, vec2<i32>(2147483647i, 2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-2147483647i, 0i, 16546i, -11041i), vec4<i32>(1i, 1i, 1i, 1i)) >> (~u_input.d % vec4<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.d.x, u_input.d.x) << (~vec3<u32>(5012u, u_input.b, u_input.c) % vec3<u32>(32u)), abs(u_input.d.wyx))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.x, _wgslsmith_div_f32(var_0.c.x, var_0.c.x)))), -1727f) * _wgslsmith_div_f32(-1000f, -882f));
    let var_2 = select(select(vec3<bool>(all(!vec3<bool>(var_0.a, false, var_0.a)), any(select(vec2<bool>(true, true), arg_0, true)), arg_0.x), select(vec3<bool>(var_0.a, all(vec3<bool>(var_0.a, false, false)), arg_0.x), vec3<bool>(true, true, arg_0.x), any(select(vec4<bool>(var_0.a, false, true, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), var_0.a))), !arg_0.x), select(func_3(var_0.b.c.x, var_0.b.e.yy, Struct_4(~vec3<u32>(var_0.b.a, u_input.d.x, var_0.b.e.x), Struct_1(u_input.d.x, var_0.d.b, var_0.d.d.yx, vec4<i32>(2846i, -2147483647i, -16742i, 2147483647i), vec3<u32>(var_0.d.a, 1u, 18677u)), -1i, select(vec4<bool>(true, arg_0.x, var_0.a, var_0.a), vec4<bool>(false, false, var_0.a, true), vec4<bool>(true, var_0.a, false, arg_0.x)))), !(!select(vec3<bool>(true, arg_0.x, var_0.a), vec3<bool>(arg_0.x, false, arg_0.x), true)), vec3<bool>(false, select(u_input.c <= u_input.a.x, all(vec3<bool>(var_0.a, false, var_0.a)), !arg_0.x), var_0.a)), vec3<bool>(-1524f >= _wgslsmith_f_op_f32(-var_0.c.x), any(select(!vec4<bool>(var_0.a, var_0.a, false, arg_0.x), !vec4<bool>(var_0.a, false, var_0.a, arg_0.x), var_0.d.d.x <= -8785i)), false));
    var var_3 = Struct_4(min(u_input.d.zxy, reverseBits(vec3<u32>(0u, 4294967295u, var_0.b.a) | vec3<u32>(var_0.b.a, 4294967295u, u_input.b)) ^ _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, 1u, var_0.b.e.x), vec3<u32>(var_0.b.e.x, 45921u, 9230u) << (vec3<u32>(var_0.b.e.x, 0u, 59303u) % vec3<u32>(32u)))), var_0.b, _wgslsmith_mult_i32(-27181i ^ _wgslsmith_div_i32(var_0.d.b, ~var_0.b.d.x), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(2147483647i | var_0.b.d.x, -20578i), _wgslsmith_mult_i32(var_0.b.d.x, ~var_0.b.b), -var_0.d.d.x)), select(select(!select(vec4<bool>(true, var_2.x, arg_0.x, true), vec4<bool>(false, var_2.x, true, false), arg_0.x), !(!vec4<bool>(false, true, var_0.a, false)), all(select(vec4<bool>(var_0.a, arg_0.x, var_2.x, var_2.x), vec4<bool>(var_2.x, true, false, true), vec4<bool>(false, false, false, false)))), !select(select(vec4<bool>(false, arg_0.x, var_0.a, var_2.x), vec4<bool>(false, var_2.x, false, var_2.x), false), !vec4<bool>(true, var_2.x, true, false), select(vec4<bool>(true, var_0.a, arg_0.x, false), vec4<bool>(false, arg_0.x, false, var_0.a), vec4<bool>(var_2.x, true, false, true))), !vec4<bool>(all(vec2<bool>(true, true)), arg_0.x & var_0.a, all(arg_0), false)));
    var_3 = Struct_4(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~var_3.a, ~abs(u_input.d.xwz), vec3<u32>(u_input.c, ~var_3.a.x, var_3.a.x << (var_3.a.x % 32u))), abs(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(54906u, 0u, 1u), var_3.b.e)))), Struct_1(countOneBits(29681u), reverseBits(var_0.d.b), var_0.d.c, _wgslsmith_div_vec4_i32(countOneBits(-vec4<i32>(-106401i, -10266i, var_0.d.b, var_3.b.d.x)), vec4<i32>(_wgslsmith_mult_i32(var_3.b.d.x, -2147483647i), var_3.b.c.x, -1i, 1i)), var_0.b.e), -var_0.b.b, !var_3.d);
    return false;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1.c.x;
    var var_1 = arg_1;
    let var_2 = !(!select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), any(vec3<bool>(false, true, true))), vec2<bool>(true, true), func_2(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))));
    let var_3 = global0[_wgslsmith_index_u32(countOneBits(arg_1.a), 29u)];
    var_0 = _wgslsmith_mult_i32(29099i, -10230i);
    return _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-var_3.b.b, -16217i, firstTrailingBit(1i), i32(-1i) * -2147483647i), var_3.d.d)), var_3.d.d.x, var_3.d.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(-max(vec2<i32>(func_1(vec2<i32>(1i, 0i), Struct_1(4294967295u, 2147483647i, vec2<i32>(2147483647i, -23679i), vec4<i32>(16529i, -4591i, -464i, -1i), vec3<u32>(u_input.b, 27994u, 1u))), -21858i << (u_input.d.x % 32u)), vec2<i32>(~(-30228i), ~(-2147483647i))), -firstLeadingBit(min(select(vec2<i32>(21999i, 24230i), vec2<i32>(43759i, -41440i), true), _wgslsmith_mult_vec2_i32(vec2<i32>(19125i, -13051i), vec2<i32>(-83340i, 51401i)))));
    global0 = array<Struct_2, 29>();
    var var_1 = firstLeadingBit(u_input.c & _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)) ^ 25589u;
    global0 = array<Struct_2, 29>();
    let var_2 = !(!select(func_3(var_0.x, max(u_input.d.xw, vec2<u32>(u_input.b, 4294967295u)), Struct_4(u_input.d.xzx, Struct_1(u_input.d.x, var_0.x, var_0, vec4<i32>(var_0.x, var_0.x, 32358i, var_0.x), u_input.d.xzw), -1i, vec4<bool>(true, true, true, false))), func_3(~var_0.x, firstTrailingBit(vec2<u32>(36775u, 22721u)), Struct_4(vec3<u32>(u_input.b, u_input.c, u_input.b), Struct_1(24568u, -23939i, var_0, vec4<i32>(0i, 2147483647i, var_0.x, var_0.x), u_input.d.yzz), -12271i, vec4<bool>(false, false, true, true))), true));
    let var_3 = vec2<u32>(_wgslsmith_mult_u32(u_input.c, u_input.d.x), _wgslsmith_mult_u32(u_input.c, 4294967295u));
    var_1 = 4294967295u ^ (abs(max(1u, max(u_input.c, 4294967295u))) >> (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(24398u, var_3.x, 4294967295u) ^ vec3<u32>(var_3.x, var_3.x, 40995u), ~u_input.d.wzz)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2247f, -527f, -933f, -1267f))) * _wgslsmith_div_vec4_f32(vec4<f32>(333f, -1000f, -1907f, 316f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(821f, 592f, 135f, -323f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(558f, 129f, 812f, 772f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1168f, -1731f, 806f, 1023f) - vec4<f32>(-1335f, -1251f, 179f, -921f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-867f, -107f, -162f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(136f, -1417f, -108f))) * vec3<f32>(-634f, -1195f, -1266f))))), ~var_3.x);
}

