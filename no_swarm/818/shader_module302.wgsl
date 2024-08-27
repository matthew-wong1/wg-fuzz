struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(0u, 3877u), Struct_3(63317u, 99768u), Struct_3(1u, 4294967295u), Struct_3(70099u, 113678u), Struct_3(0u, 14808u), Struct_3(4294967295u, 0u), Struct_3(4294967295u, 11757u), Struct_3(33375u, 22732u), Struct_3(15983u, 74081u), Struct_3(67459u, 1u), Struct_3(4294967295u, 4294967295u), Struct_3(3063u, 564u), Struct_3(4294967295u, 26444u), Struct_3(0u, 19141u));

var<private> global1: array<vec3<u32>, 7>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec2<i32>) -> bool {
    let var_0 = arg_1.c.a >= arg_3.x;
    global1 = array<vec3<u32>, 7>();
    var var_1 = -select(_wgslsmith_div_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 0i, -2147483647i, u_input.a), vec4<i32>(arg_3.x, arg_3.x, u_input.b.x, -56818i)), select(-vec4<i32>(u_input.b.x, arg_3.x, 2147483647i, arg_3.x), vec4<i32>(arg_3.x, arg_1.a, 2147483647i, -13411i) >> (vec4<u32>(0u, 8054u, 4294967295u, 0u) % vec4<u32>(32u)), all(arg_1.c.b.xyy))), _wgslsmith_mult_vec4_i32(~abs(vec4<i32>(u_input.a, -1i, arg_1.b.a, 0i)), max(~vec4<i32>(21462i, arg_1.c.a, u_input.b.x, -15570i), -vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, -12445i))), vec4<bool>(false, false, var_0 | (true || var_0), arg_1.c.b.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(171f, _wgslsmith_f_op_f32(arg_2.x - -1000f))))) * arg_2.x));
    let var_3 = Struct_3(~select(_wgslsmith_dot_vec3_u32(select(vec3<u32>(7930u, 4294967295u, 12655u), vec3<u32>(1u, 58928u, 1u), true), reverseBits(vec3<u32>(1u, 4294967295u, 0u))), ~(~47105u), arg_1.b.b.x), ~firstTrailingBit(select(select(1u, 1u, arg_1.c.b.x), _wgslsmith_mod_u32(21312u, 29013u), true)));
    return any(select(!select(!vec2<bool>(var_0, false), !arg_1.b.b.wx, arg_1.b.b.xx), vec2<bool>(true, any(arg_1.b.b)), !arg_1.b.b.wx));
}

fn func_2(arg_0: f32, arg_1: f32) -> bool {
    var var_0 = Struct_1(-1i, select(vec4<bool>(true, true && select(true, false, true), func_3(Struct_4(vec3<f32>(arg_1, -1165f, arg_1)), Struct_2(-2147483647i, Struct_1(u_input.a, vec4<bool>(false, true, true, true)), Struct_1(-4526i, vec4<bool>(true, false, false, true)), vec2<f32>(-830f, -608f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1, arg_1, 863f))), max(u_input.b, vec2<i32>(-8171i, u_input.a))), !select(false, true, true)), vec4<bool>(true, true, true, firstLeadingBit(4294967295u) != _wgslsmith_dot_vec2_u32(vec2<u32>(5136u, 25726u), vec2<u32>(0u, 1u))), !any(vec3<bool>(false, true, true)) && (10180u != _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 9257u, 1u), global1[_wgslsmith_index_u32(56008u, 7u)]))));
    let var_1 = !select(var_0.b.zzy, vec3<bool>(false, !(-29856i <= u_input.a), select(var_0.b.x, false, var_0.b.x) | true), false);
    return var_0.b.x;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<f32>) -> i32 {
    global1 = array<vec3<u32>, 7>();
    global0 = array<Struct_3, 14>();
    let var_0 = ~vec2<u32>(~12366u, countOneBits(4294967295u));
    var var_1 = !func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))) + -1213f), arg_2.x);
    var var_2 = vec4<u32>(~(countOneBits(~9392u) << (~(var_0.x << (var_0.x % 32u)) % 32u)), ~select(arg_1.x, _wgslsmith_mult_u32(~arg_1.x, _wgslsmith_div_u32(var_0.x, arg_1.x)), true), ~abs(_wgslsmith_sub_u32(arg_1.x, 1u >> (arg_1.x % 32u))), arg_1.x);
    return 2147483647i & -_wgslsmith_div_i32(-2147483647i, u_input.b.x & ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(abs(~1i), func_1(!(!all(vec4<bool>(false, false, false, true))), firstTrailingBit(vec2<u32>(1u, 4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(-501f * 1717f), _wgslsmith_f_op_f32(482f + _wgslsmith_f_op_f32(278f * -828f)), -2018f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-354f, -189f) + _wgslsmith_f_op_f32(f32(-1f) * -1527f)))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(356f, _wgslsmith_f_op_f32(-116f - _wgslsmith_f_op_f32(-1025f + 668f)), _wgslsmith_f_op_f32(f32(-1f) * -130f))));
    global1 = array<vec3<u32>, 7>();
    var var_2 = _wgslsmith_div_u32(~(~50148u), 1u);
    let var_3 = -1128f;
    let x = u_input.a;
    s_output = StorageBuffer(51795i, vec2<u32>(1u, 1u), var_3);
}

