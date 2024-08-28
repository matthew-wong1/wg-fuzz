struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(191f, 1000f, -655f, 1831f), vec4<f32>(-1276f, -951f, -1829f, 238f), vec4<f32>(-152f, -138f, -1000f, -295f), vec4<f32>(-262f, -151f, -110f, -1978f), vec4<f32>(-1000f, -1222f, 1049f, -1000f), vec4<f32>(-778f, 527f, 1013f, -1000f));

var<private> global1: array<bool, 22>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    global1 = array<bool, 22>();
    let var_0 = ~vec4<u32>(~select(4537u, 801u, true), 0u, u_input.c, u_input.b) | ~vec4<u32>(~_wgslsmith_add_u32(u_input.c, u_input.c), ~u_input.c, firstLeadingBit(_wgslsmith_add_u32(0u, u_input.c)), _wgslsmith_mod_u32(0u, min(u_input.b, u_input.b)));
    var var_1 = var_0.x;
    var_1 = ~7410u;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1693f, -368f, -1369f), vec3<f32>(216f, -229f, -998f))) * vec3<f32>(-101f, 283f, -887f)))), vec3<f32>(_wgslsmith_f_op_f32(-714f - 170f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-697f, 603f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-158f + -265f) * _wgslsmith_f_op_f32(-743f - -100f)))));
    return select(select(select(select(!vec2<bool>(true, arg_0), !vec2<bool>(true, arg_0), false), !select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), vec2<bool>(true, false)), !(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 22u)]))), !vec2<bool>(true, all(vec3<bool>(arg_0, arg_0, global1[_wgslsmith_index_u32(u_input.b, 22u)]))), !(!global1[_wgslsmith_index_u32(17752u, 22u)])), vec2<bool>(any(select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 22u)], true), vec2<bool>(global1[_wgslsmith_index_u32(106168u, 22u)], true), global1[_wgslsmith_index_u32(4294967295u, 22u)]), !vec2<bool>(arg_0, false), select(vec2<bool>(arg_0, true), vec2<bool>(global1[_wgslsmith_index_u32(68164u, 22u)], global1[_wgslsmith_index_u32(29478u, 22u)]), vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 22u)], true)))), false), any(!select(select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(85694u, 22u)]), vec3<bool>(false, true, arg_0), vec3<bool>(false, true, true)), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, true, true))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: f32) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2)))), arg_2, _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) - arg_2)));
    var var_1 = Struct_4(_wgslsmith_div_f32(arg_2, 1564f), Struct_3(_wgslsmith_clamp_u32(1u & u_input.b, _wgslsmith_sub_u32(0u, u_input.c), ~3309u) & arg_0, vec2<i32>(-1i, min(-1i, u_input.a) & reverseBits(u_input.a)), vec2<i32>(_wgslsmith_div_i32(39219i, reverseBits(1i)), -(~(-30016i))), vec3<f32>(_wgslsmith_f_op_f32(var_0.x * 712f), -899f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2))))), vec3<bool>(arg_1, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(false, arg_1, false, arg_1)), vec4<bool>(arg_1, global1[_wgslsmith_index_u32(u_input.c, 22u)], true, global1[_wgslsmith_index_u32(u_input.b, 22u)]), true)), true), any(func_3(arg_1)));
    let var_2 = abs(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, arg_0, _wgslsmith_add_u32(arg_0, var_1.b.a) ^ _wgslsmith_sub_u32(1u, 1u), ~_wgslsmith_sub_u32(u_input.b, 1u)), firstLeadingBit(vec4<u32>(min(39993u, var_1.b.a), 43588u, _wgslsmith_mod_u32(var_1.b.a, arg_0), var_1.b.a))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_mod_i32(firstLeadingBit(-2147483647i), u_input.a), ~(~(~vec3<u32>(4294967295u, 101534u, var_1.b.a))), abs(-u_input.a) << (var_1.b.a % 32u), arg_0, var_1.c.x));
    let var_4 = var_3.a;
    return Struct_1(max(i32(-1i) * -13895i, max(_wgslsmith_sub_i32(0i, var_1.b.b.x) >> (_wgslsmith_div_u32(8540u, 1u) % 32u), var_3.a.c)), vec3<u32>(max(arg_0, 4294967295u), _wgslsmith_dot_vec3_u32(var_2.yxx, vec3<u32>(0u, countOneBits(u_input.c), _wgslsmith_dot_vec2_u32(var_4.b.zx, vec2<u32>(var_1.b.a, 0u)))), _wgslsmith_sub_u32(max(~var_1.b.a, u_input.b >> (32096u % 32u)), max(1u, ~4294967295u))), ~firstTrailingBit(var_4.a), 84160u, all(var_1.c));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> Struct_1 {
    global1 = array<bool, 22>();
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1375f - _wgslsmith_f_op_f32(281f + -1810f)), -1025f))), Struct_3(max(min(~arg_0.a.b.x, ~4294967295u), firstLeadingBit(81113u)), -countOneBits(vec2<i32>(u_input.a, -18316i)) << (func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.b.x, arg_2, arg_1.b.x, 1u), vec4<u32>(arg_1.d, arg_1.b.x, u_input.b, 0u)), all(vec3<bool>(global1[_wgslsmith_index_u32(38757u, 22u)], global1[_wgslsmith_index_u32(arg_1.b.x, 22u)], global1[_wgslsmith_index_u32(1u, 22u)])), _wgslsmith_f_op_f32(trunc(2535f))).b.zx % vec2<u32>(32u)), ~countOneBits(vec2<i32>(arg_1.a, arg_1.a) >> (arg_0.a.b.zz % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-196f, 322f, 930f) - vec3<f32>(-1799f, -438f, 445f))))), vec3<bool>(~max(25026u, arg_2) <= _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.b, u_input.b, 57550u, 0u), vec4<u32>(18933u, arg_1.b.x, 133919u, 49664u)), ~vec4<u32>(arg_1.d, 61423u, u_input.b, 44129u)), !any(vec3<bool>(arg_3, true, arg_3)), true), _wgslsmith_f_op_f32(round(196f)) != _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-734f, -156f))));
    return func_2(~_wgslsmith_div_u32(arg_1.d | 34377u, ~4294967295u) & u_input.c, false, _wgslsmith_f_op_f32(f32(-1f) * -602f));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: u32, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_3(~min(arg_1.x, _wgslsmith_mult_u32(arg_1.x ^ 0u, ~arg_1.x)), vec2<i32>(-min(0i, abs(u_input.a)), 20875i), vec2<i32>(firstTrailingBit(_wgslsmith_div_i32(reverseBits(u_input.a), _wgslsmith_mult_i32(arg_0.a.c, 14139i))), -2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_3.x, arg_3.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1944f, arg_3.x, arg_3.x))), select(select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(arg_0.a.d, 22u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(arg_0.a.d, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec3<bool>(true, false, false)), select(vec3<bool>(arg_0.a.e, global1[_wgslsmith_index_u32(arg_1.x, 22u)], true), vec3<bool>(true, arg_0.a.e, arg_0.a.e), vec3<bool>(true, false, global1[_wgslsmith_index_u32(46356u, 22u)])), arg_0.a.e))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(440f, arg_3.x, arg_3.x), vec3<f32>(arg_3.x, -644f, -396f), vec3<bool>(false, true, false))))))));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~(~(vec3<u32>(u_input.b, 0u, 0u) << (vec3<u32>(var_0.a, var_1.a.b.x, 6828u) % vec3<u32>(32u)))), var_1.a.b), vec3<u32>(~(~arg_1.x), ~_wgslsmith_mult_u32(~1u, u_input.c), 57689u));
    var var_3 = var_0;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(floor(arg_3.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(-var_3.d.x)), -1713f)), _wgslsmith_f_op_f32(min(1302f, _wgslsmith_f_op_f32(select(-1696f, _wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(1344f * var_0.d.x)), all(vec4<bool>(var_1.a.e, var_1.a.e, false, arg_0.a.e)) && true)))));
    return Struct_1(_wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 26374i, 40176i), vec3<i32>(var_0.b.x, 30511i, arg_0.a.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.a, var_1.a.a, -29302i), vec3<i32>(-1i, 0i, 12841i))), 1i), var_2, var_3.b.x, min(countOneBits(~var_0.a), select(var_3.a, ~4294967295u, arg_0.a.e) >> (_wgslsmith_dot_vec3_u32(firstLeadingBit(var_2), var_1.a.b) % 32u)), !(u_input.b <= _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 94997u, var_2.x, var_1.a.d), vec4<u32>(0u, arg_1.x, arg_0.a.b.x, 10149u)), ~vec4<u32>(17353u, 1u, 9130u, var_3.a))));
}

