struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: f32 = 572f;

var<private> global2: i32;

var<private> global3: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(1538f, -1000f, -708f), vec3<f32>(1087f, -681f, 628f), vec3<f32>(-1030f, -295f, -1322f), vec3<f32>(435f, -613f, -291f), vec3<f32>(1275f, -1640f, -532f), vec3<f32>(273f, 383f, -906f), vec3<f32>(1459f, 616f, -1200f), vec3<f32>(-432f, -365f, 323f), vec3<f32>(-1560f, 792f, -856f), vec3<f32>(-1878f, 475f, -821f), vec3<f32>(259f, 1000f, 1213f), vec3<f32>(1345f, 177f, -706f), vec3<f32>(849f, -907f, 453f), vec3<f32>(719f, 1377f, -1365f), vec3<f32>(482f, 629f, 2062f), vec3<f32>(-716f, -605f, 216f));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> f32 {
    var var_0 = arg_0.a;
    var var_1 = ~min(select(vec4<u32>(arg_0.b.a.x, 49383u, 4294967295u, 0u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.a.x, 81220u, global0.a), vec3<u32>(55500u, global0.b.a.x, 78583u)), _wgslsmith_div_u32(7504u, 4294967295u), firstLeadingBit(arg_0.b.a.x), 65228u << (1u % 32u)), arg_0.a), ~firstTrailingBit(~vec4<u32>(global0.b.a.x, arg_0.c.a.x, global0.b.a.x, arg_0.c.a.x)));
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.xxw, min(max(u_input.a.zxx, ~vec3<i32>(global0.b.b.x, 2147483647i, -1i)), select(~global0.b.b, u_input.a.ywx ^ arg_0.b.b, !arg_0.a.wyw))), vec3<i32>(arg_2, ~(_wgslsmith_clamp_i32(arg_0.c.b.x, -12238i, arg_2) ^ _wgslsmith_dot_vec3_i32(arg_0.b.b, vec3<i32>(u_input.a.x, arg_0.c.b.x, global0.b.b.x))), ~(-27120i)));
    let var_3 = Struct_3(~global0.b.a.x, arg_0.b);
    var var_4 = vec4<i32>(u_input.a.x, select(arg_2, _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a.x, -2147483647i, global0.b.b.x) >> (var_1.wxw % vec3<u32>(32u)), vec3<i32>(arg_2, arg_0.b.b.x, -2147483647i), !arg_0.a.zwx), vec3<i32>(1i, 2147483647i, var_2)), var_0.x), 1i, -9557i);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1766f * arg_1))), -682f));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>) -> u32 {
    global2 = reverseBits(2147483647i);
    global1 = -946f;
    let var_0 = -(~firstTrailingBit(-global0.b.b.x));
    let var_1 = ~_wgslsmith_add_vec4_i32(~vec4<i32>(~var_0, firstLeadingBit(u_input.a.x), 2332i, 2147483647i), vec4<i32>(35596i, global0.b.b.x, ~(-var_0), (0i & u_input.a.x) << (44368u % 32u)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1772f, _wgslsmith_f_op_f32(func_3(Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec2<u32>(0u, arg_1.x), var_1.wxw), Struct_1(vec2<u32>(arg_1.x, arg_1.x), u_input.a.yyy)), arg_0, 7949i)), true))))));
    return 28163u;
}

