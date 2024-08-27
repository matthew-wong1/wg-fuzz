struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(1117f, vec2<u32>(0u, 4732u), i32(-2147483648)), Struct_1(519f, vec2<u32>(11232u, 41325u), 29914i), Struct_1(-1642f, vec2<u32>(141174u, 87425u), 42757i), Struct_1(1403f, vec2<u32>(0u, 7935u), i32(-2147483648)), Struct_1(245f, vec2<u32>(4294967295u, 4294967295u), -31629i), Struct_1(924f, vec2<u32>(73862u, 12038u), -1i), Struct_1(159f, vec2<u32>(40814u, 14083u), -40359i), Struct_1(-1000f, vec2<u32>(4294967295u, 38821u), 12499i), Struct_1(353f, vec2<u32>(1u, 10871u), 26690i), Struct_1(-519f, vec2<u32>(4294967295u, 21190u), 1i), Struct_1(1000f, vec2<u32>(42219u, 4294967295u), 1i), Struct_1(903f, vec2<u32>(1u, 4294967295u), -9475i), Struct_1(-372f, vec2<u32>(27871u, 23021u), -22582i), Struct_1(-600f, vec2<u32>(1u, 1u), -1i), Struct_1(1000f, vec2<u32>(28295u, 0u), 0i), Struct_1(-1604f, vec2<u32>(76731u, 92464u), 0i), Struct_1(-190f, vec2<u32>(46255u, 4294967295u), -1i), Struct_1(-356f, vec2<u32>(21333u, 13205u), i32(-2147483648)), Struct_1(398f, vec2<u32>(0u, 17821u), -1i));

var<private> global2: array<f32, 10> = array<f32, 10>(213f, 2503f, 286f, -716f, -2346f, 1108f, 159f, -644f, 971f, -2140f);

