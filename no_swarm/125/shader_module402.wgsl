struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: f32,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(30813u, 29332u), vec2<u32>(6337u, 4294967295u), vec2<u32>(4294967295u, 32241u), vec2<u32>(57957u, 16414u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(17895u, 6956u), vec2<u32>(5035u, 0u), vec2<u32>(37215u, 673u), vec2<u32>(4294967295u, 50564u), vec2<u32>(4294967295u, 4294967295u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> vec3<i32> {
    let var_0 = true;
    let var_1 = var_0;
    global1 = array<vec2<u32>, 10>();
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(589f, -216f, 109f, -1105f) * vec4<f32>(-334f, 573f, -1000f, 1191f)), _wgslsmith_div_vec4_f32(vec4<f32>(-2532f, 525f, -385f, 831f), vec4<f32>(125f, 861f, 627f, -458f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(192f * -490f), 378f, 817f, 298f) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1288f, -799f, -1379f, -1069f)))))), vec4<f32>(525f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1366f), _wgslsmith_f_op_f32(select(-111f, -1000f, var_1)))), -696f, -1257f), true));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1193f, var_2.x, var_2.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, var_2.x, -1393f, -871f), vec4<f32>(-1029f, var_2.x, var_2.x, var_2.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, 683f, -115f, -479f), vec4<f32>(361f, -1255f, var_2.x, var_2.x))), all(vec2<bool>(global0.x, true))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1279f) * _wgslsmith_div_f32(-560f, var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(305f + -198f)), var_2.x, _wgslsmith_div_f32(-1071f, _wgslsmith_f_op_f32(max(-1007f, var_2.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1072f, var_2.x, var_2.x, -352f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(363f, var_2.x, var_2.x, -172f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-833f, 1274f, var_2.x, -229f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-141f, var_2.x, _wgslsmith_f_op_f32(1400f + var_2.x), var_2.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_2.x, 582f, -1000f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(367f, -448f, var_2.x, var_2.x)))))));
    return vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_mod_i32(-2147483647i, -2147483647i), -2147483647i, countOneBits(u_input.b));
}

fn func_2() -> vec4<i32> {
    var var_0 = func_3(_wgslsmith_add_u32(~(~u_input.e.x), ~u_input.c)) | _wgslsmith_div_vec3_i32(~(-reverseBits(vec3<i32>(-1i, -6177i, -2147483647i))), firstLeadingBit(reverseBits(abs(vec3<i32>(u_input.b, u_input.b, -1i)))));
    var var_1 = Struct_1(_wgslsmith_add_vec2_i32(var_0.yz, var_0.zy));
    var var_2 = true;
    global0 = !(!(!vec2<bool>(u_input.e.x != u_input.a, true)));
    var var_3 = -1i;
    return firstTrailingBit(-vec4<i32>(-var_1.a.x, _wgslsmith_sub_i32(-2147483647i, 1i), 2147483647i, max(var_1.a.x, 15559i))) ^ vec4<i32>(-26354i, i32(-1i) * -36316i, -1i, func_3(22640u).x);
}

