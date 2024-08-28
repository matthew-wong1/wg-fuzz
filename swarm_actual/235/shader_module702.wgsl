struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30>;

var<private> global1: array<bool, 17>;

var<private> global2: vec2<f32>;

var<private> global3: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_4 {
    var var_0 = u_input.a.x;
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(round(-321f));
    var var_3 = ~_wgslsmith_mod_u32(firstTrailingBit(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(4294967295u, 70788u, 0u))));
    var_0 = -2147483647i;
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(max(~_wgslsmith_dot_vec4_u32(vec4<u32>(84171u, 4294967295u, 40554u, 60266u), vec4<u32>(1u, 1u, 1u, 1u)), reverseBits(1u)), 48624u), 30u)];
}

fn func_3(arg_0: i32, arg_1: f32) -> vec2<bool> {
    let var_0 = vec4<bool>(!global1[_wgslsmith_index_u32(max(~0u, 4294967295u), 17u)] | true, !(!global1[_wgslsmith_index_u32(~abs(1u), 17u)]), false, true);
    let var_1 = global2.x;
    var var_2 = vec4<u32>(~_wgslsmith_add_u32(1u, _wgslsmith_div_u32(~0u, reverseBits(1u))), 51372u, ~(~_wgslsmith_clamp_u32(1u, 12744u, 1u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(4294967295u), 1u), ~vec2<u32>(4979u, 27322u)));
    var var_3 = u_input.a;
    var_2 = vec4<u32>(0u, _wgslsmith_dot_vec3_u32(var_2.xxx << (~vec3<u32>(var_2.x, 6371u, 51533u) % vec3<u32>(32u)), var_2.xxy), 4294967295u, var_2.x);
    return vec2<bool>(var_0.x, var_2.x < 1u);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.b.x) - arg_1.b.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1033f)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1705f)) + global2.x);
    let var_2 = func_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1886f, 1000f, -803f) + vec4<f32>(-193f, arg_2.x, 1528f, 893f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-854f, arg_2.x, global3.b.b.x, global3.b.b.x), vec4<f32>(-1000f, arg_3.b.x, -891f, -479f), vec4<bool>(arg_0.x, arg_0.x, false, true))))))))).a;
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(672f, 1f));
    var var_3 = _wgslsmith_f_op_vec3_f32(-var_2.a.b.b);
    return _wgslsmith_f_op_vec2_f32(-var_3.yy);
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: f32) -> Struct_4 {
    global0 = array<Struct_4, 30>();
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.b.b.zz * _wgslsmith_f_op_vec2_f32(func_4(func_3(abs(u_input.a.x), 136f), Struct_2(abs(vec4<i32>(arg_0.b.a, arg_0.a.a.b.a, 37407i, 2147483647i)), Struct_1(-10667i, global3.b.b)), arg_0.b.b, arg_0.b))));
    return func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-292f, arg_0.a.a.b.b.x, arg_2, -330f), vec4<f32>(261f, 877f, global3.b.b.x, 1508f))), vec4<f32>(global3.b.b.x, 2714f, -1000f, 1000f), !global1[_wgslsmith_index_u32(1u, 17u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1044f, arg_2, -1059f, arg_0.b.b.x)), all(func_3(2147483647i, global3.b.b.x))))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_2 {
    let var_0 = func_3(-26788i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_4(arg_3.a.b.yz, Struct_2(arg_3.a.a.a, Struct_1(u_input.a.x, vec3<f32>(1226f, arg_1.b.b.x, global2.x))), global3.b.b, Struct_1(arg_3.a.a.a.x, arg_1.b.b))).x, 734f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global3.b.b.x, -1000f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.b.x - global2.x), -222f))))).x;
    let var_1 = Struct_2(arg_3.a.a.a, Struct_1(abs(countOneBits(-5277i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.a.a.b.b)))));
    let var_2 = max(firstTrailingBit(global3.a.xzz | ~u_input.c.xzx), ~max(firstLeadingBit(global3.a.zyy) << (arg_3.c % vec3<u32>(32u)), vec3<i32>(-global3.b.a, max(arg_3.a.a.b.a, 1i), ~var_1.b.a)));
    global1 = array<bool, 17>();
    global1 = array<bool, 17>();
    return Struct_2(firstLeadingBit(-vec4<i32>(abs(-2147483647i), arg_1.a.x, ~arg_3.b.a, func_2(Struct_4(arg_3.a, Struct_1(arg_1.a.x, var_1.b.b), arg_3.c), arg_2.x, 418f).b.a)), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~4294967295u), 1u >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 17579u, 0u)) % 32u)), 30u)];
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global3.b.b.x))));
    let var_2 = Struct_3(func_5(vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_0.c.x, 0u), 17u)], _wgslsmith_f_op_f32(abs(global3.b.b.x)) < _wgslsmith_f_op_f32(174f * 1147f)), Struct_2(vec4<i32>(global3.a.x, _wgslsmith_clamp_i32(u_input.a.x, -11619i, -1i), u_input.a.x, var_0.b.a & 6637i), Struct_1(max(var_0.a.a.b.a, 1i), var_0.b.b)), vec2<u32>(~var_0.c.x, var_0.c.x), func_2(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.b.b.x, 1665f, 795f, -726f))), 1u, _wgslsmith_f_op_f32(f32(-1f) * -1662f))), !vec3<bool>(global1[_wgslsmith_index_u32(var_0.c.x, 17u)] & (global3.b.a > -73461i), false, global1[_wgslsmith_index_u32(0u, 17u)]));
    let var_3 = 296f;
    var var_4 = func_5(var_2.b.zy, func_5(select(!vec2<bool>(global1[_wgslsmith_index_u32(var_0.c.x, 17u)], var_0.a.b.x), !var_2.b.zy, 0u <= ~var_0.c.x), func_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3, -1035f, var_0.b.b.x, var_2.a.b.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 683f, 804f, 1215f))))).a.a, reverseBits(countOneBits(var_0.c.xx)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.c.x, countOneBits(0u), abs(_wgslsmith_sub_u32(var_0.c.x, var_0.c.x))), 30u)]), var_0.c.zy, global0[_wgslsmith_index_u32(~var_0.c.x, 30u)]).a.yw;
    let var_5 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-func_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(var_0.c.x), ~13193u), 30u)], select(1u, ~49273u, !var_0.a.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_2.a.b.b.x))))).a.a.b.b.x)));
    global3 = Struct_2(vec4<i32>(var_2.a.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(var_2.a.b.a), reverseBits(2147483647i)), vec2<i32>(12370i, abs(1i))), var_0.a.a.a.x, var_2.a.a.x), func_2(global0[_wgslsmith_index_u32(4294967295u, 30u)], 4294967295u, -838f).b);
    var var_6 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1398f, -472f, -159f, global3.b.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-295f, 822f, 838f, 648f)))).b.b.zx - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global3.b.b.xx + global3.b.b.zx), vec2<f32>(var_2.a.b.b.x, var_2.a.b.b.x))), vec2<f32>(func_5(vec2<bool>(false, false), var_2.a, vec2<u32>(var_0.c.x, 36187u), global0[_wgslsmith_index_u32(28163u, 30u)]).b.b.x, func_2(Struct_4(Struct_3(var_2.a, var_0.a.b), Struct_1(var_0.a.a.b.a, global3.b.b), var_0.c), 1u, -118f).b.b.x)))), _wgslsmith_sub_i32(-func_2(Struct_4(Struct_3(Struct_2(vec4<i32>(global3.b.a, -24819i, -2640i, -1i), Struct_1(6935i, var_0.a.a.b.b)), var_0.a.b), global3.b, vec3<u32>(var_0.c.x, var_6.x, var_6.x)), var_6.x, _wgslsmith_f_op_f32(trunc(-302f))).a.a.a.x, var_2.a.b.a), _wgslsmith_f_op_vec2_f32(func_4(func_1(vec4<f32>(_wgslsmith_div_f32(1612f, 465f), 745f, _wgslsmith_f_op_f32(-1000f - global3.b.b.x), _wgslsmith_f_op_f32(max(-116f, 1231f)))).a.b.yx, var_2.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(func_1(vec4<f32>(171f, 997f, 1296f, -1142f)).a.a.b.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.b.x, var_2.a.b.b.x, var_1)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.b.b.x, var_3, var_2.a.b.b.x))))), Struct_1(_wgslsmith_add_i32(_wgslsmith_mult_i32(var_4.x, var_0.a.a.a.x), 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_2.a.b.b)) * _wgslsmith_f_op_vec3_f32(abs(var_0.a.a.b.b)))))).x, var_0.a.a.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.b) * _wgslsmith_f_op_vec3_f32(max(var_2.a.b.b, global3.b.b))))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_2.a.b.b.x)), -2041f)), _wgslsmith_f_op_f32(-1055f * func_2(Struct_4(var_0.a, Struct_1(2147483647i, vec3<f32>(global3.b.b.x, var_5, -737f)), var_0.c), 97164u, -1639f).a.a.b.b.x))));
}