fn func_2() -> vec3<f32> {
    global1 = -1000f;
    var var_0 = global0.b.b.x;
    var var_1 = vec3<i32>(global0.b.b.x, 17272i, -4633i);
    let var_2 = Struct_3(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-957f, _wgslsmith_f_op_f32(sign(-2193f)))) - _wgslsmith_f_op_f32(func_3(Struct_2(vec4<bool>(true, true, true, true), global0.b, Struct_1(vec2<u32>(global0.a, 4294967295u), global0.b.b)), _wgslsmith_f_op_f32(-1452f + -1527f), ~var_1.x))), ~abs(vec2<u32>(global0.a, 29734u))), Struct_1(min(max(global0.b.a, global0.b.a), ~global0.b.a >> (_wgslsmith_sub_vec2_u32(vec2<u32>(global0.b.a.x, global0.a), vec2<u32>(23740u, global0.b.a.x)) % vec2<u32>(32u))), vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, var_1.x) | _wgslsmith_sub_i32(global0.b.b.x, 49933i), 2147483647i, ~select(2147483647i, u_input.a.x, true))));
    let var_3 = 2147483647i;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1204f, -356f, 666f) - vec3<f32>(148f, 1474f, -570f)) + _wgslsmith_f_op_vec3_f32(exp2(global3[_wgslsmith_index_u32(var_2.a, 16u)])))) * global3[_wgslsmith_index_u32(4294967295u, 16u)]) - vec3<f32>(_wgslsmith_f_op_f32(ceil(-1818f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -197f), _wgslsmith_f_op_f32(-998f * _wgslsmith_f_op_f32(floor(-995f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1073f - 196f))));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_3(4294967295u, Struct_1(~reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(56857u, global0.b.a.x), vec2<u32>(global0.b.a.x, 1u))), select(firstLeadingBit(_wgslsmith_div_vec3_i32(arg_0.wzw, vec3<i32>(-11145i, -2196i, 2147483647i))), abs(u_input.a.zwy), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true)))));
    return Struct_2(vec4<bool>(!any(vec3<bool>(false, false, true)) || !(global0.a == 14826u), true & (_wgslsmith_f_op_f32(abs(arg_1.x)) < _wgslsmith_f_op_f32(1000f * 285f)), all(vec4<bool>(true, false, true, true)), true), global0.b, Struct_1(countOneBits(vec2<u32>(_wgslsmith_add_u32(4294967295u, arg_2.x), var_0.a)), var_0.b.b));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = abs(global0.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(global3[_wgslsmith_index_u32(41855u, 16u)])), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, arg_3.x, arg_3.x) * global3[_wgslsmith_index_u32(global0.a, 16u)]), _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.x, -1000f, -577f), vec3<f32>(770f, -1911f, 1000f)))))))));
    let var_2 = Struct_3(35004u, Struct_1(global0.b.a, vec3<i32>(~(-2032i), 10014i, arg_0.c.b.x | global0.b.b.x)));
    var_0 = arg_1.x;
    let var_3 = ~(~(~(-var_2.b.b & max(vec3<i32>(0i, 0i, arg_0.b.b.x), arg_0.b.b))));
    return Struct_2(arg_2.a, Struct_1(~arg_0.c.a, var_3), Struct_1(~var_2.b.a, vec3<i32>(reverseBits(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), var_3.x, firstTrailingBit(59134i))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_6(func_5(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.b.b.x, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, 42410i, 51709i))), abs(vec4<i32>(u_input.a.x, global0.b.b.x, u_input.a.x, global0.b.b.x))), _wgslsmith_f_op_vec3_f32(func_2()), ~vec4<u32>(~global0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, global0.a, global0.b.a.x, global0.a), vec4<u32>(global0.a, global0.a, global0.a, global0.a)), global0.b.a.x, _wgslsmith_sub_u32(0u, 0u))), ~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(46745u, global0.a, 0u, 21079u), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.a, global0.b.a.x, global0.b.a.x, global0.b.a.x), vec4<u32>(global0.a, global0.b.a.x, global0.b.a.x, 29481u)), _wgslsmith_add_vec4_u32(vec4<u32>(34900u, global0.a, global0.b.a.x, global0.a), vec4<u32>(0u, 0u, global0.b.a.x, 0u)))), func_5(u_input.a, _wgslsmith_f_op_vec3_f32(func_2()), firstTrailingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 71597u, global0.b.a.x, 1u), vec4<u32>(global0.b.a.x, global0.a, 0u, global0.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-404f + 948f)), -1028f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-531f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -129f), _wgslsmith_f_op_f32(trunc(-371f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 893f, 641f, 1119f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(357f, -522f, -210f, -1460f) + vec4<f32>(-1119f, -748f, -841f, -326f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -556f, -1000f, -763f))))))));
    let var_1 = Struct_2(!var_0.a, Struct_1(func_5(-vec4<i32>(var_0.b.b.x, u_input.a.x, u_input.a.x, 0i), _wgslsmith_f_op_vec3_f32(vec3<f32>(1400f, -738f, -502f) * global3[_wgslsmith_index_u32(var_0.c.a.x, 16u)]), ~vec4<u32>(var_0.b.a.x, 7303u, 4294967295u, 4294967295u)).c.a << (vec2<u32>(_wgslsmith_sub_u32(0u, var_0.b.a.x), ~global0.b.a.x) % vec2<u32>(32u)), ~(-vec3<i32>(-5318i, 0i, global0.b.b.x))), Struct_1(global0.b.a, ~vec3<i32>(min(var_0.c.b.x, -2147483647i), var_0.c.b.x, ~(-7693i))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-903f)), _wgslsmith_f_op_f32(-1311f - _wgslsmith_f_op_f32(f32(-1f) * -229f)))) * vec2<f32>(208f, _wgslsmith_f_op_f32(trunc(-1412f))));
    let var_3 = ~select(vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.c.a.x, 1u, var_1.b.a.x), vec3<u32>(var_1.c.a.x, var_0.b.a.x, 5703u)), ~vec3<u32>(0u, 0u, 2052u)), 19535u), _wgslsmith_add_vec3_u32(~(~vec3<u32>(var_1.b.a.x, 85690u, 4294967295u)), ~(~vec3<u32>(var_1.b.a.x, 19082u, var_0.c.a.x))), true);
    var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(f32(-1f) * -115f)), var_2.x))) + vec2<f32>(var_2.x, var_2.x));
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<f32>, 16>();
    global0 = Struct_3(_wgslsmith_dot_vec2_u32(global0.b.a, abs(select(abs(global0.b.a), ~vec2<u32>(global0.b.a.x, 62132u), vec2<bool>(true, true)))), func_1());
    let var_0 = 22372i;
    var var_1 = global0.b.b.x;
    let var_2 = ~_wgslsmith_add_vec3_i32(func_5(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a), global3[_wgslsmith_index_u32(global0.a, 16u)], _wgslsmith_mult_vec4_u32(vec4<u32>(11064u, global0.a, 18962u, global0.a), vec4<u32>(global0.a, 20950u, 88755u, 13542u)) | vec4<u32>(2277u, global0.b.a.x, global0.a, global0.b.a.x)).c.b, _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(25134i, u_input.a.x, 0i), firstTrailingBit(vec3<i32>(2147483647i, 2147483647i, 42777i))), u_input.a.xxy));
    var var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-860f, -900f))), -1246f), 23494u, u_input.a, -454f);
}

