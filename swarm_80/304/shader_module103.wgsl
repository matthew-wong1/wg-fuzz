struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(-4630i, -35125i, -28974i), vec3<i32>(1i, 13400i, -48326i), vec3<i32>(25933i, -1i, 11683i), vec3<i32>(1i, -65230i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(-2728i, 2230i, -36455i), vec3<i32>(1i, -18416i, -10400i), vec3<i32>(1i, 2147483647i, -22194i), vec3<i32>(2147483647i, i32(-2147483648), -33822i), vec3<i32>(-34142i, 1i, 39507i), vec3<i32>(16502i, -1059i, 2147483647i), vec3<i32>(0i, 2147483647i, -48836i), vec3<i32>(-23903i, 1i, -21515i), vec3<i32>(-16565i, 1i, 8i), vec3<i32>(-5285i, i32(-2147483648), 24902i), vec3<i32>(i32(-2147483648), 2147483647i, 11378i), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), vec3<i32>(-26214i, i32(-2147483648), -1i), vec3<i32>(12293i, 1853i, -13161i), vec3<i32>(-17607i, 1i, 10863i), vec3<i32>(-2942i, -1i, 5966i), vec3<i32>(0i, 9469i, i32(-2147483648)), vec3<i32>(27441i, 24581i, 76693i));

