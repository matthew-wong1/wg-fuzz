struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-817f, -1134f, -694f, -640f), vec4<f32>(-1061f, -627f, 1785f, 620f), vec4<f32>(542f, -1398f, 242f, 965f), vec4<f32>(865f, 1609f, 217f, 654f), vec4<f32>(-177f, -151f, 1827f, -132f), vec4<f32>(-1048f, -324f, -464f, -669f), vec4<f32>(3022f, 950f, 902f, -304f));

var<private> global1: f32 = 332f;

var<private> global2: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(-1i, 21695i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-1i, i32(-2147483648), 0i));

var<private> global3: array<f32, 28> = array<f32, 28>(162f, 254f, -1504f, 547f, 184f, -828f, 930f, 1000f, 952f, -271f, 4074f, 800f, 1205f, -336f, -603f, -2071f, -1065f, -441f, -1711f, 668f, 892f, -1586f, -1984f, -252f, -286f, -2838f, -356f, 415f);

var<private> global4: vec3<f32> = vec3<f32>(107f, 1471f, 217f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    var var_0 = vec2<u32>(~arg_2.b.x, ~(~43828u));
    let var_1 = ~firstLeadingBit(max(max(~vec3<u32>(var_0.x, 52670u, u_input.b), vec3<u32>(u_input.b, 0u, u_input.b)), ~(~vec3<u32>(5348u, 25083u, u_input.b))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1745f, -1000f, -1915f, -292f)))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(arg_2.b.x, 28u)])) + -239f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-228f))), _wgslsmith_f_op_f32(-790f - _wgslsmith_f_op_f32(f32(-1f) * -389f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1411f - -216f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(148f, 257f, global3[_wgslsmith_index_u32(var_0.x, 28u)], -1738f) * vec4<f32>(-1000f, -949f, 136f, arg_2.a.c)) - vec4<f32>(_wgslsmith_f_op_f32(max(-192f, 312f)), _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(u_input.b, 28u)], global4.x)), -1921f, global3[_wgslsmith_index_u32(var_1.x ^ 75981u, 28u)])), !arg_2.a.a)));
    global0 = array<vec4<f32>, 7>();
    var var_3 = Struct_2(arg_1, vec2<u32>(select(81001u, _wgslsmith_mod_u32(1u, var_0.x), true), u_input.b));
    return all(select(vec2<bool>(true, true), vec2<bool>(select(true, arg_1.b, false), all(arg_2.a.a.zwy)), all(arg_1.a.zw)));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: vec3<f32>, arg_3: u32) -> Struct_2 {
    global3 = array<f32, 28>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_f_op_f32(-408f + _wgslsmith_f_op_f32(round(-415f))));
    var var_0 = ~(~(~min(_wgslsmith_mult_vec4_u32(arg_0, arg_0), ~vec4<u32>(u_input.b, arg_3, arg_3, arg_3))));
    global1 = 665f;
    var var_1 = Struct_2(Struct_1(select(vec4<bool>(true, true, u_input.a != 1i, true), vec4<bool>(true, any(vec2<bool>(false, true)), any(vec2<bool>(false, true)), any(vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, true)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))), arg_0.xz);
    return Struct_2(Struct_1(!select(!var_1.a.a, var_1.a.a, !var_1.a.a.x), !func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a, arg_1, arg_1), vec4<i32>(31965i, -4657i, -24637i, u_input.a)), Struct_1(var_1.a.a, true, -483f), Struct_2(Struct_1(vec4<bool>(var_1.a.a.x, true, var_1.a.b, true), true, global4.x), vec2<u32>(4294967295u, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c))), var_0.zx);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(!arg_3.a.a, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-852f, _wgslsmith_f_op_f32(563f - arg_3.a.c), true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) * global4.x))), ~(~arg_3.b));
    var var_1 = global4.x;
    global2 = array<vec3<i32>, 3>();
    var_1 = _wgslsmith_f_op_f32(-208f - arg_3.a.c);
    let var_2 = func_2(max(~(~firstTrailingBit(vec4<u32>(48810u, arg_1, arg_3.b.x, 61688u))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, ~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, var_0.b.x, u_input.b), vec3<u32>(0u, u_input.b, 54372u)), ~arg_3.b.x), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(arg_3.b.x, u_input.b, 270u, 37416u)), firstTrailingBit(vec4<u32>(u_input.b, 4294967295u, var_0.b.x, 0u))))), ~u_input.a, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-879f, _wgslsmith_f_op_f32(1071f * 1014f))))), -649f, arg_3.a.c), 1u);
    return var_0;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    global0 = array<vec4<f32>, 7>();
    let var_0 = firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -32460i), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(1i, u_input.a)), firstTrailingBit(2147483647i)), ~select(_wgslsmith_clamp_i32(u_input.a, 1i, u_input.a), 2147483647i, !arg_2)));
    global4 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(25310u, 28u)], global3[_wgslsmith_index_u32(u_input.b, 28u)], arg_1.a.c)))))), vec3<f32>(_wgslsmith_f_op_f32(-func_4(max(u_input.a, 0i), ~4294967295u, arg_0 < -674f, func_2(vec4<u32>(arg_1.b.x, 1u, u_input.b, 46544u), -1i, vec3<f32>(global3[_wgslsmith_index_u32(arg_1.b.x, 28u)], -2312f, -1265f), arg_1.b.x)).a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.c)), arg_0)));
    let var_1 = _wgslsmith_f_op_f32(-func_2(abs(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(23149u, u_input.b, arg_1.b.x, arg_1.b.x), vec4<u32>(arg_1.b.x, 2992u, u_input.b, 93767u)))), -_wgslsmith_add_i32(60932i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -1i), global2[_wgslsmith_index_u32(1u, 3u)])), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(-1705f * -1444f), arg_1.a.c), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(295f, -1585f, global4.x) + vec3<f32>(1301f, -1826f, 268f)))), !arg_2)), _wgslsmith_div_u32(u_input.b, countOneBits(arg_1.b.x))).a.c);
    global3 = array<f32, 28>();
    return Struct_1(func_4(-2147483647i, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, arg_1.b.x, 4294967295u), vec3<u32>(45372u, 16913u, 60036u)), firstLeadingBit(~vec3<u32>(u_input.b, 96142u, 1u))), !(!select(arg_1.a.a.x, true, false)), Struct_2(Struct_1(arg_1.a.a, arg_1.a.a.x, global4.x), vec2<u32>(u_input.b, 4294967295u))).a.a, func_2(firstTrailingBit(vec4<u32>(arg_1.b.x >> (arg_1.b.x % 32u), 9927u, func_2(vec4<u32>(arg_1.b.x, 15913u, u_input.b, arg_1.b.x), u_input.a, vec3<f32>(-246f, 1794f, arg_1.a.c), u_input.b).b.x, 14393u)), 33326i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1179f, arg_0, 1824f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 28u)], 863f, -1000f)))), ~_wgslsmith_dot_vec2_u32(arg_1.b, arg_1.b & arg_1.b)).a.b, arg_0);
}

