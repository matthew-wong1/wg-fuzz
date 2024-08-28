struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(Struct_1(54407u, vec4<i32>(-23751i, 1i, 0i, 1i), 1u, false), true), Struct_4(Struct_1(0u, vec4<i32>(-19981i, 3918i, 29844i, i32(-2147483648)), 6562u, false), true), Struct_4(Struct_1(1u, vec4<i32>(-66776i, 1i, 1i, 9575i), 1u, true), false), Struct_4(Struct_1(1u, vec4<i32>(11721i, -51844i, 58609i, i32(-2147483648)), 26635u, true), false), Struct_4(Struct_1(4294967295u, vec4<i32>(-897i, 5099i, 1i, 31015i), 0u, false), true), Struct_4(Struct_1(16334u, vec4<i32>(34276i, -46486i, -26620i, 2147483647i), 10012u, true), true), Struct_4(Struct_1(4294967295u, vec4<i32>(i32(-2147483648), 25971i, -1i, 2147483647i), 948u, false), false), Struct_4(Struct_1(4294967295u, vec4<i32>(22219i, -22051i, -59352i, -59285i), 346u, false), true), Struct_4(Struct_1(45802u, vec4<i32>(42179i, 0i, -9581i, 31673i), 47142u, true), false), Struct_4(Struct_1(4294967295u, vec4<i32>(1i, 12308i, -1i, -49555i), 1u, true), true), Struct_4(Struct_1(37230u, vec4<i32>(0i, 56152i, 1i, 0i), 8514u, true), true), Struct_4(Struct_1(4294967295u, vec4<i32>(46268i, 21445i, -21571i, 61499i), 91405u, true), false), Struct_4(Struct_1(3597u, vec4<i32>(-32123i, 1i, 1i, 2147483647i), 4294967295u, false), true), Struct_4(Struct_1(37605u, vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 4448i), 1u, true), true), Struct_4(Struct_1(4294967295u, vec4<i32>(-54966i, -33939i, 2147483647i, 4748i), 4294967295u, true), true), Struct_4(Struct_1(25880u, vec4<i32>(i32(-2147483648), -20520i, 6724i, 63974i), 45008u, true), true), Struct_4(Struct_1(0u, vec4<i32>(-22472i, -61287i, -24017i, 11458i), 40431u, true), true), Struct_4(Struct_1(0u, vec4<i32>(2147483647i, -12490i, -1i, -5704i), 360u, false), true), Struct_4(Struct_1(1u, vec4<i32>(-27909i, 37981i, 2147483647i, 62767i), 17415u, false), true), Struct_4(Struct_1(4294967295u, vec4<i32>(2147483647i, -1i, -1i, 66966i), 4294967295u, true), false), Struct_4(Struct_1(2089u, vec4<i32>(39327i, -4014i, 7301i, 1i), 11834u, true), false), Struct_4(Struct_1(4294967295u, vec4<i32>(11844i, -30272i, 2147483647i, 75366i), 1u, true), true), Struct_4(Struct_1(4543u, vec4<i32>(0i, -1i, 2147483647i, 25474i), 20740u, false), true));

