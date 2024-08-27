struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
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

var<private> global0: Struct_1;

var<private> global1: array<i32, 1> = array<i32, 1>(30543i);

var<private> global2: Struct_4 = Struct_4(vec3<u32>(80030u, 1u, 4294967295u), vec2<f32>(-1800f, -1173f), true);

var<private> global3: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_1(4294967295u, vec3<i32>(5261i, 68333i, 1i), vec3<f32>(1000f, 408f, -1944f)), Struct_1(0u, vec3<i32>(0i, 12178i, 2147483647i), vec3<f32>(-1183f, -733f, -640f)), vec2<f32>(-175f, 1000f), vec4<u32>(13174u, 0u, 4294967295u, 4294967295u)), Struct_3(Struct_1(67011u, vec3<i32>(i32(-2147483648), 6834i, 2147483647i), vec3<f32>(-745f, -886f, 2076f)), Struct_1(92065u, vec3<i32>(29396i, i32(-2147483648), 0i), vec3<f32>(-1000f, 2169f, 772f)), vec2<f32>(-1305f, -802f), vec4<u32>(0u, 48398u, 4294967295u, 10032u)), Struct_3(Struct_1(10237u, vec3<i32>(2147483647i, 2147483647i, 1i), vec3<f32>(1707f, 529f, -1364f)), Struct_1(4294967295u, vec3<i32>(-36465i, 9750i, i32(-2147483648)), vec3<f32>(1594f, 755f, 1741f)), vec2<f32>(-1000f, -326f), vec4<u32>(0u, 17600u, 22105u, 47589u)), Struct_3(Struct_1(50682u, vec3<i32>(0i, 27826i, 0i), vec3<f32>(757f, 470f, -181f)), Struct_1(14487u, vec3<i32>(-8367i, 25655i, -13453i), vec3<f32>(929f, -1544f, 1188f)), vec2<f32>(-159f, -2258f), vec4<u32>(4726u, 0u, 9286u, 4294967295u)), Struct_3(Struct_1(226u, vec3<i32>(-976i, 5856i, 34823i), vec3<f32>(3363f, -511f, -1802f)), Struct_1(1u, vec3<i32>(8808i, -36955i, 0i), vec3<f32>(402f, 519f, 846f)), vec2<f32>(-995f, 275f), vec4<u32>(14299u, 15356u, 0u, 1u)), Struct_3(Struct_1(1u, vec3<i32>(-31510i, 19480i, 62338i), vec3<f32>(-1854f, -568f, 1046f)), Struct_1(16483u, vec3<i32>(-1i, -1i, i32(-2147483648)), vec3<f32>(-428f, -357f, 157f)), vec2<f32>(1000f, 800f), vec4<u32>(4294967295u, 0u, 0u, 5312u)), Struct_3(Struct_1(38003u, vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<f32>(1611f, 437f, -282f)), Struct_1(42141u, vec3<i32>(-45335i, 2147483647i, 7404i), vec3<f32>(326f, 281f, 147f)), vec2<f32>(1001f, -1066f), vec4<u32>(4294967295u, 78073u, 0u, 3845u)), Struct_3(Struct_1(0u, vec3<i32>(-17965i, -1i, -17880i), vec3<f32>(1746f, -1515f, -859f)), Struct_1(1u, vec3<i32>(0i, 1i, -1561i), vec3<f32>(-729f, -1410f, 810f)), vec2<f32>(1363f, -542f), vec4<u32>(29940u, 0u, 1u, 4294967295u)), Struct_3(Struct_1(4294967295u, vec3<i32>(-7834i, -20706i, -11616i), vec3<f32>(352f, 1274f, 1821f)), Struct_1(39515u, vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<f32>(705f, 297f, 1935f)), vec2<f32>(-419f, 1000f), vec4<u32>(44330u, 13982u, 4294967295u, 20638u)), Struct_3(Struct_1(4294967295u, vec3<i32>(1i, 0i, 2147483647i), vec3<f32>(-1065f, 1520f, -959f)), Struct_1(721u, vec3<i32>(-15298i, 2147483647i, 18312i), vec3<f32>(-899f, 795f, 382f)), vec2<f32>(-1000f, 440f), vec4<u32>(1u, 1u, 0u, 11305u)), Struct_3(Struct_1(0u, vec3<i32>(21488i, 0i, i32(-2147483648)), vec3<f32>(1000f, -474f, -354f)), Struct_1(15928u, vec3<i32>(1i, 27816i, 9624i), vec3<f32>(323f, 415f, 359f)), vec2<f32>(-699f, 938f), vec4<u32>(1u, 1u, 1u, 59429u)), Struct_3(Struct_1(29624u, vec3<i32>(0i, -28806i, i32(-2147483648)), vec3<f32>(-377f, -448f, 498f)), Struct_1(1932u, vec3<i32>(i32(-2147483648), 1i, -17788i), vec3<f32>(530f, 897f, 671f)), vec2<f32>(-1245f, -240f), vec4<u32>(0u, 4294967295u, 4294967295u, 28590u)), Struct_3(Struct_1(4294967295u, vec3<i32>(-21466i, i32(-2147483648), 0i), vec3<f32>(-1000f, 1111f, -892f)), Struct_1(1u, vec3<i32>(-49205i, 2147483647i, 2147483647i), vec3<f32>(-345f, -1199f, -937f)), vec2<f32>(-1300f, -798f), vec4<u32>(4294967295u, 17635u, 1u, 87182u)));

