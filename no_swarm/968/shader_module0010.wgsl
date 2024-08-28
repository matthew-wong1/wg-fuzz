struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false));

var<private> global1: array<u32, 11> = array<u32, 11>(18227u, 0u, 4294967295u, 58118u, 56504u, 0u, 4294967295u, 0u, 0u, 78504u, 2118u);

var<private> global2: array<Struct_3, 15>;

var<private> global3: Struct_3 = Struct_3(false, Struct_2(vec3<u32>(4294967295u, 15621u, 1u), vec3<bool>(true, true, true)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 22527u), vec3<bool>(true, true, true)), false);

var<private> global4: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(4294967295u, 4294967295u, 40330u, 1u), vec4<u32>(54999u, 0u, 24602u, 12753u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = -select(5798i, _wgslsmith_mult_i32(0i, u_input.c.x), !global3.b.b.x);
    return global3.b;
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = global3.c.b.x;
    global4 = array<vec4<u32>, 2>();
    var_0 = !(!(!(-39457i >= u_input.b)));
    var_0 = true;
    var var_1 = select(vec3<i32>(select((u_input.c.x << (1u % 32u)) << (~u_input.e.x % 32u), select(2147483647i, countOneBits(-1i), false), !all(vec4<bool>(global3.d, global3.a, global3.c.b.x, false))), -u_input.d, min(-5836i, 2147483647i)), ~vec3<i32>(_wgslsmith_add_i32(u_input.b, 0i), ~max(u_input.c.x, u_input.b), ~(-31811i & u_input.d)), global3.b.b.x);
    return -586f;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = func_2((!(!global3.d) & false) & all(vec4<bool>(arg_2 < arg_2, arg_3.b, any(vec2<bool>(arg_3.b, arg_3.b)), 1u == global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 11u)])));
    let var_1 = arg_0;
    let var_2 = global2[_wgslsmith_index_u32(var_0.a.x << (_wgslsmith_dot_vec3_u32(~(~global3.c.a) & firstLeadingBit(~u_input.e.xwx), _wgslsmith_mod_vec3_u32(select(firstLeadingBit(var_0.a), vec3<u32>(var_0.a.x, 83719u, 1u), vec3<bool>(arg_3.b, global3.b.b.x, var_0.b.x)), countOneBits(vec3<u32>(57142u, 24109u, 1u)))) % 32u), 15u)];
    let var_3 = arg_3;
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(1423f - _wgslsmith_f_op_f32(abs(219f))))), 1966f, arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(max(-1000f, arg_2))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2 - 340f), -1032f, any(var_2.b.b))))));
    return vec4<i32>(67084i | u_input.b, _wgslsmith_sub_i32(i32(-1i) * -(~u_input.d), u_input.b), _wgslsmith_clamp_i32(0i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(21580i, -1i, 2147483647i), u_input.c), 2147483647i) | 2147483647i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(func_1(global3.c.a.x, vec2<u32>(global3.b.a.x, global1[_wgslsmith_index_u32(4294967295u, 11u)]), 393f, Struct_1(u_input.a, false)), ~vec4<i32>(0i, -2147483647i, var_0.x, u_input.b)), vec4<i32>(func_1(u_input.e.x, u_input.e.zz, -378f, Struct_1(67981u, global3.a)).x, 0i & var_0.x, ~var_0.x, 28088i & u_input.d));
    var var_2 = _wgslsmith_f_op_f32(-1684f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-504f * 944f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1533f)))));
    let var_3 = Struct_4(-var_0.xz);
    let var_4 = -_wgslsmith_div_vec3_i32(vec3<i32>(abs(_wgslsmith_div_i32(23609i, var_1.x)), -1i, abs(0i) | var_1.x), ~vec3<i32>(_wgslsmith_clamp_i32(2147483647i, 33706i, var_0.x), -1i, countOneBits(var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-891f, 417f, -460f, -852f), vec4<f32>(390f, 1256f, 941f, 467f))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-745f, -997f, 1000f, -407f) * vec4<f32>(-312f, -1140f, -709f, -1602f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1947f, 1256f, 291f, 752f) * vec4<f32>(1083f, 285f, -582f, -618f)), select(vec4<bool>(true, true, true, global3.d), vec4<bool>(global3.b.b.x, global3.a, global3.b.b.x, global3.c.b.x), false))))));
}

