struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<f32>, 5>;

var<private> global2: array<vec4<i32>, 15>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = arg_0;
    var_0 = Struct_1(var_0.a, arg_0.b);
    var var_1 = arg_0;
    var var_2 = Struct_1(37451u, !select(select(select(vec3<bool>(false, true, var_0.b.x), vec3<bool>(var_0.b.x, false, var_0.b.x), arg_0.b.x), select(var_0.b, vec3<bool>(var_0.b.x, arg_0.b.x, true), var_1.b.x), var_0.b.x | true), vec3<bool>(any(vec2<bool>(false, true)), 4299i != u_input.a.x, any(arg_0.b.xx)), !vec3<bool>(var_1.b.x, true, var_1.b.x)));
    var var_3 = select(!vec4<bool>(var_2.b.x, var_1.b.x, true, _wgslsmith_sub_u32(1u, var_0.a) >= firstLeadingBit(var_2.a)), select(vec4<bool>(any(!vec3<bool>(true, var_1.b.x, false)), any(select(var_2.b, vec3<bool>(false, var_2.b.x, var_0.b.x), var_2.b)), var_2.b.x || true, !var_2.b.x), !(!(!vec4<bool>(var_1.b.x, arg_0.b.x, true, var_0.b.x))), !all(!vec4<bool>(true, true, var_2.b.x, true))), false);
    return vec4<u32>(56624u, 88u, 19968u, 4294967295u);
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) + arg_2);
    var var_2 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(arg_2 * 478f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1680f + arg_2) + arg_2) * _wgslsmith_f_op_f32(-arg_2)), var_0.b.x, arg_3.b.x, ((4294967295u <= ~u_input.b.x) & var_0.b.x) || true);
    var_1 = _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(max(arg_2, arg_2)));
    let var_3 = Struct_1(arg_1.x, select(vec3<bool>(true, true, !(!var_0.b.x)), select(vec3<bool>(!var_2.x, true, !arg_3.b.x), !vec3<bool>(false, arg_3.b.x, true), !(false && var_0.b.x)), all(!select(var_2.ywy, arg_3.b, false))));
    return var_0.b;
}

fn func_2() -> vec3<bool> {
    global1 = array<vec4<f32>, 5>();
    let var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, firstLeadingBit(~1u), ~0u), firstTrailingBit(~u_input.b & u_input.b)), u_input.b);
    let var_1 = reverseBits(~3768i >> (0u % 32u));
    global1 = array<vec4<f32>, 5>();
    let var_2 = func_4(34532u, func_3(Struct_1(_wgslsmith_add_u32(0u, ~0u), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1343f)))), Struct_1(~u_input.b.x, select(vec3<bool>(true, select(false, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), any(vec4<bool>(true, true, false, false))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true)))));
    return vec3<bool>(any(select(!(!vec4<bool>(var_2.x, var_2.x, true, var_2.x)), select(!vec4<bool>(var_2.x, false, var_2.x, var_2.x), select(vec4<bool>(var_2.x, var_2.x, true, false), vec4<bool>(false, var_2.x, var_2.x, true), false), vec4<bool>(false, true, var_2.x, true)), true)), true, true);
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global2 = array<vec4<i32>, 15>();
    let var_0 = arg_0.a | 63570u;
    global2 = array<vec4<i32>, 15>();
    let var_1 = ~abs(~(abs(vec4<u32>(56529u, 41970u, var_0, var_0)) | max(vec4<u32>(0u, 1u, 1u, var_0), u_input.b)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(355f)), _wgslsmith_f_op_f32(select(-701f, -498f, arg_0.b.x)), !arg_0.b.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(905f, 1433f) + -1070f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1550f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(776f, -1688f)), _wgslsmith_f_op_f32(f32(-1f) * -186f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * -2122f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1157f) - _wgslsmith_f_op_f32(f32(-1f) * -1008f))))));
    return Struct_1(u_input.b.x, vec3<bool>(arg_0.b.x, all(select(!vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), select(vec4<bool>(false, arg_0.b.x, true, false), vec4<bool>(arg_0.b.x, true, arg_0.b.x, false), vec4<bool>(true, true, arg_0.b.x, arg_0.b.x)), true)), false));
}

