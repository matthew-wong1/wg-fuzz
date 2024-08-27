struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: u32,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: f32 = 415f;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(1082f, -572f, -1358f), -1029i, vec3<i32>(2147483647i, 0i, 16800i));

var<private> global3: array<i32, 29> = array<i32, 29>(1i, -13840i, 2147483647i, -21319i, 13261i, i32(-2147483648), 14554i, -1i, i32(-2147483648), 2147483647i, -21169i, i32(-2147483648), 31500i, 46415i, 11923i, 0i, 2931i, i32(-2147483648), 53071i, 26501i, 28223i, -14477i, 1i, 1i, -1i, -4964i, -31143i, 1i, -21345i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: u32) -> i32 {
    var var_0 = reverseBits(global2.c);
    let var_1 = arg_1;
    var_0 = vec3<i32>(~_wgslsmith_add_i32(global3[_wgslsmith_index_u32(~776u, 29u)], -u_input.a) | -(~_wgslsmith_add_i32(global0.b.x, global3[_wgslsmith_index_u32(arg_1.a, 29u)])), -_wgslsmith_add_i32(_wgslsmith_add_i32(46203i & var_0.x, -19744i), global3[_wgslsmith_index_u32(0u, 29u)]), 47869i);
    var var_2 = global0.a.a;
    var var_3 = var_1;
    return global2.b;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(exp2(global2.a.x))), global2.a.x, 1444f))), max(-firstLeadingBit(func_3(global2.a.x, Struct_3(4294967295u, vec2<f32>(global2.a.x, global2.a.x)), 0u)), global0.b.x), firstLeadingBit(countOneBits(vec3<i32>(u_input.a ^ 1i, ~(-35457i), -16839i))));
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x)));
    let var_1 = vec2<i32>(max(~(~(-2147483647i)), firstLeadingBit(global2.b)), ~(-1i));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(step(global2.a, global2.a)), select(-29012i, var_1.x, any(vec2<bool>(global0.a.b, arg_0.b))), -global2.c);
    let var_3 = !(!vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -844f) >= var_2.a.x, true, true, true));
    return global0.a;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: i32, arg_3: vec4<f32>) -> Struct_1 {
    global0 = arg_1;
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global2.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, -142f, global2.a.x))))))), ~(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.a), arg_0.b.yz), select(vec2<i32>(global2.b, global2.c.x), global2.c.yy, arg_1.a.b)) ^ 0i), vec3<i32>(firstLeadingBit(-1i), u_input.a, _wgslsmith_clamp_i32(23206i, ~arg_0.b.x, global2.c.x) << ((~arg_0.c & countOneBits(arg_1.a.a.x)) % 32u)));
    var var_1 = !vec2<bool>(arg_0.a.b, all(!(!vec2<bool>(true, arg_0.a.b))));
    let var_2 = 3771i;
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a + var_0.a), max(global0.b.x, ~arg_0.b.x), global2.c);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-arg_3.zyx), abs(_wgslsmith_div_i32(firstLeadingBit(global0.b.x), ~(-47474i))), select(arg_0.b, abs(var_0.c), global0.a.b) | countOneBits(-(~global2.c)));
}

