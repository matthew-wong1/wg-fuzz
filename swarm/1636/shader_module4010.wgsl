struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<u32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28>;

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(true, true, true)), Struct_3(vec3<bool>(true, false, false)), Struct_3(vec3<bool>(true, false, false)), Struct_3(vec3<bool>(false, true, true)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(true, false, true)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(true, false, true)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(false, false, false)), Struct_3(vec3<bool>(true, false, false)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(false, true, true)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(true, true, true)), Struct_3(vec3<bool>(true, true, false)), Struct_3(vec3<bool>(true, true, true)), Struct_3(vec3<bool>(false, false, false)), Struct_3(vec3<bool>(true, false, true)), Struct_3(vec3<bool>(true, false, true)), Struct_3(vec3<bool>(false, false, false)), Struct_3(vec3<bool>(false, true, false)), Struct_3(vec3<bool>(true, false, true)));

var<private> global3: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<u32>(1u, 13979u, 4294967295u, 0u), true, vec3<u32>(9306u, 5440u, 28175u), 130f, vec4<f32>(-1000f, 542f, 484f, -1695f)), Struct_1(vec4<u32>(52934u, 1u, 73231u, 20629u), true, vec3<u32>(0u, 8853u, 4294967295u), 891f, vec4<f32>(-237f, -1585f, 965f, 475f)), Struct_1(vec4<u32>(117u, 4294967295u, 4294967295u, 46771u), false, vec3<u32>(1u, 1u, 5716u), -1221f, vec4<f32>(187f, -1050f, 1000f, -1751f)), Struct_1(vec4<u32>(54415u, 87482u, 20891u, 15607u), false, vec3<u32>(1u, 4294967295u, 0u), 1000f, vec4<f32>(108f, -2719f, -1959f, 463f)), Struct_1(vec4<u32>(4294967295u, 0u, 31461u, 4294967295u), false, vec3<u32>(76867u, 0u, 1u), 637f, vec4<f32>(177f, 1000f, -1196f, -1855f)), Struct_1(vec4<u32>(40497u, 0u, 22115u, 0u), true, vec3<u32>(11971u, 7130u, 51771u), -610f, vec4<f32>(298f, 637f, 787f, -236f)), Struct_1(vec4<u32>(1u, 52834u, 4294967295u, 4294967295u), true, vec3<u32>(13558u, 0u, 60575u), -598f, vec4<f32>(555f, -1706f, 1394f, -567f)), Struct_1(vec4<u32>(21087u, 708u, 4294967295u, 6084u), false, vec3<u32>(29941u, 20207u, 4294967295u), -863f, vec4<f32>(651f, -891f, 861f, -859f)), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 1u), true, vec3<u32>(14366u, 550u, 16134u), -1465f, vec4<f32>(-1000f, -160f, 1000f, -835f)), Struct_1(vec4<u32>(3530u, 33109u, 101806u, 4294967295u), true, vec3<u32>(0u, 1u, 43989u), 893f, vec4<f32>(-126f, -109f, 1891f, 2241f)), Struct_1(vec4<u32>(11137u, 85008u, 1u, 4294967295u), false, vec3<u32>(22939u, 4294967295u, 37231u), -719f, vec4<f32>(-534f, -960f, 1267f, 311f)), Struct_1(vec4<u32>(0u, 1u, 0u, 7285u), false, vec3<u32>(27616u, 70551u, 10726u), 1486f, vec4<f32>(-1096f, 202f, -575f, 1698f)), Struct_1(vec4<u32>(0u, 74056u, 0u, 66009u), true, vec3<u32>(4294967295u, 4294967295u, 17485u), -545f, vec4<f32>(1491f, -434f, -1418f, -964f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> u32 {
    global2 = array<Struct_3, 27>();
    global0 = array<vec2<bool>, 28>();
    var var_0 = 1923f;
    global2 = array<Struct_3, 27>();
    var var_1 = ~u_input.b.x | _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.d, 1u, u_input.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(18104u, u_input.b.x, 67018u, 14633u), vec4<u32>(1u, u_input.d, 13619u, u_input.b.x))), _wgslsmith_add_vec4_u32(~(vec4<u32>(61367u, 7545u, u_input.d, 46772u) & vec4<u32>(0u, 4294967295u, 0u, 4294967295u)), ~firstTrailingBit(vec4<u32>(u_input.d, 34762u, 103801u, 53754u))));
    return u_input.d;
}