fn func_1() -> Struct_1 {
    global0 = u_input.b.x;
    global1 = array<vec4<f32>, 5>();
    global2 = array<vec4<i32>, 15>();
    var var_0 = 792f;
    var var_1 = func_5(Struct_1(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 4294967295u), ~u_input.b.x), select(vec3<bool>(true, false, 20612i >= u_input.a.x), vec3<bool>(false, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), func_2(), true))), ~reverseBits(u_input.a.x ^ ~u_input.a.x));
    return func_5(Struct_1(4294967295u, vec3<bool>(!(false && var_1.b.x), !(u_input.a.x < 0i), all(vec4<bool>(var_1.b.x, false, true, true)))), u_input.a.x);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    return func_5(func_5(arg_0, abs(_wgslsmith_mult_i32(_wgslsmith_mult_i32(18847i, u_input.a.x), u_input.a.x | u_input.a.x))), -6194i);
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(select(~_wgslsmith_dot_vec4_u32(vec4<u32>(2051u, 1u, 91862u, 1u), u_input.b) >> (1u % 32u), _wgslsmith_dot_vec2_u32(min(vec2<u32>(0u, arg_1.a), u_input.b.xz), min(abs(u_input.b.xx), ~vec2<u32>(arg_2.a, 22331u))), func_4(_wgslsmith_mod_u32(4294967295u, u_input.b.x) >> (~arg_1.a % 32u), vec4<u32>(15460u, 0u, u_input.b.x, 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-762f - 1341f) + _wgslsmith_f_op_f32(min(294f, -539f))), Struct_1(abs(u_input.b.x), vec3<bool>(arg_0.b.x, arg_1.b.x, arg_2.b.x))).x), !(!func_5(arg_1, reverseBits(10880i)).b));
    var var_1 = max(~u_input.a, _wgslsmith_div_vec4_i32(u_input.a, ~abs(vec4<i32>(-39477i, u_input.a.x, 45055i, 2147483647i))));
    let var_2 = -2368i;
    var_1 = -abs(vec4<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_2, 1057i)), u_input.a.zz), u_input.a.x, u_input.a.x, ~select(u_input.a.x, 1i, false)));
    var var_3 = ~(~_wgslsmith_div_u32(abs(17352u), abs(arg_0.a))) <= 4648u;
    return Struct_1(99630u, var_0.b);
}

fn func_8(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>) -> StorageBuffer {
    global1 = array<vec4<f32>, 5>();
    var var_0 = select(~_wgslsmith_clamp_vec2_u32(firstTrailingBit(arg_2.zw), ~countOneBits(vec2<u32>(arg_2.x, 41852u)), u_input.b.zy), ~_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.wy, u_input.b.zz, u_input.b.xx), reverseBits(u_input.b.zz >> (arg_2.yy % vec2<u32>(32u)))), select(!arg_0.b.yx, !(!vec2<bool>(arg_0.b.x, arg_0.b.x)), false));
    var var_1 = -(~_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-1i, 1i)), u_input.a.ww) >> (abs(u_input.b.xz) % vec2<u32>(32u)));
    let var_2 = any(arg_0.b) & false;
    var var_3 = max(firstTrailingBit(vec4<i32>(-(~arg_1), -(var_1.x & 2147483647i), var_1.x, _wgslsmith_add_i32(-1i, arg_1))), (abs(~u_input.a) >> ((~arg_2 | vec4<u32>(36383u, arg_0.a, 4294967295u, u_input.b.x)) % vec4<u32>(32u))) >> (~func_3(func_5(arg_0, 45168i)) % vec4<u32>(32u)));
    return StorageBuffer(_wgslsmith_clamp_vec4_u32(~(~(~arg_2)), ~vec4<u32>(73412u, 35434u, 61315u, u_input.b.x) << (vec4<u32>(~2184u, arg_0.a, ~66491u, _wgslsmith_clamp_u32(1u, 4294967295u, u_input.b.x)) % vec4<u32>(32u)), u_input.b), ~vec2<u32>(~32684u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.xw;
    let var_1 = u_input.b.x;
    global2 = array<vec4<i32>, 15>();
    var var_2 = !all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), u_input.b.x < var_1), vec2<bool>(true, true), true));
    var var_3 = !vec4<bool>(false, any(vec4<bool>(true, true, true, true)), false, true);
    let x = u_input.a;
    s_output = func_8(func_7(Struct_1(114395u, var_3.yzx), func_6(Struct_1(12502u, vec3<bool>(true, true, true)), func_1()), Struct_1(abs(var_1 & 1u), !func_6(Struct_1(3497u, vec3<bool>(false, var_3.x, true)), Struct_1(var_1, var_3.yzw)).b)), abs(-2147483647i), u_input.b);
}

