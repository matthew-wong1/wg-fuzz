struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 6760i, 2147483647i, -3379i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> vec3<u32> {
    global0 = vec4<i32>(~(-1i), ~((i32(-1i) * -2147483647i) ^ global0.x), u_input.a.x, select(reverseBits(-48266i), global0.x, false));
    global0 = vec4<i32>(~global0.x, 0i, -1i, _wgslsmith_mod_i32(~(-49580i), firstTrailingBit(30130i)));
    let var_0 = arg_1;
    let var_1 = false;
    var var_2 = Struct_1(vec3<u32>(firstTrailingBit(1u), ~(~_wgslsmith_div_u32(arg_2, 4294967295u)), 1u));
    return var_2.a >> (select(var_2.a, vec3<u32>(~4294967295u >> (firstLeadingBit(arg_2) % 32u), 1u, ~arg_2), vec3<bool>(var_1, true, any(!vec4<bool>(true, arg_0, false, false)))) % vec3<u32>(32u));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(4294967295u, 1u, 4294967295u), ~vec3<u32>(18655u, 1u, 1u), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))), min(~vec3<u32>(45623u, 36245u, 4294967295u), ~vec3<u32>(0u, 29472u, 65229u)) & ~func_3(false, Struct_2(vec2<bool>(false, true)), 1u)));
    global0 = -(~(~vec4<i32>(0i, -2147483647i, -1i, 0i) ^ (vec4<i32>(-47455i, u_input.b.x, u_input.a.x, 1i) & vec4<i32>(global0.x, u_input.a.x, -2147483647i, u_input.a.x))) ^ (((vec4<i32>(global0.x, -1i, u_input.a.x, u_input.a.x) ^ vec4<i32>(global0.x, u_input.a.x, u_input.b.x, -13058i)) | firstTrailingBit(vec4<i32>(global0.x, global0.x, global0.x, 7054i))) ^ ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -29678i, 57415i, global0.x), vec4<i32>(u_input.b.x, 2147483647i, global0.x, 0i))));
    let var_1 = var_0;
    global0 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(~10562i, u_input.b.x, u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), u_input.a.yy)) & ~(~(-vec4<i32>(global0.x, 0i, 2147483647i, global0.x))), vec4<i32>(u_input.a.x, i32(-1i) * -49245i, -u_input.b.x, countOneBits(firstLeadingBit(-6978i))), (vec4<i32>(~u_input.a.x, ~(-14101i), 32920i << (var_0.a.x % 32u), abs(u_input.a.x)) >> (vec4<u32>(max(1u, var_0.a.x), var_0.a.x, var_1.a.x ^ 14281u, var_0.a.x) % vec4<u32>(32u))) | vec4<i32>(-(-24554i | global0.x), u_input.a.x, u_input.a.x, _wgslsmith_dot_vec3_i32(global0.zww, ~global0.wzz)));
    var var_2 = var_1;
    return Struct_1(var_1.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = select(_wgslsmith_add_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(47468i, global0.x, 1i, u_input.a.x), vec4<i32>(1i, 1i, arg_2.x, -2147483647i)), (-33980i | u_input.a.x) << (_wgslsmith_div_u32(arg_3.a.x, 23057u) % 32u)), global0.yy), arg_2, (_wgslsmith_mult_u32(firstLeadingBit(arg_0.a), 80707u) > 44570u) | arg_1.x);
    var var_1 = vec4<i32>(0i, (-37786i << ((~arg_3.a.x & 44906u) % 32u)) & _wgslsmith_mult_i32(3431i, u_input.a.x & -22714i), u_input.a.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(~var_0.x, global0.x, ~(-51055i)), global0.xyw), _wgslsmith_mult_i32(-var_0.x, 0i)));
    var var_2 = arg_3;
    global0 = _wgslsmith_add_vec4_i32(vec4<i32>(~(arg_2.x << (var_2.a.x % 32u)) >> (func_3(all(arg_1.xwz), Struct_2(vec2<bool>(false, true)), 4294967295u).x % 32u), _wgslsmith_mult_i32(_wgslsmith_add_i32(var_0.x, -15663i), var_1.x) | 1i, global0.x, 0i), vec4<i32>(-1i, 2147483647i, _wgslsmith_add_i32(~(~(-2147483647i)), 14200i), u_input.a.x));
    var_2 = func_2();
    return Struct_3(_wgslsmith_sub_u32(15806u, 1u));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = !all(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, false, false), true)));
    var var_1 = Struct_2(select(select(select(select(vec2<bool>(var_0, var_0), vec2<bool>(false, true), var_0), vec2<bool>(var_0, true), true), !vec2<bool>(var_0, var_0), !(!vec2<bool>(var_0, true))), !(!vec2<bool>(var_0, var_0)), all(!select(vec3<bool>(false, true, var_0), vec3<bool>(false, true, var_0), true))));
    var var_2 = Struct_2(!vec2<bool>(firstTrailingBit(arg_0.a) < arg_2.a.x, any(vec3<bool>(var_1.a.x, false, var_0))));
    var var_3 = Struct_2(!select(var_1.a, var_2.a, var_1.a.x));
    let var_4 = abs(_wgslsmith_add_vec2_i32(global0.yy, _wgslsmith_mult_vec2_i32(countOneBits(u_input.b.xy) << ((vec2<u32>(arg_1.a, 16135u) & vec2<u32>(26616u, arg_2.a.x)) % vec2<u32>(32u)), u_input.a.yy)));
    return ~min(~vec4<u32>(~arg_2.a.x, 1u, ~1u, arg_0.a), select(vec4<u32>(reverseBits(0u), arg_1.a, arg_1.a, ~0u), vec4<u32>(~73009u, arg_0.a, ~27383u, 1u), select(var_3.a.x, true, true)));
}

