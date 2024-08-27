struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 27>;

var<private> global1: array<vec4<u32>, 17>;

var<private> global2: vec4<f32>;

var<private> global3: Struct_1 = Struct_1(false, vec3<f32>(-1064f, 863f, -1169f), vec4<bool>(true, false, true, false), vec3<u32>(66913u, 63332u, 28674u), vec4<i32>(-34484i, i32(-2147483648), 2147483647i, -1i));

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32) -> f32 {
    global4 = Struct_1(_wgslsmith_f_op_f32(step(global4.b.x, _wgslsmith_f_op_f32(f32(-1f) * -211f))) < global4.b.x, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(f32(-1f) * -107f)))), global3.c, vec3<u32>(global3.d.x, arg_0, arg_0), global4.e);
    global4 = Struct_1(false, vec3<f32>(_wgslsmith_f_op_f32(step(-866f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, global4.b.x)) + global3.b.x))), _wgslsmith_f_op_f32(-global3.b.x), -1000f), vec4<bool>(global3.a, !(!all(global3.c.zxx)), all(!(!global4.c.yxw)), -u_input.a <= reverseBits(abs(-41594i))), vec3<u32>(global4.d.x, _wgslsmith_mod_u32(global4.d.x, ~arg_1), ~global4.d.x), reverseBits(vec4<i32>(1i, min(global3.e.x, global4.e.x), 2147483647i, 0i)));
    global3 = Struct_1(~(~(arg_0 | u_input.d)) < ~(~abs(arg_0)), _wgslsmith_f_op_vec3_f32(round(global4.b)), vec4<bool>(_wgslsmith_f_op_f32(abs(-1105f)) == _wgslsmith_f_op_f32(select(1803f, global4.b.x, global3.c.x)), false, select(!(global3.a && global3.a), true, global4.a), true), _wgslsmith_sub_vec3_u32((global4.d >> (max(u_input.b, global4.d) % vec3<u32>(32u))) & select(vec3<u32>(u_input.b.x, global3.d.x, u_input.d), select(vec3<u32>(global3.d.x, u_input.e, 23316u), vec3<u32>(44483u, global4.d.x, global3.d.x), global3.c.xyy), select(global4.c.zww, vec3<bool>(global4.c.x, global3.c.x, false), global3.a)), ~vec3<u32>(_wgslsmith_mod_u32(62620u, global3.d.x), firstLeadingBit(arg_1), _wgslsmith_clamp_u32(arg_0, 0u, arg_1))), vec4<i32>(abs(16995i), min(u_input.a, global3.e.x), -firstTrailingBit(u_input.a), u_input.a));
    var var_0 = vec4<bool>(global3.a, ~0i < ~u_input.a, all(select(!vec4<bool>(global4.a, global3.a, global4.a, global3.c.x), !(!vec4<bool>(global4.a, false, global3.a, true)), any(select(vec2<bool>(true, global4.a), global4.c.yw, global0[_wgslsmith_index_u32(u_input.c, 27u)])))), all(select(select(vec3<bool>(false, global4.c.x, global4.c.x), vec3<bool>(global3.a, true, false), global4.a), select(!global4.c.xwz, !vec3<bool>(global4.a, true, true), select(global4.c.zww, vec3<bool>(global3.a, global3.a, false), global3.c.x)), all(global0[_wgslsmith_index_u32(global3.d.x << (0u % 32u), 27u)]))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1414f, _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(1887f + global3.b.x)), global4.b.x, _wgslsmith_f_op_f32(-global2.x)))));
    return _wgslsmith_f_op_f32(round(108f));
}

