struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-36375i, -1i);

var<private> global1: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(1550f, -318f, 616f, 498f), vec4<f32>(-1346f, -682f, -521f, 937f), vec4<f32>(-1057f, 487f, -790f, -1062f), vec4<f32>(-1489f, 892f, -690f, -185f), vec4<f32>(669f, -487f, -552f, -641f), vec4<f32>(-436f, 358f, 483f, -251f), vec4<f32>(-1620f, 1169f, -717f, -163f), vec4<f32>(-973f, -953f, 343f, -208f), vec4<f32>(-1914f, -1000f, -365f, -942f), vec4<f32>(1000f, 1093f, -911f, 1070f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec4<u32>) -> bool {
    global0 = select(_wgslsmith_sub_vec2_i32(countOneBits(max(vec2<i32>(global0.x, u_input.a), vec2<i32>(u_input.a, global0.x))), vec2<i32>(arg_1 ^ arg_1, reverseBits(2147483647i))) << (~countOneBits(vec2<u32>(1u, 0u)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(arg_1, u_input.a), ~vec2<i32>(global0.x, u_input.a)), vec2<i32>(-select(global0.x, 7079i, true), -2147483647i), min((vec2<i32>(1i, 2147483647i) | vec2<i32>(-2147483647i, arg_1)) ^ ~vec2<i32>(-1i, global0.x), vec2<i32>(arg_1, ~u_input.a))), false || (_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 35316u, 1735u, u_input.c), arg_2), min(1u, 19782u), ~u_input.c) < abs(~u_input.d.x)));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1410f * 277f))), _wgslsmith_f_op_f32(max(631f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -438f) + -736f)))), -505f);
    let var_1 = ~(firstTrailingBit(arg_0) << (_wgslsmith_div_u32(select(1u, 1u, any(vec2<bool>(false, true))), ~61343u) % 32u));
    var var_2 = Struct_1(!(_wgslsmith_f_op_f32(-962f - var_0.x) < 1206f), arg_2, var_0.x, -_wgslsmith_sub_i32(arg_1, u_input.a), vec2<u32>(~1u, u_input.b.x) >> (u_input.b.xy % vec2<u32>(32u)));
    let var_3 = vec3<i32>(-2147483647i, ~var_2.d, u_input.a);
    return all(vec3<bool>(true, any(vec2<bool>(var_2.a, var_2.a)) != var_2.a, true | var_2.a));
}

fn func_2() -> Struct_1 {
    global1 = array<vec4<f32>, 10>();
    let var_0 = func_3(41313u, ~(-2147483647i), vec4<u32>(u_input.c, 1u, u_input.b.x, u_input.b.x));
    let var_1 = var_0;
    global1 = array<vec4<f32>, 10>();
    global0 = -(~_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(-5856i, -2147483647i), -vec2<i32>(u_input.a, global0.x)), reverseBits(vec2<i32>(u_input.a, global0.x))));
    return Struct_1(var_1, vec4<u32>(abs(firstLeadingBit(u_input.d.x) >> (4294967295u % 32u)), 4294967295u, 3266u, u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -2125f), (global0.x >> (~4294967295u % 32u)) & _wgslsmith_div_i32(_wgslsmith_mod_i32(-16181i, u_input.a) | global0.x, -u_input.a), _wgslsmith_sub_vec2_u32(~(~u_input.b.xz), ~(~abs(u_input.d))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    global0 = abs(_wgslsmith_mult_vec2_i32(-_wgslsmith_div_vec2_i32(arg_2.yz, vec2<i32>(arg_0.d, u_input.a)), _wgslsmith_mod_vec2_i32(abs(select(arg_1.zz, vec2<i32>(global0.x, -14617i), vec2<bool>(false, false))), arg_1.xx)));
    global0 = arg_2.yy;
    global0 = ~firstLeadingBit(~(-_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.x, global0.x), arg_1.xx)));
    global1 = array<vec4<f32>, 10>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (-2147483647i ^ u_input.a) < ~global0.x;
    var var_1 = func_1(Struct_1(true, vec4<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.d.x, 27553u), 26158u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 1u, 51001u, 3200u), vec4<u32>(25039u, u_input.d.x, 7115u, 107946u)), firstTrailingBit(vec4<u32>(31857u, 36691u, u_input.c, u_input.c))), u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-848f - 314f)))), abs(~select(u_input.a, u_input.a, false)), u_input.b.zy), abs(_wgslsmith_clamp_vec4_i32(-vec4<i32>(global0.x, global0.x, u_input.a, u_input.a), ~(~vec4<i32>(1360i, u_input.a, u_input.a, 25363i)), -(vec4<i32>(u_input.a, 12725i, 2147483647i, 0i) >> (vec4<u32>(41487u, u_input.c, u_input.d.x, u_input.d.x) % vec4<u32>(32u))))), vec3<i32>(81138i, -u_input.a, ~(-_wgslsmith_mod_i32(-2147483647i, global0.x))), Struct_1(!all(vec2<bool>(true, true)), ~(vec4<u32>(u_input.d.x, 4294967295u, 20401u, 4294967295u) >> (vec4<u32>(0u, 325u, u_input.c, u_input.b.x) % vec4<u32>(32u))), 1348f, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.a, 2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(global0.x, 0i)) << (u_input.d % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(~0u, ~u_input.b.x), ~(~u_input.b.zy))));
    global1 = array<vec4<f32>, 10>();
    let var_2 = ~func_1(Struct_1(!(!var_1.a), countOneBits(vec4<u32>(var_1.b.x, u_input.b.x, var_1.b.x, var_1.e.x)), _wgslsmith_div_f32(func_2().c, _wgslsmith_f_op_f32(-var_1.c)), ~(~1i), vec2<u32>(4294967295u, 41896u)), -select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.d, 1i, -12072i, var_1.d), vec4<i32>(3071i, 19089i, var_1.d, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, global0.x, -2147483647i, u_input.a), vec4<i32>(0i, 0i, var_1.d, 2147483647i), vec4<i32>(var_1.d, global0.x, var_1.d, -28504i)), var_1.a), -vec3<i32>(func_2().d, -var_1.d, ~(-15292i)), func_2()).e.x;
    let var_3 = !var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, ~_wgslsmith_mult_vec2_u32(var_1.b.xz, u_input.b.zx));
}

