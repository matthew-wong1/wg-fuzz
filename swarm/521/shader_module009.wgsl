struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(Struct_1(vec2<f32>(-1177f, 763f), 862i, vec2<u32>(1u, 73078u), 80130u), -784f, true), Struct_3(Struct_1(vec2<f32>(-806f, 1309f), 33718i, vec2<u32>(25158u, 30386u), 0u), -209f, true), Struct_3(Struct_1(vec2<f32>(733f, -112f), i32(-2147483648), vec2<u32>(13968u, 1u), 527u), 805f, true), Struct_3(Struct_1(vec2<f32>(-1823f, 113f), 0i, vec2<u32>(0u, 11790u), 1u), 1900f, false), Struct_3(Struct_1(vec2<f32>(-415f, 1253f), -52453i, vec2<u32>(44535u, 56816u), 4294967295u), -1236f, false), Struct_3(Struct_1(vec2<f32>(1466f, -2612f), 43826i, vec2<u32>(20912u, 28191u), 4294967295u), 1048f, true), Struct_3(Struct_1(vec2<f32>(-439f, 1000f), 2147483647i, vec2<u32>(4294967295u, 1u), 4294967295u), 1370f, false));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> u32 {
    global0 = array<Struct_3, 7>();
    var var_0 = arg_0.c;
    let var_1 = global0[_wgslsmith_index_u32(u_input.b >> (arg_0.a.c.x % 32u), 7u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a.a + arg_0.a.a) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1836f, var_1.b), vec2<f32>(arg_0.b, 1172f)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.a.a))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(798f, arg_0.a.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-468f))))));
    let var_3 = _wgslsmith_dot_vec4_i32(min(vec4<i32>(abs(-16537i), min(_wgslsmith_add_i32(-7111i, arg_1), 24407i | arg_0.a.b), _wgslsmith_mod_i32(~2147483647i, var_1.a.b >> (var_1.a.d % 32u)), -firstTrailingBit(arg_0.a.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(abs(-22462i), ~u_input.d, -var_1.a.b, -15491i), vec4<i32>(_wgslsmith_mod_i32(u_input.d, -1i), min(-46864i, arg_1), 2147483647i, ~(-2864i)))), vec4<i32>(2147483647i, ~firstTrailingBit(-2154i) ^ u_input.a.x, countOneBits(firstLeadingBit(i32(-1i) * -42178i)), (_wgslsmith_div_i32(u_input.a.x, arg_0.a.b) | u_input.a.x) ^ _wgslsmith_mult_i32(arg_0.a.b, ~var_1.a.b)));
    return u_input.c | (firstLeadingBit(1u) >> (arg_0.a.c.x % 32u));
}

