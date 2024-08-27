struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(false, 47629i), vec2<bool>(true, true)), Struct_2(Struct_1(true, i32(-2147483648)), vec2<bool>(true, true)), Struct_2(Struct_1(false, -32047i), vec2<bool>(true, false)), Struct_2(Struct_1(true, -14306i), vec2<bool>(false, false)), Struct_2(Struct_1(true, -18290i), vec2<bool>(true, true)), Struct_2(Struct_1(true, 0i), vec2<bool>(true, true)), Struct_2(Struct_1(true, 21699i), vec2<bool>(true, false)), Struct_2(Struct_1(false, -2174i), vec2<bool>(true, true)), Struct_2(Struct_1(false, -1i), vec2<bool>(true, true)), Struct_2(Struct_1(true, 0i), vec2<bool>(true, false)), Struct_2(Struct_1(false, -4472i), vec2<bool>(false, false)), Struct_2(Struct_1(false, 1i), vec2<bool>(true, false)));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> f32 {
    global0 = array<Struct_2, 12>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -207f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1287f, -1312f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1286f)) * -245f));
    let var_1 = arg_1;
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-875f, _wgslsmith_div_f32(673f, var_0.x), true))))));
}

fn func_2() -> vec2<i32> {
    let var_0 = vec3<f32>(433f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(sign(-883f)), Struct_1(false, u_input.a.x), max(0u, 0u)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -421f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -458f)), !(u_input.a.x >= u_input.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1256f, _wgslsmith_f_op_f32(abs(-179f))))), -1163f, false)));
    let var_1 = select(!all(vec4<bool>(true, true, true, true)), true, true);
    global0 = array<Struct_2, 12>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -809f)), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(513f + var_0.x), _wgslsmith_f_op_f32(-1106f * var_0.x))))), 1f);
    global0 = array<Struct_2, 12>();
    return -vec2<i32>(-32797i, ~u_input.a.x);
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    var var_0 = vec3<i32>(abs(_wgslsmith_clamp_i32(15325i, (arg_0.x << (0u % 32u)) << (~10733u % 32u), func_2().x)), 1i, -select(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-32631i, 1i, 2147483647i, arg_0.x), vec4<i32>(-1i, 5724i, arg_0.x, arg_0.x))), u_input.a.x, true & any(vec4<bool>(true, false, false, true))));
    let var_1 = Struct_3(-576f, _wgslsmith_f_op_vec3_f32(vec3<f32>(281f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -859f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-549f, -173f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(800f, -1140f, 182f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1940f, 889f, 1000f) + vec3<f32>(788f, -444f, -194f)))))), 1444f);
    global0 = array<Struct_2, 12>();
    return Struct_1(true, -_wgslsmith_add_i32(_wgslsmith_mod_i32(-6513i, -51748i), _wgslsmith_mod_i32(reverseBits(u_input.a.x), -var_0.x)));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 12>();
    let var_0 = reverseBits(~abs(reverseBits(vec2<u32>(41934u, 4294967295u)))) << ((vec2<u32>(_wgslsmith_div_u32(4294967295u, reverseBits(1u)), 4294967295u) >> ((select(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 86467u), vec2<u32>(1u, 0u)), any(vec3<bool>(false, arg_0.a.a, arg_0.a.a))) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    global0 = array<Struct_2, 12>();
    var var_1 = vec2<bool>(func_4(countOneBits(vec2<i32>(arg_0.a.b, countOneBits(arg_0.a.b)))).a, !func_4(vec2<i32>(arg_0.a.b, arg_0.a.b) & vec2<i32>(u_input.a.x, u_input.a.x)).a || (-744f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(652f, -464f)) + 1f)));
    var var_2 = firstTrailingBit(_wgslsmith_sub_vec2_u32(~(var_0 >> (abs(var_0) % vec2<u32>(32u))), abs(_wgslsmith_mult_vec2_u32(var_0, _wgslsmith_clamp_vec2_u32(vec2<u32>(22904u, 48882u), vec2<u32>(var_0.x, var_0.x), var_0)))));
    return Struct_1(true, abs(~u_input.a.x));
}

fn func_1(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = func_5(Struct_2(func_4(func_2()), vec2<bool>(true, true)));
    var var_1 = 43017u;
    var_0 = func_4(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.a.x, -1i)) ^ u_input.a.xz, _wgslsmith_mult_vec2_i32(abs(vec2<i32>(0i, var_0.b)), u_input.a.xx)));
    var var_2 = arg_0;
    var_2 = arg_0;
    return vec2<bool>(true, var_0.a);
}

fn func_6(arg_0: i32, arg_1: vec2<bool>) -> Struct_2 {
    global0 = array<Struct_2, 12>();
    var var_0 = Struct_2(func_4(vec2<i32>(select(43951i, arg_0, true), (-1i & arg_0) >> (1u % 32u))), func_1(Struct_3(342f, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -173f), -1062f, _wgslsmith_f_op_f32(sign(-877f))), -574f)));
    let var_1 = func_1(Struct_3(-1219f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1111f, -376f, -890f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1121f, 935f, 679f) - vec3<f32>(187f, -379f, -1616f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(141f, -792f, -196f), vec3<f32>(-946f, -261f, 551f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1789f - -1382f)))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2102f, _wgslsmith_div_f32(-1327f, -1480f)))), vec3<f32>(-776f, 481f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1132f, _wgslsmith_f_op_f32(1006f * 129f)))))), _wgslsmith_f_op_f32(f32(-1f) * -173f));
    global0 = array<Struct_2, 12>();
    return global0[_wgslsmith_index_u32(abs(1u), 12u)];
}

