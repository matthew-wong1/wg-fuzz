struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec4<bool>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(1i, 0i, i32(-2147483648), 0i);

var<private> global1: array<i32, 15> = array<i32, 15>(i32(-2147483648), 1i, -1i, 1i, 10362i, 71262i, 2147483647i, -1i, 38560i, -1i, -3553i, 1i, 44642i, -15161i, 0i);

var<private> global2: array<i32, 10>;

var<private> global3: array<bool, 4>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<f32>) -> vec4<f32> {
    var var_0 = arg_1.xz;
    var var_1 = countOneBits(~(~vec4<i32>(-11553i, -global0[_wgslsmith_index_u32(arg_0, 4u)], -global1[_wgslsmith_index_u32(0u, 15u)], 0i)));
    let var_2 = select(any(select(!vec4<bool>(false, false, arg_1.x, arg_1.x), select(vec4<bool>(false, global3[_wgslsmith_index_u32(arg_0, 4u)], arg_1.x, true), select(vec4<bool>(true, var_0.x, var_0.x, global3[_wgslsmith_index_u32(10066u, 4u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 4u)], true, global3[_wgslsmith_index_u32(4294967295u, 4u)], true), vec4<bool>(arg_1.x, global3[_wgslsmith_index_u32(50634u, 4u)], arg_1.x, var_0.x)), !vec4<bool>(true, var_0.x, true, true)), true)), !(!all(select(vec3<bool>(arg_1.x, false, var_0.x), vec3<bool>(false, global3[_wgslsmith_index_u32(46365u, 4u)], true), arg_1))), any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)] == 2147483647i, var_1.x == var_1.x, !arg_1.x, true)) || true);
    let var_3 = Struct_2(Struct_1(2147483647i, _wgslsmith_div_vec3_i32(-reverseBits(u_input.b.zzz), ~vec3<i32>(0i, 6586i, 35013i)), vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(trunc(arg_2.x)), arg_2.x, _wgslsmith_f_op_f32(750f - _wgslsmith_f_op_f32(abs(arg_2.x))))), Struct_1((select(68437i, -2147483647i, true) | -var_1.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0, u_input.a, 55381u), vec4<u32>(18678u, 4294967295u, 48168u, 62824u)) % 32u), u_input.b.zyw, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_2.x)), 643f, _wgslsmith_f_op_f32(-arg_2.x), arg_2.x))));
    let var_4 = var_3.b;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-599f, _wgslsmith_f_op_f32(var_3.a.c.x - -1148f), arg_2.x, _wgslsmith_f_op_f32(var_4.c.x * -746f))))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>) -> i32 {
    global1 = array<i32, 15>();
    global1 = array<i32, 15>();
    global1 = array<i32, 15>();
    let var_0 = vec4<u32>(abs(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(max(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 30763u))), select(vec3<u32>(u_input.a, 17315u, 4294967295u), ~vec3<u32>(u_input.a, 10108u, 19394u), global3[_wgslsmith_index_u32(0u, 4u)] || global3[_wgslsmith_index_u32(u_input.a, 4u)]))), countOneBits(37252u) & ~u_input.a, ~(~4294967295u), select(_wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_mult_u32(~(~0u), _wgslsmith_mult_u32(u_input.a, u_input.a) & u_input.a), true));
    let var_1 = u_input.a << ((~(~_wgslsmith_sub_u32(var_0.x, u_input.a)) << (u_input.a % 32u)) % 32u);
    return arg_1.a.a;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_1(~global0[_wgslsmith_index_u32(1u, 4u)], u_input.b.yxy, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 437f, 141f, -689f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-329f, -3095f, -1032f, -2504f))))))));
    global1 = array<i32, 15>();
    var_0 = Struct_1(func_4(var_0.c.x, Struct_2(Struct_1(countOneBits(-57316i), vec3<i32>(global0[_wgslsmith_index_u32(29243u, 4u)], var_0.b.x, -59504i) >> (vec3<u32>(u_input.a, 30106u, u_input.a) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, 1210f, var_0.c.x, var_0.c.x) - vec4<f32>(var_0.c.x, var_0.c.x, -243f, 553f))), Struct_1(0i, vec3<i32>(u_input.b.x, -30936i, -8563i), _wgslsmith_f_op_vec4_f32(func_3(4294967295u, vec3<bool>(false, true, global3[_wgslsmith_index_u32(72250u, 4u)]), var_0.c.xxy)))), vec3<i32>(min(-24429i, u_input.b.x >> (0u % 32u)), -(~23929i), u_input.b.x)), var_0.b, vec4<f32>(668f, 330f, var_0.c.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + -744f)))));
    var_0 = Struct_1(var_0.a, vec3<i32>(global0[_wgslsmith_index_u32((12067u >> (~u_input.a % 32u)) & ~1u, 4u)], 37708i, -_wgslsmith_div_i32(1i, reverseBits(global0[_wgslsmith_index_u32(u_input.a, 4u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, 947f, 483f))))) * _wgslsmith_f_op_vec4_f32(abs(var_0.c))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -373f), var_0.c.x)), 1000f, -1456f);
    return Struct_2(Struct_1(~(~(-17223i >> (u_input.a % 32u))), ~vec3<i32>(var_0.a, func_4(-533f, Struct_2(Struct_1(53623i, vec3<i32>(var_0.b.x, -48469i, var_0.b.x), var_0.c), Struct_1(44877i, vec3<i32>(0i, 2147483647i, 2147483647i), vec4<f32>(230f, var_1.x, var_0.c.x, var_1.x))), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 4u)], var_0.a, 2147483647i)), -1139i), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.c + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, 1390f, -374f, var_1.x), vec4<f32>(var_1.x, 160f, -621f, 735f)))))), Struct_1(-721i, -(~(var_0.b ^ vec3<i32>(var_0.b.x, -1i, -33218i))), var_0.c));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = any(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 4u)], !all(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 4u)], false))));
    let var_1 = u_input.a;
    var var_2 = u_input.b.x;
    let var_3 = Struct_3(~reverseBits(~_wgslsmith_div_u32(u_input.a, 1u)), func_2(u_input.b.xx), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, ~(~u_input.a)), 4u)], _wgslsmith_div_vec3_i32(u_input.b.xxy, firstTrailingBit(-vec3<i32>(global0[_wgslsmith_index_u32(1u, 4u)], 2147483647i, -37794i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(796f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2(u_input.b.zw).b.c.x))));
    global1 = array<i32, 15>();
    return var_3.b.b;
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    global2 = array<i32, 10>();
    let var_0 = !vec4<bool>(all(vec2<bool>(select(false, global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(u_input.a, 4u)]), true)), false, global3[_wgslsmith_index_u32(countOneBits(u_input.a), 4u)], !all(select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 4u)], false), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 4u)], true), global3[_wgslsmith_index_u32(0u, 4u)])));
    var var_1 = true;
    var var_2 = !var_0.xyx;
    global2 = array<i32, 10>();
    return Struct_3(countOneBits(select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a) | vec3<u32>(8697u, 38044u, 4294967295u), ~vec3<u32>(u_input.a, u_input.a, 57155u)), u_input.a, global3[_wgslsmith_index_u32(u_input.a, 4u)])), func_2(abs(select(arg_0.b.zz, -arg_0.b.yy, any(var_0)))), func_1(!(true | global3[_wgslsmith_index_u32(~u_input.a, 4u)]), func_2(max(~vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(16028u, 10u)]), -vec2<i32>(2147483647i, arg_0.a))).a.b.x, arg_0.c.yz));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    global2 = array<i32, 10>();
    let var_0 = vec2<i32>(firstTrailingBit(-arg_0.c.b.x >> (39928u % 32u)), min(-2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, -1i, global0[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(32888u, 15u)])), vec4<i32>(10891i, arg_0.c.b.x, 2147483647i, 2147483647i)) & (58197i ^ u_input.b.x)));
    let var_1 = reverseBits(firstLeadingBit(countOneBits(~(~vec4<u32>(1u, u_input.a, 4294967295u, arg_0.a)))));
    let var_2 = min(21794i, _wgslsmith_mod_i32(min(0i, ~global2[_wgslsmith_index_u32(arg_0.a, 10u)] & abs(arg_1.a.a)), firstTrailingBit(0i) >> (arg_0.a % 32u)));
    var var_3 = Struct_1(abs(_wgslsmith_dot_vec3_i32(func_1(arg_0.c.a > 1i, countOneBits(u_input.b.x), vec2<f32>(-406f, 282f)).b, arg_0.c.b)), min(vec3<i32>(-10486i, arg_0.b.a.a, min(~1i, ~(-1i))), _wgslsmith_mult_vec3_i32(~arg_0.b.a.b, func_1(true, 20931i, arg_0.b.b.c.xx).b) << (var_1.wyw % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1039f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-220f * arg_1.b.c.x), _wgslsmith_f_op_f32(arg_1.b.c.x + 233f))), -1017f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(666f)), 279f)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.c.x) * _wgslsmith_f_op_f32(720f - -504f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(501f - arg_0.b.b.c.x)), 1144f)));
    return func_5(Struct_1(-2147483647i, _wgslsmith_sub_vec3_i32(arg_0.c.b, func_5(Struct_1(u_input.b.x, arg_0.c.b, vec4<f32>(arg_0.b.b.c.x, 388f, 350f, -993f))).b.a.b), _wgslsmith_f_op_vec4_f32(-var_3.c))).b;
}

