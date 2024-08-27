struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<bool>,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(72303u, 1u, 3965u, 34388u), 1u, vec4<bool>(true, true, false, true), false, vec4<f32>(899f, -979f, 1408f, -362f));

var<private> global1: array<f32, 10> = array<f32, 10>(-1665f, 1000f, 1360f, 494f, 498f, -620f, -106f, -2083f, -467f, 109f);

var<private> global2: array<vec2<f32>, 30>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(reverseBits(reverseBits(vec4<u32>(0u, global0.b, min(u_input.b.x, 1u), ~0u))), _wgslsmith_mult_u32(1618u, _wgslsmith_mod_u32(~global0.b | u_input.b.x, select(4294967295u, u_input.b.x, false))), global0.c, 0u != ~max(u_input.b.x, global0.b ^ global0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], global0.e.x))), vec4<f32>(-597f, global0.e.x, 1000f, -1518f)) + global0.e)));
    let var_1 = -min(u_input.c, reverseBits(~0i) << (~var_0.a.x % 32u));
    var var_2 = Struct_1(vec4<u32>(~global0.b, u_input.b.x, var_0.b, (abs(u_input.b.x) ^ 4294967295u) ^ 1u), 31732u, select(var_0.c, global0.c, false), false, _wgslsmith_f_op_vec4_f32(global0.e * vec4<f32>(756f, _wgslsmith_f_op_f32(f32(-1f) * -2148f), _wgslsmith_f_op_f32(floor(global0.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) * -1030f))));
    let var_3 = global0.a.x;
    var var_4 = Struct_1(var_0.a, 20076u, global0.c, !(_wgslsmith_f_op_f32(-var_0.e.x) < -1000f), var_2.e);
    return select(select(!var_2.c.wy, select(!select(vec2<bool>(global0.c.x, var_0.d), vec2<bool>(false, true), true), var_0.c.yz, !global0.c.x), var_4.c.x), !select(select(select(vec2<bool>(var_2.c.x, var_2.c.x), vec2<bool>(true, var_0.d), true), vec2<bool>(global0.c.x, true), var_4.c.x & true), !vec2<bool>(var_4.c.x, true), var_4.c.x), true || (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global0.e.x, -635f)), _wgslsmith_f_op_f32(-var_2.e.x), u_input.d < 26775i)) != global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(var_2.b, 1u, var_4.c.x), ~0u, 1u), 10u)]));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = -firstLeadingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, -1i), ~vec4<i32>(u_input.d, -2147483647i, u_input.a, -10490i)));
    return 1i;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, 1i ^ u_input.a), func_4(!func_3(), arg_0)), abs((_wgslsmith_add_i32(u_input.c, 25451i) ^ firstLeadingBit(u_input.a)) ^ -(~u_input.d)), (_wgslsmith_div_i32(u_input.a, u_input.a << (0u % 32u)) >> (0u % 32u)) << ((reverseBits(global0.a.x) >> (~countOneBits(45094u) % 32u)) % 32u));
    let var_1 = true;
    global1 = array<f32, 10>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.e.x, -788f)) * _wgslsmith_f_op_f32(ceil(-302f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.e.x)) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(23371u, 10u)] + 656f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1800f * 243f))), select(any(vec2<bool>(false, arg_1)), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.b.x, 10u)], -1126f)) > 1000f, arg_1))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(global0.a.x, 10u)])) * global0.e.x))));
    var var_3 = Struct_1(global0.a, 39945u, select(vec4<bool>(!(arg_0.e.x == global1[_wgslsmith_index_u32(1u, 10u)]), all(select(global0.c.zw, global0.c.wz, false)), any(arg_0.c), var_1 | (arg_0.d | var_1)), vec4<bool>(var_1, true, arg_0.c.x, !arg_1), vec4<bool>(!(!global0.d), all(func_3()), false, false)), !all(!vec2<bool>(true, arg_0.c.x)) && true, global0.e);
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = !global0.c;
    var var_1 = func_2(arg_0, false);
    var var_2 = u_input.a;
    let var_3 = Struct_1(min(var_1.a, func_2(Struct_1(abs(vec4<u32>(var_1.a.x, var_1.a.x, global0.a.x, 15896u)), min(var_1.b, var_1.b), select(vec4<bool>(true, true, global0.d, var_1.d), vec4<bool>(false, true, var_0.x, var_1.c.x), var_0.x), true, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.e.x, arg_0.e.x, 1229f, arg_1.e.x)))), !(!var_0.x)).a), reverseBits(~select(firstTrailingBit(global0.a.x), max(global0.a.x, 0u), arg_1.d)), arg_1.c, !(!global0.d & arg_0.c.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1052f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e.x + 1303f) * 2221f), _wgslsmith_f_op_f32(trunc(2188f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-328f, 466f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -142f) * var_1.e.x)));
    var_1 = Struct_1(firstTrailingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(max(arg_1.a, vec4<u32>(1u, 11440u, var_3.a.x, 29743u)), vec4<u32>(global0.b, var_3.b, 28680u, 13043u)), ~(~vec4<u32>(90958u, 4294967295u, 1u, arg_0.a.x)))), 1u, select(vec4<bool>(arg_1.d || all(vec2<bool>(false, true)), true, true, ~u_input.c <= _wgslsmith_div_i32(u_input.c, 1i)), !var_3.c, arg_1.c), false, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(global0.e, _wgslsmith_f_op_vec4_f32(global0.e * vec4<f32>(-288f, -1678f, 712f, global1[_wgslsmith_index_u32(global0.b, 10u)]))))));
    return func_2(func_2(func_2(var_3, (arg_1.b | 68343u) != ~0u), true), var_0.x);
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: u32) -> vec4<bool> {
    var var_0 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_2, 1u), global0.a.wzw), countOneBits(1u)), 5657u), global0.a.yxw, _wgslsmith_mult_vec3_u32(global0.a.xzy, global0.a.yyw));
    global0 = func_5(func_2(Struct_1(global0.a, 0u | (36692u | arg_0), vec4<bool>(global0.d, global0.c.x, true, false), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 1453f, arg_1.x, arg_1.x)))), true), Struct_1(~global0.a << (global0.a % vec4<u32>(32u)), _wgslsmith_clamp_u32(8851u, ~(~global0.a.x), ~(~arg_0)), !(!vec4<bool>(global0.c.x, true, true, global0.d)), global0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -607f, _wgslsmith_f_op_f32(822f + 1062f), 1000f))), func_2(Struct_1(~vec4<u32>(global0.a.x, 3113u, 4294967295u, 75335u), arg_0, func_2(Struct_1(global0.a, arg_0, vec4<bool>(global0.d, true, true, global0.d), global0.c.x, vec4<f32>(1000f, arg_1.x, global0.e.x, global1[_wgslsmith_index_u32(36656u, 10u)])), !global0.d).c, (false || global0.c.x) | true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.e))), global0.c.x).e.yxy, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(~firstTrailingBit(global0.a.x), 10u)], _wgslsmith_f_op_f32(round(arg_1.x)), global0.e.x) + vec3<f32>(global1[_wgslsmith_index_u32(arg_0, 10u)], 402f, arg_1.x)));
    global0 = func_5(func_5(func_5(Struct_1(countOneBits(vec4<u32>(u_input.b.x, global0.b, var_0.x, arg_2)), ~4294967295u, func_5(Struct_1(vec4<u32>(38507u, arg_2, 5220u, 12436u), arg_2, global0.c, global0.c.x, vec4<f32>(-982f, global0.e.x, 1649f, global0.e.x)), Struct_1(vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), u_input.b.x, vec4<bool>(global0.c.x, false, global0.d, global0.c.x), global0.d, vec4<f32>(-195f, global1[_wgslsmith_index_u32(var_0.x, 10u)], global0.e.x, global0.e.x)), arg_1, global0.e.ywy).c, false, vec4<f32>(global0.e.x, global1[_wgslsmith_index_u32(4294967295u, 10u)], arg_1.x, -410f)), func_2(Struct_1(vec4<u32>(u_input.b.x, 6411u, arg_0, arg_0), arg_0, global0.c, global0.d, vec4<f32>(arg_1.x, arg_1.x, 721f, global0.e.x)), global0.c.x), _wgslsmith_f_op_vec3_f32(-global0.e.yzx), vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x >> (0u % 32u), 10u)], _wgslsmith_f_op_f32(-1430f * 412f), global0.e.x)), func_2(Struct_1(global0.a, var_0.x, !vec4<bool>(global0.c.x, global0.d, true, global0.d), global0.c.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-652f, global1[_wgslsmith_index_u32(var_0.x, 10u)], arg_1.x, -1043f)))), any(vec2<bool>(global0.d, global0.c.x))), arg_1, vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(ceil(-522f)))), -380f, global0.e.x)), Struct_1(global0.a, ~(~0u) | _wgslsmith_sub_u32(~1u, arg_0), vec4<bool>(!global0.c.x & global0.d, false, any(global0.c), !any(global0.c.www)), select(true, global0.c.x, global0.c.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 10u)] + global1[_wgslsmith_index_u32(u_input.b.x, 10u)]), arg_1.x, _wgslsmith_f_op_f32(-global0.e.x), func_5(Struct_1(vec4<u32>(var_0.x, 1u, arg_2, global0.a.x), 4294967295u, global0.c, global0.d, vec4<f32>(-1155f, global0.e.x, arg_1.x, 397f)), Struct_1(vec4<u32>(0u, var_0.x, var_0.x, u_input.b.x), 0u, vec4<bool>(global0.c.x, false, global0.c.x, global0.c.x), global0.c.x, global0.e), vec3<f32>(arg_1.x, global1[_wgslsmith_index_u32(var_0.x, 10u)], 1354f), vec3<f32>(arg_1.x, -544f, -954f)).e.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(-1571f, 625f, global0.e.x), vec3<f32>(_wgslsmith_f_op_f32(trunc(global0.e.x)), -1000f, _wgslsmith_f_op_f32(max(-667f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 10u)]))))), vec3<f32>(-403f, 674f, global0.e.x));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-961f * global0.e.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 10u)])) * global0.e.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x))), -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)));
    var var_2 = vec4<i32>(reverseBits(u_input.d >> (1u % 32u)), select(1i, 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2051f + global1[_wgslsmith_index_u32(24534u, 10u)])) > var_1.x), _wgslsmith_div_i32(u_input.c, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-7350i, u_input.a), 2147483647i) >> (var_0.x % 32u)), -abs(u_input.d));
    return global0.c;
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~vec4<u32>(~47646u, (1u ^ arg_1.b) ^ 1u, firstLeadingBit(4294967295u), _wgslsmith_sub_u32(19985u, ~4294967295u)), 1u, vec4<bool>(global0.d && true, true, global0.d, global0.d), true, arg_1.e);
    global2 = array<vec2<f32>, 30>();
    let var_1 = true;
    global1 = array<f32, 10>();
    var var_2 = func_5(Struct_1(max(select(_wgslsmith_add_vec4_u32(global0.a, arg_1.a), global0.a, arg_1.c), max(global0.a, arg_1.a) << (arg_1.a % vec4<u32>(32u))), 0u, !vec4<bool>(all(var_0.c.xzx), all(arg_1.c), !var_1, true), var_1, var_0.e), func_5(func_2(func_2(var_0, global1[_wgslsmith_index_u32(21121u, 10u)] < global1[_wgslsmith_index_u32(global0.a.x, 10u)]), global0.d), arg_1, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.e.x, global0.e.x, var_0.e.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1299f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 10u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-2231f, arg_1.e.x))))), func_2(Struct_1(vec4<u32>(~4294967295u, global0.b & u_input.b.x, ~97u, 22493u), u_input.b.x, select(vec4<bool>(true, global0.d, false, true), func_5(Struct_1(vec4<u32>(u_input.b.x, 56430u, arg_0, var_0.a.x), 4294967295u, vec4<bool>(true, var_1, var_0.d, true), arg_1.c.x, global0.e), var_0, vec3<f32>(global0.e.x, -1163f, -1061f), var_0.e.yyw).c, any(vec3<bool>(var_1, true, true))), false, global0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) + 694f) >= -212f).e.www, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.e.xww * arg_1.e.xzz) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-438f, arg_1.e.x, var_0.e.x)))) - vec3<f32>(640f, _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_1.a.x, 10u)], -1401f), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(45046u, 10u)], -486f)))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(firstLeadingBit(1u), Struct_1(global0.a & abs(select(vec4<u32>(global0.b, 0u, global0.b, global0.b), vec4<u32>(global0.b, global0.a.x, 13221u, 45762u), global0.d)), 28968u, select(func_1(firstTrailingBit(u_input.b.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.e.x, -2228f, global0.e.x))), max(1u, 43020u)), !global0.c, func_5(func_2(Struct_1(global0.a, 0u, vec4<bool>(false, global0.c.x, true, false), global0.c.x, vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 10u)], 743f, -474f, global0.e.x)), global0.d), func_2(Struct_1(global0.a, u_input.b.x, vec4<bool>(false, false, false, false), false, global0.e), false), _wgslsmith_f_op_vec3_f32(-global0.e.wwy), global0.e.xyx).c), all(global0.c.yy), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-183f, -329f, 1664f, 741f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1243f, 1797f, 2000f, global0.e.x), global0.e)), select(global0.c, vec4<bool>(global0.d, true, true, global0.c.x), global0.c.x))), vec4<f32>(_wgslsmith_f_op_f32(-888f + global1[_wgslsmith_index_u32(0u, 10u)]), _wgslsmith_f_op_f32(round(-165f)), _wgslsmith_div_f32(1233f, 471f), global0.e.x))));
    global2 = array<vec2<f32>, 30>();
    global2 = array<vec2<f32>, 30>();
    global2 = array<vec2<f32>, 30>();
    var var_0 = _wgslsmith_mult_i32(abs(-u_input.a | select(-1i, 2147483647i, global0.d)), u_input.a) << (~func_2(func_2(Struct_1(global0.a, u_input.b.x, vec4<bool>(global0.c.x, false, true, global0.c.x), global0.d, global0.e), !global0.c.x), true).b % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x - -794f)))), ~abs(abs(global0.a)) & global0.a, _wgslsmith_clamp_vec2_u32(global0.a.zz, ~u_input.b, func_5(func_2(Struct_1(global0.a, 12231u, vec4<bool>(global0.d, global0.c.x, false, global0.d), false, vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 10u)], -520f, global0.e.x, -1375f)), global0.c.x), func_2(func_2(Struct_1(vec4<u32>(53239u, global0.a.x, 0u, 7157u), 37271u, vec4<bool>(true, false, global0.d, global0.d), global0.d, global0.e), true), global0.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.e.wxw) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e.x, global1[_wgslsmith_index_u32(51523u, 10u)], global0.e.x) - global0.e.xzx)), global0.e.xxx).a.zz));
}

