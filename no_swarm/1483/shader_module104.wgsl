struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(Struct_1(-2300f, -1i, vec4<i32>(i32(-2147483648), -5493i, 2147483647i, -29624i)), 28980u), Struct_3(Struct_1(1624f, -785i, vec4<i32>(i32(-2147483648), -22179i, 670i, -16529i)), 56042u), Struct_3(Struct_1(-1281f, 13056i, vec4<i32>(2147483647i, 2147483647i, 5041i, -35860i)), 0u), Struct_3(Struct_1(-990f, 38274i, vec4<i32>(-1i, -72304i, 0i, -24108i)), 0u), Struct_3(Struct_1(923f, 0i, vec4<i32>(19974i, -56481i, -1i, -1i)), 63258u));

var<private> global1: array<Struct_1, 10>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: f32) -> u32 {
    var var_0 = !(arg_0 > u_input.e);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2)))), arg_0, -_wgslsmith_mod_vec4_i32(-(~vec4<i32>(arg_0, arg_0, u_input.c.x, arg_0)), max(min(vec4<i32>(u_input.d, 1i, 1i, -35679i), vec4<i32>(arg_0, -8545i, u_input.e, arg_0)), reverseBits(vec4<i32>(arg_0, u_input.e, u_input.d, u_input.e)))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32((~(vec3<u32>(u_input.a.x, 0u, 4294967295u) | vec3<u32>(u_input.a.x, 25014u, 31457u)) ^ vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a))) >> (countOneBits(vec3<u32>(28419u, min(4294967295u, 0u), 1u)) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 0u) & vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), abs(vec3<u32>(1u, u_input.a.x, 1u)))), 5u)];
    var var_3 = Struct_3(var_1, 4294967295u);
    var var_4 = _wgslsmith_sub_i32(~countOneBits(2147483647i), ~reverseBits(arg_0) | var_3.a.b);
    return ~firstTrailingBit(var_2.b >> (~1u % 32u));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>) -> i32 {
    let var_0 = Struct_1(-873f, 24292i, arg_1.c & vec4<i32>(8403i, arg_1.b >> (_wgslsmith_add_u32(40111u, u_input.a.x) % 32u), 1i, u_input.c.x));
    let var_1 = Struct_2(vec4<i32>(arg_1.b >> (30801u % 32u), arg_1.b, arg_1.c.x, 1i), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-992f, 564f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a))))), abs(_wgslsmith_dot_vec2_i32(arg_1.c.wx ^ arg_1.c.xw, select(u_input.c.yz, var_0.c.yx, arg_2.x))), ~(select(vec4<i32>(2147483647i, arg_1.b, 1i, -1i), arg_1.c, arg_2.x) << (vec4<u32>(1u, 15796u, 1u, 4294967295u) % vec4<u32>(32u)))));
    global1 = array<Struct_1, 10>();
    var var_2 = _wgslsmith_f_op_f32(arg_1.a + -908f);
    let var_3 = Struct_2(-var_0.c, Struct_1(_wgslsmith_f_op_f32(240f * _wgslsmith_f_op_f32(-arg_1.a)), 0i, -_wgslsmith_mod_vec4_i32(arg_1.c | arg_1.c, var_1.b.c | arg_1.c)));
    return u_input.d;
}

