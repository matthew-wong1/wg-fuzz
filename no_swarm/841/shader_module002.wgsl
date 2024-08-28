struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<i32> = vec3<i32>(4365i, 2147483647i, -21079i);

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global3: vec2<bool> = vec2<bool>(false, false);

var<private> global4: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(12093u, 4294967295u, 25465u, 39554u), vec4<u32>(1u, 80897u, 35493u, 1u), vec4<u32>(0u, 0u, 0u, 1u), vec4<u32>(4294967295u, 989u, 70441u, 4294967295u), vec4<u32>(0u, 0u, 89486u, 48388u), vec4<u32>(22079u, 42895u, 14137u, 0u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<u32>(65033u, 34593u, 12150u, 0u), vec4<u32>(55323u, 1319u, 30211u, 25161u), vec4<u32>(45092u, 1u, 1u, 20226u), vec4<u32>(50377u, 33094u, 31872u, 6038u), vec4<u32>(48587u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, 1u, 27454u), vec4<u32>(88291u, 20843u, 4294967295u, 18198u), vec4<u32>(14996u, 0u, 22947u, 8640u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 22127u, 8487u, 1u), vec4<u32>(33269u, 1u, 1u, 16242u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    var var_0 = select(!select(!select(vec4<bool>(true, false, true, global3.x), vec4<bool>(global2.x, global0.b, global0.b, global0.b), global3.x), !(!vec4<bool>(global0.b, false, false, global0.b)), !(global0.b & global2.x)), vec4<bool>(true, true || any(!global2.wy), true, !(_wgslsmith_div_f32(1237f, -1473f) >= _wgslsmith_f_op_f32(sign(-215f)))), global0.b);
    var var_1 = Struct_1(-96476i, global2.x, ~global0.c);
    var var_2 = global0.c.x;
    var_0 = !vec4<bool>(true, true, select(any(vec2<bool>(var_1.b, false)) & !var_1.b, false, false), global0.b);
    let var_3 = Struct_1(-1i, !any(vec4<bool>(true, false, var_1.b, true)) & any(var_0.yz), vec3<u32>(global0.c.x, 71052u, ~(~(~var_1.c.x))));
    return var_3.b | !global3.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>) -> f32 {
    let var_0 = func_3();
    global0 = Struct_1(min(-47771i, global1.x), !(!all(select(global2.yw, global2.yy, vec2<bool>(true, false)))), global0.c >> (_wgslsmith_mult_vec3_u32(~global0.c, vec3<u32>(4294967295u, 10096u, global0.c.x)) % vec3<u32>(32u)));
    var var_1 = Struct_2(~((~vec3<i32>(-47060i, -1i, global1.x) & ~vec3<i32>(25854i, -2617i, global1.x)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(68299u, 4294967295u, 3218u) | global0.c, global0.c, global0.c) % vec3<u32>(32u))), 460f, Struct_1(max(-8563i, global1.x), global0.b, _wgslsmith_div_vec3_u32(~global0.c ^ select(vec3<u32>(u_input.b, 1u, global0.c.x), global0.c, vec3<bool>(false, global3.x, true)), reverseBits(vec3<u32>(global0.c.x, global0.c.x, 0u)))), 7292u);
    global3 = select(vec2<bool>(var_1.c.b, !global3.x), vec2<bool>(!global3.x & true, global2.x), select(true, !var_1.c.b || (_wgslsmith_f_op_f32(3641f + arg_0.x) < var_1.b), false));
    let var_2 = Struct_1(_wgslsmith_mod_i32(-2147483647i, countOneBits(_wgslsmith_dot_vec2_i32(global1.zz, global1.yx)) ^ (2147483647i ^ var_1.c.a)), true, var_1.c.c);
    return arg_0.x;
}

fn func_4(arg_0: Struct_2) -> vec3<i32> {
    global3 = global2.zx;
    global0 = arg_0.c;
    let var_0 = select(-vec3<i32>(global0.a, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(1i, 1i, -22666i, global1.x)), ~vec4<i32>(2147483647i, 1i, u_input.c, global0.a)), 27179i), arg_0.a, vec3<bool>(((arg_0.b > arg_0.b) | all(vec2<bool>(global0.b, false))) == (true | (global3.x & false)), true, arg_0.c.b));
    let var_1 = select(global2.yyx, global2.wzw, arg_0.c.b);
    var var_2 = arg_0;
    return -(vec3<i32>(_wgslsmith_add_i32(global0.a, arg_0.c.a), _wgslsmith_div_i32(-1i, global0.a), 33980i) << (vec3<u32>(4294967295u, 4294967295u, global0.c.x) % vec3<u32>(32u))) & arg_0.a;
}

