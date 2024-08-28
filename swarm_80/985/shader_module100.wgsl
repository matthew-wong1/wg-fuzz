struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: Struct_1,
    d: Struct_3,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<u32, 28> = array<u32, 28>(17163u, 49070u, 1u, 0u, 5499u, 935u, 23575u, 0u, 86757u, 24221u, 1u, 57410u, 44889u, 0u, 0u, 1u, 9542u, 22585u, 86963u, 1u, 1u, 82431u, 4294967295u, 54764u, 12390u, 0u, 31024u, 11881u);

var<private> global2: Struct_2 = Struct_2(vec3<f32>(-354f, -1679f, 239f));

var<private> global3: u32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4) -> vec3<bool> {
    global3 = 1u;
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(global2.a)))))));
    var var_1 = vec2<f32>(var_0.a.x, -805f);
    global0 = false;
    var var_2 = Struct_1(select(!select(!vec2<bool>(true, arg_0.b), select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(arg_0.b, true), vec2<bool>(false, arg_0.c.c), vec2<bool>(false, false))), vec2<bool>(arg_0.b | all(vec2<bool>(true, arg_0.c.c)), _wgslsmith_div_f32(243f, global2.a.x) <= _wgslsmith_f_op_f32(global2.a.x + arg_0.a.x)), select(select(select(vec2<bool>(true, arg_0.c.c), vec2<bool>(false, arg_0.c.c), arg_0.b), select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.c.c, arg_0.c.c), vec2<bool>(false, arg_0.c.c)), any(vec3<bool>(true, true, arg_0.c.c))), select(vec2<bool>(true, true), select(vec2<bool>(true, arg_0.c.c), vec2<bool>(arg_0.b, arg_0.c.c), arg_0.c.c), select(vec2<bool>(true, arg_0.b), vec2<bool>(true, false), vec2<bool>(true, arg_0.b))), true)), u_input.c.yx, u_input.c, true, !(!select(select(vec2<bool>(arg_0.b, arg_0.c.c), vec2<bool>(false, false), vec2<bool>(arg_0.b, true)), vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.c.c, arg_0.b))));
    return vec3<bool>(any(select(vec4<bool>(var_2.d, arg_0.b, var_0.a.x >= 846f, select(var_2.e.x, arg_0.c.c, false)), !vec4<bool>(var_2.d, true, var_2.d, var_2.a.x), arg_0.c.c && select(var_2.a.x, true, false))), false, any(vec3<bool>(arg_0.c.c, (-1297f <= var_1.x) != true, true)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_5(Struct_4(global2.a.xz, any(func_3(Struct_4(global2.a.zz, true, Struct_3(11742u, Struct_2(global2.a), false)))), Struct_3(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.c.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11762u, 28u)], 28u)], global1[_wgslsmith_index_u32(21942u, 28u)]), 28u)], Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, -579f, global2.a.x))), false)), Struct_1(select(vec2<bool>(any(vec4<bool>(true, true, true, false)), true), vec2<bool>(true, true), func_3(Struct_4(vec2<f32>(global2.a.x, global2.a.x), true, Struct_3(0u, Struct_2(vec3<f32>(global2.a.x, 1615f, global2.a.x)), false))).x), ~u_input.c.yz, countOneBits(max(vec3<u32>(u_input.c.x, u_input.c.x, 17256u), vec3<u32>(30979u, global1[_wgslsmith_index_u32(u_input.b, 28u)], 4294967295u))), true, !vec2<bool>(u_input.a == u_input.a, true)), Struct_1(vec2<bool>(all(vec4<bool>(true, true, true, true)), true), vec2<u32>(_wgslsmith_add_u32(select(3420u, global1[_wgslsmith_index_u32(u_input.a, 28u)], false), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48151u, 28u)], 28u)]), _wgslsmith_dot_vec2_u32(u_input.c.xx, max(u_input.c.yz, u_input.c.yx))), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(1u, 28u)]), 28u)], 28u)], u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~u_input.a | 1u, 28u)], 28u)]), true == select(false, false, any(vec3<bool>(false, false, false))), !select(func_3(Struct_4(global2.a.yy, false, Struct_3(global1[_wgslsmith_index_u32(u_input.a, 28u)], Struct_2(vec3<f32>(global2.a.x, -1326f, 1978f)), true))).zx, vec2<bool>(true, true), true)), Struct_3(3208u, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(1000f * -1327f), 1f, _wgslsmith_f_op_f32(abs(-832f)))), true), -firstLeadingBit(firstTrailingBit(vec2<i32>(0i, u_input.e))));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.b.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1350f)) + -345f)), var_0.d.b.a.x), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.a.a.x)), var_0.d.b.a.x)) * var_0.a.c.b.a.x)), global2.a.x, var_0.d.b.a.x);
    var var_2 = Struct_1(select(vec2<bool>(var_0.a.c.c, !(var_0.d.c & var_0.b.e.x)), select(vec2<bool>(true, true), !var_0.c.a, vec2<bool>(false, true)), var_0.a.c.c), _wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(62365u & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 28u)]), u_input.b), firstTrailingBit(~var_0.b.b)), u_input.c, select(true, any(var_0.c.a) | false, var_0.a.b) | var_0.b.e.x, select(!var_0.b.a, select(!(!vec2<bool>(var_0.b.a.x, false)), select(select(var_0.c.a, vec2<bool>(true, var_0.a.c.c), vec2<bool>(var_0.c.d, false)), !vec2<bool>(var_0.c.d, var_0.d.c), !var_0.b.a), all(var_0.b.e)), select(!vec2<bool>(var_0.d.c, false), !vec2<bool>(var_0.a.b, false), all(select(vec2<bool>(var_0.c.a.x, var_0.a.c.c), var_0.c.e, true)))));
    let var_3 = Struct_4(global2.a.xx, all(!vec3<bool>(var_0.b.a.x, !var_0.b.d, !var_0.c.d)), Struct_3(~global1[_wgslsmith_index_u32(~0u, 28u)] << (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 28u)], 0u, u_input.b, 1222u), vec4<u32>(var_0.c.c.x, 2580u, 32909u, var_2.b.x)), firstTrailingBit(var_2.b.x)) % 32u), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.a.x, var_0.d.b.a.x, global2.a.x), var_1.yxw)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(379f, -1112f, 657f) - var_0.d.b.a))), all(!(!vec3<bool>(var_0.c.a.x, true, false)))));
    let var_4 = Struct_1(var_2.a, ~select(var_0.b.c.zy, vec2<u32>(0u, var_3.c.a), var_0.b.a) | _wgslsmith_div_vec2_u32(select(vec2<u32>(var_2.b.x, var_3.c.a), var_2.c.yx, var_0.d.c) >> (_wgslsmith_add_vec2_u32(var_2.b, var_2.c.xx) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(var_3.c.a, 4294967295u))), vec3<u32>(0u, 1u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(~1u, var_3.c.a), reverseBits(1u >> (var_0.c.c.x % 32u)))), var_3.b, vec2<bool>(!(true & all(vec3<bool>(var_2.a.x, var_3.c.c, var_2.a.x))), true));
    return var_0.d.b;
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = u_input.d;
    global1 = array<u32, 28>();
    global1 = array<u32, 28>();
    global2 = func_2();
    global3 = 0u;
    return -_wgslsmith_dot_vec2_i32(vec2<i32>(~max(-1i, u_input.d), _wgslsmith_mod_i32(reverseBits(-19119i), 1i)), vec2<i32>(-42590i, ~abs(u_input.e)));
}

