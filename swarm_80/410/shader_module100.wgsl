struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: bool = false;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    global1 = any(vec2<bool>(true, all(vec4<bool>(true, false, select(false, false, false), true))));
    global1 = true;
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(109f, 275f, 1034f, -536f)));
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 22u)];
    let var_2 = var_1.e;
    return any(!vec4<bool>(false, !(u_input.b < u_input.b), false, true));
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(countOneBits(u_input.c), ~55877u), ~u_input.c), ~select(~vec2<u32>(0u, 86089u), vec2<u32>(1u, u_input.c), any(vec2<bool>(true, false)))) ^ _wgslsmith_mod_u32(0u, 4294967295u), 22u)];
    global0 = array<Struct_2, 22>();
    var var_1 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.d.a, var_0.c, -642f, -449f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1886f, -108f, var_0.b, var_0.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1393f, -729f, 358f, var_0.b))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.e.x, var_0.d.a, -129f, var_0.c), vec4<f32>(var_0.b, var_0.c, var_0.d.a, 1066f))))), Struct_1(_wgslsmith_div_f32(-2069f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * -337f) - _wgslsmith_div_f32(var_0.d.a, var_0.e.x)))));
    var_1 = Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(select(-260f, var_0.e.x, func_3())), 292f, _wgslsmith_f_op_f32(-128f * _wgslsmith_f_op_f32(f32(-1f) * -1008f))), _wgslsmith_f_op_vec4_f32(trunc(var_1.a))), var_0.d);
    var var_2 = var_0.a.yy;
    return global0[_wgslsmith_index_u32(var_0.a.x, 22u)];
}

fn func_1() -> vec2<i32> {
    let var_0 = max(u_input.a.x, -1i);
    let var_1 = func_2(var_0);
    let var_2 = vec2<bool>(~u_input.c > ((0u & u_input.c) >> (16793u % 32u)), true);
    global0 = array<Struct_2, 22>();
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(126f, var_1.e.x, var_1.e.x, -900f), vec4<f32>(var_1.c, 345f, 807f, -670f), vec4<bool>(false, false, var_2.x, true)))))))), func_2(_wgslsmith_dot_vec3_i32(u_input.a.xxy, u_input.a.zxw)).d);
    return -(u_input.a.xy & vec2<i32>(~(-14739i), _wgslsmith_div_i32(-u_input.a.x, _wgslsmith_sub_i32(var_0, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 22>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(269f, -1506f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1477f, 1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(663f, -104f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1663f, 173f), vec2<f32>(476f, 1553f), false))))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-477f, -1502f) - vec2<f32>(-545f, 159f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 1723f))), select(vec2<bool>(true, false), vec2<bool>(false, false), true)))))));
    global1 = false;
    global1 = !(!(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 56023u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 30011u), vec2<u32>(u_input.c, u_input.c))) < (20997u >> ((u_input.c ^ u_input.c) % 32u))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1519f)))), _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(~_wgslsmith_sub_i32(-3095i, -1i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(var_0.x * 2318f)) * _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1965f))))))), func_1(), countOneBits(~select(vec4<u32>(u_input.c, 15109u, 1u, u_input.c), vec4<u32>(u_input.c, 1u, 80961u, 1u), vec4<bool>(false, true, false, true))) ^ (min(vec4<u32>(u_input.c, 19180u, u_input.c, u_input.c) ^ vec4<u32>(u_input.c, u_input.c, u_input.c, 23174u), vec4<u32>(91570u, u_input.c, 10018u, u_input.c)) & ~vec4<u32>(1u, 42541u, 0u, u_input.c)), ~(~u_input.b) << (67037u % 32u));
}

