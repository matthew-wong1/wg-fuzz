struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(4294967295u, vec3<f32>(-834f, -582f, -3032f), vec4<i32>(1i, -1i, 23634i, 1i), 64264u), Struct_3(1u, vec3<f32>(-198f, -911f, 274f), vec4<i32>(2147483647i, -11095i, 2147483647i, 6124i), 0u), Struct_3(20289u, vec3<f32>(2223f, 222f, 452f), vec4<i32>(i32(-2147483648), 2147483647i, -1i, 2147483647i), 0u), Struct_3(16255u, vec3<f32>(-596f, -268f, -1736f), vec4<i32>(-1i, -44561i, 19475i, 18164i), 1u), Struct_3(21433u, vec3<f32>(-201f, 2425f, -475f), vec4<i32>(-41448i, 6983i, i32(-2147483648), 11180i), 4294967295u), Struct_3(4294967295u, vec3<f32>(-1279f, 241f, 809f), vec4<i32>(0i, -52453i, i32(-2147483648), 0i), 1u), Struct_3(1u, vec3<f32>(-1000f, -227f, 709f), vec4<i32>(0i, -11410i, -58841i, 1i), 14210u), Struct_3(4294967295u, vec3<f32>(-629f, -1210f, -1526f), vec4<i32>(-35644i, 1i, -1i, 1i), 3790u), Struct_3(1u, vec3<f32>(759f, -140f, 1531f), vec4<i32>(0i, 0i, -4138i, 0i), 4294967295u), Struct_3(2807u, vec3<f32>(-1930f, 265f, -1221f), vec4<i32>(-1i, 1i, 21098i, 2147483647i), 4294967295u), Struct_3(34029u, vec3<f32>(-1057f, -1407f, 253f), vec4<i32>(1592i, 1i, 21107i, -1i), 41919u), Struct_3(4294967295u, vec3<f32>(-194f, -1000f, -859f), vec4<i32>(-16278i, -29873i, -1i, 2147483647i), 0u), Struct_3(313u, vec3<f32>(517f, -370f, -276f), vec4<i32>(-1i, i32(-2147483648), 21090i, -1i), 8474u));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> f32 {
    var var_0 = 1u;
    var_0 = ~arg_1.x;
    global0 = array<Struct_3, 13>();
    var var_1 = global0[_wgslsmith_index_u32(abs(max(4294967295u, _wgslsmith_sub_u32(u_input.b.x, arg_1.x))), 13u)];
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(1237f * var_1.b.x)))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(var_1.b.x - var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(-var_1.b.x)))));
    return var_1.b.x;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(29483u, 13u)];
    var var_1 = Struct_2(Struct_1(var_0.b.yx, u_input.a.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.c.x, u_input.c.yxx))), var_0.b.x), 19245i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.zy) - vec2<f32>(var_0.b.x, -735f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x)), _wgslsmith_f_op_vec2_f32(-var_0.b.zy)), _wgslsmith_f_op_vec2_f32(-var_0.b.zx), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))))), any(vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.b.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.b.x)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(422f, 342f), var_0.b.yy))), u_input.e.x));
    global0 = array<Struct_3, 13>();
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(var_0.b.yy));
    global0 = array<Struct_3, 13>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(var_1.e.a.x)), _wgslsmith_f_op_f32(-var_2.x)))), min(~(~u_input.e.x), 1i));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_3 {
    global0 = array<Struct_3, 13>();
    var var_0 = reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 31946i), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a.x, 1i), _wgslsmith_mod_i32(u_input.a.x, -3628i)), u_input.a.x & arg_0.b)));
    global0 = array<Struct_3, 13>();
    let var_1 = u_input.a;
    var_0 = _wgslsmith_clamp_vec2_i32(select(u_input.e, firstLeadingBit(var_1.zx & vec2<i32>(var_1.x, var_0.x)) << (~_wgslsmith_sub_vec2_u32(u_input.c.xw, vec2<u32>(u_input.d, 0u)) % vec2<u32>(32u)), !all(vec2<bool>(true, true))), u_input.a.yx, (~(~vec2<i32>(-1i, var_1.x)) >> (~(~u_input.b.xz) % vec2<u32>(32u))) << ((vec2<u32>(16244u, ~0u) | ~vec2<u32>(0u, u_input.d)) % vec2<u32>(32u)));
    return global0[_wgslsmith_index_u32(~abs(u_input.b.x), 13u)];
}

fn func_1(arg_0: Struct_3) -> i32 {
    global0 = array<Struct_3, 13>();
    let var_0 = func_4(func_2(arg_0.d), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-261f, arg_0.b.x, arg_0.b.x, arg_0.b.x))) + vec4<f32>(693f, _wgslsmith_f_op_f32(sign(arg_0.b.x)), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.b.x))), vec4<f32>(func_2(u_input.b.x & 4294967295u).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2061f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 1998f, false))), -1261f), true)));
    var var_1 = Struct_4(func_4(Struct_1(vec2<f32>(_wgslsmith_div_f32(-938f, var_0.b.x), _wgslsmith_f_op_f32(floor(-618f))), u_input.a.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_div_f32(var_0.b.x, var_0.b.x), var_0.b.x, 1086f)))), func_2(~85550u), vec3<bool>(true, true, true), min(arg_0.a, 3178u));
    let var_2 = u_input.c.wyw;
    var var_3 = arg_0;
    return var_3.c.x << (func_4(var_1.b, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1171f, _wgslsmith_div_f32(arg_0.b.x, 1000f), -1785f, _wgslsmith_f_op_f32(f32(-1f) * -1448f))))).d % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 13>();
    let var_0 = vec2<bool>(!(func_1(Struct_3(73453u, vec3<f32>(-1248f, -1345f, -1911f), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.e.x), 1u)) < ~(u_input.e.x << (0u % 32u))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(237f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(20077u, u_input.b.wxy)))));
    var var_1 = !select(vec4<bool>(true, var_0.x, var_0.x, all(var_0) || true), vec4<bool>(all(vec4<bool>(var_0.x, true, false, var_0.x)), var_0.x, true, true), all(select(var_0, select(var_0, var_0, vec2<bool>(true, var_0.x)), true)));
    let var_2 = select(~4294967295u, 1u & ~(~u_input.d), !var_1.x);
    var_1 = !select(select(vec4<bool>(4294967295u <= var_2, true, all(var_1.xy), var_1.x), vec4<bool>(false, any(vec4<bool>(true, false, true, true)), var_1.x, true), select(select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(true, false, false, true), vec4<bool>(var_1.x, true, true, false)), select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(var_0.x, true, true, false), false), vec4<bool>(false, false, var_1.x, var_1.x))), vec4<bool>(all(var_0), true, !all(vec3<bool>(var_0.x, var_0.x, var_1.x)), var_0.x), all(vec4<bool>(true, true, false, true)));
    global0 = array<Struct_3, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2615f, -684f))) * vec2<f32>(-2388f, -1000f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2185f, 772f) + vec2<f32>(-1292f, -163f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1411f, -2429f), vec2<f32>(-1000f, -1170f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(336f, -1000f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1024f, 1730f, 882f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(282f, 1018f, -1054f), vec3<f32>(628f, 1976f, 835f), vec3<bool>(false, false, var_0.x))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(3210f, 1368f, -320f) + vec3<f32>(977f, -372f, -1228f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-243f, 541f, 1644f))))));
}

