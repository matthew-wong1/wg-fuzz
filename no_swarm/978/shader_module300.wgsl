struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_5;

var<private> global2: array<vec4<u32>, 19>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -570f, global0.x, global1.a.x), vec4<f32>(-1000f, 1521f, global1.b.x, global1.b.x), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)))) + vec4<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(global0.x - global0.x), global1.b.x, _wgslsmith_f_op_f32(188f * 692f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-630f + -1000f), _wgslsmith_f_op_f32(-1123f - -1185f), global1.a.x, global0.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1627f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a.x, -216f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * -1412f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(305f, global1.a.x))))));
    global0 = vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(exp2(var_0.x)));
    var var_1 = arg_1;
    let var_2 = Struct_1(u_input.b, 343f, true, ~(vec4<i32>(~u_input.d.x, i32(-1i) * -2147483647i, u_input.b.x, abs(0i)) ^ vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(-55599i, u_input.d.x, 1i, u_input.d.x)), 1i, 13705i & u_input.b.x, u_input.d.x)));
    var var_3 = Struct_2(!vec2<bool>(any(vec3<bool>(var_2.c, true, false)), all(select(vec3<bool>(false, false, false), vec3<bool>(var_2.c, var_2.c, true), vec3<bool>(var_2.c, var_2.c, false)))));
    return 1i;
}

fn func_2(arg_0: Struct_3) -> u32 {
    global1 = Struct_5(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-714f, _wgslsmith_f_op_f32(exp2(arg_0.a.x)), _wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a + vec3<f32>(global1.a.x, global0.x, 2044f)) * global1.a)))), _wgslsmith_f_op_vec2_f32(-arg_0.a), ~15494u);
    var var_0 = vec3<bool>(true, true, -7525i >= _wgslsmith_mult_i32(40414i, func_3(vec2<u32>(30523u, 0u), _wgslsmith_mult_u32(4294967295u, global1.c))));
    global2 = array<vec4<u32>, 19>();
    global2 = array<vec4<u32>, 19>();
    return min(u_input.c.x, firstLeadingBit(~countOneBits(_wgslsmith_sub_u32(74919u, 31378u))));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: i32, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = u_input.b;
    var_0 = firstLeadingBit(vec2<i32>(-1i) * -(~u_input.b));
    global2 = array<vec4<u32>, 19>();
    return arg_1;
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_4(func_4(~(~func_2(Struct_3(global1.b, Struct_2(vec2<bool>(false, false)), global1.a.x))), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(990f * global1.a.x), _wgslsmith_f_op_f32(-global0.x)), Struct_2(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(611f)))), ~2147483647i, u_input.d.xx));
    let var_1 = ~(_wgslsmith_add_vec2_i32(select(-u_input.b, u_input.d.wx, all(vec4<bool>(true, false, var_0.a.b.a.x, false))), ~max(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(15110i, u_input.d.x))) ^ u_input.d.yx);
    let var_2 = ~select(countOneBits(countOneBits(~vec3<u32>(global1.c, u_input.a, u_input.a))), abs(~firstTrailingBit(vec3<u32>(global1.c, global1.c, global1.c))), select(vec3<bool>(var_0.a.b.a.x, true, var_0.a.b.a.x || var_0.a.b.a.x), select(select(vec3<bool>(var_0.a.b.a.x, true, var_0.a.b.a.x), vec3<bool>(true, var_0.a.b.a.x, true), vec3<bool>(var_0.a.b.a.x, var_0.a.b.a.x, var_0.a.b.a.x)), !vec3<bool>(var_0.a.b.a.x, false, true), select(vec3<bool>(true, var_0.a.b.a.x, var_0.a.b.a.x), vec3<bool>(true, false, false), var_0.a.b.a.x)), _wgslsmith_clamp_i32(2801i, -58690i, var_1.x) >= 1i));
    global1 = Struct_5(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(global1.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, 999f, -1919f))), vec3<f32>(355f, global0.x, 1188f)))))), _wgslsmith_f_op_vec2_f32(max(global1.a.yy, var_0.a.a)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_2, ~var_2) << (var_2 % vec3<u32>(32u)), vec3<u32>(4294967295u, var_2.x, ~1u)));
    var var_3 = Struct_1(max(min(u_input.b, ~var_1), max(vec2<i32>(2147483647i, -15723i), abs(vec2<i32>(u_input.b.x, 2147483647i)))) | u_input.d.xx, global1.a.x, false, u_input.d);
    return Struct_5(_wgslsmith_f_op_vec3_f32(global1.a + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a - global1.a) * _wgslsmith_f_op_vec3_f32(min(global1.a, vec3<f32>(var_3.b, global0.x, global0.x)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1439f), _wgslsmith_div_f32(global1.a.x, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1249f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.yy) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b, var_3.b)) - _wgslsmith_div_vec2_f32(global1.b, vec2<f32>(-732f, global1.b.x))))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = func_1();
    var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.b.x, 599f, global1.a.x), vec3<f32>(410f, global0.x, global0.x)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(754f, var_0.a.x, -1040f), global1.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, var_0.b.x, global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2079f, global1.a.x, global0.x) - var_0.a))))), func_1().b, _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, firstLeadingBit(0u)), u_input.c));
    global2 = array<vec4<u32>, 19>();
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, ~u_input.c), 19u)]);
}

