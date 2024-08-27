struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<f32>(367f, -440f), vec2<bool>(true, true), false), Struct_1(vec2<f32>(748f, 988f), vec2<bool>(true, true), true));

var<private> global3: i32 = 4699i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>) -> vec4<u32> {
    global0 = Struct_2(Struct_1(global2.b.a, vec2<bool>(any(select(vec4<bool>(false, global2.a.c, global0.a.b.x, global2.b.b.x), vec4<bool>(global2.b.b.x, global0.b.b.x, false, global2.b.c), vec4<bool>(global0.a.b.x, global2.b.b.x, global2.b.b.x, global2.b.b.x))), true), true), global2.a);
    global1 = arg_0.x;
    global1 = u_input.d.x;
    var var_0 = Struct_2(global2.b, global2.a);
    var var_1 = ~u_input.b;
    return vec4<u32>(~(~4294967295u), u_input.b.x, select(min(u_input.b.x, _wgslsmith_add_u32(1u, abs(11274u))), _wgslsmith_add_u32(38040u, u_input.b.x), true), min(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_mult_vec4_u32(u_input.e, vec4<u32>(64415u, 62921u, var_1.x, u_input.e.x))), _wgslsmith_clamp_vec4_u32(~u_input.e, u_input.e, ~vec4<u32>(u_input.b.x, 1u, var_1.x, 8321u))), u_input.e.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2) -> bool {
    var var_0 = vec3<i32>(-53298i, -1i, -1i);
    global0 = arg_0;
    var_0 = u_input.d.wxy;
    var var_1 = vec3<bool>(!all(vec2<bool>(!arg_0.b.c, !arg_0.b.b.x)), true, global0.a.b.x);
    var_1 = !vec3<bool>(false, true, all(vec3<bool>(arg_0.b.b.x, global2.a.b.x | global0.a.c, any(vec4<bool>(true, arg_2.b.b.x, true, arg_2.a.c)))));
    return true;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> vec3<f32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-154f, global0.a.a.x) - _wgslsmith_f_op_vec2_f32(trunc(global2.a.a))), vec2<f32>(374f, -1254f)), global0.b.b, arg_0 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.a.a.x)))), global0.b);
    let var_1 = func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(step(global0.a.a, global0.a.a)), vec2<bool>(global0.a.b.x, global2.b.b.x), 16521u == u_input.e.x), var_0.b), _wgslsmith_div_vec4_u32(~func_3(arg_1), u_input.e), Struct_2(Struct_1(_wgslsmith_div_vec2_f32(global0.b.a, vec2<f32>(var_0.a.a.x, 504f)), !var_0.b.b, global0.b.c), var_0.b)) | all(vec2<bool>(!global2.a.c, !(true || var_0.b.c)));
    var_0 = Struct_2(global0.b, var_0.b);
    global3 = i32(-1i) * -18139i;
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a.x, 105f)) * vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.a.a.x)), -483f)), !global2.a.b, !(!(!var_0.a.c))), var_0.a);
    return vec3<f32>(-2349f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)))), global0.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
}

fn func_5(arg_0: vec3<f32>, arg_1: bool) -> Struct_2 {
    var var_0 = u_input.e;
    global0 = Struct_2(Struct_1(global2.a.a, !(!global2.a.b), false), global0.b);
    var var_1 = -abs(_wgslsmith_dot_vec2_i32(u_input.d.zw, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.d.x), u_input.d.wy)) | ~(-1i));
    var var_2 = Struct_2(global0.a, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.a.x) - 1028f), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(arg_0.x, u_input.d)).x - _wgslsmith_f_op_f32(f32(-1f) * -1713f))), global0.a.b, false));
    var_0 = u_input.e;
    return Struct_2(global0.a, Struct_1(vec2<f32>(_wgslsmith_f_op_vec3_f32(func_2(-1314f, u_input.d)).x, 2366f), !select(select(global2.a.b, vec2<bool>(var_2.a.b.x, global0.a.c), global2.a.b), vec2<bool>(global0.b.c, true), !global2.b.b), !any(!vec3<bool>(arg_1, arg_1, arg_1))));
}

