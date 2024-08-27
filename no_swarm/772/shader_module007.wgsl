struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 27932i;

var<private> global1: array<f32, 28>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global1 = array<f32, 28>();
    let var_0 = -u_input.d;
    global0 = _wgslsmith_add_i32(_wgslsmith_add_i32(var_0.x, min(~(-58324i), ~var_0.x)), _wgslsmith_add_i32(var_0.x, _wgslsmith_clamp_i32(var_0.x, u_input.d.x, -27288i) & firstLeadingBit(-1i)) ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(-16721i, var_0.x, u_input.b, var_0.x), -(~vec4<i32>(u_input.b, var_0.x, var_0.x, -2147483647i))));
    let var_1 = min(~u_input.a, 4294967295u);
    global0 = _wgslsmith_mult_i32(-1i, abs(min(_wgslsmith_mod_i32(1i, abs(-24244i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, var_0.x)))));
    return u_input.d.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: i32) -> i32 {
    global0 = firstTrailingBit(u_input.d.x);
    var var_0 = vec4<bool>(false, select(true, !select(true, false, true) || any(vec3<bool>(true, true, true)), true), any(!vec2<bool>(true, arg_0.x >= u_input.c.x)), u_input.c.x <= (16529u ^ reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, u_input.e, arg_0.x, 87298u), vec4<u32>(4294967295u, u_input.a, 0u, u_input.c.x)))));
    global0 = abs(u_input.b);
    let var_1 = 32121u != ~u_input.a;
    var var_2 = u_input.c.x;
    return 24423i;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_mod_i32(-reverseBits(func_4(u_input.c << (u_input.c % vec2<u32>(32u)), func_3())), ~(-40422i));
    var var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.e, 86139u, 11088u), ~u_input.c.x, _wgslsmith_dot_vec3_u32(min(vec3<u32>(33179u, 47325u, 4294967295u), vec3<u32>(135669u, u_input.a, u_input.c.x)), ~vec3<u32>(61084u, u_input.c.x, u_input.e)), u_input.c.x), abs(countOneBits(~vec4<u32>(u_input.e, 35112u, 0u, 80667u))), vec4<u32>(_wgslsmith_sub_u32(u_input.a, firstLeadingBit(49108u)), 39264u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 1u, u_input.e, 16274u), vec4<u32>(1u, u_input.a, 0u, u_input.c.x)) << (~43575u % 32u), ~u_input.e)), firstLeadingBit(vec4<u32>(u_input.c.x << (u_input.c.x % 32u), reverseBits(1u), _wgslsmith_dot_vec2_u32(u_input.c, u_input.c), 1u) | ~_wgslsmith_div_vec4_u32(vec4<u32>(90663u, u_input.c.x, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, u_input.e, u_input.a))));
    var var_2 = select(arg_0.zxy, !select(arg_0.zwx, !select(arg_0.zzw, arg_0.zzw, arg_0.xzy), false), select(!select(vec3<bool>(false, arg_0.x, arg_0.x), arg_0.yyy, !arg_0.xzx), select(vec3<bool>(any(vec3<bool>(false, arg_0.x, false)), any(arg_0), all(vec4<bool>(arg_0.x, false, true, arg_0.x))), vec3<bool>(true, true, true), 65978u == _wgslsmith_dot_vec2_u32(var_1.wy, u_input.c)), arg_0.x));
    let var_3 = any(!select(vec3<bool>(!arg_0.x, var_2.x & true, true), !select(arg_0.yww, arg_0.xzw, arg_0.x), false));
    var_2 = !arg_0.xxy;
    return false;
}

fn func_1() -> i32 {
    let var_0 = vec3<i32>(~27066i, -u_input.d.x, _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b));
    global1 = array<f32, 28>();
    var var_1 = Struct_1(vec2<bool>(select(true, all(vec2<bool>(true, true)), all(vec4<bool>(false, false, false, true))), func_2(vec4<bool>(true, true, true, true), ~vec3<i32>(var_0.x, 0i, 29101i))), ~(~reverseBits(-vec4<i32>(-28078i, u_input.b, var_0.x, var_0.x))));
    global1 = array<f32, 28>();
    global1 = array<f32, 28>();
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(false, false || !any(vec3<bool>(true, true, true))), vec4<i32>(i32(-1i) * -29988i, 58603i, u_input.d.x, _wgslsmith_add_i32(func_1(), min(u_input.d.x, _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(u_input.b, u_input.d.x))))));
    let var_1 = vec4<i32>(~(var_0.b.x << (2847u % 32u)), countOneBits(-52674i), -3562i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(~u_input.b, u_input.d.x, _wgslsmith_sub_i32(42251i, 2125i))), abs(vec3<i32>(-1i | var_0.b.x, -1159i, -22391i))));
    global1 = array<f32, 28>();
    var var_2 = Struct_4(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(17000u, 28u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.c.x, 28u)]) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(select(0u, 40027u, false), 28u)] - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 28u)]))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-648f, var_2.b, _wgslsmith_f_op_f32(max(-686f, global1[_wgslsmith_index_u32(u_input.e, 28u)])), _wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], 597f, 416f, 667f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 28u)], 358f, 821f, 1484f)), var_2.b != 314f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(831f, global1[_wgslsmith_index_u32(33832u, 28u)], -1312f, -599f)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-789f - var_2.b)), -983f, global1[_wgslsmith_index_u32((4294967295u << (0u % 32u)) >> (1u % 32u), 28u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1480f, -1212f, var_2.b, 482f), vec4<f32>(global1[_wgslsmith_index_u32(42525u, 28u)], -466f, global1[_wgslsmith_index_u32(4294967295u, 28u)], -1449f), vec4<bool>(var_0.a.x, true, false, false))) + vec4<f32>(411f, 1710f, var_2.b, global1[_wgslsmith_index_u32(u_input.a, 28u)])) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-668f, -1373f, -150f, var_2.a)))), false))));
    var var_4 = !select(vec2<bool>((var_0.b.x ^ 52379i) >= -1i, var_0.a.x), vec2<bool>(false, all(!var_0.a)), true);
    var_2 = Struct_4(333f, -554f);
    let var_5 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), global1[_wgslsmith_index_u32(0u, 28u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1073f), 1000f, false == !var_4.x)))), _wgslsmith_mult_i32(~u_input.d.x, -9294i), var_3, ~vec3<u32>(4294967295u, u_input.e, u_input.a), 27465i);
}

