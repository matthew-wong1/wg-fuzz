struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(46578u, vec4<i32>(2147483647i, 66825i, 0i, 43980i), 33953i, vec4<i32>(i32(-2147483648), 1i, -1i, -4688i), Struct_2(vec2<bool>(false, true), false, 1u, false));

var<private> global1: array<Struct_2, 30>;

var<private> global2: array<u32, 21>;

var<private> global3: array<vec3<u32>, 16>;

var<private> global4: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(26211u, 87066u), vec2<u32>(1082u, 4294967295u), vec2<u32>(54181u, 19468u), vec2<u32>(0u, 4294967295u));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = Struct_4(~global0.b.zzx, Struct_1(1f, _wgslsmith_add_u32(global0.e.c, _wgslsmith_clamp_u32(27156u, select(1u, global0.a, arg_0.d), ~u_input.b)), global0.b.x, !arg_0.d), Struct_1(_wgslsmith_div_f32(-533f, _wgslsmith_div_f32(-606f, _wgslsmith_f_op_f32(round(arg_0.a)))), global2[_wgslsmith_index_u32(~firstTrailingBit(0u), 21u)], ~2147483647i, !any(select(vec3<bool>(arg_0.d, false, true), vec3<bool>(arg_0.d, arg_0.d, true), vec3<bool>(global0.e.a.x, true, global0.e.a.x)))), select(vec2<bool>(global0.e.a.x, global0.e.b), vec2<bool>(global0.e.d, !select(global0.e.a.x, true, global0.e.b)), select(global0.e.a, global0.e.a, !vec2<bool>(arg_0.d, arg_0.d))), _wgslsmith_mod_vec3_i32(abs(-global0.b.zyw) & select(global0.d.ywy, countOneBits(u_input.a.xxy), select(vec3<bool>(false, global0.e.d, global0.e.a.x), vec3<bool>(false, global0.e.d, global0.e.d), vec3<bool>(global0.e.b, global0.e.b, false))), ~(-(~vec3<i32>(-24977i, -2147483647i, u_input.a.x)))));
    let var_1 = Struct_4(u_input.a.ywx, Struct_1(1325f, _wgslsmith_div_u32(1205u, ~1u), arg_0.c, true), arg_0, !select(select(global0.e.a, var_0.d, true), select(select(vec2<bool>(true, false), vec2<bool>(true, var_0.c.d), false), var_0.d, global0.e.d), vec2<bool>(var_0.c.d, false)), select(select(var_0.a, u_input.a.xzw, global0.e.b), var_0.a, vec3<bool>(true, true, true)) & _wgslsmith_add_vec3_i32(~(global0.b.yww >> (u_input.d % vec3<u32>(32u))), var_0.e));
    let var_2 = -max(i32(-1i) * -2147483647i, -45221i);
    var var_3 = var_0.b;
    let var_4 = Struct_2(select(!vec2<bool>(var_0.d.x, true), !var_1.d, select(!vec2<bool>(true, var_1.c.d), var_0.d, var_1.c.d)), true || (_wgslsmith_dot_vec4_i32(select(global0.d, u_input.a, vec4<bool>(var_3.d, var_1.b.d, var_1.b.d, true)), global0.b) >= 2147483647i), 26014u, !all(var_1.d));
    return var_0.e;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: f32) -> vec2<bool> {
    global3 = array<vec3<u32>, 16>();
    global0 = Struct_5(global0.a, global0.d, _wgslsmith_dot_vec3_i32(u_input.a.zzw, func_3(Struct_1(arg_1.x, global2[_wgslsmith_index_u32(1u | u_input.d.x, 21u)], i32(-1i) * -49487i, select(global0.e.b, arg_0.b, true)))), ~global0.b, arg_0);
    global1 = array<Struct_2, 30>();
    global2 = array<u32, 21>();
    global4 = array<vec2<u32>, 4>();
    return !arg_0.a;
}

fn func_1() -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1304f);
    global3 = array<vec3<u32>, 16>();
    global3 = array<vec3<u32>, 16>();
    var var_1 = vec2<u32>(min(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24924u, 21u)], 21u)], 0u)), vec2<u32>(76926u, 25819u)), countOneBits(~u_input.b)), global0.a) >> (countOneBits(~vec2<u32>(u_input.d.x, ~4294967295u)) % vec2<u32>(32u));
    global1 = array<Struct_2, 30>();
    return Struct_5(global0.a, ~abs(global0.b), -(~(-u_input.a.x)), firstTrailingBit(u_input.a), Struct_2(!select(select(global0.e.a, vec2<bool>(false, true), global0.e.d), func_2(Struct_2(vec2<bool>(true, global0.e.a.x), false, var_1.x, false), vec3<f32>(-1291f, -1640f, -1196f), 1836f), false), !all(!global0.e.a), ~_wgslsmith_div_u32(var_1.x, global2[_wgslsmith_index_u32(72940u, 21u)]), false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -314f) + _wgslsmith_f_op_f32(-1465f - 3490f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-477f * _wgslsmith_f_op_f32(select(-465f, 738f, false)))))));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(func_1().a), 21732u), 21u)];
    var var_3 = global2[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(~abs(u_input.d.x), abs(~4294967295u))), 21u)];
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(687f, _wgslsmith_f_op_f32(max(463f, -115f))) + _wgslsmith_f_op_f32(f32(-1f) * -225f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(891f + 424f), -1131f), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(min(-364f, -400f)))))), _wgslsmith_f_op_f32(round(616f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-279f, 1274f, 931f) + vec3<f32>(-1687f, -1201f, 1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(887f);
}