fn func_2(arg_0: vec3<f32>) -> vec2<i32> {
    global1 = array<Struct_1, 10>();
    global0 = array<Struct_3, 5>();
    global0 = array<Struct_3, 5>();
    var var_0 = Struct_2(~vec4<i32>(-_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, -9516i), _wgslsmith_dot_vec3_i32(max(u_input.c, u_input.c), -vec3<i32>(-2147483647i, u_input.d, u_input.c.x)), func_4(func_3(u_input.d, 915f, -844f), Struct_1(-1000f, u_input.b, vec4<i32>(60899i, 1i, u_input.d, u_input.e)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true)), _wgslsmith_mod_i32(~u_input.b, select(u_input.c.x, -3399i, true))), global1[_wgslsmith_index_u32(abs(u_input.a.x), 10u)]);
    var var_1 = -1750f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a) + var_0.b.a)) * -1404f);
    return ~u_input.c.xz & ~(~(vec2<i32>(-22563i, -1i) >> (u_input.a % vec2<u32>(32u))));
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = (all(vec4<bool>(arg_0, true, 0u < u_input.a.x, true)) || select(any(!vec2<bool>(false, arg_0)), 5277u <= ~arg_1.b, true)) & arg_0;
    let var_1 = firstTrailingBit(max(i32(-1i) * -47344i, ~_wgslsmith_mult_i32(arg_1.a.b, u_input.c.x)));
    global1 = array<Struct_1, 10>();
    var var_2 = 1206f;
    var var_3 = -_wgslsmith_dot_vec2_i32(~select(func_2(vec3<f32>(arg_1.a.a, 145f, -192f)), arg_1.a.c.yx & arg_1.a.c.zz, true), reverseBits(vec2<i32>(1i, 33131i)));
    return ~arg_1.a.c;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec2<f32>) -> vec3<u32> {
    let var_0 = ~26664u ^ _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(~(~u_input.a), u_input.a));
    let var_1 = false;
    let var_2 = ~(vec3<i32>(arg_0.x, min(_wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(1i, arg_1.x, -43844i, u_input.d)), _wgslsmith_div_i32(-1i, -2147483647i)), reverseBits(-38168i)) & vec3<i32>(select(_wgslsmith_mod_i32(0i, arg_0.x), -32677i, var_0 <= 85932u), -_wgslsmith_add_i32(-1i, arg_1.x), ~(~(-14865i))));
    var var_3 = all(vec2<bool>(true, !var_1 & true));
    var var_4 = Struct_2(vec4<i32>(~(-arg_1.x), -arg_0.x, arg_0.x, u_input.b), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0, func_3(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -453f) * arg_2.x), -1591f)), 10u)]);
    return vec3<u32>(4294967295u, (1u << (countOneBits(max(u_input.a.x, 1u)) % 32u)) & (0u | ~u_input.a.x), firstLeadingBit(~60037u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~1u);
    global1 = array<Struct_1, 10>();
    global1 = array<Struct_1, 10>();
    let var_1 = -30337i;
    let var_2 = (~vec4<u32>(var_0, ~3078u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), ~var_0) >> (~(~(~vec4<u32>(10145u, u_input.a.x, 4294967295u, var_0))) % vec4<u32>(32u))) >> (~(~vec4<u32>(11860u, 35201u, u_input.a.x, ~1u)) % vec4<u32>(32u));
    let var_3 = func_5(vec4<i32>(-select(0i, var_1, true) & -1i, 2147483647i, -countOneBits(~3461i), u_input.d), func_1(reverseBits(_wgslsmith_mult_u32(var_0, 22309u)) < 62042u, global0[_wgslsmith_index_u32(4294967295u, 5u)]), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-289f, 425f)) * _wgslsmith_f_op_f32(339f - 447f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(746f * -2352f), _wgslsmith_f_op_f32(-557f * -939f))))));
    global0 = array<Struct_3, 5>();
    global0 = array<Struct_3, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(30108u, var_2.x, 39876u, 1u), var_2), var_2)), vec3<f32>(_wgslsmith_f_op_f32(-1f), -1171f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -826f), 537f)), min(firstLeadingBit(~(vec4<i32>(-51314i, var_1, -6036i, 0i) << (var_2 % vec4<u32>(32u)))), _wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, -12354i, -4953i, var_1) ^ _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 36762i, var_1, var_1), vec4<i32>(-16626i, 0i, var_1, u_input.c.x)), min(vec4<i32>(u_input.e, u_input.b, u_input.b, -20038i), vec4<i32>(-1i, 29646i, -23905i, 0i)) << (select(vec4<u32>(0u, var_3.x, 18180u, var_2.x), var_2, vec4<bool>(true, false, false, false)) % vec4<u32>(32u)))));
}

