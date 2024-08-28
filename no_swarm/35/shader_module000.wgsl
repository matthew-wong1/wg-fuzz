struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 18>;

var<private> global1: u32;

var<private> global2: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec2<u32>(1u, 1u), true), Struct_2(vec2<u32>(21721u, 85544u), true), Struct_2(vec2<u32>(1u, 6402u), false), Struct_2(vec2<u32>(4294967295u, 24956u), false), Struct_2(vec2<u32>(1u, 4294967295u), false), Struct_2(vec2<u32>(6364u, 0u), true), Struct_2(vec2<u32>(1u, 4294967295u), false), Struct_2(vec2<u32>(37322u, 0u), true), Struct_2(vec2<u32>(1u, 48167u), false), Struct_2(vec2<u32>(0u, 0u), false), Struct_2(vec2<u32>(30008u, 35421u), false), Struct_2(vec2<u32>(0u, 0u), true), Struct_2(vec2<u32>(64688u, 37826u), true), Struct_2(vec2<u32>(4294967295u, 52048u), true), Struct_2(vec2<u32>(4294967295u, 43491u), true));

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1() -> f32 {
    return -202f;
}

fn func_3() -> f32 {
    let var_0 = Struct_1(~(~u_input.a >> ((_wgslsmith_sub_u32(u_input.d, 53208u) ^ _wgslsmith_sub_u32(4294967295u, 23872u)) % 32u)), vec3<u32>(28165u, _wgslsmith_add_u32(global3.a, u_input.d), _wgslsmith_add_u32(37171u, reverseBits(1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.c * 492f)))))));
    let var_1 = 8277i;
    var var_2 = abs(-40102i);
    global2 = array<Struct_2, 15>();
    let var_3 = Struct_2(select(~global3.b.yx, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~33463u, ~(~0u)), 18u)], false), (_wgslsmith_f_op_f32(1501f - var_0.c) <= _wgslsmith_f_op_f32(sign(-243f))) & true);
    return _wgslsmith_f_op_f32(400f + _wgslsmith_f_op_f32(trunc(global3.c)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(973f))) * _wgslsmith_f_op_f32(f32(-1f) * -1114f))), 1686f, _wgslsmith_f_op_f32(-global3.c));
    global3 = Struct_1(~61691u, _wgslsmith_mult_vec3_u32(~(~arg_1.zwy), ~_wgslsmith_div_vec3_u32(arg_1.zyy, global3.b)) ^ ~global3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-419f + _wgslsmith_f_op_f32(func_3())) - -641f));
    global1 = 13714u;
    let var_1 = vec2<u32>(4294967295u, ~_wgslsmith_clamp_u32(10402u, 1u, global3.b.x));
    global2 = array<Struct_2, 15>();
    return Struct_2(select(~vec2<u32>(_wgslsmith_mult_u32(u_input.d, global3.b.x), max(1u, 34759u)), vec2<u32>(~39444u, u_input.a), true), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.c;
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-960f, global3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c) * -251f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(global3.c * global3.c), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(min(global3.c, global3.c))))))), countOneBits(vec4<u32>(0u, 29749u, reverseBits(4294967295u), ~_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(7574u, 18u)]))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_1()), global3.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c, global3.c)))))), vec4<f32>(_wgslsmith_f_op_f32(485f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.c)))), 366f, -1173f, 598f));
    let var_2 = Struct_1(global3.a, _wgslsmith_div_vec3_u32(select(vec3<u32>(622u, 1u, abs(4615u)), vec3<u32>(~var_1.a.x, ~u_input.d, 72504u), !func_2(vec3<f32>(1139f, global3.c, global3.c), vec4<u32>(0u, var_1.a.x, global3.b.x, var_1.a.x), vec2<f32>(global3.c, global3.c), vec4<f32>(-816f, global3.c, global3.c, 489f)).b), vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~global3.b, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 53280u, var_1.a.x), vec3<u32>(4294967295u, 1u, 37530u))), global3.b.x)), global3.c);
    var var_3 = all(vec2<bool>(var_1.b, true));
    var_3 = any(!(!(!select(vec3<bool>(false, false, var_1.b), vec3<bool>(var_1.b, false, true), true))));
    global1 = ~124071u;
    global0 = array<vec2<u32>, 18>();
    global0 = array<vec2<u32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(-min(-2147483647i, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.c.x), u_input.c.zy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.c), -1923f) + -761f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2143f * 358f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c + -897f))))), ~0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, global3.c) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, -1101f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1290f, var_2.c) - vec2<f32>(var_2.c, var_2.c))))));
}