fn func_1() -> bool {
    let var_0 = func_5(Struct_2(func_4(Struct_2(func_2(u_input.b, false, 752f)), func_2(0u, true, 401f), u_input.c, true)), ~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(35371u, u_input.b), vec2<u32>(22117u, u_input.c), vec2<u32>(21012u, 14389u)) ^ vec2<u32>(22673u, u_input.c), ~(~vec2<u32>(0u, 1u)), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 22u)] != global1[_wgslsmith_index_u32(62983u, 22u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 1u), 22u)])), ~u_input.c, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1000f)))))));
    global0 = array<vec4<f32>, 6>();
    var var_1 = select(select(select(vec4<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 22u)], false)), true, any(vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.d, 22u)])), true), vec4<bool>(true, global1[_wgslsmith_index_u32(reverseBits(0u), 22u)], !global1[_wgslsmith_index_u32(u_input.c, 22u)], true), false), !select(!vec4<bool>(true, global1[_wgslsmith_index_u32(25036u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], true), !vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.b, 22u)], true), select(vec4<bool>(var_0.e, true, true, var_0.e), vec4<bool>(var_0.e, global1[_wgslsmith_index_u32(u_input.b, 22u)], true, true), var_0.e)), !(!vec4<bool>(false, var_0.e, var_0.e, global1[_wgslsmith_index_u32(4294967295u, 22u)]))), !vec4<bool>(select(func_3(global1[_wgslsmith_index_u32(var_0.d, 22u)]).x, true, true), u_input.a == ~var_0.a, all(!vec3<bool>(false, true, var_0.e)), true), false);
    let var_2 = Struct_3(func_5(Struct_2(func_4(Struct_2(Struct_1(1i, var_0.b, -2147483647i, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 22u)])), func_4(Struct_2(var_0), Struct_1(-19284i, var_0.b, 1i, var_0.d, false), u_input.c, false), 106646u, var_1.x)), vec2<u32>(reverseBits(u_input.b), 25087u), ~(~41664u >> (var_0.d % 32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, -1914f))) + _wgslsmith_div_vec2_f32(vec2<f32>(1972f, 266f), vec2<f32>(-1000f, 1467f))), vec2<f32>(_wgslsmith_f_op_f32(-2470f - -1137f), 1913f))).b.x, vec2<i32>(var_0.c, 3900i), ~vec2<i32>(-2147483647i, -36943i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(ceil(-1599f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-223f, 1527f, -1000f) - vec3<f32>(2215f, 276f, -552f)))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d.x, var_2.d.x, _wgslsmith_f_op_f32(floor(-761f))) + vec3<f32>(-109f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(exp2(var_2.d.x))), var_2.d.x), var_2.d.x));
    return !(48755u > ((~var_2.a >> ((var_2.a << (var_2.a % 32u)) % 32u)) ^ (countOneBits(4294967295u) & u_input.c)));
}

