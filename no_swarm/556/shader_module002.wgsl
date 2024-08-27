struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(-1i, 15868i, -10145i), vec3<i32>(37787i, 59020i, 2147483647i), vec3<i32>(0i, -3007i, 1i), vec3<i32>(52615i, 2147483647i, -13780i));

var<private> global1: array<u32, 25> = array<u32, 25>(1u, 1u, 1u, 1u, 4294967295u, 60557u, 21635u, 21667u, 38688u, 2199u, 4294967295u, 4294967295u, 1u, 27127u, 23258u, 1u, 1u, 1u, 4294967295u, 19351u, 77007u, 24077u, 1u, 0u, 16688u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-272f + 1050f)) * arg_2.b), arg_3.b)));
    let var_2 = arg_0;
    var var_3 = arg_0;
    var var_4 = -1410f;
    return arg_0.b;
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> vec2<u32> {
    let var_0 = Struct_1(!(any(arg_1.xx) && any(vec2<bool>(true, true))), u_input.a);
    let var_1 = Struct_2(select(((u_input.b.x & 34757u) | 0u) == ~reverseBits(global1[_wgslsmith_index_u32(39337u, 25u)]), true, true), -389f);
    var var_2 = Struct_1(var_1.a, -func_2(var_0, abs(~vec4<i32>(var_0.b.x, 2147483647i, 2147483647i, 1722i)), var_1, var_1));
    global0 = array<vec3<i32>, 4>();
    let var_3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -abs(var_0.b), -abs(u_input.a ^ vec2<i32>(26430i, 2147483647i)), -(~select(_wgslsmith_div_vec2_i32(u_input.a, u_input.a), var_0.b, !vec2<bool>(var_1.a, true))));
    return max(~(u_input.d.yy | vec2<u32>(86898u, 3890u)), vec2<u32>(~(~u_input.b.x), 6915u));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<u32>) -> bool {
    let var_0 = Struct_1(any(select(vec3<bool>(arg_1.a, arg_1.a, true), vec3<bool>(arg_1.a, arg_1.a, true), !vec3<bool>(arg_1.a, true, true))) & ((~82829u >= _wgslsmith_mod_u32(u_input.d.x, u_input.e)) | all(select(vec2<bool>(arg_1.a, false), vec2<bool>(arg_1.a, arg_1.a), true))), vec2<i32>(~firstLeadingBit(2147483647i), -2147483647i));
    global1 = array<u32, 25>();
    return arg_1.a;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = array<u32, 25>();
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i | _wgslsmith_dot_vec2_i32(arg_0.b, -vec2<i32>(67870i, 0i)), -(~(arg_0.b.x ^ 2147483647i))), -_wgslsmith_add_vec2_i32(arg_0.b, func_2(Struct_1(false, vec2<i32>(17112i, arg_0.b.x)), vec4<i32>(arg_0.b.x, -1i, -5024i, 1i), Struct_2(false, -288f), Struct_2(true, -1686f)) & vec2<i32>(arg_0.b.x, -2147483647i)));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1032f, -834f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 3015f))), true)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1337f), _wgslsmith_div_f32(734f, -506f))))));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(994f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)), (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(36687u, 25u)], u_input.b.x, arg_0.a), 25u)] & abs(u_input.d.x), 25u)] >= (_wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(67283u, 25u)]) ^ _wgslsmith_mod_u32(1u, 39788u))) & func_4(~vec3<i32>(arg_0.b.x, -44416i, u_input.c), Struct_2(arg_0.a, _wgslsmith_f_op_f32(round(var_1.x))), func_3(true, !vec3<bool>(arg_0.a, arg_0.a, false)))));
    let var_3 = countOneBits(~13499u);
    return arg_0;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = -_wgslsmith_dot_vec2_i32(firstTrailingBit(arg_1.b), max(-u_input.a, arg_1.b));
    return vec2<u32>(global1[_wgslsmith_index_u32(~firstTrailingBit(min(108036u, 87192u)), 25u)] << (u_input.d.x % 32u), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(abs(min(u_input.e | global1[_wgslsmith_index_u32(17149u, 25u)], ~66395u)), 25u)], 49899u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(-firstLeadingBit(countOneBits(86106i)), u_input.a.x | abs(~(-2147483647i))) | -(~u_input.a.x);
    var var_1 = firstLeadingBit(select(_wgslsmith_sub_vec2_u32(vec2<u32>(~1596u, max(u_input.e, 80369u)), countOneBits(~u_input.b)), ~func_5(vec4<bool>(true, true, true, true), func_1(Struct_1(true, u_input.a)), -var_0, Struct_2(true, -673f)), vec2<bool>(any(vec2<bool>(true, true)), true)));
    var_1 = u_input.d.xx;
    var_1 = u_input.b;
    let var_2 = ~u_input.d.zx;
    var var_3 = false;
    let var_4 = Struct_2(func_1(Struct_1(any(vec4<bool>(true, false, false, false)), _wgslsmith_sub_vec2_i32(vec2<i32>(-11565i, u_input.c), u_input.a))).b.x != (_wgslsmith_div_i32(_wgslsmith_clamp_i32(12858i, u_input.c, u_input.a.x), u_input.c) | var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -219f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -854f))))));
    let var_5 = -32411i > (u_input.a.x << ((_wgslsmith_clamp_u32(countOneBits(59143u), 75699u, ~1312u) >> (abs(1u) % 32u)) % 32u));
    var_1 = ~u_input.d.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -100f, 144f, -786f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(308f, var_4.b, -1444f, -1179f))), func_4(vec3<i32>(2147483647i, var_0, u_input.a.x), var_4, u_input.d.yz))))))), u_input.d, firstTrailingBit(_wgslsmith_mod_i32(~(i32(-1i) * -2147483647i), _wgslsmith_sub_i32(var_0 ^ 0i, _wgslsmith_mult_i32(-1i, 25969i)))), vec2<f32>(var_4.b, _wgslsmith_f_op_f32(-var_4.b)));
}

