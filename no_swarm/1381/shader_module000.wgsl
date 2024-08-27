struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(0i, 1u, vec3<i32>(-14459i, -13871i, i32(-2147483648)), -16414i, 1i), Struct_1(62565i, 4294967295u, vec3<i32>(16483i, 1i, i32(-2147483648)), 2147483647i, 2147483647i), Struct_1(1i, 14946u, vec3<i32>(-21882i, 0i, 1i), -23288i, -49225i), Struct_1(i32(-2147483648), 1u, vec3<i32>(-1i, 1i, -39315i), 30759i, -16158i), Struct_1(-1i, 84319u, vec3<i32>(-23973i, -24100i, 18974i), -9236i, -1i), Struct_1(2147483647i, 51729u, vec3<i32>(78764i, 18205i, 2147483647i), -689i, 1i), Struct_1(-28734i, 4294967295u, vec3<i32>(53667i, -1i, 60884i), 1i, -46193i), Struct_1(2147483647i, 4294967295u, vec3<i32>(-1i, 2147483647i, -1i), 2147483647i, 1i), Struct_1(0i, 88669u, vec3<i32>(-31369i, 13377i, -1i), 1i, 11161i), Struct_1(2147483647i, 45696u, vec3<i32>(2147483647i, 25746i, 55140i), 1i, i32(-2147483648)), Struct_1(-34919i, 0u, vec3<i32>(-28379i, 66397i, 19451i), -27285i, -1i), Struct_1(-32240i, 2719u, vec3<i32>(2147483647i, -1i, -1i), 20246i, 2147483647i), Struct_1(0i, 60267u, vec3<i32>(83780i, -9426i, 1i), 2147483647i, 1i), Struct_1(i32(-2147483648), 38228u, vec3<i32>(4535i, -25805i, 70700i), 23475i, -601i), Struct_1(2147483647i, 0u, vec3<i32>(-1i, -1i, 9124i), 7803i, -42485i), Struct_1(i32(-2147483648), 4294967295u, vec3<i32>(-3864i, 21998i, -5051i), -45774i, -5223i), Struct_1(-1i, 81464u, vec3<i32>(2147483647i, 2147483647i, 9245i), 0i, 1i), Struct_1(0i, 1u, vec3<i32>(-37848i, 2147483647i, 1i), 2910i, 67435i), Struct_1(2147483647i, 29978u, vec3<i32>(-15756i, i32(-2147483648), 0i), 13650i, i32(-2147483648)), Struct_1(23869i, 4294967295u, vec3<i32>(-43435i, 33546i, 1i), -1i, -55905i), Struct_1(33678i, 0u, vec3<i32>(34375i, 2147483647i, -1010i), -17225i, -47215i), Struct_1(30688i, 14642u, vec3<i32>(19953i, 0i, -7418i), 1i, -1i), Struct_1(1i, 0u, vec3<i32>(1i, 18304i, 25565i), 14250i, 5377i), Struct_1(i32(-2147483648), 0u, vec3<i32>(1i, -13558i, -35981i), 0i, -13670i), Struct_1(2147483647i, 11692u, vec3<i32>(-16920i, i32(-2147483648), 0i), 57834i, 2147483647i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<f32>) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.c, 25u)];
    var var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 25u)];
    let var_2 = select(!(!vec4<bool>(true, true, true, any(vec4<bool>(false, false, true, false)))), !select(vec4<bool>(any(vec3<bool>(true, false, true)), true, arg_2.x > -1120f, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(864f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * 395f) * _wgslsmith_f_op_f32(arg_2.x - -1121f)), any(vec4<bool>(false, false, true, false)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + -633f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1313f, -888f)) * _wgslsmith_f_op_f32(arg_2.x - arg_2.x))));
    let var_3 = Struct_1(~var_1.c.x, ~(~(~_wgslsmith_dot_vec2_u32(arg_1.zy, u_input.a.yz))), -var_1.c, var_1.a, -min(-1i, 1i) ^ max(~select(var_1.d, 1i, true), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d, 1i, -2147483647i, -1i), firstLeadingBit(vec4<i32>(u_input.b, var_0.a, u_input.b, var_1.d)))));
    var var_4 = abs(vec4<i32>(i32(-1i) * -var_0.a, u_input.b, -11753i, abs(_wgslsmith_mult_i32(0i, ~var_1.c.x))));
    return var_4.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(abs(_wgslsmith_sub_i32(-22821i, -firstTrailingBit(u_input.b))), ~u_input.c, -vec3<i32>(u_input.d, ~u_input.b, u_input.b) >> (~(u_input.a | reverseBits(vec3<u32>(u_input.a.x, u_input.c, u_input.a.x))) % vec3<u32>(32u)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(2147483647i | u_input.d, ~19240i), 0i) >> (min(1u, ~u_input.c << (~u_input.c % 32u)) % 32u), select(-12827i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.d, u_input.b, -66539i), select(vec4<i32>(2147483647i, u_input.b, -34955i, u_input.d), vec4<i32>(u_input.d, u_input.d, u_input.b, u_input.b), false)), u_input.b), !(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 37501u, 12855u, 834u), vec4<u32>(u_input.c, 54606u, 42930u, 1u)) < ~u_input.a.x)));
    global1 = array<Struct_1, 25>();
    global1 = array<Struct_1, 25>();
    let var_1 = Struct_1(~select(~0i, 16052i, true), select(~(~1u), ~(~(~4294967295u)), true), ~(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(var_0.c, var_0.c), ~var_0.c) ^ -select(vec3<i32>(var_0.e, var_0.a, var_0.e), vec3<i32>(u_input.b, u_input.b, 16651i), true)), _wgslsmith_div_i32(u_input.b, func_3(23306u, select(u_input.a, select(vec3<u32>(81957u, var_0.b, u_input.c), u_input.a, vec3<bool>(false, false, true)), false), vec4<f32>(310f, -465f, _wgslsmith_f_op_f32(-627f - 681f), _wgslsmith_f_op_f32(step(1012f, -280f))))), -var_0.e);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(401f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-213f - -359f)), _wgslsmith_f_op_f32(f32(-1f) * -1723f))) * -1445f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1480f)))));
    return Struct_1(u_input.d, var_1.b, reverseBits(vec3<i32>(-1i, func_3(4294967295u, u_input.a | vec3<u32>(17502u, var_1.b, var_0.b), vec4<f32>(-2116f, var_2.x, -382f, var_2.x)), -38457i)), var_1.a, -u_input.d ^ 10267i);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec2<bool> {
    global1 = array<Struct_1, 25>();
    global0 = array<Struct_1, 8>();
    var var_0 = global0[_wgslsmith_index_u32(~4294967295u, 8u)];
    var_0 = func_2();
    var var_1 = 14785u;
    return vec2<bool>(true, true);
}

