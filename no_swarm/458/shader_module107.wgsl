struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(1i, 0i, -22045i), vec3<i32>(-1i, 2147483647i, 27134i), vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(0i, -28431i, -1i), vec3<i32>(-1i, -28646i, -5369i), vec3<i32>(-3769i, 41592i, -1i), vec3<i32>(2147483647i, -50700i, 1i), vec3<i32>(-1i, -1i, -11437i), vec3<i32>(7491i, 13451i, 0i), vec3<i32>(-26388i, -37875i, 2147483647i), vec3<i32>(0i, 0i, 0i), vec3<i32>(14480i, 26976i, 0i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)));

var<private> global1: array<i32, 30> = array<i32, 30>(29182i, -1i, -10927i, -16771i, 4906i, 1i, -1i, -21550i, -1i, -97934i, 2147483647i, 1i, i32(-2147483648), 48814i, 40633i, 0i, 5834i, -41126i, -58089i, -9632i, -1i, -1i, 2147483647i, -1i, 0i, 35315i, -54718i, -1i, 64371i, -38688i);

var<private> global2: array<i32, 6> = array<i32, 6>(21221i, 75820i, -37999i, 21633i, i32(-2147483648), -14209i);

var<private> global3: array<bool, 12>;

var<private> global4: bool = true;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<u32> {
    let var_0 = vec4<f32>(1396f, 419f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -665f) + _wgslsmith_f_op_f32(trunc(-537f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(max(1047f, -732f)))), -1115f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -850f) - _wgslsmith_f_op_f32(ceil(-739f)))));
    var var_1 = Struct_2(var_0.wyw, Struct_1(10670u), vec2<u32>(u_input.d, u_input.b));
    global1 = array<i32, 30>();
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(var_1.a + _wgslsmith_f_op_vec3_f32(var_0.wyy + var_0.wxx)), Struct_1(1u), ~_wgslsmith_div_vec2_u32(var_1.c, ~(~vec2<u32>(var_1.c.x, u_input.d))));
    return ~countOneBits(firstTrailingBit(~vec2<u32>(var_1.b.a, 1u)));
}

fn func_2() -> u32 {
    global3 = array<bool, 12>();
    let var_0 = Struct_1(max(_wgslsmith_mod_u32(~select(u_input.d, 57150u, true), _wgslsmith_mod_u32(4486u | u_input.b, u_input.d >> (u_input.d % 32u))), ~1u));
    global2 = array<i32, 6>();
    let var_1 = vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(0u, 44326u)) >> (vec2<u32>(0u, var_0.a) % vec2<u32>(32u)), func_3() | (vec2<u32>(27793u, 61509u) << (vec2<u32>(var_0.a, 34897u) % vec2<u32>(32u)))) << (countOneBits(54432u) % 32u), 12u)], -countOneBits(25414i) >= _wgslsmith_add_i32(-abs(21673i), global1[_wgslsmith_index_u32(var_0.a, 30u)]));
    let var_2 = _wgslsmith_div_vec4_i32(-min(vec4<i32>(-1i, firstLeadingBit(2147483647i), _wgslsmith_sub_i32(56625i, 29596i), ~(-40453i)), vec4<i32>(global1[_wgslsmith_index_u32(1u, 30u)], -47466i, 2147483647i, u_input.a.x) & ~vec4<i32>(global1[_wgslsmith_index_u32(17088u, 30u)], global2[_wgslsmith_index_u32(0u, 6u)], 13978i, u_input.a.x)), ~_wgslsmith_mult_vec4_i32(~select(vec4<i32>(2147483647i, u_input.c, global1[_wgslsmith_index_u32(38036u, 30u)], -7930i), vec4<i32>(u_input.a.x, 28044i, 39956i, global2[_wgslsmith_index_u32(1u, 6u)]), vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(u_input.d, 12u)])), vec4<i32>(-13206i, 18153i, global2[_wgslsmith_index_u32(1u, 6u)], -1i) & vec4<i32>(global1[_wgslsmith_index_u32(39017u, 30u)], global1[_wgslsmith_index_u32(43594u, 30u)], 2147483647i, global1[_wgslsmith_index_u32(17954u, 30u)])));
    return ~var_0.a;
}

