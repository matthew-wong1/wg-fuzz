struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: bool = false;

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<f32>(2793f, -2071f, -312f), vec3<f32>(1895f, 1156f, 1270f), vec2<f32>(-453f, 690f), 82817u), Struct_1(vec3<f32>(1000f, 223f, -210f), vec3<f32>(-359f, -102f, -1233f), vec2<f32>(-438f, 505f), 4294967295u), Struct_1(vec3<f32>(-213f, 651f, -664f), vec3<f32>(-1833f, 1553f, -1594f), vec2<f32>(-1646f, 1000f), 0u), Struct_1(vec3<f32>(1953f, 367f, 1377f), vec3<f32>(-405f, 1273f, 577f), vec2<f32>(1397f, -623f), 4294967295u), Struct_1(vec3<f32>(798f, -1020f, 2632f), vec3<f32>(1000f, 152f, -759f), vec2<f32>(850f, -2565f), 0u), Struct_1(vec3<f32>(1304f, 425f, -434f), vec3<f32>(-352f, -145f, -572f), vec2<f32>(-110f, 1354f), 10044u), Struct_1(vec3<f32>(513f, -111f, 505f), vec3<f32>(-1268f, -2469f, 1182f), vec2<f32>(-2119f, 541f), 4294967295u), Struct_1(vec3<f32>(1410f, 141f, 116f), vec3<f32>(816f, 389f, 369f), vec2<f32>(-283f, -278f), 4294967295u), Struct_1(vec3<f32>(-1000f, -293f, 852f), vec3<f32>(-886f, 372f, 357f), vec2<f32>(-487f, 265f), 0u), Struct_1(vec3<f32>(761f, -1000f, 146f), vec3<f32>(-250f, 570f, -1000f), vec2<f32>(-471f, -365f), 25681u), Struct_1(vec3<f32>(-874f, -233f, 538f), vec3<f32>(-1579f, -387f, -601f), vec2<f32>(-1421f, 883f), 52146u), Struct_1(vec3<f32>(-464f, -149f, 831f), vec3<f32>(449f, 433f, 718f), vec2<f32>(135f, -2110f), 4294967295u), Struct_1(vec3<f32>(1401f, 1730f, -1337f), vec3<f32>(-1688f, -101f, -2050f), vec2<f32>(-1013f, -1615f), 32470u), Struct_1(vec3<f32>(-506f, 565f, 607f), vec3<f32>(547f, 789f, 1127f), vec2<f32>(313f, 3511f), 4294967295u), Struct_1(vec3<f32>(-130f, 1254f, 155f), vec3<f32>(1551f, -2018f, -230f), vec2<f32>(-1463f, 1688f), 0u), Struct_1(vec3<f32>(494f, 482f, -114f), vec3<f32>(-1311f, 467f, 201f), vec2<f32>(379f, 236f), 0u), Struct_1(vec3<f32>(1211f, -159f, 611f), vec3<f32>(-1029f, 564f, 210f), vec2<f32>(791f, -909f), 4294967295u), Struct_1(vec3<f32>(-1042f, 1331f, 158f), vec3<f32>(-219f, 1279f, -252f), vec2<f32>(203f, 551f), 18962u), Struct_1(vec3<f32>(557f, 712f, -125f), vec3<f32>(1000f, 191f, -272f), vec2<f32>(-1290f, -280f), 23214u), Struct_1(vec3<f32>(-118f, -1000f, 431f), vec3<f32>(-251f, 2152f, 1454f), vec2<f32>(1000f, 140f), 119348u), Struct_1(vec3<f32>(2955f, -315f, 670f), vec3<f32>(1831f, 927f, 1182f), vec2<f32>(-499f, -2030f), 18569u), Struct_1(vec3<f32>(-151f, -1179f, 959f), vec3<f32>(-391f, -2010f, 554f), vec2<f32>(-1382f, -463f), 48821u), Struct_1(vec3<f32>(-1195f, 1000f, 1525f), vec3<f32>(-2229f, -1226f, -147f), vec2<f32>(-803f, 727f), 68742u), Struct_1(vec3<f32>(1000f, -1572f, 1050f), vec3<f32>(-155f, -992f, 844f), vec2<f32>(-900f, 1490f), 15994u), Struct_1(vec3<f32>(367f, 1365f, 179f), vec3<f32>(367f, 988f, -733f), vec2<f32>(811f, 830f), 71483u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    global0 = u_input.b.x;
    global3 = array<Struct_1, 25>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(f32(-1f) * -2020f));
    global3 = array<Struct_1, 25>();
    global1 = all(vec2<bool>(true, true));
    return 0u;
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = ~94301u;
    var var_1 = !(!(u_input.a.x <= -2147483647i));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(-(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) & u_input.a.x), 16334i, u_input.a.x, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(34463i, -33629i, u_input.a.x, ~u_input.a.x) ^ vec4<i32>(0i, 2147483647i, u_input.a.x << (84537u % 32u), abs(u_input.a.x)), ~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -56171i, 1827i, u_input.a.x), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -24787i))));
    global0 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(13512u, var_0, 1u), u_input.b.wxx), u_input.b.xxw >> (vec3<u32>(4294967295u, arg_0.a.d, 18712u) % vec3<u32>(32u))), vec3<u32>(7200u, _wgslsmith_dot_vec4_u32(vec4<u32>(74547u, u_input.b.x, arg_0.a.d, u_input.b.x), u_input.b << (u_input.b % vec4<u32>(32u))), select(1u, u_input.b.x, select(true, false, true)))), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~u_input.b.x, 1u), 0u, 0u), firstLeadingBit(1u), 1u));
    return (0i ^ abs(var_3.x)) != select(~9488i & u_input.a.x, u_input.a.x, select(true, false, true) | true);
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> bool {
    let var_0 = Struct_3(-861f, 636f);
    var var_1 = arg_1;
    global3 = array<Struct_1, 25>();
    let var_2 = Struct_2(global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~firstTrailingBit(u_input.b.x), u_input.b.x), 25u)], _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, arg_0, -843f, _wgslsmith_f_op_f32(-var_0.b))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-var_2.b);
    return !(!func_3(Struct_2(global3[_wgslsmith_index_u32(~var_2.a.d, 25u)], vec4<f32>(137f, var_3.x, -1000f, var_0.b))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>) -> vec2<f32> {
    let var_0 = ~u_input.b.zw;
    let var_1 = 28318u;
    global0 = 1u;
    global2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), global2.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) - global2.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1790f));
    return vec2<f32>(var_2, var_2);
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_4(-_wgslsmith_sub_vec4_i32(~(vec4<i32>(-2147483647i, 3088i, u_input.a.x, u_input.a.x) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -12313i)), select(vec4<i32>(-2147483647i, -50079i, u_input.a.x, 3601i), vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(false, true, true, true)) ^ vec4<i32>(-1049i, u_input.a.x, u_input.a.x, -14974i)), 13200u | _wgslsmith_dot_vec3_u32(u_input.b.yyw, ~vec3<u32>(0u, u_input.b.x, 31590u)), global2.x);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, -532f, var_0.c)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(263f, 1165f, 181f)) + vec3<f32>(504f, var_0.c, arg_2.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, arg_2.x)) * arg_2), ~28374u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 841f, arg_2.x, 849f)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(861f, -1099f, false)))), var_0.c, global2.x, -609f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~(~(~u_input.b.x) << (u_input.b.x % 32u)), _wgslsmith_div_u32(func_1(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b.x, 4782u & u_input.b.x), 25u)], u_input.a.x), u_input.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(vec4<bool>(func_2(global2.x, vec4<bool>(true, true, false, true)), true, func_2(-888f, vec4<bool>(false, false, true, false)), func_3(Struct_2(global3[_wgslsmith_index_u32(u_input.b.x, 25u)], vec4<f32>(global2.x, global2.x, -322f, 2212f)))), vec2<bool>(func_2(global2.x, vec4<bool>(true, false, false, true)), false))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) + vec2<f32>(global2.x, global2.x)) - vec2<f32>(-1844f, global2.x))));
    var var_1 = ~vec2<u32>(u_input.b.x, var_0.a.d);
    var var_2 = Struct_3(global2.x, _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-var_0.a.c.x), false))))));
    var_2 = Struct_3(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), vec2<bool>(true, true))).x));
    let var_3 = var_0.a.a.x;
    let var_4 = func_5(1u, 1u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.a.a.xz), _wgslsmith_f_op_vec2_f32(-var_0.a.b.xz), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-var_0.b.zw))).a;
    var_2 = Struct_3(-1454f, -689f);
    let x = u_input.a;
    s_output = StorageBuffer(-64564i, ~(~vec3<u32>(var_1.x, var_1.x >> (1u % 32u), 3452u)), ~firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, -1i), abs(vec4<i32>(25684i, 1i, u_input.a.x, u_input.a.x)))), var_1.x);
}

