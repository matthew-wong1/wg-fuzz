struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: i32;

var<private> global2: array<i32, 29> = array<i32, 29>(16471i, -55064i, -1600i, 0i, 0i, -65134i, -62586i, -1i, -1i, 41241i, 52502i, 0i, 25812i, 15770i, -3675i, i32(-2147483648), -67382i, -17607i, -30172i, -10284i, -15979i, 2147483647i, -1i, 0i, 2147483647i, -30043i, -10999i, 1i, i32(-2147483648));

var<private> global3: vec4<f32>;

var<private> global4: f32 = 1844f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_3) -> bool {
    var var_0 = arg_3.c;
    var var_1 = Struct_3(var_0.a, arg_3.b, Struct_2(Struct_1(var_0.a.a, !var_0.a.b)), arg_3.d << (_wgslsmith_clamp_vec2_u32(abs(~u_input.a), ~vec2<u32>(u_input.d, 51912u), ~_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(33062u, 1u))) % vec2<u32>(32u)), arg_3.e);
    let var_2 = arg_1;
    return false;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<u32>) -> bool {
    return true;
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> Struct_5 {
    global3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -963f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-186f - _wgslsmith_f_op_f32(sign(global3.x))), _wgslsmith_f_op_f32(-953f + _wgslsmith_div_f32(global3.x, 1790f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.x)) - -1167f), -303f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.x, global3.x, 1416f, 489f), vec4<f32>(global3.x, 435f, global3.x, global3.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 557f, global3.x, global3.x) + vec4<f32>(488f, global3.x, -123f, 465f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(366f, -205f, -553f, 1153f) + vec4<f32>(770f, global3.x, 246f, global3.x))), select(vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(arg_0, arg_0, false, true), arg_0)))));
    let var_0 = u_input.b << (u_input.a % vec2<u32>(32u));
    var var_1 = Struct_1(u_input.a.x, arg_0);
    let var_2 = Struct_3(Struct_1(_wgslsmith_mod_u32(0u, u_input.c), !(var_1.b & !arg_1.a)), var_0.x, Struct_2(Struct_1(~var_1.a, func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, global3.x, global3.x, global3.x), vec4<f32>(-110f, 1886f, global3.x, global3.x), false)), global3.x, var_0 ^ vec2<i32>(0i, u_input.b.x), Struct_3(Struct_1(54717u, arg_0), 29311i, Struct_2(Struct_1(0u, false)), vec2<u32>(u_input.c, 1u), vec4<bool>(arg_0, false, true, arg_0))))), vec2<u32>(arg_1.b, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(arg_1.b, arg_1.b)), u_input.a)), select(vec4<bool>(arg_0, arg_1.a, !(!var_1.b), _wgslsmith_clamp_i32(0i, u_input.b.x, 63475i) < ~var_0.x), vec4<bool>(any(vec3<bool>(arg_1.a, arg_1.a, false)), true, true, func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, global3.x, global3.x, -962f))), global3.x, -vec2<i32>(2147483647i, 1i), Struct_3(Struct_1(104315u, var_1.b), global2[_wgslsmith_index_u32(4294967295u, 29u)], Struct_2(Struct_1(var_1.a, var_1.b)), vec2<u32>(arg_1.b, 90872u), vec4<bool>(arg_0, var_1.b, arg_0, true)))), vec4<bool>(any(!vec4<bool>(arg_1.a, true, true, true)), true, func_2(arg_1, Struct_1(1u, true), vec2<u32>(var_1.a, 24102u)), arg_0)));
    var var_3 = var_2.e.yww;
    return Struct_5(vec4<i32>(_wgslsmith_sub_i32(var_2.b, ~(u_input.b.x | var_0.x)), -1i, abs(-min(var_2.b, var_0.x)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_2.b, -22080i) >> (select(var_1.a, arg_1.b, arg_1.a) % 32u), max(var_0.x, _wgslsmith_clamp_i32(var_0.x, 0i, 50459i)))), Struct_2(Struct_1(~u_input.c, !var_3.x)), max(_wgslsmith_add_vec4_i32(-(vec4<i32>(-1i, -27170i, global2[_wgslsmith_index_u32(32086u, 29u)], 2147483647i) | vec4<i32>(-1i, var_2.b, 2147483647i, -28422i)), select(vec4<i32>(var_0.x, global2[_wgslsmith_index_u32(arg_1.b, 29u)], var_0.x, u_input.b.x), vec4<i32>(u_input.b.x, var_2.b, -1i, 22188i), var_1.b) << (min(vec4<u32>(var_1.a, 26465u, var_1.a, arg_1.b), vec4<u32>(var_2.c.a.a, 147430u, 41216u, arg_1.b)) % vec4<u32>(32u))), ~(-abs(vec4<i32>(-2147483647i, 2147483647i, var_2.b, 17874i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global3.x;
    global2 = array<i32, 29>();
    var var_0 = func_3(all(vec4<bool>(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-114f, 622f, global3.x, 1352f) + vec4<f32>(-2796f, -766f, global3.x, global3.x)), global3.x, u_input.b, Struct_3(Struct_1(0u, false), global2[_wgslsmith_index_u32(4294967295u, 29u)], Struct_2(Struct_1(u_input.d, true)), u_input.a, vec4<bool>(false, false, true, true))), true, true, !func_2(Struct_4(true, 76749u), Struct_1(u_input.a.x, false), vec2<u32>(31364u, 4294967295u)))), Struct_4(true, _wgslsmith_div_u32(u_input.d, ~1u)));
    var var_1 = Struct_3(func_3(true, Struct_4(all(!vec3<bool>(var_0.b.a.b, false, var_0.b.a.b)), u_input.d)).b.a, min(var_0.c.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(u_input.a, u_input.a, var_0.b.a.b), u_input.a), 29u)] << (var_0.b.a.a % 32u)), var_0.b, abs(u_input.a) << (firstTrailingBit(_wgslsmith_div_vec2_u32(u_input.a, u_input.a)) % vec2<u32>(32u)), !vec4<bool>(true, false, !var_0.b.a.b, true));
    let var_2 = func_3(true, Struct_4(_wgslsmith_f_op_f32(-global3.x) >= _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(1065f + -1240f)), ~u_input.d));
    global2 = array<i32, 29>();
    let var_3 = func_3(true, Struct_4(!var_1.e.x, abs(_wgslsmith_mod_u32(~0u, reverseBits(u_input.c))))).b.a.a;
    var var_4 = func_3(true, Struct_4(any(select(var_1.e.xw, global0[_wgslsmith_index_u32(var_2.b.a.a, 9u)], vec2<bool>(true, false))) || true, 7804u));
    var var_5 = func_3(any(var_1.e), Struct_4(all(select(vec3<bool>(false, var_0.b.a.b, var_4.b.a.b), select(var_1.e.yxy, var_1.e.wzw, false), true)), firstLeadingBit(var_3) << (reverseBits(min(var_4.b.a.a, 4294967295u)) % 32u))).b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_4.a.x, -((var_0.c.x << (1u % 32u)) ^ ~1i)));
}

