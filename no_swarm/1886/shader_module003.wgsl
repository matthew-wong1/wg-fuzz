struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global1: vec2<u32>;

var<private> global2: bool;

var<private> global3: array<bool, 32> = array<bool, 32>(true, false, false, false, false, true, false, true, false, true, true, true, true, true, true, false, false, false, false, true, true, false, false, false, false, true, true, false, false, false, false, false);

var<private> global4: vec4<u32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: f32) -> vec3<f32> {
    var var_0 = vec3<u32>(select(max(~global1.x, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.x, 4294967295u, 1u), vec4<u32>(8313u, 1u, u_input.a, global1.x)))), ~(~_wgslsmith_mod_u32(70796u, 1u)), true), ~0u, 18610u);
    let var_1 = max(~(_wgslsmith_div_vec4_u32(vec4<u32>(global4.x, global4.x, var_0.x, global1.x), ~vec4<u32>(global4.x, var_0.x, var_0.x, 88594u)) & ~(~vec4<u32>(81571u, global1.x, global1.x, 15713u))), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(0u, 9698u, 1u, global4.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(var_0.x, 4294967295u, u_input.a, 6697u), ~vec4<u32>(4294967295u, u_input.a, 29526u, global1.x))), vec4<u32>(31237u, _wgslsmith_clamp_u32(~75080u, abs(global4.x), 4294967295u), ~(~8340u), u_input.a)));
    var var_2 = ~countOneBits(~var_0.x);
    var var_3 = Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_1, _wgslsmith_mult_vec4_u32(~(vec4<u32>(19503u, 0u, 42152u, 65283u) ^ vec4<u32>(global1.x, global4.x, 77622u, global4.x)), vec4<u32>(var_1.x, u_input.a, u_input.a, 0u) ^ (var_1 & vec4<u32>(1u, global4.x, 31367u, 43429u)))), 32u)], vec4<u32>(~abs(_wgslsmith_dot_vec2_u32(var_0.yy, global4.zy)), abs(17617u), u_input.a, 1u), select(!vec4<bool>(!global3[_wgslsmith_index_u32(20038u, 32u)], false, false, global0.x), vec4<bool>(global3[_wgslsmith_index_u32(reverseBits(var_0.x), 32u)], global3[_wgslsmith_index_u32(49067u, 32u)], all(select(vec4<bool>(global0.x, false, true, false), vec4<bool>(true, global0.x, false, true), vec4<bool>(global0.x, true, false, false))), !global3[_wgslsmith_index_u32(1u, 32u)]), vec4<bool>(_wgslsmith_sub_i32(u_input.b, -27302i) <= -u_input.b, true, select(global3[_wgslsmith_index_u32(u_input.a, 32u)], global3[_wgslsmith_index_u32(~global1.x, 32u)], global3[_wgslsmith_index_u32(82727u, 32u)]), false)), vec3<i32>(select(_wgslsmith_clamp_i32(~u_input.d.x, abs(10678i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.b, u_input.c.x), vec3<i32>(2147483647i, u_input.b, 12854i))), i32(-1i) * -1i, true), _wgslsmith_sub_i32(9013i, _wgslsmith_div_i32(abs(1i), u_input.c.x)), 19332i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, 35249i, -66596i), -vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.d.x))));
    global0 = select(vec4<bool>(false, var_3.a, all(vec3<bool>(true, select(false, var_3.a, var_3.c.x), global3[_wgslsmith_index_u32(~global4.x, 32u)])), false), select(var_3.c, vec4<bool>(any(var_3.c.zxy), global3[_wgslsmith_index_u32(1u, 32u)], _wgslsmith_f_op_f32(-1000f * arg_0) < 693f, -2399f <= arg_0), true), var_3.c);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(119f, 1050f, global0.x)) + _wgslsmith_f_op_f32(trunc(262f))))), -316f, arg_1));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    let var_0 = false;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-424f, arg_0, arg_0), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(arg_0, 183f), -1763f, arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(193f, arg_0, 866f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 1000f))), vec3<f32>(_wgslsmith_f_op_f32(-644f - arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 * arg_0)))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)) * var_1.x), _wgslsmith_f_op_f32(477f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 615f) + _wgslsmith_div_f32(arg_0, arg_0)))), var_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1289f)))));
    let var_3 = u_input.c.x;
    var_1 = _wgslsmith_f_op_vec3_f32(step(var_2.ywx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1385f - var_1.x))), -191f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -400f, var_2.x))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))));
}

