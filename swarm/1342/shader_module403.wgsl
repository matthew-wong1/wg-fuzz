struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 1u, 17378u, 32201u);

var<private> global1: array<f32, 9> = array<f32, 9>(1497f, -966f, 673f, 824f, 866f, -1191f, 109f, -1363f, -451f);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_sub_i32(-(_wgslsmith_dot_vec3_i32(u_input.b.xyw, u_input.a) & (arg_0.x ^ arg_0.x)), firstLeadingBit(19547i)) << (u_input.c.x % 32u);
    let var_1 = vec2<bool>(true, false);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 39796u), 9u)]) - arg_3.a))), vec3<bool>(false, var_1.x & !(!arg_3.b.x), !arg_3.b.x));
    var var_3 = global0.ywx;
    var var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1109f + 528f))))), 584f), vec3<bool>(!any(!vec3<bool>(false, arg_3.b.x, arg_1.b.x)), true, true));
    return u_input.b.x;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)), arg_2.b.x)), arg_2.b);
    var var_1 = u_input.c.zz;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -775f), select(!var_0.b, select(select(select(arg_2.b, vec3<bool>(var_0.b.x, var_0.b.x, false), var_0.b), !vec3<bool>(false, arg_2.b.x, false), select(var_0.b, var_0.b, vec3<bool>(arg_0, true, arg_0))), vec3<bool>(u_input.e != u_input.d, arg_2.b.x, true), !(!vec3<bool>(var_0.b.x, arg_2.b.x, var_0.b.x))), var_0.b));
    let var_3 = vec4<i32>(-42978i, 0i, -(~func_3(u_input.a.xy, var_0, vec2<f32>(arg_1, arg_1), var_0)) & _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x), vec4<i32>(-2147483647i, u_input.b.x, 1i, 0i)) << (~vec4<u32>(0u, var_1.x, 1u, 1u) % vec4<u32>(32u)), u_input.b), -82333i);
    let var_4 = arg_2;
    return Struct_1(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(global0.x, 9u)], _wgslsmith_f_op_f32(-arg_2.a)))), select(arg_2.b.x, any(arg_2.b.xx), var_0.a < -805f) | select(all(var_0.b), arg_0, var_1.x > 99490u))), !select(vec3<bool>(all(var_4.b.zx), true & var_4.b.x, -1000f != var_0.a), select(select(vec3<bool>(var_0.b.x, false, false), vec3<bool>(false, arg_2.b.x, var_2.b.x), true), select(arg_2.b, vec3<bool>(arg_2.b.x, true, false), false), !vec3<bool>(arg_0, var_2.b.x, arg_2.b.x)), any(vec3<bool>(true, true, false))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(firstLeadingBit(arg_1.x), 9u)]))) + arg_2.a), func_2(true, -1099f, func_2(-939f > _wgslsmith_f_op_f32(arg_0.a + -1379f), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.a, 590f), -1226f), func_2(true, arg_2.a, arg_2))));
    let var_1 = firstTrailingBit(~vec3<u32>(reverseBits(28787u), global0.x, global0.x));
    let var_2 = !select(arg_2.b, vec3<bool>(arg_2.b.x, !(arg_2.b.x & true), arg_0.b.x), select((arg_2.b.x & var_0.b.x) && true, any(select(vec2<bool>(arg_0.b.x, arg_0.b.x), vec2<bool>(false, false), var_0.b.yz)), arg_2.b.x));
    var var_3 = firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~global0.yyz, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(63454u, 1u, global0.x), vec3<u32>(global0.x, var_1.x, u_input.c.x), vec3<u32>(var_1.x, 0u, 50110u))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 0u, 1u, u_input.c.x), vec4<u32>(4294967295u, var_1.x, arg_1.x, 4294967295u) << (vec4<u32>(var_1.x, u_input.e, arg_1.x, var_1.x) % vec4<u32>(32u))), min(~vec4<u32>(1u, 9149u, u_input.d, var_1.x), vec4<u32>(u_input.c.x, 0u, 0u, 1739u)))));
    var var_4 = vec2<u32>(~global0.x >> (_wgslsmith_mod_u32(var_1.x, 87181u) % 32u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(abs(global0.x), _wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(u_input.e, var_1.x))), 11617u), 1u));
    return func_2(global1[_wgslsmith_index_u32(0u, 9u)] > -1054f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a - -1723f) * _wgslsmith_f_op_f32(f32(-1f) * -1934f))) + _wgslsmith_div_f32(904f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), 417f)))), Struct_1(var_0.a, select(!(!var_2), arg_0.b, !any(vec2<bool>(true, arg_2.b.x)))));
}

fn func_5(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> bool {
    let var_0 = arg_2;
    var var_1 = var_0;
    let var_2 = ~(~vec4<u32>(~(u_input.d | arg_1.x), max(~82073u, firstLeadingBit(global0.x)), arg_1.x, ~global0.x));
    global0 = vec4<u32>(~var_2.x, 26377u, _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0.x, global0.x), arg_1.x >> (7577u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(49529u, u_input.c.x, arg_1.x, 54714u), vec4<u32>(arg_1.x, 1u, u_input.c.x, 51081u))), _wgslsmith_add_u32(global0.x, ~(~u_input.c.x))), var_2.x);
    var_1 = var_0;
    return arg_3.x;
}

