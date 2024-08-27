struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(4294967295u, 1u, 16380u), vec3<u32>(43680u, 0u, 0u), vec3<u32>(1u, 1u, 9959u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(40424u, 1u, 12034u), vec3<u32>(49807u, 63477u, 18766u), vec3<u32>(9828u, 64189u, 1u), vec3<u32>(48042u, 6948u, 35147u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, 50268u, 1659u), vec3<u32>(27596u, 28851u, 0u), vec3<u32>(4294967295u, 15483u, 4294967295u), vec3<u32>(0u, 120785u, 0u), vec3<u32>(61178u, 57148u, 7622u), vec3<u32>(1u, 85303u, 1u), vec3<u32>(34783u, 107009u, 4294967295u), vec3<u32>(11100u, 28125u, 80388u), vec3<u32>(115282u, 0u, 1u), vec3<u32>(6082u, 47057u, 49295u), vec3<u32>(118853u, 1u, 1u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 39224u, 41494u), vec3<u32>(0u, 4294967295u, 8259u), vec3<u32>(1203u, 0u, 0u), vec3<u32>(33105u, 1u, 26380u), vec3<u32>(374u, 12435u, 62302u), vec3<u32>(20341u, 66321u, 4294967295u), vec3<u32>(98978u, 1u, 1u), vec3<u32>(81239u, 37881u, 1u));

