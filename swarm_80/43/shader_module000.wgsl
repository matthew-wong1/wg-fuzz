struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: f32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<bool>;

var<private> global2: array<u32, 13>;

var<private> global3: Struct_1;

var<private> global4: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(true, false));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> i32 {
    global1 = vec2<bool>((global3.e.x & _wgslsmith_mod_u32(47770u << (global0.d.e.x % 32u), min(69064u, arg_2.e.x))) <= ~(~arg_0.e.x ^ global3.e.x), arg_1.a.x);
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-148f, 397f, 511f, global0.d.c))), vec4<f32>(global3.c, arg_1.c, 149f, arg_0.c))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1158f, global3.c, -1008f, 693f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1339f, arg_1.c, _wgslsmith_f_op_f32(round(-1112f)), _wgslsmith_f_op_f32(-arg_0.c)))), vec4<f32>(arg_2.c, global3.c, arg_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.c)) - -610f) + _wgslsmith_f_op_f32(trunc(global0.d.c)))));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(arg_3)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_1.zw, var_1.ww))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1793f * -1380f)))) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(step(global0.c, var_1.x)), arg_1.a.x)))), 598f, Struct_1(vec4<bool>(false, true, _wgslsmith_f_op_f32(-global3.c) <= _wgslsmith_f_op_f32(global3.c + -717f), true), vec3<bool>(false, arg_1.a.x, global0.b), -2212f, vec3<i32>(arg_2.d.x, global3.d.x, -2147483647i), global0.d.e));
    var var_2 = any(global0.d.b);
    return _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_clamp_vec3_i32(arg_0.d, global0.d.d, arg_1.d)), vec3<i32>(-40856i, 32475i, global3.d.x)), ~_wgslsmith_add_vec3_i32(arg_0.d, vec3<i32>(arg_0.d.x, -1i, 1i))) ^ arg_2.d.x;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-767f + global0.d.c) * _wgslsmith_f_op_f32(-global0.c)))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) + _wgslsmith_f_op_f32(-global3.c))), _wgslsmith_f_op_f32(global3.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(617f, arg_0, global1.x)))))));
    var var_1 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(256f * 229f)), _wgslsmith_f_op_f32(abs(global3.c))), vec2<f32>(1443f, var_0.x)), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1549f * -995f) * _wgslsmith_f_op_f32(-2260f - global3.c))), 1812f), global0.d);
    let var_2 = firstLeadingBit(max(vec4<i32>(func_3(Struct_1(global0.d.a, global0.d.a.zzz, var_1.c, global0.d.d, vec3<u32>(110266u, u_input.d.x, arg_1.x)), Struct_1(var_1.d.a, var_1.d.b, var_0.x, global0.d.d, u_input.a.yzz), Struct_1(vec4<bool>(global0.b, var_1.d.a.x, var_1.d.a.x, global1.x), vec3<bool>(true, false, true), var_0.x, vec3<i32>(1i, 1i, 2147483647i), u_input.a.xwz), var_0.zy), reverseBits(var_1.d.d.x), var_1.d.d.x, _wgslsmith_div_i32(8576i, arg_2)), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, 56568i, 1i, 6682i)), _wgslsmith_div_vec4_i32(vec4<i32>(global3.d.x, -2147483647i, -18213i, arg_2), vec4<i32>(2147483647i, -2147483647i, -1i, 1i))))) << (vec4<u32>(countOneBits(~(1u << (1u % 32u))), ~global0.d.e.x, global0.d.e.x, max(firstLeadingBit(reverseBits(8770u)), ~(~u_input.a.x))) % vec4<u32>(32u));
    let var_3 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(202f - 539f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 445f)) - _wgslsmith_f_op_f32(abs(var_0.x)))));
    global1 = global0.d.a.wx;
    return Struct_1(vec4<bool>(!(!(!global0.b)), any(vec4<bool>(!global0.b, var_1.d.b.x, u_input.d.x <= var_1.d.e.x, var_1.b && false)), false, any(global0.d.b)), select(var_1.d.a.xzy, select(var_1.d.a.yzz, select(!vec3<bool>(true, var_3, global1.x), !var_1.d.b, vec3<bool>(global3.a.x, var_3, global3.b.x)), !select(vec3<bool>(false, var_1.d.b.x, false), vec3<bool>(var_1.d.a.x, false, true), false)), !(!global0.d.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -856f) + _wgslsmith_div_f32(global0.c, _wgslsmith_div_f32(arg_0, var_1.c))))), ~countOneBits(vec3<i32>(-1i, _wgslsmith_clamp_i32(2147483647i, var_2.x, var_2.x), global3.d.x)), ~var_1.d.e);
}

