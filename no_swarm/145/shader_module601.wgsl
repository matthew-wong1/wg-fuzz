struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-31883i, vec4<u32>(1u, 4294967295u, 11217u, 1u)), Struct_1(-26333i, vec4<u32>(4294967295u, 84254u, 4294967295u, 14622u)), Struct_1(10997i, vec4<u32>(4294967295u, 0u, 4294967295u, 49288u)), Struct_1(26926i, vec4<u32>(1u, 4294967295u, 52384u, 51032u)), Struct_1(-18710i, vec4<u32>(34324u, 26587u, 7992u, 4294967295u)), Struct_1(2147483647i, vec4<u32>(1u, 54684u, 1u, 4294967295u)), Struct_1(-1i, vec4<u32>(57433u, 3080u, 88931u, 1u)), Struct_1(2147483647i, vec4<u32>(4294967295u, 1u, 1u, 11064u)), Struct_1(-20515i, vec4<u32>(27772u, 44206u, 0u, 48000u)), Struct_1(-24276i, vec4<u32>(53841u, 494u, 1u, 0u)), Struct_1(27253i, vec4<u32>(63206u, 6034u, 4294967295u, 0u)), Struct_1(26981i, vec4<u32>(4294967295u, 1u, 4294967295u, 20533u)), Struct_1(i32(-2147483648), vec4<u32>(16933u, 22990u, 3663u, 27626u)), Struct_1(11767i, vec4<u32>(1u, 1u, 38048u, 35411u)), Struct_1(20277i, vec4<u32>(26083u, 41990u, 1u, 4294967295u)), Struct_1(-1i, vec4<u32>(17358u, 28563u, 56720u, 3095u)), Struct_1(-25115i, vec4<u32>(86041u, 81035u, 46534u, 1u)), Struct_1(1i, vec4<u32>(19389u, 1u, 1u, 24u)), Struct_1(2147483647i, vec4<u32>(18428u, 35015u, 20365u, 0u)), Struct_1(-21272i, vec4<u32>(0u, 1u, 42553u, 20779u)), Struct_1(9193i, vec4<u32>(4294967295u, 10317u, 4294967295u, 67606u)), Struct_1(-29455i, vec4<u32>(1u, 16789u, 4294967295u, 19735u)), Struct_1(0i, vec4<u32>(0u, 29767u, 1u, 36148u)), Struct_1(2147483647i, vec4<u32>(4294967295u, 8578u, 0u, 17157u)), Struct_1(2147483647i, vec4<u32>(1u, 43186u, 1u, 76018u)), Struct_1(2147483647i, vec4<u32>(106278u, 0u, 1u, 0u)), Struct_1(-1i, vec4<u32>(4294967295u, 68634u, 1u, 4294967295u)), Struct_1(-26235i, vec4<u32>(1u, 1u, 72360u, 4294967295u)), Struct_1(-1i, vec4<u32>(16622u, 4294967295u, 36683u, 0u)), Struct_1(2147483647i, vec4<u32>(4294967295u, 20876u, 0u, 37059u)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(select(arg_1.a, vec4<i32>(-1i, 2147483647i, -30359i, arg_0), true), -vec4<i32>(arg_2, -24466i, arg_1.a.x, 4004i)) & reverseBits(_wgslsmith_dot_vec2_i32(u_input.d.yw, u_input.d.yx)), -2147483647i) ^ firstLeadingBit(-19011i);
    let var_1 = Struct_1(10919i, vec4<u32>(~(~47859u), 0u, ~u_input.b.x, firstTrailingBit(~arg_1.d.x)));
    var var_2 = Struct_1(max(countOneBits(reverseBits(~u_input.d.x)), _wgslsmith_mult_i32(var_0, 64702i)), ~_wgslsmith_div_vec4_u32(abs(~var_1.b), abs(_wgslsmith_mult_vec4_u32(var_1.b, vec4<u32>(38988u, var_1.b.x, 1u, 26682u)))));
    var_2 = global1[_wgslsmith_index_u32(var_1.b.x, 30u)];
    var_2 = var_1;
    return select(vec3<bool>(false, false, all(select(arg_1.c.xx, arg_1.c.zz, arg_1.c.x))), vec3<bool>(true, all(vec2<bool>(false, var_2.a > arg_1.a.x)), !any(arg_1.c.xx)), all(!arg_1.c.zz));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_mod_i32(firstLeadingBit(max(~u_input.d.x, ~2147483647i)), reverseBits(u_input.d.x)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.b.x), reverseBits(65184u), ~u_input.c.x, u_input.b.x & u_input.b.x), vec4<u32>(_wgslsmith_add_u32(u_input.c.x, u_input.b.x), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 1u, u_input.a), vec4<u32>(1u, 1u, 4893u, u_input.b.x)), u_input.c.x))));
    let var_1 = u_input.d.x;
    let var_2 = vec4<bool>(!any(func_3(0i, Struct_2(vec4<i32>(var_0.a, 0i, var_0.a, -1i), u_input.c, vec4<bool>(true, false, false, false), var_0.b.xx), _wgslsmith_div_i32(var_1, u_input.d.x))), !all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, false)))), true, min(u_input.c.x, 10612u) >= var_0.b.x);
    global0 = false;
    let var_3 = firstLeadingBit(var_0.b.x | 1u);
    return Struct_2(vec4<i32>(_wgslsmith_div_i32(~(-u_input.d.x), ~_wgslsmith_mod_i32(var_1, u_input.d.x)), _wgslsmith_sub_i32(-var_0.a, ~abs(-1i)), select(_wgslsmith_dot_vec2_i32(u_input.d.wz, vec2<i32>(u_input.d.x, 0i)), var_1, false) ^ _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_0.a, var_0.a), firstTrailingBit(-24272i)), abs(~u_input.d.x >> (82090u % 32u))), ~abs(abs(u_input.c | u_input.c)), vec4<bool>(((22576u >> (u_input.c.x % 32u)) < 1u) && !(-1i > var_1), all(vec2<bool>(false, !var_2.x)), var_1 <= 6245i, !(!(var_2.x | true))), firstTrailingBit(var_0.b.xx));
}