fn func_6(arg_0: vec3<u32>) -> StorageBuffer {
    var var_0 = Struct_2(Struct_1(2147483647i, _wgslsmith_sub_vec3_u32(countOneBits(max(vec3<u32>(arg_0.x, arg_0.x, u_input.c), arg_0)), vec3<u32>(u_input.b, _wgslsmith_clamp_u32(u_input.c, u_input.b, 1u), 13200u & arg_0.x)), (-u_input.a & 2147483647i) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.yz, arg_0.zy), ~vec2<u32>(1u, u_input.c)) % 32u), min(~(~arg_0.x), 1u), false));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-311f)), _wgslsmith_f_op_f32(max(1853f, 1000f)), _wgslsmith_f_op_f32(floor(1457f)), -1139f) - vec4<f32>(-2102f, _wgslsmith_f_op_f32(1000f * -266f), -647f, _wgslsmith_f_op_f32(f32(-1f) * -1139f))) + _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~(~1u), 6u)] * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.b, 6u)]) * global0[_wgslsmith_index_u32(~var_0.a.d, 6u)]))) - _wgslsmith_f_op_vec4_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.b.x, 38270u, _wgslsmith_mod_u32(var_0.a.b.x, 30400u)), vec3<u32>(abs(u_input.c), ~arg_0.x, var_0.a.d)), 6u)])));
    var var_2 = u_input.a;
    let var_3 = firstLeadingBit(arg_0.zz);
    var_0 = Struct_2(func_4(Struct_2(func_2(1u, all(vec2<bool>(true, false)), _wgslsmith_div_f32(var_1.x, var_1.x))), func_4(Struct_2(func_5(Struct_2(Struct_1(u_input.a, vec3<u32>(u_input.c, 4294967295u, 21238u), 0i, 0u, false)), var_3, var_3.x, vec2<f32>(838f, var_1.x))), func_2(firstLeadingBit(0u), global1[_wgslsmith_index_u32(u_input.c, 22u)] && global1[_wgslsmith_index_u32(1u, 22u)], -989f), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, var_3.x, 626u), vec4<u32>(var_0.a.d, u_input.c, 4294967295u, arg_0.x)), var_0.a.d), !func_5(Struct_2(var_0.a), vec2<u32>(u_input.c, 0u), var_3.x, vec2<f32>(var_1.x, var_1.x)).e), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(38432u), _wgslsmith_mult_u32(4294967295u, 0u), _wgslsmith_sub_u32(98777u, var_0.a.b.x), 84823u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.b.x, u_input.c, 1u, arg_0.x) << (vec4<u32>(var_3.x, var_3.x, 65154u, var_3.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(32977u, 56321u, 1u, 40453u), vec4<u32>(var_3.x, arg_0.x, var_3.x, var_0.a.b.x)))), func_5(Struct_2(Struct_1(var_0.a.c, var_0.a.b, u_input.a, 17770u, true)), var_0.a.b.zz, _wgslsmith_mult_u32(var_3.x, 1u), var_1.yy).e | var_0.a.e));
    return StorageBuffer(_wgslsmith_mod_i32(-2147483647i, ~7626i), var_1.wy, u_input.a, func_2(var_3.x, global1[_wgslsmith_index_u32(0u, 22u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(421f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.x, 1690f), _wgslsmith_f_op_f32(var_1.x + var_1.x))))).b.xx);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(~select(select(vec3<u32>(u_input.b, 0u, 4294967295u), firstTrailingBit(vec3<u32>(u_input.c, 72008u, u_input.c)), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 22u)], global1[_wgslsmith_index_u32(51078u, 22u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 22u)], false), global1[_wgslsmith_index_u32(1u, 22u)])), vec3<u32>(u_input.c, 9264u, 1u), func_1()));
}

