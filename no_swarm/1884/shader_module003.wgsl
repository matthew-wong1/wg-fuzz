struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
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

var<private> global0: Struct_2 = Struct_2(vec3<bool>(true, true, false), vec2<u32>(0u, 0u), Struct_1(vec3<f32>(-259f, 509f, 385f), vec4<f32>(235f, -388f, 519f, 975f), 1282f, vec4<bool>(false, true, true, false), 0u), vec3<f32>(1078f, 553f, -1441f), Struct_1(vec3<f32>(399f, -199f, -1000f), vec4<f32>(-178f, 354f, -2177f, 557f), -389f, vec4<bool>(false, true, true, false), 7726u));

var<private> global1: vec4<u32>;

var<private> global2: array<i32, 27> = array<i32, 27>(6845i, -18578i, 82623i, 0i, 45908i, -6833i, -25021i, -1i, 2147483647i, -18651i, -16501i, 8922i, 9247i, -51250i, 1i, -9891i, 14556i, 0i, 8432i, -48570i, 21222i, 2147483647i, 2147483647i, 28032i, i32(-2147483648), -10244i, 78575i);

var<private> global3: vec2<f32> = vec2<f32>(-237f, 1200f);

var<private> global4: array<i32, 31> = array<i32, 31>(0i, -1i, i32(-2147483648), 2147483647i, 1i, 1i, -50649i, 34911i, 4145i, -24306i, -33881i, -64934i, 1i, -1i, -36737i, -1i, -5172i, i32(-2147483648), 0i, 13968i, i32(-2147483648), -1i, i32(-2147483648), 10660i, 54444i, -1i, -13480i, 15616i, 3593i, 1i, 45158i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = -vec3<i32>(_wgslsmith_div_i32(~global4[_wgslsmith_index_u32(arg_0.e, 31u)], ~global2[_wgslsmith_index_u32(108515u, 27u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(41132i, global4[_wgslsmith_index_u32(arg_0.e, 31u)], -1i), vec3<i32>(-1i, 14690i, 1i)), -2147483647i) & ~vec3<i32>(-1i, ~(-2147483647i), 2147483647i);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_0.b * vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(min(global3.x, 1199f)), _wgslsmith_f_op_f32(sign(1213f)), _wgslsmith_div_f32(918f, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_0.b)))))));
    global4 = array<i32, 31>();
    let var_2 = global0.c.d;
    global2 = array<i32, 27>();
    return !select(vec3<bool>(!(false || var_2.x), firstTrailingBit(8124u) < arg_0.e, true), select(arg_0.d.xwz, !vec3<bool>(arg_0.d.x, true, arg_0.d.x), all(vec2<bool>(true, true))), select(select(select(arg_0.d.yxy, global0.a, vec3<bool>(global0.a.x, false, var_2.x)), vec3<bool>(var_2.x, true, arg_0.d.x), vec3<bool>(false, false, true)), !vec3<bool>(arg_0.d.x, true, true), !any(vec2<bool>(false, var_2.x))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global2 = array<i32, 27>();
    let var_0 = Struct_2(global0.a, max(global1.zx, global0.b), Struct_1(_wgslsmith_f_op_vec3_f32(select(global0.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global3.x, -472f))), func_3(global0.c))), vec4<f32>(global0.e.b.x, global0.e.b.x, 1157f, global0.c.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-435f)) * -912f), select(vec4<bool>(all(vec2<bool>(global0.e.d.x, global0.a.x)), !arg_0, !arg_0, false), vec4<bool>(true, false, true | arg_0, true), true), global1.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-415f))), _wgslsmith_f_op_f32(2678f * global0.e.a.x), _wgslsmith_f_op_f32(-197f * 1000f)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(global0.c.b.wyz)))), vec4<f32>(910f, global3.x, global3.x, -503f), _wgslsmith_f_op_f32(-global3.x), global0.c.d, global1.x));
    var var_1 = global1.x;
    global3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global0.d.xz - vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.e.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.b.x))))));
    global4 = array<i32, 31>();
    return Struct_2(vec3<bool>(all(vec2<bool>(true, true)), func_3(Struct_1(var_0.c.a, _wgslsmith_f_op_vec4_f32(-var_0.c.b), _wgslsmith_div_f32(global3.x, 1114f), !global0.e.d, 22661u)).x, true), _wgslsmith_mod_vec2_u32(countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(37146u, global1.x), var_0.b, vec2<u32>(var_0.c.e, 0u))) & vec2<u32>(~0u, ~global0.b.x), vec2<u32>(~firstLeadingBit(global0.b.x), global1.x)), global0.e, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.x)) - _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(min(-201f, global0.e.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.d.x)))), global3.x), global0.c);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_1 {
    global2 = array<i32, 27>();
    global2 = array<i32, 27>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-2249f)))), global0.e, func_2(true));
    var var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(95426u, _wgslsmith_div_u32(31323u, 1u)), ~(~((47168u ^ var_0.c.e.e) ^ reverseBits(42385u))));
    global1 = _wgslsmith_div_vec4_u32(vec4<u32>(~global0.b.x, global1.x, var_0.b.e, ~var_0.c.c.e) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b.x, 56176u, var_0.c.b.x, 31576u), abs(vec4<u32>(6696u, 11225u, 0u, 4294967295u)), vec4<u32>(var_0.c.b.x, 4294967295u, 4294967295u, 4294967295u) & vec4<u32>(86424u, 5495u, 26645u, 7883u)) % vec4<u32>(32u)), (~vec4<u32>(arg_1.b.e, global0.e.e, arg_1.c.e.e, 2498u) ^ ~vec4<u32>(1u, global1.x, 0u, arg_1.b.e)) & ~(vec4<u32>(975u, global1.x, arg_1.b.e, global0.b.x) << (vec4<u32>(66515u, global0.b.x, 0u, 18036u) % vec4<u32>(32u)))) << (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(1u), ~arg_1.b.e), global0.b), ~select(global0.c.e, ~52104u, !arg_2.x), _wgslsmith_sub_u32(5343u, 1u), 54020u) % vec4<u32>(32u));
    return var_0.b;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.e.a.xy - arg_1.c.e.a.yx), _wgslsmith_f_op_vec2_f32(-arg_1.c.d.zz))), arg_1.c.e.a.yx)) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(trunc(523f))));
    let var_1 = arg_2.e.a.xy;
    let var_2 = arg_2.c;
    var_0 = vec2<f32>(224f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.b.x)));
    var var_3 = arg_1.c.e;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_2.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1298f - global3.x), _wgslsmith_f_op_f32(var_3.a.x - 868f), _wgslsmith_f_op_f32(var_1.x + global3.x), arg_1.b.b.x)))), _wgslsmith_f_op_vec4_f32(-arg_1.b.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.e.d.xzw, ~vec2<u32>(_wgslsmith_mult_u32(1u, ~global1.x), ~15679u >> (global0.e.e % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1207f, 488f, global3.x))), _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(global3.x * global3.x)), Struct_3(_wgslsmith_f_op_f32(sign(global0.c.c)), global0.e, Struct_2(vec3<bool>(false, global0.a.x, true), vec2<u32>(global0.e.e, 52164u), Struct_1(vec3<f32>(-187f, 191f, global3.x), vec4<f32>(1000f, 1000f, global3.x, global3.x), 1196f, vec4<bool>(global0.e.d.x, false, global0.e.d.x, true), global0.b.x), vec3<f32>(-505f, -623f, 283f), global0.c)), Struct_2(select(global0.a, vec3<bool>(global0.c.d.x, false, global0.c.d.x), false), global0.b, func_1(u_input.b.xx, Struct_3(global0.e.b.x, Struct_1(vec3<f32>(global0.e.c, global3.x, 683f), global0.c.b, 759f, global0.e.d, 0u), Struct_2(global0.e.d.xzx, vec2<u32>(global1.x, global0.c.e), global0.e, global0.c.a, Struct_1(global0.c.b.xyx, vec4<f32>(global3.x, global0.c.b.x, 207f, global0.c.c), global0.e.c, vec4<bool>(true, global0.a.x, global0.c.d.x, global0.c.d.x), global1.x))), vec4<bool>(false, true, false, global0.e.d.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(253f, 1125f, global3.x) + vec3<f32>(-1000f, global0.d.x, 347f)), func_1(u_input.b.zx, Struct_3(global0.d.x, global0.c, Struct_2(vec3<bool>(true, false, global0.c.d.x), global1.zw, global0.e, vec3<f32>(414f, global0.c.b.x, -334f), Struct_1(global0.d, vec4<f32>(1477f, global0.d.x, 445f, 766f), -1559f, global0.e.d, global1.x))), vec4<bool>(global0.a.x, false, false, global0.e.d.x))))), 812f, global0.c.d, 117187u), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.c.c, _wgslsmith_div_f32(global0.d.x, _wgslsmith_div_f32(global3.x, global0.c.a.x)), global3.x))), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.x, global3.x, 189f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-153f, global3.x, 416f, global3.x) + _wgslsmith_f_op_vec4_f32(-global0.e.b))), _wgslsmith_div_f32(-1194f, global0.d.x), select(vec4<bool>(global0.a.x, func_3(Struct_1(global0.c.a, global0.e.b, 1984f, global0.e.d, 4294967295u)).x, u_input.b.x == u_input.b.x, true), vec4<bool>(24588i > u_input.a, false, global3.x < 2178f, global0.a.x), !vec4<bool>(false, global0.c.d.x, false, global0.a.x)), global1.x));
    global0 = Struct_2(!vec3<bool>(all(vec4<bool>(global0.c.d.x, true, false, global0.e.d.x)), _wgslsmith_f_op_f32(floor(-248f)) <= global3.x, (133588u <= global0.e.e) && (false & global0.e.d.x)), ~global1.yw & ~(~(~global0.b)), global0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.c * -290f) - -1430f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1854f)))) - func_1(u_input.b.zx, Struct_3(_wgslsmith_f_op_f32(trunc(546f)), global0.c, Struct_2(global0.c.d.yxz, vec2<u32>(46079u, global1.x), Struct_1(global0.e.a, vec4<f32>(global3.x, global0.d.x, 227f, 1033f), -1190f, global0.c.d, global0.b.x), global0.c.a, Struct_1(global0.d, global0.c.b, -184f, vec4<bool>(global0.a.x, global0.a.x, global0.e.d.x, true), global0.e.e))), global0.e.d).b.wwx), func_1(_wgslsmith_mod_vec2_i32(u_input.b.yx, ~(vec2<i32>(u_input.a, 2147483647i) >> (global0.b % vec2<u32>(32u)))), Struct_3(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-global0.e.b.x)), global0.e, Struct_2(global0.a, ~vec2<u32>(global0.e.e, global0.b.x), Struct_1(vec3<f32>(global0.d.x, -365f, global3.x), global0.e.b, global3.x, vec4<bool>(global0.e.d.x, global0.c.d.x, true, true), global0.e.e), _wgslsmith_f_op_vec3_f32(exp2(global0.c.a)), Struct_1(vec3<f32>(global3.x, global0.d.x, global0.c.b.x), vec4<f32>(-331f, -1000f, -718f, global0.d.x), global3.x, global0.c.d, 12262u))), vec4<bool>(global0.a.x, false | any(global0.a), true, global0.a.x)));
    let var_0 = func_2(false);
    var var_1 = global0.c;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.d.x)) - _wgslsmith_f_op_f32(global3.x * 1718f));
    let x = u_input.a;
    s_output = StorageBuffer(global4[_wgslsmith_index_u32(55900u, 31u)]);
}

