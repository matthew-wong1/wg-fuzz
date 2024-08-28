struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(2147483647i, i32(-2147483648), 9768i, i32(-2147483648)), vec4<i32>(54109i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, 1i, i32(-2147483648)), vec4<i32>(0i, 0i, 2147483647i, -7301i), vec4<i32>(2147483647i, -1i, 27262i, 4427i), vec4<i32>(19827i, 1i, 16319i, -1i), vec4<i32>(-1i, 6112i, 23045i, i32(-2147483648)), vec4<i32>(2147483647i, i32(-2147483648), 0i, 2147483647i), vec4<i32>(-16618i, 36202i, 1i, -1i), vec4<i32>(1697i, -1i, 2289i, 2147483647i), vec4<i32>(-35698i, -21185i, -38282i, -16598i), vec4<i32>(-3764i, 2147483647i, i32(-2147483648), 4606i), vec4<i32>(i32(-2147483648), 1i, 65433i, 2147483647i), vec4<i32>(-4512i, -54816i, 7808i, 0i), vec4<i32>(0i, 1i, 12975i, 5414i), vec4<i32>(-34855i, -33056i, -20899i, 1i), vec4<i32>(i32(-2147483648), -9152i, -1160i, 47701i), vec4<i32>(i32(-2147483648), 15032i, 0i, 2147483647i), vec4<i32>(-1i, 2103i, -1i, -1i), vec4<i32>(1i, -2997i, 1i, -1i), vec4<i32>(i32(-2147483648), 45121i, -10362i, -1i), vec4<i32>(-35451i, 2124i, -1i, -28079i), vec4<i32>(0i, i32(-2147483648), 1i, 0i), vec4<i32>(1i, 1i, -9308i, -83920i), vec4<i32>(-43022i, 1i, -14538i, 2147483647i), vec4<i32>(-56276i, -14224i, 0i, 0i), vec4<i32>(1i, 56042i, 18487i, i32(-2147483648)), vec4<i32>(40065i, 50766i, i32(-2147483648), -1i));

var<private> global2: Struct_1 = Struct_1(vec4<f32>(638f, 1261f, -1722f, -2075f), vec2<f32>(-1000f, -1000f), vec4<bool>(true, true, false, false));

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(floor(global2.b.x)), _wgslsmith_f_op_f32(1031f - arg_2.b.x));
    global1 = array<vec4<i32>, 28>();
    var var_1 = vec4<i32>(-1i << ((u_input.a ^ (u_input.a & ~u_input.a)) % 32u), _wgslsmith_div_i32(~(-(~(-32425i))), _wgslsmith_sub_i32(-(u_input.b | u_input.b), ~u_input.b)), -2147483647i, u_input.b);
    var var_2 = arg_2;
    var var_3 = global3.b.x;
    return _wgslsmith_f_op_f32(-arg_0.a.x);
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = vec3<bool>(false, !any(global3.c.zw), arg_0.c.x);
    global1 = array<vec4<i32>, 28>();
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.b.x * _wgslsmith_f_op_f32(round(509f))))), _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(func_3(arg_0, Struct_1(var_0.a, vec2<f32>(arg_0.b.x, global2.b.x), var_0.c), Struct_1(arg_0.a, arg_0.a.zz, vec4<bool>(true, false, false, var_0.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global3.a.x)), global2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(global2.b.x, 1000f, var_0.b.x, 482f), vec2<f32>(-1000f, 296f), global2.c), arg_0, arg_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.a.zy)))), vec4<bool>(var_1.x, true, false, !(!(67699i > u_input.b))));
    let var_3 = arg_0;
    return global3.c.yx;
}

