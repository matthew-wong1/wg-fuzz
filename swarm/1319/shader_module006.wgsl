struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(2147483647i, -5440i, 0i);

var<private> global1: vec2<u32>;

var<private> global2: array<vec4<f32>, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    global0 = array<i32, 3>();
    var var_0 = Struct_1(any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), false)), vec2<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(global1.x, 3u)], -2147483647i), _wgslsmith_sub_i32(1i, ~_wgslsmith_mult_i32(-27199i, global0[_wgslsmith_index_u32(4294967295u, 3u)]))));
    global2 = array<vec4<f32>, 25>();
    var_0 = Struct_1(var_0.a, ~vec2<i32>(u_input.c.x, -50343i));
    var var_1 = vec3<i32>(-2147483647i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(~global1.x, 3u)], global0[_wgslsmith_index_u32(~(~5327u), 3u)]), -2147483647i | _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c.x, u_input.b), var_0.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1239f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -1938f))), _wgslsmith_f_op_f32(round(1788f)), var_0.a)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> i32 {
    global2 = array<vec4<f32>, 25>();
    global2 = array<vec4<f32>, 25>();
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), arg_1.x)))) - arg_1.x), 757f));
    let var_2 = vec3<u32>(79379u, ~(~global1.x), _wgslsmith_dot_vec3_u32(~reverseBits(u_input.a.zzz), min(firstTrailingBit(vec3<u32>(global1.x, u_input.a.x, u_input.a.x)), vec3<u32>(u_input.a.x, arg_2.x, 38636u)))) | u_input.a.xzy;
    return 2147483647i;
}

fn func_1() -> Struct_3 {
    global0 = array<i32, 3>();
    global1 = vec2<u32>(countOneBits(global1.x), _wgslsmith_sub_u32(global1.x, _wgslsmith_mult_u32(global1.x, reverseBits(~u_input.a.x))));
    var var_0 = Struct_3(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(~global1.x, 3u)], 38128i, u_input.b), 1u, Struct_2(Struct_1(select(true, false, true), u_input.c.yz), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1166f))), _wgslsmith_f_op_f32(-1847f - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1031f, -524f))))));
    let var_1 = vec4<bool>(u_input.c.x > reverseBits(global0[_wgslsmith_index_u32(var_0.b, 3u)]), true, !any(select(select(vec3<bool>(false, true, var_0.c.a.a), vec3<bool>(var_0.c.a.a, true, var_0.c.a.a), vec3<bool>(var_0.c.a.a, var_0.c.a.a, var_0.c.a.a)), vec3<bool>(true, false, true), !var_0.c.a.a)), !(!(1i <= func_2(vec2<bool>(var_0.c.a.a, true), var_0.c.b.xy, vec2<u32>(u_input.a.x, 40352u)))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.a.yx, u_input.a.wx), u_input.a.xx), ~u_input.a.zz), _wgslsmith_clamp_u32(global1.x, countOneBits(1u) | ~global1.x, 4294967295u)), 3u)];
    return Struct_3(firstTrailingBit(_wgslsmith_sub_vec4_i32(-u_input.c, max(reverseBits(u_input.c), ~vec4<i32>(0i, u_input.c.x, global0[_wgslsmith_index_u32(84120u, 3u)], 25383i)))), u_input.a.x, var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(~abs(u_input.b), -19761i);
    let var_1 = -1964f;
    let var_2 = func_1();
    global0 = array<i32, 3>();
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -521f), _wgslsmith_f_op_f32(ceil(var_1)), _wgslsmith_f_op_f32(max(var_1, var_2.c.b.x))))));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1729f - var_2.c.b.x), var_1) * var_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(var_1 + var_1)))), _wgslsmith_f_op_f32(max(-341f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))))), var_3.x);
    var var_5 = vec3<u32>(reverseBits(func_1().b), ~_wgslsmith_div_u32(~43672u, ~_wgslsmith_mult_u32(u_input.a.x, var_2.b)), ~firstTrailingBit(_wgslsmith_mult_u32(~54442u, global1.x)));
    global1 = ~var_5.xy;
    let x = u_input.a;
    s_output = StorageBuffer(~(firstTrailingBit(u_input.a) | ~u_input.a) ^ u_input.a, 55787u, var_4.x, u_input.b, vec4<f32>(_wgslsmith_f_op_f32(select(var_4.x, var_3.x, true)), _wgslsmith_f_op_f32(-func_1().c.b.x), 472f, _wgslsmith_f_op_f32(round(var_1))));
}