fn func_1(arg_0: i32) -> vec2<i32> {
    var var_0 = func_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4.x)))))), func_4(u_input.a << (0u % 32u), 9043u, !(18018u >= _wgslsmith_clamp_u32(u_input.b, 58794u, 11845u)), func_2(~vec4<u32>(u_input.b, u_input.b, 0u, 1u), 27436i, vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 28u)]), -329f, global4.x), 1u)), true);
    var_0 = func_5(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(firstTrailingBit(1u), 28u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c)) - -490f)), func_2(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 53984u) ^ vec4<u32>(72530u, u_input.b, 0u, u_input.b), vec4<u32>(69912u, 90007u, u_input.b, 1u)) >> (vec4<u32>(u_input.b >> (1u % 32u), 4294967295u, firstLeadingBit(u_input.b), 1u) % vec4<u32>(32u)), -(5003i | _wgslsmith_add_i32(1i, arg_0)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-524f, -159f, -1791f)), vec3<f32>(global4.x, global4.x, 179f))))), u_input.b), any(!vec4<bool>(any(vec3<bool>(var_0.b, false, var_0.a.x)), !var_0.b, var_0.b, true)));
    return -(~(~(-vec2<i32>(arg_0, u_input.a))));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = !any(vec3<bool>(0u == (arg_2.b.x | u_input.b), !(!arg_2.a.b), select(!arg_2.a.b, 20603i != u_input.a, true)));
    let var_1 = Struct_1(vec4<bool>(!(!arg_2.a.a.x & true), true, arg_2.a.b, func_4(i32(-1i) * -u_input.a, _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_2.b.x, 1u), _wgslsmith_div_u32(arg_2.b.x, 76374u)), !any(vec2<bool>(arg_2.a.b, true)), Struct_2(func_5(-1000f, Struct_2(arg_2.a, arg_2.b), true), countOneBits(arg_2.b))).a.b), arg_2.a.b, -342f);
    let var_2 = Struct_1(func_2(select(vec4<u32>(25618u, arg_2.b.x, 4294967295u, 0u) ^ ~vec4<u32>(2697u, 1u, arg_2.b.x, 0u), vec4<u32>(4294967295u, 1u, ~arg_2.b.x, firstTrailingBit(u_input.b)), arg_2.a.a.x), arg_0.x, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + -928f), _wgslsmith_div_f32(var_1.c, -539f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), 732f), 17038u).a.a, func_2(~(~vec4<u32>(u_input.b, 67638u, arg_2.b.x, 1u)), -32818i, vec3<f32>(721f, _wgslsmith_f_op_f32(-arg_2.a.c), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(3741u, 28u)] + -1461f)), reverseBits(~u_input.b)).a.b, _wgslsmith_f_op_f32(step(161f, 1083f)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3[_wgslsmith_index_u32(124741u, 28u)], global4.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.c, -526f) * vec2<f32>(global4.x, global4.x)) + _wgslsmith_f_op_vec2_f32(-global4.zy)))));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.c)))) * -150f), _wgslsmith_f_op_f32(-1000f - var_2.c));
    return var_2;
}

