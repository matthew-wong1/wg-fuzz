struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-28647i, true), Struct_1(2147483647i, false), Struct_1(-1i, false), Struct_1(1i, false), Struct_1(-13517i, false), Struct_1(i32(-2147483648), false), Struct_1(10587i, true), Struct_1(2147483647i, true), Struct_1(0i, false), Struct_1(36931i, false), Struct_1(21536i, false), Struct_1(40071i, true), Struct_1(0i, false), Struct_1(20437i, true), Struct_1(2147483647i, false), Struct_1(2147483647i, true), Struct_1(0i, true), Struct_1(12175i, false), Struct_1(2147483647i, false), Struct_1(-54792i, false), Struct_1(-43406i, false), Struct_1(18033i, false), Struct_1(-54705i, false), Struct_1(-1i, false), Struct_1(-33337i, false), Struct_1(i32(-2147483648), false));

var<private> global1: array<Struct_2, 30>;

var<private> global2: i32;

var<private> global3: Struct_2;

var<private> global4: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: bool, arg_1: u32) -> u32 {
    global4 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~min(1356u, arg_1), 88005u, arg_1, ~arg_1), ~select(~vec4<u32>(62855u, arg_1, arg_1, arg_1), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, arg_1, arg_1, 26253u), vec4<u32>(46024u, arg_1, 21428u, arg_1), vec4<u32>(arg_1, 4294967295u, 1u, arg_1)), true)), vec4<u32>(arg_1, arg_1, arg_1, 4294967295u)), 30u)];
    global3 = Struct_2(global4.a, global3.b, -select(vec2<i32>(min(5793i, 0i), u_input.b), reverseBits(u_input.a.yz), true));
    let var_0 = global1[_wgslsmith_index_u32(countOneBits(firstLeadingBit(arg_1)), 30u)];
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(-(u_input.a.x << (arg_1 % 32u)), 1i), -2147483647i);
    var_1 = ~var_0.b;
    return 0u;
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = arg_0;
    global0 = array<Struct_1, 26>();
    var var_1 = global3.a.yx;
    var var_2 = global0[_wgslsmith_index_u32(arg_0.x, 26u)];
    var var_3 = global3.a;
    return firstTrailingBit(arg_0.x);
}

fn func_2(arg_0: f32) -> StorageBuffer {
    let var_0 = global0[_wgslsmith_index_u32(~(~0u), 26u)];
    var var_1 = countOneBits(abs(~28969u | func_3(vec2<u32>(6202u, 5495u))) << (50511u % 32u));
    global2 = global4.c.x;
    let var_2 = _wgslsmith_mult_u32(~abs(~func_3(vec2<u32>(57300u, 26625u))), firstTrailingBit(9978u));
    var_1 = 0u;
    return StorageBuffer(max(global3.c, _wgslsmith_div_vec2_i32(min(-vec2<i32>(2147483647i, global4.c.x), countOneBits(global4.c)), ~(vec2<i32>(global4.c.x, global4.c.x) | vec2<i32>(global4.b, 1i)))), var_2, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-410f, arg_0, -516f, 494f)), vec4<f32>(341f, arg_0, arg_0, 462f), any(vec4<bool>(global4.a.x, true, var_0.b, global4.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(sign(268f)), _wgslsmith_f_op_f32(-arg_0), 1970f, _wgslsmith_f_op_f32(step(arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1225f, _wgslsmith_f_op_f32(736f + arg_0), arg_0) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0) + vec4<f32>(667f, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, arg_0, 947f, -2312f))))))), ~vec3<u32>(_wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(0u, 1738u)), var_2 << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, var_2, 6198u, var_2), vec4<u32>(var_2, var_2, var_2, var_2)) % 32u), ~(~var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(844f, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global1[_wgslsmith_index_u32(56141u, 30u)];
    var var_0 = ~select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, func_1(false, 32152u), ~4294967295u, reverseBits(26094u)), true || any(vec4<bool>(true, false, global3.a.x, global3.a.x)));
    var_0 = ~_wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(1u, var_0.x, 4294967295u, 23263u))), ~vec4<u32>(_wgslsmith_add_u32(var_0.x, 0u), ~var_0.x, var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(65852u, 3407u), var_0.xz)));
    var var_1 = (_wgslsmith_sub_vec2_u32(firstTrailingBit(~vec2<u32>(4294967295u, 35124u)), ~var_0.zw) | vec2<u32>(var_0.x, 39994u)) << ((vec2<u32>(90906u, _wgslsmith_dot_vec2_u32(vec2<u32>(22611u, var_0.x), vec2<u32>(56324u, 0u))) & vec2<u32>(var_0.x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.x, var_0.x), _wgslsmith_sub_u32(var_0.x, var_0.x), var_0.x))) % vec2<u32>(32u));
    let var_2 = -442f;
    global4 = global1[_wgslsmith_index_u32(var_1.x, 30u)];
    let x = u_input.a;
    s_output = func_2(_wgslsmith_f_op_f32(f32(-1f) * -701f));
}