var<private> global1: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = u_input.a;
    var var_1 = -(_wgslsmith_sub_i32(u_input.b, u_input.b) | _wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.b, u_input.b)), vec2<i32>(reverseBits(35781i), _wgslsmith_dot_vec3_i32(vec3<i32>(9491i, u_input.b, -20764i), vec3<i32>(-12771i, 19152i, u_input.b)))));
    global0 = array<vec3<u32>, 29>();
    let var_2 = Struct_1(!global1.a, !vec2<bool>(!global1.a.x, _wgslsmith_f_op_f32(select(arg_0.e, arg_0.e, true)) < _wgslsmith_f_op_f32(max(-489f, arg_0.e))), ~(~_wgslsmith_sub_vec2_u32(~arg_0.c, global1.c)), global1.d, global1.e);
    var_1 = ~(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, -1i, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(-23790i, 2147483647i, u_input.b, u_input.b), vec4<i32>(u_input.b, -21905i, -1i, u_input.b))));
    return !(_wgslsmith_dot_vec3_u32(vec3<u32>(0u ^ arg_0.c.x, countOneBits(0u), _wgslsmith_mult_u32(32908u, global1.c.x)), vec3<u32>(var_2.c.x, ~10002u, u_input.a ^ 4294967295u)) > var_2.c.x);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = -1193f;
    global0 = array<vec3<u32>, 29>();
    global1 = arg_0;
    global0 = array<vec3<u32>, 29>();
    var var_1 = Struct_1(vec3<bool>(func_3(arg_0), select(_wgslsmith_f_op_f32(global1.e * -348f) >= _wgslsmith_f_op_f32(ceil(global1.e)), !(-41342i < u_input.b), false), arg_0.e <= 873f), vec2<bool>(arg_0.b.x, !(!arg_0.a.x)), min(abs(global1.c), vec2<u32>(global1.c.x, 7144u) & ~min(vec2<u32>(arg_0.c.x, 4294967295u), vec2<u32>(global1.c.x, 8675u))), func_3(Struct_1(select(vec3<bool>(arg_0.a.x, true, false), select(vec3<bool>(arg_0.a.x, true, arg_0.a.x), vec3<bool>(arg_0.a.x, false, global1.b.x), vec3<bool>(global1.a.x, global1.a.x, global1.b.x)), global1.a.x | arg_0.d), global1.b, arg_0.c, _wgslsmith_div_f32(var_0, arg_0.e) == _wgslsmith_f_op_f32(global1.e + arg_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e * -1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_0)))));
    return Struct_1(select(vec3<bool>(global1.a.x, true, global1.b.x), arg_0.a, !(true & !global1.d)), select(arg_0.a.zx, select(select(vec2<bool>(false, arg_0.b.x), select(vec2<bool>(false, false), vec2<bool>(true, global1.a.x), global1.b), vec2<bool>(false, arg_0.b.x)), arg_0.a.xx, _wgslsmith_f_op_f32(var_0 * global1.e) <= var_0), true), ~min(vec2<u32>(u_input.a & 0u, ~var_1.c.x), global1.c), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1674f - var_1.e) - _wgslsmith_f_op_f32(f32(-1f) * -1177f)), -766f))));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> i32 {
    global0 = array<vec3<u32>, 29>();
    let var_0 = arg_0;
    let var_1 = -vec4<i32>(u_input.b, -19630i, ~u_input.b, 0i);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(603f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1617f * var_0.e))))));
    let var_3 = select(_wgslsmith_sub_vec3_u32(min(global0[_wgslsmith_index_u32(9212u, 29u)], _wgslsmith_mult_vec3_u32(~global0[_wgslsmith_index_u32(61952u, 29u)], global0[_wgslsmith_index_u32(firstLeadingBit(var_0.c.x), 29u)])), firstLeadingBit(_wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(var_0.c.x, 29u)] << (global0[_wgslsmith_index_u32(63423u, 29u)] % vec3<u32>(32u)), global0[_wgslsmith_index_u32(17148u, 29u)]))), ~(~(~vec3<u32>(4294967295u, 33477u, global1.c.x))), arg_0.b.x != func_2(arg_0).a.x);
    return -1261i;
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = ~(~vec2<i32>(func_4(func_2(Struct_1(vec3<bool>(false, global1.b.x, global1.b.x), vec2<bool>(false, true), vec2<u32>(1u, 61626u), global1.d, global1.e)), arg_1), -44297i >> (u_input.a % 32u)));
    var var_1 = func_2(func_2(func_2(Struct_1(!global1.a, global1.a.yy, global1.c, true, _wgslsmith_f_op_f32(round(-951f))))));
    let var_2 = func_2(Struct_1(!(!global1.a), func_2(Struct_1(vec3<bool>(false, var_1.b.x, var_1.b.x), select(var_1.b, vec2<bool>(true, true), vec2<bool>(false, false)), ~vec2<u32>(var_1.c.x, 35298u), false, -1231f)).a.zy, vec2<u32>(0u, u_input.a), func_3(Struct_1(!var_1.a, select(global1.a.yx, vec2<bool>(false, global1.d), vec2<bool>(global1.d, false)), var_1.c, any(vec3<bool>(var_1.b.x, false, var_1.b.x)), _wgslsmith_f_op_f32(1166f + -1466f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(167f))))));
    let var_3 = vec4<u32>(_wgslsmith_add_u32(~min(var_1.c.x << (global1.c.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_1.c.x, 58580u), global0[_wgslsmith_index_u32(76931u, 29u)])), _wgslsmith_mod_u32(1u, ~max(var_1.c.x, 4294967295u))), ~_wgslsmith_div_u32(1u, var_1.c.x), _wgslsmith_mult_u32(global1.c.x, u_input.a), var_2.c.x & ~(_wgslsmith_sub_u32(global1.c.x, 81605u) >> (1u % 32u)));
    var_0 = reverseBits(abs(firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 30922i), vec2<i32>(arg_0, var_0.x)))) & vec2<i32>(arg_0, arg_1));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(-u_input.b, _wgslsmith_clamp_i32(-7576i, ~(~2147483647i), u_input.b));
    var var_0 = 460f;
    let var_1 = select(func_2(Struct_1(!global1.a, !select(global1.a.xz, vec2<bool>(false, false), global1.a.x), func_1(u_input.b << (u_input.a % 32u), -u_input.b).c, false, 1158f)).a, !(!vec3<bool>(any(global1.b), true, -866f >= global1.e)), global1.a.x);
    global1 = func_2(Struct_1(!(!(!vec3<bool>(false, global1.d, false))), vec2<bool>(!any(var_1.yx), false), vec2<u32>(u_input.a, 0u), func_1(i32(-1i) * -2147483647i, -2147483647i).b.x, -1023f));
    let var_2 = _wgslsmith_mod_vec4_u32((vec4<u32>(_wgslsmith_mult_u32(1358u, 68227u), 12118u, 31953u | u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(76174u, 0u), global1.c)) ^ countOneBits(~vec4<u32>(36448u, global1.c.x, 28378u, u_input.a))) & vec4<u32>(~u_input.a, 50712u, ~(~u_input.a), u_input.a), ~(~(vec4<u32>(global1.c.x, global1.c.x, global1.c.x, 4294967295u) | vec4<u32>(global1.c.x, u_input.a, global1.c.x, 4294967295u)) & vec4<u32>(u_input.a, global1.c.x, 0u, ~0u)));
    var var_3 = func_2(func_1(_wgslsmith_div_i32(_wgslsmith_clamp_i32(~(-13117i), u_input.b, ~u_input.b), (u_input.b | 3874i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 2147483647i))), reverseBits(_wgslsmith_add_i32(2147483647i, func_4(Struct_1(vec3<bool>(true, true, var_1.x), var_1.zz, vec2<u32>(4294967295u, global1.c.x), false, 1355f), u_input.b)))));
    var var_4 = Struct_1(vec3<bool>(true, ~(~var_3.c.x) <= (min(global1.c.x, u_input.a) >> (abs(44870u) % 32u)), var_3.b.x), !(!select(var_3.a.yz, vec2<bool>(false, false), func_1(u_input.b, u_input.b).a.yz)), vec2<u32>(var_3.c.x, 1u), !var_3.d || !func_2(Struct_1(var_1, var_1.zz, vec2<u32>(0u, 0u), global1.a.x, 1822f)).a.x, 385f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~u_input.b, _wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.b, -28529i, u_input.b) & vec3<i32>(8378i, u_input.b, u_input.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, 42776i, 20162i)) | firstLeadingBit(vec3<i32>(u_input.b, 9642i, 1i)))), firstLeadingBit(u_input.b), ~abs(var_2.x), func_1(13097i, ~u_input.b).e, vec2<u32>(~20246u, _wgslsmith_mult_u32(_wgslsmith_div_u32(52995u, 33162u), var_3.c.x)));
}

