struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(257f, vec2<u32>(0u, 3092u), vec2<u32>(4294967295u, 23414u)), Struct_1(268f, vec2<u32>(30259u, 0u), vec2<u32>(4294967295u, 11842u)), Struct_1(282f, vec2<u32>(0u, 5660u), vec2<u32>(79906u, 0u)), Struct_1(715f, vec2<u32>(4294967295u, 52456u), vec2<u32>(52375u, 85503u)), Struct_1(1000f, vec2<u32>(0u, 0u), vec2<u32>(0u, 22080u)), Struct_1(-462f, vec2<u32>(4294967295u, 41988u), vec2<u32>(1u, 35669u)), Struct_1(-488f, vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 17355u)), Struct_1(451f, vec2<u32>(20033u, 7384u), vec2<u32>(78705u, 1u)), Struct_1(-621f, vec2<u32>(0u, 60280u), vec2<u32>(4294967295u, 43202u)), Struct_1(2623f, vec2<u32>(0u, 57379u), vec2<u32>(0u, 32577u)), Struct_1(1226f, vec2<u32>(4294967295u, 108988u), vec2<u32>(52046u, 1u)), Struct_1(1404f, vec2<u32>(12691u, 4294967295u), vec2<u32>(1u, 0u)), Struct_1(433f, vec2<u32>(0u, 96265u), vec2<u32>(1u, 42858u)), Struct_1(-845f, vec2<u32>(4294967295u, 0u), vec2<u32>(13322u, 4294967295u)), Struct_1(597f, vec2<u32>(4294967295u, 47647u), vec2<u32>(55621u, 11635u)), Struct_1(1000f, vec2<u32>(0u, 4294967295u), vec2<u32>(5380u, 1u)), Struct_1(1323f, vec2<u32>(3836u, 4294967295u), vec2<u32>(1u, 47343u)), Struct_1(1365f, vec2<u32>(4294967295u, 4294967295u), vec2<u32>(37795u, 16596u)), Struct_1(-1136f, vec2<u32>(3086u, 0u), vec2<u32>(4294967295u, 31396u)), Struct_1(775f, vec2<u32>(25855u, 38423u), vec2<u32>(8661u, 1u)), Struct_1(1043f, vec2<u32>(8593u, 0u), vec2<u32>(4175u, 1u)), Struct_1(570f, vec2<u32>(0u, 41579u), vec2<u32>(1u, 0u)), Struct_1(-1611f, vec2<u32>(4294967295u, 4294967295u), vec2<u32>(17412u, 64793u)), Struct_1(128f, vec2<u32>(21188u, 28082u), vec2<u32>(28554u, 0u)), Struct_1(125f, vec2<u32>(17023u, 8910u), vec2<u32>(22385u, 0u)), Struct_1(-1045f, vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 98938u)), Struct_1(-1000f, vec2<u32>(9367u, 36614u), vec2<u32>(1u, 1u)), Struct_1(1195f, vec2<u32>(4294967295u, 57419u), vec2<u32>(47953u, 0u)), Struct_1(-1000f, vec2<u32>(1u, 0u), vec2<u32>(1u, 63963u)), Struct_1(-1440f, vec2<u32>(53841u, 10548u), vec2<u32>(42531u, 24526u)), Struct_1(-265f, vec2<u32>(0u, 50629u), vec2<u32>(10756u, 9850u)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = select(!vec3<bool>(select(false, true, true), true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), false))), vec3<bool>(!any(vec4<bool>(true, true, true, true)), true, false), select(select(vec3<bool>(any(vec2<bool>(true, true)), select(true, true, true), any(vec4<bool>(false, true, true, false))), vec3<bool>(true, true, false), (arg_3.x | u_input.a.x) < -4257i), vec3<bool>(all(vec3<bool>(true, true, true)), -43637i != arg_3.x, all(vec3<bool>(true, true, true))), true));
    var_0 = select(select(select(vec3<bool>(true, all(vec4<bool>(var_0.x, true, var_0.x, var_0.x)), var_0.x), select(vec3<bool>(var_0.x, true, var_0.x), !vec3<bool>(false, var_0.x, true), !vec3<bool>(var_0.x, var_0.x, var_0.x)), !(!var_0.x)), select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, false, false), false), !vec3<bool>(false, true, var_0.x), all(var_0.yy) & any(vec3<bool>(var_0.x, var_0.x, true))), var_0.x), vec3<bool>(true, select(true, select(false && var_0.x, var_0.x, any(vec3<bool>(var_0.x, true, false))), var_0.x), all(!var_0.yy) || !var_0.x), !(!var_0.x));
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.a, 202f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(580f, 306f), _wgslsmith_f_op_f32(-arg_2.a)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1797f, -194f) + vec2<f32>(arg_2.a, -420f)))) * vec2<f32>(-138f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_1 = firstTrailingBit(firstLeadingBit(10643i));
    var_0 = select(vec3<bool>(var_0.x, false, select(true, all(!vec4<bool>(var_0.x, true, var_0.x, false)), !var_0.x)), vec3<bool>(all(var_0.xz), true, false), !any(vec4<bool>(var_0.x, false, false, var_0.x)) && true);
    return !(!(!(!(!vec3<bool>(var_0.x, var_0.x, var_0.x)))));
}

fn func_2() -> Struct_1 {
    let var_0 = -vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_add_i32(u_input.a.x, -18871i), u_input.a.x), ~(i32(-1i) * -1i)), countOneBits(u_input.a.x), -1i);
    let var_1 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), func_3(global1[_wgslsmith_index_u32(0u, 31u)], ~select(u_input.a.xz, vec2<i32>(1i, 46814i), true), Struct_1(_wgslsmith_f_op_f32(-global0.x), u_input.b, u_input.b), var_0.yx), vec3<bool>(true, true, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)) <= 0u));
    global1 = array<Struct_1, 31>();
    var var_2 = global1[_wgslsmith_index_u32(~u_input.b.x, 31u)];
    let var_3 = 15002i;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a + global0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1177f * -1187f), var_2.a)))), ~(~vec2<u32>(~0u, _wgslsmith_div_u32(u_input.b.x, 77976u))), var_2.b);
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(435f, arg_0.a)));
    let var_0 = _wgslsmith_div_i32(u_input.a.x, 25950i);
    var var_1 = any(vec4<bool>(true, !(any(vec4<bool>(false, true, true, true)) & all(vec3<bool>(true, false, true))), true, true));
    let var_2 = select(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))), !(!select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), true)), true);
    let var_3 = func_2();
    return var_3.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = Struct_1(-1000f, vec2<u32>(max(4294967295u, 35439u), func_1(Struct_1(_wgslsmith_f_op_f32(step(global0.x, global0.x)), ~u_input.b, u_input.b))), ~reverseBits(~(~vec2<u32>(4294967295u, 24597u))));
    var var_2 = global0.x;
    var var_3 = u_input.b;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1710f, var_1.a))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, global0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -385f)) + vec2<f32>(-217f, -1599f)))));
    var_2 = _wgslsmith_f_op_f32(trunc(global0.x));
    var var_4 = func_2();
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-447f, _wgslsmith_f_op_f32(floor(895f)))), -693f, true))), u_input.b, vec2<u32>(82644u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(~35831u, var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1093f)) * _wgslsmith_f_op_f32(-516f - 1232f)) * _wgslsmith_f_op_f32(select(var_1.a, var_4.a, var_5.c.x > var_1.b.x))) + _wgslsmith_f_op_f32(f32(-1f) * -1270f)));
}

