struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: bool,
    d: i32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(2147483647i, -1i, -13185i, 1i, -87132i, -17700i, i32(-2147483648), 21999i, 1i);

var<private> global1: Struct_2 = Struct_2(vec2<i32>(-1i, 1i));

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global3: vec3<u32> = vec3<u32>(1u, 1u, 84784u);

var<private> global4: vec3<f32> = vec3<f32>(478f, -652f, 1027f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    global2 = select(!vec4<bool>(global2.x, global2.x, false & (global2.x & global2.x), true), vec4<bool>(!global2.x, !(!global2.x), !(global3.x >= global3.x), any(select(select(vec2<bool>(true, false), global2.yz, global2.zz), select(vec2<bool>(true, global2.x), global2.xz, false), select(vec2<bool>(global2.x, false), global2.wz, global2.x)))), true);
    let var_0 = -1000f;
    global0 = array<i32, 9>();
    let var_1 = _wgslsmith_div_vec3_u32(~abs(~(~vec3<u32>(global3.x, 4294967295u, global3.x))), ~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(1u, 4294967295u, 2823u)) << (abs(vec3<u32>(global3.x, global3.x, 1u)) % vec3<u32>(32u)), ~vec3<u32>(15522u, global3.x, global3.x)));
    global4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, global4.x, 455f)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 749f, global4.x)), vec3<f32>(global4.x, -399f, var_0)))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-102f * var_0), _wgslsmith_f_op_f32(-global4.x), var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(551f, 623f, var_0), vec3<f32>(567f, global4.x, -1547f)))))) * vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global4.x))), _wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(-var_0)), var_0));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(242f - var_0), -305f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(676f - var_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-630f, 390f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * -349f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(1277f, global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1023f)) + _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, global4.x, var_0, 991f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0, -1940f, var_0, var_0))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(836f, global4.x, 2535f, -587f))))), vec4<bool>(all(global2.wyx), global2.x | global2.x, global2.x, global1.a.x == global0[_wgslsmith_index_u32(37026u, 9u)])))));
}

