struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: i32,
    d: Struct_2,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-1090f, 1000f), vec2<f32>(-146f, -1349f), vec2<f32>(-2212f, 1034f));

var<private> global1: i32 = 17924i;

var<private> global2: Struct_4 = Struct_4(vec2<bool>(true, false), vec3<bool>(false, true, true), -12246i, Struct_2(vec3<bool>(true, false, false), Struct_1(1u, vec2<i32>(i32(-2147483648), -8662i)), vec3<i32>(-1i, 1i, 2147483647i), vec4<bool>(false, false, false, false), Struct_1(4878u, vec2<i32>(1i, -20672i))), vec2<f32>(-825f, -314f));

var<private> global3: array<Struct_2, 26>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: i32) -> bool {
    return arg_0.a;
}

fn func_3() -> i32 {
    var var_0 = 333f;
    global2 = Struct_4(!vec2<bool>(global2.a.x, -657f == _wgslsmith_f_op_f32(max(global2.e.x, -342f))), select(select(select(global2.b, global2.d.a, global2.a.x && global2.b.x), global2.b, global2.b), !global2.d.a, !vec3<bool>(true, false | global2.d.a.x, 4294967295u >= u_input.a.x)), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(36713i, global2.c), u_input.b.x), _wgslsmith_sub_i32(~u_input.b.x, ~global2.c)) >> (global2.d.b.a % 32u), global2.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e.x) + -323f), _wgslsmith_f_op_f32(642f + _wgslsmith_f_op_f32(floor(531f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e.x) + global2.e.x), 417f)));
    var var_1 = Struct_1(~(~73127u), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -12584i, 24970i), vec4<i32>(u_input.b.x, u_input.b.x, 1i, 0i)), -global2.c), u_input.b.yy) | ~vec2<i32>(18541i, 0i));
    let var_2 = Struct_4(select(!vec2<bool>(!global2.d.a.x, !global2.a.x), global2.a, !(!(u_input.b.x == 23805i))), select(vec3<bool>(all(vec3<bool>(true, global2.a.x, true)) || true, true, global2.d.a.x), !select(!global2.d.a, global2.b, !global2.b.x), global2.a.x), ~countOneBits(_wgslsmith_mod_i32(-5312i, 1i)) & -_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.b.x, -15276i)), ~vec2<i32>(u_input.b.x, global2.c)), global2.d, global0[_wgslsmith_index_u32(4294967295u, 3u)]);
    var var_3 = _wgslsmith_f_op_f32(trunc(var_2.e.x));
    return _wgslsmith_add_i32(_wgslsmith_mod_i32(-(i32(-1i) * -2147483647i), ~(select(-24728i, -43450i, global2.a.x) << (_wgslsmith_mod_u32(4294967295u, u_input.a.x) % 32u))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_1.b.x, var_2.d.b.b.x), u_input.b.x ^ -2147483647i));
}

fn func_1() -> Struct_3 {
    global3 = array<Struct_2, 26>();
    let var_0 = Struct_4(vec2<bool>(false | func_2(Struct_3(global2.b.x, false), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, global2.d.c.x, -2136i), vec3<i32>(global2.d.b.b.x, u_input.b.x, u_input.b.x)), u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -888f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1648f, global2.e.x, true)))), global2.d.d.yxx, i32(-1i) * -_wgslsmith_mod_i32(-u_input.b.x, func_3()), global2.d, global2.e);
    let var_1 = u_input.b.x;
    var var_2 = global2.d.e.b.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1263f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-255f, global2.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x - 1198f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -609f))))));
    return Struct_3(true, var_0.d.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 3>();
    let var_0 = func_1();
    global1 = -firstTrailingBit(min(-34522i, 6489i));
    global3 = array<Struct_2, 26>();
    global0 = array<vec2<f32>, 3>();
    let var_1 = func_1();
    global3 = array<Struct_2, 26>();
    var var_2 = -473f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -global2.d.b.b, u_input.b.zy, -max(vec4<i32>(global2.d.b.b.x, global2.d.e.b.x & -1i, -1i, min(u_input.b.x, -1i)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -1i, global2.c, 0i), vec4<i32>(23770i, u_input.b.x, -8875i, 48135i), vec4<i32>(-38432i, u_input.b.x, 0i, 1i))));
}

