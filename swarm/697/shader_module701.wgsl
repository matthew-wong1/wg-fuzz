struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: array<Struct_2, 18>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = vec2<bool>(arg_0.c.x, true);
    let var_1 = ~u_input.b;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -349f);
    var var_3 = arg_0;
    var var_4 = -1082f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.b.a, _wgslsmith_f_op_f32(var_3.a.x - 876f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.b.a)) + _wgslsmith_f_op_f32(var_3.b.a + var_3.a.x))));
    return _wgslsmith_f_op_f32(step(1313f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -136f))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = !(!any(vec3<bool>(true, true, true)));
    let var_1 = global0[_wgslsmith_index_u32(15927u, 26u)];
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(89647u, 18u)]))) - -1580f), var_1.a)), -u_input.e.x, !var_1.c, firstTrailingBit(_wgslsmith_sub_u32(arg_0, u_input.d)));
    var var_3 = _wgslsmith_f_op_f32(-var_2.a);
    var var_4 = !any(var_1.c.yy);
    return global1[_wgslsmith_index_u32(29018u, 18u)];
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> bool {
    let var_0 = func_2(~1u);
    global1 = array<Struct_2, 18>();
    global0 = array<Struct_1, 26>();
    var var_1 = countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(12933i, 1i, u_input.e.x, abs(u_input.e.x)), vec4<i32>(arg_0.b, var_0.b.b, 35718i, u_input.e.x)));
    let var_2 = u_input.e.x;
    return !any(arg_0.c);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    var var_0 = Struct_1(-662f, -_wgslsmith_div_i32(~(~arg_0.b.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 11840i, 17617i, u_input.e.x), vec4<i32>(arg_0.b.b, arg_0.b.b, u_input.e.x, arg_0.b.b)) >> (0u % 32u)), select(arg_0.b.c, arg_0.b.c, select(arg_1.zwz, vec3<bool>(72346u < arg_0.b.d, !arg_0.c.x, !arg_0.b.c.x), !vec3<bool>(true, false, arg_1.x))), ~(~1u));
    let var_1 = global1[_wgslsmith_index_u32(var_0.d, 18u)];
    var var_2 = func_2(func_2(firstTrailingBit(abs(var_0.d))).b.d).b.c;
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(305f, 1472f, 119f, _wgslsmith_f_op_f32(1956f + 426f))), Struct_1(128f, 6308i, vec3<bool>(true, true, func_1(global0[_wgslsmith_index_u32(8133u, 26u)], 494f, -253f)), 1u), select(vec2<bool>(false, true), func_2(u_input.b.x & 0u).b.c.zx, vec2<bool>(true, true))), vec4<bool>(true, true, !any(vec2<bool>(false, false)), true));
    global1 = array<Struct_2, 18>();
    let var_1 = vec3<i32>(var_0.b, 2147483647i, _wgslsmith_clamp_i32(0i, firstLeadingBit(u_input.e.x), ~(-2147483647i)));
    let var_2 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-var_0.a), 1322f)), vec4<f32>(-1010f, 783f, 693f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.a)))))), func_2(~1u).b, !select(!(!vec2<bool>(var_0.c.x, var_0.c.x)), vec2<bool>(!var_0.c.x, false), true));
    global0 = array<Struct_1, 26>();
    var var_3 = func_2(~55389u);
    var var_4 = abs(~vec2<u32>(u_input.c, ~min(var_2.b.d, var_3.b.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(214f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -658f))), _wgslsmith_dot_vec2_i32(var_1.zz, ~(-vec2<i32>(var_3.b.b, 2147483647i))), _wgslsmith_f_op_vec4_f32(-var_3.a), _wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(-27723i), 45671i, -var_3.b.b, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(-80154i, u_input.e.x, -2147483647i, var_1.x), vec4<i32>(24055i, -2147483647i, 33110i, var_1.x))) ^ vec4<i32>(var_1.x, func_2(select(31928u, var_4.x, true)).b.b, var_0.b, _wgslsmith_dot_vec3_i32(-vec3<i32>(14256i, -1i, 21187i), min(vec3<i32>(0i, 1i, -1i), vec3<i32>(var_1.x, 39069i, -8595i)))), 506f);
}

