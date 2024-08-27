struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(false, -662f, vec3<f32>(780f, -872f, 199f), vec4<u32>(0u, 0u, 4294967295u, 1u)), Struct_1(false, -1421f, vec3<f32>(-1327f, -857f, 453f), vec4<u32>(1u, 19544u, 25417u, 0u)), Struct_1(true, -1196f, vec3<f32>(1698f, -1889f, 126f), vec4<u32>(37486u, 1u, 1u, 4294967295u)), Struct_1(false, 2415f, vec3<f32>(-457f, -1001f, -873f), vec4<u32>(37681u, 4294967295u, 29699u, 0u)), Struct_1(false, 848f, vec3<f32>(368f, 1406f, 1380f), vec4<u32>(19734u, 1u, 1u, 0u)), Struct_1(true, -454f, vec3<f32>(1193f, -788f, -1000f), vec4<u32>(15582u, 4294967295u, 5658u, 3542u)), Struct_1(false, 1515f, vec3<f32>(315f, -834f, -1679f), vec4<u32>(116655u, 48667u, 1u, 1u)), Struct_1(true, 163f, vec3<f32>(161f, -1000f, 516f), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u)), Struct_1(false, -1089f, vec3<f32>(-315f, -845f, -161f), vec4<u32>(0u, 54227u, 4294967295u, 10540u)), Struct_1(true, 1433f, vec3<f32>(-1062f, -658f, -1069f), vec4<u32>(35803u, 4327u, 33343u, 13875u)), Struct_1(false, -298f, vec3<f32>(-733f, -351f, -1028f), vec4<u32>(82432u, 11372u, 0u, 42972u)), Struct_1(false, -1194f, vec3<f32>(803f, -261f, -500f), vec4<u32>(142435u, 4294967295u, 799u, 25563u)));

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = 1u;
    global3 = !(!select(vec4<bool>(all(vec4<bool>(global3.x, arg_0.c.x, global3.x, arg_0.d.a)), global3.x, true, global3.x), !(!vec4<bool>(global3.x, false, global3.x, false)), vec4<bool>(true, arg_0.d.a, !arg_0.a, global3.x)));
    var_0 = _wgslsmith_clamp_u32(u_input.b, 5954u, _wgslsmith_add_u32(4294967295u, u_input.c.x));
    var var_1 = Struct_2(!any(vec2<bool>(any(vec4<bool>(true, false, arg_0.c.x, false)), all(vec3<bool>(global3.x, false, true)))), vec2<bool>(true, (u_input.b << (u_input.b % 32u)) <= _wgslsmith_dot_vec3_u32(~vec3<u32>(81655u, u_input.c.x, 1u), vec3<u32>(u_input.c.x, 15073u, 8584u) | vec3<u32>(1334u, 0u, u_input.b))));
    let var_2 = !(!vec4<bool>(false || arg_0.d.b.x, true, true, false));
    return _wgslsmith_f_op_f32(floor(-679f));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> bool {
    global1 = -(vec3<i32>(-(~global1.x), 11966i, global1.x & -u_input.a) >> (arg_1.d.zyx % vec3<u32>(32u)));
    global1 = firstLeadingBit(vec3<i32>(global1.x, _wgslsmith_mult_i32(-25789i, max(1i, 20069i)), reverseBits(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), 38925i))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_0, 344f)), _wgslsmith_f_op_f32(global0.x - -649f))), _wgslsmith_div_f32(-762f, 1000f), arg_1.b) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global0.yxz - global0.zyx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(888f, global0.x, -506f)))) * vec3<f32>(global0.x, _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -825f)))));
    var var_1 = select(vec3<bool>(true, false | global3.x, !global3.x & all(!vec3<bool>(false, arg_1.a, global3.x))), select(global3.xwz, select(global3.wwy, !(!global3.xyz), true), select(true, true, false)), global3.x);
    let var_2 = Struct_3(false, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-618f + _wgslsmith_f_op_f32(f32(-1f) * -1139f)), _wgslsmith_f_op_f32(-arg_0), var_0.x) * global0.wwy), select(!select(global3.zxw, select(vec3<bool>(false, false, arg_1.a), global3.wyw, vec3<bool>(false, var_1.x, true)), !vec3<bool>(var_1.x, arg_1.a, arg_1.a)), global3.xww, global3.wwx), Struct_2(!arg_1.a, vec2<bool>(!(1u <= u_input.c.x), !select(var_1.x, global3.x, global3.x))));
    return all(!select(global3.yxy, !vec3<bool>(var_2.d.a, true, arg_1.a), select(vec3<bool>(var_2.c.x, var_2.c.x, false), global3.xxz, vec3<bool>(false, false, true))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool) -> bool {
    var var_0 = select(select(!vec4<bool>(arg_2, arg_1.a, select(global3.x, global3.x, false), false), select(!select(vec4<bool>(false, arg_2, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, arg_2, global3.x)), select(!vec4<bool>(arg_1.a, true, arg_1.a, true), !vec4<bool>(false, true, arg_1.a, arg_1.a), !vec4<bool>(false, false, arg_2, global3.x)), !func_3(global0.x, global2[_wgslsmith_index_u32(arg_0.x, 12u)], arg_1.d.zzx)), select(vec4<bool>(true && arg_1.a, arg_2 & false, !arg_1.a, true), !(!vec4<bool>(arg_2, true, false, false)), !select(vec4<bool>(false, false, arg_2, true), vec4<bool>(arg_2, false, false, global3.x), true))), !(!(!(!vec4<bool>(false, global3.x, false, false)))), select(vec4<bool>(false, true, !global3.x, arg_1.a), !(!select(vec4<bool>(true, false, global3.x, arg_1.a), vec4<bool>(false, false, true, true), vec4<bool>(true, arg_2, arg_2, arg_2))), vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, global3.x, false), arg_2)), any(!global3.ww), func_3(_wgslsmith_f_op_f32(abs(arg_1.c.x)), arg_1, arg_0.yzx), arg_1.a)));
    global2 = array<Struct_1, 12>();
    var var_1 = Struct_2(!arg_1.a, !(!vec2<bool>(global1.x <= 4452i, !var_0.x)));
    let var_2 = Struct_1(var_0.x, -489f, vec3<f32>(-945f, global0.x, -661f), arg_1.d);
    var_0 = !select(vec4<bool>(true, false, 1i > global1.x, any(select(vec4<bool>(arg_1.a, var_1.b.x, false, true), vec4<bool>(arg_2, true, true, true), var_2.a))), !vec4<bool>(any(vec4<bool>(arg_2, true, var_2.a, var_0.x)), var_0.x, var_0.x | true, any(vec3<bool>(true, false, false))), vec4<bool>(!(1i > global1.x), ~u_input.b > 1u, func_3(-1232f, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.d.x, 14066u), 12u)], arg_0.zwy), !func_3(var_2.c.x, Struct_1(arg_2, global0.x, vec3<f32>(var_2.b, var_2.c.x, -480f), arg_1.d), var_2.d.xyz)));
    return arg_2;
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_3) -> vec4<u32> {
    var var_0 = Struct_1(any(vec4<bool>(all(vec4<bool>(false, true, arg_3.d.a, arg_3.a)), func_4(~vec4<u32>(17043u, 15935u, u_input.b, 1u), Struct_1(arg_2.x, -1185f, arg_3.b, vec4<u32>(u_input.b, 26881u, 23871u, arg_0.x)), func_3(-185f, Struct_1(global3.x, 252f, vec3<f32>(global0.x, 112f, global0.x), arg_0), vec3<u32>(50885u, 0u, u_input.c.x))), any(select(arg_2, vec3<bool>(arg_3.c.x, arg_2.x, arg_2.x), arg_2.x)), any(arg_3.c.zy))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-885f, global0.x)) - _wgslsmith_div_f32(1314f, 368f)), _wgslsmith_f_op_f32(666f + 1f), _wgslsmith_f_op_f32(step(-1150f, global0.x))))), _wgslsmith_div_vec4_u32(vec4<u32>(~(arg_1 << (46761u % 32u)), 1u & _wgslsmith_mod_u32(arg_0.x, u_input.b), firstLeadingBit(4021u & arg_0.x), select(_wgslsmith_mult_u32(u_input.c.x, arg_0.x), 12056u, any(vec4<bool>(true, global3.x, global3.x, true)))), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u | arg_0.x, ~22665u, arg_1, ~arg_0.x), countOneBits(vec4<u32>(0u, arg_0.x, arg_1, 0u)))));
    global3 = select(!vec4<bool>(func_4(vec4<u32>(74395u, arg_0.x, arg_1, 4294967295u), global2[_wgslsmith_index_u32(u_input.b, 12u)], false) == all(vec4<bool>(false, var_0.a, arg_2.x, var_0.a)), (global1.x ^ u_input.a) <= global1.x, global3.x, true), select(vec4<bool>(true, func_4(vec4<u32>(u_input.b, 33377u, 3620u, 1u), Struct_1(true, arg_3.b.x, vec3<f32>(var_0.b, 818f, 501f), arg_0), false), all(vec2<bool>(var_0.a, global3.x)) & true, arg_3.b.x >= _wgslsmith_div_f32(454f, global0.x)), !select(vec4<bool>(true, true, false, false), vec4<bool>(arg_2.x, global3.x, true, arg_3.a), vec4<bool>(false, var_0.a, false, false)), select(!select(vec4<bool>(true, var_0.a, true, var_0.a), vec4<bool>(true, false, arg_2.x, false), vec4<bool>(true, arg_3.a, arg_3.d.a, false)), vec4<bool>(true, global3.x, var_0.a, true), vec4<bool>(true, true, true, true))), select(!select(!vec4<bool>(arg_2.x, global3.x, arg_2.x, global3.x), vec4<bool>(true, var_0.a, var_0.a, arg_3.d.b.x), any(vec4<bool>(arg_2.x, false, true, arg_3.c.x))), vec4<bool>(!(-860f < var_0.c.x), global3.x, true, !(!var_0.a)), !(!var_0.a || all(global3.xy))));
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b.x, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(select(-1363f, -1672f, false)), _wgslsmith_f_op_f32(step(arg_3.b.x, global0.x))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3.b.x, arg_3.b.x, arg_3.b.x, var_0.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(856f, -157f, -1000f, arg_3.b.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1304f, arg_3.b.x, global0.x, _wgslsmith_div_f32(-1356f, 540f))))));
    global1 = _wgslsmith_mod_vec3_i32(max(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, global1.x, 0i), vec3<i32>(u_input.a, 17108i, u_input.a))), -vec3<i32>(global1.x, -14116i, 22612i) | (vec3<i32>(-23585i, global1.x, -2147483647i) ^ vec3<i32>(-2147483647i, global1.x, 27671i))) | _wgslsmith_mod_vec3_i32(max(-vec3<i32>(0i, -2147483647i, 1i), vec3<i32>(-2147483647i, global1.x, -1i) ^ vec3<i32>(u_input.a, 1i, -1i)), vec3<i32>(u_input.a, firstLeadingBit(-7464i), global1.x & 23646i)), _wgslsmith_sub_vec3_i32(~(~_wgslsmith_sub_vec3_i32(vec3<i32>(14927i, global1.x, 32370i), vec3<i32>(u_input.a, -54832i, u_input.a))), _wgslsmith_mod_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(23219i, -20602i, global1.x), vec3<i32>(-19644i, 11757i, -2147483647i), vec3<i32>(-2147483647i, global1.x, 2147483647i))), ~select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(global1.x, 0i, u_input.a), vec3<bool>(false, var_0.a, global3.x)))));
    var var_1 = Struct_3(func_4(_wgslsmith_add_vec4_u32(~(~var_0.d), _wgslsmith_div_vec4_u32(reverseBits(var_0.d), _wgslsmith_mod_vec4_u32(vec4<u32>(52140u, u_input.c.x, 50978u, u_input.b), var_0.d))), Struct_1(true, _wgslsmith_f_op_f32(-var_0.c.x), global0.wzy, vec4<u32>(_wgslsmith_add_u32(var_0.d.x, var_0.d.x), u_input.b, 0u, var_0.d.x)), true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global0.wwx)))), arg_3.b), !(!vec3<bool>(true, global3.x, any(arg_2.zy))), arg_3.d);
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<i32>(~(-41828i), 0i, _wgslsmith_div_i32(reverseBits(~_wgslsmith_mod_i32(global1.x, 2147483647i)), _wgslsmith_clamp_i32(u_input.a & _wgslsmith_dot_vec4_i32(vec4<i32>(-3583i, 0i, -11755i, 2147483647i), vec4<i32>(-2147483647i, 11080i, u_input.a, 2147483647i)), 59854i, ~1i)));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(true, global0.wzx, vec3<bool>(global3.x, false, global3.x), Struct_2(false, vec2<bool>(global3.x, true)))))) + -1831f) + _wgslsmith_f_op_f32(-global0.x));
    var_0 = 914f;
    var var_1 = firstLeadingBit(countOneBits(vec4<u32>(u_input.b, ~u_input.c.x, _wgslsmith_dot_vec4_u32(func_2(vec4<u32>(u_input.c.x, 2848u, 1u, 4294967295u), 42883u, vec3<bool>(false, false, global3.x), Struct_3(false, vec3<f32>(global0.x, global0.x, global0.x), global3.ywz, Struct_2(false, vec2<bool>(global3.x, true)))), vec4<u32>(34169u, 0u, u_input.c.x, u_input.c.x) & vec4<u32>(u_input.c.x, 56761u, 0u, 4294967295u)), _wgslsmith_mult_u32(select(u_input.c.x, 73064u, true), 0u))));
    let var_2 = vec3<i32>(reverseBits(u_input.a), u_input.a & ~min(1i, u_input.a), abs(u_input.a));
    var_1 = vec4<u32>(49186u, max(var_1.x, ~27066u), func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_1.x, u_input.b, var_1.x), vec4<u32>(u_input.c.x, 39341u, 1u, var_1.x)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.c.x, 4294967295u, 0u), vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, var_1.x)), firstLeadingBit(abs(u_input.b)), !select(global3.wzz, vec3<bool>(false, false, true), vec3<bool>(false, global3.x, false)), Struct_3(true, _wgslsmith_div_vec3_f32(global0.yxx, global0.zyy), select(global3.yzw, vec3<bool>(true, global3.x, false), true), Struct_2(global3.x, global3.yw))).x, reverseBits(_wgslsmith_sub_u32(~var_1.x, ~var_1.x))) >> (firstTrailingBit(~min(select(vec4<u32>(63719u, var_1.x, u_input.c.x, var_1.x), vec4<u32>(52348u, u_input.b, var_1.x, 64314u), global3.x), vec4<u32>(16649u, var_1.x, 14260u, 58550u))) % vec4<u32>(32u));
    let var_3 = Struct_3(global3.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.yyy, global0.wzy, global3.yzx)))))), vec3<bool>(true, all(vec3<bool>(func_4(vec4<u32>(9962u, 1u, var_1.x, u_input.b), global2[_wgslsmith_index_u32(u_input.c.x, 12u)], true), true, any(global3.zzw))), ~_wgslsmith_sub_u32(var_1.x, u_input.c.x) >= ~(~u_input.b)), Struct_2(!global3.x, !global3.yx));
    let x = u_input.a;
    s_output = StorageBuffer(global1.yz, vec2<f32>(global0.x, -174f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, reverseBits(1u ^ var_1.x)), var_1.wz), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-firstLeadingBit(vec2<i32>(u_input.a, 24147i)), vec2<i32>(-31229i << (u_input.b % 32u), ~(-32020i))), var_2.yx));
}

