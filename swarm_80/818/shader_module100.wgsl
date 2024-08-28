struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 23>;

var<private> global1: array<i32, 18> = array<i32, 18>(-24786i, 1i, 1i, -708i, -2057i, -19160i, 3112i, 1i, 0i, 17566i, 18497i, 4075i, 65089i, 2147483647i, 31792i, 20955i, -1i, 2147483647i);

var<private> global2: array<Struct_3, 16>;

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

var<private> global4: array<bool, 13> = array<bool, 13>(true, false, false, true, true, false, false, false, true, true, false, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> bool {
    global0 = array<vec2<i32>, 23>();
    global3 = vec3<bool>(select((1i << (countOneBits(1u) % 32u)) <= max(global1[_wgslsmith_index_u32(45508u, 18u)], ~1i), false, global3.x), global3.x, global3.x);
    global1 = array<i32, 18>();
    var var_0 = -579f;
    var var_1 = _wgslsmith_clamp_vec2_u32(~(~_wgslsmith_add_vec2_u32(vec2<u32>(41874u, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(33816u, 7780u), vec2<u32>(u_input.a, 99563u), vec2<u32>(0u, u_input.b)))), u_input.c.yz, _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, abs(u_input.b)), _wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 4294967295u), u_input.c.zy), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(48984u, u_input.b)), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(11372u, u_input.b), u_input.c.yy)))));
    return !global3.x;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2) -> i32 {
    global3 = select(!vec3<bool>(true, all(select(vec4<bool>(global4[_wgslsmith_index_u32(arg_0, 13u)], false, true, true), vec4<bool>(global3.x, global4[_wgslsmith_index_u32(u_input.b, 13u)], global4[_wgslsmith_index_u32(arg_0, 13u)], true), false)), func_3()), !vec3<bool>(any(global3.zz), all(!vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.b, 13u)], arg_2.a.a)), arg_2.a.a), select(select(select(!vec3<bool>(true, arg_2.a.a, global4[_wgslsmith_index_u32(arg_0, 13u)]), !vec3<bool>(global4[_wgslsmith_index_u32(u_input.b, 13u)], global3.x, true), !vec3<bool>(arg_2.a.a, false, false)), vec3<bool>(true, true, true), arg_2.a.a), select(!(!vec3<bool>(global3.x, global4[_wgslsmith_index_u32(63519u, 13u)], arg_2.a.a)), select(vec3<bool>(false, global3.x, false), !vec3<bool>(global3.x, global4[_wgslsmith_index_u32(1u, 13u)], false), true | arg_2.a.a), vec3<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 13u)], true, false)), !vec3<bool>(true, true, arg_2.a.a)));
    var var_0 = arg_2.a;
    var var_1 = any(!select(vec3<bool>(false, global4[_wgslsmith_index_u32(~0u, 13u)], any(vec4<bool>(global3.x, true, arg_2.a.a, var_0.a))), select(select(vec3<bool>(var_0.a, false, true), vec3<bool>(true, true, global4[_wgslsmith_index_u32(u_input.b, 13u)]), vec3<bool>(false, false, false)), vec3<bool>(var_0.a, true, true), all(global3.yy)), 33946u < countOneBits(arg_0)));
    let var_2 = ~arg_1.x;
    global1 = array<i32, 18>();
    return ~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(select(u_input.b, arg_0, var_0.a), 17667u), ~_wgslsmith_div_u32(1u, 10913u)) | min(~(~20601u), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_0, 7317u, 16882u), _wgslsmith_mod_u32(u_input.a, 4294967295u), 1u)), 18u)];
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(146f * _wgslsmith_f_op_f32(max(arg_2.d.x, 1198f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2.c.x, arg_2.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.d.x + arg_2.c.x), _wgslsmith_f_op_f32(arg_2.d.x + 1875f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.x, -252f, arg_2.b) - vec3<f32>(arg_2.b, 992f, 1000f))), vec3<bool>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.zzx, ~u_input.c.zzy), 13u)], any(vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.b, 13u)], global4[_wgslsmith_index_u32(arg_1, 13u)], false)) & (global1[_wgslsmith_index_u32(1917u, 18u)] <= global1[_wgslsmith_index_u32(u_input.a, 18u)]), !(false | global3.x)))) * vec3<f32>(arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b + 1930f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.b)) + _wgslsmith_f_op_f32(-arg_2.b)) + 261f)));
    let var_1 = ~0u;
    let var_2 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(arg_2.a, vec3<i32>(~arg_0, 886i, _wgslsmith_div_i32(1i, arg_2.a.x))), _wgslsmith_add_vec3_i32(select(arg_2.a, vec3<i32>(arg_2.e, func_2(0u, vec3<i32>(arg_0, global1[_wgslsmith_index_u32(0u, 18u)], 2147483647i), Struct_2(Struct_1(global3.x))), 2862i), -arg_2.a.x >= arg_2.a.x), -_wgslsmith_mult_vec3_i32(~arg_2.a, vec3<i32>(global1[_wgslsmith_index_u32(var_1, 18u)], -1i, -2147483647i))), arg_2.a);
    return ~arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(u_input.c.x, 13u)];
    var_0 = true;
    global3 = vec3<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 13u)] && global4[_wgslsmith_index_u32(~u_input.a, 13u)], false, !global3.x);
    var var_1 = vec4<u32>(_wgslsmith_div_u32(4294967295u, func_1(1i, ~(1u ^ u_input.c.x), Struct_4(min(vec3<i32>(-26461i, 0i, -13934i), vec3<i32>(-2147483647i, -2147483647i, -12683i)), _wgslsmith_f_op_f32(select(675f, 717f, false)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-812f, 1163f, 486f, 724f), vec4<f32>(1776f, -235f, -1411f, -811f))), vec4<f32>(1f, 1f, 1f, 1f), ~(-1i)))), ~(~u_input.c.x), abs(~(~_wgslsmith_clamp_u32(0u, u_input.c.x, 0u))), _wgslsmith_clamp_u32(reverseBits(max(32899u, u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, u_input.b), ~u_input.a, u_input.c.x, min(u_input.b, 2176u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 1u, 11172u), vec4<u32>(u_input.c.x, u_input.a, u_input.b, u_input.a))), 1u & ~u_input.a));
    global1 = array<i32, 18>();
    global4 = array<bool, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 18u)], -42386i, global1[_wgslsmith_index_u32(23542u, 18u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-793f, -831f))));
}

