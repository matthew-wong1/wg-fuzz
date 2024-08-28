struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<i32>(0i, -571i, 4331i, 31072i), true, false, vec4<u32>(11034u, 8004u, 0u, 1u), vec2<bool>(true, false)), vec4<f32>(-1181f, -687f, 496f, 408f), vec4<bool>(true, true, true, true), Struct_1(vec4<i32>(53882i, 0i, -17952i, -28217i), true, true, vec4<u32>(1788u, 25729u, 3080u, 2366u), vec2<bool>(false, false)), Struct_1(vec4<i32>(-51832i, 15707i, -621i, -69759i), true, true, vec4<u32>(0u, 44174u, 15911u, 4294967295u), vec2<bool>(true, true)));

var<private> global2: bool;

var<private> global3: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(-475f, -927f, -1000f));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(global1.b.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(floor(-1317f))) - arg_0.b.zx))));
    global0 = true & arg_0.e.c;
    global3 = array<vec3<f32>, 1>();
    var var_1 = arg_0;
    global0 = true;
    return arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> vec3<bool> {
    global2 = abs(_wgslsmith_clamp_u32(abs(1u), 1u, u_input.d)) <= ~firstTrailingBit(16423u);
    let var_0 = global1.b.x;
    let var_1 = arg_2;
    var var_2 = var_1.d.d;
    let var_3 = select(vec4<bool>(any(var_1.c.xyx), arg_2.c.x, !(!any(var_1.e.e)), all(!vec2<bool>(global1.e.c, global1.e.b))), var_1.c, global1.c);
    return !arg_0.c.zxw;
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x * global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), !(global1.d.c && arg_2.d.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(arg_2, vec4<f32>(-569f, arg_2.b.x, global1.b.x, arg_3)).b.x))) * -1000f);
    global0 = all(!arg_2.c);
    let var_1 = global1.b.x;
    global0 = true;
    let var_2 = arg_2.e;
    return func_2(Struct_2(arg_2.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), 542f, 1604f, _wgslsmith_f_op_f32(-1000f - 476f)), func_2(arg_2, global1.b).c, func_2(arg_2, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global1.b)), _wgslsmith_div_vec4_f32(arg_2.b, arg_2.b))).d, func_2(Struct_2(func_2(Struct_2(arg_2.d, vec4<f32>(arg_2.b.x, 297f, -1827f, -343f), global1.c, global1.a, arg_2.a), vec4<f32>(arg_3, -1000f, 1490f, 1647f)).d, _wgslsmith_f_op_vec4_f32(ceil(global1.b)), vec4<bool>(var_2.e.x, false, global1.e.c, true), arg_2.d, arg_2.e), _wgslsmith_f_op_vec4_f32(abs(global1.b))).d), arg_2.b).e.d.x;
}

