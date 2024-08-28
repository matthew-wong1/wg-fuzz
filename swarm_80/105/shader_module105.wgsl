struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<i32, 19> = array<i32, 19>(-15975i, 56075i, 2269i, 1i, i32(-2147483648), -1i, 58290i, 4961i, 0i, -29911i, 1i, 11684i, -43129i, i32(-2147483648), 24268i, -64635i, -56958i, 2147483647i, 2147483647i);

var<private> global2: array<vec3<u32>, 4>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    var var_0 = 118697u;
    var var_1 = -_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(global1[_wgslsmith_index_u32(1u, 19u)], -11444i, 0i) << (vec3<u32>(1u, 30637u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, global1[_wgslsmith_index_u32(60563u, 19u)], -68130i) >> (vec3<u32>(u_input.a.x, arg_0, arg_0) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(arg_0, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], -18364i), vec3<i32>(global1[_wgslsmith_index_u32(46826u, 19u)], -46119i, global1[_wgslsmith_index_u32(19618u, 19u)])), vec3<i32>(1i, -53724i, global1[_wgslsmith_index_u32(u_input.a.x, 19u)]))), ~min(-vec3<i32>(global1[_wgslsmith_index_u32(35900u, 19u)], 8499i, 0i), vec3<i32>(-12280i, global1[_wgslsmith_index_u32(1u, 19u)], -2147483647i) << (global2[_wgslsmith_index_u32(21846u, 4u)] % vec3<u32>(32u))));
    var_1 = -2147483647i;
    var var_2 = vec3<f32>(726f, _wgslsmith_f_op_f32(trunc(-381f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1271f, _wgslsmith_f_op_f32(ceil(arg_2))))) * 1f));
    var_2 = vec3<f32>(var_2.x, _wgslsmith_div_f32(-531f, arg_2), -148f);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-778f)) + -711f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1059f + _wgslsmith_f_op_f32(f32(-1f) * -996f)) - _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(var_2.x, arg_2)), false))));
}

fn func_2() -> vec4<f32> {
    global1 = array<i32, 19>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x - 1444f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(4294967295u & u_input.a.x, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-252f - global0.x))), global0.x) * _wgslsmith_f_op_f32(sign(global0.x))), u_input.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.x)), 1868f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -127f), _wgslsmith_f_op_f32(sign(global0.x)))), 478f)), true)), ~(~abs(0u)) >= _wgslsmith_add_u32(~u_input.a.x, ~0u));
    let var_1 = !vec4<bool>(all(select(select(vec3<bool>(var_0.e, var_0.e, var_0.e), vec3<bool>(var_0.e, var_0.e, false), vec3<bool>(var_0.e, var_0.e, var_0.e)), select(vec3<bool>(false, var_0.e, var_0.e), vec3<bool>(var_0.e, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(var_0.e, true, var_0.e), vec3<bool>(var_0.e, true, var_0.e), false))), false, any(select(vec2<bool>(false, var_0.e), vec2<bool>(true, true), vec2<bool>(var_0.e, false))), all(vec4<bool>(any(vec2<bool>(true, var_0.e)), !var_0.e, all(vec4<bool>(var_0.e, var_0.e, false, var_0.e)), all(vec3<bool>(true, var_0.e, false)))));
    var var_2 = (~(global1[_wgslsmith_index_u32(15418u, 19u)] ^ firstLeadingBit(2147483647i)) >> (u_input.a.x % 32u)) ^ -reverseBits(-firstLeadingBit(global1[_wgslsmith_index_u32(u_input.a.x, 19u)]));
    global1 = array<i32, 19>();
    return _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(740f, -1404f, var_0.d, var_0.a)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(42532u, u_input.a.x), ~vec2<u32>(1u, 46122u)))));
    var var_1 = countOneBits(_wgslsmith_mod_i32(~(_wgslsmith_dot_vec2_i32(arg_0.yz, vec2<i32>(55230i, -21504i)) & (i32(-1i) * -74731i)), global1[_wgslsmith_index_u32(~(~4294967295u) << (((u_input.a.x >> (12094u % 32u)) ^ var_0) % 32u), 19u)]));
    global2 = array<vec3<u32>, 4>();
    global1 = array<i32, 19>();
    let var_2 = Struct_3(true, vec4<bool>(true, true, true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))) | select(true, true, true)), firstLeadingBit(reverseBits(_wgslsmith_div_vec2_u32(u_input.a, u_input.a) << (vec2<u32>(var_0, 0u) % vec2<u32>(32u)))), !select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), false)), all(vec4<bool>(true, true, true, true))), vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(~(0u >> (~4294967295u % 32u)), 19u)], -1i));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, global0.x, false)))) * _wgslsmith_f_op_vec4_f32(func_2()).x), _wgslsmith_f_op_f32(exp2(arg_1.x)), 0u, _wgslsmith_f_op_f32(func_3(abs(~var_0), !var_2.b.wwz, 277f)), all(!vec2<bool>(any(vec2<bool>(true, var_2.d.x)), true)));
}