fn func_4(arg_0: u32, arg_1: bool) -> vec4<bool> {
    return vec4<bool>(func_1(func_2(), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(709f)))), _wgslsmith_div_f32(-1772f, -1191f)))).x, all(!(!func_1(global1[_wgslsmith_index_u32(arg_0, 25u)], -1000f))), false, func_1(Struct_1(u_input.b, u_input.c, ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(u_input.d, 85769i, u_input.b)), abs(abs(45301i)), firstLeadingBit(reverseBits(3907i))), -1395f).x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 25>();
    global0 = array<Struct_1, 8>();
    var var_0 = -16788i >> (~min(_wgslsmith_div_u32(4294967295u, ~102949u), u_input.a.x) % 32u);
    let var_1 = -_wgslsmith_mod_vec2_i32(vec2<i32>(~abs(u_input.d), (u_input.d | -27374i) << (~u_input.c % 32u)), vec2<i32>(-u_input.d << (_wgslsmith_div_u32(0u, u_input.a.x) % 32u), ~(~2147483647i)));
    let var_2 = func_4(~0u, false && any(!func_1(global0[_wgslsmith_index_u32(u_input.c, 8u)], 597f)));
    global1 = array<Struct_1, 25>();
    var var_3 = 54003u;
    let x = u_input.a;
    s_output = StorageBuffer(1353f, ~(~u_input.a.yz), ~1i, vec3<u32>(~(~(u_input.c & 0u)), u_input.c, _wgslsmith_mod_u32(89049u, 75621u)), firstTrailingBit(var_1));
}

