struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(27488u, 4294967295u, 0u, 52929u, 1u, 2073u, 27763u, 39549u, 4294967295u, 13302u, 38902u, 0u, 1853u, 4294967295u, 0u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_3) -> vec2<f32> {
    global0 = array<u32, 15>();
    let var_0 = arg_0;
    var var_1 = vec2<i32>(i32(-1i) * -(~(-u_input.d)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-min(vec4<i32>(arg_2, u_input.c.x, 0i, arg_2), vec4<i32>(u_input.c.x, 15851i, -1i, arg_2)), _wgslsmith_clamp_vec4_i32(vec4<i32>(7872i, -16406i, -2147483647i, arg_2), reverseBits(vec4<i32>(-41675i, -2147483647i, arg_2, 17567i)), ~vec4<i32>(arg_2, 1i, u_input.d, -14899i))), vec4<i32>(-(u_input.c.x | 22862i), _wgslsmith_div_i32(u_input.d, 1i) ^ firstTrailingBit(-20462i), -30229i, (-9717i | u_input.d) << (~26927u % 32u))));
    var var_2 = var_0;
    global0 = array<u32, 15>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-962f, -1000f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.d.b, var_2.d.b))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_3.c.a.b, 1328f))))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(arg_0.x * -1000f);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_0.x))));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -606f)));
    let var_2 = ~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, arg_1, 39140u, u_input.b), vec4<u32>(u_input.e.x, arg_1, 90207u, 0u)))) ^ ~vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1, 65243u, 0u), vec3<u32>(1u, arg_1, global0[_wgslsmith_index_u32(u_input.e.x, 15u)])), _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(96907u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 15u)], 15u)], 6436u, 0u), vec4<u32>(u_input.b, 1u, 26260u, 19438u)), _wgslsmith_sub_u32(~arg_1, u_input.b), ~6135u);
    var_0 = _wgslsmith_f_op_f32(step(1285f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_vec2_f32(func_3(Struct_4(var_2.xzw, Struct_1(true, arg_0.x), Struct_1(true, arg_0.x), Struct_1(false, 509f)), vec3<bool>(all(vec3<bool>(true, false, false)), true, true), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c, u_input.c), firstLeadingBit(u_input.c)), Struct_3(Struct_2(Struct_1(true, arg_2)), _wgslsmith_f_op_f32(arg_0.x * var_1), Struct_2(Struct_1(true, arg_0.x))))).x)));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-519f, _wgslsmith_div_f32(var_1, arg_0.x)))), -2056f, true || all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)))));
}

fn func_2() -> Struct_1 {
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    let var_0 = 2147483647i;
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    return Struct_1(-1i > _wgslsmith_clamp_i32(-firstLeadingBit(2147483647i), -8439i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, u_input.c.x, -2147483647i, 32706i), vec4<i32>(0i, u_input.d, -2147483647i, u_input.d)), var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(681f, 1214f) * _wgslsmith_f_op_f32(round(974f)))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(func_3(Struct_4(vec3<u32>(global0[_wgslsmith_index_u32(60245u, 15u)], u_input.b, global0[_wgslsmith_index_u32(20591u, 15u)]), Struct_1(false, 317f), Struct_1(false, 1076f), Struct_1(false, -1802f)), vec3<bool>(true, true, true), var_0, Struct_3(Struct_2(Struct_1(true, 1000f)), -550f, Struct_2(Struct_1(false, 1000f))))), ~u_input.e.x << (global0[_wgslsmith_index_u32(1u, 15u)] % 32u), _wgslsmith_f_op_f32(f32(-1f) * -652f)))));
}

fn func_1() -> f32 {
    let var_0 = ~(~u_input.a);
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.b, -566f, var_1.a)), func_2().b), var_1.b, 1f));
    var var_3 = 65236i;
    var var_4 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_4.b, -150f, true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1000f))))) * 147f));
}

fn func_5(arg_0: vec2<f32>) -> vec3<u32> {
    let var_0 = Struct_4(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 1u), vec2<u32>(4294967295u, 53459u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(58506u, u_input.b, 87376u, global0[_wgslsmith_index_u32(u_input.a, 15u)]), ~vec4<u32>(13657u, global0[_wgslsmith_index_u32(4294967295u, 15u)], u_input.e.x, u_input.a))), 1u, min(min(0u << (0u % 32u), global0[_wgslsmith_index_u32(u_input.b, 15u)]), 1u)), func_2(), Struct_1(-u_input.c.x != 0i, arg_0.x), func_2());
    let var_1 = var_0.d;
    var var_2 = var_1.b;
    var var_3 = Struct_3(Struct_2(var_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_4(~var_0.a, func_2(), func_2(), Struct_1(false, 565f)), select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.d.a, var_0.d.a, var_1.a), vec3<bool>(false, var_1.a, false), var_1.a), var_1.a), -_wgslsmith_mod_i32(10204i, u_input.c.x), Struct_3(Struct_2(var_0.b), var_0.d.b, Struct_2(var_1)))).x), Struct_2(func_2()));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.a.a.b, -1730f, -353f, arg_0.x), vec4<f32>(-206f, 530f, var_1.b, arg_0.x))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(745f, var_3.b, -508f, var_3.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(782f, 1000f, -1000f, var_0.d.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.a.b, -1000f, arg_0.x, arg_0.x)))))));
    return vec3<u32>(abs(reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.a), u_input.e), 15u)])), countOneBits(_wgslsmith_div_u32(~abs(u_input.b), 1u | ~u_input.e.x)), var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(func_5(vec2<f32>(705f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))), vec3<u32>(u_input.a & countOneBits(firstLeadingBit(1u)), u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(5860u, 23040u), firstTrailingBit(4294967295u), firstTrailingBit(1u)), 15u)] << ((u_input.e.x & 0u) % 32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1538f, 469f), vec2<f32>(370f, 799f))), true))));
    let var_2 = vec4<f32>(1f, var_1.x, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -189f)), abs(0u), _wgslsmith_f_op_f32(var_1.x * var_1.x))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_1.x - 1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -129f) + _wgslsmith_f_op_f32(-1354f + _wgslsmith_f_op_vec2_f32(func_3(Struct_4(vec3<u32>(13987u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], global0[_wgslsmith_index_u32(42336u, 15u)]), Struct_1(true, -240f), Struct_1(true, var_1.x), Struct_1(true, 460f)), vec3<bool>(false, false, true), u_input.c.x, Struct_3(Struct_2(Struct_1(true, var_1.x)), var_1.x, Struct_2(Struct_1(false, var_1.x))))).x))));
    let var_3 = any(vec2<bool>(true, true));
    let var_4 = Struct_2(Struct_1(~global0[_wgslsmith_index_u32(4294967295u & global0[_wgslsmith_index_u32(u_input.b, 15u)], 15u)] <= u_input.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_4(vec3<u32>(u_input.a, u_input.e.x, 59419u), Struct_1(var_3, 1872f), Struct_1(false, var_2.x), Struct_1(var_3, var_2.x)), !vec3<bool>(true, var_3, false), -12292i, Struct_3(Struct_2(Struct_1(false, -1264f)), var_1.x, Struct_2(Struct_1(true, -1953f))))).x)));
    global0 = array<u32, 15>();
    var var_5 = _wgslsmith_f_op_f32(-var_1.x);
    let var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~888u), _wgslsmith_sub_i32(u_input.d, 19325i), _wgslsmith_f_op_f32(f32(-1f) * -429f), var_1.x, vec4<i32>(u_input.c.x, u_input.c.x, ~2147483647i, ~u_input.d));
}

