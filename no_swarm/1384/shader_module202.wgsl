struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18>;

var<private> global1: vec3<u32> = vec3<u32>(14056u, 4294967295u, 9173u);

var<private> global2: array<vec3<u32>, 19>;

var<private> global3: array<i32, 10> = array<i32, 10>(-17374i, 1i, 5365i, 50590i, i32(-2147483648), -30558i, 1i, 0i, -36602i, -57843i);

var<private> global4: Struct_1 = Struct_1(vec3<i32>(10507i, 37922i, 25809i), vec3<u32>(10860u, 0u, 19546u), false, 1072f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(Struct_1(select(~global4.a, global4.a, true) ^ ~(-global4.a), global2[_wgslsmith_index_u32(31225u, 19u)], !(!global4.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-355f, 1136f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.d) + _wgslsmith_f_op_f32(213f + -666f)))), vec4<i32>(-6288i, global4.a.x, 1i, ~(~select(26318i, -1i, global4.c))), select(!vec4<bool>(global4.c, global4.c, global4.c, global4.d == global4.d), !(!vec4<bool>(true, global4.c, true, global4.c)), any(select(!vec2<bool>(global4.c, global4.c), !vec2<bool>(global4.c, global4.c), vec2<bool>(true, global4.c)))), Struct_1(-_wgslsmith_div_vec3_i32(global4.a & vec3<i32>(15535i, -1i, global4.a.x), vec3<i32>(global4.a.x, 27738i, global3[_wgslsmith_index_u32(global1.x, 10u)])), select(~_wgslsmith_div_vec3_u32(global4.b, vec3<u32>(global1.x, 21201u, 8896u)), abs(~vec3<u32>(u_input.b, global4.b.x, 55783u)), any(select(vec3<bool>(false, global4.c, global4.c), vec3<bool>(global4.c, false, false), vec3<bool>(false, true, global4.c)))), global4.c, global4.d), Struct_1(-vec3<i32>(i32(-1i) * -4478i, 32945i, 4912i), firstTrailingBit(~vec3<u32>(4294967295u, global4.b.x, global1.x)), (global4.c || (global4.d >= -1000f)) || false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.d))))));
    let var_1 = abs(vec3<i32>(global4.a.x, 1i << (var_0.d.b.x % 32u), -_wgslsmith_div_i32(-29184i, u_input.a)));
    var var_2 = Struct_3(Struct_2(var_0.e, _wgslsmith_mod_vec4_i32(var_0.b, abs(~vec4<i32>(global4.a.x, var_1.x, global4.a.x, var_1.x))), !vec4<bool>(true, global4.c | global4.c, !global4.c, any(var_0.c.wx)), Struct_1(vec3<i32>(-2147483647i, 12294i, global4.a.x) << (~global4.b % vec3<u32>(32u)), abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b, var_0.e.b.x), global4.b)), all(var_0.c.wyz), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4.d)))), var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.d - -808f)), _wgslsmith_f_op_f32(f32(-1f) * -2039f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.b, ~global4.b.x, ~global4.b.x), 18u)]) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-323f, -977f), vec2<f32>(global4.d, global4.d)))));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global4.d))));
    var var_4 = vec3<u32>(65789u, (4081u ^ var_0.e.b.x) | 51443u, global4.b.x);
    return -(-(i32(-1i) * -1i) ^ _wgslsmith_mod_i32(1i, -22208i << (select(18957u, 15013u, global4.c) % 32u)));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: i32) -> bool {
    global4 = Struct_1(_wgslsmith_add_vec3_i32(min(arg_0.a.d.a, vec3<i32>(func_3(), 0i, i32(-1i) * -6915i)), -max(~vec3<i32>(u_input.a, 1729i, 1i), vec3<i32>(6462i, -1i, arg_2))), vec3<u32>(_wgslsmith_add_u32(~global4.b.x, u_input.b | 1u), _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 32778u, 4294967295u, global1.x), vec4<u32>(9049u, 4294967295u, arg_0.a.a.b.x, global4.b.x), vec4<u32>(arg_0.a.d.b.x, arg_0.a.a.b.x, u_input.b, global4.b.x)), vec4<u32>(45784u, arg_0.a.d.b.x, 1u, 0u) & reverseBits(vec4<u32>(global4.b.x, 4294967295u, 4294967295u, 1u))), ~reverseBits(firstLeadingBit(arg_0.a.e.b.x))), !global4.c, -384f);
    let var_0 = arg_0.a.d;
    let var_1 = _wgslsmith_f_op_f32(global4.d * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4.d))))))));
    global1 = select(arg_0.a.e.b, global2[_wgslsmith_index_u32(countOneBits(arg_0.a.a.b.x) << (u_input.b % 32u), 19u)], vec3<bool>(global4.c, global4.c, !(!select(true, true, global4.c))));
    global3 = array<i32, 10>();
    return true;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: f32) -> bool {
    let var_0 = global4.c;
    global2 = array<vec3<u32>, 19>();
    let var_1 = global4.a;
    var var_2 = all(select(vec4<bool>(true, true, arg_0, true), select(vec4<bool>(func_2(Struct_3(Struct_2(Struct_1(vec3<i32>(var_1.x, -2147483647i, 1i), global4.b, arg_0, -1444f), vec4<i32>(-9587i, -16269i, 0i, var_1.x), vec4<bool>(true, false, false, true), Struct_1(global4.a, vec3<u32>(global1.x, 1u, arg_1.x), global4.c, 1623f), Struct_1(vec3<i32>(global4.a.x, global4.a.x, -16458i), global4.b, false, arg_2)), 564f, -1058f, global0[_wgslsmith_index_u32(0u, 18u)]), false, 13549i), global4.c, global4.c, true), vec4<bool>(true, all(vec3<bool>(true, arg_0, true)), false, true), !vec4<bool>(false, arg_0, global4.c, false)), true));
    var var_3 = true;
    return arg_1.x == global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(global4.c, true, true, any(!select(vec3<bool>(global4.c, global4.c, global4.c), vec3<bool>(true, global4.c, false), global4.c))), select(vec4<bool>(!global4.c, global4.c, global4.c, func_1(select(false, global4.c, global4.c), vec4<u32>(global4.b.x, global4.b.x, 38529u, 33045u) & vec4<u32>(u_input.b, 0u, global1.x, global4.b.x), -506f)), !(!select(vec4<bool>(global4.c, global4.c, global4.c, true), vec4<bool>(false, global4.c, true, global4.c), vec4<bool>(global4.c, global4.c, global4.c, global4.c))), select(vec4<bool>(global4.c, true | global4.c, any(vec3<bool>(global4.c, true, false)), global4.c & global4.c), select(vec4<bool>(global4.c, global4.c, true, true), select(vec4<bool>(global4.c, global4.c, global4.c, true), vec4<bool>(global4.c, global4.c, true, global4.c), vec4<bool>(global4.c, global4.c, global4.c, global4.c)), !vec4<bool>(global4.c, global4.c, true, global4.c)), !select(vec4<bool>(global4.c, true, global4.c, false), vec4<bool>(global4.c, false, true, global4.c), vec4<bool>(true, global4.c, global4.c, true)))), false);
    global1 = ~select(global4.b, countOneBits(firstTrailingBit(_wgslsmith_div_vec3_u32(global4.b, global2[_wgslsmith_index_u32(25141u, 19u)]))), _wgslsmith_f_op_f32(global4.d * global4.d) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1414f)), _wgslsmith_div_f32(global4.d, global4.d), true)));
    let var_1 = select(vec4<bool>(global4.c, all(!vec4<bool>(true, var_0.x, global4.c, global4.c)), global4.c, u_input.a < 2147483647i), vec4<bool>((_wgslsmith_f_op_f32(-550f + global4.d) > _wgslsmith_f_op_f32(global4.d - -992f)) | var_0.x, all(!(!vec2<bool>(false, global4.c))), global4.c & var_0.x, true), select(var_0.x, (global4.d >= global4.d) & true, any(vec2<bool>(global4.c, true))) && global4.c);
    var var_2 = _wgslsmith_div_vec3_u32(~firstTrailingBit(_wgslsmith_div_vec3_u32(firstLeadingBit(global2[_wgslsmith_index_u32(33889u, 19u)]), global4.b)), ~vec3<u32>(9036u, _wgslsmith_mult_u32(global1.x, 23663u), global4.b.x));
    var var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_add_vec3_i32(select(global4.a, global4.a, true), select(vec3<i32>(28748i, u_input.a, global3[_wgslsmith_index_u32(33592u, 10u)]), vec3<i32>(global4.a.x, u_input.a, global3[_wgslsmith_index_u32(0u, 10u)]), var_0.x)), min(_wgslsmith_mult_vec3_u32(global2[_wgslsmith_index_u32(var_2.x, 19u)], vec3<u32>(global4.b.x, u_input.b, u_input.b)), global2[_wgslsmith_index_u32(global1.x & var_2.x, 19u)]), var_1.x, _wgslsmith_f_op_f32(max(global4.d, _wgslsmith_f_op_f32(464f * global4.d)))), vec4<i32>(_wgslsmith_clamp_i32(0i, -2147483647i, global4.a.x), 1i >> (0u % 32u), u_input.a, 46864i) << ((select(vec4<u32>(var_2.x, 4294967295u, 26253u, var_2.x), vec4<u32>(var_2.x, 48927u, var_2.x, global4.b.x), true) >> (~vec4<u32>(global4.b.x, 25474u, u_input.b, global1.x) % vec4<u32>(32u))) % vec4<u32>(32u)), var_1, Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 26476i), global4.a.xx), ~(-12019i), ~(-13841i)), vec3<u32>(1u, 109638u, max(0u, 11267u)), all(var_1) & all(var_1.xw), -393f), Struct_1(global4.a, vec3<u32>(global4.b.x, global1.x << (global1.x % 32u), 100681u), false & all(var_1), global4.d)), global4.d, global4.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4.d, _wgslsmith_f_op_f32(select(global4.d, 1000f, false))), vec2<f32>(global4.d, _wgslsmith_f_op_f32(global4.d + global4.d))))));
    let var_4 = Struct_1(vec3<i32>(-((12844i << (global1.x % 32u)) << (_wgslsmith_add_u32(var_2.x, u_input.b) % 32u)), -31570i >> (1u % 32u), var_3.a.e.a.x), global2[_wgslsmith_index_u32(abs(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 0u, 0u, 22033u), ~vec4<u32>(26262u, 4294967295u, 1u, 16455u))), 19u)], !any(select(var_0.yx, vec2<bool>(var_3.a.c.x, var_0.x), var_1.yx)) | (var_3.c != var_3.a.d.d), 1129f);
    global1 = vec3<u32>(_wgslsmith_mult_u32(~(~global4.b.x), ~(~1u)), 23039u, _wgslsmith_add_u32(select(var_4.b.x, global4.b.x, any(!var_1.zzw)), _wgslsmith_mod_u32(0u & var_2.x, global4.b.x & 2291u)));
    var var_5 = Struct_2(var_4, vec4<i32>(_wgslsmith_add_i32(var_4.a.x, -1i), -61429i, ((global3[_wgslsmith_index_u32(global1.x, 10u)] | u_input.a) >> (var_3.a.d.b.x % 32u)) >> (_wgslsmith_add_u32(0u, ~var_2.x) % 32u), u_input.a), var_1, Struct_1(vec3<i32>(-global4.a.x, -1i, ~(~var_3.a.e.a.x)), max(firstTrailingBit(global2[_wgslsmith_index_u32(0u, 19u)]), select(vec3<u32>(0u, global1.x, 75621u), ~var_3.a.d.b, select(vec3<bool>(var_4.c, global4.c, global4.c), var_3.a.c.xxz, vec3<bool>(var_0.x, var_0.x, var_3.a.a.c)))), ((-465f >= var_4.d) || var_4.c) || (select(1u, u_input.b, var_1.x) > ~22929u), -316f), var_3.a.d);
    global4 = Struct_1(var_3.a.a.a, vec3<u32>(~max(_wgslsmith_dot_vec4_u32(vec4<u32>(40056u, 1u, var_5.a.b.x, 42583u), vec4<u32>(42375u, global4.b.x, global4.b.x, 4294967295u)), abs(var_4.b.x)), 0u, 1u), _wgslsmith_mult_u32(global4.b.x, u_input.b) >= _wgslsmith_mod_u32(_wgslsmith_mult_u32(~var_4.b.x, ~global4.b.x), _wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(30078u, 82707u))), _wgslsmith_f_op_f32(max(-483f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_5.e.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(i32(-1i) * -58270i));
}

