struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(2147483647i, vec4<i32>(2147483647i, -32334i, i32(-2147483648), 1i), -4022f, -456f), Struct_1(4866i, vec4<i32>(i32(-2147483648), i32(-2147483648), -24504i, 0i), 1000f, 1238f), Struct_1(0i, vec4<i32>(-19312i, 23493i, i32(-2147483648), 33900i), -1118f, 1185f), Struct_1(3443i, vec4<i32>(-21015i, -27764i, 364i, -1i), -1841f, -414f), Struct_1(2147483647i, vec4<i32>(-1i, 1i, 8067i, 48820i), -1325f, -1227f), Struct_1(21362i, vec4<i32>(1i, 17865i, 17517i, 36003i), 1097f, 2619f), Struct_1(-1i, vec4<i32>(1527i, 25464i, 30336i, 1i), -1032f, 472f), Struct_1(-39318i, vec4<i32>(26204i, 29051i, i32(-2147483648), -36107i), 811f, -1490f), Struct_1(2147483647i, vec4<i32>(8438i, -73067i, -1i, -45853i), -1000f, 357f), Struct_1(0i, vec4<i32>(-1i, 4877i, 60525i, -11435i), 1063f, 1510f), Struct_1(3556i, vec4<i32>(-66828i, 39939i, -20933i, -126i), 285f, -367f), Struct_1(26418i, vec4<i32>(i32(-2147483648), 32285i, 6545i, 63006i), -287f, -3256f), Struct_1(2147483647i, vec4<i32>(1i, 0i, 0i, -1i), 584f, 167f), Struct_1(-8059i, vec4<i32>(i32(-2147483648), -1i, 37491i, i32(-2147483648)), -1017f, -630f), Struct_1(67962i, vec4<i32>(-14506i, 2147483647i, -163i, -7285i), 1249f, -436f), Struct_1(33014i, vec4<i32>(-33101i, -25183i, -32006i, 6923i), -1242f, 713f), Struct_1(-49089i, vec4<i32>(21338i, -1i, 2147483647i, 2147483647i), 1393f, 792f), Struct_1(-10392i, vec4<i32>(2147483647i, -1i, 2147483647i, 47404i), -1031f, 522f));

var<private> global1: array<f32, 22>;

var<private> global2: array<Struct_1, 12>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: u32) -> bool {
    var var_0 = select(select(vec2<i32>(1i, min(1i, u_input.c.x)), ~u_input.c.yy, (true || any(vec4<bool>(false, arg_0.x, true, false))) || true), u_input.a.zz, arg_0);
    global2 = array<Struct_1, 12>();
    var var_1 = vec2<bool>(any(!select(arg_0, vec2<bool>(true, true), arg_0.x)), arg_0.x);
    let var_2 = Struct_4(-vec4<i32>(_wgslsmith_clamp_i32(~(-2147483647i), 0i, -2147483647i), -1i, _wgslsmith_clamp_i32(~(-20250i), var_0.x, ~u_input.a.x), reverseBits(~u_input.e)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, firstLeadingBit(_wgslsmith_clamp_i32(39092i, -2147483647i, 0i)), 2147483647i), vec3<i32>(_wgslsmith_sub_i32(u_input.d.x, -35188i), 0i, reverseBits(2147483647i))));
    let var_3 = ~arg_1;
    return all(select(vec4<bool>(any(!vec4<bool>(false, false, true, var_1.x)), !var_1.x && true, var_1.x, _wgslsmith_f_op_f32(-584f * global1[_wgslsmith_index_u32(63251u, 22u)]) < global1[_wgslsmith_index_u32(0u, 22u)]), !vec4<bool>(arg_0.x, !var_1.x, !arg_0.x, true != arg_0.x), true));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: bool) -> Struct_4 {
    var var_0 = Struct_4(countOneBits(arg_0.a.b), max(_wgslsmith_div_i32(-1i, 16244i), 2147483647i));
    var var_1 = Struct_3(arg_0, global0[_wgslsmith_index_u32(u_input.b.x, 18u)], select(vec4<bool>(1i < ~u_input.a.x, ~7386u >= u_input.b.x, true, !func_3(arg_1.zx, vec3<u32>(504u, 31515u, u_input.b.x), u_input.b.x)), vec4<bool>(true, true, true, select(u_input.b.x >= u_input.b.x, true, true)), !select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), !vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_2, arg_1.x, arg_2, true))), !(!any(vec2<bool>(arg_1.x, arg_2))), arg_0);
    var var_2 = Struct_4(var_1.a.a.b, _wgslsmith_dot_vec3_i32(u_input.a, var_0.a.zzy));
    var var_3 = countOneBits(var_2.b);
    var var_4 = arg_0;
    return Struct_4(reverseBits(firstTrailingBit((vec4<i32>(var_4.a.a, 1i, 1i, var_2.a.x) << (vec4<u32>(u_input.b.x, 63814u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) << (abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)))), -1i);
}

