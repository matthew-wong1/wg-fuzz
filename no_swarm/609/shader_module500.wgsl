struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(722f, -624f, 1690f, 169f, 550f, 296f, -1071f, -2331f, -301f, 902f, 321f, 862f, 527f, -928f, -392f, -562f, 1044f, -2183f, 1546f, -957f, 2062f, -830f, 546f);

var<private> global1: i32;

var<private> global2: array<Struct_4, 30>;

var<private> global3: f32;

var<private> global4: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_4) -> f32 {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-907f + arg_2.c.a.a)))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(815f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], arg_2.a.e.x)))));
    var var_0 = arg_2.c.b.zy;
    global0 = array<f32, 23>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(462f)), arg_2.a.e.x, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.a.e.x + _wgslsmith_div_f32(849f, -337f))))) + var_0.x);
    let var_2 = arg_2.c;
    return 832f;
}

fn func_2() -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(17251u, 1u), 23u)] - _wgslsmith_f_op_f32(func_3(vec4<i32>(17930i, -2147483647i, -10663i, -1i), u_input.a.x, global2[_wgslsmith_index_u32(~u_input.a.x, 30u)]))), 0i), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-712f * _wgslsmith_f_op_f32(189f + 746f)), global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(firstLeadingBit(u_input.a.x)), 23u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a.x, 23u)])) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)] + -1643f)) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~1u, 23u)]))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1026f, -815f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)])) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], 830f, 1871f, -971f), vec4<f32>(-108f, -1780f, global0[_wgslsmith_index_u32(1u, 23u)], 786f), vec4<bool>(false, true, false, true)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 389f, var_0.a.a, global0[_wgslsmith_index_u32(44560u, 23u)]) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(513f, -120f, -896f, var_0.b.x)))))));
    let var_2 = ~reverseBits(min(firstLeadingBit(u_input.a), ~vec4<u32>(63803u, 41823u, u_input.a.x, 4294967295u)));
    let var_3 = var_1.xwx;
    var var_4 = abs(var_0.a.b);
    return 1383u;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_2 {
    let var_0 = arg_3;
    global2 = array<Struct_4, 30>();
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1155f, global0[_wgslsmith_index_u32(62619u, 23u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -904f)))), _wgslsmith_f_op_f32(max(-107f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1162f) - _wgslsmith_div_f32(arg_3.a.e.x, 704f))))), 1i);
    var var_2 = arg_0;
    let var_3 = select(select(select(select(global4[_wgslsmith_index_u32(1685u, 22u)], global4[_wgslsmith_index_u32(u_input.a.x | 10397u, 22u)], false), global4[_wgslsmith_index_u32(u_input.a.x, 22u)], !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), global4[_wgslsmith_index_u32(52229u, 22u)], true), !select(global4[_wgslsmith_index_u32(31164u, 22u)], vec3<bool>(2434f > var_0.c.a.a, true, true), any(vec3<bool>(true, true, true))), !any(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))));
    return Struct_2(var_1, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1.a, 615f), -365f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 23u)] - 1000f))))));
}