fn func_4(arg_0: vec4<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(307f + global2.a.x)))))) - -1517f);
    let var_1 = Struct_5(Struct_4(_wgslsmith_f_op_vec2_f32(global2.a.zz * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-958f, var_0)))), !((-573f <= var_0) || true), Struct_3(u_input.b, func_2(), true)), Struct_1(vec2<bool>(func_3(Struct_4(global2.a.xz, false, Struct_3(u_input.a, Struct_2(vec3<f32>(var_0, 621f, 1717f)), true))).x, true), ~u_input.c.yz, max(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b, u_input.c.x), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, global1[_wgslsmith_index_u32(u_input.c.x, 28u)]), vec3<u32>(10126u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30843u, 28u)], 28u)], 28u)], 99089u))), firstLeadingBit(countOneBits(u_input.c))), true, !select(vec2<bool>(false, false), vec2<bool>(true, true), any(vec3<bool>(false, true, true)))), Struct_1(vec2<bool>(true, true), u_input.c.xy, u_input.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_div_f32(global2.a.x, -435f), true)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)), !select(vec2<bool>(true, false), vec2<bool>(true, false), u_input.c.x >= 26885u)), Struct_3(4294967295u, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(713f)), -2324f, -798f)), true), vec2<i32>(-(i32(-1i) * -13667i), select(-17865i, min(1i >> (u_input.a % 32u), u_input.e), select(all(vec3<bool>(true, false, true)), all(vec3<bool>(false, true, false)), false))));
    let var_2 = Struct_1(var_1.b.a, var_1.b.b, firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(abs(53454u), 28u)], u_input.b, global1[_wgslsmith_index_u32(1u, 28u)])), var_1.d.c, vec2<bool>(var_1.b.d, var_1.b.e.x));
    var var_3 = firstLeadingBit(4294967295u);
    var var_4 = Struct_5(Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.a + global2.a.yy) * var_1.a.a) * var_1.d.b.a.zx), true, Struct_3(~50556u | _wgslsmith_sub_u32(var_2.c.x, global1[_wgslsmith_index_u32(u_input.b, 28u)]), func_2(), var_1.b.e.x)), Struct_1(select(!vec2<bool>(true, var_1.d.c), vec2<bool>(0u >= u_input.b, true), select(!var_1.c.a, select(vec2<bool>(var_2.a.x, false), var_1.b.a, false), var_2.d & var_1.b.d)), vec2<u32>(select(~var_1.c.c.x, _wgslsmith_div_u32(28136u, var_1.d.a), true), ~var_1.a.c.a), min(_wgslsmith_mult_vec3_u32(var_1.b.c, min(var_2.c, vec3<u32>(var_2.b.x, var_2.c.x, var_2.c.x))), select(~vec3<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], 40750u, 5583u), countOneBits(var_2.c), any(vec3<bool>(true, true, var_1.c.a.x)))), var_2.e.x, func_3(var_1.a).zz), var_1.c, Struct_3(~global1[_wgslsmith_index_u32(0u, 28u)], var_1.a.c.b, false), -arg_0.zz);
    return vec3<bool>((false & var_1.c.a.x) & false, !(~reverseBits(var_2.c.x) == ~(global1[_wgslsmith_index_u32(46652u, 28u)] | u_input.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) - _wgslsmith_f_op_f32(f32(-1f) * -1982f)))) >= var_1.d.b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, 664f, 134f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-241f, 1038f, -779f))))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global2.a))))))));
    global1 = array<u32, 28>();
    let var_2 = false;
    let var_3 = var_2;
    let var_4 = !func_4(vec4<i32>(u_input.d, _wgslsmith_add_i32(u_input.e, 2147483647i), (u_input.e | -7539i) ^ u_input.d, ~func_1(17112i)));
    var var_5 = Struct_3(abs(4294967295u), func_2(), any(var_4));
    let var_6 = _wgslsmith_dot_vec4_u32(vec4<u32>(~4024u, firstLeadingBit(1u), var_5.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 28u)] | ~48125u) >> (vec4<u32>(21574u, _wgslsmith_div_u32(max(global1[_wgslsmith_index_u32(1u, 28u)], 4294967295u), var_5.a), global1[_wgslsmith_index_u32(abs(~u_input.b), 28u)], var_5.a) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mult_u32(4294967295u, ~4294967295u), global1[_wgslsmith_index_u32(32509u, 28u)] << (min(reverseBits(var_5.a), global1[_wgslsmith_index_u32(u_input.a, 28u)]) % 32u), 39319u, _wgslsmith_mult_u32(~(~85209u), min(~0u, 1u & u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(770u, 1u), ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(12484i, u_input.d, -2147483647i) | vec3<i32>(u_input.e, 36802i, -7799i), firstLeadingBit(vec3<i32>(79747i, u_input.e, -1i))), ~30306i, u_input.d), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(722f - global2.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -2185f)), _wgslsmith_sub_u32(abs(_wgslsmith_mult_u32(~var_6, 4294967295u)), 1u));
}

