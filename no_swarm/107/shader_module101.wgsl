struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 49001i;

var<private> global1: u32;

var<private> global2: array<u32, 29> = array<u32, 29>(1u, 1u, 17309u, 4294967295u, 54328u, 26889u, 1u, 38741u, 0u, 4294967295u, 1u, 4294967295u, 78167u, 1u, 1u, 1u, 1u, 17895u, 14188u, 32008u, 110274u, 0u, 1u, 23610u, 0u, 4294967295u, 1u, 4294967295u, 0u);

var<private> global3: array<f32, 8> = array<f32, 8>(-297f, 220f, 582f, 1402f, -665f, -1183f, -628f, 318f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec4<i32> {
    global2 = array<u32, 29>();
    global0 = u_input.e.x;
    global1 = min(3613u, u_input.b.x);
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(0u, 8u)])))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(797f, global3[_wgslsmith_index_u32(u_input.c, 8u)], 362f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1764f, 1327f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 29u)], 8u)])))), true | select(true, false, true))))));
    let var_1 = -u_input.d;
    return ~(-_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, 1i, -2147483647i, u_input.e.x), vec4<i32>(-29507i, var_1, var_1, -23342i)) | u_input.e);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: vec2<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(abs(arg_3.x), 8u)], -1000f, 662f) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(0u, 8u)], -1000f))))));
    let var_1 = Struct_1(global2[_wgslsmith_index_u32(~1u, 29u)], vec3<bool>(false || (_wgslsmith_f_op_f32(round(389f)) <= 1985f), all(vec4<bool>(var_0.x == var_0.x, !arg_2, select(arg_2, arg_2, false), any(vec4<bool>(true, arg_2, arg_2, false)))), all(vec3<bool>(false, arg_2, all(vec4<bool>(arg_2, arg_2, true, arg_2))))), countOneBits(_wgslsmith_add_u32(_wgslsmith_div_u32(firstLeadingBit(0u), ~arg_3.x), ~(~1u))), select(select(vec4<bool>(all(vec3<bool>(arg_2, arg_2, arg_2)), arg_2 && arg_2, any(vec2<bool>(arg_2, true)), !arg_2), vec4<bool>(!arg_2, arg_2, !arg_2, any(vec3<bool>(arg_2, false, false))), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, true, arg_2, arg_2), any(vec3<bool>(arg_2, false, arg_2)))), vec4<bool>(true, any(select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false))), false, arg_2), select(vec4<bool>(false, arg_1 < u_input.b.x, !arg_2, arg_2), vec4<bool>(arg_2, !arg_2, false, true), !(!vec4<bool>(arg_2, true, arg_2, true)))));
    global0 = firstLeadingBit(max(abs(-2147483647i), min(select(20453i << (arg_1 % 32u), -45815i, 1u <= global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_3.x, 29u)], 29u)]), firstLeadingBit(arg_0))));
    let var_2 = ~(u_input.b << (firstLeadingBit(min(u_input.b, vec4<u32>(9120u, global2[_wgslsmith_index_u32(114052u, 29u)], global2[_wgslsmith_index_u32(0u, 29u)], arg_1) | vec4<u32>(arg_3.x, arg_3.x, 1u, global2[_wgslsmith_index_u32(4294967295u, 29u)]))) % vec4<u32>(32u)));
    let var_3 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b.x, arg_1, _wgslsmith_add_u32(var_2.x, reverseBits(var_1.a))), 66249u), min(1u, var_2.x), max(~(~var_1.a), arg_3.x), 0u);
    return var_1.b;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>) -> f32 {
    global3 = array<f32, 8>();
    var var_0 = Struct_1(global2[_wgslsmith_index_u32(~min(global2[_wgslsmith_index_u32(1u, 29u)], ~0u), 29u)], arg_0, abs(1u) | u_input.b.x, select(select(vec4<bool>(all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), false, true, !arg_0.x), select(select(vec4<bool>(true, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), true), !vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), arg_0.x), true), select(vec4<bool>(false, true, arg_0.x != arg_0.x, arg_0.x || true), vec4<bool>(all(arg_0), any(vec3<bool>(false, false, arg_0.x)), arg_0.x, func_3(2147483647i, 63904u, arg_0.x, vec2<u32>(global2[_wgslsmith_index_u32(1u, 29u)], 33413u)).x), vec4<bool>(func_3(-85872i, global2[_wgslsmith_index_u32(0u, 29u)], false, u_input.b.zw).x, !arg_0.x, !arg_0.x, true)), vec4<bool>(any(arg_0), -1547f >= arg_1.x, false, arg_0.x)));
    var var_1 = ~u_input.c;
    let var_2 = select(max(vec3<i32>(u_input.e.x, min(-33415i, u_input.a) >> (68145u % 32u), u_input.d), u_input.e.wxx ^ -countOneBits(u_input.e.xwy)), u_input.e.yww, !(!(true || (-1i != u_input.d))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(var_0.c, 29u)], 1u) | 0u, 29u)]), 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1075f, arg_1.x, false)) * _wgslsmith_div_f32(arg_1.x, 427f)) * 1096f))), -1008f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-198f))), arg_1.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(430f, 1791f)))) - arg_1.x);
}