fn func_1(arg_0: Struct_4) -> vec4<f32> {
    global0 = array<f32, 23>();
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_0.a.b))) + arg_0.a.b)));
    let var_1 = func_4(u_input.a | vec4<u32>(1u, ~func_2(), 10946u, 48827u), min(vec2<i32>(-arg_0.c.a.b, reverseBits(arg_0.a.a.x)), -arg_0.a.a.wx) & arg_0.a.a.zx, ~select(firstLeadingBit(~vec2<u32>(4294967295u, 1u)), abs(vec2<u32>(0u, 62170u)), arg_0.a.a.x == 1i), arg_0);
    var var_2 = arg_0.a.a;
    global3 = _wgslsmith_f_op_f32(var_1.b.x * -605f);
    return _wgslsmith_f_op_vec4_f32(min(arg_0.a.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1176f) - _wgslsmith_f_op_f32(min(1285f, -558f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a + 1117f)), _wgslsmith_f_op_f32(exp2(arg_0.a.b.x)), 268f) + var_0)));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    global0 = array<f32, 23>();
    global3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -225f), func_4(countOneBits(~u_input.a), firstTrailingBit(~arg_0.a.yy), _wgslsmith_sub_vec2_u32(~u_input.a.zz, select(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, arg_0.d), false)), Struct_4(Struct_3(vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, -6164i), arg_0.b, 4294967295u, 4294967295u, vec3<f32>(-262f, arg_0.e.x, arg_0.e.x)), arg_0.a.yww, Struct_2(Struct_1(arg_0.b.x, arg_0.a.x), vec3<f32>(global0[_wgslsmith_index_u32(arg_0.d, 23u)], global0[_wgslsmith_index_u32(21250u, 23u)], arg_0.b.x)))).a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(arg_0.c), arg_0.d), 23u)] * 660f) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, max(38653u, 4294967295u), u_input.a.x), 23u)]))));
    global1 = 1i;
    let var_0 = -55357i;
    var var_1 = arg_0;
    return func_4(vec4<u32>(arg_0.d, 12932u, ~14253u, var_1.c), vec2<i32>(_wgslsmith_add_i32(firstTrailingBit(var_0), 2147483647i) & reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-4873i, var_1.a.x), vec2<i32>(var_0, -30537i))), arg_0.a.x), firstLeadingBit(~_wgslsmith_div_vec2_u32(u_input.a.xw, u_input.a.zw) & u_input.a.yw), global2[_wgslsmith_index_u32(~arg_0.d, 30u)]).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(~(u_input.a.x >> (u_input.a.x % 32u))), 23u)] * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f)))));
    var var_1 = func_5(Struct_3(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-1i, 1i, 1i, -31638i)), reverseBits(vec4<i32>(28762i, 33196i, 1i, -42401i) << (vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 23u)], 726f, 184f, global0[_wgslsmith_index_u32(4294967295u, 23u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(global2[_wgslsmith_index_u32(u_input.a.x, 30u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(995f, -1291f, 537f, 2043f)))), ~u_input.a.x, ~_wgslsmith_clamp_u32(min(u_input.a.x, 6925u), _wgslsmith_clamp_u32(u_input.a.x, 24435u, u_input.a.x), 4294967295u), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], -1464f), _wgslsmith_f_op_f32(-650f * -194f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], -118f, global0[_wgslsmith_index_u32(9322u, 23u)])))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-198f, 846f, -1119f, _wgslsmith_f_op_vec4_f32(func_1(Struct_4(Struct_3(vec4<i32>(var_1.b, var_1.b, 29673i, var_1.b), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 985f, 1325f, global0[_wgslsmith_index_u32(1u, 23u)]), 50194u, u_input.a.x, vec3<f32>(811f, global0[_wgslsmith_index_u32(4294967295u, 23u)], var_1.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.b, var_1.b, var_1.b), vec3<i32>(var_1.b, -2147483647i, var_1.b)), func_4(vec4<u32>(64199u, 19166u, 106293u, 12127u), vec2<i32>(-19939i, 1i), u_input.a.yx, Struct_4(Struct_3(vec4<i32>(var_1.b, 10660i, 46899i, -32374i), vec4<f32>(-395f, var_1.a, global0[_wgslsmith_index_u32(57951u, 23u)], -1527f), u_input.a.x, 96026u, vec3<f32>(-398f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], var_1.a)), vec3<i32>(var_1.b, 2147483647i, var_1.b), Struct_2(Struct_1(-811f, var_1.b), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], var_1.a, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]))))))).x) + vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), 298f, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~0u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), u_input.a), _wgslsmith_div_u32(0u, 4294967295u)), 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -956f))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1647f)) + 2032f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-243f, -341f), global0[_wgslsmith_index_u32(max(17600u, u_input.a.x), 23u)]))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_2.x) + var_2.xy)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1111f, -315f)))));
    global3 = _wgslsmith_f_op_f32(-var_3.x);
    let var_4 = Struct_1(-266f, ~(-29508i));
    var var_5 = var_4;
    var var_6 = _wgslsmith_f_op_f32(ceil(1344f));
    let var_7 = _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~u_input.a.ywx), ~19280u), ~(~(_wgslsmith_add_vec3_u32(u_input.a.wwx, vec3<u32>(u_input.a.x, 4294967295u, 4294967295u)) & u_input.a.xyw)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b >> (_wgslsmith_sub_u32(u_input.a.x, abs(~u_input.a.x)) % 32u), u_input.a.zw, _wgslsmith_f_op_vec4_f32(func_1(Struct_4(Struct_3(~vec4<i32>(0i, var_5.b, 1i, 44154i), var_2, 0u, ~4294967295u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.a, 306f, global0[_wgslsmith_index_u32(1u, 23u)]))), ~(~vec3<i32>(var_1.b, 1i, var_5.b)), func_4(u_input.a, vec2<i32>(2567i, 17978i), abs(vec2<u32>(1u, var_7.x)), Struct_4(Struct_3(vec4<i32>(-3543i, var_5.b, 2147483647i, var_1.b), vec4<f32>(-429f, var_4.a, var_3.x, var_1.a), var_7.x, 35136u, var_2.zyz), vec3<i32>(var_1.b, -2147483647i, var_5.b), Struct_2(var_4, vec3<f32>(var_1.a, -266f, -1000f))))))).x);
}

