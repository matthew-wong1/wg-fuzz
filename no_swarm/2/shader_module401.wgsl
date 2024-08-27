struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> i32 {
    global0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(1i, arg_1.x), countOneBits(_wgslsmith_clamp_i32(abs(arg_1.x), reverseBits(4084i), 1i)));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(675f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1411f + -511f))), -839f))), 332f);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 1108f);
    let var_2 = !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), true), true), true));
    return firstTrailingBit(~(-(~0i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_3) -> bool {
    let var_0 = Struct_1(abs(func_3(_wgslsmith_clamp_u32(arg_0.x, arg_0.x, 1u), -arg_2.b) & ~_wgslsmith_add_i32(u_input.a.x, arg_2.b.x)), _wgslsmith_clamp_i32(~1i, -8535i, _wgslsmith_div_i32(arg_2.b.x, max(u_input.a.x, u_input.a.x)) & firstLeadingBit(1i)), true);
    let var_1 = all(vec2<bool>(all(vec3<bool>(select(true, false, true), any(vec2<bool>(arg_2.a, var_0.c)), all(vec4<bool>(true, arg_2.a, arg_1, arg_1)))), arg_1));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2110f)));
    global0 = 0i << (arg_0.x % 32u);
    var var_3 = vec4<f32>(var_2, 623f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2, -108f)) * -372f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2, 1000f))))), -1000f);
    return _wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(~arg_2.b.yz, max(vec2<i32>(1i, 2285i), vec2<i32>(var_0.b, arg_2.b.x))), arg_2.b.x) != countOneBits(1i);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = Struct_3(arg_3.c && (_wgslsmith_mult_u32(~arg_2.x, arg_2.x << (arg_2.x % 32u)) < _wgslsmith_div_u32(arg_2.x, 4294967295u & arg_2.x)), abs(vec3<i32>(arg_1.x, ~(-arg_1.x), max(arg_1.x, 56828i))));
    global0 = ~_wgslsmith_mod_i32(~(~(-u_input.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(8146i, arg_3.b, 2147483647i), _wgslsmith_mod_vec3_i32(arg_1.yzx, vec3<i32>(var_0.b.x, arg_1.x, var_0.b.x))) ^ ~(u_input.a.x >> (11933u % 32u)));
    var var_1 = var_0;
    var var_2 = arg_2.x;
    global0 = -27629i;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-451f, 1175f, -585f))))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(-773f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -905f), 1f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1786f, -794f, 219f), vec3<f32>(-1271f, -283f, 1448f))) - vec3<f32>(-686f, 362f, 1158f))))), arg_0.x));
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(794f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-703f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2656f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1130f + -909f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2484f - 605f)) + 293f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-183f)) - 898f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1887f)))));
    global0 = (u_input.a.x | u_input.a.x) | 2147483647i;
    var var_1 = 0u;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(438f, 425f), 1000f, _wgslsmith_div_f32(var_0.x, -812f)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1903f, -310f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-617f, var_0.x, var_0.x)))))) * _wgslsmith_f_op_vec3_f32(func_4(!vec4<bool>(func_2(vec4<u32>(1u, 32484u, 1u, 29342u), true, Struct_3(true, vec3<i32>(u_input.a.x, 1i, u_input.a.x))), true, true, func_2(vec4<u32>(0u, 76849u, 7448u, 82432u), false, Struct_3(true, vec3<i32>(-19376i, u_input.a.x, u_input.a.x)))), -select(-vec4<i32>(u_input.a.x, 1418i, -38092i, 1i), -vec4<i32>(u_input.a.x, u_input.a.x, -4962i, 17793i), true), vec2<u32>(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(43244u, 4294967295u))), Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(-119048i, u_input.a.x, u_input.a.x)), abs(-1i), select(var_0.x > var_0.x, u_input.a.x >= u_input.a.x, any(vec2<bool>(false, true)))))));
    let var_2 = Struct_1(~(-2147483647i), firstTrailingBit(abs(13040i)), select(false, all(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false)), false));
    return Struct_1(var_2.b, -_wgslsmith_add_i32(_wgslsmith_mod_i32(12326i, u_input.a.x), -30203i), false);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_3 {
    global0 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, ~_wgslsmith_clamp_i32(34016i, arg_2.b, -3368i), -(~arg_0.b)), 37825i), arg_2.b);
    var var_0 = Struct_2(arg_2, arg_2.a, arg_2, true, arg_0);
    let var_1 = true;
    var var_2 = firstLeadingBit(~_wgslsmith_mod_u32(18611u, ~_wgslsmith_div_u32(49809u, 1u)));
    var var_3 = Struct_1(reverseBits(arg_2.a), var_0.a.b, arg_0.c == false);
    return Struct_3(func_2(vec4<u32>(abs(min(463u, 0u)), min(30028u, _wgslsmith_clamp_u32(56877u, 25542u, 1u)), 1u, 72142u), true, Struct_3(false, ~vec3<i32>(u_input.a.x, -2147483647i, -1i))), -vec3<i32>(var_3.a, 1i, -arg_2.b) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 42339u, 44986u), ~vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)));
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: vec4<i32>) -> i32 {
    let var_0 = (abs(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(76187u, 76770u, 1u), vec3<u32>(55906u, 4294967295u, 1u)))) << (~(~119674u) % 32u)) | ~1u;
    var var_1 = firstLeadingBit((arg_1.b.x << (~1u % 32u)) & _wgslsmith_sub_i32(1i, min(countOneBits(arg_2.x), arg_1.b.x ^ -6163i)));
    global0 = _wgslsmith_mult_i32(arg_1.b.x, min(18609i, -2147483647i));
    return -_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(u_input.a.x, arg_2.x, arg_2.x, u_input.a.x)), ~arg_2), -28430i | select(u_input.a.x, select(1i, u_input.a.x, true), !arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(!all(vec4<bool>(true, true, true, false)) || true, func_5(Struct_1(~u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, firstTrailingBit(u_input.a.x), _wgslsmith_mod_i32(38005i, u_input.a.x)), true), any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false))), func_1()), -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, _wgslsmith_sub_i32(u_input.a.x, -64827i), _wgslsmith_mod_i32(u_input.a.x, -55411i), ~u_input.a.x), -vec4<i32>(u_input.a.x, 0i, 24968i, -10786i)));
    global0 = -5022i;
    var var_1 = u_input.a;
    var_1 = ~vec2<i32>(_wgslsmith_div_i32(56622i, u_input.a.x), _wgslsmith_div_i32(1i, -func_5(Struct_1(var_1.x, u_input.a.x, true), false, Struct_1(-43668i, 1i, true)).b.x));
    var var_2 = Struct_1(_wgslsmith_div_i32(-1i, var_1.x | var_1.x) & reverseBits(~(i32(-1i) * -31633i)), var_1.x, func_2(select(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(15375u, 1u, 1u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 14978u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u))), ~max(vec4<u32>(1u, 61023u, 1u, 11890u), vec4<u32>(4294967295u, 1u, 13786u, 60234u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !select(true, any(vec2<bool>(false, false)), all(vec2<bool>(true, true))), Struct_3(true, max(abs(vec3<i32>(0i, 1i, -64018i)), -vec3<i32>(3117i, 21343i, var_1.x)))));
    var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-216f, 609f, _wgslsmith_f_op_f32(-513f * 504f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1564f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -643f) + _wgslsmith_f_op_f32(abs(-1171f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1566f, -1057f)))), _wgslsmith_f_op_f32(f32(-1f) * -1106f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(189f)))), ~0u);
}

