struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_2,
    d: vec3<i32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
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

var<private> global0: vec4<i32> = vec4<i32>(-57279i, -1i, 17627i, 2147483647i);

var<private> global1: array<vec3<f32>, 16>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32) -> i32 {
    global1 = array<vec3<f32>, 16>();
    global1 = array<vec3<f32>, 16>();
    global1 = array<vec3<f32>, 16>();
    global1 = array<vec3<f32>, 16>();
    global1 = array<vec3<f32>, 16>();
    return -27298i;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_1(-vec2<i32>(i32(-1i) * -global0.x, ~(-global0.x)), ~vec2<i32>(-2147483647i, -1i), _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(~(1u >> ((arg_1 | 45272u) % 32u)), 16u)]));
    let var_1 = Struct_3(false, ~(~reverseBits(vec2<u32>(77717u, arg_1) >> (vec2<u32>(arg_1, u_input.c.x) % vec2<u32>(32u)))), Struct_2(~u_input.d, arg_1, _wgslsmith_f_op_vec2_f32(max(var_0.c.xx, var_0.c.xz)), vec4<bool>(true, true, true, true)), select(vec3<i32>(_wgslsmith_mult_i32(-2147483647i, arg_2.x), _wgslsmith_mult_i32(i32(-1i) * -56669i, u_input.e.x), global0.x), u_input.e.xzw, !arg_0.x), -429f);
    global1 = array<vec3<f32>, 16>();
    global0 = vec4<i32>(abs(_wgslsmith_mult_i32(_wgslsmith_mod_i32(19175i | global0.x, _wgslsmith_mod_i32(var_0.b.x, 1i)), countOneBits(var_1.d.x) & _wgslsmith_mult_i32(2147483647i, var_1.d.x))), -_wgslsmith_div_i32(-2147483647i, var_0.b.x), 0i, -(max(global0.x ^ u_input.a.x, -101091i) << (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1), var_1.c.a.xz), 72456u << (arg_1 % 32u)) % 32u)));
    global0 = ~vec4<i32>(~(-1i), var_1.d.x, -(arg_2.x ^ u_input.e.x), ~(func_3(var_1, var_1.c, 1i) & ~arg_2.x));
    return Struct_3(true, ~(~abs(_wgslsmith_mult_vec2_u32(u_input.d.zy, vec2<u32>(15838u, 4294967295u)))), var_1.c, countOneBits(vec3<i32>(-1i << (1u % 32u), -_wgslsmith_dot_vec2_i32(arg_2.xz, u_input.e.wx), _wgslsmith_mod_i32(-1i, var_0.b.x << (var_1.b.x % 32u)))), _wgslsmith_f_op_f32(f32(-1f) * -744f));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(select(vec3<bool>(true, true, true), select(vec3<bool>(select(false, true, true), true, u_input.a.x >= u_input.e.x), vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, false, false, true)), false), !(0u < u_input.b.x)), true), reverseBits(~(u_input.b.x | ~u_input.b.x)), global0.zzw);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-634f * 582f), -252f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-300f))))) * var_0.e);
    let var_2 = _wgslsmith_f_op_f32(round(var_0.e));
    let var_3 = 68938i;
    var var_4 = func_2(!var_0.c.d.yzz, var_0.c.b, countOneBits(var_0.d)).c;
    return Struct_2(u_input.b, 0u, vec2<f32>(_wgslsmith_div_f32(402f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2 * var_1), -810f))), var_4.c.x), !(!var_0.c.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(var_0.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1().c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -656f) * _wgslsmith_f_op_f32(abs(-325f)))))));
    var_1 = vec2<f32>(1447f, _wgslsmith_f_op_f32(457f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * _wgslsmith_f_op_f32(-var_0.c.x))));
    global1 = array<vec3<f32>, 16>();
    var var_2 = ~var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b);
}