fn func_1(arg_0: i32, arg_1: i32) -> vec3<bool> {
    global1 = array<f32, 9>();
    var var_0 = _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(reverseBits(~countOneBits(abs(23828u))), 9u)]));
    global0 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~max(firstLeadingBit(vec4<u32>(global0.x, global0.x, 4294967295u, global0.x)), reverseBits(vec4<u32>(104992u, 22963u, u_input.c.x, 16206u))), ~(~vec4<u32>(global0.x, u_input.c.x, global0.x, 41136u) | ~vec4<u32>(0u, u_input.d, 41389u, 0u))), ~(~(~vec4<u32>(global0.x, 1u, global0.x, 1u) & ~vec4<u32>(23979u, u_input.e, 58067u, 0u))));
    var var_1 = vec4<bool>(!func_5(!any(vec4<bool>(true, false, true, true)), _wgslsmith_clamp_vec3_u32(u_input.c, u_input.c, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, 66697u, u_input.e), global0.zwz)), func_4(Struct_1(global1[_wgslsmith_index_u32(1u, 9u)], vec3<bool>(false, false, false)), _wgslsmith_div_vec2_u32(global0.zz, global0.zz), func_2(true, global1[_wgslsmith_index_u32(27573u, 9u)], Struct_1(global1[_wgslsmith_index_u32(u_input.c.x, 9u)], vec3<bool>(true, true, false)))), vec4<bool>(true, true, true, true)), true, true, global1[_wgslsmith_index_u32(~(~u_input.d & 24209u), 9u)] <= global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 25697u, u_input.d), global0.xxx << (u_input.c % vec3<u32>(32u))), 9u)]);
    global0 = ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(3969u, 1u), countOneBits(u_input.d), u_input.e, 1u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 31694u, u_input.c.x, global0.x), vec4<u32>(4294967295u, 21524u, global0.x, u_input.e))), ~(~vec4<u32>(u_input.e, global0.x, 0u, 1u)));
    return vec3<bool>(countOneBits(-(~u_input.b.x)) < -2147483647i, all(!vec3<bool>(var_1.x, !var_1.x, any(vec2<bool>(true, var_1.x)))), all(vec2<bool>(true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1544f * -118f), -1032f)), func_1(u_input.b.x, ~(~u_input.b.x | ~1i)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 296f))), vec3<bool>(true, any(vec3<bool>(true, true, true)), func_5(true, vec3<u32>(global0.x, _wgslsmith_sub_u32(global0.x, 52463u), 0u), func_4(func_2(true, global1[_wgslsmith_index_u32(u_input.c.x, 9u)], var_0), _wgslsmith_clamp_vec2_u32(u_input.c.yy, u_input.c.zx, u_input.c.zy), var_0), select(!vec4<bool>(var_0.b.x, true, true, true), select(vec4<bool>(false, true, false, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), var_0.b.x), select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x))))));
    let var_2 = false;
    var_1 = func_2(false, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~(~global0.x)), 9u)] + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-205f + global1[_wgslsmith_index_u32(46788u, 9u)])))), func_2(1i == ~min(-27885i, u_input.b.x), -472f, func_2(func_4(var_0, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(global0.x, global0.x)), Struct_1(1000f, vec3<bool>(true, false, var_2))).b.x, func_4(Struct_1(global1[_wgslsmith_index_u32(39512u, 9u)], vec3<bool>(var_1.b.x, true, var_1.b.x)), u_input.c.yx, func_2(false, -218f, var_0)).a, var_0)));
    global0 = countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, _wgslsmith_div_u32(global0.x, ~1u), 4294967295u, ~abs(0u)), select(vec4<u32>(~u_input.c.x, global0.x, _wgslsmith_mult_u32(u_input.c.x, global0.x), u_input.e), ~(~vec4<u32>(global0.x, 0u, 4294967295u, 30937u)), true)));
    global0 = vec4<u32>(u_input.c.x, ~18585u, ~u_input.c.x, max(~0u, _wgslsmith_mod_u32(0u & _wgslsmith_div_u32(4875u, global0.x), max(45351u, 31921u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a + var_1.a))), var_1.a) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, global1[_wgslsmith_index_u32(global0.x, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a, -543f, var_1.a)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1492f, func_2(true, _wgslsmith_f_op_f32(var_1.a * var_0.a), var_0).a, _wgslsmith_f_op_f32(var_1.a + _wgslsmith_div_f32(var_1.a, -2760f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, var_1.a) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 9u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(647f)), _wgslsmith_div_f32(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(21540u, 9u)])), _wgslsmith_f_op_f32(select(-777f, -556f, var_0.b.x))))), -570f, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 9u)], var_1.a, 178f, -429f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a, 440f, 124f, var_0.a), vec4<f32>(global1[_wgslsmith_index_u32(769u, 9u)], 1162f, global1[_wgslsmith_index_u32(u_input.e, 9u)], 438f)))))))));
}