fn func_4(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(u_input.b.x) >> (0u % 32u), firstLeadingBit(u_input.b.x)), 22u)];
    var var_1 = !select(vec3<bool>(false, select(true, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), !any(vec4<bool>(false, true, true, true))));
    var var_2 = Struct_3(Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), 69425u), 12u)], ~arg_0.b), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b.x, ~min(u_input.b.x, 4294967295u) ^ ~u_input.b.x), 12u)], !(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), var_1.x, Struct_2(global0[_wgslsmith_index_u32(~(~(7163u ^ u_input.b.x)), 18u)], select(~(-u_input.d.x), _wgslsmith_mult_i32(arg_0.a.x, arg_0.b << (u_input.b.x % 32u)), true)));
    var_2 = Struct_3(var_2.a, Struct_1(func_2(Struct_2(Struct_1(-13531i, vec4<i32>(33186i, -6341i, var_2.a.b, u_input.c.x), global1[_wgslsmith_index_u32(88085u, 22u)], -476f), -24078i), vec3<bool>(any(var_2.c.xzx), var_1.x && var_1.x, -1384f < var_2.e.a.c), _wgslsmith_f_op_f32(var_2.b.d + var_2.e.a.c) != -1048f).a.x, var_2.b.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-408f)), 399f)), global1[_wgslsmith_index_u32(0u, 22u)]), select(select(vec4<bool>(all(vec2<bool>(true, true)), true, var_1.x, !var_1.x), var_2.c, var_1.x), vec4<bool>(false, var_2.d, var_1.x || true, u_input.b.x < u_input.b.x), var_2.c), true, var_2.e);
    var_1 = !vec3<bool>(true || ((-4690i >= arg_0.a.x) || var_1.x), true, false);
    return select(select(vec4<bool>(all(var_1.zx), 311f != _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 22u)] * -527f), all(select(var_2.c.wx, var_1.zx, var_1.x)), any(select(var_2.c, vec4<bool>(false, var_2.d, var_2.c.x, var_2.d), vec4<bool>(var_2.c.x, true, true, var_2.c.x)))), vec4<bool>(var_2.a.a.b.x > _wgslsmith_add_i32(2683i, 66013i), true, false, true | (-648f < var_2.e.a.c)), var_2.c), var_2.c, !select(vec4<bool>(8604u <= u_input.b.x, var_2.c.x, var_1.x, true), select(!vec4<bool>(var_2.d, true, var_1.x, false), vec4<bool>(var_2.c.x, var_2.d, false, false), var_2.c.x | false), true));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: u32) -> i32 {
    global1 = array<f32, 22>();
    let var_0 = -735f;
    let var_1 = Struct_2(Struct_1(1i, vec4<i32>(_wgslsmith_div_i32(max(39250i, u_input.a.x), ~u_input.a.x), u_input.a.x, _wgslsmith_mod_i32(u_input.d.x, abs(-5167i)), _wgslsmith_div_i32(u_input.a.x | u_input.e, u_input.a.x ^ 0i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-952f, 1346f), arg_0.x) + arg_0.x), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(35995u, 22u)]))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), u_input.d.x), ~u_input.d.x), _wgslsmith_div_i32(~u_input.c.x, u_input.d.x)));
    let var_2 = !select(!vec4<bool>(true, false, 940f <= arg_0.x, all(vec3<bool>(true, false, true))), func_4(func_2(var_1, select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), false)), vec4<bool>(true, true, all(vec4<bool>(false, true, false, false)), true | (arg_2 < arg_1)));
    let var_3 = vec2<u32>(~(~countOneBits(u_input.b.x)) >> ((u_input.b.x ^ arg_2) % 32u), 37113u);
    return _wgslsmith_mult_i32(~var_1.a.a, _wgslsmith_dot_vec3_i32(func_2(Struct_2(var_1.a, -2147483647i), vec3<bool>(true, true, var_2.x), true).a.wxz << (~_wgslsmith_div_vec3_u32(vec3<u32>(arg_2, var_3.x, var_3.x), vec3<u32>(72477u, 32057u, 1797u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(32460i, var_1.a.b.x, u_input.a.x, var_1.a.b.x), vec4<i32>(0i, var_1.b, u_input.a.x, 10764i)), -u_input.e, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, var_1.a.b.x), vec2<i32>(64972i, var_1.b)) >> (1817u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1027f);
    global2 = array<Struct_1, 12>();
    var var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(5397i), u_input.d.x, 73674i), abs(abs(vec3<i32>(u_input.c.x, u_input.a.x, u_input.e)))) | u_input.d.x, _wgslsmith_mod_i32(~u_input.a.x, u_input.a.x & ~func_1(vec3<f32>(var_0, 995f, -1441f), u_input.b.x, u_input.b.x)), u_input.d.x, u_input.c.x);
    global1 = array<f32, 22>();
    var var_2 = Struct_3(Struct_2(Struct_1(var_1.x, -(~vec4<i32>(2147483647i, u_input.e, var_1.x, -2910i)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1571f)))), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, var_1.x, -32082i, var_1.x), min(_wgslsmith_add_vec4_i32(vec4<i32>(6476i, var_1.x, u_input.e, -43797i), vec4<i32>(0i, -2147483647i, 0i, -47133i)), vec4<i32>(-1216i, 1i, u_input.e, var_1.x) ^ vec4<i32>(26976i, var_1.x, var_1.x, -2147483647i)))), global0[_wgslsmith_index_u32(31215u, 18u)], vec4<bool>(((u_input.b.x >= u_input.b.x) != true) | (true && select(false, false, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), countOneBits(firstLeadingBit(-2147483647i)) > -_wgslsmith_mult_i32(61809i, u_input.c.x), func_4(Struct_4(vec4<i32>(var_1.x, 1i, 1i, u_input.a.x) | vec4<i32>(u_input.a.x, var_1.x, u_input.a.x, var_1.x), -u_input.e)).x), true, Struct_2(global0[_wgslsmith_index_u32(~u_input.b.x, 18u)], u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(764f, 368f, var_2.b.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(70364u, 22u)], 843f, -795f)))) + vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 22u)] * -997f), _wgslsmith_f_op_f32(trunc(-486f)))), _wgslsmith_f_op_f32(f32(-1f) * -294f), global1[_wgslsmith_index_u32(0u, 22u)])), _wgslsmith_add_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 80704u, u_input.b.x), vec3<u32>(18797u, u_input.b.x, u_input.b.x))), ~(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) ^ vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)) & vec3<u32>(1u, _wgslsmith_mod_u32(1u, u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(6181u, 1u), u_input.b))), var_1.x, vec4<u32>(firstLeadingBit(u_input.b.x), ~u_input.b.x, 1u, abs(select(~u_input.b.x, u_input.b.x, func_4(Struct_4(var_2.a.a.b, 33443i)).x))), min(u_input.b.x, u_input.b.x) | (~u_input.b.x & max(10292u, max(u_input.b.x, 34632u))));
}

