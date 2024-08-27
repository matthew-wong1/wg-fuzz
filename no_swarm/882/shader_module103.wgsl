struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<i32>) -> vec3<bool> {
    let var_0 = Struct_4(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(u_input.a, ~8140u), _wgslsmith_add_vec2_u32(vec2<u32>(1202u, 1u) << (vec2<u32>(u_input.d.x, 4294967295u) % vec2<u32>(32u)), u_input.c)), _wgslsmith_mult_vec2_u32(u_input.b.zy, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 13967u) << (vec2<u32>(22099u, u_input.d.x) % vec2<u32>(32u)), u_input.d.xx, _wgslsmith_add_vec2_u32(vec2<u32>(27813u, u_input.c.x), u_input.d.yw)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1693f, _wgslsmith_f_op_f32(ceil(-851f)), false)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-160f + 521f))), any(vec3<bool>(true, true, true)))), 813f, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f + -814f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-937f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1314f))))))), Struct_2(vec2<i32>(-1i) * -(~arg_0.yx), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 20828u, 9294u, u_input.c.x), ~u_input.d, vec4<u32>(21809u, 0u, 1u, 61605u))), vec4<i32>(-arg_0.x | 1i, arg_0.x, arg_0.x & -2147483647i, 0i), max(0i, arg_0.x)));
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = _wgslsmith_sub_i32(1i, reverseBits(-1i)) >> (~(~1u) % 32u);
    var var_3 = !(!vec4<bool>(select(75730u, var_0.d.b.x, true) == ~4294967295u, true, -1000f > var_1.c, false));
    return var_3.wxw;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    global0 = _wgslsmith_mult_i32(-_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -33976i, 0i, 29430i), vec4<i32>(8630i, 2147483647i, -2147483647i, 49392i))), -_wgslsmith_mod_i32(-1i, -14558i)), 40922i);
    global0 = -37996i;
    global0 = ~0i;
    global0 = -25376i;
    let var_0 = arg_1.x;
    return 9917u;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: f32) -> vec3<bool> {
    let var_0 = arg_1.x;
    var var_1 = Struct_2(vec2<i32>(_wgslsmith_mult_i32(var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(-59281i, var_0) >> (vec2<u32>(29935u, u_input.c.x) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(arg_1.yw, vec2<i32>(var_0, var_0), vec2<i32>(var_0, -2147483647i)))), _wgslsmith_mult_i32(countOneBits(var_0) ^ _wgslsmith_div_i32(arg_1.x, 8462i), 8354i)), abs(u_input.b), abs(vec4<i32>(-54662i, _wgslsmith_dot_vec3_i32(min(vec3<i32>(-1i, -47895i, 0i), arg_1.wxz), arg_1.xxw), abs(var_0), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), arg_1.yy))), 38044i);
    global0 = i32(-1i) * -37154i;
    let var_2 = Struct_2(abs(-vec2<i32>(-var_1.c.x, _wgslsmith_clamp_i32(-58309i, arg_1.x, arg_1.x))), vec4<u32>(_wgslsmith_add_u32(67224u << ((1u << (var_1.b.x % 32u)) % 32u), u_input.c.x), ~1u, u_input.b.x, func_4(Struct_1(arg_0, func_3(arg_1.wyz)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(2469f, -302f, 1140f, arg_2), vec4<f32>(arg_2, arg_2, 603f, arg_2)))))), _wgslsmith_sub_vec4_i32(var_1.c, vec4<i32>(-min(var_1.d, var_1.d), 1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(-54832i, -62559i), var_1.c.x), i32(-1i) * -2147483647i)), arg_1.x);
    var var_3 = Struct_1(!select(arg_0, arg_0, vec2<bool>(true, true)), select(!select(vec3<bool>(arg_0.x, false, true), select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(false, arg_0.x, false), true), func_3(arg_1.xzy)), select(vec3<bool>(all(vec3<bool>(arg_0.x, true, arg_0.x)), !arg_0.x, !arg_0.x), select(!vec3<bool>(false, arg_0.x, false), vec3<bool>(false, false, arg_0.x), !vec3<bool>(arg_0.x, false, false)), true), !(!(!vec3<bool>(arg_0.x, false, arg_0.x)))));
    return func_3(-var_2.c.ywz >> (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, ~u_input.c.x, firstTrailingBit(var_1.b.x)), vec3<u32>(var_2.b.x ^ 25538u, ~80690u, ~var_2.b.x)) % vec3<u32>(32u)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec4<bool>) -> i32 {
    var var_0 = ~u_input.b.yy;
    let var_1 = Struct_1(!(!(!vec2<bool>(arg_0.x, arg_3.x))), !func_2(vec2<bool>(arg_3.x, true), vec4<i32>(24118i & arg_1.a.d, arg_1.a.d, arg_1.a.c.x, arg_1.a.a.x >> (43877u % 32u)), -241f));
    let var_2 = Struct_1(select(var_1.a, vec2<bool>(true, true), select(!vec2<bool>(false, var_1.b.x), func_3(reverseBits(vec3<i32>(-1i, -1i, -42294i))).xz, vec2<bool>(!arg_3.x, 609f > arg_2.x))), vec3<bool>(arg_0.x, arg_0.x, true));
    let var_3 = arg_1.a;
    var var_4 = arg_1;
    return 1041i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = reverseBits(_wgslsmith_sub_i32(-1i, func_1(vec2<bool>(true, true), Struct_3(Struct_2(vec2<i32>(2147483647i, 0i), vec4<u32>(0u, u_input.a, u_input.d.x, 33804u), vec4<i32>(17115i, 31808i, -24718i, 0i), 24134i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1656f, 1148f, -465f)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true))))) & ~_wgslsmith_sub_i32(_wgslsmith_div_i32(-29993i, -41082i), -(-16189i >> (1u % 32u)));
    global0 = -7615i;
    let var_0 = Struct_1(!(!vec2<bool>(true, func_3(vec3<i32>(-2147483647i, 2147483647i, 31559i)).x)), vec3<bool>(all(vec2<bool>(func_3(vec3<i32>(-63573i, 2147483647i, -38736i)).x, false)), true, all(func_2(vec2<bool>(true, false), vec4<i32>(-1i, -1i, 2147483647i, -5666i), -918f)) && false));
    global0 = 51427i;
    var var_1 = !vec3<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(122f, -856f, true)))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -432f), 1f), true, _wgslsmith_sub_u32(max(u_input.b.x, 22739u), ~u_input.b.x) == 1u);
    global0 = ~_wgslsmith_mod_i32(-_wgslsmith_div_i32(-6725i, -2147483647i), _wgslsmith_clamp_i32(0i, i32(-1i) * -53482i, _wgslsmith_add_i32(1i, -15733i))) | max(-2147483647i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(~1u, ~select(~(-vec4<i32>(-2147483647i, -20477i, -48910i, 1944i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -102433i, 53281i, -2147483647i), vec4<i32>(0i, 13387i, 2147483647i, -2147483647i), vec4<i32>(2147483647i, 5150i, -10634i, 1i)), true), ~vec2<u32>(abs(~u_input.b.x), ~(~u_input.b.x)), -_wgslsmith_div_vec3_i32(countOneBits(firstLeadingBit(vec3<i32>(-36834i, 0i, -1i))), vec3<i32>(2147483647i, -1i, -55440i)));
}

