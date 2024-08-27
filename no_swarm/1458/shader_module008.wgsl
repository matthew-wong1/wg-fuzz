struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(1u, 57824u, 12489u, 1u, 42385u, 525u, 0u, 60849u, 19966u, 52071u, 84017u, 56200u, 3415u, 1u, 8077u, 4294967295u, 0u, 3393u, 35905u, 44888u, 4294967295u, 4294967295u, 110446u, 68665u, 22586u, 0u, 30691u, 1u, 5031u, 0u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<f32> {
    let var_0 = reverseBits(vec3<u32>(_wgslsmith_mod_u32(min(50037u, 1u) << (1u % 32u), global0[_wgslsmith_index_u32(51183u, 30u)]), min(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(35122u, 30u)], 30u)], _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 30u)], 13298u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 30u)], 30u)], 30u)], 30u)], 1u, 0u)), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39831u, 30u)], 30u)], 30u)])), abs(4294967295u)));
    global0 = array<u32, 30>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(778f + -801f)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(214f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -795f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-570f * -1212f), 377f)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_1.zz, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(var_1.xx)))))) + var_1.xy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_f_op_f32(floor(var_1.x)), var_1.x)), firstLeadingBit(1u), all(vec4<bool>(true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false)), true && all(vec2<bool>(false, true)), any(vec4<bool>(true, false, false, false)) & true)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-902f - _wgslsmith_div_f32(-110f, var_2.a.x)), _wgslsmith_f_op_f32(sign(-667f))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(1483f, -2429f)), -439f), var_2.a)), var_1.ywy, 1u << (var_2.c % 32u), var_2.d);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x * -1224f) * _wgslsmith_div_f32(1000f, 847f)), _wgslsmith_f_op_f32(var_3.b.x + 315f), -115f, var_1.x)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: bool) -> f32 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1342f - arg_0.x) - _wgslsmith_f_op_f32(-1000f + 179f))), _wgslsmith_f_op_f32(-899f - arg_0.x)), arg_0.wxx, firstLeadingBit(~17477u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, 735f)))) <= _wgslsmith_f_op_vec4_f32(func_3()).x);
    var var_1 = select(select(vec2<bool>(true, true), select(!select(vec2<bool>(arg_2, var_0.d), vec2<bool>(false, arg_2), true), vec2<bool>(true, var_0.d), !vec2<bool>(var_0.d, true)), (28790u | _wgslsmith_sub_u32(16539u, global0[_wgslsmith_index_u32(0u, 30u)])) > (~var_0.c >> (~var_0.c % 32u))), !select(select(vec2<bool>(true, true), vec2<bool>(false, var_0.d), !vec2<bool>(true, var_0.d)), vec2<bool>(true, true), vec2<bool>(var_0.d, true | var_0.d)), select(vec2<bool>(any(vec4<bool>(false, false, arg_2, false)), false), select(select(select(vec2<bool>(false, arg_2), vec2<bool>(false, arg_2), arg_2), select(vec2<bool>(var_0.d, false), vec2<bool>(var_0.d, arg_2), false), select(true, true, true)), select(vec2<bool>(true, false), select(vec2<bool>(var_0.d, false), vec2<bool>(false, false), true), false), select(!vec2<bool>(arg_2, false), vec2<bool>(true, false), vec2<bool>(false, false))), select(vec2<bool>(var_0.d, any(vec3<bool>(arg_2, true, arg_2))), !select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2), arg_2), vec2<bool>(!var_0.d, false))));
    let var_2 = select(select(vec3<bool>(!all(vec4<bool>(false, true, true, var_0.d)), true, select(arg_2 & true, var_1.x, any(vec2<bool>(true, arg_2)))), vec3<bool>(!(!arg_2), -2147483647i >= _wgslsmith_div_i32(u_input.a.x, u_input.b), true), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, var_1.x), true), vec3<bool>(true, false, var_1.x), false && var_1.x)), select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, var_1.x, arg_2), vec3<bool>(var_0.d, var_1.x, false)), vec3<bool>(false, arg_2, false), !arg_2), select(!vec3<bool>(var_1.x, false, arg_2), select(vec3<bool>(false, true, false), vec3<bool>(var_0.d, var_1.x, true), arg_2), select(false, var_0.d, arg_2)), arg_2), !(!select(vec3<bool>(var_0.d, var_1.x, arg_2), vec3<bool>(false, true, true), false)), true), true);
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1118f, arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.x))) + -652f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(886f, -954f, arg_1.x))))) * arg_1.zyx) + arg_0.xwy), ~15883u, (max(1u, abs(var_0.c)) >> (~(~4294967295u) % 32u)) > global0[_wgslsmith_index_u32(4294967295u, 30u)]);
    let var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1.x)), -436f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-var_3.b))) * vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.b.x), -757f)), var_3.b.x)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_3.c, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(112296u, 121954u, 0u)), vec3<u32>(84490u, var_0.c, var_0.c) | vec3<u32>(22411u, 58383u, var_3.c)), ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(37411u, 30u)], var_0.c), var_0.c)), 30u)], arg_1.x > 468f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-265f))))));
}