fn func_1() -> Struct_1 {
    global1 = -(~func_4(Struct_2(vec3<i32>(global0.a, -4730i, 22364i), _wgslsmith_f_op_f32(func_2(vec3<f32>(-1000f, -154f, 578f), vec2<f32>(107f, -1000f))), Struct_1(global0.a, false, global0.c), 12737u)));
    let var_0 = ~(~0u);
    var var_1 = firstTrailingBit((_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(18842i, -55531i, global1.x, global1.x)), -vec4<i32>(u_input.c, global0.a, u_input.a, global1.x)) >> (countOneBits(min(global4[_wgslsmith_index_u32(var_0, 18u)], global4[_wgslsmith_index_u32(var_0, 18u)])) % vec4<u32>(32u))) | (_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(global0.a, 2147483647i, global0.a, u_input.a)), vec4<i32>(2147483647i, 29888i, global1.x, global1.x), vec4<i32>(-2147483647i, u_input.a, u_input.c, 22348i)) << ((vec4<u32>(global0.c.x, global0.c.x, 2064u, 4294967295u) >> (vec4<u32>(0u, 148u, 1u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_2 = Struct_1(-firstTrailingBit(1i) >> (1u % 32u), true, vec3<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b >> (var_0 % 32u), firstTrailingBit(4294967295u), ~u_input.b, u_input.b), max(~global4[_wgslsmith_index_u32(16928u, 18u)], global4[_wgslsmith_index_u32(1u, 18u)] & vec4<u32>(var_0, global0.c.x, 88641u, 7126u))), u_input.b));
    let var_3 = select(!global2.wzw, vec3<bool>(true, u_input.b > global0.c.x, !func_3()), global0.b || select(!var_2.b && (global1.x >= global0.a), false, var_2.b));
    return var_2;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: i32) -> vec4<f32> {
    global2 = vec4<bool>(1000f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(698f))), false, !(global0.c.x >= ~(~u_input.b)), true);
    let var_0 = arg_1.b;
    var var_1 = _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(~0u, _wgslsmith_sub_u32(26850u, arg_1.c.c.x), abs(arg_1.c.c.x))), vec3<u32>(arg_1.c.c.x, arg_1.d, global0.c.x));
    global4 = array<vec4<u32>, 18>();
    var var_2 = Struct_2(vec3<i32>(-1i) * -vec3<i32>(global0.a, _wgslsmith_sub_i32(45588i, global0.a), 1i), var_0, Struct_1((max(global0.a, global1.x) & -48337i) ^ ~(-arg_1.c.a), !all(select(vec4<bool>(true, true, arg_0.x, global2.x), vec4<bool>(true, global0.b, global0.b, arg_1.c.b), vec4<bool>(false, false, global2.x, false))), vec3<u32>(firstLeadingBit(u_input.b), 36194u | ~u_input.b, _wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], vec4<u32>(arg_1.d, global0.c.x, global0.c.x, global0.c.x)) >> (_wgslsmith_div_u32(67458u, 24275u) % 32u))), ~3105u);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, arg_1.b, arg_1.b, var_2.b) * vec4<f32>(1135f, -151f, 1037f, var_0)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(813f, var_0, 525f, var_2.b))), vec4<bool>(arg_1.c.b, true, var_2.c.b, false))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, -398f, _wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(-260f + 665f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1043f, -573f, -357f, arg_1.b))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0, var_2.b, 883f))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(216f, var_0, -642f, arg_1.b) * vec4<f32>(var_2.b, 1072f, var_2.b, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_2.b, arg_1.b, -1073f) - vec4<f32>(2324f, -899f, arg_1.b, var_2.b))))), !select(select(vec4<bool>(global3.x, global2.x, global3.x, var_2.c.b), vec4<bool>(global0.b, arg_1.c.b, arg_0.x, global0.b), vec4<bool>(var_2.c.b, global3.x, global2.x, global2.x)), select(vec4<bool>(true, false, arg_0.x, true), vec4<bool>(true, global0.b, arg_0.x, global0.b), true), !vec4<bool>(global3.x, true, var_2.c.b, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_5(global2.wx, Struct_2(~firstTrailingBit(vec3<i32>(-2147483647i, u_input.a, global1.x)), -1000f, func_1(), firstLeadingBit(u_input.b | global0.c.x)), 20623i))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x))) - _wgslsmith_f_op_f32(f32(-1f) * -1299f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.x))))));
    global4 = array<vec4<u32>, 18>();
    let var_2 = 556f;
    let var_3 = Struct_1(40869i, true, _wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_clamp_u32(17152u, global0.c.x, global0.c.x), global0.c.x, 1u), vec3<u32>(global0.c.x, 0u, ~countOneBits(0u))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_5(vec2<bool>(var_3.b, all(!vec4<bool>(global2.x, global2.x, global2.x, true))), Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 2147483647i, -2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_3.a, global1.x, 0i), vec3<i32>(2147483647i, u_input.a, u_input.c))), _wgslsmith_f_op_f32(sign(var_0.x)), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 29054i, u_input.a), vec3<i32>(-2147483647i, -37543i, var_3.a)), all(global2.wz), abs(vec3<u32>(u_input.b, var_3.c.x, global0.c.x))), u_input.b), _wgslsmith_clamp_i32(global1.x, func_1().a, 51872i))).x - _wgslsmith_f_op_vec4_f32(func_5(global2.xw, Struct_2(-min(vec3<i32>(0i, -6782i, global0.a), vec3<i32>(global0.a, -16945i, global0.a)), 1886f, func_1(), abs(u_input.b)), -3121i)).x);
    let var_5 = var_3;
    var var_6 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_4, var_4))))));
    var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c, firstLeadingBit(u_input.b), vec2<i32>(global0.a, global0.a), _wgslsmith_sub_vec2_u32(var_5.c.zy, vec2<u32>(32695u, _wgslsmith_dot_vec2_u32(abs(global0.c.zx), global0.c.xy))), vec2<f32>(1626f, var_2));
}

