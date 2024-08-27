struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27>;

var<private> global1: array<bool, 12>;

var<private> global2: array<i32, 3>;

var<private> global3: bool;

var<private> global4: bool = true;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> bool {
    global3 = global1[_wgslsmith_index_u32(u_input.a, 12u)];
    global2 = array<i32, 3>();
    global2 = array<i32, 3>();
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 383f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1582f)) - _wgslsmith_f_op_f32(1970f + 1463f)))))));
    global0 = array<vec3<f32>, 27>();
    return !(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(25355u, u_input.a, u_input.a), vec3<u32>(3406u, u_input.a, u_input.a))), 3u)] <= countOneBits(~global2[_wgslsmith_index_u32(19013u, 3u)])) & global1[_wgslsmith_index_u32(~((_wgslsmith_mult_u32(1u, u_input.a) | 58672u) & (u_input.a ^ max(4294967295u, 28265u))), 12u)];
}

fn func_2(arg_0: bool) -> Struct_1 {
    global3 = !arg_0;
    let var_0 = Struct_1(-550f, ~abs(vec3<i32>(-1i) * -u_input.b.yxx), false | !(!arg_0));
    let var_1 = Struct_2(~firstLeadingBit(vec2<u32>(u_input.a, reverseBits(23694u))), var_0, _wgslsmith_sub_u32(min(~u_input.a, ~(~0u)), u_input.a), select(select(vec4<bool>(true, true, !var_0.c, true), select(vec4<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.a, 12u)], true, true), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)], false, global1[_wgslsmith_index_u32(u_input.a, 12u)]), !var_0.c), !vec4<bool>(arg_0, true, true, true)), !vec4<bool>(true, arg_0, !arg_0, any(vec2<bool>(arg_0, true))), !vec4<bool>(true, true, true, var_0.c)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(max(822f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -430f) - _wgslsmith_div_f32(var_0.a, var_1.b.a)))))), ~_wgslsmith_add_vec3_i32(var_1.b.b, _wgslsmith_mod_vec3_i32(var_1.b.b, vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)], u_input.b.x)) | vec3<i32>(u_input.c.x, 12902i, u_input.c.x)), any(select(var_1.d.wzz, select(!vec3<bool>(arg_0, var_0.c, true), select(vec3<bool>(arg_0, arg_0, var_0.c), vec3<bool>(var_1.d.x, false, var_0.c), var_1.d.www), var_1.d.yzy), !vec3<bool>(true, var_0.c, true))));
    global1 = array<bool, 12>();
    return var_0;
}

fn func_3() -> u32 {
    var var_0 = func_2(all(!(!(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)])))));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) - _wgslsmith_div_f32(376f, 1369f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
    let var_3 = true;
    global4 = true;
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(func_1());
    var var_1 = ~(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 28404u, u_input.a), min(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(0u, u_input.a, 4294967295u)), vec3<u32>(u_input.a, 2423u, u_input.a)), vec3<u32>(u_input.a & u_input.a, _wgslsmith_sub_u32(4294967295u, u_input.a), ~u_input.a)));
    var var_2 = abs(vec3<i32>(select(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.b.x, var_0.b.x, 2147483647i, 0i), -u_input.c), ~(-4137i) ^ ~u_input.c.x, var_0.c), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 622u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 1u, var_1.x), vec3<u32>(35676u, var_1.x, 54421u), vec3<u32>(0u, 4294967295u, 4294967295u))), 3u)] << ((~var_1.x | (var_1.x & u_input.a)) % 32u), -(~(-2147483647i))));
    let var_3 = var_0.b.x;
    let var_4 = _wgslsmith_sub_vec4_i32(u_input.b, ~(vec4<i32>(var_0.b.x, ~global2[_wgslsmith_index_u32(0u, 3u)], func_2(var_0.c).b.x, 1i) & u_input.b));
    global2 = array<i32, 3>();
    global0 = array<vec3<f32>, 27>();
    var var_5 = countOneBits(_wgslsmith_div_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 67954u, u_input.a, 1u), vec4<u32>(4294967295u, 98104u, 83839u, u_input.a)), ~(vec4<u32>(var_1.x, var_1.x, u_input.a, u_input.a) & vec4<u32>(29620u, 1u, 10290u, var_1.x)), vec4<bool>(var_0.c | false, true, true, !var_0.c)), vec4<u32>(u_input.a, min(u_input.a, u_input.a), func_3(), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 4294967295u, 27483u), vec4<u32>(var_1.x, 1u, 0u, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(var_4.x >> (var_5.x % 32u)), -23615i, _wgslsmith_div_u32(abs(~_wgslsmith_mod_u32(67475u, var_1.x)), 4294967295u & _wgslsmith_mult_u32(u_input.a, var_1.x)), vec2<f32>(var_0.a, _wgslsmith_f_op_f32(var_0.a - var_0.a)), ~vec4<u32>((var_5.x | 73740u) & ~var_5.x, ~(var_1.x ^ 4294967295u), countOneBits(var_1.x) & ~var_1.x, 1u));
}

