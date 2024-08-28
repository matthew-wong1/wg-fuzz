struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -101f;

var<private> global1: array<vec2<f32>, 4>;

var<private> global2: array<u32, 18> = array<u32, 18>(72898u, 0u, 0u, 17090u, 4294967295u, 4294967295u, 1u, 18539u, 43515u, 0u, 16263u, 18639u, 14073u, 0u, 4294967295u, 1u, 1u, 0u);

var<private> global3: u32 = 0u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_5) -> u32 {
    let var_0 = arg_2.d;
    global0 = _wgslsmith_f_op_f32(-679f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.d.x, -816f, false))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1698f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(309f - arg_1.d.x)) - _wgslsmith_f_op_f32(-arg_2.e.d.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -293f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-518f - arg_1.d.x) - arg_2.b.x), -127f))));
    let var_2 = !any(!(!(!vec4<bool>(arg_2.a.b, arg_1.b, arg_1.b, true))));
    var var_3 = arg_3.c;
    return ~max(arg_2.e.a.x, firstTrailingBit(43081u));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    var var_0 = arg_0;
    var var_1 = Struct_4(arg_1);
    var_0 = _wgslsmith_f_op_f32(-arg_0);
    var var_2 = _wgslsmith_add_u32(~(~(func_3(Struct_2(4294967295u), arg_1, Struct_3(Struct_1(arg_1.a, true, 58424u, var_1.a.d), var_1.a.d, u_input.c, Struct_2(4294967295u), Struct_1(vec2<u32>(0u, var_1.a.a.x), var_1.a.b, 48060u, var_1.a.d)), Struct_5(vec3<i32>(0i, -60727i, -13893i), 48655u, vec3<i32>(u_input.c, u_input.c, u_input.c))) & (0u | arg_1.c))), ~1u);
    let var_3 = Struct_4(Struct_1(~vec2<u32>(firstLeadingBit(4294967295u), ~u_input.a), true, min(arg_1.c | 62931u, _wgslsmith_sub_u32(0u, global2[_wgslsmith_index_u32(u_input.a, 18u)])) & ~_wgslsmith_mod_u32(0u, u_input.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_1.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.d)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_0))))))));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(func_2(-2010f, Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(13909u, 18u)], 2234u), true, 24363u, vec4<f32>(-480f, 1279f, 1352f, 103f)), vec4<bool>(true, true, true, true))), -1491f))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -200f))))), -124f, _wgslsmith_div_f32(-127f, 273f));
    let var_1 = Struct_2(1u);
    global0 = -1000f;
    var var_2 = any(vec4<bool>(true, true, true, true)) && (u_input.a != 102902u);
    return Struct_3(Struct_1(_wgslsmith_clamp_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 18047u)), vec2<u32>(var_1.a, 1u), true), ~(~vec2<u32>(u_input.a, u_input.a)), vec2<u32>(global2[_wgslsmith_index_u32(u_input.a | u_input.a, 18u)], 1u)), false, ~4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1f, -1475f, _wgslsmith_f_op_f32(var_0.x + var_0.x)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -548f, -751f, 620f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, -159f, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, 1604f))))))), 2147483647i, Struct_2(u_input.a), Struct_1(select(abs(vec2<u32>(global2[_wgslsmith_index_u32(var_1.a, 18u)], var_1.a)) & vec2<u32>(var_1.a, 4294967295u), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(17506u, u_input.a), vec2<u32>(82318u, 0u)), abs(global2[_wgslsmith_index_u32(83460u, 18u)])), false), any(!select(vec2<bool>(true, false), vec2<bool>(true, false), false)), ~reverseBits(~59948u), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1470f), _wgslsmith_f_op_f32(var_0.x * -156f), _wgslsmith_div_f32(var_0.x, 1763f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-852f, var_0.x, var_0.x, var_0.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(321f, var_0.x, -882f, -532f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 4>();
    var var_0 = u_input.c;
    global1 = array<vec2<f32>, 4>();
    global1 = array<vec2<f32>, 4>();
    let var_1 = func_1();
    let var_2 = -1i;
    let var_3 = _wgslsmith_div_i32(func_1().c | -7872i, abs(i32(-1i) * -_wgslsmith_mult_i32(var_1.c, -29884i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.a.x, abs(var_1.a.a));
}

