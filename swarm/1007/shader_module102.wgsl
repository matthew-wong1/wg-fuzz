struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(-1i, -12858i, 1i, 9933i), vec4<i32>(-51311i, -1i, 26882i, 12856i), vec4<i32>(-19874i, 0i, 0i, 1i), vec4<i32>(1i, 0i, 12715i, 2147483647i), vec4<i32>(0i, 1i, -27081i, 0i), vec4<i32>(68487i, 0i, i32(-2147483648), 0i), vec4<i32>(4903i, 2147483647i, 21540i, 0i), vec4<i32>(32974i, 1i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), 14078i, -55665i, -18624i), vec4<i32>(26431i, 29478i, -1i, -1i), vec4<i32>(2147483647i, i32(-2147483648), -31308i, -48881i), vec4<i32>(43770i, -30515i, 0i, 23868i), vec4<i32>(i32(-2147483648), 26479i, 0i, 4929i), vec4<i32>(15981i, 0i, 1i, i32(-2147483648)), vec4<i32>(7749i, i32(-2147483648), 2147483647i, 20750i), vec4<i32>(2147483647i, -23183i, -59866i, 35614i), vec4<i32>(1i, 11230i, 0i, 1i), vec4<i32>(-34860i, 37354i, 24153i, 4145i), vec4<i32>(i32(-2147483648), 14957i, 22731i, -52439i), vec4<i32>(i32(-2147483648), -16190i, 2147483647i, 21612i), vec4<i32>(1i, 1i, -4859i, i32(-2147483648)), vec4<i32>(8749i, 0i, -22853i, 39175i), vec4<i32>(-8972i, 21218i, 3683i, 2147483647i), vec4<i32>(-1i, -1i, 24299i, -67337i), vec4<i32>(i32(-2147483648), 0i, -1i, 35866i), vec4<i32>(2147483647i, 27265i, 1i, 32302i));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec3<f32>(799f, 919f, -1510f), 1u), vec2<u32>(4294967295u, 4294967295u), vec4<f32>(147f, -336f, -1613f, 488f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> Struct_1 {
    global2 = Struct_2(Struct_1(abs(vec2<u32>(1u, 0u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(arg_0.b)), arg_0.b, vec3<bool>(true, arg_0.b.x == arg_0.b.x, all(vec3<bool>(arg_1, false, true))))), u_input.a), vec2<u32>(arg_2, ~arg_2) >> ((~(global2.a.a & arg_0.a) | abs(vec2<u32>(4294967295u, 41804u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(448f, arg_0.b.x, arg_0.b.x, arg_0.b.x)));
    var var_0 = Struct_2(global2.a, ~countOneBits(arg_0.a), global2.c);
    global1 = array<vec4<i32>, 26>();
    let var_1 = 0u == ~_wgslsmith_add_u32(~arg_0.a.x, _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a, 4294967295u, var_0.b.x), vec3<u32>(arg_2, arg_0.a.x, arg_0.c)), vec3<u32>(var_0.b.x, 1u, 0u) ^ vec3<u32>(arg_2, 12242u, var_0.a.c)));
    return arg_0;
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    global2 = arg_3;
    global0 = 1u;
    global0 = ~arg_3.a.a.x;
    global2 = arg_3;
    return Struct_2(func_2(arg_3.a, true | !arg_2, func_2(Struct_1(vec2<u32>(1u, arg_0.x), global2.a.b, u_input.a), true, ~4294967295u).c >> (select(17523u, 26102u, any(vec2<bool>(true, false))) % 32u)), vec2<u32>(~arg_1, 4294967295u), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c.x, -1297f, arg_3.a.b.x, func_2(arg_3.a, arg_2, reverseBits(34786u)).b.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.b.x, 299f, _wgslsmith_f_op_f32(arg_3.c.x * global2.c.x), _wgslsmith_f_op_f32(sign(arg_3.a.b.x))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = func_2(Struct_1(arg_0.a.a, _wgslsmith_div_vec3_f32(vec3<f32>(func_2(arg_0.a, true, global2.b.x).b.x, _wgslsmith_f_op_f32(-569f * arg_0.a.b.x), _wgslsmith_f_op_f32(select(arg_0.a.b.x, global2.c.x, false))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.b), vec3<f32>(arg_1.b.x, 2474f, -276f), true))), abs(~u_input.a << (53052u % 32u))), true, ~(~_wgslsmith_sub_u32(global2.a.c, u_input.a))).c;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1329f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a.b.x)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, arg_0.a.b.x)) * arg_0.a.b.x);
    global2 = Struct_2(func_3(vec4<u32>(arg_0.a.c, _wgslsmith_sub_u32(arg_0.b.x, 38635u), ~22061u, 103033u), abs(min(arg_1.a.x >> (arg_0.b.x % 32u), func_2(Struct_1(vec2<u32>(0u, 1u), arg_0.c.xxx, 112366u), true, u_input.a).c)), true, func_3(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b.x, 80124u, u_input.a, arg_0.a.a.x), vec4<u32>(arg_0.a.a.x, global2.a.c, 62887u, arg_0.b.x)), ~4294967295u, true, Struct_2(Struct_1(vec2<u32>(1u, var_0), vec3<f32>(-841f, -296f, arg_1.b.x), 57286u), vec2<u32>(37787u, 66375u), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.c.x, 1470f, 961f, arg_0.a.b.x)))))).a, global2.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(func_2(arg_1, arg_0.a.b.x == 123f, 0u).b.x, _wgslsmith_f_op_f32(abs(912f)), var_1, 1820f) - arg_0.c));
    let var_3 = Struct_1(global2.a.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_1.b + _wgslsmith_f_op_vec3_f32(floor(arg_1.b))), vec3<f32>(-1331f, _wgslsmith_f_op_f32(-var_2), var_1))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.b.x, 141f), _wgslsmith_f_op_f32(floor(arg_1.b.x)))), -1131f, var_2)), global2.a.c);
    return vec3<i32>(i32(-1i) * -14432i, -1i, i32(-1i) * -3111i);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: u32, arg_3: i32) -> Struct_1 {
    var var_0 = ~func_4(func_3(~vec4<u32>(global2.b.x, global2.a.c, 0u, global2.b.x), reverseBits(max(24717u, 0u)), all(arg_0.zzx), Struct_2(func_2(global2.a, false, 82384u), abs(global2.a.a), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.a.b.x, -358f, -1000f, global2.c.x), vec4<f32>(global2.c.x, global2.c.x, -751f, -376f))))), func_3(~vec4<u32>(arg_2, u_input.a, 0u, 28750u), ~(~u_input.a), true, Struct_2(func_3(vec4<u32>(33714u, u_input.a, u_input.a, 3962u), 4294967295u, arg_0.x, Struct_2(global2.a, global2.b, global2.c)).a, ~global2.a.a, global2.c)).a);
    var_0 = arg_1;
    var_0 = -arg_1;
    var var_1 = func_3(reverseBits(max(abs(vec4<u32>(global2.a.c, 31188u, 1u, 65043u)), ~vec4<u32>(arg_2, 33958u, arg_2, arg_2)) | vec4<u32>(23430u, u_input.a, 1u, 16115u)), ~(~(~4294967295u)) << (~arg_2 % 32u), any(!arg_0.zx), Struct_2(global2.a, _wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(global2.a.a, vec2<u32>(50988u, global2.b.x)), abs(func_3(vec4<u32>(global2.a.c, 24232u, u_input.a, 59117u), arg_2, false, Struct_2(global2.a, vec2<u32>(4294967295u, u_input.a), vec4<f32>(1021f, global2.c.x, 801f, global2.c.x))).a.a)), vec4<f32>(_wgslsmith_f_op_f32(-global2.a.b.x), 475f, _wgslsmith_f_op_f32(-802f - 1000f), global2.a.b.x)));
    let var_2 = select(select(vec3<bool>(true, !select(arg_0.x, arg_0.x, arg_0.x), arg_0.x), vec3<bool>(any(vec2<bool>(arg_0.x, arg_0.x)), u_input.a > var_1.b.x, false), vec3<bool>(_wgslsmith_f_op_f32(ceil(global2.a.b.x)) == _wgslsmith_f_op_f32(floor(133f)), true, select(select(arg_0.x, arg_0.x, arg_0.x), !arg_0.x, any(arg_0.wz)))), arg_0.xzz, !any(vec2<bool>(false, true)));
    return Struct_1(countOneBits(var_1.a.a), var_1.c.zwx, ~_wgslsmith_mod_u32(arg_2, abs(var_1.a.a.x)));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<bool>) -> bool {
    global0 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~(~1u), ~_wgslsmith_div_u32(_wgslsmith_div_u32(69882u, arg_1.b.x), ~global2.b.x)), 4294967295u, global2.a.c);
    var var_0 = arg_2.xy;
    var var_1 = !vec2<bool>(var_0.x, arg_2.x);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, func_5(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~20933u, 1u, global2.b.x), vec3<u32>(1u, countOneBits(global2.a.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.a.x, 0u, 1u), vec3<u32>(u_input.a, u_input.a, u_input.a)))), 26u)], Struct_2(func_1(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), vec3<i32>(u_input.b.x, 2147483647i, -7454i), u_input.a, ~u_input.b.x), vec2<u32>(global2.a.c | u_input.a, u_input.a), global2.c), vec4<bool>(true, true, true, true)));
    let var_1 = min(~1u & func_2(Struct_1(global2.a.a, vec3<f32>(global2.c.x, global2.c.x, 185f), 57563u), var_0.x, 4294967295u).c, ~u_input.a) >> (~select(u_input.a, 40355u, var_0.x) % 32u);
    var_0 = vec2<bool>(true, true);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-101f)), global2.a.b.x) * global2.c.x);
    global1 = array<vec4<i32>, 26>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, 887f));
    var_3 = vec2<f32>(global2.c.x, 569f);
    let var_4 = !vec2<bool>(var_0.x | (-33764i <= u_input.b.x), false);
    let var_5 = func_2(global2.a, var_0.x, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_2, func_4(func_3(select(vec4<u32>(1u, global2.b.x, global2.a.a.x, var_5.a.x) | vec4<u32>(52233u, 4294967295u, var_1, global2.a.a.x), ~vec4<u32>(71355u, 0u, var_1, 4294967295u), !var_4.x), 4294967295u, true & any(var_4), func_3(~vec4<u32>(global2.b.x, var_5.c, global2.a.a.x, u_input.a), 1u, false, Struct_2(global2.a, var_5.a, global2.c))), func_3(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.a.a.x, var_1, 50360u, var_5.a.x), vec4<u32>(31954u, u_input.a, global2.a.a.x, 4294967295u), vec4<u32>(u_input.a, 4294967295u, 1u, var_5.c)), 0u, true && var_0.x, func_3(vec4<u32>(1u, 4294967295u, 1u, u_input.a), global2.a.a.x, var_5.a.x > 4294967295u, Struct_2(Struct_1(var_5.a, vec3<f32>(183f, -1211f, -1057f), var_1), vec2<u32>(u_input.a, var_1), global2.c))).a).x, vec3<u32>(var_5.a.x, min(58081u | _wgslsmith_clamp_u32(u_input.a, var_5.c, 0u), u_input.a), 15110u), vec2<f32>(var_2, var_3.x));
}

