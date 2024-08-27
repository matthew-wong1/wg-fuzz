struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10>;

var<private> global1: vec4<f32> = vec4<f32>(-388f, 2086f, 633f, -1000f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_3) -> i32 {
    global0 = array<i32, 10>();
    var var_0 = 32026u;
    return countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(103557u, ~abs(~u_input.c)), 10u)]);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec3<u32>) -> f32 {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(f32(-1f) * -172f)) - _wgslsmith_f_op_f32(342f - arg_1)), 1608f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1106f)), _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -867f), global1.x);
    var var_0 = _wgslsmith_clamp_u32(arg_2.x, ~(~_wgslsmith_mod_u32(arg_2.x, ~4294967295u)), ~u_input.c);
    let var_1 = 65387i;
    global1 = _wgslsmith_f_op_vec4_f32(-arg_0.a);
    global1 = arg_0.a;
    return global1.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec4<bool>) -> u32 {
    var var_0 = vec2<bool>((_wgslsmith_f_op_f32(-1197f * _wgslsmith_f_op_f32(f32(-1f) * -267f)) <= _wgslsmith_f_op_f32(func_3(arg_1, global1.x, u_input.b.xyx))) || !select(any(arg_1.c.zz), true, !arg_1.c.x), all(select(vec4<bool>(all(arg_3), true, true, arg_1.c.x || false), !select(vec4<bool>(false, false, arg_2.x, true), arg_3, vec4<bool>(arg_1.c.x, arg_2.x, arg_1.c.x, true)), !arg_2.x)));
    var var_1 = arg_3;
    var_0 = !vec2<bool>(true, !(!arg_3.x));
    var_1 = select(vec4<bool>(arg_2.x, !any(vec2<bool>(arg_2.x, true)), !(!(!var_1.x)), false), vec4<bool>(false, true, -_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(1i, 1i)) >= _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(abs(u_input.b.x), 10u)], _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(u_input.c, 10u)])), !any(select(vec3<bool>(arg_2.x, false, arg_3.x), var_1.xww, arg_3.zzx))), !vec4<bool>(true, u_input.c <= firstTrailingBit(u_input.b.x), ~22107u <= u_input.c, false));
    var var_2 = _wgslsmith_f_op_vec3_f32(-arg_0.xyx);
    return _wgslsmith_add_u32(~abs(u_input.b.x) ^ (firstTrailingBit(_wgslsmith_add_u32(9890u, u_input.c)) ^ _wgslsmith_add_u32(abs(u_input.b.x), countOneBits(4294967295u))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 10>();
    var var_0 = ~u_input.c;
    global0 = array<i32, 10>();
    let var_1 = max(vec3<i32>(~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.c, 10u)])), _wgslsmith_div_i32(u_input.a.x, global0[_wgslsmith_index_u32(u_input.c, 10u)])), min(0i << (_wgslsmith_dot_vec3_u32(u_input.b.xwy, u_input.b.ywy) % 32u), func_1(Struct_3(vec3<i32>(u_input.a.x, -30567i, -34510i)))), ~_wgslsmith_add_i32(-u_input.a.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.c), 10u)])), _wgslsmith_clamp_vec3_i32(countOneBits(-vec3<i32>(u_input.a.x, -15247i, u_input.a.x) >> (select(u_input.b.zxw, vec3<u32>(u_input.c, u_input.b.x, 83875u), vec3<bool>(true, false, false)) % vec3<u32>(32u))), ~vec3<i32>(countOneBits(-32147i), ~(-1i), u_input.a.x), -(vec3<i32>(0i, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(u_input.c, 10u)]) | _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -25481i, global0[_wgslsmith_index_u32(u_input.c, 10u)]), vec3<i32>(5133i, u_input.a.x, global0[_wgslsmith_index_u32(u_input.c, 10u)])))));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -407f)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2385f, -1433f, global1.x, global1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2075f, global1.x, global1.x, global1.x) + vec4<f32>(1281f, -942f, 1821f, -1065f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-453f, 321f, global1.x, global1.x), vec4<f32>(-1638f, 279f, -876f, -1000f), false)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1091f, 534f, -329f, -1214f) - vec4<f32>(global1.x, global1.x, global1.x, global1.x)))))));
    var_0 = 1u;
    let var_3 = vec3<u32>(countOneBits(0u), _wgslsmith_div_u32(func_2(vec4<f32>(global1.x, -769f, global1.x, global1.x), Struct_2(vec4<f32>(180f, 1080f, global1.x, -1677f), 1i, vec3<bool>(true, true, true)), vec3<bool>(true, false, true), vec4<bool>(false, true, true, false)) & 1u, ~(u_input.b.x | 1u)), 1u) << (u_input.b.xyy % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(36532i, countOneBits(u_input.b), -((i32(-1i) * -1i) << (abs(var_3.x) % 32u)), global0[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(round(global1.x)))));
}

