struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1 = Struct_1(1000f, false);

var<private> global2: array<Struct_2, 22>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    let var_0 = arg_0.d;
    let var_1 = Struct_4(arg_0);
    var var_2 = global1.b;
    global0 = vec4<bool>(var_1.a.d.a.b, arg_1.a.b, true, reverseBits(arg_0.d.c.x) >= (max(arg_1.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(3746u, arg_0.d.b.x, var_0.c.x, 0u), vec4<u32>(0u, 1u, 0u, var_0.b.x))) & ~43677u));
    var_2 = select(!(!any(select(global0.yzx, global0.zxy, vec3<bool>(var_0.a.b, var_0.a.b, false)))), true, (_wgslsmith_mod_i32(var_1.a.c.x, abs(8910i)) & var_1.a.c.x) <= (u_input.a << (firstTrailingBit(2414u) % 32u)));
    return all(select(select(!select(global0.zzx, vec3<bool>(global0.x, global0.x, false), var_0.a.b), !vec3<bool>(arg_0.a.b, true, true), !global0.wxz), !select(!global0.xwy, global0.zwx, select(vec3<bool>(arg_0.d.a.b, false, false), vec3<bool>(false, false, var_1.a.a.b), false)), var_0.a.b));
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(212f - global1.a) - _wgslsmith_f_op_f32(-global1.a)), any(select(vec4<bool>(global0.x, false, true, global1.b), vec4<bool>(global0.x, global0.x, global1.b, global1.b), true))), Struct_1(211f, func_3(Struct_3(Struct_1(global1.a, false), Struct_1(global1.a, true), vec4<i32>(1i, u_input.a, u_input.a, -1i), Struct_2(Struct_1(global1.a, global0.x), vec3<u32>(1u, 71519u, 4294967295u), vec3<u32>(1u, 0u, 24027u)), vec2<f32>(1214f, global1.a)), Struct_2(Struct_1(global1.a, false), vec3<u32>(0u, 4294967295u, 6406u), vec3<u32>(23673u, 0u, 20133u)), Struct_1(1286f, false))), vec4<i32>(-1i) * -(vec4<i32>(u_input.a, u_input.a, arg_0, arg_0) & vec4<i32>(arg_0, arg_0, 16189i, u_input.a)), Struct_2(Struct_1(_wgslsmith_f_op_f32(round(global1.a)), any(global0.wwy)), vec3<u32>(1u, ~29344u, ~0u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_div_vec2_f32(vec2<f32>(737f, _wgslsmith_f_op_f32(global1.a - -1050f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.a, 851f))))))));
    let var_1 = true;
    global1 = var_0.a.d.a;
    global1 = var_0.a.a;
    global0 = !vec4<bool>(false, !(!all(global0.xyw)), var_1, 78334u < ~(var_0.a.d.c.x << (var_0.a.d.b.x % 32u)));
    return var_0.a.d.b.x;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: u32, arg_3: vec4<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(26573u, _wgslsmith_clamp_u32(arg_1, func_2(-u_input.a), 0u), arg_2, arg_2), ~abs(min(vec4<u32>(4294967295u, arg_1, 38367u, 40985u), ~vec4<u32>(arg_2, 12438u, arg_1, arg_2))));
    var var_1 = var_0.zyy;
    var var_2 = true;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(819f * _wgslsmith_f_op_f32(f32(-1f) * -1140f)))), global1.b);
    global2 = array<Struct_2, 22>();
    return Struct_4(Struct_3(var_3, Struct_1(arg_0, !global0.x), _wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a) | vec4<i32>(u_input.a, 2147483647i, u_input.a, -1i), countOneBits(vec4<i32>(u_input.a, 5580i, 7187i, u_input.a)), true), firstLeadingBit(reverseBits(vec4<i32>(u_input.a, u_input.a, -19124i, -72860i)))), global2[_wgslsmith_index_u32(4294967295u ^ _wgslsmith_mult_u32(abs(arg_1), var_1.x), 22u)], arg_3.zw));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: f32) -> Struct_4 {
    global1 = Struct_1(-1136f, !func_1(_wgslsmith_f_op_f32(f32(-1f) * -1619f), 29419u, arg_1.a.d.c.x >> (_wgslsmith_dot_vec3_u32(arg_1.a.d.b, arg_1.a.d.b) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(872f, 611f, -1176f, -961f), vec4<f32>(-1000f, 617f, -355f, 1021f), global1.b)))).a.d.a.b);
    var var_0 = arg_1.a.d.c;
    global0 = !(!vec4<bool>(true, true, true, arg_0 <= -1273f));
    let var_1 = !global0.xyx;
    global1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(trunc(1182f))) - -674f), 0u, arg_1.a.d.c.x ^ arg_1.a.d.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, 1520f, arg_0, 513f), vec4<f32>(-751f, -125f, arg_1.a.d.a.a, arg_2), vec4<bool>(true, true, false, false)))))) + vec4<f32>(arg_0, _wgslsmith_f_op_f32(489f + _wgslsmith_div_f32(arg_1.a.a.a, arg_0)), _wgslsmith_f_op_f32(select(arg_2, -1277f, !global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2659f))))).a.b;
    return Struct_4(arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(select(~(~(~47651u)), 1u, !(global0.x || false) | (!global0.x && true)) >> (max(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 50732u), vec2<u32>(25603u, 47434u))) % 32u), 22u)];
    var var_1 = func_4(global1.a, func_1(-899f, 9140u, _wgslsmith_add_u32(firstTrailingBit(countOneBits(var_0.b.x)), firstTrailingBit(~0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, 1045f, global1.a, 1519f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-200f, 2148f, -1610f, 884f)), vec4<f32>(var_0.a.a, var_0.a.a, 209f, var_0.a.a)))), var_0.a.a);
    var var_2 = func_4(global1.a, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2082f - _wgslsmith_f_op_f32(round(646f))) - -1195f), var_1.a.d.c.x, ~(~_wgslsmith_mod_u32(var_0.c.x, 40114u)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a.d.a.a, -852f, -786f, var_1.a.e.x), vec4<f32>(var_1.a.d.a.a, -939f, 1081f, var_1.a.a.a))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(935f, global1.a, 1571f, 1115f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(-116f)), _wgslsmith_f_op_f32(1000f - -507f), -323f, var_1.a.d.a.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(func_1(929f, 75676u, var_1.a.d.b.x, vec4<f32>(var_0.a.a, var_1.a.a.a, -379f, var_0.a.a)).a.a.a, _wgslsmith_f_op_f32(f32(-1f) * -1833f)))));
    global1 = Struct_1(func_1(var_2.a.a.a, 1u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.a.d.c.x, var_2.a.d.c.x), ~vec2<u32>(var_0.b.x, 0u)), vec2<u32>(max(0u, 4294967295u), var_1.a.d.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-570f, _wgslsmith_div_f32(-1083f, -140f), _wgslsmith_f_op_f32(-var_2.a.a.a), _wgslsmith_f_op_f32(-global1.a)) - vec4<f32>(_wgslsmith_f_op_f32(round(var_0.a.a)), _wgslsmith_f_op_f32(max(-579f, var_1.a.b.a)), _wgslsmith_div_f32(1133f, 433f), _wgslsmith_f_op_f32(select(-1743f, var_0.a.a, var_1.a.d.a.b))))).a.b.a, true);
    var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.a.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a.a) - -2464f)), _wgslsmith_f_op_f32(floor(2445f))), func_4(var_0.a.a, Struct_4(var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-661f, Struct_4(Struct_3(var_0.a, var_0.a, vec4<i32>(var_2.a.c.x, -39557i, -1i, u_input.a), Struct_2(Struct_1(var_2.a.e.x, global1.b), vec3<u32>(var_2.a.d.b.x, var_0.b.x, 79137u), var_2.a.d.c), var_2.a.e)), 1000f).a.e.x * var_1.a.a.a))), var_2.a.d.a.a).a.d;
    var var_3 = true;
    var var_4 = !var_0.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(~vec4<u32>(0u, 12821u, var_2.a.d.c.x, 12681u), vec4<u32>(var_0.b.x, var_0.b.x, 4294967295u, 4294967295u), func_4(300f, Struct_4(Struct_3(Struct_1(854f, var_0.a.b), Struct_1(346f, global1.b), var_2.a.c, var_2.a.d, var_2.a.e)), var_0.a.a).a.a.b)));
}

