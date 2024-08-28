struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32 = 1u;

var<private> global2: vec3<i32>;

var<private> global3: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2) -> i32 {
    global1 = ~global0.a.x;
    global0 = Struct_2(~vec3<u32>(~arg_1.a.x, 1u, 4294967295u) | firstTrailingBit(arg_1.a), arg_1.b, max(arg_1.c | _wgslsmith_sub_u32(global0.a.x, arg_1.c), ~arg_1.a.x) << (global0.c % 32u));
    let var_0 = 4294967295u;
    global0 = arg_1;
    global3 = _wgslsmith_div_f32(-1000f, arg_1.b);
    return -_wgslsmith_dot_vec4_i32(reverseBits(-firstLeadingBit(vec4<i32>(31936i, global2.x, -20532i, 1i))), abs(vec4<i32>(_wgslsmith_mod_i32(17272i, u_input.a.x), ~1i, _wgslsmith_mult_i32(global2.x, 4738i), -30643i)));
}

fn func_2() -> f32 {
    let var_0 = vec3<i32>(~u_input.a.x, func_3(vec2<bool>(true, false), Struct_2(vec3<u32>(4294967295u, global0.a.x, 0u), global0.b, 46418u ^ global0.c)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), abs(u_input.a)) << (~(1u >> (global0.a.x % 32u)) % 32u)) & u_input.a.yyw;
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1009f), global0.a.x);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(global0.b, -313f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.b)) + _wgslsmith_f_op_f32(trunc(global0.b))) <= global0.b)), _wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -131f), 435f)) + _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(-286f * global0.b))))), -180f, -740f);
    var var_2 = Struct_2(vec3<u32>(countOneBits(_wgslsmith_sub_u32(global0.c, 0u)) << (max(global0.c, _wgslsmith_sub_u32(global0.c, 50061u)) % 32u), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 37163u), global0.a.zz) >> (global0.a.x % 32u)), 1u), -679f, _wgslsmith_clamp_u32(9977u, 0u, _wgslsmith_add_u32(69940u, 4294967295u ^ global0.a.x) ^ 36670u));
    var var_3 = vec4<f32>(-317f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-798f, var_1.x, var_1.x > -622f)), _wgslsmith_f_op_f32(max(969f, _wgslsmith_f_op_f32(max(-1311f, var_2.b))))))), 1299f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b, 1000f) - 213f) * var_2.b))));
    return var_3.x;
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global1 = 1u;
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(320f, 623f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1125f, -910f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, global0.b) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(224f, -1215f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.b, 270f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(213f, global0.b) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1117f, global0.b) - vec2<f32>(global0.b, -741f))))) * vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b)) - global0.b)));
    var var_1 = 1689f;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 347f, _wgslsmith_f_op_f32(ceil(global0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1377f + -722f) * global0.b))));
    var_1 = _wgslsmith_f_op_f32(-global0.b);
    return Struct_1(_wgslsmith_mult_u32(~firstLeadingBit(max(27331u, global0.a.x)), ~4294967295u), var_2.xx, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<bool>(true, any(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), any(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false))));
    global1 = 4294967295u;
    let var_1 = global0.a;
    global2 = vec3<i32>(_wgslsmith_mult_i32(1i, global2.x), _wgslsmith_add_i32(u_input.a.x, ~(global2.x & (i32(-1i) * -2147483647i))), i32(-1i) * -1i);
    var var_2 = var_0.a;
    let var_3 = ~(-(_wgslsmith_div_vec3_i32(~vec3<i32>(global2.x, 2147483647i, 2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(global2.x, global2.x, -10162i), u_input.a.yyw)) ^ u_input.a.ywy));
    global3 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_sub_u32(_wgslsmith_div_u32(reverseBits(max(var_1.x, 23936u)), abs(~global0.a.x)), var_1.x << (var_1.x % 32u)));
}

