struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(2147483647i, Struct_1(false, i32(-2147483648), 11983u, true, -280f), Struct_1(false, -3965i, 19999u, true, -1030f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(685f, arg_1.e, -552f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-739f, -315f, -188f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, arg_1.e, -489f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_1.e)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-141f, -194f, arg_1.e), vec3<f32>(arg_3.x, arg_1.e, arg_3.x)))))));
    return _wgslsmith_f_op_f32(min(1282f, -1202f));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: vec4<u32>) -> bool {
    global0 = Struct_2(global0.b.b, global0.b, Struct_1(!any(vec2<bool>(false, global0.c.a)), -15107i, _wgslsmith_dot_vec2_u32(select(_wgslsmith_add_vec2_u32(vec2<u32>(arg_3.x, global0.b.c), vec2<u32>(38667u, 1u)), vec2<u32>(19066u, arg_0.c), true), arg_3.wz), arg_0.a, 647f));
    let var_0 = ~(~u_input.a);
    let var_1 = Struct_2(_wgslsmith_mod_i32(-(select(0i, -1i, true) | ~3288i), select(arg_0.b, 0i, global0.b.e <= 1481f) ^ -44118i), Struct_1(arg_0.d, max(24743i, 1i), _wgslsmith_add_u32(5431u, ~(arg_3.x << (1u % 32u))), false, _wgslsmith_f_op_f32(-arg_2)), Struct_1(!any(!vec4<bool>(false, true, global0.c.d, true)), i32(-1i) * -_wgslsmith_sub_i32(-8028i, 11084i), ~(~(~arg_0.c)), ~(~arg_3.x) < 4294967295u, arg_0.e));
    global0 = Struct_2(-2147483647i, Struct_1(select(false, arg_0.d, false), max(-29802i << (~4294967295u % 32u), ~(~arg_0.b)), select(arg_1, global0.c.c, true), _wgslsmith_mult_i32(firstLeadingBit(49766i), -32718i & var_1.a) >= 53775i, 2086f), Struct_1(var_1.c.d, arg_0.b, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, global0.b.c), vec2<u32>(0u, arg_0.c))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) * _wgslsmith_f_op_f32(min(global0.c.e, arg_2))))));
    var var_2 = select(!vec3<bool>(arg_0.a, true, _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(-1i, global0.b.b, -2330i, 10675i)) >= -38517i), !vec3<bool>(var_1.c.d, !(arg_0.d & arg_0.d), !(-38883i != u_input.d)), true);
    return all(vec3<bool>(true, !(!(!var_1.c.a)), any(!(!vec3<bool>(false, global0.c.a, true)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<bool>) -> vec4<bool> {
    global0 = Struct_2(abs(_wgslsmith_add_i32(u_input.d, ~(-u_input.b))), Struct_1(!arg_3.x, arg_2.b, _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(global0.b.c, arg_2.c, 4294967295u, 94219u)), ~(~vec4<u32>(u_input.a, 1u, arg_0.x, u_input.a))), true, arg_2.e), arg_2);
    let var_0 = Struct_2(-16590i, Struct_1(true, -2147483647i, global0.b.c, arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.e + _wgslsmith_f_op_f32(abs(-970f))))), Struct_1(true, ~4632i, global0.b.c, !arg_1.x, _wgslsmith_f_op_f32(447f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.e + 1383f) * _wgslsmith_div_f32(global0.c.e, arg_2.e)))));
    let var_1 = reverseBits(arg_2.b);
    let var_2 = Struct_3(4294967295u, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(750f, global0.b.e, -1017f, var_0.b.e) - vec4<f32>(global0.b.e, 243f, -2225f, 656f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.e, 1783f, -606f, -789f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-491f, var_0.c.e, arg_2.e, -1500f) - vec4<f32>(-1361f, -1410f, -145f, 227f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-254f, -1259f, 903f, -530f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.e, global0.c.e, -277f, 857f) * vec4<f32>(-221f, -673f, arg_2.e, global0.c.e))))))));
    var var_3 = ~31677u;
    return !(!vec4<bool>(false, arg_3.x, true, true));
}

fn func_2() -> f32 {
    var var_0 = func_4(vec3<u32>(33963u, ~(u_input.a << ((u_input.a ^ global0.b.c) % 32u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(23337u, global0.c.c), _wgslsmith_add_vec2_u32(vec2<u32>(global0.c.c, global0.b.c), vec2<u32>(4294967295u, u_input.a)))), vec3<bool>(!all(vec4<bool>(false, true, true, global0.c.d)) && func_3(global0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(64735u, 40179u, 32940u), vec3<u32>(global0.b.c, 0u, 1u)), -1715f, _wgslsmith_add_vec4_u32(vec4<u32>(12968u, 4294967295u, 1u, global0.b.c), vec4<u32>(0u, u_input.a, 0u, u_input.a))), true, global0.c.d), Struct_1(false || select(func_3(global0.b, u_input.a, global0.c.e, vec4<u32>(7777u, 20522u, 4294967295u, 36427u)), false, true), abs(max(u_input.b & u_input.e.x, -1i)), 0u, global0.b.a, 682f), vec3<bool>(all(select(vec2<bool>(global0.c.d, true), select(vec2<bool>(true, global0.c.a), vec2<bool>(global0.b.d, global0.b.a), vec2<bool>(false, false)), false)), false, true));
    let var_1 = var_0.zy;
    var_0 = select(vec4<bool>(-1i > _wgslsmith_div_i32(max(-2890i, -9463i), u_input.d), !var_0.x, true, global0.c.a), vec4<bool>(global0.b.b < select(~2147483647i, -26276i, all(vec3<bool>(true, var_0.x, var_1.x))), var_0.x, var_1.x, all(var_0.zw)), false);
    var_0 = vec4<bool>(!var_1.x, !any(!vec3<bool>(var_1.x, true, global0.c.d)), var_1.x && global0.c.a, false);
    var var_2 = !(!(!vec4<bool>(!global0.c.a, all(vec3<bool>(global0.c.d, global0.b.a, true)), true, var_0.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -867f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.c.e, 762f)) * -574f), _wgslsmith_f_op_f32(-global0.b.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-686f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-411f, -1259f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1505f) + global0.b.e), _wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.a, global0.c.c), Struct_1(false, u_input.c, global0.c.c, global0.b.d, global0.c.e), _wgslsmith_f_op_f32(f32(-1f) * -757f), _wgslsmith_div_vec2_f32(vec2<f32>(global0.c.e, 1134f), vec2<f32>(-588f, 1372f))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(abs(-563f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + -192f), global0.c.e, _wgslsmith_f_op_f32(sign(1781f)))));
    var var_1 = vec3<i32>(global0.c.b, global0.a, i32(-1i) * -17773i);
    var_1 = u_input.e.xxz;
    var var_2 = Struct_3(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, global0.c.c, u_input.a), select(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a), vec3<bool>(global0.c.a, false, false))), abs(~vec3<u32>(55231u, 4294967295u, u_input.a))), vec4<f32>(global0.b.e, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(322f * -2607f)), _wgslsmith_f_op_f32(global0.c.e * -299f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(340f + 443f))) - _wgslsmith_f_op_f32(-var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

