struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

var<private> global2: Struct_3 = Struct_3(vec4<f32>(-297f, -1005f, 1000f, -2175f), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(true, false, false, false)));

var<private> global3: i32 = i32(-2147483648);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = i32(-1i) * -u_input.a.x;
    var var_1 = -44126i;
    let var_2 = arg_0.x;
    global3 = max(-2147483647i, u_input.a.x);
    return Struct_2(!(!(!vec4<bool>(false, false, true, global0.a.x))));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(global1.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, global2.a.x) + global1.b)))) - vec2<f32>(_wgslsmith_div_f32(global1.b.x, _wgslsmith_div_f32(global1.b.x, -343f)), _wgslsmith_f_op_f32(-global1.b.x))), global1.c, false);
    global3 = u_input.a.x;
    let var_1 = vec2<f32>(global2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-264f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -166f)), ~global1.c.x < global1.c.x)), global2.a.x));
    var var_2 = vec4<bool>((global2.b.a.x & !var_0.d) & true, global1.d & (true | global0.a.x), select(all(select(vec4<bool>(var_0.d, global2.c.a.x, global2.c.a.x, true), func_1(global2.c.a).a, false)), !func_1(select(global2.c.a, vec4<bool>(var_0.d, false, false, global0.a.x), global2.b.a)).a.x, var_0.d), any(vec3<bool>(true, any(!global0.a), true)));
    let var_3 = u_input.a.x;
    return _wgslsmith_mod_u32(_wgslsmith_sub_u32(global1.c.x, firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, var_0.c.x, var_0.c.x), var_0.c), _wgslsmith_mult_u32(54596u, var_0.c.x)))), 60502u);
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> vec2<f32> {
    let var_0 = ~(~vec3<u32>(global1.a, ~global1.c.x, ~global1.c.x)) >> (global1.c % vec3<u32>(32u));
    let var_1 = 467f;
    var var_2 = -70881i;
    var var_3 = arg_0.x;
    var var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, global2.a.x, -1000f, global1.b.x) * vec4<f32>(-1243f, global1.b.x, 1000f, global2.a.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2.a, vec4<f32>(global2.a.x, global2.a.x, global2.a.x, var_1)))))), global2.b, global2.b);
    return _wgslsmith_f_op_vec2_f32(round(global2.a.xy));
}

fn func_2() -> StorageBuffer {
    var var_0 = !global2.b.a.x;
    global0 = Struct_2(!(!(!func_1(global0.a).a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-1335f, -275f)), _wgslsmith_f_op_f32(-968f + 174f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global1.b))))) + _wgslsmith_f_op_vec2_f32(func_4(min(vec4<i32>(u_input.a.x << (global1.c.x % 32u), u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), 0i), u_input.a), ~func_3() <= firstTrailingBit(0u))));
    global1 = Struct_1(reverseBits(_wgslsmith_mod_u32(global1.c.x, ~global1.c.x)), global1.b, ~abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(41545u, global1.a, global1.a), global1.c)), !(!global2.c.a.x));
    let var_2 = -2147483647i;
    return StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(global2.a.www)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(429f, var_1.x, 657f) - vec3<f32>(-419f, -1319f, 1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(570f, -1490f, global2.a.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, 652f, global1.b.x))) * vec3<f32>(_wgslsmith_f_op_f32(global2.a.x + -308f), _wgslsmith_f_op_vec2_f32(func_4(vec4<i32>(var_2, 6131i, 91896i, -1i), global0.a.x)).x, _wgslsmith_f_op_f32(-948f * var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global2.a, func_1(select(!global2.c.a, vec4<bool>(global0.a.x, all(vec4<bool>(false, global1.d, global1.d, global1.d)), all(global0.a.zxw), !global2.c.a.x), global2.b.a)), func_1(vec4<bool>(_wgslsmith_f_op_f32(ceil(-1000f)) <= _wgslsmith_f_op_f32(-global1.b.x), global1.d, all(vec4<bool>(true, false, true, global0.a.x)), global2.b.a.x)));
    let var_1 = var_0;
    var var_2 = Struct_2(global2.b.a);
    global2 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-628f, global2.a.x, 602f, -238f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-956f, global1.b.x, 568f, -1300f) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a.x, 1212f, global2.a.x, -1790f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, var_0.a.x, global2.a.x, var_1.a.x)) - var_1.a), var_0.c.a)), var_1.c, Struct_2(vec4<bool>(var_1.b.a.x, true, global0.a.x, func_1(vec4<bool>(false, var_0.c.a.x, false, global0.a.x)).a.x)));
    global3 = 17294i;
    var_2 = var_0.c;
    var var_3 = 6246u;
    let x = u_input.a;
    s_output = func_2();
}

