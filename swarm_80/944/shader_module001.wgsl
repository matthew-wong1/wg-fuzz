struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<bool>;

var<private> global2: bool;

var<private> global3: array<bool, 12>;

var<private> global4: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-27277i, -1i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, 0i), vec2<i32>(-19045i, 64415i), vec2<i32>(-1i, -1i), vec2<i32>(-13815i, 13794i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-15201i, 10705i), vec2<i32>(-1i, -5872i), vec2<i32>(i32(-2147483648), i32(-2147483648)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: vec4<u32>, arg_3: u32) -> u32 {
    var var_0 = Struct_3(vec3<bool>(false | all(!vec2<bool>(false, global3[_wgslsmith_index_u32(arg_0.x, 12u)])), true, any(vec2<bool>(global1.x, !global1.x))));
    return _wgslsmith_mult_u32(~0u, _wgslsmith_div_u32(arg_3, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_2.xy, vec2<u32>(3684u, 4503u)), vec2<u32>(~4294967295u, 0u))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec4<bool>) -> u32 {
    global3 = array<bool, 12>();
    global0 = arg_1.a.a.x;
    global3 = array<bool, 12>();
    let var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(~arg_2.a.xz, vec2<u32>(1u, arg_2.a.x))), 1u | (arg_2.a.x >> (max(arg_2.a.x, 54089u) % 32u))), vec2<u32>(_wgslsmith_mult_u32(~0u, _wgslsmith_div_u32(firstLeadingBit(8504u), arg_1.a.a.x)), arg_1.a.a.x), arg_2.a.zx);
    let var_1 = ~(~min(1u, arg_2.a.x));
    return arg_2.b.x;
}

fn func_2() -> Struct_2 {
    global4 = array<vec2<i32>, 12>();
    let var_0 = 653f;
    global3 = array<bool, 12>();
    let var_1 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(0u, ~0u, 15428u), 33311u), vec2<u32>(~1u, func_3(select(false, false, false), Struct_2(Struct_1(vec2<u32>(2934u, 4294967295u), 582f)), Struct_4(vec3<u32>(4621u, 1u, 99234u), vec3<u32>(4294967295u, 1u, 4294967295u)), vec4<bool>(global1.x, global1.x, global3[_wgslsmith_index_u32(11671u, 12u)], global1.x)))), _wgslsmith_f_op_f32(trunc(var_0)));
    global3 = array<bool, 12>();
    return Struct_2(Struct_1(_wgslsmith_mod_vec2_u32(var_1.a << (var_1.a % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(10885u, 1u) ^ var_1.a, ~vec2<u32>(0u, var_1.a.x))), -967f));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> bool {
    var var_0 = arg_1.a.b;
    let var_1 = _wgslsmith_add_vec2_i32(reverseBits(_wgslsmith_mult_vec2_i32(-abs(global4[_wgslsmith_index_u32(arg_1.a.a.x, 12u)]), global4[_wgslsmith_index_u32(~firstTrailingBit(95358u), 12u)])), firstTrailingBit(firstTrailingBit(reverseBits(global4[_wgslsmith_index_u32(arg_1.a.a.x ^ 1u, 12u)]))));
    var var_2 = vec4<u32>(func_2().a.a.x, ~max(_wgslsmith_add_u32(53089u, arg_0), firstLeadingBit(arg_0)), arg_0 >> (arg_0 % 32u), 89651u) | vec4<u32>(_wgslsmith_mod_u32(arg_1.a.a.x, arg_0), _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0, ~4461u), arg_1.a.a << (arg_1.a.a % vec2<u32>(32u))), reverseBits(arg_0), (4294967295u >> (_wgslsmith_sub_u32(0u, arg_0) % 32u)) | 36630u);
    global3 = array<bool, 12>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1614f))), arg_1.a.b)) * 514f);
    return !(global3[_wgslsmith_index_u32(var_2.x ^ ~_wgslsmith_dot_vec2_u32(var_2.wx, var_2.zz), 12u)] || !all(select(global1.xy, vec2<bool>(global1.x, global3[_wgslsmith_index_u32(61023u, 12u)]), global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(~(~84879u) >> (1u % 32u)));
    var_0 = 0u;
    let var_1 = Struct_3(vec3<bool>(global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(func_1(vec2<u32>(4294967295u, 1u), u_input.a.x, vec4<u32>(16624u, 1u, 0u, 0u), 0u), select(97813u, 24025u, global1.x)), 12u)], true, !func_4(1u, func_2())));
    let var_2 = Struct_3(!vec3<bool>(select(true, true, u_input.a.x >= u_input.a.x), false, true));
    global0 = _wgslsmith_div_u32(1u, ~(~1u) & func_2().a.a.x);
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(abs(select(vec4<u32>(1u, 36235u, 19834u, 1u), vec4<u32>(1u, 0u, 0u, 15922u), global3[_wgslsmith_index_u32(33336u, 12u)]))));
}

