struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec4<i32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 65677u, 4294967295u);

var<private> global1: vec4<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: i32) -> vec2<i32> {
    var var_0 = _wgslsmith_clamp_vec2_i32(firstTrailingBit(arg_1.xy), _wgslsmith_div_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 0i), global1.wy), select(arg_0, arg_1.wy, select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), global1.xx) << (abs(~(_wgslsmith_sub_vec2_u32(global0.yy, global0.yz) ^ vec2<u32>(global0.x, 4823u))) % vec2<u32>(32u));
    var var_1 = select(vec4<bool>(true, all(vec3<bool>(false, true, true)), true, any(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, true, true), u_input.b > -1i, true, all(vec2<bool>(true, true))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)))), select(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, false, false, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false)), vec4<bool>(true, true, true, true || select(true, false, false)), vec4<bool>(true, false, false, true)));
    var var_2 = Struct_1(firstTrailingBit(~58672u), _wgslsmith_mult_vec2_i32(~firstTrailingBit(global1.xx), vec2<i32>(~(~24787i), _wgslsmith_mod_i32(16609i, u_input.b | -2147483647i))));
    global0 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(~(~1u), ~157073u), min(global0.x >> (15080u % 32u), var_2.a & 0u) & 1404u), _wgslsmith_div_u32(firstTrailingBit(select(var_2.a, global0.x, var_1.x)), (global0.x >> (0u % 32u)) ^ ~global0.x) << (firstTrailingBit(_wgslsmith_clamp_u32(0u, global0.x, 4294967295u)) % 32u), ~0u);
    var_0 = var_2.b;
    return ~(~var_2.b << (~select(global0.yz, vec2<u32>(global0.x, 4294967295u), true) % vec2<u32>(32u)));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_2(4294967295u, reverseBits(~vec3<u32>(14769u, global0.x, global0.x) & firstLeadingBit(~vec3<u32>(77853u, 4294967295u, 81149u))), 4294967295u, Struct_1(global0.x, func_3(vec2<i32>(-1i, u_input.c), select(vec4<i32>(-17138i, global1.x, u_input.c, -1251i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.c, u_input.c, 1i), vec4<i32>(global1.x, u_input.b, 1i, -2147483647i)), vec4<bool>(true, true, true, true)), 19232i)), Struct_1(1u, func_3(global1.zw, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, global1.x, 23779i, u_input.a) & vec4<i32>(global1.x, 3331i, global1.x, 18302i), countOneBits(vec4<i32>(u_input.a, -59843i, 0i, u_input.a))), _wgslsmith_dot_vec4_i32(-vec4<i32>(40688i, global1.x, u_input.a, 1i), countOneBits(vec4<i32>(global1.x, 2147483647i, global1.x, -60686i))))));
    let var_1 = vec2<i32>(0i, -var_0.d.b.x) >> (vec2<u32>(~72039u, 0u) % vec2<u32>(32u));
    var var_2 = u_input.c;
    global1 = -reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 0i, -9213i, var_1.x), max(vec4<i32>(9379i, var_1.x, -58091i, 25776i), vec4<i32>(global1.x, var_1.x, var_0.e.b.x, var_1.x)))) & -abs(vec4<i32>(-1i) * -vec4<i32>(var_0.e.b.x, -51541i, 0i, var_1.x));
    global1 = -(~abs(select(vec4<i32>(u_input.a, global1.x, 2147483647i, -2147483647i) << (vec4<u32>(var_0.d.a, 1u, global0.x, var_0.c) % vec4<u32>(32u)), ~vec4<i32>(u_input.b, global1.x, u_input.c, 21827i), vec4<bool>(true, true, true, true))));
    return Struct_4(!select(vec4<bool>(any(vec3<bool>(true, false, true)), false, all(vec2<bool>(false, false)), all(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), true), Struct_2(32225u, _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(95120u, 19848u), _wgslsmith_div_u32(1u, 1u), firstLeadingBit(var_0.c)), vec3<u32>(~1u, global0.x, 1u)), max(var_0.b.x, max(global0.x, var_0.e.a)) | ~(~var_0.d.a), var_0.e, var_0.e), ~_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.c, -2147483647i, 10672i, 0i), vec4<i32>(global1.x, 10548i, 2147483647i, 2147483647i), vec4<bool>(false, true, true, false)) << (vec4<u32>(4294967295u, global0.x, 107962u, var_0.d.a) % vec4<u32>(32u)), max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 0i, 30406i, -36813i), vec4<i32>(0i, -38092i, u_input.b, var_0.e.b.x)), max(vec4<i32>(-10016i, 14475i, global1.x, 1i), vec4<i32>(var_0.e.b.x, 2147483647i, u_input.b, global1.x)))), 632f, ~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(65102u, 4294967295u, 0u, global0.x), abs(vec4<u32>(var_0.a, global0.x, var_0.a, 31225u)), vec4<u32>(1u, global0.x, 4294967295u, global0.x))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4) -> Struct_1 {
    let var_0 = arg_0.b.d;
    global1 = arg_0.c;
    global0 = ~_wgslsmith_div_vec3_u32(~vec3<u32>(arg_0.b.e.a, max(0u, 56501u), _wgslsmith_add_u32(25519u, global0.x)), arg_1.e.xww);
    global0 = vec3<u32>(~min(countOneBits(1u), 31666u), _wgslsmith_dot_vec2_u32(arg_0.b.b.xz, vec2<u32>(min(1u, global0.x) << (global0.x % 32u), countOneBits(global0.x) | 33852u)), ~arg_0.b.b.x >> (4294967295u % 32u));
    var var_1 = _wgslsmith_sub_vec3_i32(min(vec3<i32>(global1.x >> (~0u % 32u), -15164i, -60802i), vec3<i32>(global1.x, _wgslsmith_mult_i32(2184i, 1i), arg_1.b.e.b.x)), -(~(-vec3<i32>(global1.x, global1.x, -1i))) ^ _wgslsmith_mult_vec3_i32(arg_0.c.yzz, _wgslsmith_sub_vec3_i32(arg_1.c.yyy & vec3<i32>(arg_0.b.d.b.x, global1.x, global1.x), firstTrailingBit(arg_0.c.wzz))));
    return arg_0.b.e;
}