fn func_1() -> vec4<bool> {
    global3 = func_2(global3.c, vec2<u32>(firstLeadingBit(global3.e.x), select(1u, 101260u, global3.a.x)), firstTrailingBit(-11299i));
    let var_0 = 1215f;
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-global0.a), global0.b && !all(!global3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.c, _wgslsmith_f_op_f32(f32(-1f) * -965f))) + -177f)), func_2(_wgslsmith_f_op_f32(exp2(global3.c)), reverseBits(global3.e.yy), 25584i));
    var var_1 = Struct_2(vec2<f32>(177f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.c + -678f), 813f)), _wgslsmith_f_op_f32(round(global0.c))))), false, global0.a.x, Struct_1(global3.a, global3.b, -1681f, _wgslsmith_mult_vec3_i32(min(firstLeadingBit(global3.d), vec3<i32>(62308i, 2147483647i, 2147483647i)), select(vec3<i32>(-1413i, 1i, global3.d.x) & vec3<i32>(-1i, -2147483647i, global0.d.d.x), global0.d.d, select(global0.d.b, vec3<bool>(global3.a.x, true, false), global0.b))), ~vec3<u32>(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(25245u, 13u)], 0u), _wgslsmith_dot_vec3_u32(global3.e, global3.e), ~17473u)));
    var var_2 = 843f;
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.x))), global3.e.xz, func_2(_wgslsmith_f_op_f32(floor(-903f)), vec2<u32>(0u, abs(14767u)), 1i).d.x ^ global3.d.x).a;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -715f), global0.c, _wgslsmith_div_f32(402f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - 407f))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.zx), arg_2.x, arg_0.c, Struct_1(select(global0.d.a, vec4<bool>(all(arg_0.a.wwz), global1.x, arg_3.x & false, true), arg_3.x && false), vec3<bool>(false, true, false), _wgslsmith_f_op_f32(f32(-1f) * -636f), ~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0.d, vec3<i32>(global0.d.d.x, 1i, 1i)), ~vec3<i32>(global3.d.x, global3.d.x, global0.d.d.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 14380u, ~global2[_wgslsmith_index_u32(global3.e.x, 13u)]), ~firstTrailingBit(vec3<u32>(3984u, 5356u, 1u)))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = arg_0.d.d.x;
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3.c, -307f)) - global0.c), _wgslsmith_f_op_f32(494f * _wgslsmith_f_op_f32(-arg_1.c)), arg_0.b)), _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, 1000f)))), true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1670f * _wgslsmith_f_op_f32(f32(-1f) * -1914f)), 1f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1444f * -634f), arg_0.a.x, ~4294967295u <= arg_1.e.x))), Struct_1(!arg_3.a, arg_1.a.wwy, _wgslsmith_f_op_f32(arg_3.c + 575f), global0.d.d << (arg_1.e % vec3<u32>(32u)), global0.d.e));
    var var_2 = vec2<bool>(arg_3.a.x, any(global0.d.b.xx));
    let var_3 = ~(max(max(vec2<u32>(1u, u_input.b), var_1.d.e.yx), _wgslsmith_add_vec2_u32(arg_2.zz, u_input.d)) | vec2<u32>(u_input.c << (1u % 32u), func_2(var_1.d.c, global3.e.zx, 2147483647i).e.x)) << (~firstTrailingBit(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 22884u), vec2<u32>(u_input.a.x, 1u))) % vec2<u32>(32u));
    var var_4 = func_4(func_2(_wgslsmith_f_op_f32(arg_1.c + arg_1.c), ~vec2<u32>(_wgslsmith_add_u32(29069u, var_3.x), arg_0.d.e.x), -global0.d.d.x), select(select(~(arg_0.d.e << (arg_2 % vec3<u32>(32u))), arg_3.e, false), ~(~global0.d.e), false), select(global3.a.yzw, global0.d.b, select(func_4(func_4(Struct_1(global0.d.a, var_1.d.a.xzy, arg_1.c, global0.d.d, arg_3.e), vec3<u32>(u_input.d.x, 8984u, var_1.d.e.x), vec3<bool>(true, arg_3.a.x, global1.x), vec3<bool>(global1.x, global3.b.x, global3.b.x)).d, func_2(arg_1.c, vec2<u32>(16346u, arg_0.d.e.x), -7303i).e, select(global0.d.a.yxw, global3.b, true), !var_1.d.b).d.b, vec3<bool>(all(vec3<bool>(var_1.d.a.x, true, global1.x)), false, var_2.x), vec3<bool>(func_4(global0.d, vec3<u32>(global2[_wgslsmith_index_u32(arg_0.d.e.x, 13u)], 4294967295u, 1u), global3.b, global0.d.b).d.a.x, func_2(-1000f, vec2<u32>(global2[_wgslsmith_index_u32(0u, 13u)], var_3.x), arg_1.d.x).b.x, false))), arg_0.d.b).a;
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = vec3<i32>(-arg_0.d.d.x, 67114i, 2147483647i);
    global1 = vec2<bool>(all(vec3<bool>(true, func_4(Struct_1(global0.d.a, arg_0.d.b, 1155f, global3.d, vec3<u32>(4294967295u, 650u, arg_1.d.e.x)), abs(global0.d.e), !arg_1.d.a.xyw, vec3<bool>(arg_1.b, true, false)).b, any(global0.d.a))), arg_2.x);
    let var_1 = arg_1.d;
    return Struct_1(vec4<bool>(!all(vec3<bool>(false, false, global0.d.b.x)), global0.d.b.x, true & !all(var_1.a), arg_1.b), arg_2.ywx, -814f, _wgslsmith_div_vec3_i32(global3.d, vec3<i32>(_wgslsmith_dot_vec3_i32(arg_0.d.d, _wgslsmith_div_vec3_i32(vec3<i32>(-7825i, 12092i, arg_1.d.d.x), vec3<i32>(-1i, 1i, arg_0.d.d.x))), var_0.x, arg_0.d.d.x)), ~countOneBits(_wgslsmith_sub_vec3_u32(u_input.a.ywy, ~vec3<u32>(arg_1.d.e.x, arg_0.d.e.x, var_1.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(vec4<bool>(true, !global1.x, any(vec3<bool>(all(global3.a), global0.b, false)), !(!global3.b.x)), !select(vec3<bool>(global3.d.x >= 59477i, any(global4[_wgslsmith_index_u32(global0.d.e.x, 1u)]), false), select(vec3<bool>(global1.x, global0.b, false), !vec3<bool>(global3.b.x, global3.b.x, false), !global1.x), select(global3.a.wwz, global3.b, select(vec3<bool>(false, global0.b, global1.x), vec3<bool>(global3.b.x, global0.d.b.x, true), vec3<bool>(false, true, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.c - -803f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.c)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.c)) * global0.a.x))), global0.d.d, ~(~global0.d.e));
    global1 = vec2<bool>(!global0.b, global1.x);
    global3 = func_6(func_5(func_4(Struct_1(func_1(), !vec3<bool>(global1.x, global3.b.x, global1.x), global3.c, global3.d, _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(u_input.c, 16562u, global3.e.x))), select(vec3<u32>(global0.d.e.x, global2[_wgslsmith_index_u32(global3.e.x, 13u)], 0u), global0.d.e, global0.d.b) << (vec3<u32>(global3.e.x, u_input.b, 1u) % vec3<u32>(32u)), global3.a.xwz, vec3<bool>(!global1.x, global1.x && global1.x, any(vec2<bool>(global1.x, false)))), func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(814f + -198f))), abs(global0.d.e.yx), global0.d.d.x), min(vec3<u32>(global0.d.e.x, u_input.b, u_input.c >> (global0.d.e.x % 32u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global3.e.x, u_input.d.x, global2[_wgslsmith_index_u32(72209u, 13u)]), vec3<u32>(18331u, 48498u, 10698u))), func_4(global0.d, vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(1u, 13u)], global0.d.e.x), func_2(_wgslsmith_f_op_f32(max(-596f, global0.a.x)), vec2<u32>(global0.d.e.x, 9596u), ~(-2147483647i)).b, vec3<bool>(global0.b, !global1.x, global3.a.x)).d), func_5(func_4(global0.d, vec3<u32>(firstLeadingBit(global2[_wgslsmith_index_u32(73462u, 13u)]), ~global3.e.x, ~global2[_wgslsmith_index_u32(4294967295u, 13u)]), func_1().xxy, vec3<bool>(global0.d.a.x, false, global0.d.a.x)), Struct_1(vec4<bool>(74492u >= global0.d.e.x, true != global1.x, func_4(global0.d, global3.e, vec3<bool>(true, false, global0.b), global3.a.wxy).d.a.x, true), func_5(func_5(Struct_2(vec2<f32>(1009f, global0.d.c), global0.b, 814f, global0.d), global0.d, vec3<u32>(4294967295u, 59927u, 4294967295u), global0.d), Struct_1(global0.d.a, vec3<bool>(true, global0.d.a.x, global3.b.x), 1730f, vec3<i32>(-1i, global3.d.x, global3.d.x), vec3<u32>(global0.d.e.x, 36069u, 5006u)), ~global3.e, Struct_1(vec4<bool>(false, false, global0.d.a.x, true), global0.d.a.xyz, global3.c, vec3<i32>(global3.d.x, global0.d.d.x, -12328i), vec3<u32>(4294967295u, global3.e.x, 29814u))).d.a.yxz, 156f, global0.d.d, vec3<u32>(4294967295u, 0u, global0.d.e.x) >> (~vec3<u32>(global3.e.x, global0.d.e.x, global0.d.e.x) % vec3<u32>(32u))), vec3<u32>(43705u, max(0u, global2[_wgslsmith_index_u32(~global0.d.e.x, 13u)]), ~(~global3.e.x)), Struct_1(vec4<bool>(any(vec3<bool>(global1.x, false, global1.x)), true, false, global0.b), global3.b, global3.c, select(vec3<i32>(global3.d.x, global0.d.d.x, 30178i), countOneBits(global3.d), true), func_5(Struct_2(global0.a, global1.x, global0.c, Struct_1(vec4<bool>(true, false, global3.a.x, false), vec3<bool>(global0.d.b.x, global0.b, true), 2668f, vec3<i32>(1i, -22888i, 63989i), u_input.a.yzw)), global0.d, vec3<u32>(u_input.c, global3.e.x, global3.e.x) | u_input.a.xwx, Struct_1(vec4<bool>(global1.x, global3.a.x, false, true), vec3<bool>(false, global0.d.a.x, global3.b.x), 657f, vec3<i32>(global0.d.d.x, global0.d.d.x, 6870i), u_input.a.zzx)).d.e)), select(func_1(), global3.a, !vec4<bool>(true, func_4(global0.d, u_input.a.wyx, vec3<bool>(false, global1.x, true), global3.b).b, true, !global0.d.b.x)));
    let var_0 = abs(18067i);
    global4 = array<vec2<bool>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(func_4(Struct_1(vec4<bool>(global1.x, global0.d.a.x, true, true), vec3<bool>(false, global3.b.x, false), global0.c, vec3<i32>(-17207i, var_0, -27157i), u_input.a.wzz), vec3<u32>(52002u, global2[_wgslsmith_index_u32(4294967295u, 13u)], global0.d.e.x), vec3<bool>(global3.a.x, global3.b.x, global3.b.x), global0.d.b).c)), _wgslsmith_f_op_f32(f32(-1f) * -916f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(839f, -131f), _wgslsmith_f_op_f32(global3.c + 354f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.c) - _wgslsmith_f_op_f32(global3.c - 1000f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(2267f, global0.a.x, global0.a.x, 1770f), vec4<f32>(global3.c, global3.c, global0.d.c, -739f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c, global3.c, 375f, 1505f))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(901f, -1604f, global3.c, -720f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-807f, -1000f, global0.c, global0.a.x), vec4<f32>(-782f, 761f, global0.a.x, global3.c))))))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global3.c, 1263f)))), _wgslsmith_add_vec3_u32(u_input.a.zzy, global0.d.e));
}

