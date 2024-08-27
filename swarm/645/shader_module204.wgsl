struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = ~_wgslsmith_add_i32(max(arg_0.b.x, ~_wgslsmith_mult_i32(u_input.a.x, 15641i)), arg_0.b.x);
    var var_1 = arg_0;
    var_1 = arg_0;
    let var_2 = 820f;
    let var_3 = true;
    return any(select(vec2<bool>(true, u_input.a.x < u_input.a.x), select(arg_0.a.a.zz, !var_1.a.a.xx, vec2<bool>(var_3, select(true, var_1.a.a.x, arg_0.a.a.x))), select(vec2<bool>(true, true), var_1.a.a.wy, all(!vec2<bool>(true, var_1.a.a.x)))));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec2<i32>) -> vec4<bool> {
    let var_0 = select(arg_2.a.a.x, all(arg_2.a.a), false);
    let var_1 = Struct_1(vec4<bool>(!arg_0, func_3(arg_2), !(_wgslsmith_div_f32(935f, -1238f) > _wgslsmith_f_op_f32(ceil(692f))), u_input.a.x <= 1i), reverseBits(_wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(u_input.c, 4294967295u) << (~arg_2.a.b % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, u_input.b), firstTrailingBit(vec4<u32>(u_input.c, u_input.c, u_input.b, 16814u))))));
    let var_2 = -1000f;
    var var_3 = vec3<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(select(vec2<i32>(-1i, arg_1.x), vec2<i32>(-1i, 1105i), false), vec2<i32>(40548i, -1i))), ~arg_1), u_input.a.x, arg_2.b.x);
    let var_4 = select(var_1.a.wz, select(select(!(!var_1.a.yy), !(!arg_2.a.a.yx), all(vec3<bool>(false, var_1.a.x, arg_0)) == any(vec2<bool>(false, true))), select(!var_1.a.zx, select(vec2<bool>(false, var_0), arg_2.a.a.xy, !vec2<bool>(true, arg_0)), arg_2.a.a.yy), select(any(var_1.a) | any(var_1.a), select(true, arg_2.a.a.x & true, arg_0), true)), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.c, 1u), 4294967295u) == 11100u);
    return select(vec4<bool>(false, var_1.a.x, !func_3(arg_2), arg_2.a.b <= u_input.b), arg_2.a.a, true);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-119f, _wgslsmith_div_f32(-1992f, -4483f))) + 1066f) * _wgslsmith_f_op_f32(sign(-295f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -525f) - -100f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-408f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-686f + -1588f)), true)));
    var var_1 = Struct_2(Struct_1(!func_4(func_3(Struct_2(Struct_1(vec4<bool>(false, false, true, false), 4294967295u), vec2<i32>(40315i, 1i))), countOneBits(vec2<i32>(-2147483647i, u_input.a.x)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), 1u), vec2<i32>(u_input.a.x, 7478i)), abs(u_input.a)), u_input.c), _wgslsmith_clamp_vec2_i32(u_input.a, countOneBits(firstTrailingBit(u_input.a)), vec2<i32>(max(u_input.a.x, 19574i), 0i)));
    var_0 = 652f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -579f) - -843f) - _wgslsmith_f_op_f32(select(-1113f, _wgslsmith_f_op_f32(f32(-1f) * -1391f), var_1.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(841f, -443f)))))));
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(2348f, 516f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1085f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -366f))))))), !var_1.a.a.x));
    return 733f;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = false;
    let var_1 = !(!(_wgslsmith_f_op_f32(f32(-1f) * -475f) != _wgslsmith_f_op_f32(func_2())) && all(!arg_1.a));
    var_0 = true;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -423f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-300f, 567f)) * _wgslsmith_f_op_f32(-271f - 869f)), -261f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-681f, _wgslsmith_f_op_f32(137f * 808f))) * -1629f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1558f + _wgslsmith_f_op_f32(f32(-1f) * -997f)))));
    let var_3 = arg_1;
    return select(~(39600u | ~var_3.b), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_3.b, u_input.c, u_input.c) << (vec3<u32>(var_3.b, u_input.b, 53328u) % vec3<u32>(32u))), ~firstTrailingBit(vec3<u32>(var_3.b, 2713u, 42587u))), any(select(select(var_3.a.xxx, vec3<bool>(arg_2, true, arg_1.a.x), true), func_4(arg_1.a.x, vec2<i32>(arg_0, 1i), Struct_2(Struct_1(vec4<bool>(var_1, arg_2, false, true), 20140u), u_input.a), vec2<i32>(0i, arg_0)).zyz, select(vec3<bool>(true, false, var_3.a.x), vec3<bool>(var_1, false, false), true)))) | arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<u32>(firstLeadingBit(43555u), 4182u, ~u_input.b) & ~vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(0u, func_1(u_input.a.x, Struct_1(vec4<bool>(true, false, true, true), u_input.b), true), u_input.c) >> (~vec3<u32>(125316u, 4294967295u, 0u) % vec3<u32>(32u)), !all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))), _wgslsmith_add_vec3_u32(countOneBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(u_input.c, 55529u, 18702u))), ~select(vec3<u32>(0u, 1u, 1u), vec3<u32>(u_input.c, u_input.b, u_input.c), vec3<bool>(true, false, false)) ^ vec3<u32>(6438u, _wgslsmith_add_u32(71663u, 1u), func_1(u_input.a.x, Struct_1(vec4<bool>(true, false, true, true), u_input.c), true))), func_4(!all(vec3<bool>(true, true, true)), abs(vec2<i32>(max(u_input.a.x, -47069i), -33000i)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), u_input.c), u_input.a), _wgslsmith_mod_vec2_i32(u_input.a, min(_wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, u_input.a), ~vec2<i32>(-2147483647i, u_input.a.x)))).yzw);
    let var_1 = Struct_1(func_4(true, _wgslsmith_mult_vec2_i32(u_input.a, _wgslsmith_add_vec2_i32(~vec2<i32>(-2147483647i, u_input.a.x), u_input.a << (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)))), Struct_2(Struct_1(vec4<bool>(false, true, true, false), 0u), reverseBits(~u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, ~u_input.a.x), firstTrailingBit(firstLeadingBit(u_input.a)))), var_0.x);
    var var_2 = ~vec4<i32>(~(~u_input.a.x), 69325i, u_input.a.x, abs(30680i));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1108f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2())))) - -1670f));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_mod_i32(~var_2.x, abs(3457i)));
}

