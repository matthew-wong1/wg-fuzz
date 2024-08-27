struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<i32>(2147483647i, -19424i), -1i, vec3<f32>(664f, 101f, 1090f), false), Struct_1(vec2<i32>(2147483647i, 23915i), -57092i, vec3<f32>(-257f, -110f, 1000f), false), Struct_1(vec2<i32>(-22987i, 0i), 2147483647i, vec3<f32>(627f, -773f, 379f), true), Struct_1(vec2<i32>(0i, 18058i), i32(-2147483648), vec3<f32>(-836f, 1695f, -642f), false), Struct_1(vec2<i32>(93690i, -1i), -15821i, vec3<f32>(-163f, -289f, -1000f), false), Struct_1(vec2<i32>(1i, -29222i), 16641i, vec3<f32>(-1153f, 869f, 1236f), true), Struct_1(vec2<i32>(i32(-2147483648), 1i), i32(-2147483648), vec3<f32>(215f, 299f, -1000f), false), Struct_1(vec2<i32>(2147483647i, -6412i), 33856i, vec3<f32>(-1000f, 122f, 1097f), true));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> vec2<bool> {
    var var_0 = select(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), countOneBits(u_input.b)), ~(~vec3<u32>(42039u, 38285u, u_input.a)), true) | _wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, u_input.b.x) | u_input.b, u_input.b), ~select(vec3<u32>(0u, 0u, u_input.b.x), vec3<u32>(41113u, u_input.b.x, 45767u), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))));
    var_0 = abs(u_input.b << (_wgslsmith_clamp_vec3_u32(u_input.b, _wgslsmith_add_vec3_u32(vec3<u32>(14094u, 12301u, 0u), u_input.b), abs(vec3<u32>(var_0.x, 79563u, var_0.x))) % vec3<u32>(32u)));
    var var_1 = reverseBits(arg_0.x);
    var var_2 = arg_0.x;
    global0 = array<Struct_1, 8>();
    return !vec2<bool>(!(!all(vec4<bool>(true, false, true, false))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_div_f32(arg_1, -552f), any(vec2<bool>(true, false)))) <= 1000f);
}

fn func_2(arg_0: bool, arg_1: u32) -> i32 {
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    var var_0 = !select(vec2<bool>(arg_0, (arg_0 & false) || select(false, arg_0, false)), vec2<bool>(arg_0 || true, true && all(vec2<bool>(arg_0, true))), false);
    var_0 = !select(vec2<bool>(true, var_0.x), vec2<bool>(arg_0, true), func_3(-countOneBits(vec3<i32>(-21719i, -14781i, 0i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(723f * -1239f), -414f)));
    var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(false, func_3(vec3<i32>(0i, 24848i, -12287i), -1390f).x), true), !vec2<bool>(true, var_0.x), true), !select(vec2<bool>(true, any(vec3<bool>(true, arg_0, var_0.x))), select(!vec2<bool>(true, var_0.x), select(vec2<bool>(false, var_0.x), vec2<bool>(false, false), vec2<bool>(var_0.x, arg_0)), true), vec2<bool>(false, var_0.x)), ~arg_1 <= ~firstLeadingBit(0u));
    return _wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(-21958i, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -1i, abs(43584i), -2147483647i), -vec3<i32>(2147483647i, -5210i, -1i))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -441f)), 722f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-155f))));
    global0 = array<Struct_1, 8>();
    let var_1 = Struct_3(firstTrailingBit(u_input.b.x), Struct_1(vec2<i32>(_wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(1i, 2147483647i), 0i), -1i), 0i ^ func_2(var_0 && false, 40119u << (0u % 32u)), vec3<f32>(_wgslsmith_f_op_f32(select(-1260f, _wgslsmith_f_op_f32(700f + 111f), 8264u < u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-362f, 910f)), 1053f), all(select(select(vec3<bool>(true, false, true), vec3<bool>(var_0, var_0, false), vec3<bool>(true, false, false)), !vec3<bool>(true, false, var_0), true))), global0[_wgslsmith_index_u32(~(~u_input.a) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 23561u, 31044u) >> (vec4<u32>(7498u, u_input.b.x, 3681u, u_input.a) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 67997u, u_input.a), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x))) % 32u), 8u)]);
    let var_2 = var_1.b.c.x;
    global0 = array<Struct_1, 8>();
    return Struct_2(vec4<bool>(!var_1.b.d, var_1.c.d, true, true), Struct_1(vec2<i32>(-1i) * -vec2<i32>(var_1.b.b, var_1.c.b), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-109i, var_1.c.a.x), countOneBits(var_1.b.b)), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, 35003i, 0i), vec3<i32>(var_1.b.b, var_1.b.b, var_1.c.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_1.b.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1070f, var_1.b.c.x, -312f)))), !(!(u_input.b.x < u_input.a))), u_input.a, !func_3(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.c.b, var_1.b.b, var_1.b.b), vec3<i32>(3009i, -2147483647i, var_1.b.b)), -230f).x != all(!vec4<bool>(var_1.b.d, var_1.c.d, var_0, var_0)), Struct_1(var_1.b.a, func_2(true, ~u_input.b.x) >> (firstTrailingBit(0u) % 32u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_div_f32(var_1.c.c.x, var_2), _wgslsmith_f_op_f32(var_1.b.c.x * var_2)) * vec3<f32>(-577f, _wgslsmith_f_op_f32(-578f + 148f), _wgslsmith_f_op_f32(345f + 474f))), var_0));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: i32) -> Struct_2 {
    let var_0 = any(func_1().a.xxz);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -691f), arg_0.b.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.b.c.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.b.c - arg_0.b.c) + arg_0.b.c)) - _wgslsmith_f_op_vec3_f32(-arg_0.b.c)));
    var var_2 = arg_3;
    let var_3 = ~firstTrailingBit(~vec4<u32>(func_1().c, u_input.b.x | arg_0.c, 1u, 45520u >> (arg_0.c % 32u)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1470f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b.c.x))))) + var_1.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 8>();
    var var_0 = func_4(func_1(), func_1().a, ~select(~u_input.b >> (select(vec3<u32>(u_input.a, u_input.a, u_input.b.x), vec3<u32>(33886u, u_input.b.x, u_input.a), false) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(select(u_input.b, u_input.b, false), vec3<u32>(u_input.a, 0u, u_input.b.x)), true), ~4837i);
    let var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(~1411u), 8u)];
    var var_2 = -462f;
    var var_3 = ~func_4(func_1(), vec4<bool>(!var_0.b.d, false, func_3(min(vec3<i32>(var_0.e.b, var_0.e.a.x, 0i), vec3<i32>(-1i, -1i, 3363i)), _wgslsmith_f_op_f32(round(var_0.b.c.x))).x, any(vec2<bool>(var_0.e.d, false))), ~(~u_input.b | vec3<u32>(4294967295u, 30593u, var_0.c)), var_0.e.b).e.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(var_0.a, global0[_wgslsmith_index_u32(u_input.a, 8u)], 0u, var_1.d, Struct_1(vec2<i32>(var_1.b, -5679i), -47718i, var_1.c, var_0.a.x)), var_0.a, u_input.b, 35518i).e.c.xx + _wgslsmith_f_op_vec2_f32(var_0.b.c.xz + var_1.c.xy)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1101f, var_0.b.c.x)) - vec2<f32>(774f, -486f))))), 1u << (~var_0.c % 32u));
}

