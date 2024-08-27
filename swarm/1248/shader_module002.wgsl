struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: i32;

var<private> global2: Struct_2 = Struct_2(Struct_1(false, vec2<bool>(true, false), vec4<f32>(-990f, -324f, -174f, -862f)));

var<private> global3: i32;

var<private> global4: bool = false;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> u32 {
    global1 = 2147483647i;
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.c.zzz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, 317f, arg_3), vec3<f32>(-585f, arg_3, -829f), vec3<bool>(false, global2.a.b.x, true))) * _wgslsmith_f_op_vec3_f32(global0.ywx * global2.a.c.yxx))))));
    var var_1 = !select(vec3<bool>(false, false && (false & global2.a.b.x), true), !(!select(vec3<bool>(global2.a.b.x, false, arg_0.b.x), vec3<bool>(arg_0.a, arg_1.a, arg_1.b.x), vec3<bool>(false, false, false))), vec3<bool>(arg_0.a, global2.a.b.x, false));
    global3 = -2147483647i;
    let var_2 = Struct_2(Struct_1(all(!vec4<bool>(arg_1.a, arg_1.b.x, false, false)), !select(vec2<bool>(arg_1.a, arg_0.b.x), arg_0.b, arg_1.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, arg_3, -1007f, arg_0.c.x))) * vec4<f32>(global2.a.c.x, -337f, arg_0.c.x, global0.x)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1059f), _wgslsmith_div_f32(arg_0.c.x, arg_1.c.x), _wgslsmith_f_op_f32(min(arg_3, arg_0.c.x)), _wgslsmith_f_op_f32(-var_0.x)))));
    return max(~(~(~54851u ^ (38310u >> (u_input.c % 32u)))), u_input.c);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>) -> u32 {
    let var_0 = arg_1.x;
    let var_1 = global0.x;
    global2 = Struct_2(global2.a);
    global1 = ~arg_2.x;
    global3 = 2147483647i;
    return u_input.c;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec4<u32>) -> StorageBuffer {
    var var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_mod_u32(arg_1, ~arg_1), ~arg_1, arg_1), abs(vec3<u32>(arg_1 ^ 37306u, _wgslsmith_dot_vec2_u32(arg_2.yx, arg_2.wz), u_input.c)) | reverseBits(vec3<u32>(4294967295u, 29144u, func_2(Struct_1(true, vec2<bool>(false, false), global2.a.c), Struct_1(global2.a.a, vec2<bool>(global2.a.b.x, false), vec4<f32>(-430f, global2.a.c.x, global0.x, 102f)), 34253i, -1897f))));
    var var_1 = ~(~abs(arg_2.yxw));
    global1 = abs(u_input.d.x);
    var_1 = vec3<u32>(func_3(Struct_1(!global2.a.a, global2.a.b, vec4<f32>(-114f, -1237f, 390f, global2.a.c.x)), ~(~vec4<i32>(-10i, 2147483647i, u_input.e.x, u_input.a.x)), _wgslsmith_mod_vec3_i32(u_input.e, u_input.e) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, arg_1, arg_1), vec3<u32>(0u, 5974u, var_1.x)) % vec3<u32>(32u))), arg_0, var_1.x) ^ (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 21464u, var_1.x) | vec3<u32>(var_1.x, arg_0, 0u), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(8161u, arg_1, u_input.c), arg_2.zyz), vec3<u32>(arg_1, 4294967295u, arg_1))) | ~arg_2.zzy);
    global1 = u_input.a.x;
    return StorageBuffer(vec2<f32>(-1998f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -285f)))), _wgslsmith_f_op_f32(global2.a.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.a.c.x)))), vec3<i32>(_wgslsmith_div_i32(u_input.e.x, ~_wgslsmith_add_i32(-1i, u_input.a.x)), -_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-9858i, 0i, u_input.a.x), vec3<i32>(1i, u_input.b, u_input.d.x)), ~(-2147483647i), _wgslsmith_mod_i32(2147483647i, u_input.e.x)), -_wgslsmith_clamp_i32(countOneBits(0i), u_input.a.x, 1i)), arg_0 ^ ~arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c, 1u) << (firstLeadingBit(0u) % 32u), 5523u), _wgslsmith_mult_u32(~_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(4294967295u, u_input.c)), 25661u), vec4<u32>(u_input.c, abs(u_input.c) | 43845u, firstLeadingBit(~1u) << (~min(u_input.c, 4294967295u) % 32u), u_input.c));
}