fn func_1() -> Struct_4 {
    let var_0 = reverseBits(firstLeadingBit(~(~global0.c))) > global0.c;
    let var_1 = global0.a.b;
    var var_2 = abs(abs(countOneBits(vec2<i32>(u_input.a & 2147483647i, 1i))));
    var var_3 = vec2<bool>((_wgslsmith_div_i32(global3[_wgslsmith_index_u32(global0.c, 29u)] << (17499u % 32u), ~2147483647i) << (select(min(global0.a.a.x, 0u), ~global0.c, global0.a.b) % 32u)) == ~global3[_wgslsmith_index_u32(~4294967295u, 29u)], true);
    global2 = func_4(Struct_4(Struct_2(vec2<u32>(~0u, global0.a.a.x), var_3.x), reverseBits(-global0.b), global0.c), Struct_4(func_2(Struct_2(vec2<u32>(global0.c, 1u), global0.a.b)), ~(vec3<i32>(-4020i, 41841i, global2.b) >> (vec3<u32>(global0.c, global0.c, 22906u) % vec3<u32>(32u))), ~16502u), ~global2.b ^ u_input.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.a.x, 1360f, global2.a.x, global2.a.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-439f, global2.a.x, global2.a.x, -612f), vec4<f32>(1175f, 1180f, global2.a.x, global2.a.x))), vec4<bool>(true, false, false, var_3.x)))))));
    return Struct_4(func_2(global0.a), min(firstTrailingBit(-(global0.b ^ global0.b)), vec3<i32>(abs(-19443i), 1i, i32(-1i) * -37583i) << (reverseBits(~vec3<u32>(4294967295u, global0.a.a.x, global0.c)) % vec3<u32>(32u))), ~_wgslsmith_sub_u32(global0.a.a.x << (0u % 32u), select(1u, global0.a.a.x, var_0)) | ~(~firstLeadingBit(12661u)));
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: vec4<bool>) -> i32 {
    let var_0 = select(vec2<bool>(any(arg_2.xx), true), vec2<bool>(!(_wgslsmith_f_op_f32(global2.a.x + -1105f) > global2.a.x), global0.a.b & global0.a.b), arg_1.a.b);
    global0 = Struct_4(func_2(arg_1.a), vec3<i32>((u_input.a ^ _wgslsmith_add_i32(35503i, -20097i)) & u_input.a, abs(-1i), _wgslsmith_mod_i32(17164i, _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0, arg_0, -23702i, -3521i), reverseBits(vec4<i32>(arg_0, -81454i, 2147483647i, -5942i))))), _wgslsmith_mod_u32(~(~global0.c) ^ countOneBits(1u), 4294967295u >> (1u % 32u)));
    let var_1 = global2.a.x;
    var var_2 = u_input.a;
    let var_3 = func_4(func_1(), arg_1, _wgslsmith_div_i32(-1178i, arg_1.b.x) ^ 1i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1452f, -1735f, global2.a.x, global2.a.x)))))))).a.x;
    return arg_0;
}

fn func_6(arg_0: i32, arg_1: i32, arg_2: bool, arg_3: bool) -> Struct_4 {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1798f + -207f))), 679f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1947f), _wgslsmith_f_op_f32(149f + global2.a.x), any(vec4<bool>(global0.a.b, arg_3, false, false)))), global2.a.x) - vec2<f32>(global2.a.x, -292f)));
    var var_1 = global0.a.a.x;
    var var_2 = vec4<bool>(true, func_1().a.b, any(vec4<bool>(true, true, true, true)), func_1().a.b);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global2.a)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -309f, 307f), global2.a, var_2.xyx)) - global2.a) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a * global2.a)))), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.a.a.x, 4294967295u), 29u)], func_1().b);
    let var_4 = global0.a;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(26548i & func_5(_wgslsmith_mod_i32(u_input.a ^ global2.c.x, 1i), func_1(), !(!vec4<bool>(true, true, global0.a.b, true))), global3[_wgslsmith_index_u32((0u | ~firstTrailingBit(28981u)) | ~_wgslsmith_mod_u32(countOneBits(global0.c), global0.a.a.x), 29u)], false != (any(vec2<bool>(global0.a.b, false)) || (!global0.a.b & true)), false);
    let var_0 = countOneBits(~_wgslsmith_mod_u32(global0.a.a.x, ~(0u & global0.c)));
    var var_1 = !(!(!select(vec2<bool>(false, false), vec2<bool>(global0.a.b, global0.a.b), global0.a.b != global0.a.b)));
    var var_2 = _wgslsmith_f_op_f32(-494f + 333f);
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.a.x)) * global2.a.x)) + 479f);
    let var_3 = select(!(!vec3<bool>(true, true, 321f != global2.a.x)), !vec3<bool>(true, var_1.x, !all(vec2<bool>(global0.a.b, global0.a.b))), !select(select(!vec3<bool>(true, global0.a.b, global0.a.b), select(vec3<bool>(true, false, true), vec3<bool>(global0.a.b, true, true), vec3<bool>(false, var_1.x, global0.a.b)), true), !(!vec3<bool>(var_1.x, var_1.x, false)), !(!vec3<bool>(global0.a.b, var_1.x, var_1.x))));
    let var_4 = func_1();
    var var_5 = ~(8420u >> (_wgslsmith_add_u32(var_0, countOneBits(~1u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global2.a.xy, global2.a.xx, vec2<bool>(var_1.x, var_1.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1538f, -955f) + _wgslsmith_f_op_vec2_f32(trunc(global2.a.yx))) - global2.a.yy)), ~select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.a.a.x, 28531u, var_4.a.a.x), vec4<u32>(1u, var_0, 91174u, 37658u)) & _wgslsmith_clamp_u32(1u, var_0, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.a.a.x, 40642u, var_4.c) | vec3<u32>(global0.a.a.x, 1u, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(global0.a.a.x, var_4.c, var_4.c), vec3<u32>(0u, global0.c, 23484u))), global0.a.b));
}

