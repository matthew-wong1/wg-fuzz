struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: bool;

var<private> global2: array<vec3<f32>, 13>;

var<private> global3: array<Struct_1, 13>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2() -> bool {
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(7166u, 49397u), 0u), countOneBits(vec2<u32>(1u, 1u)), abs(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(2865u, 1u), vec2<u32>(19425u, 40286u))))), _wgslsmith_f_op_f32(-635f * -1145f), -1399f);
    let var_1 = _wgslsmith_f_op_f32(abs(724f));
    global3 = array<Struct_1, 13>();
    global3 = array<Struct_1, 13>();
    global0 = ~abs(vec4<i32>(min(_wgslsmith_sub_i32(global0.x, global0.x), 8183i), ~u_input.a.x, u_input.a.x, -43913i));
    return any(vec2<bool>(true, any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5) -> bool {
    var var_0 = arg_0.b.b;
    global2 = array<vec3<f32>, 13>();
    let var_1 = arg_1.b.d;
    var var_2 = Struct_4(func_2(), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(arg_0.a, -1i, -36653i)) ^ ~46617i, _wgslsmith_clamp_i32(arg_1.b.b.x, 1i, -1i)) & global0.yz, Struct_2(firstLeadingBit(~(-12724i)), arg_1.b.a, !(!arg_1.b.c), arg_0.d ^ ~_wgslsmith_mod_vec4_u32(arg_0.d, vec4<u32>(arg_1.b.a.a.x, arg_0.d.x, arg_0.d.x, 0u)), vec4<i32>(-2147483647i, min(arg_1.b.b.x, -23923i), 23329i, -u_input.b.x) << (_wgslsmith_mult_vec4_u32(~arg_0.d, arg_0.d) % vec4<u32>(32u))), arg_1.b.b, Struct_3(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b.a.x, arg_1.b.a.a.x), arg_1.b.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.d * var_1) * _wgslsmith_f_op_f32(var_1 + -1513f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(868f + -823f))), abs(_wgslsmith_mod_vec3_i32(-vec3<i32>(29122i, u_input.a.x, u_input.a.x), min(global0.yyw, global0.xzx))), false, _wgslsmith_f_op_f32(-var_1)));
    global0 = vec4<i32>(~2147483647i, -2147483647i, firstTrailingBit(-31644i), 2147483647i);
    return -2147483647i == arg_1.b.b.x;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global1 = select(func_2(), func_3(Struct_2(u_input.b.x, Struct_1(vec2<u32>(0u, 0u), -1000f, 1140f), true, max(vec4<u32>(0u, 42833u, 1u, 0u), vec4<u32>(4294967295u, 1u, 1u, 43256u)), countOneBits(vec4<i32>(arg_0.x, 2147483647i, -16645i, global0.x))), Struct_5(_wgslsmith_clamp_u32(4294967295u, 79451u, 4294967295u), Struct_3(global3[_wgslsmith_index_u32(4294967295u, 13u)], vec3<i32>(1i, -4172i, -3724i), true, -239f))) & (true & any(vec3<bool>(true, true, true))), all(vec3<bool>(true, true, true)));
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -769f);
    let var_1 = Struct_1(vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(1027f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1000f))))), 1000f);
    global2 = array<vec3<f32>, 13>();
    global2 = array<vec3<f32>, 13>();
    return Struct_1(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -680f), _wgslsmith_f_op_f32(exp2(var_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 13>();
    var var_0 = func_1(global0.ywz);
    var var_1 = _wgslsmith_f_op_f32(var_0.c * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1355f + _wgslsmith_f_op_f32(493f - var_0.c))), 133f));
    let var_2 = global3[_wgslsmith_index_u32(var_0.a.x, 13u)];
    var_0 = global3[_wgslsmith_index_u32(var_0.a.x, 13u)];
    let var_3 = select(select(vec2<bool>((var_0.a.x < var_0.a.x) && select(false, false, false), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), -2147483647i < u_input.a.x), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), select(true, false, true))), vec2<bool>(!all(vec3<bool>(false, true, true)), false)), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), any(vec4<bool>(true, false, false, false))), vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(false, true, false)))), !vec2<bool>(true, select(true, var_2.c == var_2.b, true)));
    global2 = array<vec3<f32>, 13>();
    var_0 = global3[_wgslsmith_index_u32(var_2.a.x, 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

