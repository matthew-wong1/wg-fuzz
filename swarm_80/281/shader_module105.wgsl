struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(Struct_3(Struct_2(vec3<i32>(36312i, 20800i, 39021i), vec2<u32>(15643u, 125978u), vec3<bool>(true, true, false)), false), -7028i), Struct_4(Struct_3(Struct_2(vec3<i32>(-25982i, 27565i, -1i), vec2<u32>(4294967295u, 4294967295u), vec3<bool>(false, false, false)), false), 38029i), Struct_4(Struct_3(Struct_2(vec3<i32>(12854i, 1i, 2147483647i), vec2<u32>(27292u, 1u), vec3<bool>(true, false, false)), true), 8777i), Struct_4(Struct_3(Struct_2(vec3<i32>(-26397i, 1i, 1162i), vec2<u32>(1988u, 35813u), vec3<bool>(false, false, false)), true), 75008i), Struct_4(Struct_3(Struct_2(vec3<i32>(6214i, 1i, -14070i), vec2<u32>(35232u, 37486u), vec3<bool>(true, false, true)), false), 29037i), Struct_4(Struct_3(Struct_2(vec3<i32>(57613i, 2147483647i, i32(-2147483648)), vec2<u32>(77786u, 4294967295u), vec3<bool>(false, false, true)), true), 3264i));

var<private> global1: array<Struct_1, 19>;

var<private> global2: vec3<f32> = vec3<f32>(-132f, -1915f, -691f);

var<private> global3: array<Struct_4, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = arg_0.a.a >> (_wgslsmith_sub_vec3_u32(u_input.c, u_input.c) % vec3<u32>(32u));
    global3 = array<Struct_4, 4>();
    let var_1 = Struct_3(Struct_2(_wgslsmith_add_vec3_i32(var_0, reverseBits(vec3<i32>(var_0.x, arg_0.a.a.x, var_0.x))) | _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0.a.a, var_0), var_0), ~(~(~arg_0.a.b)), select(arg_0.a.c, arg_0.a.c, false)), any(select(arg_1.yz, vec2<bool>(any(vec3<bool>(arg_0.a.c.x, arg_0.b, arg_0.b)), true), select(true, true, all(vec4<bool>(true, true, true, false))))));
    let var_2 = -878f;
    let var_3 = global0[_wgslsmith_index_u32(1u, 6u)];
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-353f, arg_2.a.x, 1677f, arg_2.a.x) + vec4<f32>(arg_2.a.x, var_2, arg_2.a.x, global2.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a.x, global2.x, 595f, var_2), vec4<f32>(-995f, global2.x, global2.x, var_2))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, arg_2.a.x, 831f, 1941f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 1210f, -545f, -137f) * vec4<f32>(-1000f, var_2, -1322f, global2.x))))));
}

fn func_4(arg_0: vec4<f32>) -> bool {
    global2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1642f)), _wgslsmith_f_op_f32(round(arg_0.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-145f - -1033f)) + arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, 1000f))))), -829f);
    var var_0 = ~vec4<u32>(max(0u, 1u), u_input.a, 1u, 14303u) >> (_wgslsmith_sub_vec4_u32(abs(vec4<u32>(0u, 0u, min(u_input.c.x, u_input.c.x), 31662u)), firstTrailingBit(~vec4<u32>(u_input.c.x, u_input.c.x, 48252u, 36181u))) % vec4<u32>(32u));
    let var_1 = select(vec2<bool>(!all(vec2<bool>(true, false)) == false, all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), true))), vec2<bool>(!(!any(vec4<bool>(false, true, false, true))), ~28882u > firstLeadingBit(~var_0.x)), !select(vec2<bool>(228f <= arg_0.x, select(true, false, true)), vec2<bool>(all(vec3<bool>(true, true, true)), true), true));
    let var_2 = Struct_4(Struct_3(Struct_2(select(~vec3<i32>(2147483647i, 51039i, -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(-13968i, -2798i, 0i), vec3<i32>(-2147483647i, 41090i, -11143i)), true), vec2<u32>(0u, u_input.c.x), vec3<bool>(true, var_1.x, var_1.x)), all(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), ~(-22706i));
    var var_3 = var_2.b;
    return var_2.a.a.c.x;
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: vec3<bool>, arg_3: u32) -> vec4<bool> {
    global1 = array<Struct_1, 19>();
    let var_0 = arg_0.a;
    var var_1 = Struct_2(_wgslsmith_sub_vec3_i32(var_0.a, var_0.a), abs(u_input.b), arg_0.a.c);
    global1 = array<Struct_1, 19>();
    let var_2 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(-875f, _wgslsmith_f_op_f32(abs(205f))), global2.yy));
    return !select(select(!(!vec4<bool>(var_0.c.x, true, arg_1, false)), select(select(vec4<bool>(var_1.c.x, true, arg_1, true), vec4<bool>(false, var_0.c.x, var_1.c.x, arg_0.b), true), vec4<bool>(false, true, false, false), !var_0.c.x), var_1.c.x), vec4<bool>(false, true, !var_0.c.x || var_0.c.x, arg_0.a.c.x), select(select(select(vec4<bool>(arg_0.b, var_1.c.x, false, arg_0.b), vec4<bool>(false, var_1.c.x, true, arg_2.x), vec4<bool>(arg_1, arg_0.b, false, arg_2.x)), !vec4<bool>(var_1.c.x, true, var_1.c.x, var_1.c.x), !vec4<bool>(var_0.c.x, true, false, arg_2.x)), !vec4<bool>(arg_2.x, arg_2.x, arg_0.b, var_0.c.x), vec4<bool>(true, any(vec3<bool>(arg_2.x, true, false)), false | var_1.c.x, !arg_1)));
}