fn func_2() -> Struct_3 {
    global0 = array<vec2<bool>, 28>();
    global2 = array<Struct_3, 27>();
    global0 = array<vec2<bool>, 28>();
    let var_0 = _wgslsmith_div_u32(_wgslsmith_mod_u32(~(~u_input.d), func_3(abs(-17384i))) | _wgslsmith_add_u32(~u_input.b.x << (1u % 32u), 1u), 0u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, global1.x, global1.x, global1.x)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-441f, global1.x, -1002f, global1.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, -689f, -837f, -668f))), vec4<f32>(-109f, 478f, global1.x, -1468f)))));
    return global2[_wgslsmith_index_u32(0u, 27u)];
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_3 {
    let var_0 = !vec2<bool>(true, arg_0.b);
    global0 = array<vec2<bool>, 28>();
    global3 = array<Struct_1, 13>();
    let var_1 = select(abs(_wgslsmith_sub_vec2_u32(select(abs(vec2<u32>(u_input.d, arg_0.c.x)), _wgslsmith_sub_vec2_u32(arg_0.a.zz, u_input.b.xz), vec2<bool>(arg_0.b, true)), ~(vec2<u32>(u_input.d, 4294967295u) << (vec2<u32>(arg_1, u_input.d) % vec2<u32>(32u))))), arg_0.c.xy, select(any(select(vec4<bool>(true, true, arg_0.b, arg_0.b), vec4<bool>(false, var_0.x, arg_0.b, true), false)), var_0.x, -2147483647i != ~u_input.a) & false);
    global3 = array<Struct_1, 13>();
    return func_2();
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global1.xx))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.yx) - _wgslsmith_div_vec2_f32(global1.yz, vec2<f32>(1555f, _wgslsmith_f_op_f32(-global1.x)))), global0[_wgslsmith_index_u32(u_input.b.x, 28u)]));
    let var_1 = arg_0;
    let var_2 = Struct_4(Struct_2(select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.b.x, 4294967295u, u_input.d), vec4<u32>(u_input.b.x, 34164u, 22433u, u_input.d)), firstTrailingBit(vec4<u32>(0u, u_input.d, u_input.b.x, 4294967295u)), vec4<bool>(var_1.a.x, true, arg_0.a.x, arg_0.a.x)) >> (vec4<u32>(16761u, 1u, 6058u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 18232u), vec2<u32>(u_input.b.x, u_input.b.x))) % vec4<u32>(32u)), -383f), select(select(!vec4<bool>(false, arg_0.a.x, false, var_1.a.x), !vec4<bool>(arg_0.a.x, true, arg_0.a.x, true), !vec4<bool>(true, arg_0.a.x, arg_0.a.x, true)), select(select(select(vec4<bool>(var_1.a.x, true, var_1.a.x, true), vec4<bool>(true, false, var_1.a.x, true), vec4<bool>(true, true, var_1.a.x, arg_0.a.x)), select(vec4<bool>(var_1.a.x, true, true, false), vec4<bool>(var_1.a.x, arg_0.a.x, arg_0.a.x, true), true), var_0.x >= global1.x), vec4<bool>(true, arg_0.a.x, !var_1.a.x, -106786i == u_input.c.x), !var_1.a.x), any(!vec4<bool>(var_1.a.x, arg_0.a.x, var_1.a.x, false))), ~(~_wgslsmith_mod_u32(~32553u, u_input.b.x)));
    global1 = vec3<f32>(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1741f))));
    let var_3 = Struct_2(var_2.a.a, _wgslsmith_f_op_f32(step(-222f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -555f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_0.x, 1148f, false))))))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = func_4(func_1(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) | 59664u, 13u)], ~reverseBits(0u) >> (_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(u_input.b.x, u_input.d)) % 32u)));
    let var_2 = Struct_3(var_1.b.yxw);
    global0 = array<vec2<bool>, 28>();
    global0 = array<vec2<bool>, 28>();
    let var_3 = Struct_2(firstTrailingBit(var_1.a.a), var_1.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstTrailingBit(~(~var_3.a.zyy))), ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(var_1.c), 4294967295u, 1u), vec3<u32>(var_1.a.a.x, u_input.b.x, func_4(Struct_3(vec3<bool>(var_1.b.x, var_2.a.x, var_1.b.x))).c)), u_input.c.yzw, 1u);
}