fn func_2() -> vec4<bool> {
    var var_0 = global2.c.xwz;
    let var_1 = select(func_4(Struct_1(vec4<f32>(-415f, _wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(global2.a.x, global3.a.x, global2.a.x, global3.a.x), global3.b, vec4<bool>(global2.c.x, true, global3.c.x, false)), Struct_1(global2.a, global2.b, global2.c), Struct_1(vec4<f32>(-348f, 1000f, 2459f, -796f), global3.b, vec4<bool>(global3.c.x, global2.c.x, global2.c.x, var_0.x)))), _wgslsmith_f_op_f32(select(-1935f, -338f, false)), _wgslsmith_f_op_f32(floor(global2.a.x))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1466f, global2.a.x) + vec2<f32>(global2.b.x, 267f)))), select(vec4<bool>(false, false, false, global3.c.x), select(vec4<bool>(global3.c.x, false, global2.c.x, global2.c.x), vec4<bool>(true, false, true, true), global2.c.x), false))), global2.c.zy, all(vec4<bool>(global2.c.x, true, false, global2.c.x)));
    let var_2 = 1i;
    let var_3 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1755f, -173f, global2.b.x, global2.b.x))), vec4<f32>(global3.a.x, _wgslsmith_f_op_f32(-731f * _wgslsmith_f_op_f32(global2.b.x + global2.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(963f, global3.a.x)), global2.a.x, var_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2.b.x, 494f), _wgslsmith_f_op_f32(abs(-1607f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-565f, global3.b.x)))), global3.c);
    let var_4 = global3.a.yxx;
    return global3.c;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1.a), _wgslsmith_f_op_vec2_f32(-global3.a.wz), !(!func_2()));
    var var_1 = _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a | u_input.a, ~u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, 4179u), u_input.a) >> (~(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))) % vec4<u32>(32u)), vec4<u32>(abs(~(~17903u)), u_input.a | 5633u, _wgslsmith_mult_u32(~(~0u), max(64327u, ~0u)), ~u_input.a));
    let var_2 = _wgslsmith_mod_vec2_u32(var_1.yz, var_1.zy);
    let var_3 = var_0;
    let var_4 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global2.a.x, -592f), _wgslsmith_f_op_f32(194f * var_3.a.x))), 243f, global2.c.x)), _wgslsmith_f_op_f32(select(-289f, _wgslsmith_f_op_f32(-var_0.b.x), !var_0.c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(var_0, arg_1, arg_1)), -2048f)), 427f), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1774f), global2.b.x)), var_0.a.x), func_2());
    return var_4.c;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(global2.b.x + arg_0.a.x);
    global0 = global3.b.x;
    global3 = arg_0;
    var_0 = 1476f;
    var_0 = _wgslsmith_f_op_f32(min(-1434f, _wgslsmith_f_op_f32(round(arg_1.a.x))));
    return select(global2.c.ww, !(!(!vec2<bool>(true, arg_0.c.x))), vec2<bool>(any(func_1(_wgslsmith_f_op_f32(ceil(arg_1.b.x)), Struct_1(arg_0.a, arg_0.a.yy, vec4<bool>(false, arg_0.c.x, global3.c.x, false)), all(vec4<bool>(global2.c.x, global2.c.x, arg_0.c.x, global3.c.x)), !global2.c.xw)), arg_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a;
    var var_1 = !func_5(Struct_1(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(-global2.b.x), -688f, 2304f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, global2.b.x)))), select(global2.c, !global3.c, func_1(1082f, Struct_1(vec4<f32>(global2.b.x, global3.a.x, 1666f, 637f), global2.b, vec4<bool>(global2.c.x, false, global2.c.x, global3.c.x)), global2.c.x, vec2<bool>(true, true)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.a) - _wgslsmith_f_op_vec4_f32(exp2(global2.a))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global3.b))), global3.c), 303f);
    let var_2 = -2147483647i;
    var var_3 = firstLeadingBit(vec4<i32>(~(~1i), var_2, firstTrailingBit(-_wgslsmith_div_i32(u_input.b, -17200i)), _wgslsmith_dot_vec3_i32(countOneBits(~vec3<i32>(u_input.b, u_input.b, -17190i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, var_2, u_input.b), vec3<i32>(-61931i, u_input.b, var_2)), -vec3<i32>(77145i, 0i, var_2), select(vec3<i32>(1i, 27723i, 0i), vec3<i32>(-3860i, var_2, var_2), vec3<bool>(true, false, true))))));
    let var_4 = global3.a;
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2.a.x * 788f), -225f, -168f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_4.yww))))));
    var var_6 = Struct_1(vec4<f32>(219f, _wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x - 250f))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.a.x - var_5.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-3202f, 759f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global3.b.x, 325f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_5.x, 173f), vec2<f32>(-1526f, global2.a.x)))))), vec4<bool>(false, (_wgslsmith_div_i32(u_input.b, -2147483647i) | u_input.b) > 1i, false, true));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, 15916u), 18981u), _wgslsmith_f_op_vec3_f32(-global2.a.zww), ~vec3<u32>(var_0, min(_wgslsmith_mod_u32(u_input.a, var_0), ~1u), ~1u));
}

