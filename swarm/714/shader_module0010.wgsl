struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(-296f, 0u, vec3<f32>(1000f, -426f, -458f)), Struct_1(-249f, 4294967295u, vec3<f32>(-1000f, -1000f, -1335f)), Struct_1(724f, 22275u, vec3<f32>(-1097f, 1000f, -1810f)), Struct_1(2100f, 1u, vec3<f32>(1298f, -253f, 1204f)), Struct_1(1084f, 40843u, vec3<f32>(-239f, -187f, 836f)), Struct_1(923f, 1u, vec3<f32>(464f, -266f, 130f)), Struct_1(-868f, 105194u, vec3<f32>(-1368f, 1119f, 385f)), Struct_1(-462f, 17044u, vec3<f32>(-418f, 304f, 826f)), Struct_1(649f, 75148u, vec3<f32>(-231f, 1187f, 422f)), Struct_1(710f, 1u, vec3<f32>(480f, -655f, 181f)), Struct_1(112f, 4294967295u, vec3<f32>(-197f, 234f, -537f)), Struct_1(-1351f, 1u, vec3<f32>(1060f, -243f, -821f)));

var<private> global2: array<f32, 15> = array<f32, 15>(-587f, -743f, -668f, 1036f, 382f, 162f, 1225f, 188f, 1262f, -1294f, 1274f, -247f, -500f, 1394f, -424f);

var<private> global3: Struct_1 = Struct_1(1307f, 22454u, vec3<f32>(-1265f, 1000f, -1649f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(9661u, 15u)])), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_3.b, 22044u, u_input.a), vec3<u32>(arg_3.b, 21040u, arg_3.b)), ~vec3<u32>(global3.b, 6118u, 45402u)), vec3<f32>(-1089f, _wgslsmith_f_op_f32(sign(484f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1373f)) + -1734f))));
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(18768u & arg_3.b, 0u), 4294967295u), 23267u), 4294967295u, arg_3.b);
    global0 = select(select(select(vec3<bool>(false, true, false & global0.x), select(select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, false, true), false), vec3<bool>(true, true, true), !global0.x), !(global0.x && global0.x)), select(vec3<bool>(!global0.x, global0.x, !global0.x), select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), true), select(vec3<bool>(global0.x, false, true), vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, true, global0.x)), any(vec2<bool>(true, true))), true), !global0.x), select(!select(!vec3<bool>(true, global0.x, true), select(vec3<bool>(global0.x, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, global0.x, global0.x))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, true, global0.x), true), true), vec3<bool>(global0.x, true, all(vec3<bool>(global0.x, true, global0.x))), select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, true, global0.x)), vec3<bool>(global0.x, global0.x, global0.x), select(true, true, true))), vec3<bool>(true, true, true)), !(!global0.x));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -242f), min(var_0.b, ~arg_3.b), global3.c);
    let var_3 = var_0;
    return arg_2.x;
}

fn func_2() -> Struct_1 {
    var var_0 = -(vec4<i32>(-1i) * -vec4<i32>(~(-7532i), 1i << (u_input.a % 32u), ~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -18128i), vec2<i32>(u_input.b, 57931i))));
    var_0 = -select(-vec4<i32>(-5657i, func_3(vec2<u32>(global3.b, 47394u), var_0.xz, vec2<i32>(var_0.x, u_input.b), global1[_wgslsmith_index_u32(30986u, 12u)]), _wgslsmith_mod_i32(-2147483647i, -2147483647i), reverseBits(1i)), firstLeadingBit(abs(vec4<i32>(u_input.b, 0i, u_input.b, var_0.x))), !select(vec4<bool>(false, global0.x, global0.x, false), !vec4<bool>(global0.x, false, true, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(false, true, false, true), vec4<bool>(false, global0.x, false, true))));
    let var_1 = ~(~firstTrailingBit(_wgslsmith_add_u32(u_input.a, 0u) | global3.b));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a, global2[_wgslsmith_index_u32(var_1, 15u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1, 15u)] + _wgslsmith_f_op_f32(max(-741f, _wgslsmith_f_op_f32(-global3.c.x))))) * _wgslsmith_f_op_vec3_f32(-global3.c));
    global2 = array<f32, 15>();
    return Struct_1(-542f, ~global3.b, vec3<f32>(var_2.x, _wgslsmith_f_op_f32(global3.c.x + 195f), _wgslsmith_f_op_f32(global3.c.x - _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 15u)] + -233f), global0.x)))));
}

fn func_1() -> u32 {
    global3 = func_2();
    let var_0 = select(vec3<bool>(global0.x, true, true), select(vec3<bool>(global0.x, false, true), select(vec3<bool>(true, u_input.b <= u_input.b, global0.x), !select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false)), vec3<bool>(true, global0.x && global0.x, global0.x & global0.x)), !(!vec3<bool>(true, true, global0.x))), vec3<bool>(!(-29230i == max(u_input.b, u_input.b)), !global0.x, true));
    let var_1 = func_2();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(-1625f)), ~1u, global3.c);
    global3 = func_2();
    return _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, var_1.b ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, global3.b, 56715u, var_1.b), vec4<u32>(var_2.b, u_input.a, var_1.b, var_1.b))), 16923u);
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    global3 = Struct_1(_wgslsmith_div_f32(global3.a, _wgslsmith_f_op_f32(1000f * global2[_wgslsmith_index_u32(~arg_0, 15u)])), ~(~21846u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2[_wgslsmith_index_u32(33404u, 15u)], 462f, global3.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.c) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, global2[_wgslsmith_index_u32(48558u, 15u)], 160f))))));
    global3 = Struct_1(1050f, _wgslsmith_clamp_u32(arg_0, 40495u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 4294967295u, global3.b, global3.b) ^ vec4<u32>(1u, arg_0, 68243u, 34855u), vec4<u32>(arg_2.b, arg_0, 48090u, 27681u) | vec4<u32>(arg_2.b, u_input.a, global3.b, 36196u)) % 32u), 90321u), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-800f, 317f, _wgslsmith_f_op_f32(-global3.a)), arg_2.c)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-223f, 1704f, global3.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(612f, arg_2.a, -1337f) - arg_2.c), vec3<f32>(arg_2.c.x, arg_2.a, global2[_wgslsmith_index_u32(4320u, 15u)])))))));
    let var_0 = func_2();
    global2 = array<f32, 15>();
    let var_1 = func_2();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_sub_u32(~u_input.a & ~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.b, 1u, global3.b, global3.b), vec4<u32>(global3.b, 4294967295u, u_input.a, 46106u)), func_1()), -vec2<i32>(1i, ~(-46327i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1000f)), global3.c.x))), ~func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 15u)]), global3.c.x, 1814f))), -_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b, 0i, u_input.b)), select(vec3<i32>(u_input.b, -1i, u_input.b), vec3<i32>(2147483647i, -43529i, 93028i), vec3<bool>(false, true, global0.x)), -vec3<i32>(u_input.b, 2147483647i, u_input.b)), reverseBits(-vec3<i32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -1i, 1i), vec3<i32>(0i, -20464i, u_input.b)) | ~vec3<i32>(-31179i, 1i, u_input.b)));
    global0 = vec3<bool>(false, true, !any(vec3<bool>(global0.x, any(vec3<bool>(true, global0.x, global0.x)), !global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_f_op_vec4_f32(vec4<f32>(func_2().c.x, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(917f + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1466f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -923f, global2[_wgslsmith_index_u32(6514u, 15u)], -1000f) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.a, 606f, global3.a, -897f), vec4<f32>(1565f, -175f, -1086f, -100f))))))), ~(~u_input.a));
}

