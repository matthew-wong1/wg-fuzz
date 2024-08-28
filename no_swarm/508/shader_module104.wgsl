struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: vec4<i32>,
    e: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: Struct_4;

var<private> global2: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(430f, 180f), vec2<f32>(1000f, 1120f), vec2<f32>(1000f, -313f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> bool {
    global0 = array<Struct_1, 27>();
    return false;
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_4) -> vec3<bool> {
    let var_0 = ~_wgslsmith_dot_vec3_i32(firstLeadingBit(abs(vec3<i32>(-21832i, u_input.b, arg_2.b.b)) & (vec3<i32>(-2147483647i, 2147483647i, arg_2.b.b) ^ vec3<i32>(-1i, u_input.b, arg_2.b.b))), _wgslsmith_add_vec3_i32(vec3<i32>(~arg_2.b.b, u_input.d, select(global1.b.b, global1.b.b, arg_1)), vec3<i32>(-1i, global1.b.b, global1.b.b) & vec3<i32>(global1.b.b, -3413i, arg_2.b.b)));
    let var_1 = arg_2.b;
    global2 = array<vec2<f32>, 3>();
    let var_2 = vec2<i32>(select(arg_2.b.b, abs(var_0), ~_wgslsmith_dot_vec2_i32(vec2<i32>(32137i, u_input.b), vec2<i32>(29576i, -34150i)) >= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, global1.b.b) << (vec2<u32>(0u, 5012u) % vec2<u32>(32u)), ~vec2<i32>(u_input.d, u_input.b))), -1i);
    var var_3 = Struct_4(arg_2.a, global0[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(1u, 3u)] * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1305f, -218f)))))), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.d.x, global1.b.d.x, 48644u), _wgslsmith_mod_vec3_u32(vec3<u32>(85753u, 1u, 8807u), global1.b.d)), 4891u ^ abs(u_input.a.x)), _wgslsmith_clamp_u32(1u, 0u, _wgslsmith_clamp_u32(var_1.d.x, 0u, u_input.a.x) ^ ~arg_2.d.x), ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, 1u, 1u, u_input.c.x), global1.d), ~vec4<u32>(4928u, 48108u, 0u, 19807u)), firstTrailingBit(~60543u | (arg_2.d.x >> (59538u % 32u)))));
    return !arg_2.a;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: vec2<f32>) -> f32 {
    let var_0 = func_2();
    global1 = Struct_4(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, arg_3.x), 883f)), _wgslsmith_f_op_f32(exp2(arg_3.x))), true, Struct_4(!global1.a, Struct_1(all(global1.a.yx), arg_2.c.b, _wgslsmith_f_op_f32(f32(-1f) * -288f), ~vec3<u32>(global1.b.d.x, 0u, u_input.c.x)), global1.c, abs(vec4<u32>(u_input.a.x, 1u, 31251u, u_input.a.x)))), Struct_1(arg_2.c.c == _wgslsmith_f_op_f32(-342f + arg_3.x), firstLeadingBit(-1i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, 32883i) | vec3<i32>(arg_2.b.b.b, 1i, -1i), arg_2.d.zzz & vec3<i32>(u_input.d, arg_2.c.b, arg_1)), arg_2.c.c, _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.c.d.x, arg_2.b.c.x, global1.b.d.x), vec3<u32>(global1.b.d.x, 34994u, arg_2.c.d.x), ~vec3<u32>(arg_2.b.c.x, 0u, arg_2.c.d.x)), _wgslsmith_mod_vec3_u32(arg_2.c.d >> (vec3<u32>(25864u, 0u, u_input.c.x) % vec3<u32>(32u)), vec3<u32>(arg_2.c.d.x, global1.d.x, u_input.c.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.b.c, -811f), vec2<f32>(-887f, -1289f))), global1.c)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(global2[_wgslsmith_index_u32(47005u, 3u)])), vec2<f32>(495f, 1480f))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(global2[_wgslsmith_index_u32(u_input.c.x, 3u)])))), _wgslsmith_f_op_vec2_f32(-arg_3))), firstTrailingBit(select(u_input.a, u_input.a, !global1.a.x | !var_0)));
    let var_1 = arg_2.b.a;
    let var_2 = global1.b.c;
    global0 = array<Struct_1, 27>();
    return -1123f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(vec3<bool>(true, any(global1.a), true), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(firstTrailingBit(u_input.a.x), ~global1.d.x ^ global1.d.x), 27u)], vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(trunc(global1.b.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, i32(-1i) * -2147483647i, Struct_3(global1.a.x, Struct_2(vec2<i32>(u_input.d, -15413i), global0[_wgslsmith_index_u32(u_input.c.x, 27u)], vec4<u32>(u_input.a.x, 1u, u_input.c.x, global1.b.d.x)), global0[_wgslsmith_index_u32(global1.d.x, 27u)], vec4<i32>(u_input.d, 4015i, 13733i, global1.b.b), false), vec2<f32>(global1.b.c, global1.b.c))))), global1.d);
    global0 = array<Struct_1, 27>();
    let var_0 = global0[_wgslsmith_index_u32(~u_input.a.x, 27u)];
    var var_1 = countOneBits(~(~24060i));
    global2 = array<vec2<f32>, 3>();
    var var_2 = global1.a;
    var var_3 = max(46054u, _wgslsmith_mult_u32(37675u, reverseBits(u_input.a.x >> (46427u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, 0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.c), -1129f, _wgslsmith_div_f32(-1303f, global1.b.c), -659f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2193f, _wgslsmith_div_f32(global1.c.x, 622f), _wgslsmith_f_op_f32(var_0.c + global1.c.x), _wgslsmith_f_op_f32(sign(1146f)))))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i) & select(vec2<i32>(var_0.b, u_input.b), vec2<i32>(u_input.b, global1.b.b), global1.a.x), -(vec2<i32>(var_0.b, global1.b.b) >> (global1.d.xx % vec2<u32>(32u)))), i32(-1i) * -(global1.b.b | 17263i), -4340i, -max(~(-2147483647i), -21994i)));
}

