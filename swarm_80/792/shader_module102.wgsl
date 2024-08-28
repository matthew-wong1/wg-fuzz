struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(false, false, false, true, true, true, false, true, false, false, false, false, false, true, false, true, false, false, false, false, false, true, true);

var<private> global1: array<u32, 8>;

var<private> global2: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<f32>) -> i32 {
    global2 = array<vec4<bool>, 23>();
    var var_0 = !(!(!global2[_wgslsmith_index_u32(1u, 23u)]));
    global1 = array<u32, 8>();
    var var_1 = firstLeadingBit(~4294967295u);
    let var_2 = ~(~firstTrailingBit(vec4<i32>(2147483647i, u_input.a, u_input.a, 1i)) & (vec4<i32>(arg_1.x | u_input.a, u_input.a, arg_1.x ^ arg_1.x, _wgslsmith_sub_i32(arg_1.x, arg_1.x)) | ~(~vec4<i32>(arg_1.x, 13140i, 2147483647i, u_input.b))));
    return ~1i;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_3, arg_3: u32) -> bool {
    let var_0 = vec3<bool>(any(vec2<bool>(all(select(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 23u)]), vec2<bool>(false, true), arg_2.b.d)), !(global0[_wgslsmith_index_u32(1u, 23u)] & true))), global0[_wgslsmith_index_u32(abs(~global1[_wgslsmith_index_u32(~0u, 8u)]), 23u)], true);
    global0 = array<bool, 23>();
    global1 = array<u32, 8>();
    let var_1 = firstLeadingBit(arg_2.a);
    var var_2 = arg_1;
    return !(!(_wgslsmith_dot_vec4_i32(~vec4<i32>(-14970i, var_2.a, var_2.a, arg_1.a), -vec4<i32>(0i, u_input.b, -10587i, var_1)) > ~(~(-2147483647i))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> vec2<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1785f - _wgslsmith_f_op_f32(arg_2.c + 1347f)))));
    var var_1 = vec3<bool>(true, arg_2.b.d, false);
    global1 = array<u32, 8>();
    var var_2 = u_input.c.wx;
    let var_3 = !func_4(var_0, Struct_4(func_3(Struct_2(var_0.a), firstLeadingBit(vec3<i32>(u_input.a, u_input.a, arg_0)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-201f, arg_2.c)))), u_input.c | vec4<u32>(50862u, 48564u, 1u, 62788u), global1[_wgslsmith_index_u32(22758u, 8u)]), arg_2, _wgslsmith_clamp_u32(arg_2.b.c, u_input.c.x, _wgslsmith_add_u32(u_input.c.x, ~arg_2.b.c)));
    return vec2<f32>(-231f, arg_2.c);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(652f, arg_3.a))), _wgslsmith_f_op_vec2_f32(func_2(u_input.a, arg_2.x, Struct_3(arg_2.x, Struct_1(1i, arg_2.zy, 0u, true), -1000f)))))) - vec2<f32>(-1156f, _wgslsmith_f_op_f32(arg_0.x - -903f))));
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    var var_1 = arg_3;
    return arg_3;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_3) -> vec2<u32> {
    let var_0 = Struct_1(u_input.b, -arg_2.b.b, 0u, !all(select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(60588u, 23u)]), vec2<bool>(arg_2.b.d, true), vec2<bool>(global0[_wgslsmith_index_u32(79259u, 23u)], global0[_wgslsmith_index_u32(arg_2.b.c, 23u)])), select(vec2<bool>(false, arg_2.b.d), vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21777u, 8u)], 23u)], true), global0[_wgslsmith_index_u32(u_input.c.x, 23u)]), -1752f == arg_2.c)));
    global0 = array<bool, 23>();
    var var_1 = func_3(arg_0, _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.b & 2147483647i, u_input.b << (arg_1.b.x % 32u), var_0.b.x), reverseBits(-vec3<i32>(0i, u_input.a, arg_1.a))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.c, -1562f), vec2<f32>(-218f, arg_0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, -223f)) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.c, arg_2.c), vec2<f32>(arg_0.a, arg_2.c))), vec2<bool>(true, var_0.d))))));
    return _wgslsmith_mod_vec2_u32(vec2<u32>(~53561u, reverseBits(min(var_0.c, select(u_input.c.x, u_input.c.x, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 23u)])))), u_input.c.xy);
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -58387i, 1i) << (u_input.c.x % 32u), u_input.a), vec2<i32>(u_input.b, _wgslsmith_mult_i32(-1i, _wgslsmith_mult_i32(abs(-2147483647i), -arg_1.a))));
    var_0 = 2147483647i;
    global1 = array<u32, 8>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.c)))))));
    let var_2 = func_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.a, var_1.a), vec2<f32>(var_1.a, _wgslsmith_div_f32(1726f, arg_1.c)))))), vec3<u32>(32115u, firstTrailingBit(select(select(u_input.c.x, 0u, arg_1.b.d), 47567u, arg_1.b.c <= arg_1.b.c)), u_input.c.x), vec3<i32>(-_wgslsmith_mult_i32(reverseBits(0i), -u_input.b), -1i, reverseBits(arg_1.a)), Struct_2(-1013f));
    return arg_1.b;
}

fn func_7(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1.b << (~u_input.c.yy % vec2<u32>(32u));
    let var_1 = Struct_4(var_0.x, u_input.c, 34337u);
    global2 = array<vec4<bool>, 23>();
    let var_2 = arg_0;
    var var_3 = var_1;
    return ~var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(25851i, vec2<i32>(u_input.b, u_input.a) >> (~(~vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], 8u)])) % vec2<u32>(32u)), func_7(global0[_wgslsmith_index_u32(max(~_wgslsmith_mod_u32(0u, 4294967295u), _wgslsmith_add_u32(~u_input.c.x, ~72838u)), 23u)], func_6(func_5(func_1(vec2<f32>(1000f, 1000f), u_input.c.xzz, vec3<i32>(u_input.b, u_input.b, u_input.a), Struct_2(-635f)), Struct_4(1i, vec4<u32>(22054u, 72069u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32367u, 8u)], 8u)]), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(65922u, 8u)], 8u)]), Struct_3(u_input.a, Struct_1(-1i, vec2<i32>(u_input.b, 0i), 4294967295u, global0[_wgslsmith_index_u32(74509u, 23u)]), 636f)), Struct_3(countOneBits(u_input.b), Struct_1(u_input.b, vec2<i32>(-2147483647i, u_input.b), 47870u, global0[_wgslsmith_index_u32(61898u, 23u)]), -755f))), true);
    let var_1 = Struct_4(-41419i, _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(1u, 2576u, 4294967295u, 4294967295u)) | vec4<u32>(var_0.c, u_input.c.x, var_0.c, 87603u), u_input.c), ~select(u_input.c, vec4<u32>(1u, u_input.c.x, var_0.c, u_input.c.x), !global2[_wgslsmith_index_u32(21225u, 23u)])), ~(~max(0u, global1[_wgslsmith_index_u32(0u, 8u)] << (53415u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1025f), _wgslsmith_f_op_f32(max(-250f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(113f, 1278f)))) + _wgslsmith_f_op_f32(f32(-1f) * -235f)), 177f)), 4294967295u, reverseBits(~_wgslsmith_clamp_vec3_i32(vec3<i32>(40527i, 2147483647i, var_1.a), vec3<i32>(20123i, -2147483647i, 0i), -vec3<i32>(var_1.a, 6302i, 0i))));
}