fn func_2() -> Struct_1 {
    global3 = Struct_1(false, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(16491u, 0u)), global4.b.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.b.x, 0u)), _wgslsmith_f_op_f32(-global4.b.x))), -250f, _wgslsmith_f_op_f32(2102f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 100f))))), vec4<bool>(false, global4.a, true, global3.a), ~(_wgslsmith_mult_vec3_u32(vec3<u32>(global3.d.x, 69124u, u_input.c), u_input.b) & max(vec3<u32>(global4.d.x, 4294967295u, 1u) >> (vec3<u32>(u_input.e, 72342u, u_input.e) % vec3<u32>(32u)), global4.d & global3.d)), _wgslsmith_mult_vec4_i32(global4.e, global3.e));
    return Struct_1(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(164f * global3.b.x), _wgslsmith_f_op_f32(select(global3.b.x, global4.b.x, global3.c.x))), global3.b.x, global4.b.x) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b.x, global3.b.x, -867f)) + _wgslsmith_f_op_vec3_f32(global4.b - vec3<f32>(global2.x, -880f, global3.b.x)))))), global4.c, vec3<u32>(global3.d.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b.x, 4294967295u), global3.d.x) & global3.d.x, firstLeadingBit(1u)), _wgslsmith_add_vec4_i32(min(global3.e ^ global3.e, global3.e), vec4<i32>(-11583i, select(global3.e.x, _wgslsmith_mod_i32(global3.e.x, u_input.a), any(global0[_wgslsmith_index_u32(0u, 27u)])), global4.e.x >> (~20885u % 32u), _wgslsmith_mod_i32(global4.e.x, -global4.e.x))));
}

fn func_1() -> Struct_1 {
    global4 = func_2();
    let var_0 = ~global4.d.xx;
    var var_1 = Struct_1(_wgslsmith_mult_i32(~1i << ((15074u ^ u_input.e) % 32u), abs(_wgslsmith_clamp_i32(global3.e.x, global4.e.x, u_input.a))) != _wgslsmith_dot_vec2_i32(max(select(global4.e.xx, vec2<i32>(u_input.a, 21573i), vec2<bool>(global3.c.x, true)), max(vec2<i32>(global4.e.x, global4.e.x), vec2<i32>(-1i, -25546i))), ~vec2<i32>(-1i, u_input.a)), _wgslsmith_f_op_vec3_f32(global4.b - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global4.b.x, global3.b.x))) - vec3<f32>(-509f, _wgslsmith_f_op_f32(func_3(41654u, global3.d.x)), _wgslsmith_div_f32(-377f, 699f)))), global4.c, vec3<u32>(~abs(global4.d.x | global4.d.x), global3.d.x, ~_wgslsmith_clamp_u32(7820u, 57186u, 4294967295u) & global4.d.x), firstTrailingBit(reverseBits(global3.e)) & select(global4.e, select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, global3.e.x, 2147483647i, 2147483647i), global4.e), vec4<i32>(global3.e.x, 22518i, global4.e.x, 17904i), true), all(select(vec2<bool>(global3.a, global3.a), vec2<bool>(true, false), vec2<bool>(false, global4.c.x)))));
    let var_2 = global3.b;
    global4 = Struct_1(!any(vec4<bool>(true, !var_1.a, false && var_1.a, false)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -863f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-global3.b.x)))), _wgslsmith_f_op_f32(-195f * _wgslsmith_f_op_f32(-var_1.b.x))), !(!(!select(var_1.c, var_1.c, false))), u_input.b, global3.e);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = global4.b.x;
    let var_2 = func_1();
    var_1 = -1011f;
    global0 = array<vec2<bool>, 27>();
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) - _wgslsmith_f_op_f32(-1670f * -145f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2170f + global4.b.x) + _wgslsmith_f_op_f32(min(global3.b.x, -143f))), -1000f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(705f, global4.b.x, -1062f), func_1().b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b)), global4.a))));
    var var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global4.b.x, 824f), _wgslsmith_f_op_f32(func_3(global4.d.x, global3.d.x)), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(min(844f, -1158f))), vec4<f32>(1305f, -1320f, _wgslsmith_f_op_f32(abs(global2.x)), -908f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(733f, -261f, 197f, var_2.b.x)) - vec4<f32>(-2219f, global4.b.x, global4.b.x, -1148f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-736f, -596f, global4.b.x, global4.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(func_2().b.x * _wgslsmith_f_op_f32(floor(var_2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + -141f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b.x) + global3.b.x), _wgslsmith_f_op_f32(round(1266f))))));
    var var_5 = ~var_2.d.xy;
    global1 = array<vec4<u32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xz, ~(_wgslsmith_mod_u32(54084u, 3094u) & global4.d.x) & 1u, vec2<f32>(_wgslsmith_f_op_f32(func_3(global3.d.x, 15497u)), _wgslsmith_f_op_f32(1900f * global2.x)), ~(~var_2.e), var_2.b);
}

