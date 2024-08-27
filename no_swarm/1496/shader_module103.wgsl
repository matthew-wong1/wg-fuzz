struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: array<u32, 4> = array<u32, 4>(4294967295u, 1u, 74490u, 1u);

var<private> global2: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-1231f, -160f, -317f, -723f), vec4<f32>(-119f, -1097f, 710f, -2800f), vec4<f32>(725f, -544f, -802f, 668f), vec4<f32>(-1000f, 1200f, -949f, 913f), vec4<f32>(1638f, 579f, -1000f, 1233f), vec4<f32>(1000f, 400f, -1272f, -949f));

var<private> global3: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1() -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global3.e.c.x, 1853f)))));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> u32 {
    let var_0 = 39306i;
    var var_1 = ~countOneBits(vec3<i32>(_wgslsmith_dot_vec3_i32(global3.a.yxz, vec3<i32>(-1i, arg_1.a.x, 1i)), u_input.a, abs(-arg_1.a.x)));
    let var_2 = -7774i;
    global2 = array<vec4<f32>, 6>();
    global0 = array<bool, 7>();
    return ~(~arg_0) << (countOneBits(global3.c.x) % 32u);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32) -> u32 {
    global2 = array<vec4<f32>, 6>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x + global3.b.c.x), _wgslsmith_f_op_f32(arg_1.x * arg_0.e.c.x))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.c.x) + global3.d.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.b.c.yx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.d.zx)) * vec2<f32>(_wgslsmith_div_f32(-988f, -592f), _wgslsmith_f_op_f32(713f * arg_0.b.c.x))))));
    global1 = array<u32, 4>();
    global3 = Struct_2(firstTrailingBit(global3.a), global3.b, ~(~(~(~global3.c))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_1.wyz * _wgslsmith_f_op_vec3_f32(-arg_1.yyz)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.e.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1205f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-398f + 1574f))), true)), Struct_1(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(arg_0.b.a, 4u)], 4294967295u) << (global3.b.a % 32u), select(select(vec3<bool>(false, true, global3.e.b.x), global3.b.b, select(arg_0.e.b, vec3<bool>(false, false, false), arg_0.b.b.x)), arg_0.e.b, _wgslsmith_dot_vec4_u32(vec4<u32>(13054u, global3.e.a, 12407u, 0u), vec4<u32>(19535u, arg_0.e.a, global1[_wgslsmith_index_u32(0u, 4u)], global3.c.x)) < max(4294967295u, 46919u)), _wgslsmith_f_op_vec4_f32(select(arg_1, vec4<f32>(_wgslsmith_f_op_f32(var_0 + var_1.x), -818f, _wgslsmith_f_op_f32(step(-2037f, -1660f)), _wgslsmith_f_op_f32(round(arg_1.x))), false))));
    return ~(~countOneBits(_wgslsmith_clamp_u32(func_2(42552u, Struct_2(vec4<i32>(-11205i, 14068i, global3.a.x, -38073i), Struct_1(58655u, global3.b.b, global3.b.c), vec2<u32>(1u, global3.e.a), arg_0.b.c.wyx, arg_0.e)), ~global1[_wgslsmith_index_u32(103442u, 4u)], func_2(global1[_wgslsmith_index_u32(0u, 4u)], Struct_2(vec4<i32>(u_input.a, global3.a.x, global3.a.x, u_input.a), global3.b, global3.c, vec3<f32>(-350f, arg_0.b.c.x, 986f), arg_0.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_u32(func_2(_wgslsmith_mult_u32(global3.c.x, global1[_wgslsmith_index_u32(~1u, 4u)]), Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(25480i, 0i, global3.a.x, 41776i), vec4<i32>(u_input.a, -1i, 0i, -1i)), global3.b, ~global3.c, _wgslsmith_f_op_vec3_f32(func_1()), Struct_1(global3.b.a, global3.b.b, global2[_wgslsmith_index_u32(global3.c.x, 6u)]))), func_3(Struct_2(vec4<i32>(0i, global3.a.x, 82061i, 0i), Struct_1(61841u, vec3<bool>(global3.b.b.x, false, global0[_wgslsmith_index_u32(global3.e.a, 7u)]), vec4<f32>(-1137f, global3.b.c.x, 712f, global3.b.c.x)), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)], 8533u), global3.b.c.xxx, Struct_1(global3.e.a, global3.e.b, global2[_wgslsmith_index_u32(1u, 6u)])), vec4<f32>(global3.b.c.x, global3.b.c.x, -540f, -287f), -625f) & global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(global3.b.a, 4u)]), 4u)], 4u)]);
    global1 = array<u32, 4>();
    let var_1 = vec3<i32>(~_wgslsmith_mult_i32(u_input.a, u_input.a), -1i, 0i);
    global0 = array<bool, 7>();
    var var_2 = !(u_input.a < abs(_wgslsmith_div_i32(abs(-13898i), min(25739i, 27331i))));
    let var_3 = -2147483647i;
    let var_4 = _wgslsmith_mod_i32(1i, ~(-25157i));
    var var_5 = (global3.a & _wgslsmith_add_vec4_i32(vec4<i32>(var_3, min(1i, var_1.x), 0i, u_input.a), countOneBits(vec4<i32>(var_1.x, var_3, 0i, 2147483647i)))) & (-global3.a >> (_wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(0u), 33189u, global3.b.a, global3.e.a), vec4<u32>(_wgslsmith_dot_vec2_u32(global3.c, global3.c), select(global3.b.a, 4294967295u, true), 4294967295u, _wgslsmith_div_u32(44745u, global1[_wgslsmith_index_u32(4294967295u, 4u)]))) % vec4<u32>(32u)));
    var var_6 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1343f, global3.b.c.x)), global3.b.c.x), _wgslsmith_f_op_f32(-284f * global3.b.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1474u, select(_wgslsmith_mod_vec3_u32(vec3<u32>(54165u, var_0, _wgslsmith_add_u32(54612u, global1[_wgslsmith_index_u32(var_0, 4u)])), ~max(vec3<u32>(global1[_wgslsmith_index_u32(35203u, 4u)], global1[_wgslsmith_index_u32(global3.c.x, 4u)], global1[_wgslsmith_index_u32(27690u, 4u)]), vec3<u32>(0u, 7384u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)]))), reverseBits(select(vec3<u32>(global3.c.x, global1[_wgslsmith_index_u32(4294967295u, 4u)], global3.c.x), vec3<u32>(var_0, 1u, global3.e.a), false)) | vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(44084u, 2643u, global1[_wgslsmith_index_u32(var_0, 4u)], global3.e.a), vec4<u32>(global1[_wgslsmith_index_u32(0u, 4u)], 1u, 0u, 4294967295u)), global1[_wgslsmith_index_u32(var_0, 4u)], _wgslsmith_div_u32(global3.e.a, var_0)), !(!(global3.b.b.x || global3.b.b.x))), ~_wgslsmith_sub_i32(var_5.x, _wgslsmith_sub_i32(29278i & var_4, -1i)));
}

