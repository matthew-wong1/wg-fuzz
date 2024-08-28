struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<i32, 25> = array<i32, 25>(i32(-2147483648), 24042i, i32(-2147483648), -13837i, 65634i, -12860i, 2147483647i, -54822i, 31004i, i32(-2147483648), 0i, -1i, -56861i, 9413i, 0i, -5413i, -53137i, 0i, 1i, 0i, 1i, 0i, -18886i, -1i, 45726i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> vec3<i32> {
    let var_0 = _wgslsmith_dot_vec3_u32(global0.xxy, u_input.c.xzw);
    var var_1 = Struct_2(Struct_1(abs(reverseBits(vec2<u32>(3365u, global0.x))), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-635f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -447f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -311f)))), ~2147483647i);
    let var_2 = var_1.a.b.x;
    var var_3 = ~vec4<i32>(-43775i, 74844i, _wgslsmith_mod_i32(-abs(u_input.a.x), 73175i), -46609i);
    return var_3.wzy & -vec3<i32>(6711i, max(~2147483647i, firstTrailingBit(var_3.x)), ~var_1.b >> (1u % 32u));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(~(vec2<u32>(arg_3.a.x, 1u) ^ ~abs(arg_3.a)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(2100f)), _wgslsmith_f_op_f32(arg_2 + 390f)), _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(arg_2, arg_3.b.x)), -245f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2004f, 1000f, arg_2, arg_2)))) * arg_3.b))));
    let var_1 = Struct_1(u_input.c.yz ^ arg_3.a, arg_3.b);
    global1 = array<i32, 25>();
    var var_2 = ~(~u_input.d) >> (_wgslsmith_div_vec4_u32(u_input.d, u_input.c) % vec4<u32>(32u));
    global0 = ~u_input.d;
    return vec3<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))))), !any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), any(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true), false)));
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = Struct_2(arg_3, firstTrailingBit(~(~(-41968i))));
    var var_1 = Struct_2(Struct_1(~abs(firstTrailingBit(arg_3.a)), vec4<f32>(arg_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(295f - -553f))), _wgslsmith_f_op_f32(-113f + _wgslsmith_f_op_f32(max(1511f, 1284f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b.x) - _wgslsmith_f_op_f32(460f + arg_3.b.x)))), reverseBits(_wgslsmith_add_i32(var_0.b, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-25974i, 0i, global1[_wgslsmith_index_u32(global0.x, 25u)]), vec3<i32>(-31237i, u_input.a.x, var_0.b)))));
    var var_2 = Struct_1(reverseBits(~firstLeadingBit(abs(var_0.a.a))), vec4<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.x * var_1.a.b.x) * var_0.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x))), _wgslsmith_f_op_f32(var_1.a.b.x + arg_2)));
    let var_3 = Struct_1(max(arg_3.a, global0.xw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(1416f, var_1.a.b.x), var_0.a.b.x, 1828f, arg_2)))));
    let var_4 = firstTrailingBit(-11949i);
    return u_input.d;
}

