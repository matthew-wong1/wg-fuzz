struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -966f;

var<private> global1: Struct_3;

var<private> global2: Struct_3;

var<private> global3: vec4<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = 1u;
    global3 = reverseBits(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(global1.b.a, u_input.b), global2.b.a, global1.b.a, -2147483647i << (0u % 32u)), vec4<i32>(2147483647i, abs(-20933i), global1.b.a >> (4294967295u % 32u), global1.b.a), -u_input.a >> (vec4<u32>(27018u, 4294967295u, 1u, 4908u) % vec4<u32>(32u)))));
    var_0 = ~_wgslsmith_add_u32(47249u, _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 23507u), vec2<u32>(6005u, 20836u)), ~(~1u)));
    var var_1 = _wgslsmith_f_op_f32(global1.d.a.x - 1046f) <= _wgslsmith_f_op_f32(global1.c.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.a.x))));
    let var_2 = Struct_4(global2.a);
    return 11712i | var_2.a.a;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.c.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -926f), _wgslsmith_f_op_f32(max(arg_1.a.x, global2.d.a.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(141f, global2.c.a.x)))))));
    global1 = Struct_3(global1.b, Struct_2(~(-reverseBits(2147483647i))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.a.x, _wgslsmith_f_op_f32(global2.c.a.x * 1429f), _wgslsmith_f_op_f32(1133f + arg_0.x))), arg_1.b), global2.c);
    let var_0 = -3248i;
    global3 = select(vec4<i32>(func_3(global1.d), -global2.a.a, u_input.c, ~(-32685i)), u_input.a, arg_1.b);
    global1 = Struct_3(Struct_2(global3.x), Struct_2(25505i), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-761f + 848f)), global2.c.a.x, -328f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) + global2.d.a.x)), true), arg_1);
    return Struct_3(global1.b, Struct_2(var_0), global1.c, global2.d);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32, arg_3: vec3<f32>) -> vec2<u32> {
    global2 = arg_0;
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.a.x, arg_3.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-129f, global2.c.a.x) + arg_3.x))));
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global2.d.a.x)), _wgslsmith_f_op_f32(-817f - -703f), _wgslsmith_f_op_f32(floor(427f)), 948f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-126f, global2.c.a.x, global2.d.a.x, var_0.x) + _wgslsmith_f_op_vec4_f32(global2.d.a - vec4<f32>(global2.d.a.x, -432f, 933f, -242f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(737f, global2.c.a.x, arg_3.x, 3450f))))), global1.d).a;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.c.a.x))), -496f);
    let var_3 = arg_0.d.a;
    return vec2<u32>(1u, ~1u ^ (reverseBits(0u) & _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(64339u, 1u), vec2<u32>(25264u, 0u)), ~vec2<u32>(1u, 1u))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    var var_0 = 11483i;
    var var_1 = ~(~arg_1 | arg_1);
    var_0 = _wgslsmith_sub_i32(global1.a.a, _wgslsmith_mod_i32(~u_input.a.x, u_input.b));
    var var_2 = _wgslsmith_div_u32(~abs(1u), arg_1.x);
    global3 = -reverseBits(max(u_input.a, vec4<i32>(global1.a.a, global2.a.a | -1i, global1.a.a, global2.b.a)));
    return global1.a;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> Struct_4 {
    global1 = Struct_3(Struct_2(~(~1i)), func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c.a.yx), _wgslsmith_f_op_vec2_f32(round(global2.d.a.yz))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.a.x, global1.c.a.x)), _wgslsmith_div_vec2_f32(global2.d.a.yy, vec2<f32>(arg_0, global2.d.a.x)))), ~func_4(func_2(vec4<f32>(arg_0, -542f, arg_0, global2.d.a.x), Struct_1(vec4<f32>(global1.d.a.x, 1202f, global2.d.a.x, arg_0), global2.c.b)), Struct_4(global1.b), -1i, vec3<f32>(368f, global2.c.a.x, global2.d.a.x)), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, global2.d.a.x, -607f), vec4<f32>(-1000f, 1337f, arg_0, global2.c.a.x)) * vec4<f32>(900f, global2.c.a.x, global2.c.a.x, 1274f)), Struct_1(_wgslsmith_f_op_vec4_f32(-global1.c.a), any(vec3<bool>(global2.c.b, true, global2.d.b)))).c, _wgslsmith_f_op_f32(select(1748f, global2.d.a.x, _wgslsmith_f_op_f32(min(global2.d.a.x, -324f)) < arg_0))), Struct_1(_wgslsmith_f_op_vec4_f32(global1.c.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global1.c.a)) + global1.d.a)), true), func_2(vec4<f32>(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(select(-1370f, global1.c.a.x, func_2(global2.c.a, Struct_1(global2.d.a, true)).d.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.a.x)), _wgslsmith_f_op_f32(ceil(542f))), func_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(692f, -1698f, arg_0, global2.d.a.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global2.d.a.x, arg_0, global1.d.a.x) - vec4<f32>(global2.c.a.x, global2.d.a.x, -167f, global1.c.a.x)), all(vec3<bool>(true, true, global1.d.b)))).d).d);
    var var_0 = !select(vec4<bool>(!(true | global2.d.b), global1.d.b, global1.d.a.x >= -1481f, func_2(_wgslsmith_div_vec4_f32(global2.c.a, global2.c.a), Struct_1(global2.c.a, global1.d.b)).d.b), !(!vec4<bool>(false, true, false, global1.c.b)), false);
    global3 = select(u_input.a, vec4<i32>(func_3(global2.c), u_input.b << (4294967295u % 32u), global2.b.a, ~global1.a.a), false);
    let var_1 = 1i;
    let var_2 = global2.d.a.x;
    return Struct_4(global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~max(-(~u_input.a), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(global3.x, global2.a.a, u_input.a.x, 31050i)), reverseBits(u_input.a), vec4<i32>(1i, _wgslsmith_sub_i32(-1i, -8248i), -34087i & global1.b.a, u_input.a.x)));
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -322f))), vec3<u32>(~(~4294967295u), _wgslsmith_div_u32(_wgslsmith_div_u32(~6292u, ~177u), abs(2554u)), firstTrailingBit(77286u)));
    global1 = Struct_3(global1.b, global2.b, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1373f, 1777f, 1002f, -1335f) * vec4<f32>(global2.d.a.x, global1.c.a.x, -108f, global1.c.a.x))))), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global1.c.a), _wgslsmith_f_op_vec4_f32(global1.d.a * vec4<f32>(global2.c.a.x, global1.d.a.x, -673f, global1.d.a.x)))), false)).d, func_2(global1.d.a, global1.c).c);
    global0 = -1814f;
    let var_1 = func_1(-212f, abs(abs(vec3<u32>(countOneBits(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(16829u, 10906u, 24424u, 26275u), vec4<u32>(2153u, 4294967295u, 45551u, 4294967295u)), 1u))));
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.c.a * _wgslsmith_f_op_vec4_f32(vec4<f32>(-468f, 431f, 1606f, global1.c.a.x) + vec4<f32>(global1.c.a.x, global2.c.a.x, global1.c.a.x, -1438f))) + _wgslsmith_f_op_vec4_f32(global1.c.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1376f, global1.c.a.x, global2.c.a.x, 170f)))) * global2.d.a), Struct_1(vec4<f32>(global2.d.a.x, 1f, _wgslsmith_f_op_f32(exp2(global2.d.a.x)), _wgslsmith_f_op_f32(-600f - _wgslsmith_f_op_f32(max(-1000f, 724f)))), global1.d.b)).b;
    global0 = global2.d.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(2778u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(25467u, 0u, 3309u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 14744u, 33568u), vec3<u32>(1u, 90899u, 1u)), ~vec3<u32>(4294967295u, 8566u, 21571u)), ~(~vec3<u32>(4546u, 4294967295u, 4294967295u)))), 2147483647i, -15285i, firstLeadingBit(vec2<i32>(2147483647i, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.a.a, -5029i), u_input.d.yx << (vec2<u32>(1u, 33301u) % vec2<u32>(32u))))), -762f);
}

