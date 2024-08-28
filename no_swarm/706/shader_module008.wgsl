struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19>;

var<private> global1: Struct_5;

var<private> global2: Struct_1;

var<private> global3: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: i32, arg_3: vec3<i32>) -> f32 {
    var var_0 = Struct_4(vec4<i32>(~_wgslsmith_mult_i32(-arg_2, 2147483647i >> (u_input.a.x % 32u)), _wgslsmith_dot_vec2_i32(countOneBits(arg_3.zz), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2, 2147483647i), vec2<i32>(global1.a, 1i))) | (select(global1.a, u_input.b, false) ^ _wgslsmith_mult_i32(arg_2, -1i)), _wgslsmith_div_i32(u_input.b, 1i) & ~(~2147483647i), min(_wgslsmith_add_i32(-2147483647i, global1.a) >> (u_input.a.x % 32u), 30864i >> (global2.c % 32u))), _wgslsmith_div_i32(2147483647i, -1i));
    var_0 = Struct_4(~var_0.a, global2.d);
    var var_1 = 4294967295u | ~global2.b.x;
    var var_2 = Struct_2(firstLeadingBit(global2.b.x));
    var_1 = ~(~(~(~u_input.a.x)));
    return -836f;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: bool, arg_3: Struct_2) -> u32 {
    global2 = Struct_1(select(select(global2.a, select(!vec2<bool>(global2.a.x, global2.a.x), vec2<bool>(arg_2, arg_2), true), false), global2.a, true), vec4<u32>(5993u, 4294967295u, ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(18243u, 4294967295u, 14082u, 31256u), u_input.a)), 4294967295u), u_input.a.x, ~(~u_input.b));
    var var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_1.a, ~1i, -u_input.b), ~_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, arg_1.a, global2.d, global2.d), vec4<i32>(u_input.b, global1.a, 22915i, -52856i))), global2.d, reverseBits(-2147483647i >> ((4294967295u | global2.c) % 32u)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.b, u_input.b), 47670i, global1.a) ^ ~(-arg_1.a)) & (vec4<i32>(-1i) * -vec4<i32>(global2.d, countOneBits(u_input.b), u_input.b, u_input.b));
    global0 = array<vec2<i32>, 19>();
    global1 = Struct_5(var_0.x, global1.b);
    let var_1 = Struct_3(Struct_1(vec2<bool>(true, true), u_input.a, ~arg_3.a, global1.a), arg_3);
    return (~var_1.a.c | abs(_wgslsmith_clamp_u32(global2.c, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.c, global2.c, 75222u), vec3<u32>(4294967295u, u_input.a.x, 15930u)), ~arg_3.a))) ^ (1u << (_wgslsmith_mod_u32(abs(4294967295u), select(~global2.b.x, 15019u & global2.b.x, all(global2.a))) % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec4<f32>) -> vec2<f32> {
    var var_0 = Struct_2(func_3(arg_0.b.wx, Struct_5(u_input.b, 730f), !(global2.b.x <= _wgslsmith_add_u32(0u, 4294967295u)), arg_2));
    let var_1 = ~global2.b.x;
    let var_2 = Struct_5(-arg_0.d, _wgslsmith_f_op_f32(round(-419f)));
    global3 = array<vec3<bool>, 31>();
    global0 = array<vec2<i32>, 19>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, arg_3.x)), vec2<f32>(-1750f, arg_3.x)))))) * vec2<f32>(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3.x, arg_3.x, false)) - arg_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 33006u;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(true, vec4<f32>(global1.b, global1.b, global1.b, global1.b), 52268i, vec3<i32>(-462i, global1.a, 1i))), _wgslsmith_div_f32(global1.b, global1.b)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 971f), vec2<f32>(global1.b, global1.b))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.b, global1.b))), global2.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1000f, global1.b))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(global2.a, u_input.a, 29506u, global2.d), vec3<i32>(global1.a, -26707i, 0i), Struct_2(global2.c), vec4<f32>(global1.b, global1.b, -747f, 1000f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.b, 2053f), vec2<f32>(global1.b, -763f), vec2<bool>(global2.a.x, global2.a.x))))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1008f, global1.b)), vec2<f32>(1150f, _wgslsmith_f_op_f32(f32(-1f) * -511f)), any(!select(vec4<bool>(global2.a.x, true, true, global2.a.x), vec4<bool>(global2.a.x, global2.a.x, false, false), true)))));
    var var_2 = _wgslsmith_div_vec4_u32(~global2.b, vec4<u32>(~u_input.a.x, global2.c, u_input.a.x, _wgslsmith_add_u32(max(0u, _wgslsmith_dot_vec3_u32(u_input.a.xzz, global2.b.ywx)), _wgslsmith_sub_u32(~88224u, 85099u << (u_input.a.x % 32u)))));
    var_1 = _wgslsmith_f_op_vec2_f32(func_2(Struct_1(global2.a, reverseBits(vec4<u32>(~var_2.x, _wgslsmith_dot_vec4_u32(u_input.a, global2.b), ~32003u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x))), _wgslsmith_div_u32(~_wgslsmith_div_u32(u_input.a.x, 0u), select(1u, reverseBits(13501u), true)), min(~u_input.b, global1.a)), firstTrailingBit(_wgslsmith_add_vec3_i32(~vec3<i32>(1i, global1.a, global2.d), ~abs(vec3<i32>(global1.a, global2.d, 13462i)))), Struct_2(global2.c), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), 1000f, _wgslsmith_f_op_f32(select(global1.b, -573f, global2.a.x)), _wgslsmith_f_op_f32(-var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(abs(-710f)), 760f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_1.x)), var_1.x)), -255f))));
    global1 = Struct_5(i32(-1i) * -16837i, -167f);
    var var_3 = Struct_5(global2.d, _wgslsmith_f_op_f32(select(global1.b, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x - var_1.x)))), var_2.x > ~firstLeadingBit(global2.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(372f, 1573f) + vec2<f32>(-1000f, global1.b))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b, 870f)), vec2<f32>(-2220f, -786f))))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2132f), 311f)));
}