fn func_4(arg_0: bool, arg_1: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1080f)))))) - _wgslsmith_f_op_f32(366f - 600f))));
    var var_1 = vec4<i32>(((~global1[_wgslsmith_index_u32(0u, 30u)] >> (~3935u % 32u)) & u_input.c) & min(-_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(0u, 6u)], -64769i), u_input.c), ~_wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-3738i, global1[_wgslsmith_index_u32(u_input.b, 30u)], global2[_wgslsmith_index_u32(u_input.b, 6u)], u_input.a.x), vec4<i32>(-1i, -2147483647i, u_input.a.x, 0i)), max(-global1[_wgslsmith_index_u32(arg_1, 30u)], -2147483647i)), u_input.a.x, max(global2[_wgslsmith_index_u32(4294967295u, 6u)], _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(-28991i, -27356i), global2[_wgslsmith_index_u32(0u, 6u)] << (u_input.d % 32u)), global2[_wgslsmith_index_u32(~(~130755u), 6u)])));
    var var_2 = Struct_1(func_3().x);
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-110f, _wgslsmith_f_op_f32(376f * var_0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)), -447f)), Struct_1(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 12277u) >> (vec2<u32>(arg_1, u_input.b) % vec2<u32>(32u))), vec2<u32>(var_2.a, var_2.a) & vec2<u32>(var_2.a, var_2.a))), abs(~vec2<u32>(var_2.a, var_2.a ^ arg_1)));
    var var_4 = ~(~(vec4<i32>(-1i) * -(vec4<i32>(15208i, -1i, global1[_wgslsmith_index_u32(0u, 30u)], var_1.x) | vec4<i32>(u_input.c, 1i, global1[_wgslsmith_index_u32(4294967295u, 30u)], u_input.a.x))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2396f))), _wgslsmith_f_op_f32(step(1083f, _wgslsmith_f_op_f32(var_0 * var_0))))), Struct_1(_wgslsmith_div_u32(reverseBits(0u), ~_wgslsmith_div_u32(var_2.a, 0u))), vec2<u32>(0u, var_2.a));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> Struct_1 {
    global2 = array<i32, 6>();
    global1 = array<i32, 30>();
    var var_0 = arg_0.b;
    var var_1 = !select(!select(!vec3<bool>(global3[_wgslsmith_index_u32(arg_0.c.x, 12u)], true, global3[_wgslsmith_index_u32(3225u, 12u)]), !vec3<bool>(false, true, global3[_wgslsmith_index_u32(arg_0.c.x, 12u)]), any(vec4<bool>(false, global3[_wgslsmith_index_u32(46573u, 12u)], false, false))), vec3<bool>(true, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(6285u << (0u % 32u), _wgslsmith_add_u32(u_input.d, 64091u)), 12u)], 670u >= countOneBits(arg_0.c.x)), vec3<bool>(true, any(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 12u)], false, true)), !global3[_wgslsmith_index_u32(select(arg_0.c.x, 4294967295u, global3[_wgslsmith_index_u32(1u, 12u)]), 12u)]));
    global0 = array<vec3<i32>, 13>();
    return Struct_1(43705u);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1139f))), -1184f, !(false & global3[_wgslsmith_index_u32(38503u, 12u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a.x - 507f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a.x, arg_1.a.x)) - _wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -919f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(min(1039f, 878f)), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(abs(arg_0.a.x))))) * vec4<f32>(func_4(true, ~u_input.d).a.x, 139f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(743f)) * _wgslsmith_f_op_f32(floor(arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-629f + arg_0.a.x)))));
    global3 = array<bool, 12>();
    var var_1 = arg_0;
    global2 = array<i32, 6>();
    let var_2 = func_5(arg_1, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(~(-23820i), global1[_wgslsmith_index_u32(4623u, 30u)]), firstLeadingBit(global1[_wgslsmith_index_u32(func_3().x, 30u)]), -1i) ^ u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - -2183f) + _wgslsmith_div_f32(var_0.x, var_1.a.x))));
    return arg_0;
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = func_6(Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1173f, 522f, 1044f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-590f, 837f, -403f) * vec3<f32>(-782f, 237f, -1142f)), vec3<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 12u)], false))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1481f, 254f, 388f)), _wgslsmith_div_vec3_f32(vec3<f32>(964f, -180f, -1000f), vec3<f32>(1169f, 594f, -1000f)))), func_5(func_4(true, func_2()), 42804i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(355f, -1757f, global3[_wgslsmith_index_u32(0u, 12u)])) - _wgslsmith_f_op_f32(-309f + -2026f))), max(vec2<u32>(_wgslsmith_mod_u32(6713u, u_input.d), u_input.b), max(vec2<u32>(u_input.d, arg_0.a), vec2<u32>(30811u, 93557u)))), Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(963f, 2205f, -1577f), vec3<f32>(-931f, -207f, -637f), vec3<bool>(global3[_wgslsmith_index_u32(arg_0.a, 12u)], global3[_wgslsmith_index_u32(3486u, 12u)], global3[_wgslsmith_index_u32(5443u, 12u)]))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-103f, -1729f, -1000f))), func_5(func_4(!global3[_wgslsmith_index_u32(4476u, 12u)], ~arg_0.a), countOneBits(-16666i), -757f), vec2<u32>(4294967295u, func_2())));
    let var_1 = var_0;
    global2 = array<i32, 6>();
    var var_2 = select(vec2<bool>(false, _wgslsmith_f_op_f32(min(-1254f, _wgslsmith_f_op_f32(max(var_0.a.x, var_1.a.x)))) < -115f), !select(vec2<bool>(any(vec4<bool>(true, global3[_wgslsmith_index_u32(arg_0.a, 12u)], global3[_wgslsmith_index_u32(1u, 12u)], false)), true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 12u)])), true), vec2<bool>(true, true));
    let var_3 = -2147483647i;
    return ~10896u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -521f));
    var var_1 = Struct_1(u_input.b);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -149f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -560f)))));
    var_1 = Struct_1(func_1(Struct_1(1u)));
    let var_3 = ~(abs(vec3<u32>(var_1.a, ~4294967295u, firstLeadingBit(12224u))) & firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a, var_1.a, u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, var_1.a, 101360u), vec3<u32>(var_1.a, u_input.b, 41724u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-691f * var_2), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_2)), _wgslsmith_f_op_f32(floor(-169f))))), var_2, _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(var_2 * var_2)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(290f, -1093f, -882f, var_2)), vec4<f32>(var_2, 744f, var_2, var_2), !vec4<bool>(true, global3[_wgslsmith_index_u32(64905u, 12u)], global3[_wgslsmith_index_u32(var_1.a, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)]))))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-307f + -1049f), _wgslsmith_f_op_f32(select(var_2, 967f, false)), -1165f, _wgslsmith_f_op_f32(step(-737f, -557f)))))), abs(var_3.yx));
}

