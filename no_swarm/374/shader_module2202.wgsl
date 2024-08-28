struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<i32, 6> = array<i32, 6>(-2819i, 0i, 9724i, -478i, 0i, -24824i);

var<private> global2: i32;

var<private> global3: Struct_5 = Struct_5(false, vec2<i32>(-12121i, 0i), 72474u, Struct_4(true, Struct_3(42872u, Struct_1(116f, vec2<f32>(-631f, 1146f), vec2<f32>(-1113f, -379f)), -101f), Struct_3(9176u, Struct_1(575f, vec2<f32>(116f, 1000f), vec2<f32>(-1000f, 1775f)), -1438f)), Struct_1(-1645f, vec2<f32>(-2623f, -111f), vec2<f32>(442f, 1315f)));

var<private> global4: array<vec3<i32>, 18>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: Struct_5) -> vec2<bool> {
    global0 = arg_0;
    let var_0 = arg_0.a;
    var var_1 = ~global3.b.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-441f, arg_0.d.c.c, arg_0.e.c.x, global0.e.a)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.d.b.b.b.x, -485f, 319f, 380f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.e.a, 1178f, 325f, 849f))))) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d.c.b.a, _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(global0.e.b.x + 564f), arg_0.e.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.e.a, -410f, arg_0.d.b.c, -1733f))))));
    return vec2<bool>(true, true);
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: i32, arg_3: Struct_4) -> Struct_5 {
    global0 = Struct_5(_wgslsmith_f_op_f32(ceil(global3.d.c.b.b.x)) < 622f, vec2<i32>(global3.b.x, global0.b.x), arg_0.d.b.a, arg_3, global3.e);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_3.b.b.a), global3.d.b.b.b, _wgslsmith_div_vec2_f32(global3.e.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.e.b, _wgslsmith_f_op_vec2_f32(global0.d.c.b.b - vec2<f32>(arg_1, -1000f))))));
    var var_1 = Struct_2(u_input.c.wz, arg_3.c.a ^ global3.c, Struct_1(_wgslsmith_f_op_f32(trunc(-1244f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(step(786f, -171f)), _wgslsmith_f_op_f32(726f * -529f)))), _wgslsmith_f_op_vec2_f32(floor(global3.e.c))));
    var var_2 = _wgslsmith_f_op_f32(step(arg_0.e.b.x, _wgslsmith_f_op_f32(global3.d.c.c - arg_0.e.c.x)));
    var var_3 = arg_3.b;
    return Struct_5(!global0.a, vec2<i32>(countOneBits(-2147483647i), arg_2), _wgslsmith_dot_vec4_u32(u_input.c, ~u_input.c), arg_3, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-681f)), var_3.b.c.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1249f, arg_3.c.c), var_1.c.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(915f, var_1.c.a)))), var_1.c.b));
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: vec3<i32>) -> u32 {
    let var_0 = arg_1.d.c;
    let var_1 = func_3(func_3(Struct_5(any(!vec2<bool>(global3.d.a, true)), global3.b, ~_wgslsmith_div_u32(global3.d.c.a, 69334u), global3.d, global3.d.c.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.c.b.c.x + global3.e.c.x) * 786f))), global0.b.x, func_3(func_3(func_3(arg_1, arg_1.e.a, -1i, Struct_4(false, global3.d.b, arg_1.d.c)), -152f, firstTrailingBit(2147483647i), Struct_4(arg_1.d.a, global3.d.c, Struct_3(global0.c, Struct_1(2067f, vec2<f32>(-478f, -1119f), global0.e.b), global3.d.c.c))), _wgslsmith_f_op_f32(trunc(335f)), _wgslsmith_div_i32(global0.b.x, _wgslsmith_add_i32(global0.b.x, -1i)), Struct_4(global0.a == global3.d.a, global0.d.b, global0.d.b)).d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.e.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(615f, -274f) - _wgslsmith_f_op_f32(-global0.d.b.c)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -391f) - _wgslsmith_f_op_f32(step(var_0.b.a, 424f))))), u_input.d, Struct_4(true, func_3(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -1844f)) + _wgslsmith_f_op_f32(select(global0.e.c.x, global0.e.b.x, global3.a))), global3.b.x, arg_1.d).d.c, Struct_3(_wgslsmith_div_u32(0u, 12106u) << (u_input.b % 32u), func_3(arg_1, 1878f, firstTrailingBit(global0.b.x), func_3(Struct_5(global0.a, arg_1.b, global3.d.b.a, arg_1.d, Struct_1(2658f, vec2<f32>(arg_0, global0.d.b.b.c.x), arg_1.d.c.b.c)), arg_1.d.b.c, global1[_wgslsmith_index_u32(4294967295u, 6u)], global3.d).d).e, -724f)));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-905f, _wgslsmith_f_op_f32(max(global0.d.c.c, global3.d.b.c)), _wgslsmith_f_op_f32(var_0.b.b.x - var_0.b.a))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-560f, -571f, var_0.b.c.x))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, -1000f, arg_0), vec3<f32>(1075f, var_0.b.a, arg_0)) * vec3<f32>(-670f, var_1.d.b.b.a, 305f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-574f, _wgslsmith_f_op_f32(f32(-1f) * -962f), 456f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.e.b.x, -301f)))))))));
    let var_3 = func_3(Struct_5(func_2(arg_1).x, vec2<i32>(1i, abs(1i) ^ _wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(6066u, 18u)], global4[_wgslsmith_index_u32(23944u, 18u)])), u_input.b, func_3(func_3(func_3(arg_1, -932f, global0.b.x, global3.d), _wgslsmith_f_op_f32(901f + 631f), 0i, arg_1.d), var_1.d.c.b.c.x, firstLeadingBit(-arg_2.x), arg_1.d).d, func_3(func_3(Struct_5(false, vec2<i32>(u_input.a, 1i), var_0.a, Struct_4(global3.d.a, arg_1.d.b, Struct_3(20287u, arg_1.d.b.b, -1032f)), Struct_1(115f, vec2<f32>(-933f, 451f), var_0.b.b)), _wgslsmith_f_op_f32(-var_1.d.b.b.b.x), 0i, global0.d), var_2.x, 6603i, global0.d).e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1742f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))))), 1i, global3.d);
    var var_4 = ~abs(~abs(vec2<u32>(39251u, 4294967295u)));
    return 0u;
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = func_4(_wgslsmith_f_op_f32(-global3.d.c.c), func_3(Struct_5(global0.d.a, select(vec2<i32>(global3.b.x, 2147483647i), firstTrailingBit(global3.b), func_2(Struct_5(arg_0, global3.b, global3.c, Struct_4(global3.a, Struct_3(0u, global0.e, global3.d.c.c), global0.d.c), global3.d.c.b))), u_input.c.x << (u_input.b % 32u), global0.d, global3.d.c.b), _wgslsmith_f_op_f32(-global3.d.b.b.a), -(~(~u_input.d)), global0.d), -_wgslsmith_mod_vec3_i32(~global4[_wgslsmith_index_u32(u_input.c.x, 18u)], -global4[_wgslsmith_index_u32(1u, 18u)]) ^ vec3<i32>(_wgslsmith_clamp_i32(countOneBits(u_input.d), func_3(Struct_5(global3.a, global0.b, 9863u, Struct_4(global0.a, Struct_3(1u, Struct_1(-876f, global0.d.b.b.b, global3.e.b), global0.d.b.c), global3.d.b), Struct_1(global0.d.c.c, vec2<f32>(-762f, global3.d.c.c), vec2<f32>(global0.d.b.c, global3.e.c.x))), global3.e.a, -52860i, global3.d).b.x, -2147483647i), max(global3.b.x, 1i), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0.d.c.a, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c, 98017u, u_input.c.x), vec3<u32>(global3.c, 21469u, 7459u)), ~129876u), 6u)]));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(global0.d.b.b.c.x)), vec2<f32>(_wgslsmith_f_op_f32(step(global0.d.c.c, global0.d.c.b.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global3.d.b.b.b.x, _wgslsmith_f_op_f32(max(815f, global0.d.b.c))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-453f, 1089f)), global0.d.c.b.b))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(var_1.b.x - -425f), _wgslsmith_div_vec2_f32(vec2<f32>(373f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.d.c.c, 757f))), global3.d.c.b.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_1.b)))))));
    let var_3 = Struct_3(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(7918u, 13042u, 31286u, u_input.b), u_input.c) & ~global0.c, u_input.c.x | max(u_input.c.x, u_input.c.x), ~1u), func_3(Struct_5(any(vec2<bool>(global3.a, global0.d.a)), ~global0.b, 0u, global0.d, func_3(Struct_5(global0.d.a, vec2<i32>(-46679i, u_input.a), 59913u, global0.d, Struct_1(-491f, vec2<f32>(var_1.b.x, 717f), vec2<f32>(global3.e.b.x, -450f))), -108f, _wgslsmith_sub_i32(35287i, global3.b.x), func_3(Struct_5(false, global0.b, u_input.b, Struct_4(true, global0.d.c, global0.d.c), Struct_1(global0.e.c.x, var_2.c, vec2<f32>(var_1.c.x, 248f))), 117f, u_input.a, global0.d).d).d.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.e.a), global3.e.b.x))), -6468i ^ global0.b.x, Struct_4(~global3.b.x != -24628i, Struct_3(1u, global3.e, _wgslsmith_f_op_f32(sign(-138f))), Struct_3(global0.c, global0.e, _wgslsmith_f_op_f32(sign(-1384f))))).e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)));
    var var_4 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(1i, u_input.d), func_3(func_3(Struct_5(arg_0, global3.b, global3.c, global3.d, Struct_1(-1578f, vec2<f32>(-1217f, global3.e.b.x), global0.d.b.b.b)), _wgslsmith_f_op_f32(sign(-678f)), ~u_input.d, global3.d), -252f, u_input.d, Struct_4(all(vec3<bool>(false, true, false)), Struct_3(global0.d.c.a, var_3.b, var_2.b.x), func_3(Struct_5(global3.d.a, global3.b, 49652u, global3.d, Struct_1(global0.d.b.b.c.x, global3.e.b, vec2<f32>(145f, var_2.a))), 316f, -35277i, global3.d).d.b)).b.x), select(-global3.b.x, _wgslsmith_sub_i32(1i, ~(-1i)), true || ((arg_0 && global3.a) & all(vec4<bool>(global0.d.a, arg_0, false, global0.d.a)))));
    return Struct_2(u_input.c.wx, 0u, var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 6>();
    let var_0 = func_1(global0.d.a);
    var var_1 = !(!vec2<bool>(true | !global0.d.a, ~u_input.a != 2147483647i));
    global1 = array<i32, 6>();
    let var_2 = -(max(1i, -36564i) << (_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, var_0.b), u_input.c.x) % 32u)) ^ global0.b.x;
    var_1 = vec2<bool>(func_3(Struct_5(var_1.x, vec2<i32>(-u_input.d, -1i & global3.b.x), 0u, global3.d, global3.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c.c.x, 302f))) - _wgslsmith_f_op_f32(func_3(Struct_5(true, vec2<i32>(14683i, global0.b.x), 4294967295u, global3.d, Struct_1(1090f, global0.d.b.b.c, var_0.c.b)), global3.e.c.x, var_2, Struct_4(global3.a, global3.d.c, Struct_3(global3.d.b.a, var_0.c, -198f))).d.c.c - 1974f)), ~firstTrailingBit(var_2), global3.d).a, false | (!any(vec3<bool>(global3.d.a, global3.a, false)) & global3.a));
    var var_3 = _wgslsmith_sub_i32(~(~(i32(-1i) * -16156i)), global1[_wgslsmith_index_u32(27775u, 6u)]);
    global0 = Struct_5(select(var_1.x, any(vec4<bool>(24243u >= global0.c, true, -996f <= global0.d.c.c, global0.a)), false), vec2<i32>(u_input.a, 0i), 4294967295u, global3.d, global3.e);
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

