struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec4<u32>,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(false, false, true), vec3<bool>(true, false, false));

var<private> global2: Struct_3;

var<private> global3: array<Struct_2, 20>;

var<private> global4: vec2<f32>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> f32 {
    global0 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_clamp_u32(1u, 1u, ~global0.x), ~(~global0.x)), ~_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, global2.c, 0u), vec3<u32>(global0.x, global0.x, global0.x)) >> (_wgslsmith_div_vec3_u32(abs(vec3<u32>(global0.x, global2.c, 1u)), ~vec3<u32>(global2.c, 4294967295u, 4892u)) % vec3<u32>(32u))), vec3<u32>(~abs(firstLeadingBit(25590u)), ~0u, ~abs(~1u)));
    let var_0 = Struct_4(Struct_3(-abs(u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2418f, 1000f)), global0.x, _wgslsmith_f_op_f32(step(-386f, arg_0)), global2.e), 2147483647i, select(~min(~vec4<u32>(global0.x, global2.c, global2.c, 41233u), abs(vec4<u32>(25294u, 0u, global0.x, 0u))), ~vec4<u32>(global2.c >> (global2.c % 32u), global2.c, 52014u, global2.c), global2.e.a));
    let var_1 = 1i;
    global3 = array<Struct_2, 20>();
    let var_2 = _wgslsmith_f_op_f32(step(-913f, _wgslsmith_f_op_f32(-var_0.a.b)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(1251f, _wgslsmith_f_op_f32(abs(-1416f)))))));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: f32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(125f, global2.b, -1377f, 180f) * vec4<f32>(arg_3, global4.x, arg_3, global4.x))))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-2390f)), _wgslsmith_f_op_f32(-1424f * 1000f), arg_3, _wgslsmith_div_f32(-264f, 115f)) * vec4<f32>(_wgslsmith_f_op_f32(global2.d - global2.b), _wgslsmith_f_op_f32(ceil(global4.x)), _wgslsmith_f_op_f32(arg_3 + -1000f), _wgslsmith_f_op_f32(func_3(-767f)))))));
    let var_1 = ~vec3<u32>(global2.c, global0.x, 26781u);
    var var_2 = !(arg_2.a | any(select(vec2<bool>(false, global2.e.a), vec2<bool>(false, false), select(vec2<bool>(true, global2.e.a), vec2<bool>(global2.e.a, global2.e.a), true))));
    var var_3 = Struct_3(arg_0, _wgslsmith_f_op_f32(trunc(-1501f)), ~0u, 1014f, Struct_1(any(vec4<bool>(global2.e.a, any(vec2<bool>(true, global2.e.a)), arg_2.a, true))));
    var var_4 = Struct_1(var_3.e.a);
    return vec4<u32>(_wgslsmith_mod_u32(~var_3.c, var_3.c), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 11760u), arg_1)), select(global0.x, _wgslsmith_add_u32(var_1.x, 10541u), true), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.c, 0u, 58866u, var_3.c), vec4<u32>(global2.c, 29505u, global0.x, arg_1.x)), global0.x), 58043u >> (~global2.c % 32u)), vec4<u32>(_wgslsmith_clamp_u32(firstTrailingBit(1u), _wgslsmith_add_u32(0u, var_1.x), 4294967295u), (var_3.c << (global2.c % 32u)) | ~38291u, ~22268u ^ (global2.c << (4294967295u % 32u)), abs(global2.c))), ~(~(~33321u)), _wgslsmith_add_u32(~reverseBits(var_3.c), var_3.c));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: i32) -> vec4<f32> {
    let var_0 = !all(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_2(-20063i, vec2<u32>(global0.x, global2.c), Struct_1(arg_0.a.e.a), global4.x), select(vec4<u32>(1u, 0u, global0.x, arg_0.c.x), arg_0.c, true)), 2u)]) | (true != any(select(select(vec4<bool>(true, arg_0.a.e.a, true, true), vec4<bool>(true, true, false, true), false), vec4<bool>(arg_0.a.e.a, false, false, global2.e.a), select(true, arg_0.a.e.a, true))));
    global2 = Struct_3(_wgslsmith_div_i32(i32(-1i) * -32876i, abs(i32(-1i) * -53712i)) ^ (select(_wgslsmith_dot_vec2_i32(vec2<i32>(-4725i, -14230i), vec2<i32>(-15700i, 15194i)), reverseBits(u_input.b.x), global0.x < 22270u) | 15225i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(255f * global4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -717f)) - _wgslsmith_f_op_f32(187f + 1284f)))), global0.x, _wgslsmith_f_op_f32(-1216f - _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b)))), arg_0.a.e);
    let var_1 = arg_0.c ^ _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(arg_0.c & vec4<u32>(global2.c, 32484u, 4294967295u, 103482u), ~vec4<u32>(global2.c, global2.c, 1u, 0u)), firstLeadingBit(firstTrailingBit(vec4<u32>(4294967295u, global0.x, 40710u, 0u))));
    global1 = array<vec3<bool>, 2>();
    global3 = array<Struct_2, 20>();
    return _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.x, -1993f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.d)), -1375f, -1169f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global4.x, -538f, global4.x, 1000f), vec4<f32>(global4.x, global4.x, global4.x, global4.x)) - vec4<f32>(global4.x, 689f, -1521f, -976f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_4(Struct_3(u_input.b.x, 1455f, global2.c, global4.x, global2.e), global2.a, vec4<u32>(1u, global0.x, global2.c, global2.c)), -2147483647i, 1i)) * vec4<f32>(-419f, -1010f, -755f, -1104f)) - vec4<f32>(_wgslsmith_f_op_f32(1101f - -981f), global4.x, _wgslsmith_div_f32(global2.b, -1292f), _wgslsmith_f_op_f32(global2.b - global4.x)))), vec4<f32>(_wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.b)))), 338f, 247f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b, -231f))))));
    global4 = vec2<f32>(_wgslsmith_f_op_vec4_f32(func_1(Struct_4(Struct_3(~1i, _wgslsmith_f_op_f32(global4.x + 109f), ~0u, _wgslsmith_f_op_f32(round(global4.x)), Struct_1(global2.e.a)), _wgslsmith_clamp_i32(u_input.b.x, select(global2.a, u_input.b.x, true), -1i), min(_wgslsmith_div_vec4_u32(vec4<u32>(global2.c, 0u, 0u, global2.c), vec4<u32>(4294967295u, global2.c, global2.c, global2.c)), vec4<u32>(0u, 55483u, global2.c, 4294967295u) & vec4<u32>(15316u, global0.x, 1u, 0u))), -22622i, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(1i, u_input.a, -9130i, 54062i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a, -64524i, global2.a, -66579i), vec4<i32>(global2.a, 1i, -2147483647i, u_input.a) | vec4<i32>(-7665i, global2.a, 0i, u_input.a))))).x, var_0.x);
    let var_1 = true;
    var var_2 = _wgslsmith_mod_vec2_u32(global0.yz, ~global0.zz);
    let var_3 = -31269i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-696f + global2.d) + -2732f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -259f), -1002f) - var_0.x) + -901f), vec4<u32>(~(~0u), 1u, var_2.x, abs(global2.c)), ~var_2.x);
}

