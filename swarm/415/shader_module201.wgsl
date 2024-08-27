struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec2<f32> {
    let var_0 = countOneBits(_wgslsmith_add_vec3_u32(countOneBits(u_input.a.yxz), ~u_input.a.ywz));
    global1 = Struct_1(64687u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + -1240f))) - arg_0.b)), global1.c, select(vec2<bool>(global1.d.x, !any(vec4<bool>(false, true, arg_0.d.x, true))), vec2<bool>(all(arg_0.d), any(!vec4<bool>(arg_0.d.x, global1.d.x, arg_0.d.x, true))), true));
    global0 = array<f32, 20>();
    let var_1 = arg_0;
    var var_2 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(abs(firstLeadingBit(var_0.xz)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u) >> (vec2<u32>(arg_0.a, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(65026u, 40135u)))), ~1u);
    return vec2<f32>(-373f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.c.x)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b)))))));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = vec4<bool>(global1.d.x, true, global1.d.x, global1.d.x);
    global1 = Struct_1(~countOneBits(_wgslsmith_clamp_u32(8012u, ~arg_0, u_input.a.x ^ 3620u)), global0[_wgslsmith_index_u32(global1.a, 20u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(_wgslsmith_mod_u32(u_input.a.x, arg_0), 223f, vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 20u)], 1107f), vec2<bool>(global1.d.x, var_0.x)), u_input.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1082f, global1.c.x), vec2<f32>(global0[_wgslsmith_index_u32(1u, 20u)], 1559f))))) * global1.c)), !global1.d);
    let var_1 = vec3<i32>(1i, -max(_wgslsmith_mult_i32(2835i, 35435i) >> ((global1.a << (0u % 32u)) % 32u), -2147483647i), _wgslsmith_div_i32(62607i, ~max(arg_1.x, _wgslsmith_mod_i32(u_input.b, 1i))));
    var var_2 = Struct_1(~1u, _wgslsmith_f_op_f32(max(global1.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.c.x, 805f)) + _wgslsmith_f_op_f32(max(global1.c.x, -1364f))), _wgslsmith_f_op_f32(global1.b - -1483f))))), vec2<f32>(global1.b, global1.c.x), global1.d);
    var_2 = Struct_1(~global1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(1103u, 20u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2774f))) - 687f), vec2<f32>(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(arg_0, 20u)])) * _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(0u, 20u)])))), select(!select(!global1.d, select(vec2<bool>(global1.d.x, true), vec2<bool>(var_0.x, var_0.x), var_0.x), true), !(!(!global1.d)), !select(global1.d, !global1.d, var_0.yw)));
    return Struct_1(1u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c.x, _wgslsmith_f_op_f32(floor(1742f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 20u)])), _wgslsmith_f_op_f32(abs(var_2.c.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(661f, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(472f, -890f)))) + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(0u, 20u)])))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 20u)], global1.b)))), var_0.yz);
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global1 = func_2(global1.a << (arg_2.a % 32u), ~_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.c, u_input.b) >> (vec2<u32>(51001u, arg_2.a) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, -92479i) | vec2<i32>(u_input.b, 2147483647i))), -22198i, u_input.b);
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(firstTrailingBit(~(~vec3<i32>(-10904i, u_input.b, u_input.b))), vec3<i32>(-7305i, reverseBits(max(1i, u_input.c)), 6838i)), vec3<i32>(-abs(-71837i), u_input.b, -56070i));
    var var_1 = Struct_2(Struct_1(0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1691f, func_2(global1.a, vec2<i32>(var_0, var_0), 43391i, -10462i).b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_f_op_f32(f32(-1f) * -134f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(arg_2.c, global1.c, false)))) * arg_2.c), arg_0.yz), !arg_0, arg_2, Struct_1(global1.a, arg_2.b, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-814f, 2129f))), vec2<bool>(!(arg_0.x || false), global1.a >= ~u_input.a.x)), all(arg_0.yzx));
    var_1 = Struct_2(var_1.a, !vec4<bool>(!var_1.a.d.x, !all(vec2<bool>(true, false)), var_1.e, true), Struct_1(~(~(~global1.a)), _wgslsmith_f_op_f32(arg_2.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) * _wgslsmith_f_op_f32(sign(var_1.d.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(880f, -1116f)))), !(!arg_0.yx)), arg_2, global1.d.x);
    let var_2 = select(select(select(!vec3<bool>(var_1.e, arg_0.x, true), vec3<bool>(arg_0.x, true, func_2(4294967295u, vec2<i32>(u_input.c, 56682i), var_0, -2147483647i).d.x), arg_0.yww), select(vec3<bool>(arg_2.d.x, var_1.c.a > global1.a, false), vec3<bool>(global1.d.x == arg_2.d.x, true, func_2(global1.a, vec2<i32>(u_input.b, -17745i), var_0, u_input.b).d.x), select(all(arg_0.xzx), arg_0.x, true)), all(vec4<bool>(u_input.c == var_0, all(arg_0), var_1.d.d.x, global1.d.x))), vec3<bool>(true, !global1.d.x, !(!arg_2.d.x)), var_1.b.x && select(!(!arg_2.d.x), all(select(vec3<bool>(false, true, true), var_1.b.xzz, vec3<bool>(true, true, global1.d.x))), global1.d.x));
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    return Struct_1(arg_0.d.a, arg_0.d.c.x, global1.c, !select(arg_1.a.d, !select(global1.d, vec2<bool>(false, global1.d.x), false), !arg_2));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> i32 {
    let var_0 = func_5(Struct_2(Struct_1(_wgslsmith_clamp_u32(1u, ~19844u, 4294967295u), _wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(-1176f + arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c)), !(!vec2<bool>(global1.d.x, false))), select(!select(vec4<bool>(false, true, true, global1.d.x), vec4<bool>(true, true, global1.d.x, global1.d.x), global1.d.x), vec4<bool>(global1.b != 915f, any(vec3<bool>(global1.d.x, false, global1.d.x)), false, true), global1.d.x), func_4(vec4<bool>(!global1.d.x, global1.d.x, all(vec4<bool>(false, global1.d.x, global1.d.x, global1.d.x)), true), 1609f, func_2(global1.a, -vec2<i32>(u_input.c, 1i), -1i, -u_input.c)), Struct_1(~(4294967295u ^ global1.a), 771f, _wgslsmith_f_op_vec2_f32(select(global1.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(global1.a, 20u)], 1587f) + global1.c), any(vec4<bool>(global1.d.x, true, global1.d.x, global1.d.x)))), func_4(select(vec4<bool>(false, global1.d.x, global1.d.x, global1.d.x), vec4<bool>(false, global1.d.x, global1.d.x, false), global1.d.x), _wgslsmith_div_f32(204f, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), func_2(1u, vec2<i32>(0i, u_input.b), u_input.c, 21852i)).d), true), Struct_2(Struct_1(u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1529f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c)), global1.d), vec4<bool>(select(false | global1.d.x, false, false), true, !all(global1.d), ~global1.a < 126970u), Struct_1(~(~4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1669f * -105f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-928f, global1.b)))), vec2<bool>(any(vec2<bool>(false, false)), global1.d.x)), func_2(_wgslsmith_div_u32(global1.a << (u_input.a.x % 32u), ~16080u), ~arg_1.yx, -_wgslsmith_add_i32(-29529i, 1i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, u_input.b, -10433i, arg_1.x), vec4<i32>(-1i, -1i, u_input.c, arg_1.x))), _wgslsmith_f_op_f32(global1.b - -195f) >= global0[_wgslsmith_index_u32(~u_input.a.x, 20u)]), true, Struct_2(func_4(vec4<bool>(global1.d.x | global1.d.x, func_2(u_input.a.x, arg_1.xy, arg_1.x, 26997i).d.x, 1u >= u_input.a.x, global1.d.x & global1.d.x), func_2(0u, vec2<i32>(u_input.b, arg_1.x), firstLeadingBit(2147483647i), max(11648i, 29008i)).b, func_4(select(vec4<bool>(true, true, global1.d.x, true), vec4<bool>(false, false, false, false), global1.d.x), _wgslsmith_f_op_f32(abs(343f)), func_2(12416u, arg_1.xx, -2147483647i, u_input.c))), vec4<bool>(all(select(vec3<bool>(global1.d.x, true, global1.d.x), vec3<bool>(false, false, global1.d.x), false)), global1.d.x != true, true, ~4294967295u > global1.a), Struct_1(_wgslsmith_mod_u32(u_input.a.x << (u_input.a.x % 32u), ~31348u), 256f, func_2(~5141u, reverseBits(vec2<i32>(arg_1.x, 0i)), arg_1.x ^ u_input.c, u_input.b).c, !select(global1.d, vec2<bool>(false, global1.d.x), global1.d.x)), Struct_1(1u, -137f, vec2<f32>(global0[_wgslsmith_index_u32(reverseBits(u_input.a.x), 20u)], -1430f), func_4(select(vec4<bool>(global1.d.x, true, global1.d.x, global1.d.x), vec4<bool>(true, false, global1.d.x, true), false), -637f, Struct_1(42221u, global0[_wgslsmith_index_u32(29234u, 20u)], vec2<f32>(global1.c.x, arg_0), global1.d)).d), !any(select(vec4<bool>(global1.d.x, false, global1.d.x, false), vec4<bool>(false, true, false, true), true))));
    global1 = func_2(var_0.a, ~arg_1.zx ^ max(~vec2<i32>(arg_1.x, 16491i), arg_1.zy), i32(-1i) * -(~_wgslsmith_sub_i32(0i, u_input.b)), u_input.c);
    let var_1 = true;
    let var_2 = -477f;
    var var_3 = Struct_2(Struct_1(global1.a, -2835f, vec2<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(-422f, -711f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - -167f))), !(!(!global1.d))), select(select(vec4<bool>(true, var_0.d.x, any(vec4<bool>(true, false, var_0.d.x, var_0.d.x)), all(vec2<bool>(var_0.d.x, global1.d.x))), vec4<bool>(select(false, var_0.d.x, true), var_1, true, true), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_1, false, true, global1.d.x), !vec4<bool>(false, var_1, global1.d.x, global1.d.x), false), any(!vec4<bool>(false, true, global1.d.x, var_1))), vec4<bool>(true, true, any(vec2<bool>(var_1, true)) | var_1, !var_1)), func_5(Struct_2(Struct_1(_wgslsmith_add_u32(61443u, var_0.a), arg_0, _wgslsmith_f_op_vec2_f32(select(global1.c, vec2<f32>(arg_0, 1242f), vec2<bool>(global1.d.x, false))), vec2<bool>(var_1, global1.d.x)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(var_1, global1.d.x, false, true), vec4<bool>(false, true, var_0.d.x, var_0.d.x)), !vec4<bool>(true, true, false, var_1), var_1), func_2(select(global1.a, 37166u, false), vec2<i32>(-37623i, u_input.c), abs(arg_1.x), 2781i), func_4(!vec4<bool>(false, var_1, false, true), _wgslsmith_f_op_f32(max(var_0.b, 2202f)), func_5(Struct_2(Struct_1(u_input.a.x, global0[_wgslsmith_index_u32(var_0.a, 20u)], vec2<f32>(882f, var_0.b), vec2<bool>(global1.d.x, var_0.d.x)), vec4<bool>(var_1, false, true, false), Struct_1(var_0.a, -726f, vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 472f), var_0.d), var_0, var_1), Struct_2(var_0, vec4<bool>(var_1, false, global1.d.x, true), var_0, var_0, var_0.d.x), global1.d.x, Struct_2(Struct_1(44001u, 660f, vec2<f32>(var_0.c.x, -1048f), vec2<bool>(false, var_1)), vec4<bool>(false, var_0.d.x, var_0.d.x, true), Struct_1(19u, -1000f, vec2<f32>(global1.c.x, arg_0), global1.d), var_0, false))), true), Struct_2(var_0, !select(vec4<bool>(global1.d.x, false, var_0.d.x, true), vec4<bool>(true, global1.d.x, false, true), vec4<bool>(true, true, global1.d.x, var_0.d.x)), func_5(Struct_2(Struct_1(global1.a, -1000f, var_0.c, vec2<bool>(global1.d.x, false)), vec4<bool>(var_0.d.x, var_0.d.x, true, false), Struct_1(0u, arg_0, vec2<f32>(var_2, var_0.c.x), var_0.d), Struct_1(0u, arg_0, vec2<f32>(arg_0, 821f), var_0.d), true), Struct_2(var_0, vec4<bool>(false, var_1, true, var_0.d.x), Struct_1(global1.a, var_2, vec2<f32>(-1184f, arg_0), vec2<bool>(true, global1.d.x)), var_0, global1.d.x), select(true, true, var_0.d.x), Struct_2(Struct_1(1u, -1480f, var_0.c, global1.d), vec4<bool>(var_0.d.x, var_1, false, false), Struct_1(4294967295u, var_0.b, vec2<f32>(global0[_wgslsmith_index_u32(3646u, 20u)], var_0.b), vec2<bool>(true, var_0.d.x)), var_0, var_0.d.x)), func_2(max(0u, u_input.a.x), _wgslsmith_div_vec2_i32(vec2<i32>(-18864i, 1i), vec2<i32>(-2147483647i, 30478i)), u_input.b | u_input.b, 1i), !(false & var_1)), any(!select(vec3<bool>(global1.d.x, false, false), vec3<bool>(false, global1.d.x, var_1), vec3<bool>(global1.d.x, var_1, global1.d.x))), Struct_2(var_0, !(!vec4<bool>(true, false, false, global1.d.x)), var_0, Struct_1(~26664u, -1000f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, arg_0)), global1.d), var_1)), var_0, false);
    return i32(-1i) * -22618i;
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: vec4<bool>, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = vec4<i32>(arg_1, u_input.b, 30969i, 2147483647i);
    global0 = array<f32, 20>();
    global1 = func_5(Struct_2(Struct_1(func_4(!vec4<bool>(false, arg_2.x, true, false), _wgslsmith_f_op_f32(f32(-1f) * -1226f), Struct_1(u_input.a.x, -1637f, vec2<f32>(global1.c.x, -469f), arg_2.yx)).a, arg_0, func_5(Struct_2(Struct_1(arg_3.x, global0[_wgslsmith_index_u32(1u, 20u)], global1.c, arg_2.zy), vec4<bool>(global1.d.x, global1.d.x, global1.d.x, global1.d.x), Struct_1(4294967295u, arg_0, vec2<f32>(-1000f, -541f), arg_2.zz), Struct_1(4294967295u, 320f, global1.c, vec2<bool>(arg_2.x, true)), false), Struct_2(Struct_1(global1.a, global0[_wgslsmith_index_u32(4294967295u, 20u)], vec2<f32>(-902f, 429f), vec2<bool>(false, global1.d.x)), arg_2, Struct_1(83741u, global1.b, global1.c, global1.d), Struct_1(41006u, 928f, global1.c, arg_2.yw), false), arg_2.x, Struct_2(Struct_1(u_input.a.x, 143f, global1.c, arg_2.wy), arg_2, Struct_1(arg_3.x, -258f, vec2<f32>(-1000f, arg_0), global1.d), Struct_1(1u, global1.b, global1.c, global1.d), true)).c, arg_2.wy), select(!arg_2, vec4<bool>(false, true, func_5(Struct_2(Struct_1(u_input.a.x, -361f, global1.c, vec2<bool>(arg_2.x, arg_2.x)), vec4<bool>(true, arg_2.x, false, true), Struct_1(global1.a, global0[_wgslsmith_index_u32(1u, 20u)], vec2<f32>(121f, arg_0), arg_2.wz), Struct_1(global1.a, -998f, vec2<f32>(global1.c.x, arg_0), vec2<bool>(global1.d.x, arg_2.x)), global1.d.x), Struct_2(Struct_1(35893u, global1.c.x, vec2<f32>(142f, -975f), global1.d), vec4<bool>(true, true, true, global1.d.x), Struct_1(22341u, arg_0, global1.c, vec2<bool>(global1.d.x, global1.d.x)), Struct_1(global1.a, arg_0, vec2<f32>(-390f, arg_0), arg_2.xy), global1.d.x), global1.d.x, Struct_2(Struct_1(1u, -610f, vec2<f32>(global1.c.x, arg_0), global1.d), vec4<bool>(true, global1.d.x, arg_2.x, global1.d.x), Struct_1(0u, arg_0, vec2<f32>(global0[_wgslsmith_index_u32(10773u, 20u)], arg_0), arg_2.yx), Struct_1(0u, -139f, global1.c, vec2<bool>(global1.d.x, global1.d.x)), arg_2.x)).d.x, select(true, global1.d.x, false)), func_4(select(vec4<bool>(true, global1.d.x, true, true), vec4<bool>(false, false, true, true), arg_2), arg_0, func_2(arg_3.x, vec2<i32>(-1i, u_input.b), -1i, u_input.b)).d.x), func_5(Struct_2(func_5(Struct_2(Struct_1(arg_3.x, arg_0, vec2<f32>(750f, 1147f), arg_2.xy), arg_2, Struct_1(5335u, arg_0, global1.c, global1.d), Struct_1(arg_3.x, -1021f, vec2<f32>(1082f, arg_0), arg_2.zx), global1.d.x), Struct_2(Struct_1(arg_3.x, global0[_wgslsmith_index_u32(global1.a, 20u)], global1.c, vec2<bool>(true, true)), arg_2, Struct_1(71274u, global1.c.x, global1.c, vec2<bool>(global1.d.x, false)), Struct_1(53058u, -756f, vec2<f32>(-615f, -362f), global1.d), true), global1.d.x, Struct_2(Struct_1(115323u, global1.b, vec2<f32>(arg_0, arg_0), vec2<bool>(arg_2.x, false)), arg_2, Struct_1(0u, -722f, vec2<f32>(555f, arg_0), arg_2.zy), Struct_1(arg_3.x, -575f, vec2<f32>(1000f, arg_0), arg_2.zy), global1.d.x)), !vec4<bool>(arg_2.x, global1.d.x, global1.d.x, global1.d.x), func_5(Struct_2(Struct_1(67153u, 1002f, global1.c, global1.d), vec4<bool>(global1.d.x, global1.d.x, false, arg_2.x), Struct_1(4294967295u, 983f, vec2<f32>(604f, global0[_wgslsmith_index_u32(global1.a, 20u)]), vec2<bool>(false, true)), Struct_1(1u, 1000f, global1.c, vec2<bool>(false, false)), false), Struct_2(Struct_1(25248u, -486f, vec2<f32>(-448f, global1.c.x), global1.d), arg_2, Struct_1(13354u, 1202f, vec2<f32>(1125f, global1.b), arg_2.zz), Struct_1(arg_3.x, arg_0, global1.c, vec2<bool>(false, arg_2.x)), arg_2.x), true, Struct_2(Struct_1(global1.a, 509f, vec2<f32>(arg_0, -1736f), vec2<bool>(arg_2.x, global1.d.x)), vec4<bool>(global1.d.x, false, global1.d.x, global1.d.x), Struct_1(global1.a, 218f, global1.c, arg_2.zz), Struct_1(global1.a, global0[_wgslsmith_index_u32(107542u, 20u)], vec2<f32>(global0[_wgslsmith_index_u32(arg_3.x, 20u)], arg_0), global1.d), arg_2.x)), Struct_1(u_input.a.x, global0[_wgslsmith_index_u32(112226u, 20u)], global1.c, vec2<bool>(arg_2.x, false)), !arg_2.x), Struct_2(Struct_1(4294967295u, arg_0, global1.c, global1.d), arg_2, func_5(Struct_2(Struct_1(22997u, global0[_wgslsmith_index_u32(25082u, 20u)], global1.c, vec2<bool>(arg_2.x, arg_2.x)), arg_2, Struct_1(u_input.a.x, -1000f, vec2<f32>(global1.b, 1639f), arg_2.yy), Struct_1(2223u, arg_0, vec2<f32>(337f, -1552f), arg_2.yx), false), Struct_2(Struct_1(arg_3.x, -152f, global1.c, vec2<bool>(true, false)), vec4<bool>(false, global1.d.x, false, arg_2.x), Struct_1(0u, 433f, vec2<f32>(arg_0, arg_0), vec2<bool>(false, arg_2.x)), Struct_1(4294967295u, -2234f, global1.c, global1.d), true), false, Struct_2(Struct_1(global1.a, -145f, vec2<f32>(-1113f, arg_0), vec2<bool>(false, arg_2.x)), arg_2, Struct_1(arg_3.x, 1184f, vec2<f32>(977f, global1.c.x), vec2<bool>(false, true)), Struct_1(703u, -1107f, global1.c, vec2<bool>(true, global1.d.x)), arg_2.x)), Struct_1(0u, -156f, global1.c, vec2<bool>(true, true)), false & arg_2.x), global1.d.x, Struct_2(func_5(Struct_2(Struct_1(u_input.a.x, 764f, global1.c, arg_2.yx), vec4<bool>(false, arg_2.x, false, global1.d.x), Struct_1(0u, global1.b, global1.c, arg_2.xx), Struct_1(global1.a, arg_0, global1.c, global1.d), true), Struct_2(Struct_1(arg_3.x, 660f, global1.c, vec2<bool>(global1.d.x, false)), arg_2, Struct_1(1u, global0[_wgslsmith_index_u32(0u, 20u)], global1.c, vec2<bool>(false, true)), Struct_1(47298u, -541f, global1.c, vec2<bool>(global1.d.x, global1.d.x)), false), true, Struct_2(Struct_1(12663u, global1.b, global1.c, vec2<bool>(arg_2.x, global1.d.x)), vec4<bool>(global1.d.x, false, false, true), Struct_1(arg_3.x, -753f, global1.c, global1.d), Struct_1(45532u, 412f, vec2<f32>(628f, -971f), vec2<bool>(true, true)), global1.d.x)), arg_2, func_5(Struct_2(Struct_1(0u, 643f, global1.c, vec2<bool>(true, false)), vec4<bool>(global1.d.x, false, global1.d.x, arg_2.x), Struct_1(u_input.a.x, global0[_wgslsmith_index_u32(0u, 20u)], vec2<f32>(global0[_wgslsmith_index_u32(71371u, 20u)], -1106f), arg_2.wz), Struct_1(u_input.a.x, -1154f, global1.c, global1.d), global1.d.x), Struct_2(Struct_1(51491u, global1.c.x, global1.c, vec2<bool>(true, true)), arg_2, Struct_1(0u, 614f, global1.c, global1.d), Struct_1(arg_3.x, arg_0, global1.c, vec2<bool>(global1.d.x, false)), true), false, Struct_2(Struct_1(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 20u)], global1.c, global1.d), vec4<bool>(false, arg_2.x, true, global1.d.x), Struct_1(u_input.a.x, global0[_wgslsmith_index_u32(global1.a, 20u)], vec2<f32>(-880f, -146f), arg_2.xy), Struct_1(u_input.a.x, arg_0, vec2<f32>(-748f, 573f), arg_2.yw), true)), func_4(vec4<bool>(global1.d.x, arg_2.x, true, arg_2.x), 511f, Struct_1(u_input.a.x, global1.b, global1.c, arg_2.zz)), all(arg_2.yzy))), Struct_1(~(~1u), -2270f, global1.c, arg_2.xx), arg_2.x), Struct_2(Struct_1(39390u & abs(u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(479f - 1535f)), global1.c, vec2<bool>(select(true, global1.d.x, arg_2.x), true)), vec4<bool>(!(arg_2.x || global1.d.x), global1.d.x != false, select(true, all(vec3<bool>(global1.d.x, global1.d.x, arg_2.x)), global1.d.x), (u_input.a.x == 30248u) && global1.d.x), func_4(vec4<bool>(true, select(global1.d.x, true, arg_2.x), arg_2.x, false), _wgslsmith_f_op_f32(f32(-1f) * -1173f), func_2(firstTrailingBit(u_input.a.x), vec2<i32>(u_input.b, 27551i), _wgslsmith_add_i32(var_0.x, -7201i), -arg_1)), Struct_1(arg_3.x, 1f, global1.c, arg_2.xw), arg_1 >= ~2147483647i), func_5(Struct_2(Struct_1(firstLeadingBit(global1.a), _wgslsmith_div_f32(arg_0, 403f), _wgslsmith_f_op_vec2_f32(select(global1.c, global1.c, vec2<bool>(false, true))), func_2(global1.a, vec2<i32>(-41573i, 37530i), arg_1, -1i).d), vec4<bool>(true, true, global1.d.x, true && global1.d.x), Struct_1(_wgslsmith_mult_u32(arg_3.x, 4294967295u), arg_0, global1.c, select(vec2<bool>(arg_2.x, arg_2.x), vec2<bool>(true, arg_2.x), vec2<bool>(arg_2.x, true))), func_4(vec4<bool>(true, true, true, true), 1006f, Struct_1(18155u, arg_0, vec2<f32>(global1.b, global0[_wgslsmith_index_u32(arg_3.x, 20u)]), vec2<bool>(true, global1.d.x))), true), Struct_2(func_2(31767u, abs(vec2<i32>(arg_1, var_0.x)), var_0.x, arg_1), vec4<bool>(func_2(global1.a, var_0.zz, -1610i, arg_1).d.x, arg_2.x, u_input.a.x == u_input.a.x, arg_2.x), func_4(arg_2, _wgslsmith_f_op_f32(-global1.b), Struct_1(10704u, 1000f, global1.c, arg_2.zy)), func_2(~global1.a, countOneBits(vec2<i32>(21301i, 2147483647i)), _wgslsmith_mod_i32(54980i, arg_1), 14722i), global1.d.x), !(global1.d.x & false), Struct_2(func_5(Struct_2(Struct_1(u_input.a.x, global0[_wgslsmith_index_u32(global1.a, 20u)], global1.c, vec2<bool>(false, true)), arg_2, Struct_1(0u, -315f, vec2<f32>(arg_0, global1.c.x), vec2<bool>(false, false)), Struct_1(4294967295u, 1000f, global1.c, global1.d), true), Struct_2(Struct_1(0u, global0[_wgslsmith_index_u32(arg_3.x, 20u)], vec2<f32>(480f, arg_0), arg_2.zz), arg_2, Struct_1(6896u, global1.b, global1.c, vec2<bool>(false, arg_2.x)), Struct_1(global1.a, -137f, vec2<f32>(global1.c.x, arg_0), vec2<bool>(false, true)), arg_2.x), false, Struct_2(Struct_1(u_input.a.x, -411f, vec2<f32>(-2392f, global0[_wgslsmith_index_u32(28641u, 20u)]), vec2<bool>(arg_2.x, arg_2.x)), vec4<bool>(arg_2.x, false, global1.d.x, false), Struct_1(global1.a, arg_0, vec2<f32>(-1523f, global1.c.x), vec2<bool>(false, true)), Struct_1(global1.a, arg_0, global1.c, global1.d), arg_2.x)), arg_2, Struct_1(abs(79738u), _wgslsmith_f_op_f32(-244f * global1.b), global1.c, arg_2.xx), Struct_1(~arg_3.x, global0[_wgslsmith_index_u32(max(1u, u_input.a.x), 20u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1000f) * vec2<f32>(global0[_wgslsmith_index_u32(0u, 20u)], -718f)), vec2<bool>(arg_2.x, true)), arg_2.x)).d.x, Struct_2(func_4(!arg_2, -233f, func_4(!vec4<bool>(arg_2.x, global1.d.x, global1.d.x, arg_2.x), func_2(4294967295u, vec2<i32>(-21599i, 1i), var_0.x, 2147483647i).b, func_2(1u, vec2<i32>(u_input.c, -75845i), -2147483647i, 3459i))), arg_2, func_5(Struct_2(func_2(1u, vec2<i32>(0i, 9078i), -2147483647i, var_0.x), arg_2, Struct_1(arg_3.x, arg_0, vec2<f32>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(arg_3.x, 20u)]), vec2<bool>(true, true)), Struct_1(arg_3.x, arg_0, global1.c, global1.d), !global1.d.x), Struct_2(Struct_1(arg_3.x, global1.b, vec2<f32>(273f, 1460f), global1.d), arg_2, Struct_1(global1.a, global1.b, vec2<f32>(1554f, arg_0), arg_2.xz), Struct_1(0u, arg_0, global1.c, arg_2.zw), true), arg_2.x, Struct_2(func_4(vec4<bool>(arg_2.x, global1.d.x, true, true), global1.b, Struct_1(0u, global0[_wgslsmith_index_u32(5953u, 20u)], global1.c, vec2<bool>(true, global1.d.x))), arg_2, func_2(arg_3.x, vec2<i32>(var_0.x, 20153i), arg_1, -19517i), func_4(arg_2, global1.b, Struct_1(51033u, global1.b, vec2<f32>(213f, arg_0), arg_2.xw)), true)), func_4(!(!arg_2), 267f, Struct_1(arg_3.x, -2557f, vec2<f32>(-755f, 346f), !vec2<bool>(global1.d.x, true))), global1.d.x));
    global0 = array<f32, 20>();
    global0 = array<f32, 20>();
    return Struct_2(func_4(arg_2, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b))), func_5(Struct_2(func_2(global1.a, var_0.wx, u_input.c, 0i), arg_2, func_4(arg_2, -1000f, Struct_1(2131u, 525f, global1.c, global1.d)), Struct_1(0u, global1.c.x, vec2<f32>(-742f, global0[_wgslsmith_index_u32(0u, 20u)]), global1.d), arg_2.x), Struct_2(func_5(Struct_2(Struct_1(0u, arg_0, global1.c, arg_2.ww), arg_2, Struct_1(4294967295u, -974f, vec2<f32>(global0[_wgslsmith_index_u32(arg_3.x, 20u)], -1798f), global1.d), Struct_1(73744u, global1.c.x, vec2<f32>(global1.c.x, arg_0), arg_2.xy), true), Struct_2(Struct_1(4294967295u, 933f, global1.c, vec2<bool>(true, true)), arg_2, Struct_1(0u, arg_0, vec2<f32>(global0[_wgslsmith_index_u32(arg_3.x, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)]), vec2<bool>(false, true)), Struct_1(4294967295u, arg_0, global1.c, global1.d), global1.d.x), true, Struct_2(Struct_1(4294967295u, 1287f, global1.c, vec2<bool>(false, arg_2.x)), vec4<bool>(arg_2.x, true, arg_2.x, true), Struct_1(global1.a, -157f, vec2<f32>(-449f, -1741f), arg_2.xw), Struct_1(0u, global1.c.x, global1.c, vec2<bool>(arg_2.x, false)), false)), arg_2, func_5(Struct_2(Struct_1(global1.a, -1332f, vec2<f32>(-744f, 664f), vec2<bool>(true, arg_2.x)), arg_2, Struct_1(arg_3.x, 617f, vec2<f32>(-2118f, global0[_wgslsmith_index_u32(57399u, 20u)]), vec2<bool>(true, true)), Struct_1(18167u, 200f, global1.c, global1.d), global1.d.x), Struct_2(Struct_1(global1.a, -479f, vec2<f32>(1216f, 1634f), vec2<bool>(global1.d.x, global1.d.x)), vec4<bool>(arg_2.x, global1.d.x, true, true), Struct_1(34230u, 915f, vec2<f32>(global0[_wgslsmith_index_u32(1u, 20u)], -1278f), vec2<bool>(true, arg_2.x)), Struct_1(global1.a, 658f, global1.c, vec2<bool>(arg_2.x, arg_2.x)), arg_2.x), arg_2.x, Struct_2(Struct_1(1u, 1025f, global1.c, vec2<bool>(arg_2.x, false)), vec4<bool>(false, false, arg_2.x, arg_2.x), Struct_1(u_input.a.x, -2104f, global1.c, global1.d), Struct_1(26362u, arg_0, global1.c, global1.d), arg_2.x)), Struct_1(global1.a, -135f, global1.c, vec2<bool>(true, arg_2.x)), true), true, Struct_2(func_2(16219u, var_0.wx, u_input.b, var_0.x), select(arg_2, vec4<bool>(true, true, false, false), global1.d.x), Struct_1(0u, -2002f, global1.c, global1.d), Struct_1(25372u, -1166f, global1.c, arg_2.xz), any(vec3<bool>(false, false, false))))), select(vec4<bool>(global1.d.x, true, false & global1.d.x, global1.d.x), arg_2, !vec4<bool>(global1.d.x, arg_3.x >= arg_3.x, all(vec4<bool>(global1.d.x, false, true, arg_2.x)), global1.d.x)), Struct_1(_wgslsmith_clamp_u32(func_2(~u_input.a.x, vec2<i32>(arg_1, -1i), reverseBits(var_0.x), 2147483647i).a, 4294967295u, 36552u), global1.b, global1.c, global1.d), Struct_1(arg_3.x, _wgslsmith_f_op_f32(arg_0 + global0[_wgslsmith_index_u32(_wgslsmith_div_u32(47635u, ~18641u), 20u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, 393f))) * vec2<f32>(global0[_wgslsmith_index_u32(117895u, 20u)], 851f))), !func_2(30651u, -var_0.yw, _wgslsmith_div_i32(var_0.x, var_0.x), -1i << (1u % 32u)).d), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global0 = array<f32, 20>();
    global1 = Struct_1(var_0.x, global1.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(floor(1320f))) * global1.c) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-494f * global1.b) + global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(22356u, 20u)])))), select(global1.d, global1.d, u_input.c >= (select(6057i, 0i, global1.d.x) | _wgslsmith_div_i32(u_input.b, 1319i))));
    var var_1 = func_6(1159f, ~(~(func_1(228f, vec3<i32>(u_input.c, 0i, u_input.b)) << (var_0.x % 32u))), !select(vec4<bool>(true, false, global1.d.x, !global1.d.x), select(!vec4<bool>(global1.d.x, true, global1.d.x, global1.d.x), !vec4<bool>(true, false, true, global1.d.x), !vec4<bool>(true, false, true, global1.d.x)), !vec4<bool>(true, global1.d.x, global1.d.x, global1.d.x)), vec3<u32>(_wgslsmith_add_u32(1u, global1.a), 34173u, 1u));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-func_6(812f, -28893i, vec4<bool>(global1.d.x, false, true, true), u_input.a.yzy).c.c.x), _wgslsmith_f_op_f32(global1.c.x - _wgslsmith_div_f32(global1.b, var_1.a.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 8044u, 0u, var_0.x), vec4<u32>(var_1.d.a, var_1.c.a, 2434u, u_input.a.x)), 20u)]) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f) * var_1.d.b))));
    var var_3 = Struct_1(func_4(select(var_1.b, vec4<bool>(false, global1.d.x | global1.d.x, true, !var_1.e), (global0[_wgslsmith_index_u32(u_input.a.x, 20u)] > var_1.d.c.x) || var_1.a.d.x), func_5(Struct_2(func_6(var_1.d.b, u_input.b, vec4<bool>(true, false, true, var_1.d.d.x), u_input.a.wxz).d, !vec4<bool>(true, var_1.b.x, true, false), func_5(Struct_2(var_1.d, var_1.b, Struct_1(1u, 122f, global1.c, vec2<bool>(false, true)), Struct_1(73890u, 567f, vec2<f32>(1159f, global1.b), global1.d), false), Struct_2(Struct_1(global1.a, global0[_wgslsmith_index_u32(1u, 20u)], vec2<f32>(608f, 186f), var_1.d.d), vec4<bool>(global1.d.x, true, false, false), var_1.a, var_1.c, var_1.a.d.x), var_1.d.d.x, Struct_2(var_1.a, vec4<bool>(true, var_1.b.x, false, var_1.e), var_1.d, var_1.c, global1.d.x)), func_5(Struct_2(var_1.d, var_1.b, Struct_1(72364u, global0[_wgslsmith_index_u32(var_0.x, 20u)], vec2<f32>(-749f, global1.b), vec2<bool>(false, true)), var_1.c, global1.d.x), Struct_2(Struct_1(global1.a, global1.c.x, vec2<f32>(global1.b, var_1.a.b), vec2<bool>(true, false)), var_1.b, Struct_1(var_1.d.a, -1919f, vec2<f32>(global1.c.x, var_1.d.b), vec2<bool>(global1.d.x, true)), var_1.c, false), true, Struct_2(Struct_1(17016u, 730f, vec2<f32>(-988f, 700f), vec2<bool>(var_1.a.d.x, var_1.b.x)), var_1.b, var_1.d, var_1.c, true)), true), func_6(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(4294967295u, global1.b, vec2<f32>(global1.b, var_1.d.c.x), global1.d), 24772u)).x, -8284i, vec4<bool>(false, global1.d.x, false, global1.d.x), ~vec3<u32>(2699u, var_0.x, global1.a)), !global1.d.x, func_6(120f, firstLeadingBit(24482i), !vec4<bool>(global1.d.x, var_1.b.x, false, var_1.b.x), vec3<u32>(global1.a, var_0.x, 0u))).c.x, Struct_1(_wgslsmith_clamp_u32(~var_1.c.a, u_input.a.x, 1u), var_1.c.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, 1000f)), var_1.a.c), func_6(-138f, 1i, var_1.b, u_input.a.yxx).a.d)).a, var_1.d.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(var_1.a.c, var_1.d.c), var_1.d.c)), vec2<f32>(193f, _wgslsmith_f_op_f32(min(global1.b, global0[_wgslsmith_index_u32(var_1.a.a, 20u)])))))), global1.d);
    var_1 = func_6(-454f, min(45924i, max(1i, -51389i)), var_1.b, u_input.a.zzy);
    let var_4 = Struct_1(43742u, -217f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_6(-534f, -2147483647i, var_1.b, vec3<u32>(69699u, var_0.x, 0u)).c.c.x, _wgslsmith_f_op_f32(-var_1.d.b)))), func_2(~u_input.a.x, ~vec2<i32>(u_input.b, -15837i >> (var_3.a % 32u)), u_input.b, 18748i).d);
    var_1 = Struct_2(func_5(func_6(_wgslsmith_f_op_f32(min(-2430f, -1099f)), -27294i, select(vec4<bool>(var_3.d.x, true, false, true), !var_1.b, !var_1.b), u_input.a.wzy), func_6(_wgslsmith_f_op_f32(-func_6(var_3.b, -2147483647i, vec4<bool>(false, true, global1.d.x, false), vec3<u32>(42474u, var_3.a, var_0.x)).d.b), u_input.c & u_input.c, func_6(_wgslsmith_f_op_f32(step(793f, var_4.b)), -2147483647i, vec4<bool>(var_1.c.d.x, false, false, false), var_0.www).b, vec3<u32>(~global1.a, _wgslsmith_sub_u32(var_0.x, 80197u), var_1.d.a >> (var_4.a % 32u))), func_6(_wgslsmith_div_f32(func_4(var_1.b, var_3.c.x, Struct_1(u_input.a.x, var_3.b, vec2<f32>(var_3.c.x, -987f), var_1.a.d)).c.x, _wgslsmith_f_op_f32(131f + -153f)), 7530i, !var_1.b, ~vec3<u32>(var_1.c.a, 1u, var_0.x)).e, func_6(969f, u_input.c, vec4<bool>(true, true, true, global1.d.x || global1.d.x), u_input.a.wzz)), func_6(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec2_f32(func_3(var_1.d, 13437u)).x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-279f - global1.b), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(22923u, 20u)]))))), u_input.c, select(select(vec4<bool>(var_1.b.x, false, var_3.d.x, var_4.d.x), select(var_1.b, var_1.b, false), !var_1.b), !var_1.b, false), var_0.zyw).b, Struct_1(abs(~u_input.a.x), 1898f, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(var_1.d.c, var_4.c))), !func_5(Struct_2(var_1.c, var_1.b, var_4, var_1.d, true), Struct_2(Struct_1(27935u, -559f, global1.c, vec2<bool>(true, true)), vec4<bool>(false, var_1.a.d.x, global1.d.x, var_1.c.d.x), Struct_1(18340u, global1.b, vec2<f32>(var_1.a.b, -251f), global1.d), Struct_1(1u, global1.c.x, vec2<f32>(var_3.b, var_1.c.c.x), var_3.d), true), all(var_4.d), Struct_2(var_1.a, vec4<bool>(false, true, global1.d.x, global1.d.x), var_4, var_4, false)).d), func_2(1u, _wgslsmith_add_vec2_i32(-vec2<i32>(50194i, 2147483647i) | _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(0i, -10974i)), vec2<i32>(i32(-1i) * -1i, _wgslsmith_clamp_i32(2147483647i, u_input.c, 1i))), u_input.b, u_input.b ^ _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(48700i, u_input.c, 21765i)), vec3<i32>(u_input.b, u_input.c, u_input.c) | vec3<i32>(u_input.b, u_input.c, u_input.b))), any(select(!var_1.b, !var_1.b, any(func_2(var_4.a, vec2<i32>(u_input.c, -55089i), 27667i, u_input.b).d))));
    let x = u_input.a;
    s_output = StorageBuffer(1000f);
}