fn func_2(arg_0: vec3<i32>) -> vec2<u32> {
    global0 = select(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d.x, 1u, 0u, u_input.d.x), reverseBits(vec4<u32>(1u, global0.x, 15588u, global0.x))), min(vec4<u32>(4294967295u, 10127u, global0.x, 1u), reverseBits(u_input.d >> (u_input.d % vec4<u32>(32u)))), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)))) | func_4(vec2<u32>(_wgslsmith_dot_vec3_u32(global0.xwy, ~vec3<u32>(global0.x, 0u, u_input.c.x)), abs(u_input.d.x)), all(select(vec3<bool>(true, true, true), func_3(vec4<i32>(46385i, -15894i, global1[_wgslsmith_index_u32(u_input.d.x, 25u)], u_input.a.x), Struct_2(Struct_1(vec2<u32>(8511u, 32946u), vec4<f32>(1000f, -882f, -2027f, -1730f)), u_input.e), -1000f, Struct_1(u_input.c.yz, vec4<f32>(179f, -634f, 807f, -239f))), vec3<bool>(true, false, false))), 3606f, Struct_1(vec2<u32>(u_input.c.x, firstLeadingBit(1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(524f, -337f, 184f, -1669f))));
    return ~u_input.c.xw;
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(282f + 1058f) * 787f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(1565f, _wgslsmith_div_f32(102f, arg_2.b.x)), 162f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1059f, arg_2.b.x)))), 1749f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-411f + _wgslsmith_div_f32(1173f, arg_2.b.x)))));
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.b.x, -1467f)) * _wgslsmith_f_op_f32(-arg_2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - arg_2.b.x), arg_1)) - _wgslsmith_f_op_f32(1021f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b.x * arg_2.b.x), -2351f))), 526f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(698f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x))))));
    global1 = array<i32, 25>();
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.wzz + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.b.yxw * vec3<f32>(802f, arg_2.b.x, -206f)))))));
    global1 = array<i32, 25>();
    return Struct_1(~_wgslsmith_add_vec2_u32(~u_input.d.yz, func_4(arg_2.a | u_input.d.wy, arg_1, -1337f, arg_2).yz), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_2.b + vec4<f32>(1087f, var_0.x, 1916f, arg_2.b.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_2.b)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 184f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), var_1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1534f), -957f, false & arg_1)), _wgslsmith_f_op_f32(trunc(377f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(select(~(-2147483647i), 3644i, false), u_input.e, countOneBits(i32(-1i) * -u_input.e));
    global0 = vec4<u32>(~firstLeadingBit(u_input.b), _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(~u_input.c, ~vec4<u32>(global0.x, global0.x, global0.x, 0u)), ~(u_input.c.x >> ((103589u | u_input.b) % 32u))), ((min(global0.x, 4294967295u) | global0.x) ^ _wgslsmith_div_u32(37466u, 1u)) >> (_wgslsmith_mult_u32(4294967295u, firstTrailingBit(107833u)) % 32u), ~(1u << (_wgslsmith_dot_vec2_u32(select(global0.xx, global0.yw, false), u_input.d.yw & u_input.c.wz) % 32u)));
    let var_1 = 1000f;
    let var_2 = _wgslsmith_f_op_f32(exp2(var_1));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_2)))), -235f);
    let var_4 = _wgslsmith_sub_vec3_i32(vec3<i32>(abs(u_input.e), -global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(12414u, u_input.c.x), 25u)], firstLeadingBit(~1i)), func_1());
    var var_5 = func_5(_wgslsmith_dot_vec4_u32(u_input.c, u_input.d), true, Struct_1(_wgslsmith_add_vec2_u32(u_input.c.zx, func_2(-vec3<i32>(var_4.x, var_4.x, global1[_wgslsmith_index_u32(u_input.d.x, 25u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, -628f, var_1))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(968f, var_2, var_2, var_1), vec4<f32>(var_1, -1000f, var_3.x, -271f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_sub_u32(~32996u, var_5.a.x >> (var_5.a.x % 32u)), _wgslsmith_sub_u32(u_input.c.x, func_5(firstTrailingBit(44369u), true, Struct_1(u_input.c.yy, vec4<f32>(632f, var_1, var_1, -3015f))).a.x), func_2(vec3<i32>(firstLeadingBit(38773i), _wgslsmith_add_i32(u_input.e, var_0.x), 1i)).x, func_2(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(-1i, u_input.a.x, var_4.x)) >> (vec3<u32>(7502u, 59309u, var_5.a.x) % vec3<u32>(32u))).x), ~vec3<u32>(global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), _wgslsmith_add_vec2_u32(u_input.c.zw, u_input.d.zy)), global0.x), _wgslsmith_mult_vec2_i32(abs(~vec2<i32>(-67994i, var_4.x)), ~countOneBits(vec2<i32>(u_input.a.x, 8045i))));
}

