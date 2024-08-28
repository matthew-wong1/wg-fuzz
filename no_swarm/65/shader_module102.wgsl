struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(vec4<bool>(true, false, false, false), 21899i), Struct_4(vec4<bool>(false, false, true, true), 1i), Struct_4(vec4<bool>(true, true, false, true), 1i), Struct_4(vec4<bool>(true, true, false, false), -10540i), Struct_4(vec4<bool>(true, true, false, true), 0i), Struct_4(vec4<bool>(true, false, true, false), 2147483647i), Struct_4(vec4<bool>(false, true, true, false), i32(-2147483648)), Struct_4(vec4<bool>(false, false, true, true), 10125i), Struct_4(vec4<bool>(false, true, false, false), -14878i), Struct_4(vec4<bool>(false, true, false, false), i32(-2147483648)), Struct_4(vec4<bool>(false, true, true, false), -12716i), Struct_4(vec4<bool>(false, true, false, false), 1316i), Struct_4(vec4<bool>(true, true, true, false), 27052i), Struct_4(vec4<bool>(false, false, true, true), i32(-2147483648)), Struct_4(vec4<bool>(false, true, true, true), -625i), Struct_4(vec4<bool>(false, false, false, true), i32(-2147483648)));

var<private> global2: u32 = 0u;

var<private> global3: array<vec2<bool>, 11>;