fn func_7(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_4 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 4u)];
    global1 = array<i32, 15>();
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(~u_input.a >> (func_5(arg_1.b).a % 32u), vec3<bool>(any(vec3<bool>(false, false, false)), arg_0.x, any(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 4u)], arg_0.x, true))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1381f - 1352f))), arg_1.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -143f) - _wgslsmith_f_op_f32(arg_1.b.c.x - 1627f))))).x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-923f, arg_1.b.c.x)), _wgslsmith_f_op_vec4_f32(func_3(13685u ^ min(u_input.a, 8173u), select(vec3<bool>(true, true, true), vec3<bool>(true, global3[_wgslsmith_index_u32(31502u, 4u)], true), true), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-arg_1.b.c.x), arg_1.a.c.x))).x, any(!(!vec3<bool>(global3[_wgslsmith_index_u32(62429u, 4u)], arg_0.x, true))))));
    var var_3 = vec2<bool>(true && !arg_0.x, arg_0.x & true);
    return Struct_4(func_5(Struct_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(-26805i, -1278i), ~u_input.b.xy), countOneBits(min(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 15u)], -9065i, -6537i), arg_1.a.b)), arg_1.b.c)), vec4<bool>(!select(!arg_0.x, !var_3.x, !global3[_wgslsmith_index_u32(u_input.a, 4u)]), any(!arg_0), true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(var_3.x & var_3.x, !arg_0.x, all(arg_0), select(global3[_wgslsmith_index_u32(u_input.a, 4u)], true, arg_0.x)), false), select(!(!(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 4u)], arg_0.x, var_3.x))), !vec3<bool>(arg_1.a.a != -36877i, true, arg_0.x), u_input.a != _wgslsmith_mod_u32(4294967295u ^ u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.c.x, arg_1.a.c.x))), -1788f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.c.x * arg_1.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.c.x))) - _wgslsmith_f_op_vec4_f32(-arg_1.b.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 15>();
    global1 = array<i32, 15>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(841f * 1867f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(909f + -188f) + -1299f) + _wgslsmith_f_op_f32(floor(265f))), any(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 4u)], true, global3[_wgslsmith_index_u32(u_input.a, 4u)])) || false)), _wgslsmith_f_op_f32(select(193f, 544f, false)), 466f, 1328f);
    var var_1 = func_7(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, 0u, u_input.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(19829u, u_input.a, u_input.a), vec3<u32>(1u, 1u, u_input.a))), 10u)] <= (global1[_wgslsmith_index_u32(31932u, 15u)] ^ -global2[_wgslsmith_index_u32(u_input.a, 10u)]), global3[_wgslsmith_index_u32(4294967295u, 4u)]), func_6(func_5(func_1(global3[_wgslsmith_index_u32(u_input.a, 4u)] && global3[_wgslsmith_index_u32(u_input.a, 4u)], global2[_wgslsmith_index_u32(~u_input.a, 10u)], _wgslsmith_f_op_vec2_f32(var_0.zz + vec2<f32>(-180f, var_0.x)))), Struct_2(func_5(Struct_1(global1[_wgslsmith_index_u32(0u, 15u)], vec3<i32>(49584i, u_input.c, 42649i), var_0)).b.a, func_2(vec2<i32>(-44392i, global1[_wgslsmith_index_u32(30723u, 15u)])).a)));
    global3 = array<bool, 4>();
    let var_2 = var_1.d;
    var_1 = func_7(!var_2.zy, func_2(u_input.b.zw));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, var_1.a.c.c.x, true)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 285f) - 1065f)), -2147483647i, _wgslsmith_f_op_vec2_f32(exp2(var_0.wz)), ~(-_wgslsmith_sub_vec2_i32(var_1.a.b.a.b.xz, vec2<i32>(u_input.c, global2[_wgslsmith_index_u32(var_1.a.a, 10u)]))), var_0.x);
}