fn func_1(arg_0: bool) -> f32 {
    global1 = array<Struct_1, 30>();
    let var_0 = -462f;
    global1 = array<Struct_1, 30>();
    let var_1 = func_2();
    global1 = array<Struct_1, 30>();
    return _wgslsmith_f_op_f32(ceil(var_0));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: u32, arg_3: f32) -> u32 {
    var var_0 = Struct_2(vec4<i32>(-1i, ~0i, arg_0.x, arg_0.x), _wgslsmith_clamp_vec3_u32(~u_input.c, (u_input.c << (countOneBits(u_input.c) % vec3<u32>(32u))) ^ u_input.c, select(vec3<u32>(func_2().b.x, ~4294967295u, u_input.c.x), reverseBits(_wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(117060u, 0u, arg_2))), true)), !vec4<bool>(any(vec2<bool>(true, true)) && true, false || (arg_3 <= 1204f), (352f == arg_3) & func_3(u_input.d.x, Struct_2(arg_0, vec3<u32>(27785u, u_input.b.x, u_input.a), vec4<bool>(false, true, true, true), u_input.c.zx), arg_0.x).x, true), u_input.b);
    var var_1 = _wgslsmith_dot_vec2_i32(arg_0.yy ^ var_0.a.xx, u_input.d.yx);
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x)))), -293f, 651f, arg_1.x)));
    var_0 = Struct_2(arg_0, u_input.c, !select(var_0.c, vec4<bool>(!var_0.c.x, arg_2 > u_input.b.x, true, false), vec4<bool>(true, any(vec2<bool>(false, var_0.c.x)), var_0.c.x, true)), abs(var_0.b.xz << (_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c.x, 4294967295u), ~vec2<u32>(var_0.d.x, 0u)) % vec2<u32>(32u))));
    var_1 = func_2().a.x;
    return ~min(~var_0.b.x, ~firstTrailingBit(~0u));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    let var_0 = func_2();
    var var_1 = -(func_2().a.x & 2147483647i);
    global0 = any(!select(var_0.c.wxy, var_0.c.yzz, abs(var_0.a.x) != arg_2.a.x));
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.d.x, 18987i), arg_3.a);
    let var_3 = global1[_wgslsmith_index_u32(firstLeadingBit(~arg_2.b.x), 30u)];
    return _wgslsmith_mult_u32(arg_2.d.x, var_3.b.x << (0u % 32u));
}

fn func_6(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 30>();
    let var_0 = u_input.d.x;
    let var_1 = func_6(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -261f))))), -u_input.d, global1[_wgslsmith_index_u32(func_5(func_4(abs(-vec4<i32>(-63842i, var_0, 0i, u_input.d.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(375f, -736f)), u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(false))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(697f + -1131f)), 628f), func_2(), global1[_wgslsmith_index_u32(u_input.b.x, 30u)]), 30u)]);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(281f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -446f))), _wgslsmith_f_op_f32(func_1(any(vec4<bool>(true, true, true, true)))))));
    global1 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~(~vec2<u32>(~var_1.b.x, ~u_input.b.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(295f, var_2), vec2<f32>(1722f, var_2))) * vec2<f32>(1707f, -1322f)))))), 1u);
}

