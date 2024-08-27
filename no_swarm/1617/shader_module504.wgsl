struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: array<vec2<u32>, 24>;

var<private> global2: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec3<f32>(-123f, 437f, -338f), 36439i, Struct_1(vec4<f32>(392f, 104f, 334f, 210f)), Struct_2(Struct_1(vec4<f32>(-1481f, 699f, 1000f, 166f)))), Struct_3(vec3<f32>(1070f, -1641f, 887f), 0i, Struct_1(vec4<f32>(1327f, -1000f, 1127f, -252f)), Struct_2(Struct_1(vec4<f32>(619f, -357f, -2002f, -1162f)))), Struct_3(vec3<f32>(1358f, 337f, -493f), -11080i, Struct_1(vec4<f32>(-486f, 490f, 1385f, -1000f)), Struct_2(Struct_1(vec4<f32>(1000f, 1118f, 763f, -1000f)))), Struct_3(vec3<f32>(202f, 1000f, -1000f), 0i, Struct_1(vec4<f32>(1134f, 1000f, -122f, -1821f)), Struct_2(Struct_1(vec4<f32>(1013f, -872f, -2214f, 330f)))), Struct_3(vec3<f32>(1016f, -1077f, 262f), 0i, Struct_1(vec4<f32>(1881f, 1892f, -1000f, 2028f)), Struct_2(Struct_1(vec4<f32>(1297f, -1000f, 472f, 482f)))), Struct_3(vec3<f32>(249f, 1116f, 140f), -37169i, Struct_1(vec4<f32>(100f, 1047f, -1107f, -1320f)), Struct_2(Struct_1(vec4<f32>(-187f, 513f, -429f, 225f)))), Struct_3(vec3<f32>(550f, -1005f, -404f), 18738i, Struct_1(vec4<f32>(-932f, -1166f, -1172f, -248f)), Struct_2(Struct_1(vec4<f32>(-625f, 2636f, -1130f, -1486f)))), Struct_3(vec3<f32>(2585f, 904f, -1210f), 56303i, Struct_1(vec4<f32>(1016f, -1205f, -1000f, -459f)), Struct_2(Struct_1(vec4<f32>(316f, 1030f, 209f, -758f)))), Struct_3(vec3<f32>(-364f, -3461f, -234f), -12786i, Struct_1(vec4<f32>(-839f, -917f, 615f, 1000f)), Struct_2(Struct_1(vec4<f32>(178f, 201f, 881f, 400f)))), Struct_3(vec3<f32>(-698f, -393f, 1637f), -1i, Struct_1(vec4<f32>(972f, -697f, -1917f, 383f)), Struct_2(Struct_1(vec4<f32>(-292f, 934f, -964f, 433f)))), Struct_3(vec3<f32>(456f, -170f, -361f), -8772i, Struct_1(vec4<f32>(-241f, -1663f, 769f, -700f)), Struct_2(Struct_1(vec4<f32>(-968f, 1437f, -827f, 778f)))), Struct_3(vec3<f32>(288f, -1768f, 882f), 12290i, Struct_1(vec4<f32>(602f, 146f, -587f, 1008f)), Struct_2(Struct_1(vec4<f32>(-355f, -155f, 836f, -388f)))));

