struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: f32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = false;

var<private> global2: Struct_1;

var<private> global3: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(global2.c.xy));
    let var_1 = global2.e.x;
    var var_2 = Struct_4(global2.e.x & (u_input.b.x <= 1i), ~(-23028i), Struct_3(arg_1, 64945u, arg_1.d, 2147483647i), ~24295u);
    let var_3 = arg_1;
    var var_4 = vec3<bool>(true, true, true);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.c * _wgslsmith_f_op_vec3_f32(-global2.c)))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.c - global2.c), vec3<f32>(-853f, 755f, global0.c.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, -356f, global2.b)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1601f)) - var_0.x));
    global2 = Struct_1(global0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + global2.b))), 187f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_1, global0.c.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(-1382f, Struct_1(global0.a, -948f, global0.c, global0.d, global0.e))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.c * vec3<f32>(132f, 575f, global2.b)), _wgslsmith_f_op_vec3_f32(round(var_0))))))), select(firstLeadingBit(vec4<u32>(~19465u, global2.a ^ u_input.c.x, 1u, global2.a << (13224u % 32u))), _wgslsmith_div_vec4_u32(vec4<u32>(min(113336u, 2580u), _wgslsmith_div_u32(global0.d.x, 17783u), 57769u, _wgslsmith_div_u32(0u, 19344u)), global2.d), !vec4<bool>(true, true, any(global0.e), true)), global0.e);
    global3 = !select(vec4<bool>(true, _wgslsmith_f_op_f32(-global0.b) >= global0.c.x, true, true), select(vec4<bool>(true, global2.e.x, true, true), vec4<bool>(global2.e.x, false, true, !global3.x), !global0.e), select(vec4<bool>(all(global3.zzz), all(global2.e.xxy), all(global2.e), all(vec2<bool>(false, global2.e.x))), vec4<bool>(!global2.e.x, false, global2.e.x, false), global0.e));
    var var_2 = global2.e;
    return Struct_1(~_wgslsmith_mult_u32(1u, ~_wgslsmith_mult_u32(0u, u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -1400f) + -754f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(305f))), _wgslsmith_f_op_f32(-1000f + -1558f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1 + 1320f), _wgslsmith_f_op_f32(f32(-1f) * -1245f), _wgslsmith_f_op_f32(-global2.c.x)))), firstTrailingBit(global2.d), select(select(select(select(vec4<bool>(true, true, false, var_2.x), vec4<bool>(false, var_2.x, true, var_2.x), var_2.x), select(global2.e, vec4<bool>(true, false, false, var_2.x), var_2.x), any(vec4<bool>(var_2.x, false, var_2.x, true))), !select(global2.e, vec4<bool>(true, global0.e.x, global2.e.x, global0.e.x), global0.e.x), vec4<bool>(true, var_2.x, true, false || global3.x)), !select(!vec4<bool>(false, false, global2.e.x, false), !vec4<bool>(true, global3.x, true, global0.e.x), var_1 >= var_0.x), any(!(!global0.e))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_2) -> Struct_4 {
    var var_0 = (i32(-1i) * -1i) << (0u % 32u);
    let var_1 = vec4<u32>(74119u, 1u, 1u, reverseBits(10484u));
    let var_2 = 16932i;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.b * arg_2.c.a.b), _wgslsmith_f_op_f32(arg_3.d + -858f)))), _wgslsmith_f_op_f32(-arg_1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.c.x, global0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.c.x))) + arg_0.c.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.b + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_0.c.a.b, global0.b, false)), global2.c.x)))));
    var var_4 = var_2;
    return arg_2;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: i32) -> vec2<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -675f), global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b - arg_1), _wgslsmith_f_op_f32(min(-1000f, global0.c.x)))) - _wgslsmith_f_op_f32(-arg_1)));
    global1 = global2.e.x && true;
    var var_1 = Struct_3(Struct_1(min(_wgslsmith_mult_u32(global0.a, 0u) | ~0u, global2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * global0.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1023f * 107f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global2.c, vec3<f32>(global2.c.x, global2.c.x, arg_1))))), ~global0.d, global0.e), _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(countOneBits(_wgslsmith_dot_vec4_u32(global2.d, global2.d)), global0.a)), select(~global0.d, global2.d, !select(!vec4<bool>(true, arg_0.x, global2.e.x, false), global0.e, any(global3.zz))), max(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-9250i, -84800i), u_input.d), ~vec2<i32>(-53835i, arg_2)), arg_2));
    global3 = vec4<bool>(!select(arg_1 != 1891f, true && all(global0.e), true), global3.x, false, global3.x);
    var var_2 = func_4(Struct_4(true, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), Struct_3(func_2(), 80431u, ~(~global2.d), i32(-1i) * -var_1.d), (~global2.a ^ _wgslsmith_sub_u32(98334u, 12216u)) & global0.a), Struct_2(func_2(), arg_0, any(vec4<bool>(true, !global2.e.x, global3.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(712f, 429f) * -421f)), arg_0), Struct_4(false, -20078i, Struct_3(func_2(), max(~var_1.a.d.x, ~64054u), vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, 1u), _wgslsmith_dot_vec3_u32(global0.d.xxw, vec3<u32>(4294967295u, global0.a, global2.d.x)), 19409u, u_input.c.x), _wgslsmith_dot_vec4_i32(u_input.b, ~u_input.b)), 0u), Struct_2(var_1.a, vec3<bool>(!var_1.a.e.x & true, !global0.e.x | var_1.a.e.x, true & global3.x), global3.x, _wgslsmith_div_f32(979f, _wgslsmith_f_op_f32(global2.b - arg_1)), vec3<bool>(global2.e.x, false, any(!arg_0.yz))));
    return u_input.c.zx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(758f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x * global2.b)));
    var var_1 = ~global0.d.wz;
    let var_2 = !vec4<bool>(all(vec4<bool>(any(vec4<bool>(global3.x, false, global0.e.x, true)), true, global3.x || global2.e.x, false)), false, global2.e.x, !any(global0.e.zzw));
    var_1 = func_1(vec3<bool>(!global0.e.x, all(vec4<bool>(154f < global2.c.x, -30890i < u_input.a, false, !global3.x)), global0.b >= _wgslsmith_f_op_f32(-global2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.x, global0.c.x) + global2.c.x), _wgslsmith_sub_i32(u_input.d.x, ~u_input.b.x));
    var_0 = -1528f;
    global2 = func_4(Struct_4(func_2().e.x, select(_wgslsmith_sub_i32(u_input.a >> (global2.a % 32u), _wgslsmith_add_i32(1i, u_input.a)), ~1i, !(1i < u_input.a)), func_4(func_4(func_4(Struct_4(global0.e.x, -16659i, Struct_3(Struct_1(103308u, -822f, global2.c, vec4<u32>(1u, 64820u, var_1.x, var_1.x), global0.e), 0u, vec4<u32>(global0.a, global2.d.x, var_1.x, 33225u), u_input.b.x), var_1.x), Struct_2(Struct_1(19363u, -631f, vec3<f32>(global2.c.x, global2.c.x, -445f), vec4<u32>(4294967295u, 4294967295u, global0.a, u_input.c.x), vec4<bool>(var_2.x, false, global3.x, global2.e.x)), global2.e.wwy, global3.x, -1153f, global3.yzx), Struct_4(true, u_input.a, Struct_3(Struct_1(u_input.c.x, global2.b, vec3<f32>(-965f, global2.c.x, global2.c.x), global0.d, vec4<bool>(false, global2.e.x, false, global0.e.x)), global0.a, vec4<u32>(4294967295u, global2.a, u_input.c.x, 52905u), -2147483647i), 21336u), Struct_2(Struct_1(global0.d.x, global0.b, global0.c, global0.d, global2.e), global0.e.xxy, false, global0.b, vec3<bool>(global0.e.x, global2.e.x, true))), Struct_2(Struct_1(global2.d.x, 824f, global0.c, global0.d, global0.e), vec3<bool>(true, var_2.x, global0.e.x), true, global2.c.x, global3.wwy), func_4(Struct_4(true, u_input.a, Struct_3(Struct_1(0u, global0.b, global0.c, global0.d, vec4<bool>(true, global0.e.x, true, global0.e.x)), 4294967295u, vec4<u32>(var_1.x, u_input.c.x, global2.a, 0u), u_input.b.x), 93056u), Struct_2(Struct_1(4294967295u, 383f, global2.c, vec4<u32>(global0.d.x, global0.a, 1u, 4294967295u), global2.e), global0.e.yzz, global3.x, -1469f, var_2.zwx), Struct_4(global0.e.x, u_input.d.x, Struct_3(Struct_1(global0.a, -1418f, vec3<f32>(-683f, 1070f, -481f), global2.d, vec4<bool>(true, false, false, global0.e.x)), var_1.x, vec4<u32>(33877u, 104620u, 1u, 0u), u_input.b.x), global2.d.x), Struct_2(Struct_1(global2.a, 153f, global0.c, global2.d, global0.e), global0.e.xzw, false, -404f, global3.wzz)), Struct_2(Struct_1(global2.d.x, 1090f, vec3<f32>(-448f, 1604f, 569f), global2.d, var_2), global2.e.zwz, var_2.x, global2.b, vec3<bool>(false, global0.e.x, false))), Struct_2(Struct_1(23138u, global2.b, vec3<f32>(822f, global2.c.x, 805f), global0.d, vec4<bool>(global2.e.x, global2.e.x, global3.x, global3.x)), global2.e.wzz, false, _wgslsmith_f_op_f32(f32(-1f) * -994f), func_4(Struct_4(false, 0i, Struct_3(Struct_1(u_input.c.x, global2.b, global2.c, vec4<u32>(global2.a, 1u, global0.a, global0.d.x), global0.e), 13355u, vec4<u32>(u_input.c.x, var_1.x, global0.a, global0.d.x), u_input.d.x), var_1.x), Struct_2(Struct_1(4294967295u, global0.b, global2.c, vec4<u32>(30566u, global2.d.x, 0u, 0u), vec4<bool>(global2.e.x, false, var_2.x, global3.x)), vec3<bool>(false, global3.x, var_2.x), false, global0.c.x, vec3<bool>(true, global3.x, global0.e.x)), Struct_4(var_2.x, u_input.d.x, Struct_3(Struct_1(u_input.c.x, 427f, global0.c, vec4<u32>(var_1.x, 679u, 15164u, 4294967295u), var_2), 4294967295u, global2.d, u_input.e), 4294967295u), Struct_2(Struct_1(1u, 757f, vec3<f32>(1790f, global2.b, -307f), vec4<u32>(4294967295u, global2.d.x, 1u, 4294967295u), global0.e), var_2.xwx, true, global0.b, global0.e.yzy)).c.a.e.yww), func_4(Struct_4(true, -35836i, Struct_3(Struct_1(u_input.c.x, global0.b, vec3<f32>(global0.b, 521f, global0.b), global0.d, vec4<bool>(global0.e.x, global2.e.x, global0.e.x, global2.e.x)), 5045u, global2.d, u_input.a), 0u), Struct_2(Struct_1(4294967295u, global2.c.x, global0.c, global0.d, global0.e), vec3<bool>(true, true, true), global2.e.x, -332f, vec3<bool>(global0.e.x, global3.x, true)), func_4(Struct_4(false, 50282i, Struct_3(Struct_1(0u, global0.c.x, vec3<f32>(619f, -1086f, -1271f), vec4<u32>(global0.a, 1u, global2.a, 4294967295u), vec4<bool>(global2.e.x, global2.e.x, global3.x, global3.x)), 427u, global2.d, u_input.e), 4294967295u), Struct_2(Struct_1(4294967295u, global2.b, global2.c, global2.d, vec4<bool>(true, true, false, false)), vec3<bool>(global2.e.x, global0.e.x, global2.e.x), global0.e.x, global0.c.x, vec3<bool>(global0.e.x, var_2.x, false)), Struct_4(global0.e.x, u_input.e, Struct_3(Struct_1(global2.a, 118f, global0.c, vec4<u32>(u_input.c.x, 1u, global2.a, global0.a), vec4<bool>(var_2.x, global2.e.x, global0.e.x, false)), 7475u, vec4<u32>(40502u, u_input.c.x, var_1.x, 5180u), u_input.a), 70297u), Struct_2(Struct_1(var_1.x, 1119f, vec3<f32>(1373f, 994f, global0.b), vec4<u32>(global2.a, global2.d.x, global0.a, global0.d.x), vec4<bool>(global2.e.x, false, global2.e.x, global3.x)), global0.e.wzw, var_2.x, global2.c.x, global0.e.xzx)), Struct_2(Struct_1(0u, global2.c.x, global2.c, global0.d, var_2), vec3<bool>(true, true, global2.e.x), true, -689f, global3.wxz)), Struct_2(Struct_1(u_input.c.x, global0.b, global0.c, vec4<u32>(global0.a, 4294967295u, 98360u, var_1.x), var_2), global2.e.xzw, !var_2.x, _wgslsmith_f_op_f32(-global2.b), !global2.e.xxx)).c, firstLeadingBit(~(~4181u))), Struct_2(Struct_1(var_1.x, global0.c.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-747f, global0.c.x, global2.c.x) + _wgslsmith_f_op_vec3_f32(floor(global2.c))), _wgslsmith_sub_vec4_u32(global0.d, abs(vec4<u32>(global0.d.x, global2.d.x, 49574u, global0.d.x))), !(!vec4<bool>(global2.e.x, false, false, true))), select(vec3<bool>(true, false, global0.b <= 1792f), var_2.zyx, select(vec3<bool>(true, global3.x, true), select(vec3<bool>(global0.e.x, global2.e.x, global2.e.x), global2.e.ywx, global0.e.x), global3.x)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-224f * _wgslsmith_f_op_f32(round(760f))) - -367f), !func_4(func_4(Struct_4(var_2.x, u_input.e, Struct_3(Struct_1(global2.a, 1401f, vec3<f32>(-1032f, 260f, 258f), global2.d, global0.e), u_input.c.x, vec4<u32>(1u, global0.d.x, 45904u, u_input.c.x), 38062i), 0u), Struct_2(Struct_1(95346u, global0.b, vec3<f32>(107f, global0.c.x, 360f), vec4<u32>(global2.a, global0.a, global0.a, 18704u), vec4<bool>(global0.e.x, true, var_2.x, global2.e.x)), var_2.yxx, global0.e.x, global2.c.x, global0.e.yxw), Struct_4(global3.x, u_input.e, Struct_3(Struct_1(var_1.x, global2.b, global0.c, vec4<u32>(16784u, global2.d.x, 4294967295u, global2.d.x), global2.e), var_1.x, global2.d, u_input.b.x), 1u), Struct_2(Struct_1(global2.d.x, 583f, vec3<f32>(-1092f, 1227f, global2.b), global2.d, global0.e), vec3<bool>(true, true, false), global2.e.x, -1407f, vec3<bool>(global2.e.x, true, true))), Struct_2(Struct_1(54835u, global0.b, vec3<f32>(-1850f, 1000f, global2.b), vec4<u32>(28587u, global0.a, 4168u, 1u), vec4<bool>(false, global2.e.x, global0.e.x, true)), global0.e.xzy, true, 1412f, var_2.wwy), Struct_4(false, u_input.a, Struct_3(Struct_1(var_1.x, 864f, vec3<f32>(global0.b, 355f, 1209f), vec4<u32>(4294967295u, u_input.c.x, var_1.x, 46644u), vec4<bool>(global2.e.x, false, global0.e.x, false)), var_1.x, global2.d, 1443i), 1u), Struct_2(Struct_1(22053u, global2.b, global2.c, global0.d, var_2), vec3<bool>(global0.e.x, true, global2.e.x), true, -758f, global3.yyw)).c.a.e.wxx), Struct_4(global0.b == 869f, -1i, func_4(func_4(Struct_4(true, u_input.e, Struct_3(Struct_1(58643u, global2.b, vec3<f32>(global0.b, global2.c.x, global0.c.x), vec4<u32>(8345u, 4294967295u, global2.a, global2.a), vec4<bool>(global2.e.x, global2.e.x, true, false)), 18404u, global0.d, u_input.d.x), u_input.c.x), Struct_2(Struct_1(31561u, global2.b, global2.c, global2.d, global0.e), global3.yxx, false, -977f, vec3<bool>(true, global0.e.x, false)), Struct_4(var_2.x, 72688i, Struct_3(Struct_1(4294967295u, -1554f, vec3<f32>(-1274f, global2.b, -1080f), vec4<u32>(1u, global2.d.x, global0.d.x, 35557u), global0.e), u_input.c.x, global0.d, u_input.a), 0u), Struct_2(Struct_1(1u, -659f, global0.c, global0.d, var_2), global2.e.wxz, global3.x, 898f, vec3<bool>(false, global2.e.x, true))), Struct_2(func_2(), !vec3<bool>(true, false, var_2.x), true, _wgslsmith_f_op_f32(1269f * -1000f), vec3<bool>(global0.e.x, var_2.x, global0.e.x)), func_4(func_4(Struct_4(false, u_input.d.x, Struct_3(Struct_1(4294967295u, -601f, global0.c, vec4<u32>(2959u, u_input.c.x, 0u, global0.a), vec4<bool>(global0.e.x, global2.e.x, false, true)), 1u, global0.d, u_input.e), 21199u), Struct_2(Struct_1(u_input.c.x, global2.c.x, global2.c, global0.d, global2.e), vec3<bool>(var_2.x, var_2.x, var_2.x), var_2.x, global0.c.x, var_2.xxy), Struct_4(false, 36906i, Struct_3(Struct_1(var_1.x, global2.b, vec3<f32>(-122f, -113f, -1922f), global0.d, var_2), global2.d.x, global2.d, -21261i), 1u), Struct_2(Struct_1(1u, 2027f, global2.c, vec4<u32>(1u, 1u, 26111u, global2.a), vec4<bool>(false, false, global2.e.x, true)), global2.e.yyx, global3.x, 137f, vec3<bool>(true, false, true))), Struct_2(Struct_1(36791u, global2.c.x, vec3<f32>(global0.b, global0.b, -1391f), global0.d, vec4<bool>(global3.x, global0.e.x, var_2.x, global2.e.x)), vec3<bool>(global0.e.x, global3.x, true), true, 1401f, var_2.ywz), func_4(Struct_4(global0.e.x, -28801i, Struct_3(Struct_1(15595u, global2.c.x, global0.c, global2.d, vec4<bool>(false, true, true, false)), 79594u, vec4<u32>(23426u, 0u, global0.d.x, global2.a), u_input.d.x), u_input.c.x), Struct_2(Struct_1(15781u, -1290f, global2.c, vec4<u32>(var_1.x, global2.a, 0u, 16570u), vec4<bool>(false, global0.e.x, global2.e.x, false)), vec3<bool>(global0.e.x, global2.e.x, global3.x), false, global2.c.x, vec3<bool>(true, false, true)), Struct_4(false, 0i, Struct_3(Struct_1(global2.a, global0.b, global2.c, global0.d, global2.e), 0u, vec4<u32>(33470u, var_1.x, u_input.c.x, 0u), u_input.a), global0.a), Struct_2(Struct_1(1u, global0.c.x, vec3<f32>(global0.b, global2.b, 113f), vec4<u32>(52398u, 0u, 17668u, u_input.c.x), vec4<bool>(true, var_2.x, true, global0.e.x)), vec3<bool>(global2.e.x, false, false), global3.x, -299f, vec3<bool>(false, false, true))), Struct_2(Struct_1(var_1.x, 1070f, global0.c, vec4<u32>(8730u, global0.d.x, global0.a, global0.a), vec4<bool>(var_2.x, global0.e.x, false, global2.e.x)), vec3<bool>(false, false, global0.e.x), true, global2.b, vec3<bool>(false, var_2.x, global0.e.x))), Struct_2(Struct_1(global0.a, -1489f, global0.c, vec4<u32>(44932u, 1u, 0u, var_1.x), vec4<bool>(true, true, global3.x, true)), func_2().e.xxz, !global2.e.x, _wgslsmith_f_op_f32(-1000f * global2.c.x), var_2.zwx)).c, ~38676u), Struct_2(func_2(), global3.zyw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_f_op_f32(exp2(global2.c.x))) == _wgslsmith_f_op_f32(-global2.c.x), global0.b, !vec3<bool>(any(vec3<bool>(true, global3.x, global0.e.x)), false && global0.e.x, true))).c.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(global2.d.zyw, select(u_input.c, vec3<u32>(~u_input.c.x, 31385u, 0u), !(var_2.x && false))), 1u, _wgslsmith_f_op_f32(f32(-1f) * -463f), _wgslsmith_sub_vec4_u32(func_2().d, global0.d), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(1038f - _wgslsmith_f_op_f32(601f - global2.b))))));
}

