struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(2147483647i, 1i, 10990i, 4573i, -719i, -36327i, -737i, 2147483647i, i32(-2147483648), 21224i, 49835i, 0i, 19208i, -6959i, -5135i, i32(-2147483648), 16946i, -1i, -1i, -12796i);

var<private> global1: array<bool, 19>;

var<private> global2: array<bool, 8> = array<bool, 8>(true, false, false, false, true, false, false, true);

var<private> global3: bool;

var<private> global4: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<i32> {
    return vec2<i32>(abs(-1i), 1i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec2<u32> {
    global1 = array<bool, 19>();
    var var_0 = Struct_1(any(vec3<bool>(true, true, arg_3)));
    let var_1 = countOneBits(u_input.a);
    let var_2 = countOneBits(_wgslsmith_sub_vec2_i32(func_3(), -vec2<i32>(global0[_wgslsmith_index_u32(119552u, 20u)], 1i)) & (vec2<i32>(1i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(0u, 20u)], u_input.a)) >> (~(~vec2<u32>(0u, 3691u)) % vec2<u32>(32u))));
    var var_3 = firstTrailingBit(1u ^ _wgslsmith_sub_u32(~1u, firstTrailingBit(~41267u)));
    return firstLeadingBit(vec2<u32>(0u, ~(~(~4294967295u))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>) -> Struct_1 {
    global1 = array<bool, 19>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1827f, -932f))))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-891f, _wgslsmith_f_op_f32(f32(-1f) * -818f))), _wgslsmith_f_op_f32(f32(-1f) * -1504f), arg_0.x | (true & global1[_wgslsmith_index_u32(4294967295u, 19u)]))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1327f - -542f))))));
    let var_1 = Struct_2(-vec4<i32>(-25527i, countOneBits(~1i), u_input.a, -61643i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -1433f))))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * _wgslsmith_f_op_vec2_f32(var_0 - var_0))))), _wgslsmith_f_op_vec2_f32(step(var_0, _wgslsmith_div_vec2_f32(var_0, var_0))));
    global0 = array<i32, 20>();
    global1 = array<bool, 19>();
    return Struct_1(!all(select(!vec3<bool>(arg_0.x, global1[_wgslsmith_index_u32(arg_1.x, 19u)], false), arg_0.yxw, !vec3<bool>(arg_0.x, false, true))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: bool) -> Struct_1 {
    let var_0 = abs(~arg_2.ywx);
    global2 = array<bool, 8>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(round(arg_1.c.x))) * _wgslsmith_f_op_f32(step(arg_1.c.x, -106f)));
    return Struct_1(false);
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = func_5(func_4(select(select(vec4<bool>(false, true, true, false), !vec4<bool>(false, true, global2[_wgslsmith_index_u32(arg_0.x, 8u)], arg_2.a), vec4<bool>(false, true, false, false)), !select(vec4<bool>(arg_2.a, global1[_wgslsmith_index_u32(arg_0.x, 19u)], false, global2[_wgslsmith_index_u32(1u, 8u)]), vec4<bool>(true, false, global2[_wgslsmith_index_u32(1u, 8u)], arg_2.a), vec4<bool>(arg_2.a, false, true, global1[_wgslsmith_index_u32(1u, 19u)])), true), select(firstTrailingBit(func_2(arg_2, arg_2, arg_2, false)), arg_0.wz, vec2<bool>(true, global1[_wgslsmith_index_u32(arg_0.x, 19u)]))), Struct_2(-countOneBits(vec4<i32>(35730i, -1i, u_input.a, 2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(3032f, 2222f)))))), vec2<f32>(-262f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(781f + -578f), -1000f))), _wgslsmith_clamp_vec4_u32(reverseBits(arg_0), select(vec4<u32>(0u, arg_0.x, arg_0.x, arg_0.x) ^ vec4<u32>(arg_0.x, 4294967295u, 48106u, 77244u), vec4<u32>(1u, 60748u, 23476u, 4294967295u), arg_2.a) | vec4<u32>(arg_0.x, arg_0.x, arg_0.x, ~0u), vec4<u32>(firstTrailingBit(~arg_0.x), ~(~47093u), 0u, min(~arg_0.x, _wgslsmith_mult_u32(0u, 12287u)))), true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(681f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1282f) * -644f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -184f)))))) + _wgslsmith_f_op_f32(f32(-1f) * -428f));
    global0 = array<i32, 20>();
    var var_2 = vec2<f32>(697f, 1f);
    var_1 = 1f;
    return Struct_2(vec4<i32>(u_input.a, -1i, -31943i, arg_1), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(863f, _wgslsmith_f_op_f32(max(var_2.x, -2033f))))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1414f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1745f)), var_2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1380f, var_2.x)))))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<bool>) -> Struct_2 {
    global2 = array<bool, 8>();
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1364f * _wgslsmith_f_op_f32(341f + arg_0.c.x)), arg_0.b.x, _wgslsmith_div_f32(-1206f, arg_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-428f + arg_0.b.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1526f, arg_0.c.x, 1333f, 1618f))))))), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 20u)] >= -7259i, true, any(vec3<bool>(false, true, global2[_wgslsmith_index_u32(3745u, 8u)])), true), !vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 19u)], true, arg_1.x), !arg_2.x)))));
    global1 = array<bool, 19>();
    global2 = array<bool, 8>();
    global1 = array<bool, 19>();
    return Struct_2(~vec4<i32>(~(i32(-1i) * -8322i), u_input.b, _wgslsmith_dot_vec3_i32(arg_0.a.yww, arg_0.a.wyw), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, -69103i, -2147483647i, arg_0.a.x), arg_0.a)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1183f, _wgslsmith_f_op_f32(f32(-1f) * -1225f))), arg_0.c.x), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.wy))));
}

