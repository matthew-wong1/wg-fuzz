struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27>;

var<private> global1: vec3<i32>;

var<private> global2: vec2<f32>;

var<private> global3: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(1u, 48540u, 21417u), vec3<u32>(4294967295u, 41215u, 22843u), vec3<u32>(32084u, 1u, 4294967295u), vec3<u32>(0u, 1u, 0u), vec3<u32>(22885u, 0u, 53546u), vec3<u32>(28377u, 95u, 71816u), vec3<u32>(1u, 51799u, 4294967295u), vec3<u32>(0u, 1u, 21960u), vec3<u32>(1u, 4294967295u, 32213u), vec3<u32>(1u, 36178u, 4294967295u), vec3<u32>(0u, 4294967295u, 38614u));

var<private> global4: vec2<bool>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    global0 = array<vec4<bool>, 27>();
    let var_0 = -1564f;
    var var_1 = Struct_3(arg_0, -257f, ~arg_0.c.b, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + _wgslsmith_f_op_f32(arg_0.d.x - arg_0.a.x)), global2.x), _wgslsmith_mult_i32(max(i32(-1i) * -1i, -7030i), -max(arg_0.b, u_input.c)), arg_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-127f, 1000f, 1491f), vec3<f32>(-1177f, var_0, global2.x))), arg_0.d, vec3<bool>(false, false, global4.x))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 200f), _wgslsmith_f_op_f32(max(362f, var_0)))), -1024f, _wgslsmith_f_op_f32(-var_0), global2.x));
    var var_2 = countOneBits(1i);
    let var_3 = _wgslsmith_mult_vec3_i32(countOneBits(max(max(abs(u_input.a.xyx), abs(u_input.a.xxw)), vec3<i32>(global1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(37261i, 0i), u_input.a.zw), abs(global1.x)))), u_input.a.zwx);
    return _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~select(arg_0.c.b, u_input.b.x, true), firstTrailingBit(26336u), ~13111u, ~(u_input.b.x ^ u_input.b.x)), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, arg_0.c.b, arg_0.c.b), vec4<u32>(var_1.a.c.b, 41390u, 116543u, 8741u), vec4<u32>(30710u, 36579u, 26886u, u_input.d.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.c.b, 0u, 1u, 19696u), vec4<u32>(u_input.b.x, 75145u, var_1.c, arg_0.c.b)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(114778u, 4294967295u, arg_0.c.b, var_1.a.c.b), vec4<u32>(1u, var_1.a.c.b, 10542u, arg_0.c.b) << (vec4<u32>(var_1.c, var_1.c, arg_0.c.b, var_1.c) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(42896u, 20042u, var_1.c, arg_0.c.b), vec4<u32>(136642u, u_input.d.x, 1u, var_1.a.c.b)))), ~(~(~vec4<u32>(720u, 71339u, arg_0.c.b, arg_0.c.b)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~35492u, abs(22927u), ~27889u, min(var_1.a.c.b, 1u)), vec4<u32>(arg_0.c.b, 8924u, u_input.d.x, 4294967295u) & (vec4<u32>(6018u, 0u, u_input.b.x, arg_0.c.b) & vec4<u32>(8515u, u_input.b.x, 1u, 39573u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, arg_0.c.b, 16822u, 0u), vec4<u32>(30877u, 31534u, u_input.b.x, 1u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: u32) -> f32 {
    let var_0 = arg_1.d.c;
    var var_1 = 4391u;
    let var_2 = select(select(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), !vec2<bool>(true, global4.x), !vec2<bool>(true, global4.x)), select(vec2<bool>(arg_1.a.c.a, true), !vec2<bool>(arg_2.a.c.a, arg_1.d.c.a), false), select(!vec2<bool>(true, global4.x), vec2<bool>(global4.x, global4.x), vec2<bool>(arg_1.a.c.a, arg_2.d.c.a))), !select(select(vec2<bool>(true, true), vec2<bool>(arg_2.a.c.a, arg_1.a.c.a), vec2<bool>(arg_2.d.c.a, var_0.a)), select(vec2<bool>(arg_1.a.c.a, var_0.a), vec2<bool>(arg_2.d.c.a, var_0.a), false), !arg_2.a.c.a), vec2<bool>(all(!vec2<bool>(true, arg_1.d.c.a)), all(vec3<bool>(arg_1.a.c.a, arg_1.d.c.a, arg_2.a.c.a)))), !(!(!(!vec2<bool>(global4.x, global4.x)))), false);
    let var_3 = var_0;
    var var_4 = ~firstTrailingBit(~firstTrailingBit(vec4<u32>(var_0.b, 20187u, u_input.d.x, arg_3)));
    return _wgslsmith_f_op_f32(min(893f, _wgslsmith_f_op_f32(-arg_1.e.x)));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_3) -> vec2<i32> {
    global3 = array<vec3<u32>, 11>();
    global1 = vec3<i32>(2147483647i, 1i, arg_0.b) << (vec3<u32>(arg_3.a.c.b, _wgslsmith_sub_u32(arg_3.c, arg_3.a.c.b), 8113u) % vec3<u32>(32u));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_vec3_u32(~u_input.d, global3[_wgslsmith_index_u32(~arg_0.c.b, 11u)], vec3<u32>(arg_0.c.b, 8179u, u_input.d.x)), arg_3, arg_3, _wgslsmith_dot_vec4_u32(func_3(Struct_2(arg_0.d.xz, arg_0.b, Struct_1(false, 0u), arg_3.a.d)), vec4<u32>(u_input.b.x, 1u, 0u, arg_0.c.b) | vec4<u32>(arg_3.d.c.b, arg_3.a.c.b, arg_0.c.b, 62442u))))) + global2.x);
    global1 = vec3<i32>(abs(arg_0.b | select(-5922i, arg_3.a.b, global4.x)), -1i, _wgslsmith_mod_i32(_wgslsmith_add_i32(1i, -u_input.a.x) | 0i, arg_3.a.b));
    let var_1 = arg_3;
    return _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(~(~18401i), var_1.a.b), vec2<i32>(reverseBits(_wgslsmith_sub_i32(var_1.d.b, u_input.c)), -11033i)), select(global1.zz, vec2<i32>(countOneBits(-8369i) << ((u_input.d.x & 58347u) % 32u), min(arg_0.b, global1.x) ^ arg_0.b), !(!(!vec2<bool>(arg_3.d.c.a, global4.x)))), global1.zz);
}