fn func_2(arg_0: i32) -> vec2<f32> {
    let var_0 = -_wgslsmith_add_vec2_i32(u_input.a.xz, u_input.a.wx);
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -386f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1019f))))), vec3<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(618f, 997f, -210f, -1041f) * vec4<f32>(-1000f, 813f, -474f, 2165f))), _wgslsmith_f_op_vec4_f32(func_3()), true || any(vec4<bool>(true, false, true, false)))), -1578f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(566f, -992f, -1593f, 890f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1146f, 1000f, -1301f, -1235f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-971f, 217f, -220f, 255f) * vec4<f32>(-2401f, -1413f, 202f, 1000f)))), !any(vec4<bool>(false, false, true, true))))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(120428u, 30u)]), 30u)], global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(20780u, 30u)]), 30u)], global0[_wgslsmith_index_u32(max(35249u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5104u, 30u)], 30u)]), 30u)]), vec3<u32>(reverseBits(11086u), max(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)]), 59390u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44693u, 30u)], 30u)], 30u)], 30u)]), ~vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]))), !all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)] <= 31454u, true, true, false)));
    var var_2 = var_1;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(353f, var_1.b.x), vec2<f32>(155f, var_1.a.x), false)))))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-666f + arg_1.b.x)), _wgslsmith_f_op_f32(abs(-1654f))))), vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -477f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-260f + arg_1.b.x)) * -632f)), ~abs(_wgslsmith_mod_u32(firstLeadingBit(4294967295u), arg_0.x << (arg_0.x % 32u))), arg_1.d);
    let var_1 = vec3<u32>((min(_wgslsmith_mult_u32(77220u, 1u), _wgslsmith_clamp_u32(67084u, arg_0.x, 0u)) | (_wgslsmith_mod_u32(var_0.c, 4294967295u) ^ _wgslsmith_add_u32(40716u, 1u))) | 4294967295u, firstTrailingBit(arg_1.c), ~_wgslsmith_div_u32(1u, max(select(1u, 42866u, false), global0[_wgslsmith_index_u32(var_0.c, 30u)])));
    global0 = array<u32, 30>();
    var var_2 = min(vec2<i32>(_wgslsmith_mod_i32(min(0i, u_input.a.x), u_input.a.x), reverseBits(~(-1i))), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, max(1i, 1i)), vec2<i32>(abs(-1i) >> (_wgslsmith_div_u32(17863u, 19876u) % 32u), u_input.a.x)));
    var_2 = u_input.a.xw;
    return Struct_1(vec2<f32>(569f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(ceil(-3229f))), arg_1.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, -1000f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_1.b)) - var_0.b))), ~abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstLeadingBit(18553u) | reverseBits(var_1.x), 30u)], 30u)]), false);
}

