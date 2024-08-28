struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 16>;

var<private> global1: array<Struct_1, 21>;

var<private> global2: u32 = 1u;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> vec4<f32> {
    var var_0 = ~(~reverseBits(vec4<u32>(u_input.b << (75536u % 32u), ~u_input.b, u_input.b, u_input.b)));
    let var_1 = max(vec4<i32>(50300i, u_input.e, 2147483647i, (i32(-1i) * -1i) ^ _wgslsmith_dot_vec2_i32(arg_0.b.yy, vec2<i32>(1i, u_input.c.x))) >> (global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_0.zy, min(var_0.wz, var_0.yx)), var_0.x << ((u_input.a | u_input.a) % 32u)), 16u)] % vec4<u32>(32u)), select(reverseBits(vec4<i32>(max(arg_0.b.x, -35738i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -17028i, u_input.c.x), vec3<i32>(-2147483647i, u_input.d.x, 2147483647i)), i32(-1i) * -1i, abs(arg_0.b.x))), vec4<i32>(37180i, u_input.c.x, u_input.d.x, -1755i), select(!vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(any(arg_1.wz), true & arg_1.x, arg_1.x, arg_1.x), vec4<bool>(select(true, arg_1.x, false), arg_1.x, true, all(vec3<bool>(true, arg_1.x, true))))));
    var var_2 = Struct_1(-1240i, u_input.c, vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.c.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x))))));
    global0 = array<vec4<u32>, 16>();
    var var_3 = abs(var_0.x);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(424f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.c.x, arg_0.c.x), -657f)), arg_0.c.x, var_2.c.x) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.c.x, var_2.c.x, arg_0.c.x, arg_0.c.x), vec4<f32>(var_2.c.x, 493f, 716f, -709f)), vec4<f32>(arg_0.c.x, var_2.c.x, 508f, 1000f)), vec4<f32>(_wgslsmith_f_op_f32(floor(-1051f)), var_2.c.x, _wgslsmith_f_op_f32(1242f - var_2.c.x), arg_0.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, 1756f, 549f, arg_0.c.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-463f, 361f, var_2.c.x, var_2.c.x))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: u32) -> Struct_2 {
    let var_0 = arg_0.x;
    global1 = array<Struct_1, 21>();
    var var_1 = Struct_2(u_input.a);
    let var_2 = Struct_1(_wgslsmith_mult_i32(u_input.e, firstLeadingBit(u_input.c.x)), u_input.d, arg_0);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(global1[_wgslsmith_index_u32(4294967295u, 21u)], vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-113f, var_2.c.x, arg_0.x, 778f), vec4<f32>(261f, arg_0.x, var_0, var_2.c.x), vec4<bool>(true, false, false, true))) + vec4<f32>(var_2.c.x, 310f, var_0, -2552f)), select(false, true, false) & false))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-109f, 465f, var_2.c.x, var_2.c.x)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-310f, -274f, var_0, arg_0.x), vec4<f32>(338f, -154f, 277f, arg_0.x))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2340f, _wgslsmith_f_op_f32(-arg_0.x), -857f, var_2.c.x) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-658f, 772f, 697f, arg_0.x) + vec4<f32>(var_2.c.x, 1147f, var_0, -181f)))))));
    return Struct_2(0u);
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2) -> bool {
    global2 = 24410u;
    let var_0 = arg_2;
    global0 = array<vec4<u32>, 16>();
    global0 = array<vec4<u32>, 16>();
    var var_1 = abs(~min(vec2<u32>(var_0.a, arg_0.x), max(vec2<u32>(arg_2.a, arg_0.x), arg_0.yw))) >> ((~vec2<u32>(0u, u_input.a) >> (firstTrailingBit(select(vec2<u32>(60638u, arg_2.a), vec2<u32>(arg_0.x, u_input.b), true)) % vec2<u32>(32u))) % vec2<u32>(32u));
    return false == !(u_input.d.x <= (-2147483647i ^ (-1i ^ u_input.d.x)));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_2 {
    global2 = _wgslsmith_mult_u32(22243u, u_input.b >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.a, 57041u, u_input.a, 28631u)), vec4<u32>(3724u, u_input.b, 5797u, 24142u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.b, u_input.b), ~vec4<u32>(47902u, 4294967295u, 69766u, u_input.b), global0[_wgslsmith_index_u32(u_input.a, 16u)] << (global0[_wgslsmith_index_u32(u_input.b, 16u)] % vec4<u32>(32u)))) % 32u));
    global0 = array<vec4<u32>, 16>();
    global1 = array<Struct_1, 21>();
    global0 = array<vec4<u32>, 16>();
    global2 = u_input.b;
    return func_2(vec3<f32>(arg_2.c.x, _wgslsmith_f_op_f32(abs(399f)), -1033f), _wgslsmith_add_vec2_i32(abs(select(-u_input.d.yx, arg_2.b.yx, false)), _wgslsmith_div_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(53817i, arg_2.a), vec2<i32>(-20171i, 46457i)), ~select(vec2<i32>(-2147483647i, 9757i), vec2<i32>(u_input.c.x, arg_2.b.x), arg_1.yy))), select(0u, _wgslsmith_mod_u32(u_input.b, ~u_input.b), false));
}