fn func_7(arg_0: Struct_2) -> Struct_1 {
    var var_0 = vec3<u32>(21686u, 20750u, countOneBits(1u)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(select(0u, 77570u, arg_0.a.a) & (0u << (1u % 32u)), 1u, 38710u), ~select(vec3<u32>(0u, 63263u, 0u), vec3<u32>(21585u, 95344u, 69933u), true) ^ vec3<u32>(~19965u, 19904u, ~4294967295u));
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 1i), _wgslsmith_sub_vec2_i32(select(vec2<i32>(-74503i, arg_0.a.b) | vec2<i32>(arg_0.a.b, arg_0.a.b), firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(4516i, u_input.a.x), vec2<i32>(4946i, 57552i), u_input.a.yz)), func_1(Struct_3(-1070f, vec3<f32>(-190f, -1584f, -594f), 346f))), ~reverseBits(u_input.a.yz)));
    var var_2 = func_6(3918i, vec2<bool>(true, !arg_0.a.a)).a;
    let var_3 = global0[_wgslsmith_index_u32(4294967295u, 12u)];
    var_0 = _wgslsmith_div_vec3_u32(select(vec3<u32>(reverseBits(var_0.x), ~_wgslsmith_mult_u32(var_0.x, 0u), 1353u), ~vec3<u32>(_wgslsmith_mod_u32(var_0.x, 47092u), var_0.x, var_0.x & 1u), (var_2.a | true) & func_5(global0[_wgslsmith_index_u32(~var_0.x, 12u)]).a), _wgslsmith_sub_vec3_u32(min(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 1u, var_0.x) ^ vec3<u32>(50976u, var_0.x, var_0.x), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_0.x, var_0.x), vec3<u32>(var_0.x, 4990u, 1u))), ~vec3<u32>(0u, 19599u, 25952u)), min(firstTrailingBit(~vec3<u32>(12424u, 0u, var_0.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 0u, var_0.x) << (vec3<u32>(var_0.x, 16797u, var_0.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 0u, var_0.x), vec3<u32>(1u, 73145u, 1u))))));
    return Struct_1(!(-781f <= _wgslsmith_f_op_f32(step(-1000f, -620f))) && true, _wgslsmith_div_i32(~(~var_2.b), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(-36990i, select(!func_1(Struct_3(-313f, vec3<f32>(2185f, 866f, -1928f), -1288f)), select(vec2<bool>(false, false), vec2<bool>(true, true), func_4(u_input.a.yz).a), vec2<bool>(true, true))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-1071f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1327f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1145f, -496f) - vec3<f32>(652f, 669f, -416f)) * vec3<f32>(-308f, 487f, -242f))) + vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -781f), _wgslsmith_f_op_f32(max(-230f, 847f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(2684f)))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(exp2(1f))));
    let var_2 = var_0;
    let var_3 = var_2.a || !any(vec4<bool>(true, false, var_0.a, var_2.a));
    var var_4 = var_1;
    let var_5 = select(!vec3<bool>(any(!vec2<bool>(true, var_2.a)), false, var_2.a), vec3<bool>(!any(vec4<bool>(var_2.a, var_2.a, var_2.a, false)), var_1.a == var_1.c, func_4(vec2<i32>(select(39993i, var_2.b, true), i32(-1i) * -1012i)).a), select(select(!(!vec3<bool>(var_3, false, var_0.a)), vec3<bool>(var_1.a > 1389f, func_1(var_1).x, func_6(var_2.b, vec2<bool>(false, false)).a.a), !(!var_2.a)), !select(!vec3<bool>(true, var_2.a, var_0.a), select(vec3<bool>(var_3, false, var_2.a), vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(var_2.a, true, true)), false), 0i > func_6(var_0.b | 1i, vec2<bool>(true, true)).a.b));
    let x = u_input.a;
    s_output = StorageBuffer(244i, func_4(select(select(firstTrailingBit(vec2<i32>(-46528i, u_input.a.x)), ~u_input.a.xx, select(var_5.yy, vec2<bool>(false, false), var_5.zy)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 62589i), vec2<i32>(var_2.b, -28651i)), vec2<bool>(var_5.x && true, false))).b, _wgslsmith_f_op_f32(-649f - _wgslsmith_f_op_f32(-var_1.c)), ~1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(56287u, 1u), 1u, ~64775u), vec3<u32>(select(53101u, 4294967295u, var_5.x), 1u, 4294967295u)), reverseBits(firstTrailingBit(50099u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(7450u, 22466u, 35691u), vec3<u32>(21052u, 4294967295u, 4294967295u)) % 32u)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 43783u, 63588u, 1u), vec4<u32>(1u, 1u, 1u, 1u))));
}