fn func_6(arg_0: vec4<u32>) -> Struct_2 {
    global0 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(~(-20992i), min(10200i, global0.x)), max(global0.x, -global0.x), countOneBits(-1i), -23005i), -vec4<i32>(-global0.x, u_input.b.x, -36623i, 18694i)) << ((vec4<u32>(~arg_0.x, 1u, ~arg_0.x, firstLeadingBit(0u)) >> (~max(_wgslsmith_mod_vec4_u32(vec4<u32>(56121u, 57379u, 54400u, 4294967295u), vec4<u32>(arg_0.x, 45976u, arg_0.x, arg_0.x)), arg_0 ^ vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_0 = func_4(func_4(Struct_3(62243u | ~arg_0.x), select(vec4<bool>(true, all(vec3<bool>(false, true, false)), all(vec3<bool>(true, true, false)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec3<bool>(false, false, true)), false)), select(-vec2<i32>(global0.x, -2147483647i), vec2<i32>(global0.x, u_input.a.x) << ((vec2<u32>(arg_0.x, arg_0.x) | arg_0.xz) % vec2<u32>(32u)), vec2<bool>(true, all(vec3<bool>(true, false, false)))), func_2()), vec4<bool>((_wgslsmith_f_op_f32(sign(167f)) >= _wgslsmith_f_op_f32(min(572f, 265f))) | any(vec3<bool>(true, true, true)), !(!any(vec4<bool>(true, false, true, false))), false, all(vec3<bool>(true, any(vec4<bool>(false, true, false, true)), true))), global0.xx, func_2());
    let var_1 = func_4(Struct_3(~(~arg_0.x)), vec4<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true))) || any(vec3<bool>(true, true, true)), !(min(var_0.a, 1u) != _wgslsmith_dot_vec4_u32(arg_0, arg_0)), true, true), ~vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), u_input.b.x), Struct_1(~firstTrailingBit(arg_0.ywy)));
    global0 = vec4<i32>(0i, _wgslsmith_mult_i32(-27895i, -21005i), u_input.a.x, u_input.a.x);
    global0 = -abs(vec4<i32>(global0.x & (i32(-1i) * -43527i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(global0.yxz, vec3<i32>(u_input.a.x, u_input.a.x, -48923i)), max(global0.zxw, vec3<i32>(-39133i, -1i, u_input.a.x))), u_input.a.x, 53227i));
    return Struct_2(vec2<bool>(true, true));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    var var_0 = func_6(func_5(func_4(Struct_3(4418u), !select(vec4<bool>(arg_1.a.x, arg_1.a.x, true, false), vec4<bool>(arg_1.a.x, false, arg_1.a.x, false), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x)), global0.yy, func_2()), func_4(Struct_3(~1u), select(!vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, false), vec4<bool>(arg_1.a.x, false, arg_1.a.x, false), vec4<bool>(false, true, arg_1.a.x, arg_1.a.x)), -(vec2<i32>(-12447i, global0.x) & vec2<i32>(24243i, u_input.a.x)), func_2()), func_2()));
    let var_1 = arg_0.x;
    let var_2 = Struct_1(func_2().a);
    var_0 = Struct_2(arg_1.a);
    global0 = (~reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, var_1, arg_0.x, var_1), vec4<i32>(global0.x, var_1, -2147483647i, 39804i))) & vec4<i32>(2147483647i, -(arg_0.x & u_input.a.x), global0.x, -u_input.b.x)) | (abs(vec4<i32>(-var_1, -1i, max(arg_0.x, u_input.b.x), min(-1i, 13082i))) | _wgslsmith_div_vec4_i32(~(~vec4<i32>(-4827i, -45167i, -2068i, -67927i)), ~vec4<i32>(u_input.b.x, global0.x, var_1, arg_0.x)));
    return Struct_2(var_0.a);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: Struct_3) -> vec4<i32> {
    global0 = -vec4<i32>(u_input.a.x, -26554i, _wgslsmith_clamp_i32(30262i, -7529i, _wgslsmith_div_i32(17385i, -36689i)), u_input.b.x) & -(~firstTrailingBit(~vec4<i32>(43398i, global0.x, -25409i, 31593i)));
    global0 = vec4<i32>(-1i) * -max(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-4059i, 15269i, 0i, 0i), vec4<i32>(global0.x, global0.x, global0.x, global0.x))), ~vec4<i32>(-4050i, u_input.b.x, 12284i, -26559i));
    let var_0 = select(select(vec3<bool>(true, !arg_0.a.x, true), select(select(select(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_0.a.x), select(vec3<bool>(false, true, false), vec3<bool>(arg_0.a.x, false, true), vec3<bool>(arg_0.a.x, false, arg_0.a.x)), any(vec3<bool>(false, arg_0.a.x, false))), !vec3<bool>(arg_0.a.x, arg_0.a.x, true), !vec3<bool>(false, arg_0.a.x, arg_0.a.x)), true), vec3<bool>(arg_0.a.x | arg_0.a.x, arg_0.a.x, true), vec3<bool>(true, any(select(!vec3<bool>(arg_0.a.x, arg_0.a.x, false), !vec3<bool>(false, arg_0.a.x, arg_0.a.x), !arg_0.a.x)), arg_0.a.x));
    global0 = vec4<i32>(firstLeadingBit(~2147483647i), u_input.a.x, -_wgslsmith_div_i32(countOneBits(u_input.b.x) ^ _wgslsmith_add_i32(12368i, 5650i), global0.x), u_input.b.x);
    global0 = vec4<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(~(~global0.yx), _wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a.x, 35155i), abs(vec2<i32>(-1i, u_input.b.x)))), 50365i & _wgslsmith_clamp_i32(-2147483647i, -u_input.a.x, global0.x), global0.x ^ firstTrailingBit(firstTrailingBit(2147483647i)));
    return vec4<i32>(u_input.b.x, ~u_input.a.x, ~(-5607i), -select(-_wgslsmith_clamp_i32(22448i, 1227i, global0.x), firstTrailingBit(firstTrailingBit(-2147483647i)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1f;
    global0 = select(~_wgslsmith_div_vec4_i32(func_7(func_1(global0.xw, Struct_2(vec2<bool>(true, false)), 246f), func_2(), 0u, Struct_3(34708u)), vec4<i32>(_wgslsmith_div_i32(u_input.b.x, 24484i), ~u_input.b.x, i32(-1i) * -2147483647i, 30139i)), vec4<i32>(_wgslsmith_add_i32(-2147483647i, -reverseBits(-1i)), -u_input.b.x, -1i, func_7(func_1(vec2<i32>(11035i, -13151i), func_6(vec4<u32>(0u, 7839u, 4294967295u, 48500u)), _wgslsmith_div_f32(169f, 759f)), Struct_1(~vec3<u32>(4294967295u, 1u, 0u)), ~(~1u), func_4(func_4(Struct_3(32849u), vec4<bool>(false, true, false, false), vec2<i32>(u_input.a.x, u_input.b.x), Struct_1(vec3<u32>(7732u, 3279u, 61299u))), vec4<bool>(true, true, true, true), -vec2<i32>(global0.x, -1i), func_2())).x), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-395f, _wgslsmith_f_op_f32(min(1207f, 169f))))), _wgslsmith_f_op_f32(floor(-859f))), true));
    global0 = countOneBits(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(~reverseBits(vec4<i32>(-17760i, 2147483647i, 2147483647i, u_input.b.x)), _wgslsmith_div_vec4_i32(func_7(Struct_2(vec2<bool>(false, true)), Struct_1(vec3<u32>(1u, 6267u, 1u)), 1u, Struct_3(2767u)), -vec4<i32>(global0.x, -28307i, 35343i, 1i))), vec4<i32>(~16231i, countOneBits(-2147483647i), _wgslsmith_mult_i32(1i, 1i), i32(-1i) * -u_input.a.x)));
    var var_2 = true & all(!vec4<bool>(true, true, true, all(vec4<bool>(false, false, false, true))));
    let var_3 = Struct_2(vec2<bool>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, global0.x, u_input.a.x, 1i), vec4<i32>(-1i, u_input.b.x, 2147483647i, global0.x)) >= (i32(-1i) * -1447i), !func_1(_wgslsmith_add_vec2_i32(vec2<i32>(-749i, global0.x), global0.yw), Struct_2(vec2<bool>(false, false)), 1665f).a.x));
    var var_4 = firstTrailingBit(global0.xzx);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, ~_wgslsmith_sub_u32(func_4(Struct_3(0u), vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, true), ~vec2<i32>(-29169i, 0i), Struct_1(vec3<u32>(1u, 28489u, 57228u))).a, countOneBits(4294967295u)), abs(1i), _wgslsmith_f_op_f32(-var_1.x), 50020u);
}