var<private> global3: vec3<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    var var_0 = -286f;
    global2 = array<Struct_3, 12>();
    let var_1 = !select(!vec3<bool>(all(vec3<bool>(false, false, false)), any(vec2<bool>(false, false)), true), select(select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), vec3<bool>(false, true, false)), 43024u < u_input.b.x), u_input.a <= ~1u);
    var var_2 = _wgslsmith_add_i32(~abs(u_input.c), -14607i ^ u_input.c);
    return var_1.x;
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    let var_0 = !select(!vec4<bool>(true, true, true, func_3(vec3<f32>(168f, -555f, -641f))), vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), any(vec4<bool>(true, true, true, true)), true, true || any(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true));
    var var_1 = ~_wgslsmith_mult_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, -2147483647i), vec3<i32>(u_input.c, 35597i, 9584i)) << (~(~vec3<u32>(65823u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(~min(vec3<i32>(u_input.c, 2147483647i, -15393i), vec3<i32>(u_input.c, arg_0.x, arg_0.x)), _wgslsmith_mod_vec3_i32(~vec3<i32>(-17485i, arg_0.x, 1i), -vec3<i32>(arg_0.x, 790i, u_input.c)), vec3<i32>(~(-33919i), arg_0.x, ~33392i)));
    var var_2 = ~(~4294967295u);
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 1883f, -1406f, global3.x)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.x, -739f, 943f, -889f))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1049f, -1693f, var_0.x)), _wgslsmith_f_op_f32(select(global3.x, -275f, false)), _wgslsmith_f_op_f32(-1566f - -1393f), _wgslsmith_f_op_f32(min(global3.x, global3.x))) - vec4<f32>(_wgslsmith_f_op_f32(global3.x - global3.x), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(1582f * global3.x), global3.x)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1662f, var_3.x, var_3.x, var_3.x) - vec4<f32>(-400f, global3.x, var_3.x, 214f)) * vec4<f32>(var_3.x, global3.x, -2184f, var_3.x)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(801f, -591f, global3.x, global3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1375f, 2032f, var_3.x, var_3.x)))))));
    return ~_wgslsmith_mod_i32(-_wgslsmith_clamp_i32(var_1.x, 30576i, -35864i) ^ ((var_1.x | arg_0.x) >> (select(u_input.b.x, 4294967295u, true) % 32u)), var_1.x);
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: bool) -> vec4<bool> {
    global0 = array<Struct_2, 28>();
    let var_0 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_1.x, 29704u, u_input.a)), firstTrailingBit(u_input.b.xxz));
    global2 = array<Struct_3, 12>();
    var var_1 = u_input.b;
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, global3.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(170f, 901f, -1000f) - vec3<f32>(-282f, 529f, -673f))), vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(trunc(1663f)), _wgslsmith_f_op_f32(sign(-163f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-818f, global3.x, global3.x)))), func_2(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, u_input.c, u_input.c), ~vec4<i32>(15992i, -45360i, -1i, u_input.c)), _wgslsmith_add_i32(-1i, u_input.c))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(369f, -1000f, 208f, 1429f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.x, 1000f, global3.x, -1000f)))))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-344f, 407f, -307f, global3.x)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.x, -819f, 392f, global3.x)))))));
    return vec4<bool>(arg_2 | select(any(select(vec2<bool>(arg_0, false), vec2<bool>(false, false), vec2<bool>(arg_0, arg_0))), arg_0, true), all(!(!select(vec2<bool>(arg_0, arg_2), vec2<bool>(arg_2, false), true))), any(select(select(select(vec4<bool>(arg_2, arg_2, arg_2, arg_0), vec4<bool>(arg_0, true, arg_0, true), true), select(vec4<bool>(arg_0, true, true, true), vec4<bool>(arg_2, arg_2, arg_0, arg_0), arg_2), true), !(!vec4<bool>(true, arg_2, arg_0, arg_2)), !(!arg_0))), arg_2 | any(vec4<bool>(select(arg_2, arg_2, arg_2), arg_0, arg_0, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 12>();
    global2 = array<Struct_3, 12>();
    let var_0 = ~(vec3<u32>(u_input.b.x, _wgslsmith_add_u32(20184u, ~69642u), 1u) | ~vec3<u32>(select(u_input.a, u_input.a, false), 4294967295u, abs(u_input.a)));
    let var_1 = !(!func_1(all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), u_input.b.xy, _wgslsmith_div_f32(global3.x, 853f) <= _wgslsmith_f_op_f32(f32(-1f) * -893f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -230f)), 203f)), _wgslsmith_f_op_f32(f32(-1f) * -627f), global3.xx, _wgslsmith_mult_u32(~(abs(var_0.x) & _wgslsmith_div_u32(var_0.x, u_input.b.x)), ~(~abs(var_0.x))));
}