fn func_1(arg_0: u32) -> Struct_5 {
    let var_0 = _wgslsmith_mod_vec4_i32(func_2(), vec4<i32>(~(-(26176i >> (u_input.e.x % 32u))), -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 1i, -29220i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), -3170i), func_3(u_input.d).x, 2147483647i));
    global1 = array<vec2<u32>, 10>();
    global0 = !select(vec2<bool>(global0.x, global0.x), select(!(!vec2<bool>(global0.x, global0.x)), !select(vec2<bool>(true, true), vec2<bool>(false, global0.x), global0.x), select(vec2<bool>(true, global0.x), select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x)), select(vec2<bool>(true, false), vec2<bool>(true, global0.x), false))), false);
    global0 = select(vec2<bool>(!(!global0.x), true), select(select(!vec2<bool>(global0.x, false), vec2<bool>(any(vec4<bool>(true, false, false, false)), true), vec2<bool>(true, select(true, global0.x, false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, false), vec2<bool>(false, global0.x)), !vec2<bool>(global0.x, global0.x), any(vec3<bool>(false, global0.x, false))), !select(vec2<bool>(true, true), vec2<bool>(false, global0.x), true), !select(vec2<bool>(true, global0.x), vec2<bool>(false, true), vec2<bool>(true, true)))), (var_0.x | var_0.x) >= func_3(1u).x);
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1849f, 1604f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -760f) + _wgslsmith_f_op_f32(f32(-1f) * -118f)))));
    return Struct_5(~(-509i), ~(abs(var_0.x) ^ _wgslsmith_mod_i32(var_0.x, -26045i)), !global0.x, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 10>();
    var var_0 = -1i > _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(19879i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b, 1i), vec3<i32>(u_input.b, u_input.b, u_input.b)), ~u_input.b, ~(-1i)), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 39022i, u_input.b, 22014i), vec4<i32>(9201i, u_input.b, u_input.b, u_input.b)))), abs(~firstTrailingBit(4156i)));
    var var_1 = func_1(~28384u);
    var var_2 = select(true, var_1.c, func_1(reverseBits(~(~u_input.a))).d);
    let var_3 = Struct_4(Struct_2(Struct_1(~vec2<i32>(-31823i, var_1.b)), Struct_1(vec2<i32>(-1i) * -vec2<i32>(var_1.a, 35265i)), vec4<i32>(0i, func_2().x, -u_input.b & (-2147483647i & u_input.b), -_wgslsmith_add_i32(-40739i, 20244i)), vec3<u32>(u_input.c, ~u_input.a, _wgslsmith_add_u32(_wgslsmith_div_u32(1u, u_input.a), 1u)), all(vec3<bool>(any(vec3<bool>(var_1.d, global0.x, true)), true, !var_1.d))), vec4<i32>(countOneBits(_wgslsmith_mod_i32(u_input.b, 54510i)), var_1.b, u_input.b, _wgslsmith_div_i32(var_1.a ^ -1i, _wgslsmith_div_i32(~var_1.a, firstTrailingBit(-22185i)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(823f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1308f * 141f), _wgslsmith_f_op_f32(f32(-1f) * -252f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-177f * -2267f) + -2307f)), func_1(50260u).c)), Struct_2(Struct_1(abs(vec2<i32>(var_1.b, u_input.b)) & (vec2<i32>(0i, u_input.b) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))), Struct_1(-(~vec2<i32>(-28671i, 0i))), firstTrailingBit(-(~vec4<i32>(u_input.b, u_input.b, var_1.a, var_1.a))), _wgslsmith_sub_vec3_u32(~abs(vec3<u32>(u_input.a, 16816u, u_input.c)), ~(~vec3<u32>(46829u, 28585u, 30135u))), global0.x));
    let var_4 = var_3.a.c;
    let var_5 = Struct_2(var_3.d.a, Struct_1(~var_3.b.xw), -(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.b.x, -37515i, var_4.x, 1i), var_4, vec4<i32>(var_4.x, 2147483647i, var_1.b, -38873i))) | min(reverseBits(var_3.a.c), vec4<i32>(var_3.d.c.x, var_4.x, var_3.a.a.a.x, 2147483647i) ^ vec4<i32>(0i, 61072i, u_input.b, -940i))), select(var_3.a.d, vec3<u32>(var_3.d.d.x, ~35497u, _wgslsmith_mod_u32(~7693u, ~u_input.d)), select(select(vec3<bool>(false, true, false), !vec3<bool>(var_1.d, true, global0.x), vec3<bool>(false, global0.x, true)), vec3<bool>(true, true, true), true)), any(select(select(!vec3<bool>(global0.x, global0.x, false), !vec3<bool>(true, var_3.a.e, true), !vec3<bool>(false, global0.x, var_3.d.e)), select(select(vec3<bool>(true, var_3.a.e, true), vec3<bool>(var_1.c, false, true), vec3<bool>(var_3.d.e, var_3.a.e, false)), !vec3<bool>(var_3.a.e, var_3.a.e, var_3.a.e), !global0.x), !select(vec3<bool>(true, global0.x, true), vec3<bool>(true, global0.x, true), vec3<bool>(false, var_3.a.e, var_3.d.e)))));
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(586f, var_3.c, 1393f, var_3.c) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.c, -1443f, -666f, -630f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.c, 736f, var_3.c, var_3.c), vec4<f32>(var_3.c, -811f, var_3.c, 849f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.c, 332f, -1177f, var_3.c), vec4<f32>(var_3.c, 620f, 398f, 774f), false)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.c, var_3.c, 1000f, -229f))))))));
    let var_7 = _wgslsmith_div_vec2_u32(vec2<u32>(~var_3.a.d.x, var_3.d.d.x), ~var_5.d.xy);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<u32>(max(var_7.x, 60810u), 18429u, _wgslsmith_div_u32(var_5.d.x, 5234u) & ~var_5.d.x), vec3<u32>(_wgslsmith_div_u32(~var_3.a.d.x, _wgslsmith_add_u32(0u, 32914u)), ~u_input.d, max(~1u, ~10444u))), _wgslsmith_f_op_vec4_f32(step(var_6, var_6)), vec4<i32>(var_5.b.a.x, -_wgslsmith_dot_vec2_i32(var_3.d.a.a >> (global1[_wgslsmith_index_u32(0u, 10u)] % vec2<u32>(32u)), vec2<i32>(3884i, u_input.b)), reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_5.c.yxx, var_5.c.yww), var_5.c.yxy)), -2147483647i));
}