var<private> global4: array<f32, 15> = array<f32, 15>(518f, -438f, 476f, -934f, 353f, -288f, 406f, -150f, -641f, 1032f, -1467f, 1326f, 940f, -315f, 1234f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<bool>) -> i32 {
    global1 = array<i32, 1>();
    global3 = array<Struct_3, 13>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-global0.c.xx));
    var_0 = Struct_2(vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.b.x + var_0.a.x)))))));
    global0 = Struct_1(global2.a.x & _wgslsmith_add_u32(min(global0.a, 17486u) << (~global2.a.x % 32u), global0.a), u_input.a, global0.c);
    return -46026i;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(Struct_1(~u_input.b, _wgslsmith_sub_vec3_i32(vec3<i32>(func_3(global0.b.xx, 2147483647i, vec3<bool>(global2.c, global2.c, true)), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.b, 1u)], global0.b.x), ~5788i), ~u_input.a), vec3<f32>(_wgslsmith_f_op_f32(-1765f - _wgslsmith_f_op_f32(-940f - global0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global0.a, 15u)])), _wgslsmith_f_op_f32(sign(global2.b.x)))), Struct_1(global0.a, global0.b, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(global0.c))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.b)), ~vec4<u32>(~45805u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(5555u, u_input.c.x), global2.a.zx, vec2<bool>(false, global2.c)), u_input.c.yz), 20983u, _wgslsmith_add_u32(11000u, ~global2.a.x)));
    var var_1 = _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(~(~4294967295u), 4294967295u)), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c.x, u_input.b), select(vec2<u32>(global2.a.x, 1u), ~vec2<u32>(37041u, 0u), true)), ~vec2<u32>(global2.a.x, 1u)));
    global1 = array<i32, 1>();
    var var_2 = Struct_3(var_0.b, var_0.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, var_0.c.x))))))), vec4<u32>(var_1.x, 34357u, 38410u, ~global0.a) << (~var_0.d % vec4<u32>(32u)));
    let var_3 = 1u ^ ~global2.a.x;
    return Struct_1(0u, vec3<i32>(abs(global1[_wgslsmith_index_u32(~6970u, 1u)]), func_3(-var_2.b.b.zy << (_wgslsmith_clamp_vec2_u32(u_input.c.xx, var_2.d.wx, vec2<u32>(25133u, var_0.d.x)) % vec2<u32>(32u)), ~abs(-2147483647i), vec3<bool>(true, global2.c, u_input.d.x == global1[_wgslsmith_index_u32(var_1.x, 1u)])), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_2.b.b.x, global0.b.x, 2147483647i, -12712i)), reverseBits(~vec4<i32>(2147483647i, -48308i, 1860i, var_2.b.b.x)))), var_0.b.c);
}

fn func_1() -> Struct_4 {
    global4 = array<f32, 15>();
    global4 = array<f32, 15>();
    global1 = array<i32, 1>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global2.b, vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1155f * 1598f), global4[_wgslsmith_index_u32(1u, 15u)], true)))), vec2<f32>(global2.b.x, -361f));
    global0 = func_2();
    return Struct_4(u_input.c, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 15u)] + _wgslsmith_f_op_f32(-1000f * global2.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(27947u, 15u)], 694f))) + var_0.x)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    var var_0 = !select(!select(vec2<bool>(true, global2.c), select(vec2<bool>(true, false), vec2<bool>(false, global2.c), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, global2.c), vec2<bool>(true, global2.c))), select(!select(vec2<bool>(false, true), vec2<bool>(global2.c, true), vec2<bool>(global2.c, global2.c)), select(select(vec2<bool>(true, global2.c), vec2<bool>(global2.c, true), true), select(vec2<bool>(global2.c, global2.c), vec2<bool>(true, true), global2.c), select(vec2<bool>(global2.c, true), vec2<bool>(true, global2.c), vec2<bool>(global2.c, true))), !all(vec4<bool>(true, global2.c, global2.c, global2.c))), global2.a.x <= u_input.c.x);
    global1 = array<i32, 1>();
    var var_1 = false;
    var var_2 = ~u_input.b;
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global4[_wgslsmith_index_u32(min(global2.a.x, 54611u << (global2.a.x % 32u)), 15u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-112f, -916f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~u_input.d.x, 1i, any(select(!vec2<bool>(var_0.x, true), !vec2<bool>(var_0.x, global2.c), vec2<bool>(true, global2.c)))));
}