fn func_1() -> Struct_2 {
    global0 = array<vec4<bool>, 27>();
    let var_0 = _wgslsmith_clamp_vec2_i32(~func_2(Struct_2(vec2<f32>(-120f, global2.x), 19696i, Struct_1(global4.x, 1u), vec3<f32>(global2.x, global2.x, global2.x)), 461f, vec4<f32>(-1389f, global2.x, global2.x, global2.x), Struct_3(Struct_2(vec2<f32>(global2.x, 853f), u_input.a.x, Struct_1(global4.x, u_input.d.x), vec3<f32>(-1768f, global2.x, -1142f)), -612f, u_input.b.x, Struct_2(vec2<f32>(global2.x, 1713f), u_input.c, Struct_1(true, 28703u), vec3<f32>(353f, 368f, global2.x)), vec4<f32>(729f, global2.x, global2.x, global2.x))) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, u_input.d.x), _wgslsmith_clamp_vec2_u32(u_input.d.yx, u_input.b, u_input.d.xx)) % vec2<u32>(32u)), -vec2<i32>(u_input.a.x, 2147483647i | u_input.c), abs(~(vec2<i32>(global1.x, -59759i) >> (vec2<u32>(u_input.d.x, 1u) % vec2<u32>(32u))))) & _wgslsmith_sub_vec2_i32(global1.zx ^ ~vec2<i32>(-5571i, -2147483647i), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(global1.x, -27353i), global1.x), global1.x & _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, u_input.c), u_input.a.yz)));
    var var_1 = vec4<i32>(var_0.x, 65639i, abs(abs(2147483647i)), u_input.c);
    let var_2 = 1i;
    global0 = array<vec4<bool>, 27>();
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1541f * -228f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1187f + global2.x)))), _wgslsmith_f_op_f32(-global2.x)), max(2147483647i, _wgslsmith_mult_i32(global1.x, ~(-1i))), Struct_1(!(_wgslsmith_add_u32(u_input.b.x, 21708u) == u_input.d.x), max(u_input.b.x, ~4294967295u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(147f, global2.x, -808f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.x, -1836f, global2.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-193f, global2.x, -547f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 666f, global2.x) * vec3<f32>(global2.x, global2.x, -718f)), true)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -115f, global2.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2068f, global2.x, global2.x) * vec3<f32>(1814f, 433f, -484f))))));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_2 {
    global1 = ~(~_wgslsmith_mod_vec3_i32(u_input.a.yzy, u_input.a.yyy));
    let var_0 = reverseBits(i32(-1i) * -28562i);
    global2 = arg_1.d.yx;
    var var_1 = Struct_3(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), 13603u, arg_1, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(106f + _wgslsmith_f_op_f32(trunc(-1192f))))), _wgslsmith_div_f32(arg_2.x, 391f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a.x - 1152f), _wgslsmith_f_op_f32(f32(-1f) * -138f), arg_1.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.a.x), arg_2.x))));
    let var_2 = func_1();
    return Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(408f))), _wgslsmith_div_f32(319f, _wgslsmith_div_f32(global2.x, global2.x))), _wgslsmith_f_op_vec2_f32(-arg_1.a)), (i32(-1i) * -func_1().b) ^ abs(i32(-1i) * -var_0), var_1.a.c, vec3<f32>(var_2.d.x, _wgslsmith_f_op_f32(-arg_2.x), var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = func_5(global2.x, func_1(), vec4<f32>(813f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x)));
    var var_2 = var_1;
    global0 = array<vec4<bool>, 27>();
    var var_3 = vec3<i32>(var_1.b, ~(~select(func_2(Struct_2(var_1.a, global1.x, Struct_1(var_2.c.a, 45823u), var_2.d), -501f, vec4<f32>(105f, var_2.d.x, var_1.d.x, global2.x), Struct_3(Struct_2(var_2.d.zx, var_2.b, var_1.c, vec3<f32>(var_2.d.x, 1620f, -417f)), global2.x, var_2.c.b, var_1, vec4<f32>(-1085f, -638f, 769f, var_2.d.x))).x, var_1.b, func_5(729f, Struct_2(vec2<f32>(global2.x, var_2.a.x), global1.x, Struct_1(true, 16167u), var_1.d), vec4<f32>(var_1.a.x, global2.x, global2.x, 1000f)).c.a)), _wgslsmith_mod_i32(-var_1.b, ~var_2.b));
    global1 = _wgslsmith_add_vec3_i32(u_input.a.xxw, u_input.a.zww);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(1981f)));
}