fn func_2() -> vec2<u32> {
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(abs(0u), u_input.e.x ^ u_input.e.x), firstTrailingBit(select(~(~4294967295u), func_3(global0[_wgslsmith_index_u32(0u, 7u)], 1i), true)));
    global0 = array<Struct_3, 7>();
    var var_1 = var_0;
    let var_2 = countOneBits(select(vec4<u32>(_wgslsmith_mult_u32(1u, u_input.b), ~0u, var_0, 12208u), select(~vec4<u32>(u_input.e.x, 12208u, u_input.e.x, var_0), firstLeadingBit(vec4<u32>(0u, 1u, var_0, var_0)), all(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true)) ^ (_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0, 4294967295u, var_0), countOneBits(vec4<u32>(32781u, u_input.c, u_input.b, 4294967295u))) >> (vec4<u32>(1u, ~u_input.e.x, countOneBits(16855u), ~1u) % vec4<u32>(32u))));
    global0 = array<Struct_3, 7>();
    return max(~_wgslsmith_mod_vec2_u32(~(~u_input.e.zx), _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 42629u), firstLeadingBit(vec2<u32>(var_0, 1u)))), _wgslsmith_add_vec2_u32(~vec2<u32>(1u & var_0, ~var_2.x), u_input.e.yx));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_1) -> f32 {
    global0 = array<Struct_3, 7>();
    var var_0 = ~_wgslsmith_dot_vec2_u32(arg_1.a.c, countOneBits(arg_3.c));
    var var_1 = Struct_2(vec4<i32>(-(i32(-1i) * -arg_0), ~abs(7862i), arg_3.b >> (~u_input.b % 32u), arg_3.b), abs(-_wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(2147483647i, 5230i)))), arg_1.a);
    var var_2 = vec2<bool>(false, !(!all(select(vec2<bool>(arg_1.c, false), vec2<bool>(true, true), arg_1.c))));
    let var_3 = arg_3.b & 29065i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.c.a.x)) * _wgslsmith_f_op_f32(round(-291f))) - -161f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -127f)) * 1762f)) * var_1.c.a.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> vec4<u32> {
    let var_0 = vec2<u32>(_wgslsmith_add_u32(u_input.c, 6189u), ~u_input.e.x);
    let var_1 = _wgslsmith_f_op_f32(func_4(max(u_input.d, 1i) ^ ~(~27506i), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1622f, 622f) * _wgslsmith_div_vec2_f32(vec2<f32>(-386f, -1134f), vec2<f32>(-1259f, -1368f))), ~u_input.d, ~u_input.e.zz >> (func_2() % vec2<u32>(32u)), ~17027u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f))), (-u_input.a.x << (u_input.e.x % 32u)) <= u_input.a.x), 1u, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-857f - -244f), -958f) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(643f, 1526f) + vec2<f32>(1200f, -935f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1043f, -1407f))))), 1i, ~vec2<u32>(var_0.x, ~u_input.b), var_0.x)));
    var var_2 = Struct_2(vec4<i32>(firstTrailingBit(14560i), u_input.d, ~(~0i), -abs(_wgslsmith_mod_i32(2147483647i, 26487i))), ~_wgslsmith_clamp_vec2_i32(-reverseBits(u_input.a), vec2<i32>(firstLeadingBit(u_input.d), _wgslsmith_add_i32(u_input.a.x, -1105i)), u_input.a), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -195f) * vec2<f32>(962f, -1417f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(538f, var_1)))))), -21716i | firstTrailingBit(-2147483647i), ~vec2<u32>(min(u_input.e.x, 0u), var_0.x), u_input.b));
    var_2 = Struct_2(_wgslsmith_div_vec4_i32(~vec4<i32>(-2147483647i, 2147483647i, -2147483647i, -32165i) & -var_2.a, firstLeadingBit(vec4<i32>(26585i, ~u_input.a.x, u_input.a.x | 0i, abs(var_2.a.x)))), vec2<i32>(_wgslsmith_dot_vec3_i32(var_2.a.wyw, vec3<i32>(~u_input.a.x, -var_2.a.x, var_2.a.x)), ~1i), var_2.c);
    let var_3 = Struct_2(var_2.a, _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(~var_2.b.x, u_input.d), ~_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, var_2.c.b), vec2<i32>(2147483647i, 1i))), var_2.a.zw), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.c.a), _wgslsmith_f_op_vec2_f32(-var_2.c.a))), -19835i, u_input.e.yx, ~_wgslsmith_div_u32(var_2.c.d, _wgslsmith_clamp_u32(33355u, var_0.x, u_input.c))));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(~58374u, 34710u, ~u_input.e.x, var_0.x << (min(u_input.c, 54261u) % 32u)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.c.d, var_2.c.c.x, 62689u, 0u), vec4<u32>(u_input.b, var_3.c.c.x, var_2.c.c.x, 4294967295u)), vec4<u32>(_wgslsmith_sub_u32(u_input.b, 0u), 0u, 0u, reverseBits(2905u)))) >> (abs(vec4<u32>(~(~8169u), countOneBits(1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.c.c.x, u_input.e.x), vec2<u32>(4294967295u, 0u) ^ vec2<u32>(var_3.c.d, var_0.x)), ~(~var_2.c.c.x))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_u32(func_1(vec4<bool>(any(vec4<bool>(false, false, false, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), false, (u_input.d < u_input.d) && all(vec4<bool>(false, false, true, true))), true), vec4<u32>(u_input.c, ~(~(~2836u)), func_1(vec4<bool>(true, true, true, true), false).x | countOneBits(u_input.c), 4294967295u));
    global0 = array<Struct_3, 7>();
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-209f, -668f, true)))))), _wgslsmith_f_op_f32(f32(-1f) * -610f)), -43817i, max(vec2<u32>(var_0.x, _wgslsmith_clamp_u32(1u, func_2().x, ~13263u)), vec2<u32>(17371u, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(79612u, 67173u, 4294967295u, u_input.b), vec4<u32>(u_input.e.x, var_0.x, u_input.b, 0u))))), abs(firstTrailingBit(4294967295u)));
    var_0 = vec4<u32>(_wgslsmith_add_u32(max(~firstTrailingBit(4294967295u), func_3(Struct_3(var_1, -2101f, true), min(var_1.b, 0i))), 1u), countOneBits(select(1u << (var_1.c.x % 32u), 0u, true)) >> (~var_0.x % 32u), ~_wgslsmith_div_u32(var_0.x, 39975u), 0u);
    var var_2 = !select(vec2<bool>(true, false), vec2<bool>(all(vec2<bool>(true, true)), true), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), false), abs(var_0.x) > select(4294967295u, var_0.x, true)));
    let var_3 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(40442u), u_input.e.x, ~u_input.b ^ var_0.x, select(var_1.d, 4294967295u, var_2.x) | ~var_0.x), ~func_1(vec4<bool>(true, false, true, true), true)));
}

