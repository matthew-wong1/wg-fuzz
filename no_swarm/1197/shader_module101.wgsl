struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: u32;

var<private> global2: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(16529u, 1u, 26660u), vec3<u32>(29630u, 0u, 1u), vec3<u32>(103127u, 4294967295u, 4294967295u), vec3<u32>(18418u, 17785u, 50870u), vec3<u32>(0u, 32795u, 34202u), vec3<u32>(0u, 26012u, 4294967295u), vec3<u32>(45063u, 8373u, 1u), vec3<u32>(278u, 4227u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 23609u), vec3<u32>(39640u, 4294967295u, 38241u), vec3<u32>(0u, 34823u, 0u), vec3<u32>(1u, 4294967295u, 10326u), vec3<u32>(1u, 0u, 0u), vec3<u32>(14751u, 44540u, 4294967295u));

var<private> global3: array<u32, 32> = array<u32, 32>(0u, 47286u, 32231u, 92805u, 4294967295u, 1u, 0u, 78388u, 74134u, 33869u, 16384u, 70542u, 1u, 4294967295u, 0u, 1u, 0u, 1u, 48495u, 41628u, 12446u, 26893u, 64447u, 0u, 63u, 0u, 99413u, 0u, 60281u, 14640u, 0u, 4294967295u);

