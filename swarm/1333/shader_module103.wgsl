struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_1, 26>;

var<private> global2: f32 = -141f;

var<private> global3: array<Struct_1, 22>;

var<private> global4: vec2<i32> = vec2<i32>(-1i, 2147483647i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_sub_i32(23311i, abs(global4.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(966f + -446f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-958f)) * _wgslsmith_f_op_f32(-259f + -888f))), -549f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1123f)))));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    var var_0 = 1490f;
    let var_1 = ~_wgslsmith_div_vec2_i32(countOneBits(firstLeadingBit(vec2<i32>(global4.x, 0i))), vec2<i32>(0i, global4.x) ^ countOneBits(vec2<i32>(global4.x, 8439i))) >> (vec2<u32>(reverseBits(_wgslsmith_dot_vec3_u32(~u_input.c.wyz, vec3<u32>(4294967295u, u_input.c.x, 1u))), ~(~u_input.d.x >> (_wgslsmith_sub_u32(32807u, u_input.a.x) % 32u))) % vec2<u32>(32u));
    global0 = _wgslsmith_clamp_u32(~firstTrailingBit(3043u), ~_wgslsmith_add_u32(~u_input.c.x ^ 1u, ~u_input.a.x), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(59863u, u_input.a.x), ~u_input.d.x), ~(~1u)) | ~(~u_input.a.x));
    var_0 = _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_mult_u32(~u_input.a.x, u_input.d.x), u_input.c.x), 26u)]));
    let var_2 = var_1.x;
    return -1000f;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> vec4<bool> {
    global0 = 1u;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1162f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(vec2<bool>(false, false))), -1286f, arg_1 <= arg_1)) + _wgslsmith_f_op_f32(abs(arg_1))))));
    var var_0 = global3[_wgslsmith_index_u32(55204u, 22u)];
    let var_1 = global4.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -724f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-arg_1)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(672f)))), arg_1, arg_1), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(-249f)), _wgslsmith_f_op_f32(-arg_1), arg_1, -1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-680f, arg_1, arg_1, 1123f)) * vec4<f32>(-1206f, -219f, 1919f, -985f)), _wgslsmith_dot_vec3_u32(arg_0.c, vec3<u32>(66990u, arg_0.c.x, u_input.b)) != ~u_input.b)), vec4<f32>(_wgslsmith_div_f32(1316f, _wgslsmith_f_op_f32(-arg_1)), -212f, _wgslsmith_f_op_f32(282f + arg_1), _wgslsmith_div_f32(-726f, arg_1))))));
    return vec4<bool>(all(vec2<bool>(arg_2, arg_2)), arg_2, arg_2, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, global4.x >= -1i), !select(false, false, true)), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), func_1(Struct_1(vec3<i32>(30336i, global4.x, u_input.e), vec3<i32>(global4.x, u_input.e, global4.x), u_input.c.yzz), 1242f, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, select(true, true, all(vec4<bool>(false, true, false, true))), true), !vec4<bool>(true, true, true, func_1(Struct_1(vec3<i32>(0i, u_input.e, u_input.e), vec3<i32>(global4.x, global4.x, 1i), vec3<u32>(u_input.a.x, u_input.b, u_input.d.x)), -2279f, true).x)));
    let var_1 = var_0.zzz;
    global3 = array<Struct_1, 22>();
    let var_2 = any(var_0.yx);
    let var_3 = global1[_wgslsmith_index_u32(u_input.c.x, 26u)];
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1183f)), _wgslsmith_div_f32(-1366f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(643f - -274f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_4.x, 1032f, 605f)))), min(global4.x, countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-540i, var_3.a.x, u_input.e), vec3<i32>(-8340i, 0i, -1i)), _wgslsmith_sub_vec3_i32(var_3.b, vec3<i32>(var_3.a.x, u_input.e, -2147483647i))))), abs(firstTrailingBit(_wgslsmith_add_vec4_u32(u_input.c, u_input.c))), countOneBits(firstLeadingBit(max(vec3<i32>(var_3.a.x, global4.x, global4.x), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, u_input.e, var_3.a.x), var_3.a)))), var_4.x);
}