fn func_5(arg_0: f32) -> bool {
    global3 = array<f32, 8>();
    global1 = _wgslsmith_clamp_u32(max(103420u, u_input.b.x), ~1u, u_input.c);
    let var_0 = Struct_3(Struct_1(u_input.b.x ^ 4294967295u, vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(abs(~(u_input.b.x << (global2[_wgslsmith_index_u32(u_input.b.x, 29u)] % 32u))), 29u)], vec4<bool>(_wgslsmith_f_op_f32(func_4(vec3<bool>(false, true, false), vec4<f32>(-474f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11022u, 29u)], 8u)], arg_0, -470f))) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f), true, true, true)), _wgslsmith_clamp_vec3_i32(u_input.e.zyy, -countOneBits(vec3<i32>(u_input.e.x, 0i, u_input.a) & vec3<i32>(3033i, -14067i, u_input.d)), -u_input.e.xzz | (-u_input.e.zzy & vec3<i32>(-345i, -1i, u_input.a))), true, _wgslsmith_f_op_f32(f32(-1f) * -406f));
    global0 = _wgslsmith_dot_vec3_i32(~select(firstLeadingBit(min(vec3<i32>(-1i, 11928i, var_0.b.x), vec3<i32>(var_0.b.x, -2147483647i, u_input.a))), max(vec3<i32>(u_input.d, -2147483647i, u_input.a), u_input.e.zww), var_0.a.b), select(vec3<i32>(firstLeadingBit(3147i), var_0.b.x, var_0.b.x), _wgslsmith_mult_vec3_i32(~(~var_0.b), _wgslsmith_add_vec3_i32(u_input.e.zwy, var_0.b)), var_0.a.b.x));
    let var_1 = var_0.a.b.x;
    return var_0.a.b.x;
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    let var_0 = func_5(_wgslsmith_f_op_f32(func_4(!func_3(~u_input.d, 0u, any(vec4<bool>(false, true, true, true)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.c, 17454u), u_input.b.yz)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-644f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 8u)], global3[_wgslsmith_index_u32(arg_0.x, 8u)], global3[_wgslsmith_index_u32(u_input.c, 8u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(0u, 8u)], 519f, -1231f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 29u)], 8u)]))))));
    var var_1 = Struct_4(abs(arg_0.wxw), vec3<bool>(all(!vec3<bool>(true, var_0, var_0)), true, global3[_wgslsmith_index_u32(~(~79859u), 8u)] > _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(select(19925u, 26059u, var_0), 8u)])));
    var var_2 = _wgslsmith_add_u32(~53485u | arg_0.x, ~(~_wgslsmith_div_u32(select(u_input.c, global2[_wgslsmith_index_u32(arg_0.x, 29u)], true), ~u_input.c)));
    let var_3 = Struct_2(vec2<u32>(firstTrailingBit(~_wgslsmith_sub_u32(0u, u_input.b.x)), 1u), Struct_1(arg_0.x, !select(vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x), !vec3<bool>(var_0, var_1.b.x, true), var_1.b), var_1.a.x, !(!vec4<bool>(true, false, true, var_1.b.x))), !(!(var_0 != true) == ((var_1.b.x && var_1.b.x) | false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(892f, -589f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 29u)], 8u)], -673f), vec4<f32>(global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(39386u, 8u)], global3[_wgslsmith_index_u32(var_1.a.x, 8u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 29u)], 29u)], 8u)])))))) * _wgslsmith_div_vec4_f32(vec4<f32>(1505f, _wgslsmith_f_op_f32(func_4(vec3<bool>(true, var_0, true), vec4<f32>(global3[_wgslsmith_index_u32(arg_0.x, 8u)], -354f, global3[_wgslsmith_index_u32(4294967295u, 8u)], 1057f))), _wgslsmith_f_op_f32(step(466f, global3[_wgslsmith_index_u32(1u, 8u)])), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_1.a.x, 8u)] - 1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(64714u, 29u)], 8u)], 236f, 1038f, global3[_wgslsmith_index_u32(4294967295u, 8u)]))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3[_wgslsmith_index_u32(u_input.c, 8u)], -1133f))), _wgslsmith_div_vec2_f32(vec2<f32>(877f, -784f), vec2<f32>(581f, global3[_wgslsmith_index_u32(var_1.a.x, 8u)])))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(5086u, 8u)], global3[_wgslsmith_index_u32(0u, 8u)])) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(765f, global3[_wgslsmith_index_u32(arg_0.x, 8u)]))))))));
    var var_4 = Struct_2(vec2<u32>(firstLeadingBit(_wgslsmith_div_u32(u_input.c, ~arg_0.x)), _wgslsmith_div_u32(15637u, _wgslsmith_dot_vec3_u32(var_1.a, arg_0.yww))), var_3.b, !func_3(45360i, var_3.a.x, true, _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.yz, u_input.b.wy, var_3.a), ~var_3.a)).x, var_3.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-621f, 713f) * var_3.d.xy) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.e.x, -228f)))) + _wgslsmith_f_op_vec2_f32(-var_3.e))));
    return _wgslsmith_sub_i32(min(2147483647i, ~u_input.e.x), 5161i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_i32(abs(countOneBits(vec4<i32>(1i, 16916i, -31104i, -2147483647i)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(0u, 29u)], 57943u, 1u, 4294967295u), u_input.b) % vec4<u32>(32u))), func_1(), select(vec4<i32>(u_input.a & u_input.a, u_input.a, _wgslsmith_dot_vec3_i32(u_input.e.yyy, vec3<i32>(u_input.a, -1i, 34346i)), -1i), u_input.e, select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), any(vec3<bool>(false, true, true))))) << (u_input.b % vec4<u32>(32u));
    let var_1 = ~4294967295u;
    global3 = array<f32, 8>();
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(127f, global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(u_input.b.x, 8u)]) + vec3<f32>(global3[_wgslsmith_index_u32(18734u, 8u)], global3[_wgslsmith_index_u32(u_input.b.x, 8u)], global3[_wgslsmith_index_u32(52225u, 8u)]))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 29u)], 29u)], 8u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 8u)], global3[_wgslsmith_index_u32(u_input.b.x, 8u)]), vec3<f32>(-617f, 1122f, 665f), true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 8u)], 293f, 243f), vec3<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 8u)], global3[_wgslsmith_index_u32(u_input.c, 8u)], -395f), vec3<bool>(false, false, false))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1165f, -430f, -671f)))), !vec3<bool>(true, select(false, true, false), true)))));
    var var_3 = vec4<i32>(var_0.x, -var_0.x, ~u_input.a ^ func_2(~u_input.b), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(var_1, 8u)], var_2.x, 1000f, var_2.x) - vec4<f32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1, 29u)], 8u)], 409f, var_2.x, 920f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 765f, var_2.x, global3[_wgslsmith_index_u32(4294967295u, 8u)]) - vec4<f32>(global3[_wgslsmith_index_u32(0u, 8u)], var_2.x, 893f, 1702f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_2.x, -592f, var_2.x) - vec4<f32>(847f, var_2.x, -842f, -658f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-406f, var_2.x, var_2.x, global3[_wgslsmith_index_u32(var_1, 8u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1915f, -1440f, 1000f, var_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1027f, var_2.x, -905f, -874f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -691f, 1114f, -468f))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), false))))), vec4<f32>(_wgslsmith_f_op_f32(-671f + 908f), global3[_wgslsmith_index_u32(48942u, 8u)], 1481f, -1000f), u_input.e.wyw);
}