fn func_2() -> Struct_1 {
    let var_0 = 4294967295u;
    var var_1 = func_5(Struct_3(Struct_2(abs(vec3<i32>(2147483647i, -2147483647i, 1i)), vec2<u32>(abs(49951u), ~u_input.b.x), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), !(_wgslsmith_f_op_f32(1142f + global2.x) <= 1276f)), any(select(vec4<bool>(any(vec3<bool>(false, true, true)), any(vec2<bool>(false, false)), any(vec2<bool>(true, true)), true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true), any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true))), vec3<bool>(func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_2(vec3<i32>(6070i, 3078i, 2147483647i), vec2<u32>(0u, var_0), vec3<bool>(true, false, false)), false), vec3<bool>(false, true, false), global1[_wgslsmith_index_u32(u_input.a, 19u)])), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, global2.x, global2.x, -1918f)))))), true, 14588u < var_0), min(9804u, select(21620u, var_0, true)) >> ((select(var_0, var_0, true) >> ((min(0u, 1u) | u_input.c.x) % 32u)) % 32u));
    let var_2 = _wgslsmith_f_op_f32(-global2.x);
    global1 = array<Struct_1, 19>();
    var var_3 = -1i;
    return global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(select(u_input.c >> (u_input.c % vec3<u32>(32u)), u_input.c, any(var_1.yx)), ~u_input.c) ^ 44221u, 19u)];
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = countOneBits(~arg_0.a.a);
    let var_1 = func_2();
    global0 = array<Struct_4, 6>();
    var var_2 = arg_0.a.a;
    let var_3 = arg_0;
    return arg_0.a;
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_3) -> bool {
    var var_0 = vec4<u32>(~(~_wgslsmith_mod_u32(84979u, abs(24843u))), arg_3.a.b.x, abs(func_1(arg_3, arg_1.b.x, global2.xx, Struct_1(vec2<f32>(598f, global2.x))).b.x), arg_1.b.x << (_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(76272u, 26504u), arg_1.b.x), ~(~arg_1.b.x)) % 32u));
    let var_1 = arg_3;
    global3 = array<Struct_4, 4>();
    let var_2 = Struct_3(Struct_2(arg_1.a << (vec3<u32>(firstLeadingBit(55680u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 29012u), u_input.c), min(59390u, var_1.a.b.x)) % vec3<u32>(32u)), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(4233u, 43082u), ~u_input.b)), select(vec3<bool>(all(arg_1.c), var_1.b, all(arg_3.a.c)), var_1.a.c, var_1.a.c)), any(!(!vec3<bool>(true, arg_1.c.x, var_1.a.c.x))) | (!(!var_1.b) | func_4(vec4<f32>(global2.x, global2.x, -1420f, 1771f))));
    var var_3 = arg_3.a;
    return func_4(vec4<f32>(_wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(-global2.x))), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * -775f), 608f)) | all(!(!arg_3.a.c.zz));
}

fn func_7(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    var var_0 = u_input.c.yz;
    global0 = array<Struct_4, 6>();
    var var_1 = global0[_wgslsmith_index_u32(0u & u_input.c.x, 6u)];
    global0 = array<Struct_4, 6>();
    var var_2 = !vec4<bool>((all(vec4<bool>(true, arg_0, arg_0, false)) & var_1.a.a.c.x) | arg_0, arg_0, !(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, var_0.x), vec3<u32>(48663u, var_1.a.a.b.x, var_0.x)) >= (1u & var_0.x)), true);
    return var_1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(-(~vec4<i32>(-1i, 0i, 29497i, 39879i))));
    global3 = array<Struct_4, 4>();
    global0 = array<Struct_4, 6>();
    let var_1 = func_7(!func_6(u_input.b.x, Struct_2(vec3<i32>(var_0.x, var_0.x, -17297i), vec2<u32>(1u, u_input.b.x) ^ vec2<u32>(26052u, 0u), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), ~select(var_0, vec4<i32>(var_0.x, var_0.x, 2147483647i, 1i), vec4<bool>(true, true, false, true)), Struct_3(func_1(Struct_3(Struct_2(vec3<i32>(var_0.x, -15917i, 5225i), u_input.b, vec3<bool>(false, true, false)), true), 45266u, vec2<f32>(1013f, global2.x), Struct_1(global2.xz)), true)), global1[_wgslsmith_index_u32(func_1(Struct_3(func_1(Struct_3(Struct_2(vec3<i32>(var_0.x, var_0.x, var_0.x), u_input.b, vec3<bool>(true, true, true)), false), max(u_input.b.x, 4294967295u), _wgslsmith_f_op_vec2_f32(ceil(global2.yx)), global1[_wgslsmith_index_u32(max(u_input.c.x, u_input.b.x), 19u)]), true), u_input.c.x, _wgslsmith_f_op_vec2_f32(global2.yz * global2.xz), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.x, -610f))) + func_2().a))).b.x, 19u)]);
    global3 = array<Struct_4, 4>();
    let var_2 = _wgslsmith_f_op_vec4_f32(func_3(Struct_3(func_7(var_1.c.x, Struct_1(global2.yy)), var_1.c.x), var_1.c, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-592f, global2.x), vec2<f32>(global2.x, global2.x))), vec2<f32>(-1226f, 554f))))))).x;
    var var_3 = false;
    global3 = array<Struct_4, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2, -1303f, u_input.b);
}