fn func_1() -> Struct_2 {
    let var_0 = ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, u_input.d.x, u_input.d.x) & vec4<i32>(2147483647i, 43980i, -1i, u_input.e), vec4<i32>(1i, 1i, 1i, 1i))) & _wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -1i, _wgslsmith_mod_i32(~2147483647i, u_input.c.x), 1i, ~1i), _wgslsmith_sub_vec4_i32(vec4<i32>(57065i, 1i, u_input.e, ~u_input.e), vec4<i32>(_wgslsmith_clamp_i32(u_input.c.x, 1766i, 24310i), u_input.d.x ^ u_input.d.x, ~(-1i), max(-1i, u_input.d.x))));
    global1 = array<Struct_1, 21>();
    let var_1 = global1[_wgslsmith_index_u32(~(~(countOneBits(~u_input.a) & u_input.b)), 21u)];
    global2 = 36292u;
    let var_2 = Struct_2(4294967295u);
    return func_5(false, vec4<bool>(!(!all(vec2<bool>(false, true))), func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b, 26033u, 39147u), global0[_wgslsmith_index_u32(u_input.a, 16u)], vec4<u32>(u_input.b, var_2.a, 21098u, 1u) >> (vec4<u32>(0u, u_input.b, 48866u, var_2.a) % vec4<u32>(32u))), 6194i, func_2(_wgslsmith_f_op_vec3_f32(min(var_1.c, vec3<f32>(-465f, var_1.c.x, var_1.c.x))), u_input.d.zy, ~16654u)), !(all(vec3<bool>(false, true, true)) & true), func_4(~(vec4<u32>(u_input.b, var_2.a, var_2.a, var_2.a) & vec4<u32>(21064u, 145339u, 0u, 15016u)), reverseBits(-2147483647i) >> (var_2.a % 32u), var_2)), global1[_wgslsmith_index_u32(~4294967295u, 21u)]);
}

fn func_6(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1271f);
    var var_2 = ~4294967295u;
    let var_3 = global1[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-239f, -321f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + 1043f), _wgslsmith_f_op_f32(step(-1047f, -889f)))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-118f, _wgslsmith_f_op_f32(f32(-1f) * -483f), 2390f)))), ~vec2<i32>(0i, firstTrailingBit(firstTrailingBit(u_input.d.x))), ~(~arg_3)).a, 21u)];
    global0 = array<vec4<u32>, 16>();
    return func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(760f))), 1186f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-509f))))), reverseBits(_wgslsmith_sub_vec2_i32(var_3.b.yy, var_3.b.xx)), arg_0.a);
}

fn func_7(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> vec4<u32> {
    global2 = func_5(true, !vec4<bool>(_wgslsmith_add_u32(4294967295u, u_input.b) >= u_input.a, select(true, select(false, false, false), arg_3.a == arg_3.a), func_4(select(global0[_wgslsmith_index_u32(arg_3.a, 16u)], vec4<u32>(135921u, 21062u, 1u, 1u), vec4<bool>(false, true, false, false)), -arg_0.b.x, func_5(false, vec4<bool>(true, false, true, false), Struct_1(arg_2, u_input.c, arg_0.c))), _wgslsmith_f_op_f32(-arg_1) != _wgslsmith_f_op_f32(sign(arg_1))), arg_0).a;
    let var_0 = all(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec4<bool>(true, false, false, true)), true, any(vec4<bool>(false, false, true, false)), false), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), arg_1 >= _wgslsmith_f_op_f32(sign(-1879f))), _wgslsmith_f_op_f32(sign(1f)) != _wgslsmith_f_op_f32(-arg_1)));
    var var_1 = Struct_1(u_input.e, u_input.c, vec3<f32>(arg_1, arg_1, 266f));
    global1 = array<Struct_1, 21>();
    global0 = array<vec4<u32>, 16>();
    return reverseBits(global0[_wgslsmith_index_u32(u_input.a, 16u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(global0[_wgslsmith_index_u32(countOneBits((u_input.b >> (23430u % 32u)) ^ ~1u), 16u)], vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1756u), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.b, 1u))), ~4294967295u, ~1u, ~u_input.b)) >> (max(func_7(Struct_1(u_input.d.x, vec3<i32>(-7641i, 48519i, u_input.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-557f, -1030f, 642f) - vec3<f32>(-257f, 624f, 1379f))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-510f + 848f)), -6177i, func_6(func_1(), ~vec2<u32>(u_input.a, 37335u), Struct_2(u_input.b), func_5(false, vec4<bool>(false, true, true, false), Struct_1(1i, vec3<i32>(u_input.c.x, u_input.c.x, u_input.d.x), vec3<f32>(-1276f, 1254f, -933f))).a)), global0[_wgslsmith_index_u32(min(~_wgslsmith_add_u32(u_input.a, u_input.a), abs(u_input.a)), 16u)]) % vec4<u32>(32u));
    var var_1 = -2147483647i;
    let var_2 = false;
    var var_3 = vec4<i32>(abs(abs(_wgslsmith_mult_i32(1i, -14328i) << (u_input.b % 32u))), countOneBits(38037i), i32(-1i) * -9651i, firstTrailingBit(30024i));
    global2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(1f, (countOneBits(~var_3.wyy) >> (var_0.wxy % vec3<u32>(32u))) << (~vec3<u32>(var_0.x, u_input.a, func_6(Struct_2(51980u), vec2<u32>(var_0.x, u_input.a), Struct_2(46895u), var_0.x).a) % vec3<u32>(32u)));
}

