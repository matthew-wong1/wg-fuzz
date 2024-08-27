struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(true, false, false, true, false, false, true, true, true, true, true, false, true, false, true, false, false, false);

var<private> global1: Struct_2 = Struct_2(Struct_1(-1168f, false, 0u, vec2<i32>(i32(-2147483648), 0i), vec4<bool>(false, true, true, false)), -332f, Struct_1(1000f, false, 0u, vec2<i32>(-8832i, -4739i), vec4<bool>(true, false, false, true)), Struct_1(857f, false, 1u, vec2<i32>(-35409i, 15591i), vec4<bool>(true, true, false, false)));

var<private> global2: array<f32, 1>;

var<private> global3: bool = true;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> i32 {
    let var_0 = Struct_3(Struct_2(arg_0, _wgslsmith_f_op_f32(global1.d.a + -853f), arg_0, arg_0), ~(~vec4<i32>(~(-1i), 1i, arg_0.d.x << (4294967295u % 32u), ~arg_1.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.a, _wgslsmith_div_f32(-392f, var_0.a.a.a), _wgslsmith_f_op_f32(round(-1000f))));
    var_1 = vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.c.a, _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(-928f * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(38880u, 1u)] * 685f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(global1.b, -760f)))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1037f * -1000f) * _wgslsmith_f_op_f32(var_0.a.a.a * -1409f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.c.a, -1877f))), all(select(vec2<bool>(var_0.a.a.b, false), global1.d.e.zw, global1.c.b)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a))))), all(vec2<bool>(all(global1.d.e), global1.a.b)), arg_0.c, ~max(~arg_0.d, abs(var_0.b.zz >> (vec2<u32>(9303u, 1u) % vec2<u32>(32u)))), !arg_0.e);
    var var_3 = vec3<f32>(-232f, 992f, 1079f);
    return -1i;
}

fn func_4(arg_0: bool, arg_1: vec2<i32>) -> vec4<i32> {
    var var_0 = Struct_2(global1.d, 1190f, global1.a, global1.d);
    let var_1 = select(!select(var_0.d.e, vec4<bool>(true, arg_0, true, true), select(select(var_0.a.e, var_0.a.e, global1.a.e.x), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(global1.c.c, 18u)], arg_0), vec4<bool>(arg_0, false, var_0.d.b, true))), var_0.d.e, var_0.d.e);
    global0 = array<bool, 18>();
    let var_2 = Struct_3(Struct_2(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1282f * _wgslsmith_f_op_f32(sign(585f)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-518f - 2086f) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 1u)])), any(var_0.c.e.ywx), 45936u, global1.c.d, vec4<bool>(true, var_1.x, !global1.c.e.x, !var_1.x)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1859f, 1649f)))), global1.d.b, countOneBits(~u_input.a), -min(vec2<i32>(12613i, 22747i), global1.c.d), !select(vec4<bool>(false, var_1.x, false, true), global1.a.e, global1.a.e))), ~vec4<i32>(_wgslsmith_sub_i32(-43426i, global1.a.d.x) << (0u % 32u), 56899i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-20444i, global1.c.d.x, 75917i, 0i), vec4<i32>(var_0.a.d.x, global1.c.d.x, -52255i, var_0.c.d.x)), max(var_0.a.d.x, ~(-5966i))));
    let var_3 = countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.b.x, arg_1.x, ~max(-43363i, -4706i)), firstLeadingBit(vec3<i32>(reverseBits(0i), 2147483647i, global1.a.d.x))));
    return var_2.b;
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    global0 = array<bool, 18>();
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), !all(global1.c.e.xwx), 1u, _wgslsmith_add_vec2_i32(global1.d.d, firstLeadingBit(_wgslsmith_mult_vec2_i32(global1.d.d, vec2<i32>(-2147483647i, global1.a.d.x)))), vec4<bool>(true, !any(global1.d.e), global0[_wgslsmith_index_u32(u_input.a, 18u)], true)), global1.b, global1.c, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.d.a * global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.a.c, u_input.a), vec3<u32>(0u, u_input.a, 0u)), 1u)]), _wgslsmith_f_op_f32(round(-1000f))), true, 84507u >> (~(~global1.c.c) % 32u), -reverseBits(vec2<i32>(global1.c.d.x, 15229i)), !select(global1.c.e, !vec4<bool>(false, global1.a.b, false, false), true)));
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(20683u, ~55085u), ~(~(~u_input.a))), vec2<u32>(~1u, ~0u));
    var var_1 = func_4(true, vec2<i32>(-26082i & -(global1.c.d.x & -2147483647i), max(func_3(Struct_1(global1.a.a, global1.d.b, u_input.a, global1.a.d, vec4<bool>(false, false, false, false)), vec3<i32>(global1.c.d.x, -2147483647i, -28585i)), min(global1.d.d.x, 20049i & global1.a.d.x))));
    var var_2 = ~(-max(countOneBits(vec3<i32>(var_1.x, global1.c.d.x, var_1.x)), vec3<i32>(19117i, -1i, var_1.x) & vec3<i32>(1i, var_1.x, -1i)));
    return Struct_2(global1.a, -604f, global1.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-956f - -1129f)))), all(!global1.a.e) != any(global1.a.e.zw), 11214u, global1.d.d, select(global1.c.e, global1.c.e, global0[_wgslsmith_index_u32(1u, 18u)])));
}

fn func_1(arg_0: vec4<f32>) -> vec2<f32> {
    let var_0 = global1.c;
    var var_1 = global1.d.d.x;
    var var_2 = func_2(arg_0.zy);
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, var_2.a.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-832f, arg_0.x))) + vec2<f32>(global2[_wgslsmith_index_u32(global1.a.c << (46200u % 32u), 1u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - -911f))))).c;
    var_2 = Struct_2(var_2.d, _wgslsmith_f_op_f32(sign(110f)), var_2.c, func_2(arg_0.wz).d);
    return _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-417f)) + _wgslsmith_f_op_f32(2100f - 207f)) + global1.b), global1.b), arg_0.yx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 18>();
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(56599u, 1u)], -208f)), _wgslsmith_f_op_f32(1395f - 980f)) * _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(~u_input.a, 1u)])))) > 1111f;
    global3 = all(select(select(!(!global1.c.e.zwy), global1.d.e.wzz, !(!global1.a.e.xwz)), global1.c.e.xxy, select(!global1.d.e.yyx, !global1.d.e.zxz, global1.d.e.wwy)));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_1(vec4<f32>(global2[_wgslsmith_index_u32(70568u, 1u)], global2[_wgslsmith_index_u32(2758u, 1u)], 609f, -616f))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, global2[_wgslsmith_index_u32(~1u, 1u)]), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.d.a, -156f), vec2<f32>(-1030f, global1.a.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(global1.d.c, 1u)], 638f))))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, global2[_wgslsmith_index_u32(u_input.a, 1u)]) + vec2<f32>(global1.c.a, 284f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], -266f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2[_wgslsmith_index_u32(global1.d.c, 1u)], -161f)))))));
    global2 = array<f32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-224f + 782f), ~(~vec3<u32>(1u, ~u_input.a, ~u_input.a)), ~(~min(~vec3<u32>(1u, global1.d.c, global1.d.c), firstTrailingBit(vec3<u32>(18489u, 1u, u_input.a)))));
}

