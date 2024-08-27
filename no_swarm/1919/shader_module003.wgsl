struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(0i, vec4<bool>(false, true, false, false), Struct_1(vec2<u32>(4294967295u, 1u), true, vec4<f32>(1150f, 1269f, -254f, -353f)), true, vec2<u32>(4294967295u, 0u));

var<private> global2: array<vec3<bool>, 30>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = !(!global1.c.b);
    let var_1 = global0.c;
    let var_2 = _wgslsmith_mult_vec2_i32(-u_input.a.ww, vec2<i32>(-35490i, ~global1.a));
    let var_3 = Struct_2(_wgslsmith_div_i32(1i, -min(global1.a, var_2.x) & 96180i), vec4<bool>(all(!select(global0.b.ww, global1.b.zz, global1.b.xz)), false, !(select(true, global0.b.x, true) & var_1.b), global1.d), Struct_1(_wgslsmith_mod_vec2_u32(~select(var_1.a, global0.e, var_1.b), reverseBits(global0.e)), global0.d, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.c.c.x - var_1.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -860f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-765f - global1.c.c.x))), -1748f)), !(global0.b.x && true), vec2<u32>(67995u, ~24839u));
    let var_4 = _wgslsmith_f_op_f32(global1.c.c.x - _wgslsmith_f_op_f32(f32(-1f) * -956f));
    return _wgslsmith_add_i32(u_input.a.x, global1.a);
}

fn func_2() -> u32 {
    global1 = Struct_2(-(i32(-1i) * -11983i) ^ -abs(func_3()), global0.b, global0.c, true, global1.e);
    return global0.e.x;
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = global0.c;
    return Struct_2(u_input.a.x, global0.b, Struct_1(select(countOneBits(vec2<u32>(1u, 1u)), max(global1.c.a, vec2<u32>(global1.c.a.x, 0u)) << (_wgslsmith_add_vec2_u32(vec2<u32>(global1.c.a.x, var_0.a.x), global1.e) % vec2<u32>(32u)), vec2<bool>(any(global1.b.xxw), any(vec3<bool>(true, false, false)))), true, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.c.x, global0.c.c.x, global0.c.c.x, var_0.c.x) - var_0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, global1.c.c.x) + vec4<f32>(global0.c.c.x, 718f, global1.c.c.x, -759f)))))), all(vec4<bool>(any(global0.b.xx), false, !var_0.b, func_2() == global0.c.a.x)), vec2<u32>(~91640u, 19272u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.yy;
    let var_1 = vec3<bool>(global0.d, global0.c.b, true);
    global1 = func_1(_wgslsmith_f_op_f32(global0.c.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.c.x - global0.c.c.x) * _wgslsmith_f_op_f32(global0.c.c.x - global0.c.c.x)))));
    global2 = array<vec3<bool>, 30>();
    let var_2 = ~(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, global0.e.x), vec3<u32>(global0.e.x, global1.e.x, global1.c.a.x), vec3<u32>(0u, 0u, 22208u)), ~vec3<u32>(50032u, global1.c.a.x, global1.c.a.x), select(global2[_wgslsmith_index_u32(124226u, 30u)], global0.b.xww, global2[_wgslsmith_index_u32(34646u, 30u)])) >> (max(~vec3<u32>(89780u, global1.c.a.x, 26533u), ~vec3<u32>(global0.c.a.x, global1.e.x, global0.c.a.x)) % vec3<u32>(32u))) | firstTrailingBit(~(vec3<u32>(global0.e.x, global0.c.a.x, global1.e.x) ^ vec3<u32>(35841u, 15930u, global0.c.a.x)) ^ ~reverseBits(vec3<u32>(global0.c.a.x, 18168u, 1u)));
    global0 = func_1(232f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xy >> (global0.c.a % vec2<u32>(32u)), select(~vec3<u32>(1u, ~1u, countOneBits(1u)), countOneBits(var_2 | ~var_2), !(!(!var_1.x))), _wgslsmith_mult_i32(global0.a, -func_1(2561f).a), global1.c.c.x, -1196f);
}