var<private> global1: array<vec2<bool>, 29>;

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(-977f, vec4<i32>(-1i, 2147483647i, 46726i, 1i), 1000f, 5578i, i32(-2147483648)), Struct_1(-449f, vec4<i32>(-46397i, 45101i, -1i, 0i), 1218f, 1i, 17596i), Struct_1(-130f, vec4<i32>(1862i, 14427i, 48628i, 11605i), -730f, -4947i, 23819i), Struct_1(880f, vec4<i32>(0i, i32(-2147483648), 42273i, -11589i), 207f, 5015i, i32(-2147483648)), Struct_1(-1000f, vec4<i32>(0i, 1381i, 40441i, -25237i), -429f, 1i, 1i), Struct_1(279f, vec4<i32>(1i, 2147483647i, 1i, -33366i), 504f, -29290i, 11062i), Struct_1(-692f, vec4<i32>(0i, 0i, -13472i, -30815i), 1000f, -3474i, 2147483647i), Struct_1(-895f, vec4<i32>(-58192i, -1i, 36225i, -1i), -563f, -16521i, 23889i), Struct_1(-363f, vec4<i32>(-55404i, -33043i, -572i, 153i), 157f, 82174i, 1i), Struct_1(343f, vec4<i32>(i32(-2147483648), -42369i, -36052i, 0i), -992f, 678i, 2147483647i), Struct_1(-1000f, vec4<i32>(-1i, i32(-2147483648), 0i, -23115i), -3061f, -15851i, -23609i), Struct_1(-1000f, vec4<i32>(1i, 18573i, 1i, -49660i), -296f, -1i, -7818i), Struct_1(-675f, vec4<i32>(41922i, 0i, 45604i, -30640i), 790f, -1i, i32(-2147483648)), Struct_1(-962f, vec4<i32>(2147483647i, -1i, -64133i, 17915i), 1000f, -31818i, -12907i), Struct_1(1506f, vec4<i32>(63393i, 0i, -36021i, -1i), -1515f, 7656i, 1i), Struct_1(-1000f, vec4<i32>(-9677i, -18422i, 2147483647i, 1i), 341f, -1i, 7537i), Struct_1(-1267f, vec4<i32>(-3822i, 2147483647i, 2147483647i, 65911i), 725f, 2147483647i, -1i), Struct_1(1000f, vec4<i32>(2147483647i, 1i, 0i, 23918i), -1613f, 16938i, 0i));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec3<u32> {
    global2 = array<Struct_1, 18>();
    let var_0 = all(!vec2<bool>(true, true && any(vec2<bool>(false, false))));
    let var_1 = arg_1;
    var var_2 = var_0;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(442f + arg_0) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_1.a.b, var_1.b.b, vec4<i32>(arg_1.c.e, 1i, arg_1.b.d, 2147483647i)), vec4<i32>(0i, arg_1.c.e, arg_1.c.e, var_1.a.e)), var_1.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.a) * -1269f)), ~(~var_1.c.b.x) << (abs(_wgslsmith_mult_u32(0u, 64549u)) % 32u), 1i), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_1.a.c, var_1.a.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.a.c))), !all(vec2<bool>(var_0, var_0)))), var_1.b.b, -166f, ~(-31689i), 1i), Struct_1(_wgslsmith_f_op_f32(1416f - var_1.c.c), abs(~vec4<i32>(var_1.a.b.x, arg_1.c.e, var_1.c.d, var_1.c.d)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.b.a, 995f), var_1.a.a)))), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_1.a.b.x, 50572i, 0i)), var_1.c.b.zwx), _wgslsmith_mult_i32(~(-13602i), 23489i)));
    return _wgslsmith_mult_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(87324u, 4294967295u, 1u, 56319u), vec4<u32>(17534u, 19609u, 36968u, 53047u)), ~74900u, ~80288u), ~countOneBits(vec3<u32>(4294967295u, 4294967295u, 1u)), ~abs(vec3<u32>(129795u, 0u, 1u))), ~vec3<u32>(49889u, ~(~1u), 1u));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> bool {
    let var_0 = -767f;
    var var_1 = Struct_1(-1000f, firstLeadingBit(-arg_0.c.b) | arg_0.b.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + -101f)))), -arg_2.c.e, ~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(arg_2.a.b.x, arg_0.b.b.x), _wgslsmith_dot_vec2_i32(arg_0.b.b.zy, arg_0.a.b.yz)), arg_0.b.e | 19428i, -36842i));
    var var_2 = global0[_wgslsmith_index_u32(~(~(~_wgslsmith_clamp_u32(~14531u, _wgslsmith_add_u32(0u, 75727u), 4294967295u))), 23u)];
    let var_3 = Struct_2(global2[_wgslsmith_index_u32(~min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 36389u, 89173u), vec3<u32>(1u, 3393u, 1u)) >> (abs(0u) % 32u), func_3(_wgslsmith_f_op_f32(min(arg_0.b.c, -1000f)), arg_0).x), 18u)], arg_2.c, Struct_1(arg_1, reverseBits(vec4<i32>(37044i, u_input.a, -41350i, ~var_1.b.x)), _wgslsmith_f_op_f32(sign(arg_0.c.a)), -53101i | -(arg_2.b.e | u_input.a), arg_2.b.e));
    var var_4 = var_3.a.e;
    return any(global1[_wgslsmith_index_u32(~func_3(-1145f, Struct_2(var_3.c, Struct_1(192f, vec4<i32>(u_input.a, var_1.d, var_1.b.x, -1i), -335f, -58616i, -2147483647i), Struct_1(arg_1, arg_2.c.b, var_0, -38237i, var_2.x))).x, 29u)]);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = vec3<bool>(func_4(Struct_2(global2[_wgslsmith_index_u32(max(1u, 36806u), 18u)], global2[_wgslsmith_index_u32(firstTrailingBit(1u), 18u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_3(352f, Struct_2(global2[_wgslsmith_index_u32(11229u, 18u)], Struct_1(499f, vec4<i32>(arg_0, -4371i, arg_0, 0i), -706f, u_input.a, arg_0), global2[_wgslsmith_index_u32(1u, 18u)])), ~vec3<u32>(22373u, 4294967295u, 30017u)), 18u)]), -1866f, Struct_2(Struct_1(-1555f, ~vec4<i32>(28665i, u_input.a, 0i, u_input.a), -432f, _wgslsmith_mult_i32(u_input.a, arg_0), ~2147483647i), Struct_1(_wgslsmith_f_op_f32(268f + -1515f), ~vec4<i32>(-1i, 2147483647i, u_input.a, 0i), _wgslsmith_f_op_f32(f32(-1f) * -551f), _wgslsmith_mod_i32(2147483647i, -15311i), u_input.a), Struct_1(_wgslsmith_f_op_f32(1259f * -817f), vec4<i32>(arg_0, 2147483647i, -2147483647i, 2147483647i), _wgslsmith_f_op_f32(-652f * -336f), -1i, countOneBits(arg_0)))), true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1541f)))) >= 637f);
    global0 = array<vec3<i32>, 23>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1408f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(218f * 478f))))));
    global0 = array<vec3<i32>, 23>();
    let var_2 = 0u;
    return global2[_wgslsmith_index_u32(func_3(-300f, Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(11554u, 1u), var_2 | var_2, firstTrailingBit(1u)), 18u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -931f)), vec4<i32>(-22940i, ~arg_0, _wgslsmith_mod_i32(-86747i, 91295i), ~arg_0), _wgslsmith_f_op_f32(floor(799f)), firstLeadingBit(~u_input.a), firstLeadingBit(-arg_0)), global2[_wgslsmith_index_u32(abs(var_2), 18u)])).x, 18u)];
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_2(func_2(_wgslsmith_div_i32(u_input.a >> (38119u % 32u), u_input.a)), func_2(-19650i), arg_1.c);
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.a.a, -542f)), _wgslsmith_f_op_f32(149f - var_0.a.a)), _wgslsmith_f_op_f32(-var_0.c.c), _wgslsmith_f_op_f32(-arg_1.b.c));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-136f * -797f) - _wgslsmith_f_op_f32(f32(-1f) * -1587f)), arg_1.b.c)), _wgslsmith_div_f32(arg_1.b.c, arg_1.b.a)), arg_1.c.a));
    var var_3 = func_2(_wgslsmith_mult_i32(-abs(abs(55086i)), u_input.a));
    var_3 = func_2(~u_input.a);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(func_1(true, Struct_2(global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(~(~1u), 18u)], global2[_wgslsmith_index_u32(~40617u, 18u)])), 18u)];
    var var_1 = vec2<bool>(var_0.a <= 1125f, true);
    var_1 = !global1[_wgslsmith_index_u32(2055u, 29u)];
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(1u, 19269u)), ~(~vec2<u32>(1u, 1u)) ^ ~select(vec2<u32>(0u, 20406u), vec2<u32>(26127u, 69669u), vec2<bool>(true, var_1.x))), ~vec2<u32>(_wgslsmith_div_u32(4294967295u, 50529u), 4294967295u) << (~firstTrailingBit(select(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 7748u), var_1.x)) % vec2<u32>(32u))), 29u)];
    var var_2 = select(vec4<u32>(~1u, 4294967295u, _wgslsmith_sub_u32(~4294967295u, 0u), _wgslsmith_clamp_u32(select(77752u, 0u, var_1.x), ~137222u, func_3(var_0.c, Struct_2(Struct_1(var_0.a, vec4<i32>(1i, var_0.e, var_0.e, var_0.b.x), -136f, u_input.a, -75153i), Struct_1(-892f, var_0.b, -1080f, u_input.a, var_0.d), global2[_wgslsmith_index_u32(88088u, 18u)])).x) ^ _wgslsmith_mult_u32(1u, 51181u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(var_1.x, var_1.x, any(select(global1[_wgslsmith_index_u32(~0u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], true)), var_1.x));
    var var_3 = func_2(-2147483647i);
    let var_4 = !(!vec2<bool>(var_1.x, all(select(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(36690u, 29u)], var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-1433f);
}

