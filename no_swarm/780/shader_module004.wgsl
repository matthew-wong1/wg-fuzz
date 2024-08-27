struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = Struct_1(!vec4<bool>(arg_0, (true | arg_0) && arg_0, arg_0, (arg_0 | false) & (arg_0 || arg_0)));
    let var_1 = var_0;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(196f - -1174f)), _wgslsmith_f_op_f32(f32(-1f) * -730f))))));
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_1(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))));
    var var_1 = var_0;
    var var_2 = -vec3<i32>(_wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 12876i, -76627i), vec3<i32>(-30755i, -7817i, 72739i)), -2147483647i), -2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-44297i, 13151i), firstLeadingBit(vec2<i32>(1i, -1i))) >> (firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 7278u), vec3<u32>(1u, 1u, 1u))) % 32u));
    let var_3 = Struct_1(var_1.a);
    var var_4 = Struct_1(var_0.a);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(var_0.a.x)), _wgslsmith_f_op_f32(1051f - _wgslsmith_f_op_f32(f32(-1f) * -993f))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -676f) - vec2<f32>(-613f, arg_2))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2, 278f), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, 177f) - vec2<f32>(146f, -349f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_2()))))));
    var var_2 = Struct_1(select(var_0.a, !vec4<bool>(!arg_0.a.x, true, select(arg_3.a.x, false, arg_0.a.x), true), false));
    var var_3 = vec3<i32>(abs(i32(-1i) * -33636i), _wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_clamp_i32(-1i, -24731i, 11894i), 2147483647i), -countOneBits(vec2<i32>(1i, 1i))), reverseBits(_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, 2147483647i), max(-14160i, -24986i)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-1i, 1i, 0i), i32(-1i) * -20361i))));
    let var_4 = 7940u;
    return Struct_1(!(!(!arg_0.a)));
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0.a.xy;
    var_0 = select(vec2<bool>(all(!vec3<bool>(var_0.x, true, var_0.x)) || all(select(arg_0.a.zyx, vec3<bool>(var_0.x, true, false), var_0.x)), var_0.x), vec2<bool>(!var_0.x && !(var_0.x && var_0.x), arg_0.a.x), arg_0.a.xy);
    var_0 = vec2<bool>(false, var_0.x);
    var_0 = select(!select(arg_0.a.xx, arg_0.a.zy, any(select(arg_0.a.yw, arg_0.a.yz, vec2<bool>(var_0.x, arg_0.a.x)))), !arg_0.a.zz, true);
    var var_1 = func_1(Struct_1(select(!arg_0.a, func_1(arg_0, arg_0.a.wyy, 737f, func_1(Struct_1(vec4<bool>(arg_0.a.x, true, false, false)), arg_0.a.zzy, 1204f, Struct_1(arg_0.a))).a, arg_0.a.x)), vec3<bool>(true, var_0.x, !any(vec2<bool>(false, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-613f, -635f)), 1000f), arg_0);
    return 1i;
}

fn func_5(arg_0: vec4<i32>) -> Struct_1 {
    return func_1(Struct_1(vec4<bool>(false, true, true, false)), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), false), vec3<bool>(true, 26707i == arg_0.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(func_3(any(vec4<bool>(false, false, false, true)))))), Struct_1(vec4<bool>(0u >= (4294967295u >> (u_input.a % 32u)), true, any(func_1(Struct_1(vec4<bool>(true, true, true, false)), vec3<bool>(true, false, false), -2425f, Struct_1(vec4<bool>(false, true, false, false))).a.yzy), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(1082i, 1i) & _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-20380i, 1i, 8466i), vec3<i32>(-1i, 1i, -1i)), vec3<i32>(1i, 1i, 1i)), 2147483647i, -abs(14169i)));
    var var_1 = Struct_1(vec4<bool>(true, true, true, true));
    var var_2 = func_5(vec4<i32>(~1i, var_0.x, var_0.x, max(_wgslsmith_mult_i32(var_0.x, _wgslsmith_sub_i32(0i, 0i)), func_4(func_1(Struct_1(vec4<bool>(var_1.a.x, var_1.a.x, false, false)), var_1.a.xyy, 1000f, Struct_1(vec4<bool>(true, true, var_1.a.x, false)))))));
    let var_3 = ~(select(vec3<u32>(u_input.a, ~31124u, countOneBits(1u)), _wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(u_input.a, 33671u, u_input.a), true), vec3<u32>(4294967295u, u_input.a, u_input.a) & vec3<u32>(u_input.a, 0u, 1u)), !var_1.a.xzz) >> ((vec3<u32>(5719u, abs(u_input.a), ~u_input.a) | select(~vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 0u, u_input.a), var_1.a.x)) % vec3<u32>(32u)));
    let var_4 = func_1(Struct_1(!vec4<bool>(all(vec4<bool>(false, var_2.a.x, var_2.a.x, true)), true, true, any(var_2.a.wz))), func_1(func_1(Struct_1(!var_1.a), vec3<bool>(true, var_1.a.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1614f)) * _wgslsmith_f_op_f32(-827f * 952f)), func_5(_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_0.x, 1i, var_0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, 1i)))), !var_1.a.wwy, _wgslsmith_f_op_f32(f32(-1f) * -1322f), Struct_1(func_5(-vec4<i32>(2147483647i, -1i, var_0.x, -2147483647i)).a)).a.xyz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -706f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -485f) * 1f))), func_1(Struct_1(func_1(Struct_1(var_1.a), var_1.a.zxx, _wgslsmith_f_op_f32(abs(-656f)), func_1(Struct_1(var_1.a), vec3<bool>(var_1.a.x, true, false), 1523f, Struct_1(vec4<bool>(false, var_1.a.x, var_2.a.x, var_2.a.x)))).a), !select(var_2.a.wyw, !vec3<bool>(var_2.a.x, var_1.a.x, var_2.a.x), var_1.a.xyz), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(141f)) * -1185f))), Struct_1(select(var_2.a, vec4<bool>(var_1.a.x, var_1.a.x, true, true), func_1(Struct_1(var_1.a), vec3<bool>(true, var_1.a.x, var_1.a.x), -295f, Struct_1(vec4<bool>(var_2.a.x, var_1.a.x, var_2.a.x, false))).a))));
    let var_5 = func_5(select(vec4<i32>(-87057i, -select(1i, var_0.x, false), firstTrailingBit(i32(-1i) * -2147483647i), -2147483647i >> (u_input.a % 32u)), firstTrailingBit(-(vec4<i32>(-3646i, -10602i, var_0.x, -1i) | vec4<i32>(10565i, -1i, var_0.x, -13591i))), var_2.a));
    let var_6 = ~(~var_3);
    let x = u_input.a;
    s_output = StorageBuffer(-(abs(_wgslsmith_div_i32(var_0.x, var_0.x)) & -(~var_0.x)), _wgslsmith_mod_vec3_u32(~firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 31809u, u_input.a), vec3<u32>(var_3.x, var_3.x, 1u))), vec3<u32>(1u, _wgslsmith_mod_u32(var_6.x, 21820u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, var_6.x, var_6.x), vec3<u32>(24319u, u_input.a, var_3.x)) % 32u), _wgslsmith_dot_vec3_u32(min(vec3<u32>(var_6.x, 9840u, var_3.x), var_3), vec3<u32>(u_input.a, u_input.a, var_6.x)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1456f, 1450f, -331f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(471f + -513f), -290f, -2147483647i > var_0.x)), _wgslsmith_f_op_f32(1083f + _wgslsmith_f_op_f32(sign(-724f))), -287f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1176f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

