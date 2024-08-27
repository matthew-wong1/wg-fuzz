struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1;

var<private> global2: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_2 {
    global0 = true;
    global1 = Struct_1(_wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global1.b)))) + global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), global1.c, global1.d);
    let var_0 = !(global1.b <= global1.a);
    global2 = global1.a;
    global2 = _wgslsmith_div_f32(-604f, _wgslsmith_f_op_f32(f32(-1f) * -567f));
    return Struct_2(reverseBits(_wgslsmith_dot_vec3_u32(global1.d.yzx, countOneBits(~vec3<u32>(global1.d.x, global1.d.x, global1.d.x)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(528f, 1000f), vec2<f32>(arg_3, -120f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1846f, -781f), vec2<f32>(global1.b, arg_3)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1667f, -866f), vec2<f32>(global1.a, arg_3)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1429f, arg_3)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(arg_3, -1647f)), _wgslsmith_f_op_f32(f32(-1f) * -1126f))));
    var var_1 = 1353u;
    var_1 = 34932u;
    var var_2 = -1i;
    global0 = false;
    return Struct_1(arg_0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(326f))), arg_1.zyz, ~(~(~vec4<u32>(global1.d.x, 11337u, arg_0.c.d.x, arg_0.c.d.x))));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = true;
    global1 = func_3(Struct_3(!vec3<bool>(!var_0, global1.c.x || arg_0.x, global1.a > -1236f), func_2(), Struct_1(-1646f, _wgslsmith_f_op_f32(-482f - _wgslsmith_f_op_f32(global1.a * 561f)), arg_0, firstTrailingBit(global1.d))), !(!vec4<bool>(false, false, arg_1 >= 19328i, true)), !select(select(arg_0, arg_0, vec3<bool>(false, true, global1.c.x)), !vec3<bool>(global1.c.x, true, true), global1.c), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1119f + _wgslsmith_f_op_f32(f32(-1f) * -331f)))));
    return Struct_3(func_3(Struct_3(!global1.c, Struct_2(global1.d.x), Struct_1(global1.b, -830f, arg_0, global1.d)), select(select(!vec4<bool>(false, global1.c.x, true, arg_0.x), !vec4<bool>(true, false, false, var_0), !vec4<bool>(arg_0.x, true, var_0, true)), !select(vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(true, true, arg_0.x, arg_0.x), arg_0.x), true), !(!(!arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(277f - 1000f) + _wgslsmith_f_op_f32(1393f + global1.b)) + _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(round(global1.a))))).c, func_2(), func_3(Struct_3(select(arg_0, !global1.c, arg_0), Struct_2(0u), Struct_1(_wgslsmith_f_op_f32(max(global1.a, global1.a)), -1748f, arg_0, vec4<u32>(0u, global1.d.x, global1.d.x, global1.d.x) ^ global1.d)), !select(!vec4<bool>(global1.c.x, true, false, false), select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, false, global1.c.x), var_0), vec4<bool>(false, global1.c.x, var_0, global1.c.x)), select(arg_0, select(func_3(Struct_3(vec3<bool>(false, var_0, global1.c.x), Struct_2(global1.d.x), Struct_1(global1.b, global1.a, arg_0, vec4<u32>(21991u, 4294967295u, global1.d.x, global1.d.x))), vec4<bool>(false, global1.c.x, var_0, arg_0.x), vec3<bool>(global1.c.x, false, false), global1.b).c, arg_0, vec3<bool>(arg_0.x, false, true)), !(!arg_0)), _wgslsmith_f_op_f32(round(global1.b))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>) -> vec3<bool> {
    global0 = any(func_3(Struct_3(func_1(vec3<bool>(true, arg_1.x, false), 0i, vec3<i32>(u_input.b, u_input.a, 2147483647i)).c.c, func_2(), Struct_1(-1000f, global1.b, arg_1.wyw, arg_0.c.d)), arg_1, vec3<bool>(true, true & arg_1.x, true), _wgslsmith_f_op_f32(select(global1.b, _wgslsmith_f_op_f32(f32(-1f) * -2320f), any(vec4<bool>(false, arg_0.c.c.x, global1.c.x, global1.c.x))))).c.xx) && !(!(false | all(vec3<bool>(true, global1.c.x, false))));
    global0 = _wgslsmith_f_op_f32(step(1334f, global1.a)) > _wgslsmith_f_op_f32(exp2(arg_0.c.a));
    global0 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(arg_0.c.d, global1.d) & ~35388u, ~func_2().a), arg_0.c.d.x, ~(~global1.d.x)) != min(_wgslsmith_div_u32(0u, global1.d.x), ((global1.d.x ^ 1u) & abs(55790u)) ^ arg_0.c.d.x);
    var var_0 = arg_0.b;
    var_0 = func_1(arg_1.xxw, 2147483647i, vec3<i32>(2147483647i, ~u_input.b, u_input.a)).b;
    return !select(vec3<bool>(true, true, select(arg_0.a.x, true, any(global1.c))), !arg_1.yzy, any(arg_1));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.b, arg_1.x, 1679f, global1.b) - vec4<f32>(-380f, global1.a, global1.a, arg_1.x)))) + vec4<f32>(_wgslsmith_f_op_f32(max(global1.b, 168f)), -942f, func_3(arg_2, vec4<bool>(true, true, false, false), global1.c, 1131f).a, _wgslsmith_f_op_f32(sign(arg_2.c.b))))));
    var var_1 = 0i;
    let var_2 = func_3(func_1(func_3(arg_2, select(select(vec4<bool>(arg_2.c.c.x, global1.c.x, false, arg_2.a.x), vec4<bool>(global1.c.x, true, global1.c.x, global1.c.x), false), !vec4<bool>(arg_2.c.c.x, true, global1.c.x, arg_2.c.c.x), vec4<bool>(false, global1.c.x, arg_2.c.c.x, false)), global1.c, var_0.x).c, firstTrailingBit(u_input.b), max(arg_0.zzz, min(-vec3<i32>(28742i, u_input.a, 11009i), ~arg_0.ywz))), vec4<bool>(!any(vec3<bool>(arg_2.c.c.x, true, arg_2.c.c.x)), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, arg_2.c.c.x, false, false), false)) || !(false == global1.c.x), global1.c.x, true), arg_2.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a)))).c.x;
    let var_3 = func_1(!select(vec3<bool>(var_2, true, false & global1.c.x), vec3<bool>(!arg_2.c.c.x, true, func_1(global1.c, 400i, arg_0.wwx).a.x), true), _wgslsmith_mult_i32(select(~firstLeadingBit(-27246i), -27980i, any(vec4<bool>(false, arg_2.c.c.x, false, false))), abs(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-27826i, u_input.b, 0i), arg_0.zxx), arg_0.xwx))), abs(arg_0.yyy | select(select(arg_0.wwz, vec3<i32>(arg_0.x, -39995i, 27612i), global1.c), arg_0.zyx, vec3<bool>(false, false, arg_2.a.x))));
    global0 = arg_2.c.c.x;
    return 1u == _wgslsmith_sub_u32(abs(~(global1.d.x ^ var_3.b.a)), 14379u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.c.x;
    global2 = _wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(339f * 2390f), global1.a))) * global1.b));
    let var_0 = vec3<bool>(global1.c.x, false, false);
    global0 = any(var_0.yy);
    let var_1 = select(any(var_0), false || (true | var_0.x), all(vec2<bool>(global1.c.x, all(vec2<bool>(var_0.x, false)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)) - _wgslsmith_f_op_f32(abs(-579f))), _wgslsmith_div_f32(-386f, -2475f), _wgslsmith_f_op_f32(-global1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(trunc(-672f))), -788f))));
    let var_3 = _wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec4_u32(global1.d, global1.d), ~26316u), global1.d.yz) << (global1.d.wx % vec2<u32>(32u));
    global0 = func_5(_wgslsmith_mod_vec4_i32(vec4<i32>(~(~u_input.a), -31988i, u_input.a, 25527i), vec4<i32>(-_wgslsmith_mult_i32(14497i, -82660i), ~(-u_input.b), u_input.a, 21648i)), var_2.xyy, Struct_3(select(func_4(func_1(vec3<bool>(var_1, true, true), u_input.a, vec3<i32>(-1i, u_input.b, u_input.a)), select(vec4<bool>(true, var_1, false, true), vec4<bool>(true, global1.c.x, var_0.x, true), vec4<bool>(var_0.x, true, var_1, global1.c.x))), var_0, true), Struct_2(1u), func_3(Struct_3(select(var_0, vec3<bool>(false, var_1, true), false), func_2(), Struct_1(var_2.x, -607f, vec3<bool>(var_1, false, var_0.x), global1.d)), select(select(vec4<bool>(var_0.x, global1.c.x, false, false), vec4<bool>(var_0.x, true, true, true), vec4<bool>(global1.c.x, var_0.x, false, true)), !vec4<bool>(var_1, false, var_1, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), vec3<bool>(false, !var_1, true), _wgslsmith_f_op_f32(floor(-1252f)))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.d.x, u_input.a);
}

