struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(Struct_1(1i, 1u, false), -1373f, 113140u, vec2<bool>(true, true)), Struct_3(31709u, vec2<u32>(1u, 4294967295u), Struct_1(1i, 54726u, true)));

var<private> global1: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32) -> vec4<u32> {
    global1 = u_input.a;
    var var_0 = !(!select(select(arg_0.yzx, arg_0.xyz, global0.a.a.c), arg_0.zxx, global0.b.c.c && true));
    var var_1 = global0.a.b;
    var_0 = !arg_0.wyy;
    let var_2 = !any(select(!arg_0, select(arg_0, arg_0, !arg_0.x), select(select(arg_0, vec4<bool>(false, true, false, false), false), select(vec4<bool>(true, global0.a.d.x, false, false), arg_0, arg_0), global0.b.c.c)));
    return ~reverseBits(~vec4<u32>(45784u, u_input.a >> (29525u % 32u), u_input.a, ~u_input.a));
}

fn func_2() -> bool {
    var var_0 = ~select(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(global0.a.c, 1u, u_input.a, 1u)), vec4<u32>(global0.a.a.b, 6132u, u_input.a, 49590u) ^ vec4<u32>(u_input.a, global0.a.a.b, u_input.a, global0.a.c), ~vec4<u32>(global0.a.a.b, global0.a.a.b, u_input.a, 21871u)), firstTrailingBit(vec4<u32>(0u, u_input.a, 1u, global0.b.a)), global0.a.a.c) ^ _wgslsmith_div_vec4_u32(vec4<u32>(abs(1u) & _wgslsmith_div_u32(u_input.a, global0.b.b.x), ~(~28861u), 0u, ~countOneBits(4294967295u)), vec4<u32>(_wgslsmith_mod_u32(~global0.a.a.b, _wgslsmith_div_u32(u_input.a, u_input.a)), u_input.a, min(1u, ~43907u), 51231u));
    let var_1 = min(abs(_wgslsmith_mod_vec4_u32(func_3(vec4<bool>(false, false, global0.b.c.c, global0.a.a.c), global0.a.b) | vec4<u32>(var_0.x, 86974u, var_0.x, 4294967295u), vec4<u32>(global0.a.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a), vec4<u32>(u_input.a, global0.b.c.b, global0.a.a.b, 1u)), 1u, _wgslsmith_sub_u32(32831u, var_0.x)))), _wgslsmith_div_vec4_u32(~(~vec4<u32>(var_0.x, 16140u, 0u, 34691u) & _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, 0u, u_input.a), vec4<u32>(74887u, u_input.a, 117444u, 19535u))), ~vec4<u32>(global0.a.a.b, _wgslsmith_mod_u32(var_0.x, global0.a.c), u_input.a, 14699u & var_0.x)));
    var var_2 = -(~1i);
    let var_3 = global0.b.c;
    global0 = Struct_4(global0.a, global0.b);
    return !global0.a.d.x;
}

fn func_1() -> Struct_4 {
    let var_0 = !((func_2() | global0.b.c.c) && all(vec2<bool>(true, false)));
    global1 = ~u_input.a;
    var var_1 = Struct_3(u_input.a, ~vec2<u32>(_wgslsmith_mod_u32(~u_input.a, global0.a.c), select(u_input.a, ~30473u, any(vec3<bool>(false, false, global0.b.c.c)))), global0.a.a);
    var_1 = global0.b;
    var var_2 = global0.a.b < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.b - -533f));
    return Struct_4(global0.a, Struct_3(_wgslsmith_sub_u32(select(global0.a.c, 0u & var_1.a, false), ~global0.b.a), vec2<u32>(~(global0.a.c << (var_1.b.x % 32u)), 0u >> (u_input.a % 32u)), global0.b.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global1 = select(countOneBits(~u_input.a | func_3(vec4<bool>(false, false, global0.b.c.c, global0.a.d.x), -501f).x), u_input.a, true) ^ _wgslsmith_add_u32(u_input.a, 29464u);
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.a.b, global0.a.b))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(973f, 1563f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-540f, 329f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.b, -755f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(387f, 168f) * vec2<f32>(global0.a.b, global0.a.b))))), global0.a.d.x)));
    let var_1 = ~vec4<i32>(u_input.b.x, i32(-1i) * -7815i, -2147483647i, 2449i);
    var var_2 = vec4<bool>(!(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) != func_1().a.b), any(!(!vec3<bool>(global0.a.a.c, true, global0.b.c.c))), true, select(!global0.b.c.c, false, true));
    let x = u_input.a;
    s_output = StorageBuffer(-var_1 & var_1, vec4<u32>(~global0.a.a.b, 75385u, firstTrailingBit(~(~global0.b.b.x)), 18839u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -103f), _wgslsmith_f_op_f32(floor(-1182f)))))), global0.b.b, _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(12584u, u_input.a), firstTrailingBit(~vec2<u32>(u_input.a, 4294967295u))), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(global0.b.b, global0.b.b), global0.b.b) ^ select(global0.b.b << (global0.b.b % vec2<u32>(32u)), vec2<u32>(50938u, 40682u), true), _wgslsmith_mult_vec2_u32(vec2<u32>(select(u_input.a, 1u, false), 4294967295u), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 4294967295u), global0.b.b, global0.b.b)))));
}

