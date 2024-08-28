struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool) -> vec3<u32> {
    global0 = abs(-46970i);
    global0 = ~(-(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -2147483647i, 2147483647i), vec3<i32>(-22210i, -27774i, 2147483647i)), vec3<i32>(2147483647i, 2147483647i, 48400i)) & abs(1i)));
    let var_0 = select(43821i, _wgslsmith_mod_i32(firstTrailingBit(40439i), 75004i), true);
    var var_1 = Struct_1(false, 663f, vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(29337u, u_input.a, 0u) | vec3<u32>(55607u, 0u, u_input.a), vec3<u32>(u_input.b.x, 4294967295u, 36188u)), u_input.a), countOneBits(firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.a, u_input.b.x)))), _wgslsmith_div_u32(0u, ~_wgslsmith_mod_u32(u_input.a, u_input.a)), ~1u));
    var_1 = Struct_1(any(select(vec3<bool>(!var_1.a, var_1.c.x != 0u, var_1.a), !(!vec3<bool>(false, var_1.a, false)), arg_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(844f + var_1.b))), _wgslsmith_f_op_f32(max(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)))))), var_1.c);
    return reverseBits(~vec3<u32>(47041u, 0u, u_input.b.x) << (min(vec3<u32>(37618u, var_1.c.x, 87304u), var_1.c.wzy >> (vec3<u32>(80589u, var_1.c.x, 27638u) % vec3<u32>(32u))) % vec3<u32>(32u))) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, ~u_input.a, ~(~var_1.c.x)), ~(var_1.c.xzx << ((vec3<u32>(33293u, 26406u, var_1.c.x) & vec3<u32>(u_input.a, 79192u, 79362u)) % vec3<u32>(32u)))) % vec3<u32>(32u));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    let var_0 = !(!(!vec2<bool>(arg_0 & false, arg_1.a)));
    global0 = countOneBits(-6285i);
    var var_1 = Struct_1(any(vec4<bool>(arg_0 && arg_0, false, arg_0, all(vec2<bool>(arg_1.a, arg_0)))), arg_1.b, arg_1.c);
    return _wgslsmith_mod_u32(abs(1u), _wgslsmith_div_u32(u_input.a, ~(~u_input.b.x ^ _wgslsmith_div_u32(45800u, 11259u))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.b)) + _wgslsmith_f_op_f32(-390f * -516f))) > -1854f, 865f, vec4<u32>(~arg_3.c.x, arg_0.c.x, reverseBits(arg_0.c.x ^ arg_3.c.x), 1u) << (~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 15622u, 4294967295u, arg_0.c.x), arg_0.c)) % vec4<u32>(32u)));
    let var_1 = var_0.a;
    var var_2 = arg_3.c.x;
    var_2 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_3.c.x << (~var_0.c.x % 32u), ~var_0.c.x), max(arg_3.c.x, func_4(false, arg_3, firstTrailingBit(func_3(arg_3.a)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.b)), var_0.b, arg_0.b, arg_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-488f, arg_3.b, arg_0.b, arg_0.b))), 0u < ~arg_3.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1502f, -231f, 423f, arg_0.b) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, -525f, 119f, 963f)))), any(arg_1.zyx))));
    return select(!select(select(vec2<bool>(arg_0.a, arg_3.a), vec2<bool>(false, var_0.a), arg_1.ww), arg_1.wy, !arg_0.a && all(vec2<bool>(false, arg_0.a))), !vec2<bool>(var_0.a, var_0.a), vec2<bool>(!(!any(vec3<bool>(arg_3.a, false, false))), !any(arg_1)));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global0 = countOneBits(_wgslsmith_dot_vec2_i32(-vec2<i32>(firstTrailingBit(1i), 35717i << (u_input.b.x % 32u)), -(~vec2<i32>(1i, 1i))));
    var var_0 = arg_0.zz;
    let var_1 = Struct_1(any(!(!func_2(Struct_1(arg_0.x, 1994f, vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), vec4<bool>(arg_0.x, true, false, arg_0.x), 32380i, Struct_1(true, -634f, vec4<u32>(2696u, 1u, 76758u, 42847u))))), _wgslsmith_f_op_f32(-1f), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(9617u), 0u, 1u, u_input.b.x), ~(vec4<u32>(55550u, u_input.a, u_input.a, u_input.a) | vec4<u32>(u_input.a, 0u, 53076u, u_input.a))), vec4<u32>(u_input.a, 55359u, 28578u, ~func_3(arg_0.x).x)));
    var var_2 = firstTrailingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(var_1.c, vec4<u32>(57623u, u_input.a, u_input.a, 22037u)), ~u_input.b.x, reverseBits(var_1.c.x)), vec3<u32>(var_1.c.x, ~4294967295u, ~var_1.c.x & ~var_1.c.x)));
    var var_3 = var_1;
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> bool {
    var var_0 = Struct_1((abs(1i) ^ _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, -1i, 1i), vec3<i32>(arg_1, -2147483647i, -2147483647i), vec3<bool>(arg_2.a, arg_0.a, arg_0.a)), vec3<i32>(arg_1, arg_1, -1i))) <= arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -597f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-125f + 1417f)))))), arg_0.c);
    let var_1 = arg_0;
    let var_2 = Struct_1(false, _wgslsmith_f_op_f32(select(645f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.b)))), all(select(!vec2<bool>(var_1.a, false), vec2<bool>(var_0.a, var_0.a), false)))), vec4<u32>(_wgslsmith_div_u32(u_input.a, 1u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_1.c, vec4<u32>(15328u, arg_2.c.x, u_input.a, arg_0.c.x)), _wgslsmith_add_u32(var_1.c.x, _wgslsmith_clamp_u32(4294967295u, u_input.b.x, 0u))), u_input.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(var_0.c, firstLeadingBit(var_0.c), var_1.c), ~(vec4<u32>(4294967295u, var_1.c.x, var_0.c.x, 47815u) >> (var_1.c % vec4<u32>(32u))))));
    global0 = ~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(arg_1, -2147483647i, -1i) << (var_2.c.zxx % vec3<u32>(32u))) << (~(~var_2.c.wwz) % vec3<u32>(32u)), select(vec3<i32>(-44754i, 0i, arg_1), vec3<i32>(arg_1, arg_1, -1i), select(vec3<bool>(var_2.a, false, var_0.a), vec3<bool>(var_2.a, var_1.a, arg_0.a), true)) | abs(countOneBits(vec3<i32>(arg_1, arg_1, -46428i))));
    var var_3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(10765i, _wgslsmith_add_i32(arg_1, arg_1)), min(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(0i, arg_1)) ^ ~vec2<i32>(arg_1, arg_1), _wgslsmith_div_vec2_i32(vec2<i32>(arg_1, arg_1) << (var_0.c.zw % vec2<u32>(32u)), -vec2<i32>(-2147483647i, arg_1))), vec2<i32>(0i, arg_1)), max(-vec2<i32>(-arg_1, -arg_1), -(~vec2<i32>(arg_1, 2147483647i))));
    return !((select(true, any(vec4<bool>(true, true, arg_0.a, arg_0.a)), var_2.b < 1000f) || false) | any(vec3<bool>(any(vec3<bool>(false, false, var_2.a)), true, all(vec2<bool>(var_1.a, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(vec3<bool>(func_5(func_1(vec3<bool>(false, false, true)), countOneBits(13576i), Struct_1(true, -2187f, vec4<u32>(u_input.b.x, 0u, 31085u, 36779u))), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), func_1(vec3<bool>(true, false, false)).b < _wgslsmith_f_op_f32(f32(-1f) * -742f)), vec3<bool>(all(vec2<bool>(true, false)), true, -2147483647i <= _wgslsmith_clamp_i32(19931i, 6948i, 37209i)), vec3<bool>(any(func_2(Struct_1(true, -224f, vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.a)), vec4<bool>(true, false, true, true), 5420i, Struct_1(true, 1342f, vec4<u32>(1u, 0u, 1u, u_input.b.x)))), _wgslsmith_dot_vec3_i32(vec3<i32>(60875i, -12113i, -11231i), vec3<i32>(17100i, 2147483647i, -1i)) > ~30363i, false)));
    var_0 = true;
    let var_1 = Struct_1(false, _wgslsmith_f_op_f32(floor(996f)), vec4<u32>(54483u, _wgslsmith_mod_u32(u_input.b.x, 0u), 1u, abs(u_input.a)));
    let var_2 = var_1.c.yx;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.b, 449f, var_1.b, var_1.b), vec4<f32>(-1048f, -568f, 774f, -376f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(935f, var_1.b, 1416f, 258f) * vec4<f32>(1938f, -317f, var_1.b, var_1.b))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1758f, 1636f, var_1.b, var_1.b))))));
    var var_4 = var_1;
    var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-476f, var_1.b, 202f, 1009f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1305f, var_4.b, 311f, -1189f) * vec4<f32>(var_1.b, -1217f, -845f, -1000f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.x, var_4.b, var_3.x, -515f))), select(vec4<bool>(true, false, true, var_4.a), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(true, false, var_1.a, var_4.a)))), select(select(vec4<bool>(false, var_1.a, var_4.a, var_1.a), vec4<bool>(var_1.a, var_1.a, false, var_1.a), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, var_1.a, true), false), select(vec4<bool>(true, var_4.a, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, var_1.a, false, false)))))) * vec4<f32>(var_4.b, var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b))), 189f));
    var var_5 = var_1.c.x;
    let var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, 1i, 1i) >> (~(var_1.c.yzw << (vec3<u32>(var_4.c.x, u_input.b.x, var_4.c.x) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.yy) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, -892f) - var_3.yy))));
}

