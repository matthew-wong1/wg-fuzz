struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 15> = array<bool, 15>(false, true, true, false, false, true, false, true, true, false, false, true, true, true, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>) -> vec4<u32> {
    let var_0 = !((i32(-1i) * -(~40724i)) > ~(_wgslsmith_div_i32(38684i, -54319i) >> (~u_input.b.x % 32u)));
    let var_1 = vec3<bool>(false, any(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, var_0, arg_0.x), vec3<bool>(global1[_wgslsmith_index_u32(35753u, 15u)], true, var_0)))), false);
    var var_2 = true;
    let var_3 = Struct_1(4940u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.b.ww), ~(u_input.b.x | 0u)) | _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, 8440u, u_input.b.x, 20198u), abs(vec4<u32>(1u, 0u, u_input.b.x, 0u))), u_input.b), vec4<u32>(u_input.c.x & u_input.a.x, _wgslsmith_mod_u32(~_wgslsmith_div_u32(u_input.c.x, u_input.b.x), u_input.a.x), u_input.c.x, _wgslsmith_div_u32(~63297u, firstTrailingBit(~8072u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(294f, 687f, -106f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-921f, 1498f, -632f)), true))))));
    var var_4 = var_0;
    return ~(~vec4<u32>(~4294967295u, 0u, _wgslsmith_mod_u32(4294967295u, var_3.a), 66699u));
}

fn func_2(arg_0: vec3<bool>) -> vec4<i32> {
    let var_0 = func_3(!vec2<bool>(u_input.d > abs(u_input.d), true));
    let var_1 = vec4<bool>(all(select(select(arg_0, vec3<bool>(global1[_wgslsmith_index_u32(30606u, 15u)], true, false), select(true, false, false)), vec3<bool>(select(arg_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)]), false, true), true)), !all(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(var_0.x, 15u)], arg_0.x, arg_0.x)), global1[_wgslsmith_index_u32(var_0.x, 15u)], true);
    global1 = array<bool, 15>();
    global0 = (true && arg_0.x) || arg_0.x;
    let var_2 = abs(~vec2<i32>(41499i, ~(u_input.d & u_input.d)));
    return firstLeadingBit(_wgslsmith_add_vec4_i32(~(~(vec4<i32>(u_input.d, 1i, 35891i, var_2.x) ^ vec4<i32>(1i, 2147483647i, var_2.x, var_2.x))), vec4<i32>(-1i, u_input.d << (~58947u % 32u), -u_input.d, var_2.x)));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_4) -> u32 {
    var var_0 = select(-func_2(!arg_3.b.wyy), _wgslsmith_add_vec4_i32(select(select(firstLeadingBit(vec4<i32>(1i, 31360i, u_input.d, arg_3.a)), vec4<i32>(13306i, arg_3.a, 11835i, arg_3.a), any(arg_3.b.zx)), func_2(!vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 15u)], true, false)), all(vec4<bool>(arg_3.b.x, true, global1[_wgslsmith_index_u32(u_input.c.x, 15u)], true))), abs(vec4<i32>(~arg_3.a, firstLeadingBit(-1i), 52432i, ~arg_3.a))), -295f < arg_2);
    var var_1 = _wgslsmith_mod_vec3_i32(max(vec3<i32>(1i, arg_3.a, _wgslsmith_mod_i32(-3753i, 1i)), vec3<i32>(func_2(arg_3.b.xwx).x, min(~arg_3.a, min(arg_3.a, -21620i)), _wgslsmith_mult_i32(func_2(vec3<bool>(false, arg_3.b.x, false)).x, max(u_input.d, 0i)))), _wgslsmith_mod_vec3_i32(var_0.xyz, firstLeadingBit(-_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3.a, var_0.x, u_input.d), vec3<i32>(u_input.d, arg_3.a, arg_3.a), vec3<i32>(-1i, var_0.x, var_0.x)))));
    var var_2 = arg_3.b.xy;
    var var_3 = var_2.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(arg_2 + -265f))) + -812f))));
    return 80198u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(14425u, u_input.c.x);
    var var_1 = Struct_1(var_0.x, ~(~1u), ~(~vec4<u32>(1u, ~var_0.x, ~4294967295u, max(u_input.a.x, 30149u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -414f, 2024f)), vec3<f32>(_wgslsmith_f_op_f32(571f - 981f), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(1560f * -1321f)), vec3<bool>(true, true, true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(251f, -599f, -137f) - vec3<f32>(-1363f, -1604f, -315f)))));
    let var_2 = ~firstTrailingBit(abs(-firstTrailingBit(vec2<i32>(u_input.d, u_input.d))));
    let var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(var_1.c.x, 4294967295u), 1u | var_0.x, ~u_input.c.x, 0u), var_1.c, var_1.c);
    let var_4 = _wgslsmith_clamp_u32(min(firstTrailingBit(~32917u), ~func_1(1000f, var_1.c, _wgslsmith_f_op_f32(select(var_1.d.x, -449f, global1[_wgslsmith_index_u32(u_input.c.x, 15u)])), Struct_4(0i, vec4<bool>(false, global1[_wgslsmith_index_u32(85897u, 15u)], false, global1[_wgslsmith_index_u32(1u, 15u)]), vec2<u32>(var_3.x, var_0.x)))), var_1.c.x, ~0u);
    var var_5 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_3.x, _wgslsmith_mod_u32(~4294967295u, var_4) & _wgslsmith_dot_vec3_u32(~abs(u_input.b.wwy), vec3<u32>(var_3.x, 4294967295u << (var_1.c.x % 32u), var_3.x))), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.d.x * var_1.d.x), var_1.d.x)) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(196f, var_1.d.x), _wgslsmith_div_f32(var_1.d.x, -1095f)))), _wgslsmith_f_op_f32(select(var_1.d.x, var_1.d.x, any(select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(var_1.c.x, 15u)], false), vec4<bool>(true, false, true, false), vec4<bool>(global1[_wgslsmith_index_u32(10952u, 15u)], global1[_wgslsmith_index_u32(39205u, 15u)], false, true))))), _wgslsmith_f_op_f32(-var_1.d.x), -771f));
}

