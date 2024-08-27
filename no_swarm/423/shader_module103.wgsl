struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: array<Struct_1, 11>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(500f + -379f), _wgslsmith_f_op_f32(243f - -113f)) * 1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1326f * 189f), _wgslsmith_f_op_f32(min(-924f, -486f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-141f - 645f) - _wgslsmith_f_op_f32(trunc(-127f)))))) + 1261f);
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1508f, var_0)), vec2<f32>(var_0, var_0), !vec2<bool>(arg_0, true))))))));
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(-(~(~u_input.d.x)), 1i), _wgslsmith_mult_i32(-(max(u_input.a, u_input.d.x) ^ firstTrailingBit(-2147483647i)), 2147483647i), _wgslsmith_dot_vec2_i32(u_input.d, -abs(u_input.b.wy)));
    var var_3 = ~(_wgslsmith_mod_u32(~3978u, arg_1.x) >> (reverseBits(4294967295u | arg_1.x) % 32u));
    let var_4 = arg_0;
    return firstLeadingBit(countOneBits(-var_2.x & _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_2.x, var_2.x, u_input.a, var_2.x)), u_input.b)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> vec2<i32> {
    global0 = array<u32, 23>();
    let var_0 = ~_wgslsmith_add_u32(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)], global0[_wgslsmith_index_u32(91121u, 23u)]), 0u), arg_0.b.x);
    var var_1 = 1i;
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(arg_0.a.zxy))));
    var_1 = ~func_3(true, arg_0.c >> (~(~vec3<u32>(var_0, 57083u, global0[_wgslsmith_index_u32(arg_0.c.x, 23u)])) % vec3<u32>(32u)));
    return -_wgslsmith_mod_vec2_i32(vec2<i32>(-11374i, arg_0.e.x), abs(countOneBits(vec2<i32>(arg_0.e.x, arg_0.e.x))));
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.d;
    var_0 = func_2(global1[_wgslsmith_index_u32(countOneBits(max(1u, ~(1u | global0[_wgslsmith_index_u32(14297u, 23u)]))), 11u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1102f, -313f) - vec2<f32>(1336f, -167f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-2086f, -839f)), _wgslsmith_f_op_f32(-212f + 1000f)))));
    let var_1 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 11u)];
    global0 = array<u32, 23>();
    let var_2 = global0[_wgslsmith_index_u32(~1u, 23u)];
    return Struct_2(var_1.a.zx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    let var_0 = func_1();
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-824f)))));
    let var_2 = _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(691f * _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(func_1().a.x + _wgslsmith_f_op_f32(round(-1824f))))));
    var var_3 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(reverseBits(abs(global0[_wgslsmith_index_u32(1u, 23u)])), ~4294967295u) << (_wgslsmith_div_u32(max(~0u, _wgslsmith_add_u32(0u, u_input.c.x)), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~u_input.c.x, 23u)], u_input.e >> (90339u % 32u))) % 32u), 1u);
    var var_4 = firstTrailingBit(_wgslsmith_div_i32(~(~abs(26073i)), _wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec4_i32(~u_input.b, u_input.b >> (vec4<u32>(u_input.e, 1u, u_input.c.x, global0[_wgslsmith_index_u32(112789u, 23u)]) % vec4<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_u32(u_input.c, u_input.c >> (countOneBits(u_input.c) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_add_i32(u_input.d.x, -32922i), 29422i, u_input.b.x) | firstTrailingBit(~vec3<i32>(u_input.a, u_input.b.x, u_input.d.x)), min(u_input.a, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i) ^ u_input.b.wx, -u_input.b.ww)), vec4<u32>(max(u_input.c.x, ~global0[_wgslsmith_index_u32(1u, 23u)]), _wgslsmith_div_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], _wgslsmith_sub_u32(4294967295u, u_input.e)), 39188u), max(_wgslsmith_mult_u32(25702u, 0u) << (global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30457u, 23u)], 23u)], 23u)] % 32u), firstTrailingBit(firstTrailingBit(46714u))), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.c.x ^ u_input.e, 23u)], 23u)] & 1u));
}