fn func_1() -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(1f, Struct_1(true, vec4<u32>(global1.x, global1.x, 57905u, 71473u) ^ vec4<u32>(u_input.a, 1u, 0u, global4.x), select(vec4<bool>(global3[_wgslsmith_index_u32(17243u, 32u)], global3[_wgslsmith_index_u32(u_input.a, 32u)], global0.x, global0.x), vec4<bool>(true, true, global3[_wgslsmith_index_u32(90683u, 32u)], global3[_wgslsmith_index_u32(global4.x, 32u)]), false), -vec3<i32>(u_input.c.x, 0i, u_input.b)), select(select(global0.xxy, vec3<bool>(false, global3[_wgslsmith_index_u32(global1.x, 32u)], false), global0.yyy), global0.zyz, global0.x))) + -289f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(592f))) * 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1065f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-251f * 1355f))))));
    var var_1 = 1f;
    var var_2 = ~(-(i32(-1i) * -2147483647i));
    global0 = vec4<bool>(!global3[_wgslsmith_index_u32(~global1.x | ~global1.x, 32u)] | global3[_wgslsmith_index_u32(3822u, 32u)], !(false | all(vec2<bool>(true, true))), all(!(!vec2<bool>(true, global3[_wgslsmith_index_u32(global4.x, 32u)]))), true && all(select(select(vec2<bool>(false, true), global0.zz, global0.zz), global0.ww, select(vec2<bool>(false, true), global0.yy, vec2<bool>(global3[_wgslsmith_index_u32(61941u, 32u)], false)))));
    var_1 = _wgslsmith_f_op_f32(-var_0.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-753f * 702f), 1099f)), Struct_1(any(vec3<bool>(false, global0.x, global3[_wgslsmith_index_u32(0u, 32u)])) && all(vec4<bool>(true, global0.x, global0.x, false)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global4.x, 7489u, global1.x, 25873u), vec4<u32>(1u, global1.x, u_input.a, 15777u), vec4<u32>(u_input.a, u_input.a, global1.x, 1u)) << (abs(vec4<u32>(global1.x, 65965u, u_input.a, 4294967295u)) % vec4<u32>(32u)), vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global4.x, u_input.a), 32u)], true, false, global0.x), _wgslsmith_div_vec3_i32(u_input.d, ~u_input.d)), select(!select(vec3<bool>(global3[_wgslsmith_index_u32(0u, 32u)], global0.x, global3[_wgslsmith_index_u32(global4.x, 32u)]), global0.xzy, global3[_wgslsmith_index_u32(u_input.a, 32u)]), !select(vec3<bool>(false, global3[_wgslsmith_index_u32(38625u, 32u)], global0.x), global0.zwz, vec3<bool>(false, global3[_wgslsmith_index_u32(global1.x, 32u)], global3[_wgslsmith_index_u32(global1.x, 32u)])), -u_input.c.x != 1i))) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(sign(var_0.x))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_1 {
    global1 = vec2<u32>(global4.x, global4.x);
    let var_0 = ~(~(~(global4.x << (global1.x % 32u))));
    global0 = select(vec4<bool>(global3[_wgslsmith_index_u32(~var_0, 32u)], true, true, select(all(select(global0.wyw, vec3<bool>(true, false, true), true)), 24230u == _wgslsmith_sub_u32(u_input.a, var_0), _wgslsmith_mod_i32(u_input.b, -2147483647i) >= u_input.d.x)), select(vec4<bool>(false, !(!global0.x), true & global0.x, true), select(vec4<bool>(true, false, global3[_wgslsmith_index_u32(59042u, 32u)], false), !vec4<bool>(global0.x, false, global0.x, true), global0.x == all(global0.yzx)), select(vec4<bool>(true, !global0.x, global3[_wgslsmith_index_u32(~global4.x, 32u)], global3[_wgslsmith_index_u32(reverseBits(global4.x), 32u)]), vec4<bool>(true, any(vec4<bool>(global0.x, global0.x, true, true)), global3[_wgslsmith_index_u32(var_0, 32u)] && true, true), false)), !(!vec4<bool>(global0.x & global3[_wgslsmith_index_u32(0u, 32u)], any(global0.wz), true, !global3[_wgslsmith_index_u32(12199u, 32u)])));
    var var_1 = Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, select(reverseBits(_wgslsmith_clamp_u32(global1.x, 53123u, u_input.a)), 5064u, true)), 32u)], ~firstLeadingBit(min(reverseBits(vec4<u32>(global4.x, var_0, global1.x, u_input.a)), abs(vec4<u32>(u_input.a, 64037u, 68058u, 75264u)))), select(vec4<bool>(false, true, all(global0.wwz), _wgslsmith_mult_i32(arg_1.x, -39525i) <= max(-21247i, u_input.c.x)), !select(vec4<bool>(false, false, true, true), vec4<bool>(global3[_wgslsmith_index_u32(15740u, 32u)], global3[_wgslsmith_index_u32(0u, 32u)], false, false), vec4<bool>(true, true, true, true)), select(!select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(global0.x, global3[_wgslsmith_index_u32(var_0, 32u)], false, false), vec4<bool>(global3[_wgslsmith_index_u32(0u, 32u)], false, true, global0.x)), select(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 32u)], false, false, true), select(vec4<bool>(global0.x, false, true, global3[_wgslsmith_index_u32(13541u, 32u)]), vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(5101u, 32u)]), true), vec4<bool>(global0.x, global0.x, true, global3[_wgslsmith_index_u32(var_0, 32u)])), true)), vec3<i32>(arg_1.x, _wgslsmith_add_i32(arg_1.x, countOneBits(u_input.d.x)), -2147483647i));
    var var_2 = Struct_1(!(global0.x && false), ~(~_wgslsmith_mod_vec4_u32(~var_1.b, min(var_1.b, var_1.b))), !vec4<bool>(arg_0.x >= arg_0.x, true, true, all(select(vec3<bool>(false, true, false), global0.zyz, false))), var_1.d | arg_1.zwx);
    return Struct_1(true, vec4<u32>(firstTrailingBit(abs(~4294967295u)), 4294967295u, 13272u, 36447u), var_1.c, firstTrailingBit(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_1.d.x, arg_1.x), vec3<i32>(-1i, u_input.c.x, -2147483647i)), abs(u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-min(u_input.c.x | 1i, u_input.b), u_input.d.x, -45661i) & vec3<i32>(1i, u_input.b, u_input.b);
    var var_1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - -660f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-422f, _wgslsmith_f_op_f32(f32(-1f) * -950f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(848f + 294f))))), ~firstLeadingBit(u_input.c));
    global2 = true;
    var var_2 = Struct_1(var_0.x != -u_input.b, ~var_1.b, vec4<bool>(any(global0.zy), _wgslsmith_f_op_f32(f32(-1f) * -826f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-749f, 468f)) * 102f), select(false, !global0.x, true) || any(func_4(vec3<f32>(-494f, 1107f, 1616f), vec4<i32>(var_0.x, u_input.c.x, -96693i, 18974i)).c.xx), all(vec2<bool>(true, true))), ~(~(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, 1i, 0i), var_1.d) >> (var_1.b.ywz % vec3<u32>(32u)))));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1179f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1386f - 258f) + _wgslsmith_f_op_f32(1000f + -1459f))), 401f)));
    let var_4 = 453f;
    let var_5 = min(_wgslsmith_mod_vec2_i32(func_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-423f, var_4, var_4), vec3<f32>(var_4, -806f, var_4))), u_input.c).d.zz, select(vec2<i32>(u_input.d.x, var_1.d.x), vec2<i32>(u_input.c.x, u_input.b), var_1.c.xy)), var_1.d.yz) | _wgslsmith_mod_vec2_i32(u_input.c.zx, u_input.c.wx);
    var var_6 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1066f, var_4, 1201f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(1009f, var_4, -976f), vec3<f32>(-1033f, var_4, -2355f)))), true)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(534f, var_4, -1000f) - vec3<f32>(var_4, var_4, 1568f)))))), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_4, ~abs(vec4<i32>(_wgslsmith_mod_i32(0i, var_2.d.x), var_6.d.x, -u_input.d.x, 16553i)), vec3<i32>(0i, var_1.d.x, -8556i));
}

