struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec4<f32>, 7>;

var<private> global2: array<i32, 24> = array<i32, 24>(1i, 0i, -21728i, 0i, -1i, -32871i, -48682i, -3385i, -48429i, i32(-2147483648), -34802i, -4388i, 1i, -1i, 2147483647i, -850i, -4087i, 20209i, 1i, -11604i, 2147483647i, -1i, 20935i, 37254i);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2) -> u32 {
    return ~(~_wgslsmith_mod_u32(46823u, 13239u));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> u32 {
    var var_0 = ~_wgslsmith_sub_vec3_u32(max(~vec3<u32>(arg_0.d.d.x, arg_0.d.e, arg_0.d.d.x), arg_0.e.d), arg_0.d.d);
    var var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 29177u, select(firstLeadingBit(var_0.x), _wgslsmith_sub_u32(28012u, 1u), select(arg_0.c.x, arg_0.a, true)), func_2(max(vec3<u32>(4294967295u, arg_0.e.e, 14531u), arg_0.e.d), arg_0.e)), _wgslsmith_div_vec4_u32(~vec4<u32>(31699u, arg_0.d.e, arg_0.d.e, 45223u), _wgslsmith_add_vec4_u32(abs(vec4<u32>(var_0.x, arg_0.d.c, 1u, 31243u)), vec4<u32>(4294967295u, 9452u, 1u, arg_0.e.d.x)))), firstTrailingBit(min(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, arg_0.d.d.x, 0u, 51707u), ~vec4<u32>(u_input.d.x, 21087u, u_input.d.x, 89332u)), countOneBits(~vec4<u32>(4294967295u, arg_0.d.c, 0u, u_input.d.x)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-399f + -877f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3686f)));
    global2 = array<i32, 24>();
    var var_3 = Struct_5(global0.x, _wgslsmith_mod_u32(~(~u_input.d.x | arg_0.d.d.x), firstTrailingBit(0u)), Struct_4(select(false, !all(arg_0.c), arg_0.c.x), firstTrailingBit(-_wgslsmith_mult_i32(-78246i, global2[_wgslsmith_index_u32(50750u, 24u)])), !(!select(vec4<bool>(arg_0.a, arg_0.c.x, false, arg_0.a), arg_0.c, arg_0.c)), Struct_2(u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, arg_1, var_2, arg_1) + vec4<f32>(global0.x, global0.x, -1172f, arg_1)) * arg_0.d.b), 16589u, ~(~var_1.wzy), _wgslsmith_sub_u32(u_input.d.x, 0u)), Struct_2(u_input.a, _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(~39125u, 7u)] * vec4<f32>(-698f, global0.x, global0.x, global0.x)), _wgslsmith_dot_vec2_u32(~var_0.yx, u_input.d), ~arg_0.d.d, 1u)));
    return u_input.d.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec2<i32>) -> f32 {
    let var_0 = Struct_4(select(true | (u_input.d.x >= _wgslsmith_clamp_u32(u_input.d.x, 4294967295u, 1u)), true, all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false))), _wgslsmith_mod_i32(u_input.a.x, (-global2[_wgslsmith_index_u32(43431u, 24u)] & 43593i) | _wgslsmith_add_i32(u_input.b, i32(-1i) * -32778i)), vec4<bool>(!(~u_input.d.x < (67541u << (1u % 32u))), (-2147483647i == select(u_input.a.x, -48946i, true)) | (true != all(vec4<bool>(true, true, true, true))), _wgslsmith_div_u32(~1u, func_2(vec3<u32>(u_input.d.x, 47906u, 708u), Struct_2(u_input.a, vec4<f32>(198f, arg_1.x, global0.x, global0.x), u_input.d.x, vec3<u32>(1u, u_input.d.x, 47629u), 25105u))) >= 31339u, true), Struct_2(vec4<i32>(-u_input.c & arg_2.x, 4569i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.d, vec2<u32>(32920u, u_input.d.x)), ~vec2<u32>(1u, 4294967295u)), 24u)], 0i), global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x))), 7u)], _wgslsmith_add_u32(select(u_input.d.x, u_input.d.x & u_input.d.x, false), _wgslsmith_mod_u32(u_input.d.x, u_input.d.x)), ~firstLeadingBit(vec3<u32>(u_input.d.x, u_input.d.x, 24229u)), 54604u), Struct_2(~(-(~u_input.a)), vec4<f32>(1f, _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-693f)), _wgslsmith_f_op_f32(797f + arg_0.x), true))), _wgslsmith_mod_u32(98802u, u_input.d.x | 0u) >> (52716u % 32u), vec3<u32>(~u_input.d.x, _wgslsmith_add_u32(u_input.d.x ^ u_input.d.x, select(126294u, 21229u, false)), firstLeadingBit(func_3(Struct_4(true, -67834i, vec4<bool>(false, false, false, true), Struct_2(vec4<i32>(2147483647i, arg_2.x, 10587i, 39445i), vec4<f32>(global0.x, arg_1.x, 1000f, 712f), 50469u, vec3<u32>(u_input.d.x, 6936u, 1u), 29490u), Struct_2(u_input.a, vec4<f32>(global0.x, arg_0.x, arg_0.x, 414f), u_input.d.x, vec3<u32>(4294967295u, u_input.d.x, u_input.d.x), 4294967295u)), arg_0.x))), u_input.d.x));
    global1 = array<vec4<f32>, 7>();
    global2 = array<i32, 24>();
    global2 = array<i32, 24>();
    var var_1 = ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32((var_0.d.d >> (vec3<u32>(var_0.e.d.x, 110426u, var_0.d.e) % vec3<u32>(32u))) | ~var_0.d.d, ~var_0.e.d), _wgslsmith_div_vec3_u32(abs(var_0.e.d), vec3<u32>(u_input.d.x, var_0.d.c, _wgslsmith_div_u32(24233u, u_input.d.x)))), 24u)];
    return var_0.e.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -488f))) * _wgslsmith_f_op_f32(f32(-1f) * -467f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(vec3<f32>(global0.x, -297f, global0.x), vec2<f32>(1518f, 922f), vec2<i32>(global2[_wgslsmith_index_u32(0u, 24u)], u_input.a.x)))))))));
    global2 = array<i32, 24>();
    let var_0 = Struct_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), 1521f)))), 1u, Struct_4(_wgslsmith_f_op_f32(min(-978f, -1876f)) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(793f)), global0.x), u_input.b | (global2[_wgslsmith_index_u32(u_input.d.x, 24u)] ^ ~global2[_wgslsmith_index_u32(u_input.d.x, 24u)]), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false))), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true), global0.x < global0.x)), Struct_2(~_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.b, 40325i, -1i)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 7u)]))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 0u, 0u) << (vec3<u32>(34300u, u_input.d.x, u_input.d.x) % vec3<u32>(32u)), ~vec3<u32>(0u, u_input.d.x, 0u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 0u, 13282u), vec3<u32>(u_input.d.x, u_input.d.x, 29351u), vec3<u32>(u_input.d.x, u_input.d.x, 54186u)), vec3<u32>(0u, u_input.d.x, 1u), select(vec3<u32>(0u, u_input.d.x, 43359u), vec3<u32>(u_input.d.x, 7744u, 42264u), vec3<bool>(true, true, true))), 11617u), Struct_2(vec4<i32>(1i, -47276i, min(u_input.a.x, 0i), -1i ^ global2[_wgslsmith_index_u32(u_input.d.x, 24u)]), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(378f, global0.x, -1000f, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-294f, 1099f, -375f, global0.x))), ~max(1u, u_input.d.x), vec3<u32>(~23627u, 4294967295u, u_input.d.x), 1u)));
    var var_1 = Struct_1(_wgslsmith_add_u32(39820u << ((~53771u & _wgslsmith_add_u32(50443u, var_0.c.e.e)) % 32u), 15998u), var_0.a);
    let var_2 = var_0.c.e;
    let var_3 = var_0;
    global1 = array<vec4<f32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(17515u, 24u)], u_input.b), vec2<i32>(global2[_wgslsmith_index_u32(31897u, 24u)], 1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.c.b, var_2.a.x), vec2<i32>(2147483647i, -1i))) ^ vec2<i32>(~u_input.b, 1i)) & min(u_input.a.yy, max(vec2<i32>(var_3.c.e.a.x, 24308i), abs(var_2.a.yw))), var_2.a.x, _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(55503u, func_2(max(vec3<u32>(3638u, 613u, 4294967295u), var_0.c.e.d), var_3.c.e))), ~vec4<u32>(min(var_1.a, 76476u) >> (1u % 32u), _wgslsmith_mult_u32(min(4294967295u, u_input.d.x), var_3.b), _wgslsmith_mod_u32(78717u ^ var_2.e, max(var_0.c.d.c, u_input.d.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_1.a, 2449u, var_3.c.e.e), vec4<u32>(0u, u_input.d.x, var_1.a, 1u))), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, u_input.d.x, var_0.b ^ 0u), vec3<u32>(firstLeadingBit(u_input.d.x), 61614u, var_2.c << (0u % 32u)))));
}

