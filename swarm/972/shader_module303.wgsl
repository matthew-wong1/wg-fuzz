struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(650f, -1060f, 2747f, 743f), vec2<u32>(0u, 14088u), vec3<bool>(true, true, true));

var<private> global2: Struct_1 = Struct_1(vec4<f32>(678f, 1103f, 175f, 128f), vec2<u32>(25817u, 40775u), vec3<bool>(false, false, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> bool {
    global1 = arg_0;
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_add_i32((-7892i ^ arg_1.x) >> (4294967295u % 32u), 20401i), arg_1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.e.yy, vec2<i32>(u_input.e.x, 2147483647i)), select(u_input.e.yx, vec2<i32>(16938i, u_input.b), arg_0.c.zz), _wgslsmith_add_vec2_i32(u_input.e.zz, arg_1)), min(_wgslsmith_mult_vec2_i32(arg_1, vec2<i32>(-2147483647i, 2147483647i)), abs(arg_1))), ~firstTrailingBit(select(vec2<i32>(-1i, arg_1.x), arg_1, global1.c.zx))));
    let var_1 = ~1i;
    let var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(firstLeadingBit(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, u_input.d, arg_1.x, -1i) & u_input.e, u_input.e), var_1), _wgslsmith_sub_vec3_i32(vec3<i32>(abs(-46755i), abs(u_input.e.x), 2038i), (vec3<i32>(-25596i, var_1, var_0) ^ u_input.e.zyw) & u_input.e.xyx)), u_input.e.xzy << ((~u_input.a ^ ~vec3<u32>(37728u, u_input.a.x, arg_0.b.x)) % vec3<u32>(32u)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(266f - 185f))))), arg_0.a.x);
    return global2.c.x;
}

fn func_2(arg_0: vec4<f32>) -> bool {
    var var_0 = any(vec2<bool>(global2.c.x, global1.c.x));
    let var_1 = 488f;
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - 302f), global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, 1933f) - -1408f), -344f)), vec2<u32>(reverseBits(1u << (~global0[_wgslsmith_index_u32(20983u, 10u)] % 32u)), global0[_wgslsmith_index_u32(17983u, 10u)]), vec3<bool>(!any(vec3<bool>(global1.c.x, true, true)), -1i >= (u_input.e.x >> ((u_input.c.x ^ 4294967295u) % 32u)), !func_3(Struct_1(vec4<f32>(var_1, var_1, -827f, arg_0.x), global2.b, vec3<bool>(global2.c.x, global1.c.x, false)), u_input.e.zw) & (false && func_3(Struct_1(global1.a, u_input.a.yz, vec3<bool>(global2.c.x, global2.c.x, true)), u_input.e.yy))));
    global0 = array<u32, 10>();
    let var_2 = global1.c;
    return any(global1.c.zx);
}

fn func_1(arg_0: f32) -> Struct_2 {
    global2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -199f), _wgslsmith_f_op_f32(select(global1.a.x, _wgslsmith_f_op_f32(-arg_0), -654f > global1.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.a.x, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-136f - global1.a.x))), func_2(_wgslsmith_f_op_vec4_f32(-global1.a))))), vec2<u32>(0u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], min(_wgslsmith_clamp_u32(0u, 53028u, global0[_wgslsmith_index_u32(6111u, 10u)]), 1u))), vec3<bool>(true, global1.c.x, true));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(global1.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global2.a, vec4<f32>(812f, -848f, arg_0, -109f)) * vec4<f32>(-594f, _wgslsmith_f_op_f32(step(arg_0, -301f)), _wgslsmith_div_f32(1000f, -718f), _wgslsmith_div_f32(arg_0, arg_0)))), vec2<u32>(56499u, 56287u), vec3<bool>(true, global1.c.x, _wgslsmith_dot_vec4_i32(-u_input.e, select(u_input.e, vec4<i32>(u_input.b, u_input.d, u_input.d, u_input.e.x), global2.c.x)) > -2147483647i));
    let var_1 = var_0;
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1478f, var_0.a.x, -561f, 1249f))) + _wgslsmith_f_op_vec4_f32(exp2(global1.a))), vec2<u32>(abs(global0[_wgslsmith_index_u32(0u, 10u)]), 1u & var_0.b.x), global2.c);
    var var_2 = true;
    return Struct_2(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-var_0.a.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global1 = Struct_1(global1.a, ~abs(vec2<u32>(u_input.c.x >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.b.x, 10u)], 10u)] % 32u), ~global0[_wgslsmith_index_u32(1u, 10u)])), !select(select(select(global1.c, vec3<bool>(false, global2.c.x, global1.c.x), global2.c.x), select(vec3<bool>(true, global2.c.x, global2.c.x), global2.c, false), select(vec3<bool>(global1.c.x, global2.c.x, true), vec3<bool>(false, true, true), global2.c)), vec3<bool>(true, true, true), true));
    let var_0 = ~(~(~(_wgslsmith_add_vec4_u32(vec4<u32>(global2.b.x, global1.b.x, global2.b.x, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec4<u32>(u_input.c.x, 21355u, 23539u, global2.b.x)) ^ vec4<u32>(72144u, 1u, global1.b.x, 4294967295u))));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1136f - -1000f))))));
    let var_2 = 15491u;
    var var_3 = firstTrailingBit(vec3<i32>(51141i, abs(u_input.e.x), i32(-1i) * -9308i));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, global2.a.x, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(round(arg_1.b)))), vec2<u32>(~global1.b.x >> (~global1.b.x % 32u), var_0.x), vec3<bool>(true, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), countOneBits(vec2<u32>(var_2, 0u))) != (var_0.x << (~1u % 32u)), true));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    var var_0 = arg_1;
    var var_1 = arg_1;
    var_1 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.xz) + _wgslsmith_f_op_vec2_f32(sign(var_1.a.xx))), func_1(-479f), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2391f + _wgslsmith_f_op_f32(-369f - 1491f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-653f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -503f)))));
    global0 = array<u32, 10>();
    var_0 = arg_1;
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: bool) -> f32 {
    var var_0 = 75739u;
    let var_1 = arg_0;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, global2.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))));
    let var_3 = Struct_1(vec4<f32>(1776f, global2.a.x, 290f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec2<u32>(u_input.c.x, min(~_wgslsmith_mod_u32(1u, 54547u), ~global0[_wgslsmith_index_u32(1u, 10u)])), global1.c);
    var var_4 = _wgslsmith_div_f32(-1031f, _wgslsmith_f_op_f32(2743f + 221f));
    return func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.b)) * var_2.a)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_6(func_5(Struct_2(-1515f, -1000f), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-714f, global2.a.x) - global2.a.xz), Struct_2(global2.a.x, global2.a.x), func_1(global2.a.x))), (!global2.c.x & global1.c.x) | global2.c.x)));
}