fn func_1() -> vec3<f32> {
    global0 = array<u32, 30>();
    var var_0 = func_5(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(~102870u, ~28649u, reverseBits(0u))), reverseBits(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)], 30u)], 46252u, global0[_wgslsmith_index_u32(14416u, 30u)]))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2177f, -2153f), vec2<f32>(585f, 251f), true)) * _wgslsmith_f_op_vec2_f32(func_2(u_input.a.x))), vec2<f32>(-1513f, _wgslsmith_f_op_f32(532f - 1300f)), !any(vec4<bool>(true, false, true, false)))), vec3<f32>(801f, 412f, 1055f), _wgslsmith_mod_u32(_wgslsmith_sub_u32(~24137u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35833u, 30u)], 30u)], global0[_wgslsmith_index_u32(1u, 30u)]), vec3<u32>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27098u, 30u)], 30u)], 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2605u, 30u)], 30u)]))), 26136u), true));
    var_0 = func_5(~vec3<u32>(~var_0.c, ~19399u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 16392u, 72983u), 30u)]) & (countOneBits(abs(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], 1u, 27270u))) << (vec3<u32>(countOneBits(1u), global0[_wgslsmith_index_u32(~4294967295u, 30u)], 49703u) % vec3<u32>(32u))), Struct_1(vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_div_f32(-770f, -1463f)), vec3<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(146f, -798f, var_0.a.x, var_0.a.x) + vec4<f32>(-586f, var_0.a.x, -858f, var_0.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1193f, var_0.a.x, var_0.a.x, -398f) * vec4<f32>(1179f, 128f, var_0.b.x, 286f)), var_0.d)), _wgslsmith_f_op_f32(ceil(-1381f)), _wgslsmith_f_op_f32(sign(676f))), select(3154u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(reverseBits(var_0.c), 30u)], _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 5834u, 1u), vec4<u32>(4794u, 32596u, global0[_wgslsmith_index_u32(28503u, 30u)], var_0.c))), func_5(~vec3<u32>(4294967295u, 50849u, global0[_wgslsmith_index_u32(var_0.c, 30u)]), func_5(vec3<u32>(533u, 70754u, var_0.c), Struct_1(var_0.b.xz, vec3<f32>(var_0.b.x, var_0.b.x, -2192f), global0[_wgslsmith_index_u32(16742u, 30u)], var_0.d))).d), all(!vec4<bool>(var_0.d, false, var_0.d, false))));
    global0 = array<u32, 30>();
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, 1428f, var_0.a.x))))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x + 1572f), -290f, _wgslsmith_f_op_vec4_f32(func_3()).x))))));
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, var_1.x, var_1.x)));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    global0 = array<u32, 30>();
    let var_0 = u_input.b;
    global0 = array<u32, 30>();
    var var_1 = ~global0[_wgslsmith_index_u32(arg_0.c, 30u)];
    return func_5(~firstTrailingBit(~vec3<u32>(arg_0.c, 0u, 4294967295u)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(740f)), arg_0.b.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, arg_0.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), func_5(vec3<u32>(72340u, arg_0.c, 31258u), arg_0).b)), ~48635u, !arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 30>();
    let var_0 = _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(abs(4294967295u), 30u)]), 30u)] >> (1u % 32u), 4294967295u);
    global0 = array<u32, 30>();
    var var_1 = func_6(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-790f - -392f), _wgslsmith_f_op_f32(min(904f, 1595f)))), _wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(8227u, 30u)], 24439u), vec3<u32>(global0[_wgslsmith_index_u32(var_0, 30u)], 15966u, var_0)), 1u), true), vec2<bool>(true, true));
    global0 = array<u32, 30>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3()).x + var_1.a.x), -649f)) * _wgslsmith_f_op_f32(-var_1.b.x));
    var var_3 = ~(reverseBits(vec3<u32>(var_1.c, global0[_wgslsmith_index_u32(var_1.c, 30u)], firstTrailingBit(4294967295u))) ^ max(~vec3<u32>(var_1.c, var_0, 0u), vec3<u32>(13591u, 1u, _wgslsmith_div_u32(var_0, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b, -firstLeadingBit(u_input.a.x), u_input.b));
}

