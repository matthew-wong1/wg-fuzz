struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22>;

var<private> global1: Struct_3 = Struct_3(vec3<u32>(0u, 1461u, 4294967295u), Struct_1(425f), vec3<u32>(0u, 4294967295u, 0u), Struct_2(vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), Struct_1(275f), vec4<f32>(448f, -1798f, -1000f, -1448f), 1i), Struct_1(1056f));

var<private> global2: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global3: array<vec2<i32>, 18>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> i32 {
    var var_0 = u_input.b.wz;
    let var_1 = Struct_3(global1.a, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1296f)), _wgslsmith_div_vec3_u32(u_input.d, ~select(~vec3<u32>(u_input.d.x, 40358u, 76378u), global1.a, vec3<bool>(true, true, true))), Struct_2(~u_input.b.wzy, Struct_1(1154f), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_f_op_f32(f32(-1f) * -194f), -356f), 26569i >> (global1.c.x % 32u)), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -620f)))));
    global1 = var_1;
    global1 = var_1;
    var var_2 = global1.d;
    return u_input.b.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = global1.b;
    var var_1 = 1u;
    let var_2 = Struct_1(1058f);
    var var_3 = vec2<i32>(global1.d.a.x, firstLeadingBit(_wgslsmith_sub_i32(func_3(Struct_1(var_2.a), 3199u, arg_1.c.x, Struct_2(vec3<i32>(-7444i, -11332i, 0i), global1.d.b, arg_1.c, arg_1.d)) << (28076u % 32u), 30945i)));
    var var_4 = vec3<i32>(-25725i, 49737i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_3.x, arg_1.a.x, global1.d.d, 1615i)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -33483i) ^ -vec4<i32>(u_input.b.x, arg_1.a.x, arg_0.x, arg_0.x)) | _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_0.x, 6767i), -arg_0.x), _wgslsmith_mod_i32(0i, -15480i)));
    return !select(vec2<bool>(!(var_4.x == -1i), true), select(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_f_op_f32(298f + var_0.a) > 1f), all(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(global1.c.x, u_input.c.x), 30u)]));
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_3 {
    var var_0 = !vec4<bool>(true, true, any(select(global2[_wgslsmith_index_u32(29749u << (arg_0 % 32u), 30u)], func_2(vec3<i32>(2147483647i, 38885i, global1.d.d), Struct_2(u_input.b.yyx, Struct_1(global1.b.a), global1.d.c, global1.d.a.x)), global2[_wgslsmith_index_u32(31566u, 30u)])), !(_wgslsmith_f_op_f32(global1.e.a - global1.b.a) > -684f));
    var var_1 = u_input.b.wzw;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(584f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.a * _wgslsmith_f_op_f32(trunc(global1.d.b.a))))));
    var var_3 = Struct_3(u_input.d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), global1.a, global1.d, global1.b);
    let var_4 = global2[_wgslsmith_index_u32(global1.c.x | arg_1, 30u)];
    return Struct_3(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(0u, arg_0, 1u) & var_3.c)), global1.d.b, _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(~u_input.d.x, _wgslsmith_mod_u32(global1.a.x, var_3.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(7743u, arg_1), var_3.c.zx)), ~_wgslsmith_add_u32(global1.a.x, 4294967295u), select(4294967295u, 4294967295u, true) >> (0u % 32u)), u_input.a), Struct_2(vec3<i32>(i32(-1i) * -global1.d.d, (i32(-1i) * -26923i) >> (~arg_1 % 32u), 0i), Struct_1(var_3.e.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(13485u, 22u)] - global1.d.c))), -global1.d.a.x), global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(29863u, ~(~u_input.c.x));
    let var_0 = global1.d;
    let var_1 = global3[_wgslsmith_index_u32(firstTrailingBit(func_1(21724u, u_input.c.x).a.x), 18u)];
    global0 = array<vec4<f32>, 22>();
    var var_2 = reverseBits(vec3<u32>(58085u, u_input.c.x | 4294967295u, ~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 63476u, 78756u))));
    let x = u_input.a;
    s_output = StorageBuffer(15510u, _wgslsmith_sub_vec4_i32(~(~u_input.b) & u_input.b, reverseBits(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, u_input.b.x, var_0.d, -10864i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global1.d.c.xx)))) * _wgslsmith_f_op_vec2_f32(-global1.d.c.zy)));
}

