struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    var var_0 = true;
    var var_1 = Struct_2(-2147483647i, !any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))));
    var_1 = Struct_2(_wgslsmith_div_i32(var_1.a, countOneBits(1i)), true);
    var var_2 = Struct_2(_wgslsmith_dot_vec2_i32(~firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.a, u_input.c.x), u_input.c.yz)), u_input.c.zy), true);
    var var_3 = vec4<i32>((u_input.c.x >> (~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(61852u, 1111u, 1u)) % 32u)) ^ (i32(-1i) * -1i), select(countOneBits(-37826i & firstTrailingBit(1i)), ~(~select(u_input.c.x, 47922i, false)), var_2.b), _wgslsmith_add_i32(~var_2.a, -abs(var_1.a)), 1i);
    return u_input.a.x ^ u_input.b;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = !select(!select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(!(-2147483647i >= u_input.c.x), select(all(vec4<bool>(false, false, false, true)), arg_0 > -38550i, true), all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), !select(true, true, false)), any(vec4<bool>(true, true, false, true)));
    var var_1 = ~(~_wgslsmith_clamp_u32(~u_input.b, ~42630u, u_input.a.x)) >> (~func_3() % 32u);
    var_0 = vec4<bool>(all(vec2<bool>(false, true)), any(!select(select(var_0.xw, var_0.wz, var_0.x), !vec2<bool>(false, var_0.x), var_0.xx)), var_0.x, var_0.x);
    var var_2 = Struct_2(_wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(u_input.c, max(u_input.c, u_input.c)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0 << (u_input.b % 32u), 0i, _wgslsmith_dot_vec2_i32(u_input.c.xz, u_input.c.yz)), ~(-vec3<i32>(-1i, u_input.c.x, u_input.c.x)))), var_0.x);
    var_0 = vec4<bool>(all(vec3<bool>(true, true, true)), false, var_2.b, any(vec2<bool>(any(var_0.wzy), false)));
    return Struct_1(!select(vec3<bool>(arg_1.x > arg_1.x, all(vec4<bool>(false, false, false, var_2.b)), all(vec4<bool>(false, false, var_0.x, true))), var_0.www, firstTrailingBit(1i) > -2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(-606f, 2011f, 408f, 276f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(519f, -825f, 209f, arg_1.x))), any(vec3<bool>(var_0.x, true, false)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-3433f, arg_1.x, arg_1.x, -604f) - arg_1))), -58517i, vec3<f32>(_wgslsmith_div_f32(768f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(288f)) - 729f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x + 657f))), 492f), arg_1.x), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(~71845u, u_input.a.x, min(13708u, 63763u), 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(33461u, 0u, u_input.a.x, u_input.b), vec4<u32>(u_input.a.x, 0u, 6312u, 4294967295u) | vec4<u32>(u_input.a.x, u_input.b, u_input.b, 0u)) | (countOneBits(vec4<u32>(u_input.a.x, 0u, 24322u, u_input.a.x)) << (vec4<u32>(77735u, 1u, u_input.b, 1u) % vec4<u32>(32u)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: f32, arg_3: vec3<u32>) -> bool {
    var var_0 = func_2(select(max(52820i, abs(u_input.c.x) >> (~arg_3.x % 32u)), abs(arg_1.x), true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-640f, 458f, arg_2, arg_2)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 940f, arg_2, arg_2)) - vec4<f32>(-1013f, -1144f, arg_2, 1000f))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1160f, arg_2, -365f, 1818f)), vec4<f32>(arg_2, -830f, 666f, -1333f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, arg_2, -350f) + vec4<f32>(arg_2, arg_2, arg_2, 1083f))), vec4<bool>(false, true && (u_input.c.x < arg_1.x), !(arg_2 > arg_2), 508f != _wgslsmith_f_op_f32(max(565f, arg_2))))));
    var var_1 = Struct_1(vec3<bool>(!(!all(vec4<bool>(var_0.a.x, false, false, false))), false, var_0.a.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(645f, arg_2, -222f, -205f)))))), 1i, var_0.b.wxy, vec4<u32>(1u, arg_0.x, ~_wgslsmith_div_u32(arg_3.x, arg_3.x) & ~1u, firstTrailingBit(~50479u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-var_1.b);
    let var_3 = _wgslsmith_mod_i32(-47611i, -var_1.c);
    var_1 = func_2(~(-firstTrailingBit(39132i)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_2, var_0.b)) + var_0.b), func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(3109i, 2147483647i, var_0.c, arg_1.x), vec4<i32>(6883i, -26878i, 1i, arg_1.x)), _wgslsmith_f_op_vec4_f32(-var_2)).b), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x * var_1.d.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_1.d.x)), _wgslsmith_f_op_f32(sign(-1232f)))), -782f, 934f))));
    return firstTrailingBit(var_3) == _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(abs(min(vec4<i32>(36724i, 2147483647i, 2147483647i, -17825i), vec4<i32>(-36650i, var_1.c, u_input.c.x, u_input.c.x))), _wgslsmith_mod_vec4_i32(-vec4<i32>(arg_1.x, u_input.c.x, -21538i, -41753i), vec4<i32>(35256i, var_1.c, 2147483647i, 2147483647i))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_0.c, u_input.c.x, u_input.c.x, var_0.c), -vec4<i32>(1i, -59365i, var_3, var_3)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 62863i, -1i, u_input.c.x), vec4<i32>(arg_1.x, 1i, -8263i, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(u_input.a.yx, vec3<i32>(32452i, u_input.c.x >> ((u_input.a.x | 4294967295u) % 32u), 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(309f + -575f) - -401f)), vec3<u32>(_wgslsmith_mod_u32(~u_input.b, 10844u), reverseBits(0u) << (~u_input.a.x % 32u), 4294967295u)) && true;
    var var_0 = -u_input.c.x;
    var_0 = i32(-1i) * -18705i;
    var_0 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.c.x & 35473i, -u_input.c.x, 2147483647i) << (u_input.a.x % 32u), ~2147483647i), reverseBits(u_input.c.x));
    let var_1 = Struct_1(vec3<bool>(select(!any(vec4<bool>(true, false, true, true)), false, false), true, all(func_2(1i, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-323f, -141f, -1000f, -512f), vec4<f32>(1499f, 1306f, -793f, 570f)))).a)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))), 1i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(func_2(14877i, vec4<f32>(-777f, -197f, -1726f, 874f)).b.x, _wgslsmith_f_op_f32(sign(-430f))), _wgslsmith_f_op_f32(-1866f + _wgslsmith_div_f32(-1251f, -489f)), 1000f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, -158f)), _wgslsmith_f_op_f32(1068f - 466f), _wgslsmith_f_op_f32(trunc(-1825f))))), vec3<bool>(true, true, true))), ~vec4<u32>((11517u & u_input.a.x) ^ abs(31814u), ~(~58966u), _wgslsmith_dot_vec3_u32(~u_input.a, ~vec3<u32>(u_input.b, 0u, u_input.a.x)), 1u));
    var var_2 = var_1.e;
    var var_3 = firstLeadingBit(vec3<i32>(~(-70399i) | u_input.c.x, 53593i, var_1.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(50549u, max(_wgslsmith_mod_u32(0u, 1u), var_2.x)) | ~(~u_input.a.x), ((u_input.a ^ vec3<u32>(var_2.x, var_1.e.x, 37114u)) << (var_2.yyy % vec3<u32>(32u))) & select(countOneBits(vec3<u32>(var_1.e.x, 22335u, var_1.e.x) | vec3<u32>(var_2.x, 47998u, var_2.x)), (u_input.a ^ vec3<u32>(u_input.a.x, u_input.a.x, 0u)) << (~vec3<u32>(u_input.a.x, u_input.a.x, 1646u) % vec3<u32>(32u)), vec3<bool>(false, var_1.a.x || false, var_1.a.x)), vec3<u32>(_wgslsmith_mult_u32(~(~u_input.a.x), 1u), var_2.x, var_2.x), u_input.a.x);
}