fn func_1() -> vec2<f32> {
    let var_0 = func_4(vec3<i32>(~1i, global1[_wgslsmith_index_u32(~(~abs(0u)), 19u)], ~(~abs(13236i))), _wgslsmith_f_op_vec4_f32(func_2()), 765f);
    global0 = vec2<f32>(_wgslsmith_div_f32(var_0.a, var_0.b), 1239f);
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(func_4(vec3<i32>(-1i, global1[_wgslsmith_index_u32(5468u, 19u)], global1[_wgslsmith_index_u32(4558u, 19u)]), vec4<f32>(-621f, global0.x, -1000f, global0.x), var_0.b).c, u_input.a.x, abs(83384u)), firstTrailingBit(_wgslsmith_add_u32(u_input.a.x, 1u)), var_0.c), firstLeadingBit(countOneBits(26727u))) >> ((_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(var_0.c, u_input.a.x, var_0.c, 19751u)), abs(abs(vec4<u32>(68722u, var_0.c, 32812u, 90401u)))) & u_input.a.x) % 32u);
    var var_2 = Struct_4(select(vec2<bool>(func_4(~vec3<i32>(0i, -85838i, 21019i), vec4<f32>(-522f, global0.x, 494f, -1114f), _wgslsmith_f_op_f32(-var_0.b)).e, !var_0.e), !select(select(vec2<bool>(false, false), vec2<bool>(true, var_0.e), vec2<bool>(true, false)), select(vec2<bool>(var_0.e, false), vec2<bool>(true, false), false), vec2<bool>(true, true)), !(0i != (-1015i ^ global1[_wgslsmith_index_u32(var_0.c, 19u)]))), u_input.a.x, !select(!var_0.e, var_0.e, func_4(-vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], 1i, global1[_wgslsmith_index_u32(u_input.a.x, 19u)]), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b, 643f, global0.x, -119f))), global0.x).e), vec2<u32>(_wgslsmith_mult_u32(var_0.c, var_0.c), var_0.c << ((select(u_input.a.x, 1u, var_0.e) | _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(1u, 4u)])) % 32u)), _wgslsmith_add_vec3_i32(vec3<i32>(-reverseBits(-1i), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, global1[_wgslsmith_index_u32(u_input.a.x, 19u)]), -vec2<i32>(global1[_wgslsmith_index_u32(53695u, 19u)], 1i)), global1[_wgslsmith_index_u32(var_0.c, 19u)] ^ (i32(-1i) * -1i)), _wgslsmith_clamp_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, global1[_wgslsmith_index_u32(73738u, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)]), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 0i, -10665i), vec3<i32>(-9672i, global1[_wgslsmith_index_u32(4294967295u, 19u)], -2147483647i))), abs(-vec3<i32>(-38319i, global1[_wgslsmith_index_u32(var_0.c, 19u)], 0i)), vec3<i32>(~10421i, -global1[_wgslsmith_index_u32(u_input.a.x, 19u)], -2147483647i & global1[_wgslsmith_index_u32(1u, 19u)]))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1803f + global0.x), global0.x);
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b, var_0.a)))) * vec2<f32>(var_0.d, _wgslsmith_f_op_f32(round(-737f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(748f, -140f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1363f, -1000f) * vec2<f32>(var_0.b, -181f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.b, 1311f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.b, global0.x))))))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: Struct_1) -> Struct_4 {
    global0 = arg_0;
    let var_0 = Struct_3(!any(select(vec4<bool>(arg_2.c, arg_1.x, true, false), vec4<bool>(arg_1.x, false, true, false), arg_2.c)) | !(!(arg_3.e | arg_2.c)), vec4<bool>(true, arg_1.x || (true | all(vec4<bool>(true, false, arg_3.e, true))), any(select(select(vec2<bool>(arg_3.e, arg_3.e), vec2<bool>(true, false), false), select(arg_2.a, vec2<bool>(false, true), vec2<bool>(false, true)), true)), !(arg_2.b < _wgslsmith_clamp_u32(arg_3.c, arg_2.d.x, u_input.a.x))), arg_2.d, select(select(select(!vec4<bool>(false, true, arg_3.e, false), !vec4<bool>(arg_2.a.x, arg_3.e, arg_2.c, false), arg_3.e), !(!vec4<bool>(arg_2.a.x, arg_2.c, arg_1.x, false)), !(!vec4<bool>(true, true, arg_1.x, true))), select(!vec4<bool>(true, arg_3.e, arg_2.a.x, arg_3.e), vec4<bool>(false, any(vec4<bool>(false, true, arg_2.a.x, arg_2.a.x)), false, false), select(vec4<bool>(true, false, true, arg_3.e), vec4<bool>(false, true, false, arg_3.e), any(vec3<bool>(true, arg_2.a.x, false)))), select(!(!vec4<bool>(false, arg_1.x, arg_1.x, true)), !(!vec4<bool>(arg_1.x, arg_3.e, false, arg_2.c)), true)), firstLeadingBit(vec3<i32>(i32(-1i) * -2203i, min(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 45585i, -34442i, -1i), vec4<i32>(39542i, arg_2.e.x, arg_2.e.x, arg_2.e.x))), 0i)));
    global1 = array<i32, 19>();
    global0 = arg_0;
    global0 = arg_0;
    return arg_2;
}