var<private> global1: Struct_3 = Struct_3(Struct_1(50464u, vec4<i32>(0i, 11341i, -1i, 37493i), 40642u, false), vec4<u32>(48014u, 4294967295u, 30275u, 22082u), i32(-2147483648), vec3<f32>(-1635f, 898f, -1083f), vec3<f32>(-1390f, 288f, -1733f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> bool {
    global0 = array<Struct_4, 23>();
    global0 = array<Struct_4, 23>();
    var var_0 = select(vec2<bool>((true & all(vec3<bool>(global1.a.d, global1.a.d, global1.a.d))) | true, any(vec4<bool>(true, any(vec2<bool>(global1.a.d, true)), any(vec4<bool>(global1.a.d, global1.a.d, true, global1.a.d)), select(global1.a.d, global1.a.d, global1.a.d)))), vec2<bool>(global1.a.d, true), all(vec4<bool>(!(u_input.b != global1.b.x), any(!vec3<bool>(false, global1.a.d, false)), global1.a.d, all(!vec3<bool>(global1.a.d, global1.a.d, false)))));
    global1 = Struct_3(global1.a, ~global1.b ^ vec4<u32>(0u, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), global1.b.wxw), select(0u << (global1.b.x % 32u), u_input.a, false)), global1.a.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global1.e))))));
    let var_1 = any(!vec3<bool>(all(select(vec2<bool>(global1.a.d, false), vec2<bool>(global1.a.d, false), var_0.x)), true, !(false && var_0.x)));
    return !var_0.x;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global0 = array<Struct_4, 23>();
    var var_0 = vec3<u32>(_wgslsmith_add_u32(u_input.a, ~global1.a.a), global1.a.a << (abs(~u_input.a) % 32u), 50988u);
    global0 = array<Struct_4, 23>();
    var var_1 = Struct_4(global1.a, !func_3(_wgslsmith_sub_i32(global1.a.b.x, 0i)) == global1.a.d);
    let var_2 = ~vec4<u32>(min(21158u, firstTrailingBit(u_input.a) >> (0u % 32u)), var_0.x, var_1.a.a, global1.b.x);
    return Struct_1(_wgslsmith_clamp_u32(12293u, _wgslsmith_add_u32(~reverseBits(0u), var_2.x), u_input.b), var_1.a.b, abs(global1.b.x) & ~0u, (any(select(vec4<bool>(true, var_1.a.d, var_1.a.d, global1.a.d), vec4<bool>(true, false, false, var_1.b), vec4<bool>(false, false, true, false))) && false) | false);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<u32>) -> Struct_4 {
    global0 = array<Struct_4, 23>();
    let var_0 = global0[_wgslsmith_index_u32(~arg_2.x, 23u)];
    let var_1 = Struct_4(Struct_1(arg_0.c, var_0.a.b, 0u, !func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.x, global1.d.x) - vec2<f32>(507f, 1013f))).d), any(select(vec4<bool>(true, 22698u > arg_0.a, true, false), vec4<bool>(true, true, !var_0.a.d, 800f <= global1.e.x), true)));
    let var_2 = Struct_1(~arg_2.x, -(vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(arg_0.b.x, 0i, 2147483647i, 1i))), ~4294967295u, all(!vec4<bool>(global1.d.x == global1.d.x, !arg_0.d, all(vec3<bool>(true, var_0.b, true)), false)));
    var var_3 = Struct_4(func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) - global1.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.e.x, global1.d.x, true))))), arg_1.x);
    return Struct_4(var_3.a, false);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: Struct_4) -> u32 {
    let var_0 = arg_1.xyy | -global1.a.b.wyx;
    var var_1 = global0[_wgslsmith_index_u32(~(~abs(19438u << (arg_3.a.a % 32u))), 23u)];
    global0 = array<Struct_4, 23>();
    var_1 = func_4(func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -1762f) + 1000f), arg_0.x)), !select(select(select(vec4<bool>(false, false, global1.a.d, false), vec4<bool>(global1.a.d, false, global1.a.d, var_1.b), true), select(vec4<bool>(arg_3.a.d, var_1.b, false, false), vec4<bool>(arg_3.b, var_1.a.d, true, false), true), select(true, true, false)), vec4<bool>(false, !global1.a.d, true, arg_3.b), vec4<bool>(false, 1u < arg_3.a.c, all(vec3<bool>(false, global1.a.d, arg_3.a.d)), arg_3.a.d | true)), vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~(global1.b.zwz ^ vec3<u32>(arg_2.x, 10324u, u_input.a)), global1.b.yxy), u_input.a, 1u));
    global0 = array<Struct_4, 23>();
    return abs((var_1.a.a ^ 1u) | 1u);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = global1.c;
    global0 = array<Struct_4, 23>();
    var var_1 = !(!func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e.x, global1.d.x) * vec2<f32>(global1.e.x, global1.d.x)), global1.e.yy, global1.a.d))).d);
    let var_2 = _wgslsmith_f_op_f32(min(global1.d.x, _wgslsmith_f_op_f32(round(global1.e.x))));
    let var_3 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global1.d.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.e.yx + vec2<f32>(-1063f, var_2)))))));
    return Struct_3(Struct_1(global1.a.a, -select(global1.a.b << (vec4<u32>(78922u, 2954u, arg_2.x, 41727u) % vec4<u32>(32u)), var_3.b, true), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.b.x, 74950u, arg_2.x), abs(global1.b))), true), ~vec4<u32>(62686u << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, global1.b.x, 0u), global1.b.zww) % 32u), ~arg_2.x, _wgslsmith_add_u32(select(29218u, arg_2.x, false), abs(0u)), ~_wgslsmith_add_u32(var_3.c, arg_2.x)), global1.a.b.x, global1.d, _wgslsmith_f_op_vec3_f32(-global1.e));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 23>();
    global0 = array<Struct_4, 23>();
    global0 = array<Struct_4, 23>();
    global1 = Struct_3(global1.a, ~global1.b, -2147483647i, global1.d, global1.d);
    global1 = func_5(abs(-64100i | global1.c), global1.c ^ -8147i, vec4<u32>(_wgslsmith_sub_u32(func_1(vec4<f32>(549f, 760f, -414f, global1.d.x), global1.a.b, vec3<u32>(1u, u_input.a, 0u), global0[_wgslsmith_index_u32(global1.a.c, 23u)]) & reverseBits(global1.a.c), 16738u), _wgslsmith_add_u32(global1.b.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(40906u, u_input.a, 4294967295u), vec3<u32>(u_input.b, u_input.a, global1.b.x))), ~(~30786u), u_input.b));
    global0 = array<Struct_4, 23>();
    let var_0 = ~(~global1.a.b.zw);
    let var_1 = !func_4(func_5(-23823i, firstLeadingBit(global1.c), ~abs(vec4<u32>(global1.a.c, 77930u, 31351u, u_input.b))).a, !select(!vec4<bool>(global1.a.d, global1.a.d, global1.a.d, global1.a.d), select(vec4<bool>(true, true, global1.a.d, global1.a.d), vec4<bool>(global1.a.d, true, global1.a.d, false), global1.a.d), select(vec4<bool>(global1.a.d, true, global1.a.d, global1.a.d), vec4<bool>(global1.a.d, false, true, global1.a.d), false)), _wgslsmith_mult_vec4_u32(~reverseBits(global1.b), ~_wgslsmith_div_vec4_u32(global1.b, global1.b))).b;
    let var_2 = ~(3642u ^ func_4(global1.a, select(!vec4<bool>(var_1, var_1, global1.a.d, global1.a.d), !vec4<bool>(false, global1.a.d, false, global1.a.d), vec4<bool>(false, true, var_1, false)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, global1.a.a, u_input.a, 52095u), global1.b) & global1.b).a.c);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(global1.a.b.zzx ^ global1.a.b.wwx, vec3<i32>(-2147483647i, var_0.x, global1.a.b.x)), func_2(_wgslsmith_f_op_vec2_f32(exp2(global1.e.yy))).b.xww, ~_wgslsmith_sub_vec3_i32(global1.a.b.wxx, global1.a.b.ywx)));
}

