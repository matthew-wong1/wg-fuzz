struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23>;

var<private> global1: array<Struct_2, 11>;

var<private> global2: vec3<u32>;

var<private> global3: Struct_3;

var<private> global4: i32;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(u_input.d.zwz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(784f, 1255f), vec2<f32>(505f, -150f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(959f, 254f), vec2<f32>(-1763f, 1482f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1085f, -642f))))), select(vec2<bool>(global2.x == 4294967295u, false), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), countOneBits(~(~1u))), 0u, ~(-12361i));
    var_0 = global1[_wgslsmith_index_u32(u_input.b, 11u)];
    let var_1 = var_0.a.d;
    global2 = ~(~vec3<u32>(~firstLeadingBit(22834u), u_input.c.x | 10488u, 1u));
    global0 = array<vec3<bool>, 23>();
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2.xy, global2.xx), 11u)];
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: u32, arg_3: u32) -> bool {
    global3 = Struct_3(~(-vec2<i32>(-2147483647i >> (arg_0.a.d % 32u), global3.a.x)));
    let var_0 = ~vec2<u32>(~_wgslsmith_div_u32(arg_3, global2.x) >> (~(~u_input.a) % 32u), 13217u);
    global2 = ~(_wgslsmith_add_vec3_u32(vec3<u32>(arg_2, 4294967295u, global2.x), countOneBits(vec3<u32>(u_input.a, 4294967295u, 0u))) ^ min(~vec3<u32>(var_0.x, 29624u, 1u), firstLeadingBit(vec3<u32>(global2.x, 9293u, arg_2)))) << (~(~vec3<u32>(u_input.c.x, _wgslsmith_div_u32(72773u, arg_2), 4294967295u)) % vec3<u32>(32u));
    var var_1 = arg_0.a.a;
    var var_2 = Struct_1(u_input.d.xxy << (vec3<u32>(max(reverseBits(1u), 4294967295u), arg_2, ~_wgslsmith_sub_u32(arg_2, 4294967295u)) % vec3<u32>(32u)), vec2<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a.b.x, 2938f))))), func_2().a.c, arg_3);
    return -710f >= arg_0.a.b.x;
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_sub_i32(func_2().a.a.x, _wgslsmith_add_i32(~((u_input.d.x | u_input.d.x) ^ u_input.d.x), reverseBits(_wgslsmith_div_i32(23311i, u_input.d.x)) >> (4294967295u % 32u)));
    let var_1 = 1603f;
    global2 = _wgslsmith_div_vec3_u32(vec3<u32>(global2.x, ~4294967295u, u_input.a), vec3<u32>(_wgslsmith_clamp_u32(1u, ~1u, ~(0u << (global2.x % 32u))), _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(u_input.a, global2.x), 22341u, func_2().b), _wgslsmith_mod_u32(reverseBits(_wgslsmith_clamp_u32(4294967295u, global2.x, global2.x)), global2.x)));
    let var_2 = Struct_2(func_2().a, ~(~(~firstLeadingBit(global2.x))), _wgslsmith_clamp_i32(u_input.d.x, ~select(2147483647i, 1i, true) ^ (_wgslsmith_clamp_i32(-2147483647i, u_input.d.x, arg_0.a.x) >> (abs(global2.x) % 32u)), _wgslsmith_mult_i32(u_input.d.x, ~global3.a.x)));
    global2 = _wgslsmith_div_vec3_u32(reverseBits(~(~vec3<u32>(1u, 102u, var_2.a.d) ^ _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, global2.x, 4294967295u), vec3<u32>(global2.x, global2.x, 26197u)))), vec3<u32>(var_2.b, ~select(global2.x, 11644u, false) | firstLeadingBit(13677u), global2.x));
    return global2.x;
}

fn func_1() -> Struct_3 {
    global3 = Struct_3(_wgslsmith_sub_vec2_i32(-global3.a, reverseBits(select(global3.a, vec2<i32>(global3.a.x, -11265i), true))));
    var var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 11u)];
    global1 = array<Struct_2, 11>();
    let var_1 = func_2();
    global2 = vec3<u32>(30237u, func_4(Struct_3(vec2<i32>(-1i, -1i)), func_3(Struct_2(var_1.a, 15680u, global3.a.x), vec4<bool>(var_0.a.c.x, false, true, false), var_1.a.d, 4294967295u)) << (78954u % 32u), var_0.a.d | var_0.b) ^ _wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(99326u, u_input.b, var_1.a.d)), ~(~abs(vec3<u32>(13642u, var_0.b, 2431u))));
    return Struct_3(~select(-vec2<i32>(var_1.a.a.x, var_1.a.a.x), global3.a | firstTrailingBit(var_1.a.a.yy), var_1.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_2().a;
    var var_2 = global1[_wgslsmith_index_u32(0u, 11u)];
    global3 = func_1();
    var var_3 = Struct_1(~vec3<i32>(max(global3.a.x, 2147483647i) ^ global3.a.x, u_input.d.x, select(_wgslsmith_div_i32(-2147483647i, u_input.d.x), reverseBits(var_0.a.x), !var_1.c.x)), _wgslsmith_f_op_vec2_f32(-var_2.a.b), select(select(vec2<bool>(true, !var_2.a.c.x), vec2<bool>(true, true), !(var_2.a.c.x && var_2.a.c.x)), !select(!var_2.a.c, !var_1.c, !vec2<bool>(var_1.c.x, var_2.a.c.x)), var_1.c.x), global2.x);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.b.x + _wgslsmith_f_op_f32(var_2.a.b.x - -988f)) * var_1.b.x)) - var_1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~0u)), vec3<u32>(~(~var_2.b ^ var_3.d), 14620u, (~u_input.a | _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 20030u, global2.x, 4294967295u), vec4<u32>(45379u, 30872u, var_2.a.d, global2.x))) | _wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), ~var_2.a.d, ~4294967295u)), var_2.a.b.x, vec2<u32>(45648u, 4294967295u), min(1u, ~func_2().a.d));
}

