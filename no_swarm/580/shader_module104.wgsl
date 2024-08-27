struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
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

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec3<u32>(10827u, 29191u, 19656u), Struct_1(-1012f, vec2<i32>(-6328i, 2147483647i)), Struct_1(-678f, vec2<i32>(92853i, 13344i))), Struct_2(vec3<u32>(0u, 32527u, 4294967295u), Struct_1(412f, vec2<i32>(2147483647i, -1i)), Struct_1(-546f, vec2<i32>(2147483647i, 1i))), Struct_2(vec3<u32>(13140u, 64495u, 33013u), Struct_1(-756f, vec2<i32>(-1318i, i32(-2147483648))), Struct_1(566f, vec2<i32>(2147483647i, -59300i))), Struct_2(vec3<u32>(70810u, 4294967295u, 4294967295u), Struct_1(-1025f, vec2<i32>(1i, -1i)), Struct_1(1169f, vec2<i32>(-51073i, 1i))), Struct_2(vec3<u32>(92621u, 1u, 0u), Struct_1(1000f, vec2<i32>(-1i, 0i)), Struct_1(678f, vec2<i32>(-1i, -13465i))), Struct_2(vec3<u32>(22517u, 15564u, 9470u), Struct_1(1000f, vec2<i32>(2147483647i, 16935i)), Struct_1(1488f, vec2<i32>(36782i, 6490i))), Struct_2(vec3<u32>(41317u, 48688u, 1u), Struct_1(-653f, vec2<i32>(2147483647i, 10046i)), Struct_1(-1147f, vec2<i32>(31113i, -1i))), Struct_2(vec3<u32>(61558u, 28650u, 5896u), Struct_1(-388f, vec2<i32>(100170i, 29630i)), Struct_1(-213f, vec2<i32>(1i, -14274i))), Struct_2(vec3<u32>(4723u, 31677u, 0u), Struct_1(565f, vec2<i32>(30795i, -5661i)), Struct_1(1874f, vec2<i32>(i32(-2147483648), 10304i))), Struct_2(vec3<u32>(0u, 1u, 37523u), Struct_1(-602f, vec2<i32>(43305i, -32391i)), Struct_1(262f, vec2<i32>(0i, -1i))), Struct_2(vec3<u32>(4294967295u, 14039u, 50821u), Struct_1(382f, vec2<i32>(-33344i, 25274i)), Struct_1(251f, vec2<i32>(-1i, 4009i))), Struct_2(vec3<u32>(0u, 1u, 0u), Struct_1(1663f, vec2<i32>(-47846i, i32(-2147483648))), Struct_1(-1148f, vec2<i32>(2147483647i, 46373i))), Struct_2(vec3<u32>(41609u, 4294967295u, 23434u), Struct_1(758f, vec2<i32>(0i, -1i)), Struct_1(-632f, vec2<i32>(1i, i32(-2147483648)))), Struct_2(vec3<u32>(9787u, 1u, 4294967295u), Struct_1(593f, vec2<i32>(-1i, 0i)), Struct_1(1000f, vec2<i32>(0i, -19463i))), Struct_2(vec3<u32>(6895u, 1u, 0u), Struct_1(-839f, vec2<i32>(2147483647i, -14333i)), Struct_1(481f, vec2<i32>(11977i, 2147483647i))), Struct_2(vec3<u32>(12142u, 7209u, 4294967295u), Struct_1(-111f, vec2<i32>(45122i, 0i)), Struct_1(295f, vec2<i32>(i32(-2147483648), -19211i))), Struct_2(vec3<u32>(74360u, 4294967295u, 135437u), Struct_1(-1000f, vec2<i32>(39295i, 2147483647i)), Struct_1(1000f, vec2<i32>(-31839i, i32(-2147483648)))), Struct_2(vec3<u32>(12105u, 1u, 1u), Struct_1(-1183f, vec2<i32>(2147483647i, 7036i)), Struct_1(1389f, vec2<i32>(-1i, 82857i))), Struct_2(vec3<u32>(26037u, 75600u, 53350u), Struct_1(-935f, vec2<i32>(i32(-2147483648), 51591i)), Struct_1(-323f, vec2<i32>(2147483647i, 26629i))), Struct_2(vec3<u32>(90588u, 8730u, 114245u), Struct_1(340f, vec2<i32>(2147483647i, 30918i)), Struct_1(-710f, vec2<i32>(0i, 2147483647i))), Struct_2(vec3<u32>(26716u, 5972u, 1u), Struct_1(1358f, vec2<i32>(-1i, 11044i)), Struct_1(1251f, vec2<i32>(-50515i, 1i))), Struct_2(vec3<u32>(4728u, 0u, 25168u), Struct_1(-780f, vec2<i32>(-8106i, -12684i)), Struct_1(1449f, vec2<i32>(2404i, 1i))), Struct_2(vec3<u32>(55095u, 17064u, 44099u), Struct_1(-841f, vec2<i32>(0i, -29336i)), Struct_1(1253f, vec2<i32>(-27086i, -12887i))), Struct_2(vec3<u32>(51609u, 26162u, 22189u), Struct_1(-718f, vec2<i32>(1i, -1i)), Struct_1(674f, vec2<i32>(-16121i, 12539i))), Struct_2(vec3<u32>(12949u, 1u, 17667u), Struct_1(-1680f, vec2<i32>(i32(-2147483648), 1275i)), Struct_1(525f, vec2<i32>(2147483647i, 0i))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: bool, arg_3: bool) -> i32 {
    var var_0 = true;
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b, 20662u), 25u)];
    let var_2 = -28094i;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(200f - 866f) * _wgslsmith_f_op_f32(step(760f, var_1.c.a))), var_1.c.a))), -((~var_1.b.b << ((var_1.a.zz ^ vec2<u32>(1u, arg_1)) % vec2<u32>(32u))) ^ _wgslsmith_clamp_vec2_i32(select(var_1.c.b, vec2<i32>(1i, -80429i), vec2<bool>(true, false)), vec2<i32>(2147483647i, u_input.a), vec2<i32>(14255i, -1i) >> (vec2<u32>(u_input.b, 85845u) % vec2<u32>(32u)))));
    var_1 = global0[_wgslsmith_index_u32(select(var_1.a.x, _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 4294967295u, 1u, var_1.a.x), vec4<u32>(40662u, var_1.a.x, u_input.b, 0u)), countOneBits(4294967295u)), arg_3), 25u)];
    return _wgslsmith_mod_i32(var_1.b.b.x, 1i) << (55918u % 32u);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> i32 {
    global0 = array<Struct_2, 25>();
    let var_0 = Struct_3(_wgslsmith_mod_vec2_i32(vec2<i32>(-520i, -_wgslsmith_dot_vec4_i32(vec4<i32>(19087i, 1i, 0i, -1i), vec4<i32>(arg_0, u_input.a, arg_1.b.x, arg_2))), arg_1.b), select(max(-2147483647i, -2147483647i), func_3(vec2<i32>(36228i, arg_1.b.x), select(u_input.b, u_input.c.x, 0u >= u_input.b), arg_1.b.x > (arg_0 | arg_0), any(vec3<bool>(true, true, true))), select(!any(vec4<bool>(true, true, false, true)), false || all(vec4<bool>(false, false, true, true)), any(vec4<bool>(true, false, false, true)))), -1i);
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    var var_1 = select(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), vec2<bool>(select(true, true, false), any(vec2<bool>(true, true))), true), vec2<bool>(max(_wgslsmith_sub_i32(arg_0, -2147483647i), var_0.a.x) >= firstTrailingBit(_wgslsmith_sub_i32(arg_2, arg_0)), all(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)))), !all(vec3<bool>(true, true, true)) | any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    return -_wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, 39049i), -1i);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)))), ~vec2<i32>(firstTrailingBit(-2147483647i), (u_input.a & arg_1.b.b.x) & _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(u_input.a, -2147483647i))));
    global0 = array<Struct_2, 25>();
    let var_1 = !vec4<bool>(true, select(true, true, false), false, any(vec4<bool>(true, true, true, true)));
    let var_2 = true;
    var var_3 = -firstTrailingBit(-vec3<i32>(-842i, arg_2.b.x, 2147483647i) | vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -27255i, 27625i, 1i), vec4<i32>(-2147483647i, 1i, 46231i, -22776i)), 0i));
    return arg_0;
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> i32 {
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    let var_0 = Struct_3(vec2<i32>(arg_0.b, firstLeadingBit(4453i)), u_input.a, _wgslsmith_mod_i32(1i, u_input.a));
    var var_1 = func_4(Struct_3(vec2<i32>(48007i, abs(abs(32802i))), reverseBits(var_0.b >> (0u % 32u)), abs(func_2(-2147483647i, Struct_1(785f, vec2<i32>(2147483647i, 20945i)), var_0.a.x)) << ((23222u ^ ~arg_1) % 32u)), global0[_wgslsmith_index_u32(~((4294967295u | u_input.b) << (u_input.b % 32u)), 25u)], Struct_1(-304f, var_0.a), _wgslsmith_f_op_f32(floor(-1077f)));
    let var_2 = false;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 25>();
    var var_0 = Struct_3(_wgslsmith_sub_vec2_i32(countOneBits(~(vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(1u, u_input.b) % vec2<u32>(32u)))), select(~firstLeadingBit(vec2<i32>(u_input.a, -11871i)), vec2<i32>(_wgslsmith_add_i32(12894i, u_input.a), func_1(Struct_3(vec2<i32>(u_input.a, 2147483647i), 785i, u_input.a), u_input.c.x)), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))), -_wgslsmith_add_i32(1i, ~24791i) ^ -firstTrailingBit(reverseBits(u_input.a)), u_input.a >> (_wgslsmith_clamp_u32(u_input.c.x, u_input.b & u_input.c.x, u_input.b) % 32u));
    var var_1 = vec2<i32>(var_0.a.x, -28800i);
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-814f * -1712f)), _wgslsmith_f_op_f32(select(-3566f, _wgslsmith_f_op_f32(f32(-1f) * -1046f), all(vec2<bool>(true, true)))))));
    var var_3 = !vec2<bool>(false, false != (true || any(vec2<bool>(true, true))));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -567f), _wgslsmith_f_op_f32(ceil(1000f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, var_2.x, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2230f)));
    var var_5 = Struct_3(~(var_0.a ^ ~vec2<i32>(var_1.x, var_1.x)), ~(i32(-1i) * -28443i), func_4(func_4(func_4(Struct_3(vec2<i32>(44971i, var_1.x), 187i, var_0.b), global0[_wgslsmith_index_u32(u_input.b, 25u)], Struct_1(var_2.x, var_0.a), -1457f), global0[_wgslsmith_index_u32(u_input.b, 25u)], Struct_1(-474f, vec2<i32>(-22814i, var_0.c)), var_4.x), Struct_2(vec3<u32>(u_input.c.x, 48217u, u_input.c.x) & vec3<u32>(u_input.b, u_input.b, 70405u), Struct_1(var_4.x, var_0.a), Struct_1(var_2.x, var_0.a)), Struct_1(_wgslsmith_f_op_f32(trunc(935f)), _wgslsmith_add_vec2_i32(var_0.a, vec2<i32>(var_0.a.x, var_0.c))), -1719f).b << (countOneBits(u_input.c.x) % 32u));
    var_0 = func_4(Struct_3(~_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(38637i, -66761i), var_0.a), vec2<i32>(1i, var_1.x)), u_input.a, firstTrailingBit(var_0.c)), global0[_wgslsmith_index_u32(max(select(u_input.b >> (~u_input.c.x % 32u), 11409u & _wgslsmith_clamp_u32(4294967295u, u_input.c.x, u_input.c.x), true && (false || var_3.x)), _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_div_u32(u_input.c.x, u_input.c.x >> (u_input.c.x % 32u)))), 25u)], Struct_1(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(506f)) * 531f)), vec2<i32>(-1i) * -vec2<i32>(10933i, -40234i)), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