var<private> global3: array<Struct_1, 19>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(_wgslsmith_div_u32(22843u, 20171u), 0u) >> ((~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 86608u), vec2<u32>(16048u, 40031u)) >> (_wgslsmith_sub_u32(reverseBits(1u), abs(60667u)) % 32u)) % 32u)), 19u)];
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(939f - _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(var_0.b.x, 10u)]))), 1000f), _wgslsmith_clamp_vec2_u32(~var_0.b, vec2<u32>(countOneBits(abs(var_0.b.x)), var_0.b.x), max(~var_0.b, var_0.b) ^ vec2<u32>(var_0.b.x, var_0.b.x)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c, var_0.c, 0i, u_input.a), vec4<i32>(-41313i, u_input.a, -40359i, var_0.c)), u_input.a, ~(-2147483647i)), ~abs(vec4<i32>(-56658i, u_input.a, -33437i, -2147483647i))), 0i));
    var_1 = Struct_1(-320f, vec2<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 22772u)), vec2<u32>(~var_1.b.x, ~55719u)), abs(1u)), 0i);
    let var_2 = ~1i;
    var var_3 = false;
    return countOneBits(var_0.c);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    let var_0 = select(~abs(select(~vec4<u32>(arg_1.b.x, 4294967295u, 63089u, 11776u), vec4<u32>(arg_1.b.x, 39741u, 56067u, arg_1.b.x), !vec4<bool>(true, arg_0, arg_0, true))), min(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_1.b.x, 17584u), 51733u), arg_1.b.x, arg_1.b.x >> (arg_1.b.x % 32u), ~1u), select(vec4<u32>(1u >> (arg_1.b.x % 32u), 4294967295u, 8518u, select(arg_1.b.x, 58943u, arg_0)), vec4<u32>(arg_1.b.x, max(arg_1.b.x, 863u), arg_1.b.x ^ arg_1.b.x, arg_1.b.x), arg_0)), vec4<bool>(!all(!global0[_wgslsmith_index_u32(17725u, 21u)]), any(vec3<bool>(arg_0, arg_0, arg_0)) | (arg_1.b.x > ~47281u), arg_0, (true & all(vec2<bool>(true, arg_0))) & select(select(true, false, arg_0), arg_0 & true, arg_0 != arg_0)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)) - -319f)), ~vec2<u32>(reverseBits(arg_1.b.x | arg_1.b.x), var_0.x), 21146i);
    let var_2 = max(~firstLeadingBit(_wgslsmith_add_vec4_i32(select(arg_2, arg_2, vec4<bool>(arg_0, false, arg_0, arg_0)), arg_2)), arg_2);
    global0 = array<vec3<bool>, 21>();
    return true;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = func_4(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true))) & true, arg_1, vec4<i32>(func_3(), arg_1.c, _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0, arg_0, -17172i), vec3<i32>(arg_1.c, arg_1.c, arg_2)), 11650i) & (select(vec4<i32>(1i, arg_2, 1i, 31969i), -vec4<i32>(1i, 17011i, arg_1.c, 7598i), vec4<bool>(true, false, false, false)) & vec4<i32>(u_input.a, -1i, 2147483647i, abs(2147483647i))));
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, ~4294967295u, arg_1.b.x), abs(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.b.x, 0u, arg_1.b.x), vec3<u32>(arg_1.b.x, arg_1.b.x, 37482u)))), 19u)];
    let var_2 = _wgslsmith_div_vec4_u32(~(max(vec4<u32>(9316u, var_1.b.x, var_1.b.x, 0u), ~vec4<u32>(1u, 14910u, var_1.b.x, 0u)) | (vec4<u32>(var_1.b.x, 2323u, arg_1.b.x, 33396u) << (abs(vec4<u32>(var_1.b.x, 71360u, 74340u, arg_1.b.x)) % vec4<u32>(32u)))), vec4<u32>(arg_1.b.x, ~(~countOneBits(4294967295u)), var_1.b.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(40365u, 1u) ^ var_1.b, arg_1.b)));
    global1 = array<Struct_1, 19>();
    global3 = array<Struct_1, 19>();
    return Struct_1(374f, ~select(vec2<u32>(_wgslsmith_dot_vec3_u32(var_2.xzx, vec3<u32>(var_2.x, arg_1.b.x, var_2.x)), ~121222u), ~(~vec2<u32>(var_2.x, 11239u)), var_0), 2147483647i);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = func_2(~(-u_input.a), arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 46243i, arg_1.c), vec3<i32>(2147483647i, -1i, u_input.a))), vec2<i32>(arg_1.c, arg_1.c) >> (_wgslsmith_mult_vec2_u32(arg_1.b, arg_1.b) % vec2<u32>(32u))) & 1i);
    var var_1 = arg_1;
    var var_2 = vec4<u32>(13013u, reverseBits(firstLeadingBit(select(57914u, 49534u, true))), _wgslsmith_add_u32(_wgslsmith_add_u32(~arg_1.b.x, countOneBits(44642u)), _wgslsmith_sub_u32(abs(33719u), abs(0u))), abs(var_0.b.x)) | firstTrailingBit(~(~(~vec4<u32>(0u, var_1.b.x, arg_0, arg_1.b.x))));
    let var_3 = _wgslsmith_sub_vec3_u32(var_2.yzy, _wgslsmith_sub_vec3_u32(var_2.zxz, ~firstLeadingBit(var_2.xwz)) >> (~(~(var_2.zyw >> (var_2.yxw % vec3<u32>(32u)))) % vec3<u32>(32u)));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(var_0.a * var_0.a), _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1560f, -141f, -425f, 1685f)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(357f - -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(abs(var_0.a))) + 1046f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.a)), var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a, _wgslsmith_f_op_f32(972f + var_0.a), arg_1.a != -1113f)) + -514f)));
    return _wgslsmith_mult_u32(~abs(~_wgslsmith_add_u32(4294967295u, 0u)), ~arg_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(~select(~4294967295u, 0u, false & any(global0[_wgslsmith_index_u32(4294967295u, 21u)])), 10u)], ~(~vec2<u32>(firstTrailingBit(60705u), func_1(51430u, Struct_1(global2[_wgslsmith_index_u32(11252u, 10u)], vec2<u32>(0u, 1u), u_input.a), global2[_wgslsmith_index_u32(79305u, 10u)]))), func_3());
    let var_1 = select(vec3<bool>(any(vec2<bool>(true, true)), _wgslsmith_sub_i32(u_input.a, _wgslsmith_div_i32(-1i, 2867i)) > _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c, 17057i, 2147483647i, u_input.a), ~vec4<i32>(var_0.c, 0i, var_0.c, -7068i)), true), !(!vec3<bool>(all(vec4<bool>(true, true, false, false)), func_4(true, global3[_wgslsmith_index_u32(0u, 19u)], vec4<i32>(var_0.c, u_input.a, 0i, 40798i)), true)), vec3<bool>(true, select((var_0.b.x | var_0.b.x) == _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.b.x, var_0.b.x), vec3<u32>(4294967295u, var_0.b.x, 17048u)), any(vec4<bool>(true, true, true, true)), true), true));
    let var_2 = u_input.a;
    let var_3 = Struct_1(var_0.a, abs(abs(vec2<u32>(64431u, 8844u ^ var_0.b.x))), firstTrailingBit(1i));
    global2 = array<f32, 10>();
    let var_4 = var_0;
    global1 = array<Struct_1, 19>();
    let var_5 = func_2(-58479i, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3.a, 478f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -499f))), var_3.b, abs(~(~1i))), abs(firstTrailingBit(var_0.c >> (var_4.b.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a - global2[_wgslsmith_index_u32(4294967295u, 10u)])) * 624f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(var_0.b.x, 10u)], -861f, var_1.x | var_1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_4.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(362f + -978f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1119f)), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(var_4.b.x, 10u)])))))), vec3<f32>(_wgslsmith_f_op_f32(max(250f, _wgslsmith_f_op_f32(var_3.a * _wgslsmith_f_op_f32(max(var_0.a, global2[_wgslsmith_index_u32(4294967295u, 10u)]))))), 2366f, _wgslsmith_div_f32(var_5.a, _wgslsmith_f_op_f32(-283f * var_5.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.a, 1f) + global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b.x, 58915u, var_4.b.x, 0u), vec4<u32>(var_3.b.x, var_3.b.x, 97455u, 1u))), 10u)])));
}