fn func_1() -> vec4<f32> {
    let var_0 = func_4(4941i, select(vec2<bool>(false, true), vec2<bool>(-842f >= global1.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 45048u), global1.a.d.yx) > 1u), any(func_3(func_2(Struct_2(Struct_1(vec4<i32>(69906i, -1i, 4345i, -1i), global1.e.b, true, global1.e.d, global1.a.e), vec4<f32>(-1293f, -2403f, global1.b.x, 866f), global1.c, global1.e, global1.e), vec4<f32>(-816f, global1.b.x, 471f, -334f)), Struct_1(vec4<i32>(75786i, 4558i, u_input.a, u_input.c.x), false, global1.d.e.x, vec4<u32>(global1.d.d.x, global1.a.d.x, u_input.d, 7513u), vec2<bool>(true, global1.a.c)), func_2(Struct_2(global1.d, global1.b, global1.c, global1.e, global1.a), vec4<f32>(global1.b.x, -1086f, -541f, 846f))))), func_2(func_2(func_2(Struct_2(Struct_1(global1.a.a, global1.c.x, global1.d.b, vec4<u32>(global1.a.d.x, 28555u, global1.a.d.x, u_input.b), vec2<bool>(global1.e.e.x, global1.e.b)), vec4<f32>(global1.b.x, -2340f, global1.b.x, 1000f), global1.c, Struct_1(vec4<i32>(18371i, global1.d.a.x, 0i, -9650i), false, global1.d.e.x, vec4<u32>(u_input.b, 4294967295u, global1.d.d.x, u_input.d), global1.a.e), Struct_1(u_input.c, global1.c.x, global1.c.x, vec4<u32>(0u, 144460u, 58241u, 271u), vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(-global1.b)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.b.x, -460f, 698f, 877f)))))), vec4<f32>(-899f, global1.b.x, global1.b.x, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(480f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b.x, global1.b.x))))));
    global1 = Struct_2(global1.d, _wgslsmith_f_op_vec4_f32(global1.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b))), global1.c, global1.e, func_2(Struct_2(Struct_1(global1.d.a >> (vec4<u32>(1u, 24514u, u_input.b, global1.e.d.x) % vec4<u32>(32u)), all(vec2<bool>(true, global1.c.x)), global1.b.x == -734f, vec4<u32>(var_0, 1u, var_0, global1.d.d.x), vec2<bool>(global1.e.e.x, global1.c.x)), global1.b, global1.c, global1.e, global1.d), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1181f)) - -484f), _wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(global1.b.x * -537f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(3353f, global1.b.x, true)))), func_2(Struct_2(global1.e, global1.b, global1.c, Struct_1(vec4<i32>(u_input.c.x, -48460i, global1.d.a.x, -671i), global1.a.c, global1.d.c, global1.a.d, global1.d.e), Struct_1(vec4<i32>(global1.a.a.x, 15865i, 15241i, 18848i), global1.c.x, true, global1.a.d, global1.c.zx)), _wgslsmith_f_op_vec4_f32(max(global1.b, global1.b))).b.x)).d);
    var var_1 = Struct_2(global1.d, global1.b, !vec4<bool>(global1.e.e.x, true, true, any(func_2(Struct_2(global1.d, global1.b, global1.c, Struct_1(vec4<i32>(u_input.c.x, u_input.a, u_input.a, global1.e.a.x), global1.c.x, global1.a.b, vec4<u32>(global1.d.d.x, var_0, var_0, var_0), vec2<bool>(global1.a.e.x, true)), Struct_1(u_input.c, global1.e.c, true, vec4<u32>(81759u, 56360u, 22033u, global1.a.d.x), vec2<bool>(global1.e.e.x, true))), vec4<f32>(-318f, 1715f, -277f, global1.b.x)).c.yzw)), Struct_1(vec4<i32>(-(~(-32776i)), _wgslsmith_clamp_i32(global1.e.a.x, u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(65647i, global1.d.a.x), vec2<i32>(global1.e.a.x, global1.a.a.x))), 11784i, 64440i), false, any(func_2(Struct_2(Struct_1(vec4<i32>(u_input.c.x, u_input.a, global1.a.a.x, 1i), global1.c.x, global1.d.e.x, vec4<u32>(50719u, var_0, 4294967295u, global1.a.d.x), global1.a.e), global1.b, vec4<bool>(global1.a.b, true, true, global1.d.c), global1.a, global1.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, -1556f, global1.b.x, 956f) - global1.b)).c), global1.d.d, vec2<bool>(global1.c.x, _wgslsmith_f_op_f32(round(232f)) != global1.b.x)), global1.d);
    var var_2 = global1.e.d;
    global0 = false;
    return vec4<f32>(_wgslsmith_f_op_f32(sign(func_2(func_2(func_2(Struct_2(Struct_1(vec4<i32>(60508i, var_1.e.a.x, var_1.e.a.x, global1.d.a.x), true, true, var_1.a.d, var_1.c.wx), var_1.b, global1.c, Struct_1(u_input.c, global1.e.b, global1.c.x, vec4<u32>(var_0, 4294967295u, 24089u, 0u), vec2<bool>(false, false)), global1.d), var_1.b), vec4<f32>(197f, -155f, -474f, 179f)), _wgslsmith_f_op_vec4_f32(round(global1.b))).b.x)), func_2(Struct_2(func_2(func_2(Struct_2(global1.e, vec4<f32>(-272f, var_1.b.x, -420f, global1.b.x), vec4<bool>(var_1.a.b, false, false, var_1.e.e.x), global1.a, Struct_1(global1.d.a, true, var_1.c.x, vec4<u32>(43057u, global1.a.d.x, 1u, 0u), vec2<bool>(true, false))), vec4<f32>(893f, 749f, -1000f, var_1.b.x)), _wgslsmith_f_op_vec4_f32(global1.b * global1.b)).d, vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), global1.b.x, _wgslsmith_div_f32(1472f, var_1.b.x), -1167f), vec4<bool>(all(var_1.c), all(var_1.c.xx), true, global1.c.x | global1.a.c), Struct_1(var_1.d.a, any(global1.c.zzy), any(var_1.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, u_input.d, var_2.x, var_0), global1.d.d, vec4<u32>(u_input.b, u_input.d, 52144u, 4294967295u)), vec2<bool>(true, false)), Struct_1(~u_input.c, true, all(var_1.c.wyx), vec4<u32>(u_input.d, u_input.b, 4294967295u, var_2.x) >> (vec4<u32>(var_1.d.d.x, 8145u, var_2.x, 0u) % vec4<u32>(32u)), global1.c.xz)), vec4<f32>(_wgslsmith_f_op_f32(-global1.b.x), var_1.b.x, global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x + 1055f)))).b.x, 915f, var_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_2(global1.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) * global1.b), vec4<bool>(~(~global1.d.d.x) < 1u, true, !any(!global1.c.wz), true & func_2(Struct_2(Struct_1(vec4<i32>(0i, u_input.c.x, -1i, u_input.c.x), global1.c.x, global1.d.e.x, vec4<u32>(u_input.d, global1.a.d.x, global1.d.d.x, 6767u), vec2<bool>(true, false)), global1.b, global1.c, global1.d, Struct_1(u_input.c, false, global1.e.e.x, vec4<u32>(0u, global1.d.d.x, global1.e.d.x, 1u), vec2<bool>(global1.d.e.x, global1.a.c))), _wgslsmith_f_op_vec4_f32(-global1.b)).e.c), Struct_1(vec4<i32>(global1.a.a.x, 0i, u_input.a, u_input.a), !global1.a.e.x, !(true & global1.d.c), vec4<u32>(7886u, global1.e.d.x, 1u, 42227u), vec2<bool>(true, true)), global1.a);
    var_0 = true;
    global0 = all(!global1.c);
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(13727u, 0i, _wgslsmith_f_op_f32(-1071f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b.x)))))), select(~countOneBits(select(global1.d.d.yz, vec2<u32>(80263u, u_input.d), false)), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(u_input.d, var_1.a.d.x)), vec2<u32>(~1u, 40891u), select(global1.e.d.xw, vec2<u32>(4294967295u, 0u), !var_1.d.e)), func_3(var_1, Struct_1(vec4<i32>(global1.e.a.x, u_input.c.x, var_1.a.a.x, -1i), true, false || global1.d.b, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 1u, u_input.b), var_1.a.d), vec2<bool>(true, global1.d.b)), func_2(func_2(Struct_2(Struct_1(var_1.e.a, global1.a.c, global1.a.e.x, var_1.a.d, var_1.e.e), vec4<f32>(global1.b.x, 1522f, 276f, global1.b.x), global1.c, Struct_1(vec4<i32>(u_input.c.x, global1.e.a.x, 17748i, u_input.c.x), true, true, vec4<u32>(global1.a.d.x, global1.d.d.x, u_input.d, var_1.a.d.x), var_1.e.e), var_1.d), var_1.b), _wgslsmith_f_op_vec4_f32(exp2(var_1.b)))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1598f + 1661f)));
}

