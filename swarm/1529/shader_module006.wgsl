struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: array<vec2<i32>, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2244f - 1766f), -1087f));
    global1 = array<vec2<i32>, 12>();
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(-760f)), var_0, _wgslsmith_f_op_f32(-arg_0.c));
    return arg_0.b;
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global0 = array<u32, 4>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_0.a))), 2147483647i, 1f, _wgslsmith_f_op_vec4_f32(min(arg_0.d, arg_0.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_0.d.zy)) + vec2<f32>(arg_0.a.x, arg_0.c))));
    let var_1 = ~abs(vec2<i32>(~(-2147483647i), -15787i)) >> (_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(11643u, 4u)]), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], 104426u), vec2<u32>(4294967295u, 61946u)), _wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60398u, 4u)], 4u)], global0[_wgslsmith_index_u32(36715u, 4u)]), select(vec2<u32>(global0[_wgslsmith_index_u32(1u, 4u)], 1u), vec2<u32>(3752u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33369u, 4u)], 4u)], 4u)], 4u)]), vec2<bool>(false, true)))), vec2<u32>(global0[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4u)]), 4u)]), 4u)], select(firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 4u)]), 37354u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], true))) % vec2<u32>(32u));
    var var_2 = _wgslsmith_div_vec3_u32(~(~vec3<u32>(27455u, 4294967295u, 1u)), firstTrailingBit(~_wgslsmith_mod_vec3_u32(vec3<u32>(14945u, 1u, global0[_wgslsmith_index_u32(1u, 4u)]), vec3<u32>(global0[_wgslsmith_index_u32(0u, 4u)], 91301u, 30039u)) ^ vec3<u32>(4294967295u, 4294967295u, ~6232u)));
    var_2 = ~(~(((vec3<u32>(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], 4u)], 4u)], 4u)], var_2.x) ^ vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], var_2.x, var_2.x)) | firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], var_2.x, global0[_wgslsmith_index_u32(69785u, 4u)]))) | (select(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 5445u, 576u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], global0[_wgslsmith_index_u32(0u, 4u)], 0u), true) | vec3<u32>(13495u, 1u, global0[_wgslsmith_index_u32(4294967295u, 4u)]))));
    return select(!vec3<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), var_0.b < -4241i, true), vec3<bool>(true, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true))), true), vec3<bool>(false, true, true));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global1 = array<vec2<i32>, 12>();
    var var_0 = ~_wgslsmith_add_vec4_u32(~(~vec4<u32>(8474u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(102u, 4u)], 4u)], global0[_wgslsmith_index_u32(51846u, 4u)], 53875u)), reverseBits(~vec4<u32>(12347u, 16691u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], 4u)])));
    var var_1 = select(func_3(Struct_1(vec3<f32>(1000f, _wgslsmith_div_f32(-393f, arg_0), _wgslsmith_f_op_f32(-arg_0)), func_2(Struct_1(vec3<f32>(1997f, -373f, arg_0), u_input.b.x, 194f, vec4<f32>(arg_0, -1163f, arg_0, 1174f), vec2<f32>(1000f, arg_0)), u_input.a.x), 190f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(230f, -1000f, 793f, -799f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 566f) + vec2<f32>(1f, 1f)))), !select(func_3(Struct_1(vec3<f32>(538f, -1025f, arg_0), u_input.a.x, 413f, vec4<f32>(arg_0, 375f, 388f, arg_0), vec2<f32>(arg_0, 1000f))), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), func_3(Struct_1(vec3<f32>(arg_0, arg_0, arg_0), u_input.b.x, arg_0, vec4<f32>(arg_0, arg_0, 286f, arg_0), vec2<f32>(arg_0, -711f))).x), select(true, true, true)), !all(vec2<bool>(any(vec4<bool>(true, true, true, false)), false)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-140f, arg_0, -1371f), vec3<f32>(arg_0, 1000f, -139f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, 167f, arg_0), vec3<f32>(arg_0, arg_0, 1763f)))))), -(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -1i, u_input.b.x), u_input.b.yxx), vec3<i32>(15399i, 0i, u_input.b.x)) | u_input.a.x), -128f, vec4<f32>(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-388f + 703f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(411f, 1512f))), 410f, _wgslsmith_f_op_f32(f32(-1f) * -1723f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, -607f))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, arg_0))))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 12>();
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1194f, -982f, 197f, 1603f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-381f, -172f, 747f, 1000f))))))))));
    var var_1 = func_1(-265f);
    let var_2 = global0[_wgslsmith_index_u32(34270u, 4u)] != _wgslsmith_mult_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(min(38772u, ~4294967295u), 4u)], _wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(69907u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11217u, 4u)], 4u)]), 0u)), countOneBits(_wgslsmith_mult_u32(14230u, global0[_wgslsmith_index_u32(4294967295u, 4u)])));
    let var_3 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(0i & _wgslsmith_sub_i32(abs(u_input.a.x), var_1.b), u_input.a.x ^ -2147483647i), _wgslsmith_div_i32(-2147483647i, min(2147483647i, var_1.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(130f))) * 122f))), -18514i);
}