fn func_1(arg_0: bool) -> Struct_2 {
    global1 = 2147483647i ^ ~u_input.d.x;
    global0 = func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(1000f, vec4<i32>(u_input.a, u_input.d.x, u_input.d.x, -44228i)))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1251f, _wgslsmith_f_op_f32(step(1287f, global2.a.a.x)), 462f))), vec3<bool>(1i == _wgslsmith_div_i32(u_input.a, u_input.d.x), true, (u_input.d.x >> (u_input.c % 32u)) >= 10887i))), global2.b.b.x);
    global3 = u_input.a;
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b.a.x)))), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(select(global0.b.a.x, 698f, global0.b.b.x != true)), _wgslsmith_mod_vec4_i32(-u_input.d, u_input.d) ^ ~vec4<i32>(u_input.a, 2147483647i, u_input.d.x, -2147483647i))).zy);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(-global0.b.a.x), min(vec4<i32>(u_input.a, -55i, u_input.d.x, 2147483647i), vec4<i32>(u_input.a, u_input.d.x, u_input.d.x, u_input.a)))).yx * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(global2.b.a, vec2<f32>(var_0.x, global2.b.a.x), global0.b.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1051f, 977f)), !vec2<bool>(arg_0, true)))))), global2.a.b, !(min(1u, ~u_input.b.x) >= _wgslsmith_mult_u32(~u_input.e.x, ~1u)));
    return Struct_2(global2.a, global2.a);
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(-global0.b.a.x), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(min(global2.b.a.x, _wgslsmith_f_op_f32(abs(1269f)))))), _wgslsmith_f_op_f32(step(-604f, 2885f))), !(!global2.b.c)).a;
    global0 = func_1(!(global0.b.b.x | true));
    var var_1 = global2.a.b.x;
    global0 = arg_0;
    global2 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a.x, arg_1.x, arg_0.b.a.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-264f, arg_0.b.a.x, global2.b.a.x), vec3<f32>(1000f, -465f, -992f), vec3<bool>(false, global2.a.b.x, var_0.c))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-771f, -1120f, -152f)))), true);
    return arg_0;
}

fn func_7(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global1 = u_input.d.x | -20678i;
    let var_0 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_vec3_f32(func_2(-1723f, max(_wgslsmith_clamp_vec4_i32(~u_input.d, vec4<i32>(49770i, u_input.d.x, u_input.a, 0i), u_input.d | u_input.d), vec4<i32>(_wgslsmith_div_i32(-1i, 1i), u_input.a, u_input.d.x, i32(-1i) * -36663i)))).x);
    return func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(700f, -154f, -357f), vec3<f32>(arg_2.a.x, global0.a.a.x, global2.b.a.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0, global2.b.a.x, -222f), vec3<f32>(-214f, 548f, arg_2.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.a.x, var_0, global0.a.a.x)), false | func_6(Struct_2(Struct_1(vec2<f32>(-539f, global0.b.a.x), vec2<bool>(global2.a.b.x, arg_2.b.x), true), global2.a), vec2<f32>(arg_2.a.x, -1842f), u_input.e).a.c)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_2(153f, max(u_input.d, u_input.d)))))), select(false, !((7236u < u_input.b.x) | global2.a.b.x), func_1(arg_2.b.x).a.b.x)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(u_input.e.x <= (37293u << (firstTrailingBit(0u) % 32u)), any(!vec2<bool>(global0.b.c, global0.a.b.x)) && true, global2.a.c);
    global2 = Struct_2(func_7(true, func_6(func_1(true), _wgslsmith_div_vec2_f32(global0.a.a, _wgslsmith_div_vec2_f32(global2.b.a, vec2<f32>(global0.a.a.x, 189f))), ~select(vec4<u32>(u_input.e.x, 7746u, 17445u, 47452u), u_input.e, false)), Struct_1(global2.b.a, global0.b.b, func_1(false).b.b.x)), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-837f, 1137f, global0.a.a.x) - vec3<f32>(global0.b.a.x, 1202f, global0.b.a.x))))), true).b);
    var var_1 = func_7(global2.b.c, Struct_2(func_1(true).b, func_7(!(!var_0.x), func_1(true), func_6(Struct_2(Struct_1(global2.b.a, vec2<bool>(global2.b.c, var_0.x), true), global0.b), global0.b.a, func_3(vec4<i32>(22127i, u_input.d.x, 0i, u_input.a))).b)), global0.b);
    var var_2 = max(abs(_wgslsmith_mod_vec2_u32(u_input.b, u_input.e.xx)), ~u_input.b);
    let var_3 = !func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.b.a.x, var_1.a.x, global2.a.a.x))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.b.a.x, global0.a.a.x, var_1.a.x), vec3<f32>(var_1.a.x, 813f, -1000f))))), true).b.b;
    var_0 = !vec3<bool>(var_0.x, any(vec4<bool>(var_0.x & global0.a.c, true, var_1.c, true)), true);
    var_1 = global0.b;
    var_2 = reverseBits(vec2<u32>(u_input.e.x, func_3(firstLeadingBit(u_input.d)).x));
    let var_4 = func_5(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(296f * 1058f) + _wgslsmith_f_op_f32(select(global0.a.a.x, global2.b.a.x, global2.b.b.x))), _wgslsmith_f_op_vec3_f32(func_2(global0.b.a.x, ~vec4<i32>(u_input.d.x, 0i, -56167i, u_input.d.x))).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -589f)) - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), false == (func_1(global0.b.c | var_0.x).b.a.x == -663f));
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec2<f32>(_wgslsmith_div_f32(-142f, var_4.b.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_7(var_1.b.x, var_4, Struct_1(global2.b.a, vec2<bool>(true, global2.a.c), true)).a.x + -1201f)))), ~4361u);
}