fn func_6(arg_0: Struct_4) -> Struct_4 {
    global0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -332f)), 617f)));
    var var_0 = Struct_3(all(!(!vec4<bool>(arg_0.a.x, true, arg_0.c, true))), vec4<bool>(arg_0.c, !arg_0.c, false, func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(656f, 1969f))), vec2<bool>(true, !arg_0.a.x), Struct_4(arg_0.a, arg_0.d.x, false, arg_0.d & arg_0.d, reverseBits(vec3<i32>(-8732i, global1[_wgslsmith_index_u32(arg_0.d.x, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)]))), func_4(arg_0.e & arg_0.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(360f, -502f, global0.x, global0.x)), _wgslsmith_f_op_f32(580f + global0.x))).a.x), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, 1u), arg_0.d), vec2<u32>(28911u, arg_0.d.x)), arg_0.d.x), vec2<u32>(~1u, _wgslsmith_clamp_u32(~76624u, ~8807u, min(4294967295u, u_input.a.x)))), vec4<bool>(any(!(!vec4<bool>(false, false, false, arg_0.a.x))), !arg_0.c, arg_0.c, select(func_4(_wgslsmith_add_vec3_i32(arg_0.e, arg_0.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(2190f, -1517f, 745f, -289f) * vec4<f32>(global0.x, global0.x, -135f, global0.x)), 937f).e, !any(vec4<bool>(false, false, arg_0.c, arg_0.c)), arg_0.a.x)), arg_0.e);
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1149f))), _wgslsmith_f_op_vec2_f32(func_1()).x), 1094f, countOneBits(~var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -654f), false);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.a, 650f))), vec2<f32>(var_1.a, 1029f)))), vec2<f32>(368f, global0.x), ~var_0.c.x < ~(~4294967295u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()))));
    return Struct_4(vec2<bool>(all(vec4<bool>(false, true, var_1.e, var_0.b.x)) != !(!var_0.d.x), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-var_2.x)) <= var_2.x), 35183u, !any(select(func_5(var_3.wz, vec2<bool>(true, arg_0.c), Struct_4(arg_0.a, var_1.c, false, vec2<u32>(u_input.a.x, u_input.a.x), var_0.e), Struct_1(-1424f, global0.x, var_1.c, var_2.x, true)).a, vec2<bool>(false, var_0.d.x), true)), arg_0.d, -((vec3<i32>(arg_0.e.x, global1[_wgslsmith_index_u32(4294967295u, 19u)], var_0.e.x) >> (_wgslsmith_add_vec3_u32(global2[_wgslsmith_index_u32(1u, 4u)], vec3<u32>(55226u, var_0.c.x, 4294967295u)) % vec3<u32>(32u))) | -var_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, -172f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(825f, global0.x)))))), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), Struct_4(vec2<bool>(true, true), 4294967295u, false, u_input.a, firstLeadingBit(-vec3<i32>(-6412i, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global1[_wgslsmith_index_u32(1u, 19u)]))), func_4(-vec3<i32>(2147483647i, 1i, -3598i), _wgslsmith_f_op_vec4_f32(vec4<f32>(1250f, -985f, global0.x, 797f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -226f, -485f, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 749f)))));
    global1 = array<i32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(firstLeadingBit(-vec4<i32>(2147483647i, 26169i, -11034i, 2992i)), abs(vec4<i32>(var_0.e.x, var_0.e.x, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 1i) >> (vec4<u32>(0u, 4294967295u, 1u, u_input.a.x) % vec4<u32>(32u)))) >> ((vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_div_u32(4294967295u, var_0.b), 31005u) << (vec4<u32>(var_0.b, var_0.b >> (u_input.a.x % 32u), ~var_0.d.x, var_0.d.x) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(func_3(1u, select(vec3<bool>(false, var_0.a.x, 2147483647i < global1[_wgslsmith_index_u32(var_0.d.x, 19u)]), vec3<bool>(var_0.c, true, var_0.a.x), true), 669f)), min(vec4<i32>(select(global1[_wgslsmith_index_u32(0u, 19u)], ~(-1i), false), -51963i, -19373i, -9755i), -(~reverseBits(vec4<i32>(var_0.e.x, var_0.e.x, 8191i, var_0.e.x)))), ~select(~var_0.e ^ -var_0.e, vec3<i32>(7296i, -37159i, abs(-1i)), vec3<bool>(true, select(true, false, true), true)), ~u_input.a.x);
}

