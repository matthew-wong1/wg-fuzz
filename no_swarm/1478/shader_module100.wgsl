struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<i32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -831f), -654f));
    var var_1 = ~(-(~(-u_input.c)));
    global1 = -_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~firstTrailingBit(u_input.c), u_input.c), -_wgslsmith_mult_vec4_i32(-vec4<i32>(6117i, 0i, arg_0.d, arg_0.d), vec4<i32>(-26787i, -2147483647i, u_input.d.x, arg_0.d)));
    let var_2 = arg_0;
    var_1 = _wgslsmith_clamp_vec4_i32(select(vec4<i32>(countOneBits(firstLeadingBit(global1.x)), var_2.d | countOneBits(2147483647i), -43284i, 1i), ~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(-2147483647i, 0i, var_1.x, 0i)), select(u_input.c, vec4<i32>(var_2.d, -29329i, 2147483647i, arg_0.d), false)), vec4<bool>(var_2.a.x, !(!var_2.a.x), !any(var_2.a.yy), true)), countOneBits(u_input.c), -reverseBits(max(vec4<i32>(4362i, 3374i, var_1.x, var_2.d), abs(u_input.c))));
    return var_2.a;
}

fn func_2(arg_0: u32, arg_1: u32) -> i32 {
    let var_0 = Struct_3(!select(func_3(Struct_3(vec3<bool>(true, false, true), Struct_1(vec4<f32>(-1356f, -1958f, -444f, -228f)), 1u, u_input.d.x, vec4<f32>(-861f, -544f, -193f, 1206f))), vec3<bool>(true, any(vec3<bool>(true, false, false)), true), _wgslsmith_f_op_f32(floor(-916f)) != _wgslsmith_f_op_f32(1000f - -494f)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(-632f)), -951f, -187f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1256f, 420f)), _wgslsmith_f_op_f32(round(-380f)))))), 1u, ~_wgslsmith_mult_i32(u_input.a, global1.x), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-462f * 371f) + _wgslsmith_f_op_f32(858f * -1051f)))), 629f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-330f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-867f)), -1748f)), -2218f));
    global0 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(global0.x, 75945u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(60796u, 1u))), _wgslsmith_mult_u32(u_input.b, reverseBits(4294967295u))), u_input.b, reverseBits(4294967295u)), u_input.b, 35475u, max(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global0.wzz, global0.xxx) >> (1u % 32u), (global0.x | 49728u) & arg_1), global0.x));
    let var_1 = _wgslsmith_f_op_f32(sign(var_0.b.a.x));
    var var_2 = Struct_3(!select(var_0.a, var_0.a, false && !var_0.a.x), var_0.b, u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(73275i, global1.x, ~global1.x, global1.x), vec4<i32>(_wgslsmith_dot_vec3_i32(global1.yyx, vec3<i32>(29524i, 98240i, 1i)) ^ u_input.a, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(var_0.d, -3927i, 1i, -13204i)) | u_input.a, global1.x, -var_0.d)), _wgslsmith_f_op_vec4_f32(max(var_0.b.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(689f)), _wgslsmith_f_op_f32(select(var_1, 646f, var_0.a.x)), _wgslsmith_f_op_f32(-1171f + var_0.b.a.x), -1000f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b.a - vec4<f32>(var_0.b.a.x, var_1, var_1, -259f)))))));
    let var_3 = global0.x;
    return var_2.d;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec3_u32(global0.xyz | global0.zyw, abs(global0.zwy));
    let var_1 = arg_1.b >= func_2(~88564u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~var_0.xz, var_0.xz), arg_2));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1415f - 1411f)), -2111f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(524f, 1884f)) - -1000f)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(1354f - -2874f), -1397f, 625f), vec3<f32>(-1554f, -958f, _wgslsmith_f_op_f32(-781f + 1215f)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(sign(-716f)), _wgslsmith_f_op_f32(-269f * -281f), _wgslsmith_div_f32(367f, 1126f)))))));
    let var_3 = arg_1;
    global0 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(global0.xzy, firstTrailingBit(global0.zww | vec3<u32>(1u, 37151u, 12968u))), _wgslsmith_div_u32(var_0.x, ~(u_input.b ^ 0u)), var_0.x, 4294967295u), select(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, var_0.x, u_input.b, 0u)), reverseBits(vec4<u32>(u_input.b, 5913u, global0.x, 1u))), ~(select(vec4<u32>(15509u, u_input.b, u_input.b, global0.x), vec4<u32>(41739u, 1u, global0.x, global0.x), vec4<bool>(false, arg_0.x, var_1, true)) << (max(vec4<u32>(4294967295u, 44200u, u_input.b, 63280u), vec4<u32>(arg_2, global0.x, 30524u, 0u)) % vec4<u32>(32u))), var_1));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, var_2.x, 786f, -118f))))), vec4<f32>(1655f, 1000f, _wgslsmith_f_op_f32(-138f * -1069f), var_2.x)) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1675f, -464f, 303f))))))));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    global0 = reverseBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 17737u, arg_3.c, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, arg_1.c), vec4<u32>(28576u, 0u, arg_3.c, global0.x)))) & vec4<u32>(0u, arg_3.c, 1u, ~arg_3.c);
    var var_0 = func_1(vec3<bool>(true, true & (true | arg_1.a.x), false), Struct_5(!arg_3.a.x, 0i), arg_0);
    let var_1 = vec4<u32>(min(min(_wgslsmith_add_u32(0u, arg_3.c), ~arg_1.c), 40101u >> (abs(arg_1.c) % 32u)), _wgslsmith_sub_u32(arg_1.c, 37869u), firstLeadingBit(abs(u_input.b) << (firstTrailingBit(u_input.b) % 32u)), (_wgslsmith_sub_u32(18079u, arg_3.c) >> (~4294967295u % 32u)) | u_input.b) << (abs(~abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, arg_1.c, arg_3.c, 58869u), vec4<u32>(0u, arg_3.c, u_input.b, 0u)))) % vec4<u32>(32u));
    var var_2 = 0u;
    global0 = vec4<u32>(~0u, 15148u, u_input.b, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_1, var_1), vec4<u32>(67596u, arg_1.c, 1u, u_input.b))) & var_1;
    return Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, arg_2));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_5) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -467f));
    var var_1 = firstLeadingBit(global1.wy);
    let var_2 = arg_0.b;
    let var_3 = select(arg_1, arg_1, select(!select(vec4<bool>(arg_1.x, false, true, false), vec4<bool>(arg_0.a.x, arg_0.a.x, true, true), arg_3.a), !select(select(arg_1, vec4<bool>(arg_0.a.x, false, arg_3.a, false), arg_1.x), arg_1, arg_0.a.x), vec4<bool>(func_3(Struct_3(arg_0.a, arg_0.b, 33648u, 31253i, var_2.a)).x, arg_0.a.x, arg_2.a <= _wgslsmith_f_op_f32(-var_2.a.x), arg_0.a.x)));
    var var_4 = var_2.a;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~vec4<i32>(14575i, 1i, firstLeadingBit(30418i), u_input.a));
    global1 = countOneBits(~_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(global1.x, -96936i, -1i, u_input.a), vec4<i32>(u_input.c.x, global1.x, global1.x, global1.x)), ~vec4<i32>(-2147483647i, global1.x, 10004i, u_input.d.x)));
    var var_0 = func_5(Struct_3(select(vec3<bool>(true, true, false), vec3<bool>(select(false, false, false), all(vec4<bool>(false, true, true, true)), true), select(true, false, false) & false), func_4(~abs(global0.x), Struct_3(vec3<bool>(false, true, false), func_1(vec3<bool>(false, false, true), Struct_5(false, 62666i), 0u), _wgslsmith_clamp_u32(84174u, global0.x, 16236u), -2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1299f, -1591f, -1667f, -1665f))), _wgslsmith_f_op_f32(select(896f, 632f, true)), Struct_3(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), Struct_1(vec4<f32>(-1000f, -477f, -169f, 1000f)), 4294967295u, -1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(213f, 1026f, 140f, -791f) - vec4<f32>(538f, 172f, -1406f, 642f)))), ~global0.x, 43222i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-333f, -293f, 1021f, -917f)))))), vec4<bool>(true, false, any(vec4<bool>(true, true, true, true)), func_3(Struct_3(vec3<bool>(true, true, true), func_4(u_input.b, Struct_3(vec3<bool>(false, false, false), Struct_1(vec4<f32>(-1000f, -266f, 1000f, 1000f)), 1u, -1i, vec4<f32>(197f, 538f, 575f, -819f)), 802f, Struct_3(vec3<bool>(false, true, false), Struct_1(vec4<f32>(-137f, 1886f, 190f, 1390f)), 1u, -1i, vec4<f32>(900f, -139f, 402f, 364f))), 104808u, 2147483647i, vec4<f32>(-1805f, 238f, -415f, 134f))).x), Struct_2(-330f), Struct_5(true, -_wgslsmith_dot_vec4_i32(~u_input.c, ~u_input.c)));
    var_0 = Struct_3(vec3<bool>(true, (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, 28755u), global0.xz) == ~var_0.c) & all(vec4<bool>(false, true, true, true)), var_0.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.x), 1000f, _wgslsmith_f_op_f32(step(var_0.b.a.x, var_0.e.x)), _wgslsmith_f_op_f32(-var_0.e.x)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1098f, var_0.b.a.x, -751f, 754f) + var_0.e))))), var_0.c, global1.x, vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -244f)), -194f, _wgslsmith_f_op_f32(var_0.e.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.a.x, 170f) + func_1(vec3<bool>(var_0.a.x, var_0.a.x, true), Struct_5(true, -2078i), 81981u).a.x)), _wgslsmith_f_op_f32(-1521f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.x)))));
    global1 = vec4<i32>(-1i, (-2147483647i >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(71472u, 42819u, u_input.b, global0.x), vec4<u32>(4294967295u, u_input.b, 4294967295u, 31552u)), u_input.b) % 32u)) >> (~(~abs(global0.x)) % 32u), _wgslsmith_sub_i32(abs(var_0.d), -var_0.d), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-30607i, u_input.a, -2147483647i, -11242i)) ^ abs(global1.x), 2147483647i), global1.zy));
    global0 = vec4<u32>(~u_input.b, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(select(var_0.c, 116468u, var_0.a.x) << (u_input.b % 32u), 44573u, countOneBits(~global0.x)), 1u, ~(~34865u)), 0u, func_5(func_5(func_5(Struct_3(vec3<bool>(var_0.a.x, true, var_0.a.x), Struct_1(vec4<f32>(880f, var_0.e.x, var_0.b.a.x, var_0.e.x)), 4294967295u, -17770i, vec4<f32>(var_0.e.x, 234f, -1439f, var_0.b.a.x)), vec4<bool>(true, true, true, true), Struct_2(var_0.b.a.x), Struct_5(var_0.a.x, 0i)), select(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), !vec4<bool>(false, true, false, var_0.a.x), func_3(Struct_3(var_0.a, Struct_1(vec4<f32>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, 2044f)), u_input.b, 1i, vec4<f32>(-911f, var_0.b.a.x, 1652f, 1352f))).x), Struct_2(-282f), Struct_5(true, ~var_0.d)), vec4<bool>(func_5(Struct_3(var_0.a, Struct_1(vec4<f32>(var_0.e.x, -1321f, var_0.e.x, var_0.e.x)), 0u, -36239i, vec4<f32>(var_0.e.x, var_0.e.x, 1709f, 1206f)), !vec4<bool>(var_0.a.x, false, false, true), Struct_2(var_0.b.a.x), Struct_5(var_0.a.x, -50721i)).a.x, global0.x <= (5552u ^ u_input.b), var_0.a.x, var_0.a.x), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(345f, var_0.e.x))), Struct_5(var_0.a.x, -47228i)).c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -614f, var_0.e.x)), -reverseBits(-u_input.c.zzx));
}