var<private> global4: vec2<f32> = vec2<f32>(-446f, 279f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = min(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global3[_wgslsmith_index_u32(52085u, 32u)] | global3[_wgslsmith_index_u32(0u, 32u)], firstLeadingBit(18378u), arg_0.e.x | global3[_wgslsmith_index_u32(arg_0.e.x, 32u)], ~global3[_wgslsmith_index_u32(4294967295u, 32u)])), abs(~abs(vec4<u32>(arg_0.e.x, global3[_wgslsmith_index_u32(55601u, 32u)], arg_0.e.x, 4294967295u)))), 1u);
    var var_1 = arg_0;
    var var_2 = Struct_1(556f, vec4<i32>(var_1.b.x, -abs(~u_input.a), ~arg_0.b.x, var_1.b.x), vec2<bool>(select(global0.x, (0u >> (global3[_wgslsmith_index_u32(0u, 32u)] % 32u)) != 0u, arg_0.d.x), var_1.d.x), select(select(arg_0.d, vec3<bool>(var_1.d.x, var_1.d.x, true), vec3<bool>(any(arg_0.d), arg_0.c.x, global0.x)), select(select(var_1.d, arg_0.d, global0.x), vec3<bool>(arg_0.d.x, true, true), -arg_0.b.x == _wgslsmith_add_i32(-2147483647i, 3873i)), !vec3<bool>(true, 19812i <= u_input.b, true)), arg_0.e ^ ~var_1.e);
    var_0 = _wgslsmith_div_u32(~(~59624u ^ _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(var_1.e.x, 15u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 32u)], 15u)]), reverseBits(46523u))), 0u);
    let var_3 = var_2.b.x;
    return _wgslsmith_f_op_f32(484f * var_1.a);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    global1 = 1u;
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(71092u), countOneBits(_wgslsmith_sub_u32(32430u, _wgslsmith_sub_u32(1u, arg_1.e.x))), reverseBits(_wgslsmith_sub_u32(12765u, arg_1.e.x)) & ~(~42407u), ~_wgslsmith_mod_u32(~4294967295u, ~arg_0)), _wgslsmith_sub_vec4_u32(vec4<u32>(820u, ~arg_0, abs(4294967295u), _wgslsmith_sub_u32(arg_0, arg_1.e.x)), vec4<u32>(reverseBits(28116u), 16754u, ~global3[_wgslsmith_index_u32(arg_2.e.x, 32u)], arg_1.e.x)) ^ vec4<u32>(global3[_wgslsmith_index_u32(firstLeadingBit(global3[_wgslsmith_index_u32(arg_0, 32u)] ^ 1u), 32u)], arg_2.e.x, global3[_wgslsmith_index_u32(arg_0, 32u)], ~0u));
    let var_1 = min(vec2<i32>(reverseBits(-u_input.b) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.e.x, arg_2.e.x, 16188u, var_0.x) | vec4<u32>(global3[_wgslsmith_index_u32(28673u, 32u)], 4294967295u, 50231u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_0, global3[_wgslsmith_index_u32(var_0.x, 32u)], arg_2.e.x), vec4<u32>(arg_0, 4294967295u, 4294967295u, var_0.x))) % 32u), 0i), arg_2.b.wx);
    let var_2 = -576f;
    let var_3 = ~arg_1.b.yz;
    return select(select(select(arg_2.d, !arg_1.d, any(!vec3<bool>(arg_2.d.x, false, arg_2.d.x))), select(!vec3<bool>(arg_2.d.x, arg_1.d.x, arg_1.d.x), !select(arg_1.d, arg_2.d, false), !(true & arg_2.d.x)), any(vec3<bool>(true, true, global4.x < 1549f))), !select(!vec3<bool>(arg_2.d.x, global0.x, true), vec3<bool>(-836f != global4.x, false, all(vec3<bool>(false, global0.x, false))), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x, arg_2.e.x), 32u)] == (arg_0 | 85015u)), !select(!select(arg_2.d, arg_1.d, arg_1.d), select(select(arg_2.d, vec3<bool>(arg_2.c.x, true, global0.x), false), vec3<bool>(arg_2.d.x, arg_2.d.x, true), arg_1.d), arg_1.d));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = true;
    global3 = array<u32, 32>();
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(f32(-1f) * -774f)), -arg_0.b, global0.yy, select(vec3<bool>(global0.x, select(global0.x, true, arg_0.c.x), !select(true, var_0, true)), func_4(max(89443u, ~2668u), Struct_1(_wgslsmith_f_op_f32(736f + -1274f), vec4<i32>(2147483647i, -1i, -334i, u_input.b), vec2<bool>(var_0, global0.x), !vec3<bool>(false, false, var_0), _wgslsmith_sub_vec2_u32(arg_0.e, vec2<u32>(1520u, global3[_wgslsmith_index_u32(46425u, 32u)]))), Struct_1(_wgslsmith_f_op_f32(func_3(arg_0, 849f)), vec4<i32>(2147483647i, -2147483647i, -1i, 2147483647i), global0.yx, select(vec3<bool>(var_0, var_0, false), arg_0.d, vec3<bool>(arg_0.d.x, true, false)), vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 32u)], 49130u))), !(2147483647i >= _wgslsmith_div_i32(48661i, u_input.b))), vec2<u32>(4294967295u, _wgslsmith_div_u32(arg_0.e.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], global3[_wgslsmith_index_u32(85293u, 32u)]), 2928u))));
    var_1 = arg_0;
    return var_1.a;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_1(-436f, ~vec4<i32>(select(i32(-1i) * -2147483647i, 29672i, false), -11193i, select(u_input.b, 2330i, func_4(125218u, Struct_1(global4.x, vec4<i32>(2147483647i, u_input.b, u_input.b, 0i), vec2<bool>(false, true), vec3<bool>(false, global0.x, arg_1), vec2<u32>(global3[_wgslsmith_index_u32(21982u, 32u)], global3[_wgslsmith_index_u32(1u, 32u)])), Struct_1(arg_0, vec4<i32>(1i, -59362i, 25449i, u_input.b), global0.yx, vec3<bool>(false, true, arg_1), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 3235u))).x), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -5671i), -vec2<i32>(1i, u_input.b))), vec2<bool>(((global3[_wgslsmith_index_u32(4294967295u, 32u)] << (0u % 32u)) | 4294967295u) == global3[_wgslsmith_index_u32(~1u, 32u)], global0.x), !(!(!select(vec3<bool>(true, global0.x, true), vec3<bool>(arg_1, false, true), true))), ~abs(abs(vec2<u32>(global3[_wgslsmith_index_u32(60582u, 32u)], 39052u))));
    return Struct_1(_wgslsmith_div_f32(1946f, arg_0), vec4<i32>(firstLeadingBit(-max(13356i, u_input.a)), ~(~(~u_input.a)), select(var_0.b.x, -1i, global0.x), u_input.b), vec2<bool>(true, !arg_1), select(vec3<bool>(all(!vec4<bool>(var_0.d.x, global0.x, arg_1, true)), select(arg_1, arg_1, var_0.a <= var_0.a), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(var_0.e.x, 32u)], 0u), 32u)] >= 11882u), vec3<bool>(!arg_1, any(var_0.d), !arg_1), !vec3<bool>(var_0.c.x, !var_0.d.x, any(vec4<bool>(false, arg_1, true, arg_1)))), _wgslsmith_mod_vec2_u32(~(_wgslsmith_mult_vec2_u32(var_0.e, var_0.e) ^ (vec2<u32>(40692u, 4294967295u) >> (var_0.e % vec2<u32>(32u)))), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(26065u, 15u)], global2[_wgslsmith_index_u32(var_0.e.x, 15u)]), 1u), firstTrailingBit(~vec2<u32>(24709u, global3[_wgslsmith_index_u32(var_0.e.x, 32u)])))));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> f32 {
    global0 = !select(vec3<bool>(global0.x, true, global0.x), !vec3<bool>(any(vec3<bool>(false, true, global0.x)), all(global0.zz), global0.x), true);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(round(-736f))), -(firstLeadingBit(-vec4<i32>(u_input.b, 26489i, 0i, u_input.a)) | countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -17776i, -27968i, -77049i), vec4<i32>(u_input.a, -12267i, u_input.a, u_input.a)))), global0.yx, !select(select(select(vec3<bool>(true, false, false), vec3<bool>(arg_1, arg_1, true), vec3<bool>(global0.x, global0.x, false)), vec3<bool>(true, true, arg_1), true), !select(vec3<bool>(global0.x, global0.x, arg_1), vec3<bool>(true, true, false), true), select(20442u == arg_0.x, any(vec4<bool>(global0.x, arg_1, true, arg_1)), false)), arg_0.xx);
    global3 = array<u32, 32>();
    global0 = var_0.d;
    var var_1 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_f_op_f32(floor(var_0.a)), -vec4<i32>(var_0.b.x, var_0.b.x, -2147483647i, -40467i), select(global0.zx, vec2<bool>(var_0.d.x, true), false), vec3<bool>(true, false, arg_1), var_0.e))) - global4.x), false, -1269f);
    return -2106f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global4.x, _wgslsmith_f_op_f32(func_1(vec4<u32>(0u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25118u, 32u)], 32u)], 32u)], 32u)], 8298u), global0.x)))))) - _wgslsmith_f_op_f32(-1965f + global4.x)), vec4<i32>(-2147483647i, -13958i, 17609i, 1i), !vec2<bool>(_wgslsmith_mod_i32(u_input.b, 5685i) != (i32(-1i) * -18498i), true), vec3<bool>(true, true, true), select(~_wgslsmith_add_vec2_u32(max(vec2<u32>(global3[_wgslsmith_index_u32(1u, 32u)], 4294967295u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)], 32u)], 4294967295u)), ~vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 32u)], 41429u)), ~vec2<u32>(24012u, global3[_wgslsmith_index_u32(0u, 32u)]), vec2<bool>(!global0.x, all(!global0.zy))));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2678f - global4.x), 606f), vec4<i32>(var_0.b.x, 26834i, 6064i, abs(_wgslsmith_mod_i32(u_input.b, 0i))), !vec2<bool>(var_0.c.x, any(vec4<bool>(var_0.c.x, var_0.c.x, false, false)) && global0.x), vec3<bool>(var_0.c.x, global0.x, false), ~vec2<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global3[_wgslsmith_index_u32(var_0.e.x, 32u)]), var_0.e) ^ var_0.e.x));
    var var_2 = func_5(var_0.a, any(var_0.d), var_0.a);
    var var_3 = -204f;
    var var_4 = ~(~var_2.e.x);
    var var_5 = !vec4<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2639f) - _wgslsmith_f_op_f32(687f * 574f)) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_f_op_f32(-var_0.a))), !var_1.c.x & func_4(reverseBits(1u), func_5(global4.x, global0.x, 2233f), Struct_1(var_0.a, var_1.b, var_1.c, var_0.d, var_1.e)).x, var_0.c.x);
    var var_6 = (reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, var_2.b.x), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(var_1.b.x, 0i)))) <= (_wgslsmith_clamp_i32(reverseBits(-5002i), 28420i, 3442i) | reverseBits(0i))) && !any(vec2<bool>(true, var_0.d.x));
    let var_7 = (vec3<i32>(-_wgslsmith_add_i32(var_1.b.x, u_input.b), (1i >> (var_0.e.x % 32u)) & -1i, -u_input.a) | var_2.b.wxy) << (global2[_wgslsmith_index_u32(21679u, 15u)] % vec3<u32>(32u));
    let var_8 = 7342u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(1274f - 1550f)) + func_5(_wgslsmith_div_f32(-1508f, var_1.a), !var_1.d.x, _wgslsmith_f_op_f32(-809f * 1000f)).a), -726f), func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 395f)), _wgslsmith_f_op_f32(sign(global4.x))), true, global4.x).b.x, ~(_wgslsmith_add_u32(firstTrailingBit(var_1.e.x), ~24038u) << (var_1.e.x % 32u)));
}

