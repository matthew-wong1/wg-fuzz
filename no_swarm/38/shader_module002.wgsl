struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32) -> f32 {
    global0 = array<Struct_3, 6>();
    global0 = array<Struct_3, 6>();
    global0 = array<Struct_3, 6>();
    global0 = array<Struct_3, 6>();
    var var_0 = 2147483647i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1064f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1);
    global0 = array<Struct_3, 6>();
    let var_1 = Struct_1(4294967295u, vec2<i32>(1i, ~(i32(-1i) * -arg_2.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, var_0, 661f, 355f), vec4<f32>(var_0, 1089f, -1811f, -676f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1382f, var_0, var_0, 872f) + vec4<f32>(601f, 665f, -1695f, arg_1)), vec4<bool>(true, false, false, false))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, arg_1, var_0, 974f), vec4<f32>(arg_1, var_0, 1149f, -773f)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -832f, -1000f, 1357f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1336f, -527f, arg_1, -188f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -490f, -713f, arg_1))))));
    global0 = array<Struct_3, 6>();
    let var_2 = 0i;
    return _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-1117f - 1014f))) * _wgslsmith_f_op_f32(var_1.c.x + arg_1)));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, ~abs(u_input.b), min(u_input.b, ~51342u), arg_2.a), (~u_input.a >> (firstTrailingBit(vec4<u32>(0u, u_input.b, u_input.b, 15186u)) % vec4<u32>(32u))) ^ vec4<u32>(abs(1u), ~u_input.a.x, u_input.b, 1u), u_input.a));
    let var_1 = Struct_2(~1u, 45891u | ~(firstTrailingBit(u_input.a.x) & firstLeadingBit(var_0.x)), true, reverseBits(_wgslsmith_mod_vec2_u32(u_input.a.xy, reverseBits(vec2<u32>(arg_2.a, 18528u)))), -1i);
    var var_2 = Struct_2(92062u & _wgslsmith_mod_u32(arg_2.a, 0u), (_wgslsmith_mod_u32(~18901u, _wgslsmith_div_u32(4294967295u, var_1.a)) >> (_wgslsmith_mult_u32(~var_1.d.x, var_0.x >> (42735u % 32u)) % 32u)) >> (1u % 32u), var_1.c, ~(~var_1.d), _wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(13508i, -2147483647i, arg_0), -vec3<i32>(1i, 2147483647i, var_1.e)), -abs(arg_0) & _wgslsmith_dot_vec2_i32(~arg_2.b, vec2<i32>(2147483647i, arg_0))));
    var var_3 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(_wgslsmith_dot_vec2_i32(~arg_2.b, vec2<i32>(var_2.e, arg_2.b.x)), ~arg_3.x)), ~firstTrailingBit(abs(reverseBits(vec2<i32>(0i, var_2.e)))));
    global0 = array<Struct_3, 6>();
    return Struct_3(all(select(select(select(vec2<bool>(true, var_1.c), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, var_2.c), vec2<bool>(true, var_1.c), false), true), !select(vec2<bool>(false, false), vec2<bool>(var_1.c, var_2.c), true), any(vec2<bool>(var_1.c, var_1.c)))));
}

fn func_1() -> vec3<bool> {
    let var_0 = func_4(_wgslsmith_mult_i32(~_wgslsmith_add_i32(44572i, -23970i), _wgslsmith_div_i32(countOneBits(2147483647i), max(min(8914i, -55301i), min(-10839i, -1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-(~(-1i)), -213f, firstTrailingBit(-vec3<i32>(14645i, -36035i, -24296i)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1342f)) - _wgslsmith_f_op_f32(-178f + 1558f)))), Struct_1(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b, 57319u, 27411u), 59504u), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(-44828i, -42824i)), -vec2<i32>(-15381i, -15375i)), vec2<i32>(-43645i, 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-145f, -1159f, 405f, 1230f) - vec4<f32>(-1368f, 566f, -1006f, -1000f))))), vec3<i32>(max(-(~1i), _wgslsmith_mult_i32(abs(-16046i), firstLeadingBit(2147483647i))), 1i, ~(~_wgslsmith_mod_i32(353i, -2147483647i))));
    var var_1 = _wgslsmith_sub_u32(4294967295u, 31251u);
    let var_2 = Struct_2(~u_input.b, u_input.b, false, u_input.a.yw, ~(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, ~1i) & _wgslsmith_mod_i32(firstTrailingBit(-32231i), i32(-1i) * -20917i)));
    var var_3 = global0[_wgslsmith_index_u32(4974u, 6u)];
    var var_4 = vec4<u32>(min(max(var_2.b, 1u), var_2.b), abs(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.a, u_input.b), vec2<u32>(1133u, u_input.a.x)), u_input.a.yy)), var_2.a, ~u_input.a.x);
    return vec3<bool>(any(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(var_3.a, false, true, true), var_2.c), select(!vec4<bool>(false, false, false, var_3.a), !vec4<bool>(false, false, false, var_3.a), all(vec2<bool>(true, var_0.a))), vec4<bool>(true, any(vec3<bool>(var_2.c, var_2.c, var_3.a)), var_2.c, 82935u < u_input.b))), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 6>();
    global0 = array<Struct_3, 6>();
    var var_0 = max(_wgslsmith_sub_vec2_u32(vec2<u32>(select(u_input.b, 1u, true), u_input.a.x), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.zz, u_input.a.yz), vec2<u32>(0u, 84023u)) & ~(~u_input.a.xx)), vec2<u32>(_wgslsmith_div_u32(~u_input.a.x ^ u_input.a.x, 15478u), reverseBits(reverseBits(~u_input.a.x))));
    var var_1 = !select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), any(vec3<bool>(true, false, true))), func_1(), true), vec3<bool>(u_input.b != u_input.b, true, true), !(true & func_4(-2988i, -511f, Struct_1(u_input.a.x, vec2<i32>(-2147483647i, 2147483647i), vec4<f32>(-1000f, -281f, -631f, 694f)), vec3<i32>(31112i, 21521i, 1i)).a));
    var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.b, max(firstTrailingBit(~u_input.a.x), var_0.x)));
    var_1 = select(vec3<bool>(!select(func_4(43761i, 843f, Struct_1(var_0.x, vec2<i32>(0i, -18383i), vec4<f32>(-1264f, -1533f, -1000f, -1000f)), vec3<i32>(0i, -2147483647i, 46216i)).a, false, var_1.x), false, var_1.x), vec3<bool>(select(any(func_1()), var_1.x, true), true, false), !(!select(!vec3<bool>(var_1.x, var_1.x, false), !vec3<bool>(false, var_1.x, var_1.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_mod_vec3_u32(u_input.a.xwz, vec3<u32>(u_input.b, 0u, 15948u))) ^ _wgslsmith_sub_vec3_u32(u_input.a.xwz, vec3<u32>(select(u_input.b, 4294967295u, var_1.x), var_0.x, u_input.a.x ^ u_input.a.x)), var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-803f, -1418f, -397f))))));
}