fn func_1() -> vec4<i32> {
    let var_0 = vec4<i32>(~_wgslsmith_mod_i32(firstTrailingBit(28710i), global1.x ^ -2147483647i) | min(~select(u_input.b, -40463i, false), -2147483647i), ~u_input.b, ~u_input.a, -_wgslsmith_mod_i32(firstLeadingBit(global1.x), u_input.c) << (0u % 32u));
    let var_1 = global0.zx;
    let var_2 = vec2<f32>(-1034f, -621f);
    let var_3 = Struct_3(func_4(func_2(), Struct_4(vec4<bool>(true, true, true, true), func_2().b, firstTrailingBit(vec4<i32>(var_0.x, 0i, 2147483647i, global1.x)), 512f, ~vec4<u32>(global0.x, var_1.x, 1u, global0.x))));
    let var_4 = var_3;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = firstTrailingBit(_wgslsmith_sub_vec4_i32(-func_1(), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, global1.x, 31756i, u_input.a), vec4<i32>(-30638i, u_input.a, 26720i, 16766i)) | -vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.a)) ^ -(~vec4<i32>(global1.x, u_input.a, global1.x, global1.x)));
    global0 = ~(~abs(vec3<u32>(_wgslsmith_mod_u32(4294967295u, global0.x), global0.x | global0.x, 51281u >> (global0.x % 32u))));
    let var_0 = -u_input.c;
    var var_1 = !(true == (1979f != _wgslsmith_f_op_f32(ceil(func_2().d))));
    var var_2 = func_2().b.e;
    let var_3 = global1.wwz;
    global1 = vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, global1.x, -1i, -66504i), vec4<i32>(-73370i, -66304i, -2147483647i, 0i)), -14503i, var_2.b.x, 2147483647i), func_1());
    global0 = select(firstTrailingBit(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, var_2.a, global0.x), ~vec3<u32>(0u, 117660u, var_2.a)), ~(~vec3<u32>(var_2.a, 4294967295u, 151365u)))), vec3<u32>(~var_2.a, var_2.a, _wgslsmith_sub_u32(58661u, 58343u)) | _wgslsmith_add_vec3_u32(~(~vec3<u32>(global0.x, 0u, 46222u)), vec3<u32>(var_2.a, 41007u, ~var_2.a)), select(func_2().a.zxx, vec3<bool>(_wgslsmith_f_op_f32(sign(-948f)) < _wgslsmith_f_op_f32(843f - 379f), true, func_2().a.x & true), all(vec2<bool>(true, false)) & ((var_3.x << (0u % 32u)) <= _wgslsmith_dot_vec4_i32(vec4<i32>(20755i, var_3.x, global1.x, 0i), vec4<i32>(u_input.a, -1i, 1i, var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1057f)))), _wgslsmith_f_op_f32(f32(-1f) * -262f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1065f)), -1449f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-940f, -836f, -444f, -498f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1726f, -1900f, -347f, 1856f), vec4<f32>(-253f, -162f, 1414f, 478f), false)))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-462f, -1094f), vec2<f32>(1651f, -1024f), false)), vec2<f32>(672f, -1217f), func_2().a.xy))))), ~firstTrailingBit(var_2.a), abs(~select(vec4<u32>(47610u, global0.x, 12325u, var_2.a), vec4<u32>(global0.x, var_2.a, 0u, global0.x) >> (vec4<u32>(84252u, var_2.a, global0.x, global0.x) % vec4<u32>(32u)), true)), _wgslsmith_mult_vec2_i32((select(var_3.xy, var_2.b, vec2<bool>(true, true)) ^ -global1.zz) & vec2<i32>(abs(2147483647i), 1i), firstTrailingBit(vec2<i32>(-16744i, var_2.b.x) & var_3.yy)));
}