fn func_2() -> Struct_5 {
    global1 = Struct_2(global1.a);
    return Struct_5(Struct_4(4294967295u, Struct_3(Struct_2(max(vec2<i32>(global1.a.x, 30721i), vec2<i32>(-18804i, global1.a.x))), _wgslsmith_f_op_vec4_f32(func_3()), true, -(~u_input.a), ~_wgslsmith_div_vec3_i32(vec3<i32>(23417i, global0[_wgslsmith_index_u32(global3.x, 9u)], 2147483647i), vec3<i32>(-7419i, u_input.a, global1.a.x))), Struct_1(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a, -1i, global0[_wgslsmith_index_u32(global3.x, 9u)]), vec3<i32>(1i, global0[_wgslsmith_index_u32(10840u, 9u)], global0[_wgslsmith_index_u32(52682u, 9u)]) | vec3<i32>(-40399i, -16207i, 4797i), -vec3<i32>(0i, global0[_wgslsmith_index_u32(global3.x, 9u)], global1.a.x)), 1i, all(vec3<bool>(global2.x, global2.x, global2.x)), countOneBits(vec2<i32>(-68198i, 0i)))), 32031i, global4.x);
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_5, arg_3: i32) -> Struct_2 {
    let var_0 = -u_input.a << (~arg_2.a.a % 32u);
    let var_1 = arg_2.a.b.b;
    var var_2 = Struct_3(func_2().a.b.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1517f, arg_1.x, false)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-173f + global4.x))), _wgslsmith_f_op_f32(min(global4.x, _wgslsmith_f_op_f32(228f + -967f))), _wgslsmith_f_op_f32(abs(var_1.x)))), 54165u > ~arg_2.a.a, firstTrailingBit(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 9u)]), arg_2.a.c.a);
    var var_3 = var_2.b.x;
    global2 = select(!vec4<bool>(arg_2.a.b.c, arg_2.a.c.c, func_2().a.c.c, func_2().a.b.b.x <= arg_1.x), vec4<bool>(false, (7653i >> (_wgslsmith_div_u32(arg_2.a.a, 90608u) % 32u)) >= -2147483647i, global4.x > _wgslsmith_f_op_f32(select(-359f, _wgslsmith_f_op_f32(-var_1.x), var_2.c)), !any(select(vec4<bool>(arg_2.a.b.c, false, true, arg_0), vec4<bool>(arg_0, true, global2.x, true), vec4<bool>(false, arg_2.a.c.c, true, true)))), !select(vec4<bool>(global3.x > 0u, true, true, global3.x < arg_2.a.a), vec4<bool>(!arg_2.a.b.c, true, func_2().a.b.c, false & arg_0), !select(vec4<bool>(arg_2.a.b.c, arg_0, true, arg_0), vec4<bool>(true, global2.x, global2.x, true), global2.x)));
    return var_2.a;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_4 {
    global4 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global4.x, -779f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3()).x + arg_0.x))));
    global4 = vec3<f32>(988f, _wgslsmith_f_op_f32(-929f * global4.x), _wgslsmith_f_op_f32(-arg_0.x));
    var var_0 = ~max((global3.yz << (abs(global3.yz) % vec2<u32>(32u))) << (vec2<u32>(global3.x, global3.x) % vec2<u32>(32u)), global3.zz);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2().a.b.b + _wgslsmith_f_op_vec4_f32(-arg_0)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1372f, arg_0.x, 1000f, -220f), arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0, vec4<f32>(454f, arg_0.x, global4.x, arg_0.x)))))));
    let var_2 = global2.wyz;
    return Struct_4(10262u, Struct_3(arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1000f, -1000f, var_1.x) - vec4<f32>(-434f, -392f, 996f, -336f)))) - func_2().a.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1297f)) * _wgslsmith_f_op_f32(min(-1514f, -456f))), min(-2147483647i, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(global3.x, 9u)], 1i, 12561i), ~(-vec3<i32>(global1.a.x, -2147483647i, -2147483647i)))), func_2().a.c);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<i32>) -> Struct_4 {
    global0 = array<i32, 9>();
    global1 = arg_0;
    return func_5(vec4<f32>(-582f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) + _wgslsmith_f_op_f32(-global4.x)), -314f, -752f), func_4(arg_1.x, vec2<f32>(global4.x, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(global4.x + global4.x))), func_2(), firstTrailingBit(min(global0[_wgslsmith_index_u32(60348u, 9u)] & -70301i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(global3.x, 9u)], arg_2.x, 9756i, arg_0.a.x), vec4<i32>(-27485i, arg_2.x, global1.a.x, 24853i))))), !select(select(select(vec4<bool>(false, global2.x, true, arg_1.x), vec4<bool>(false, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, global2.x, arg_1.x, global2.x)), vec4<bool>(false, global2.x, arg_1.x, false), global2.x || true), select(!vec4<bool>(true, arg_1.x, arg_1.x, global2.x), !vec4<bool>(global2.x, false, true, false), !arg_1.x), vec4<bool>(!global2.x, select(false, true, arg_1.x), global2.x, true)));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_3, arg_3: i32) -> bool {
    let var_0 = global3.x;
    global1 = Struct_2(arg_1.a);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1300f, 2717f), _wgslsmith_f_op_f32(trunc(global4.x)))) * global4.x), global4.x)));
    var var_2 = ~abs(global0[_wgslsmith_index_u32(0u, 9u)]) <= 41779i;
    global4 = _wgslsmith_f_op_vec3_f32(exp2(arg_2.b.yxw));
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(global4.x >= -730f, select(!func_6(func_1(Struct_2(global1.a), global2.wy, vec3<i32>(global0[_wgslsmith_index_u32(global3.x, 9u)], 1i, u_input.a)), Struct_2(global1.a), Struct_3(Struct_2(global1.a), vec4<f32>(global4.x, global4.x, global4.x, global4.x), global2.x, global1.a.x, vec3<i32>(-5581i, -12080i, 1859i)), 2147483647i), false, true || !global2.x), _wgslsmith_dot_vec2_i32(func_1(Struct_2(global1.a), select(vec2<bool>(global2.x, false), global2.yz, true), vec3<i32>(u_input.a, global1.a.x, global1.a.x)).b.e.zx, vec2<i32>(min(13494i, global0[_wgslsmith_index_u32(4294967295u, 9u)]), i32(-1i) * -2147483647i)) == 2147483647i);
    let var_1 = func_2();
    global2 = select(vec4<bool>(func_5(_wgslsmith_f_op_vec4_f32(select(var_1.a.b.b, func_5(var_1.a.b.b, var_1.a.b.a, vec4<bool>(var_0.x, var_1.a.c.c, false, var_1.a.c.c)).b.b, select(vec4<bool>(var_0.x, var_0.x, false, var_1.a.b.c), vec4<bool>(true, false, var_0.x, true), vec4<bool>(global2.x, global2.x, var_1.a.b.c, false)))), func_2().a.b.a, vec4<bool>(!var_1.a.c.c, all(vec2<bool>(var_0.x, true)), true, global0[_wgslsmith_index_u32(19395u, 9u)] != 17359i)).b.c, func_1(func_1(Struct_2(vec2<i32>(2147483647i, var_1.a.c.d.x)), !vec2<bool>(var_0.x, var_0.x), ~var_1.a.b.e).b.a, select(var_0.xx, var_0.yz, var_0.x), vec3<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(var_1.a.a, 9u)], 1i), global1.a.x, ~16231i)).c.c, all(vec4<bool>(true, global2.x, true, var_0.x)) || true, func_1(Struct_2(global1.a), vec2<bool>(global2.x | true, true), var_1.a.c.a).c.c), select(vec4<bool>(true != all(vec3<bool>(false, false, false)), false, any(global2.yw) | (-1425i >= global0[_wgslsmith_index_u32(77673u, 9u)]), false), !(!select(vec4<bool>(false, var_1.a.c.c, var_1.a.c.c, var_0.x), vec4<bool>(true, true, true, var_1.a.b.c), global2.x)), true), select(select(select(vec4<bool>(false, var_0.x, true, var_0.x), select(vec4<bool>(var_1.a.c.c, global2.x, true, true), vec4<bool>(global2.x, false, false, var_1.a.c.c), global2.x), vec4<bool>(false, var_1.a.b.c, false, true)), !(!vec4<bool>(true, var_1.a.b.c, var_0.x, global2.x)), any(!vec3<bool>(var_1.a.c.c, true, true))), vec4<bool>(!var_0.x, var_0.x, var_1.a.c.c, var_1.a.c.c), select(vec4<bool>(func_2().a.b.c, false, global2.x, u_input.a <= 2147483647i), select(select(vec4<bool>(true, true, true, var_1.a.b.c), vec4<bool>(global2.x, global2.x, var_1.a.b.c, var_1.a.b.c), global2.x), !vec4<bool>(false, true, var_1.a.b.c, false), global2.x), vec4<bool>(global2.x == var_1.a.c.c, all(vec4<bool>(false, false, true, true)), var_0.x, !var_1.a.c.c))));
    let var_2 = vec2<f32>(global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -636f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-178f)))));
    global0 = array<i32, 9>();
    var var_3 = reverseBits(~global3.x);
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2, global4.xz) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.a.b.b.x, 1022f)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(931f, var_1.c) + var_1.a.b.b.wx)))) + vec2<f32>(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1294f)) - _wgslsmith_f_op_f32(109f - 1130f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1136f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * 153f)))), _wgslsmith_f_op_f32(-1309f + 766f)), _wgslsmith_f_op_f32(f32(-1f) * -362f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-675f, global4.x, var_2.x))))))), -948f);
}