fn func_7(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    var var_0 = arg_0.a.wxx;
    let var_1 = firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(reverseBits(0i)), countOneBits(u_input.a) | (u_input.a | u_input.a), firstTrailingBit(-2147483647i)), arg_1));
    global0 = array<vec4<f32>, 7>();
    var var_2 = arg_0;
    var var_3 = func_4(u_input.a, 4260u, all(var_2.a.yw), func_2(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, u_input.b), ~vec4<u32>(58486u, 3946u, 999u, u_input.b)), ~(vec4<u32>(u_input.b, 13054u, 4294967295u, 1u) & vec4<u32>(1u, u_input.b, 1u, 1u))), ~(-2147483647i), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 28u)], global3[_wgslsmith_index_u32(36654u, 28u)], var_2.c)))), abs(~(~41213u)))).a.a.zyz;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 28u)]), _wgslsmith_f_op_f32(-global4.x)), global4.x, !(var_2.c == -349f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_7(func_6(func_1(-17516i), global4.zx, func_4(~(-29960i), _wgslsmith_clamp_u32(var_0, u_input.b, 62858u), true, func_2(vec4<u32>(4294967295u, 45083u, 1u, var_0), u_input.a, vec3<f32>(-261f, global4.x, 1667f), var_0))), global2[_wgslsmith_index_u32(u_input.b, 3u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(countOneBits(var_0) ^ func_2(vec4<u32>(var_0, 0u, u_input.b, u_input.b), u_input.a, vec3<f32>(global3[_wgslsmith_index_u32(var_0, 28u)], global3[_wgslsmith_index_u32(1u, 28u)], 1122f), 0u).b.x, 28u)]))));
    var var_2 = func_6(~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(22890i, u_input.a), -_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -18801i), vec2<i32>(u_input.a, 32611i))), vec2<f32>(global4.x, 2657f), func_2(vec4<u32>(_wgslsmith_add_u32(~25005u, min(0u, 45280u)), ~(var_0 << (var_0 % 32u)), abs(4294967295u), u_input.b), 1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, global3[_wgslsmith_index_u32(44155u, 28u)]) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 28u)], 511f, global3[_wgslsmith_index_u32(var_0, 28u)])))), _wgslsmith_div_u32(abs(26018u), ~(~44942u))));
    let var_3 = var_2.b;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)) - _wgslsmith_f_op_f32(global4.x + -933f)) - func_6(vec2<i32>(-u_input.a, -u_input.a), _wgslsmith_div_vec2_f32(vec2<f32>(var_2.c, var_2.c), _wgslsmith_f_op_vec2_f32(-global4.yx)), Struct_2(func_5(-975f, Struct_2(Struct_1(var_2.a, false, 240f), vec2<u32>(u_input.b, 41325u)), var_2.a.x), ~vec2<u32>(4294967295u, 42992u))).c));
    var var_5 = func_4(countOneBits(u_input.a), u_input.b, !(~(u_input.b & 6159u) > u_input.b), func_2(vec4<u32>(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.b, 94045u)), vec2<u32>(u_input.b, u_input.b)), ~0u, var_0, _wgslsmith_add_u32(~u_input.b, func_4(u_input.a, 0u, true, Struct_2(Struct_1(vec4<bool>(false, true, false, var_2.a.x), false, -1130f), vec2<u32>(u_input.b, var_0))).b.x)), -1i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(var_2.c * 1017f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0, 28u)])), vec3<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0, 28u)] * -2628f), global3[_wgslsmith_index_u32(var_0 >> (14432u % 32u), 28u)], global3[_wgslsmith_index_u32(reverseBits(4294967295u), 28u)]), select(!var_2.a.zwz, vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x), !vec3<bool>(var_2.b, false, true)))), 1u)).a;
    var var_6 = _wgslsmith_mult_vec2_u32(~abs(countOneBits(firstTrailingBit(vec2<u32>(var_0, var_0)))), select(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_0, var_0), vec2<u32>(10846u, u_input.b)), select(~vec2<u32>(var_0, u_input.b), func_2(vec4<u32>(0u, var_0, 66114u, u_input.b), 2147483647i, vec3<f32>(1000f, var_5.c, global4.x), u_input.b).b, any(vec3<bool>(var_5.b, false, false)))), _wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 6097u), vec2<u32>(10693u, u_input.b)), vec2<u32>(1u, u_input.b | var_0)), func_6(select(vec2<i32>(u_input.a, 38124i), vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, true)) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), vec2<f32>(var_5.c, 1039f), func_4(i32(-1i) * -37790i, 40885u, var_2.a.x, Struct_2(Struct_1(vec4<bool>(true, var_2.b, var_5.a.x, false), var_5.b, 118f), vec2<u32>(43125u, var_0)))).a.zw));
    let var_7 = func_2(countOneBits(firstTrailingBit(vec4<u32>(40211u, 1u << (u_input.b % 32u), var_0, _wgslsmith_mod_u32(u_input.b, 4294967295u)))), firstLeadingBit(-4775i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1125f, -672f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(38123u, 28u)], 194f, global4.x))), vec3<f32>(_wgslsmith_f_op_f32(-global4.x), func_2(vec4<u32>(38181u, 1u, var_0, var_0), -36776i, vec3<f32>(var_2.c, 334f, 2484f), 46971u).a.c, -451f)))), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.zy * vec2<f32>(var_5.c, global4.x)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(var_7.a.c, -1000f), _wgslsmith_f_op_vec2_f32(-global4.zy))))), ~reverseBits(-1i), _wgslsmith_mult_vec2_u32(~vec2<u32>(var_6.x, 4294967295u) & (_wgslsmith_add_vec2_u32(var_7.b, var_7.b) ^ (vec2<u32>(1u, var_0) & vec2<u32>(var_7.b.x, 6244u))), var_7.b), global2[_wgslsmith_index_u32(14906u, 3u)]);
}