fn func_7(arg_0: Struct_2) -> vec3<i32> {
    global4 = arg_0.b.x;
    var var_0 = all(vec4<bool>(true, false, true, false));
    let var_1 = !select(select(!vec4<bool>(true, global1[_wgslsmith_index_u32(16806u, 19u)], false, false), !vec4<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 8u)], false), global1[_wgslsmith_index_u32(~(1u << (0u % 32u)), 19u)]), select(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 8u)], true, false)), select(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 8u)], true, global1[_wgslsmith_index_u32(1u, 19u)], false), select(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 19u)], true, global2[_wgslsmith_index_u32(0u, 8u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 19u)], true, true), vec4<bool>(global1[_wgslsmith_index_u32(49637u, 19u)], false, false, true)), arg_0.a.x > u_input.b), global1[_wgslsmith_index_u32(1u, 19u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 19u)], global2[_wgslsmith_index_u32(func_2(Struct_1(true), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 19u)]), Struct_1(true), true).x, 8u)], arg_0.b.x <= arg_0.c.x, true), !select(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], true), vec4<bool>(global1[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(14862u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 19u)], true), global2[_wgslsmith_index_u32(11702u, 8u)]), !select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(48288u, 19u)], global2[_wgslsmith_index_u32(0u, 8u)]), vec4<bool>(true, false, true, false), true)));
    var var_2 = 52134u;
    global3 = false;
    return reverseBits(vec3<i32>(max(~_wgslsmith_add_i32(2147483647i, global0[_wgslsmith_index_u32(0u, 20u)]), _wgslsmith_add_i32(65815i | arg_0.a.x, func_3().x)), _wgslsmith_sub_i32(func_6(arg_0, vec2<bool>(var_1.x, global1[_wgslsmith_index_u32(0u, 19u)]), select(var_1.xw, vec2<bool>(var_1.x, global1[_wgslsmith_index_u32(30802u, 19u)]), var_1.x)).a.x, countOneBits(arg_0.a.x)), _wgslsmith_mult_i32(~_wgslsmith_mult_i32(u_input.b, u_input.a), arg_0.a.x)));
}

fn func_8(arg_0: bool, arg_1: vec3<i32>) -> StorageBuffer {
    global2 = array<bool, 8>();
    var var_0 = vec3<f32>(-1304f, -849f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-245f))))));
    var var_1 = vec2<bool>(!((_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 54691u, 26462u, 4294967295u), vec4<u32>(12298u, 1u, 1u, 97618u)) >> (1u % 32u)) >= _wgslsmith_add_u32(45538u, min(1u, 64685u))), !all(vec4<bool>(select(arg_0, arg_0, arg_0), global1[_wgslsmith_index_u32(1u, 19u)], all(vec2<bool>(global2[_wgslsmith_index_u32(0u, 8u)], false)), var_0.x < var_0.x)));
    var var_2 = Struct_1(true);
    let var_3 = Struct_2(firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, 18571i, global0[_wgslsmith_index_u32(0u, 20u)], arg_1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(56107i, arg_1.x, global0[_wgslsmith_index_u32(0u, 20u)], arg_1.x), vec4<i32>(global0[_wgslsmith_index_u32(63404u, 20u)], global0[_wgslsmith_index_u32(82500u, 20u)], u_input.b, -2147483647i))), _wgslsmith_mod_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(37425u, 20u)], arg_1.x, u_input.a, -1i), vec4<i32>(74240i, 16212i, global0[_wgslsmith_index_u32(4294967295u, 20u)], -28128i)))), vec2<f32>(_wgslsmith_f_op_f32(-1690f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-189f)), -1221f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -145f), -1554f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.yy * _wgslsmith_f_op_vec2_f32(var_0.xz + var_0.yy))))));
    return StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(60024u, 0u, 9090u, 4294967295u), vec4<u32>(46753u, 43846u, 1450u, 10714u)), _wgslsmith_mod_u32(0u, 5884u), ~1u), _wgslsmith_sub_vec3_u32(vec3<u32>(29121u, 4294967295u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(21235u, 1u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(13412u, 0u, 4294967295u)))) ^ ~vec3<u32>(4294967295u, _wgslsmith_mult_u32(4294967295u, 1u), reverseBits(61763u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_8(~global0[_wgslsmith_index_u32(1u, 20u)] < global0[_wgslsmith_index_u32(0u, 20u)], ~func_7(func_6(func_1(vec4<u32>(97764u, 4294967295u, 16938u, 0u), 0i, Struct_1(global1[_wgslsmith_index_u32(1u, 19u)])), vec2<bool>(global1[_wgslsmith_index_u32(44763u, 19u)], global2[_wgslsmith_index_u32(0u, 8u)]), select(vec2<bool>(false, global1[_wgslsmith_index_u32(1450u, 19u)]), vec2<bool>(true, true), vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 8u)])))));
}

