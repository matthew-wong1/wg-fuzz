struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-11095i, 2147483647i, -9018i, 0i));

var<private> global1: i32;

var<private> global2: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, true, false, false));

var<private> global3: u32 = 1u;

var<private> global4: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<i32>(0i, -1i, 0i, 1i)), Struct_1(vec4<i32>(41929i, 2147483647i, -5569i, i32(-2147483648))), Struct_1(vec4<i32>(1i, -483i, 7057i, i32(-2147483648))), Struct_1(vec4<i32>(-28617i, 8534i, i32(-2147483648), -1i)), Struct_1(vec4<i32>(i32(-2147483648), 0i, 0i, i32(-2147483648))), Struct_1(vec4<i32>(-1214i, -13255i, 31577i, 20226i)), Struct_1(vec4<i32>(-15089i, i32(-2147483648), 10375i, i32(-2147483648))), Struct_1(vec4<i32>(i32(-2147483648), 38519i, 1i, -33353i)), Struct_1(vec4<i32>(-1i, 6591i, 2147483647i, 0i)), Struct_1(vec4<i32>(2147483647i, 2147483647i, 19754i, -1i)), Struct_1(vec4<i32>(-79392i, 0i, -28190i, -25004i)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -1i)), Struct_1(vec4<i32>(7256i, 1i, 1i, -27962i)), Struct_1(vec4<i32>(0i, 1i, -1i, 11092i)), Struct_1(vec4<i32>(33864i, 0i, 2147483647i, -1i)), Struct_1(vec4<i32>(2147483647i, 2147483647i, 0i, 77099i)), Struct_1(vec4<i32>(-7153i, 2147483647i, -1i, 2147483647i)), Struct_1(vec4<i32>(2147483647i, 1i, 0i, 2147483647i)), Struct_1(vec4<i32>(9888i, 0i, i32(-2147483648), -39027i)), Struct_1(vec4<i32>(1i, 0i, 25385i, 1i)), Struct_1(vec4<i32>(1i, -76000i, -2886i, -1i)), Struct_1(vec4<i32>(45636i, i32(-2147483648), 41649i, 1i)), Struct_1(vec4<i32>(2147483647i, -11683i, 26131i, -2197i)), Struct_1(vec4<i32>(-1115i, 19474i, -72704i, 0i)), Struct_1(vec4<i32>(-26338i, 27227i, -1i, i32(-2147483648))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = Struct_2(Struct_1(~vec4<i32>(i32(-1i) * -2147483647i, 1i, 1i, 0i | u_input.c.x)), min(vec4<u32>(~4294967295u, ~abs(4294967295u), 1u, 1u), select(vec4<u32>(20422u, 37119u, 11132u, 91893u), ~vec4<u32>(1u, 4294967295u, 1u, 4294967295u), true) >> (vec4<u32>(0u, abs(34667u), ~35251u, 81795u) % vec4<u32>(32u))), Struct_1(u_input.a));
    var var_1 = ~(~_wgslsmith_clamp_vec4_u32(~(vec4<u32>(14022u, 0u, var_0.b.x, 1u) >> (vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x) % vec4<u32>(32u))), ~(~vec4<u32>(0u, 4294967295u, 4294967295u, 0u)), ~vec4<u32>(var_0.b.x, 4294967295u, 1u, 1u)));
    let var_2 = 1228f;
    let var_3 = 45282u;
    var var_4 = var_0.c;
    return 1342f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, -814f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: i32) -> bool {
    return func_3(arg_1.x);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = select(!(!vec2<bool>(arg_0 != false, all(vec2<bool>(arg_0, true)))), select(vec2<bool>(true, true), select(!(!vec2<bool>(arg_0, true)), vec2<bool>(true, !arg_0), select(!vec2<bool>(arg_0, arg_0), vec2<bool>(true, true), vec2<bool>(arg_0, arg_0))), vec2<bool>(true & func_2(vec2<f32>(1000f, -1649f), vec3<f32>(-1827f, -108f, 1000f), global0.a.x), !any(global2[_wgslsmith_index_u32(36696u, 1u)]))), true);
    global3 = 1u;
    let var_1 = Struct_3(true, Struct_2(Struct_1(-u_input.a), ~vec4<u32>(1u, _wgslsmith_mod_u32(0u, 26887u), 1u, 1u), global4[_wgslsmith_index_u32(~(~(~1u)), 25u)]));
    let var_2 = Struct_1(firstTrailingBit(~vec4<i32>(_wgslsmith_mod_i32(1i, 36982i), _wgslsmith_clamp_i32(-45448i, var_1.b.a.a.x, 0i), global0.a.x, i32(-1i) * -2147483647i)));
    var var_3 = vec3<bool>(false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -209f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1313f, -1488f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -324f))), func_3(_wgslsmith_f_op_f32(388f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -810f), _wgslsmith_f_op_f32(515f * 995f))))));
    return Struct_1(reverseBits(reverseBits(_wgslsmith_sub_vec4_i32(var_1.b.c.a, vec4<i32>(54850i, 5569i, global0.a.x, 1i)) | ~global0.a)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_3 {
    global4 = array<Struct_1, 25>();
    global3 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u));
    var var_0 = 4294967295u;
    var var_1 = Struct_4(Struct_3(true, Struct_2(Struct_1(vec4<i32>(1i, arg_0.x, arg_1.a.x, u_input.d.x)), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), func_1(false))), vec3<u32>(51318u, firstTrailingBit(22995u), 98709u));
    let var_2 = !vec4<bool>(var_1.a.a, select(false, true, var_1.a.a), !var_1.a.a, true);
    return var_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3, arg_3: bool) -> Struct_3 {
    let var_0 = 4294967295u;
    global1 = -32922i;
    global1 = 29774i;
    var var_1 = false;
    let var_2 = arg_0;
    return func_4(countOneBits(u_input.c.wyy), func_1(func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(594f, -1556f), vec2<f32>(505f, 172f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-873f, 595f, -648f) + vec3<f32>(1243f, -1066f, -634f)), _wgslsmith_add_i32(u_input.b, u_input.d.x)) | select(any(vec3<bool>(arg_3, true, arg_3)), true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~6061u);
    var var_1 = ~(_wgslsmith_sub_u32(66069u, var_0) | var_0);
    let var_2 = Struct_4(func_5(global4[_wgslsmith_index_u32(var_0, 25u)], ~var_0, func_4(vec3<i32>(0i, global0.a.x, global0.a.x << (0u % 32u)), func_1(any(global2[_wgslsmith_index_u32(var_0, 1u)]))), true), func_5(Struct_1(-_wgslsmith_div_vec4_i32(u_input.c, u_input.c)), ~(~_wgslsmith_div_u32(var_0, var_0)), Struct_3(any(vec2<bool>(true, false)) & false, func_5(global4[_wgslsmith_index_u32(~13320u, 25u)], 74944u, Struct_3(false, Struct_2(Struct_1(u_input.a), vec4<u32>(var_0, var_0, 17200u, var_0), Struct_1(vec4<i32>(1i, global0.a.x, u_input.a.x, global0.a.x)))), all(vec2<bool>(false, true))).b), any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(false, true, true), false))).b.b.xxy);
    global2 = array<vec4<bool>, 1>();
    let var_3 = var_2.a.b.b.zx;
    let var_4 = var_2.a.b;
    var var_5 = vec2<u32>(_wgslsmith_div_u32(abs(var_3.x), (func_4(var_2.a.b.a.a.yxz, Struct_1(vec4<i32>(0i, var_4.c.a.x, global0.a.x, global0.a.x))).b.b.x ^ 4294967295u) >> (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, var_4.b.x, 35897u, 30999u)), vec4<u32>(44331u, var_3.x, var_3.x, var_3.x)) % 32u)), ~(36696u >> (min(var_2.a.b.b.x, 49951u) % 32u)));
    var var_6 = select(true, false && (false & func_5(Struct_1(vec4<i32>(2147483647i, u_input.a.x, var_2.a.b.c.a.x, 0i)), _wgslsmith_add_u32(1u, 34928u), Struct_3(var_2.a.a, Struct_2(Struct_1(var_4.c.a), vec4<u32>(87808u, 10808u, var_5.x, 1u), Struct_1(u_input.a))), false).a), !var_2.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.x, -var_4.a.a.wxw, _wgslsmith_dot_vec3_i32(~var_2.a.b.c.a.xzz, _wgslsmith_add_vec3_i32(select(var_4.c.a.ywy, vec3<i32>(var_2.a.b.a.a.x, -23847i, u_input.b), vec3<bool>(false, true, true)), min(global0.a.xxz & vec3<i32>(var_4.a.a.x, var_4.a.a.x, var_4.c.a.x), vec3<i32>(9296i, -2147483647i, var_2.a.b.c.a.x) & var_4.a.a.yyy))));
}

