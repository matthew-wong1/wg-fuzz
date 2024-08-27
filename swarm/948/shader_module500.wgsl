struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 29>;

var<private> global1: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    return global1.a.a.x | (global1.a.a.x | all(!select(vec4<bool>(global1.a.a.x, false, global1.a.a.x, false), vec4<bool>(true, true, true, global1.a.a.x), global1.a.a.x)));
}

fn func_2() -> vec2<i32> {
    var var_0 = global1.a;
    var_0 = Struct_1(!vec3<bool>(func_3(), global1.a.a.x, false), vec2<i32>(~u_input.b, ~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c.yw, vec2<i32>(41451i, 51731i)), max(global1.a.b, u_input.c.xw))), global1.a.c, ~(-(~_wgslsmith_clamp_vec2_i32(vec2<i32>(15876i, 26660i), global1.a.d, u_input.c.ww))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global1.a.c.x, 1387f, _wgslsmith_f_op_f32(f32(-1f) * -834f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(1069f)), _wgslsmith_f_op_f32(var_0.c.x * -1067f), global1.a.c.x, _wgslsmith_f_op_f32(var_0.e.x * var_0.e.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.a.e.x, 123f, -716f, global1.a.c.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, -1000f, 630f, 953f) - global1.a.e))), global1.a.a.x)));
    global0 = array<vec2<u32>, 29>();
    return vec2<i32>(_wgslsmith_sub_i32(countOneBits(_wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, var_0.d.x), -28056i)), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.b.x, global1.a.d.x, var_0.d.x), vec3<i32>(1i, -42052i >> (u_input.a.x % 32u), i32(-1i) * -1i))), _wgslsmith_mult_i32(var_0.d.x, abs(-(~34750i))));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    global1 = Struct_2(Struct_1(vec3<bool>(arg_1.a.x & !global1.a.a.x, any(vec2<bool>(global1.a.a.x, true)), arg_1.a.x), -vec2<i32>(~global1.a.d.x, _wgslsmith_clamp_i32(arg_1.b.x, -43230i, u_input.c.x)), arg_1.e.wx, _wgslsmith_mod_vec2_i32(-(global1.a.b << (global0[_wgslsmith_index_u32(0u, 29u)] % vec2<u32>(32u))), func_2()), global1.a.e));
    var var_0 = Struct_2(Struct_1(select(global1.a.a, vec3<bool>(true, true, true), global1.a.a), -arg_1.d, _wgslsmith_f_op_vec2_f32(step(arg_1.c, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(417f, -318f))))), vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.d.x, arg_1.b.x), vec2<i32>(1i, -1i)), ~(-2147483647i) & arg_1.d.x), arg_1.e));
    let var_1 = -(2147483647i | _wgslsmith_div_i32(var_0.a.b.x, 10816i));
    let var_2 = 32646u;
    let var_3 = true;
    return Struct_2(var_0.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    global0 = array<vec2<u32>, 29>();
    var var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c.x)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.a.c.x + _wgslsmith_f_op_f32(sign(arg_3.a.e.x)))))), func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-150f, 861f)))))), arg_1).a);
    var var_1 = ~vec4<i32>(max(-arg_3.a.b.x | ~arg_2.a.d.x, firstTrailingBit(abs(38186i))), arg_2.a.d.x, 1i, 9859i ^ global1.a.d.x);
    let var_2 = arg_1.e.ww;
    var_0 = Struct_2(var_0.a);
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(u_input.a.x, 29u)] >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), ~vec2<u32>(0u, u_input.a.x)), u_input.a.zz, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 0u), abs(55779u)), max(abs(vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(u_input.a.x, 1u) | vec2<u32>(u_input.a.x, 0u))), ~(vec2<u32>(32808u, 4294967295u) ^ global0[_wgslsmith_index_u32(~u_input.a.x, 29u)])));
    var var_1 = Struct_2(func_4(func_1(_wgslsmith_f_op_f32(-591f - _wgslsmith_f_op_f32(global1.a.c.x + 789f)), Struct_1(!global1.a.a, u_input.c.xy, global1.a.e.yz, vec2<i32>(-1i, 2147483647i), global1.a.e)), Struct_1(global1.a.a, _wgslsmith_mod_vec2_i32(global1.a.d, vec2<i32>(-2147483647i, 0i)), _wgslsmith_f_op_vec2_f32(-global1.a.c), -(~vec2<i32>(global1.a.d.x, -1212i)), global1.a.e), func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(956f, 627f) - _wgslsmith_f_op_f32(1200f + -2150f)), func_1(_wgslsmith_f_op_f32(sign(-941f)), global1.a).a), Struct_2(Struct_1(!global1.a.a, min(vec2<i32>(0i, -1i), global1.a.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.c.x, global1.a.c.x) + vec2<f32>(1714f, global1.a.c.x)), func_1(global1.a.e.x, global1.a).a.d, global1.a.e))));
    global0 = array<vec2<u32>, 29>();
    let var_2 = func_1(global1.a.e.x, var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~var_0.x));
}