var<private> global4: f32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_5, arg_3: vec3<u32>) -> i32 {
    var var_0 = arg_0.b ^ _wgslsmith_clamp_i32(-38053i, ~20606i, -2147483647i);
    var var_1 = arg_2;
    var var_2 = arg_1.x;
    var var_3 = Struct_4(select(vec4<bool>(false, all(vec2<bool>(true, var_1.a)), true, arg_0.d.x), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(43030u, 11u)], false, var_1.c.x, arg_2.a), vec4<bool>(false, arg_2.c.x, false, var_1.c.x), arg_2.a), arg_2.c, !arg_2.c), vec4<bool>(true, !arg_0.d.x, all(global3[_wgslsmith_index_u32(17632u, 11u)]), all(var_1.c)), arg_2.a), true), _wgslsmith_clamp_i32(-12397i, _wgslsmith_add_i32(1i, 1i), ~(arg_0.b ^ -arg_2.b)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + 233f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a, -535f)) + arg_1.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + 584f)), -335f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-105f * 1598f) * arg_0.a)))));
    return countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(max(41596i, -1i), -2147483647i, ~_wgslsmith_sub_i32(var_1.b, 25809i), -3483i), vec4<i32>(-2147483647i, reverseBits(~arg_0.b), arg_2.b, max(min(38252i, arg_2.b), ~arg_2.b))));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(exp2(arg_3.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(608f, arg_3.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(946f, -251f), 1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.x, arg_3.b.x, -1000f, 1073f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.x, arg_3.b.x, arg_3.a, arg_3.b.x))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(404f, -875f, -536f, arg_3.b.x))))))), global0[_wgslsmith_index_u32(arg_1.x, 11u)]);
    let var_1 = Struct_4(vec4<bool>(true, var_0.c, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(1u, arg_1.x, 0u, 6222u)), vec4<u32>(u_input.a, 1u, u_input.a, 0u)) != 1u, all(arg_2.xw)), ~func_3(Struct_1(_wgslsmith_f_op_f32(-arg_3.a), arg_0 << (0u % 32u), -750f, arg_2.xww, ~1u), vec4<f32>(-868f, _wgslsmith_f_op_f32(-arg_3.a), var_0.b.x, 2056f), Struct_5(all(arg_2), arg_0, arg_2), arg_1));
    var var_2 = vec2<u32>(1u, ~(~(~(~arg_1.x))));
    global3 = array<vec2<bool>, 11>();
    global4 = var_0.a;
    return vec4<bool>(!(var_1.a.x & var_1.a.x), false, global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 17702u), vec3<u32>(u_input.a, 1u, 4294967295u)), arg_1.x)), 11u)], var_0.a > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -593f)))));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> vec4<bool> {
    var var_0 = Struct_5(!(1u >= firstLeadingBit(abs(arg_3))), -2147483647i, select(vec4<bool>(true, any(select(vec4<bool>(arg_1, false, false, true), vec4<bool>(arg_2.c, true, arg_2.c, arg_1), vec4<bool>(false, arg_1, arg_1, false))), false, arg_2.c), select(!(!vec4<bool>(global0[_wgslsmith_index_u32(21669u, 11u)], true, arg_2.c, true)), !(!vec4<bool>(true, global0[_wgslsmith_index_u32(arg_3, 11u)], arg_2.c, false)), select(vec4<bool>(arg_2.c, arg_2.c, global0[_wgslsmith_index_u32(arg_3, 11u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(57620u, 11u)], false, arg_2.c), select(vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(arg_2.c, false, false, false), vec4<bool>(false, true, false, arg_1)))), !(!func_2(-41997i, vec3<u32>(arg_3, arg_3, arg_3), vec4<bool>(arg_2.c, global0[_wgslsmith_index_u32(4049u, 11u)], false, false), arg_2))));
    let var_1 = global1[_wgslsmith_index_u32(abs(firstTrailingBit(firstTrailingBit(108696u))) >> (u_input.a % 32u), 16u)];
    var var_2 = var_1.a.xy;
    var var_3 = global3[_wgslsmith_index_u32(4294967295u, 11u)];
    var var_4 = var_1.a.zwy;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = array<bool, 11>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(-973f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1179f, -3412f, -674f, 1000f)) + vec4<f32>(504f, -1017f, -152f, -1133f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(804f, 1000f, 1149f, 265f) - vec4<f32>(-1930f, 622f, -822f, 1255f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-1174f, -673f, -204f, 1193f), vec4<f32>(-1000f, -363f, 371f, -103f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 1141f, -865f, -755f))))), any(func_1(1410f, global0[_wgslsmith_index_u32(u_input.a, 11u)], Struct_2(197f, vec4<f32>(-1725f, -117f, 167f, -1000f), global0[_wgslsmith_index_u32(u_input.a, 11u)]), 0u))))), func_1(_wgslsmith_div_f32(1181f, _wgslsmith_f_op_f32(f32(-1f) * -217f)), global0[_wgslsmith_index_u32(u_input.a >> (4294967295u % 32u), 11u)], Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -140f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2070f, -1617f, 1007f, 1463f) + vec4<f32>(-2372f, -1332f, -1038f, 109f))), false), ~54722u).x);
    var var_2 = global1[_wgslsmith_index_u32(countOneBits(5681u), 16u)];
    let var_3 = Struct_3(var_2.a.x && true, false, Struct_2(var_1.b.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(var_1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.a, 507f, var_1.a)))))), true));
    var_2 = Struct_4(func_1(var_3.c.b.x, false & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), abs(vec2<u32>(u_input.a, u_input.a))), 11u)], Struct_2(428f, _wgslsmith_f_op_vec4_f32(-var_3.c.b), _wgslsmith_f_op_f32(var_1.a - 1005f) < _wgslsmith_f_op_f32(sign(1446f))), u_input.a & _wgslsmith_add_u32(4294967295u ^ u_input.a, abs(0u))), ~(~(-(~41226i))));
    var var_4 = Struct_5(!(!func_1(1659f, false, Struct_2(var_3.c.a, var_3.c.b, true), u_input.a).x), 1i, var_2.a);
    var var_5 = Struct_3(any(func_1(2155f, true, Struct_2(_wgslsmith_f_op_f32(trunc(var_3.c.b.x)), vec4<f32>(1048f, var_3.c.b.x, -779f, var_1.b.x), true), u_input.a)), !select(false, var_3.c.a != -536f, var_1.c), Struct_2(-239f, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, var_1.a, var_3.c.b.x, _wgslsmith_f_op_f32(select(var_1.a, 2031f, var_4.c.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b) - var_1.b)), any(var_2.a.wxz)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.b.x - var_1.a) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1000f)), -961f)), 1242f, countOneBits(var_4.b), ~(~vec3<u32>(u_input.a, abs(u_input.a), u_input.a)), countOneBits(firstLeadingBit(min(vec4<i32>(-39844i, 1i, 17954i, 11710i), vec4<i32>(-11257i, var_2.b, 0i, var_2.b)) >> (~vec4<u32>(u_input.a, 221u, u_input.a, u_input.a) % vec4<u32>(32u)))));
}

