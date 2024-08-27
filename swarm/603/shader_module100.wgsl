struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_2(false);
    var_0 = arg_1;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1313f), arg_2.c);
    var var_2 = vec3<bool>((u_input.a > -1i) || (!(!arg_1.a) && !(535f < arg_2.c)), _wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(38705i, arg_2.a, arg_0, arg_2.a), vec4<i32>(-35866i, arg_0, arg_0, arg_2.a))), 2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, arg_2.a), vec2<i32>(3951i, u_input.a))) >= 28108i, true);
    var_0 = arg_1;
    return -2147483647i;
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_1(func_3(-1i, Struct_2(true), Struct_1(-u_input.a, u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1121f))), vec4<u32>(30230u, 1u, _wgslsmith_clamp_u32(u_input.c, u_input.c, 36267u), firstLeadingBit(u_input.b)))), countOneBits(~max(_wgslsmith_mult_u32(39769u, 0u), _wgslsmith_add_u32(0u, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-195f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1560f)))), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.b, 58612u, 19035u), ~vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u), vec4<u32>(u_input.b, 4294967295u, 51714u, u_input.b)) ^ select(firstLeadingBit(vec4<u32>(u_input.b, 0u, 63363u, u_input.c)), vec4<u32>(1u, 94655u, 4294967295u, u_input.c) & vec4<u32>(u_input.b, 27969u, u_input.c, 44738u), u_input.b > u_input.c)));
    let var_1 = _wgslsmith_f_op_f32(-var_0.c);
    return var_0.d.wxx;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: bool) -> Struct_2 {
    var var_0 = select(true, !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1004f)), -1071f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_mod_u32(~(~53548u), arg_0.x) < 38243u);
    var var_1 = _wgslsmith_sub_i32(arg_1.x, (reverseBits(1i) & u_input.a) >> (u_input.c % 32u));
    var_0 = !any(!select(vec4<bool>(false, arg_2, arg_2, arg_2), vec4<bool>(false, true, false, arg_2), arg_2 & false));
    var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -62640i, abs(arg_1.x), u_input.a >> (arg_0.x % 32u)) ^ min(min(arg_1, vec4<i32>(-20711i, arg_1.x, u_input.a, 2147483647i)), ~vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)), arg_1) ^ u_input.a;
    let var_2 = arg_0 & _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0, ~(~arg_0)), arg_0 ^ vec3<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 40050u, arg_0.x), arg_0), max(u_input.b, u_input.c)), vec3<u32>(92913u, arg_0.x, select(arg_0.x, ~4294967295u, arg_2)));
    return Struct_2(true);
}

fn func_1(arg_0: vec2<f32>) -> bool {
    var var_0 = Struct_2(true);
    var var_1 = Struct_2(true);
    var_0 = func_4(func_2(), -(~abs(firstTrailingBit(vec4<i32>(u_input.a, 2147483647i, u_input.a, 75313i)))), any(!vec2<bool>(true, var_1.a)) | var_0.a);
    let var_2 = Struct_1(u_input.a, ~firstTrailingBit(65848u), arg_0.x, abs(vec4<u32>(u_input.b, 49296u, u_input.b, ~_wgslsmith_mod_u32(64597u, u_input.c))));
    var var_3 = vec2<bool>(any(vec2<bool>(!var_1.a, false)), select(!var_0.a == false, func_4(_wgslsmith_clamp_vec3_u32(var_2.d.wyy, var_2.d.zxy, var_2.d.xzy), select(vec4<i32>(2147483647i, -1454i, -5322i, u_input.a), vec4<i32>(2147483647i, u_input.a, u_input.a, var_2.a), vec4<bool>(true, true, false, var_0.a)), !var_1.a).a | var_1.a, var_1.a));
    return !all(select(!vec2<bool>(var_1.a, true), select(!vec2<bool>(true, var_0.a), select(vec2<bool>(var_0.a, true), vec2<bool>(false, false), var_0.a), all(vec3<bool>(false, false, true))), vec2<bool>(true, 19749i != var_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(func_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2314f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1071f + -2987f)))), true, any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))) && false);
    var var_1 = func_4(~_wgslsmith_add_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 62842u, u_input.b), vec3<u32>(u_input.b, 55502u, u_input.b), vec3<u32>(4294967295u, 34216u, 1u))), ~vec3<u32>(u_input.b, 59746u, u_input.b)), ~vec4<i32>(select(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a)), false), 9159i, select(reverseBits(-87435i), u_input.a, var_0.x), 2147483647i), true);
    var var_2 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(u_input.a) | u_input.a, 0i ^ (u_input.a ^ u_input.a), u_input.a << (u_input.c % 32u), 2147483647i), vec4<i32>(u_input.a, -46722i >> (_wgslsmith_mod_u32(86775u, u_input.b) % 32u), firstLeadingBit(u_input.a), min(-81672i, u_input.a))), ~u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 834f))) + _wgslsmith_f_op_f32(-576f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-761f * 656f) + _wgslsmith_f_op_f32(237f + -304f)))), abs(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, 4294967295u, 61433u, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.b, 563u, u_input.b), vec4<u32>(20638u, u_input.b, u_input.b, 0u)))));
    var var_3 = 1f;
    var var_4 = _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(((vec3<i32>(u_input.a, u_input.a, 1i) >> (var_2.d.ywy % vec3<u32>(32u))) | vec3<i32>(var_2.a, var_2.a, -1i)) >> (vec3<u32>(func_2().x, u_input.b & 1u, u_input.c ^ var_2.b) % vec3<u32>(32u)), ~(-(vec3<i32>(1i, -1i, 66977i) ^ vec3<i32>(0i, var_2.a, 27047i))), firstLeadingBit(vec3<i32>(~var_2.a, ~u_input.a, u_input.a))), vec3<i32>((abs(-2147483647i) & var_2.a) | u_input.a, 0i, min(i32(-1i) * -3783i, u_input.a)), vec3<i32>(-39794i, _wgslsmith_sub_i32(var_2.a, _wgslsmith_dot_vec2_i32(~vec2<i32>(17739i, var_2.a), vec2<i32>(-10121i, var_2.a) | vec2<i32>(u_input.a, u_input.a))), abs(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-51332i, -17999i), vec2<i32>(var_2.a, 8326i)), -vec2<i32>(var_2.a, var_2.a)))));
    var_0 = vec3<bool>(false, false, all(!vec4<bool>(true, var_0.x, true, !var_0.x)));
    var var_5 = Struct_2(true);
    let var_6 = var_4.yz;
    var_0 = !select(vec3<bool>(!var_0.x, all(!vec4<bool>(false, var_1.a, var_0.x, var_1.a)), false), vec3<bool>(true, true, true), select(select(vec3<bool>(var_0.x, true, false), select(vec3<bool>(true, false, false), vec3<bool>(var_1.a, true, true), vec3<bool>(false, var_0.x, var_1.a)), !vec3<bool>(var_5.a, var_0.x, var_0.x)), !(!vec3<bool>(true, false, var_0.x)), vec3<bool>(false, var_5.a || true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.b, var_2.b, 4294967295u), vec3<u32>(37746u, 1u, u_input.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.b, var_2.b, 1u), vec3<u32>(1u, 13297u, 3466u), var_2.d.xxy)), vec3<u32>(~u_input.b, 6414u >> (u_input.c % 32u), _wgslsmith_sub_u32(var_2.d.x, 44909u)), !vec3<bool>(true, var_1.a, var_0.x)), 838f, 1u);
}

