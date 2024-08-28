struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: vec2<u32> = vec2<u32>(32798u, 0u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> vec4<f32> {
    let var_0 = !vec4<bool>(arg_0.a.b.a.x, !arg_1.a.b.a.x, arg_1.a.b.a.x, all(!select(vec4<bool>(true, false, arg_1.a.b.a.x, false), vec4<bool>(arg_0.a.b.a.x, arg_1.a.b.a.x, false, arg_0.a.b.a.x), vec4<bool>(false, false, true, true))));
    global0 = array<f32, 29>();
    var var_1 = Struct_4(vec3<u32>(abs(max(max(u_input.b, global1.x), _wgslsmith_clamp_u32(16317u, 0u, global1.x))), _wgslsmith_mod_u32(arg_0.a.a.x, _wgslsmith_mod_u32(30126u, 74820u)), u_input.b << (0u % 32u)), arg_0.a.b.d.xz);
    global0 = array<f32, 29>();
    var var_2 = Struct_4(~(vec3<u32>(1u, 1u, 1u) | select(var_1.a, var_1.a, all(arg_1.a.b.a))), _wgslsmith_div_vec2_f32(var_1.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), arg_1.a.b.b.x) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.a.b.c), vec2<f32>(1345f, global0[_wgslsmith_index_u32(arg_1.a.a.x, 29u)]), arg_1.a.b.a)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(41560u, 29u)], -1868f, var_2.b.x, arg_1.a.b.d.x))), _wgslsmith_f_op_vec4_f32(arg_0.a.b.b - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, 318f, 1342f, 112f) + vec4<f32>(-174f, var_2.b.x, -1175f, 1050f))))));
}

fn func_2(arg_0: vec3<i32>) -> vec2<f32> {
    let var_0 = Struct_2(~vec2<u32>(u_input.b ^ ~4294967295u, u_input.d), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-215f, global0[_wgslsmith_index_u32(u_input.b, 29u)], -1207f, -351f)) + vec4<f32>(-413f, global0[_wgslsmith_index_u32(39020u, 29u)], -1661f, -1437f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_2(vec2<u32>(global1.x, 45587u), Struct_1(vec2<bool>(false, true), vec4<f32>(global0[_wgslsmith_index_u32(44507u, 29u)], 105f, global0[_wgslsmith_index_u32(global1.x, 29u)], global0[_wgslsmith_index_u32(1u, 29u)]), vec2<f32>(global0[_wgslsmith_index_u32(4829u, 29u)], -839f), vec4<f32>(377f, global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], -827f))), u_input.a.xy), Struct_3(Struct_2(vec2<u32>(u_input.b, 4294967295u), Struct_1(vec2<bool>(true, true), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 29u)], -2276f, 1059f, 983f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 29u)], 2522f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 29u)], 1335f, 405f, 179f))), vec2<i32>(u_input.c, u_input.a.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(u_input.d, 29u)], -1000f, -1295f) + vec4<f32>(584f, global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], 686f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 29u)], global0[_wgslsmith_index_u32(global1.x, 29u)]), vec2<f32>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(u_input.b, 29u)]), global0[_wgslsmith_index_u32(global1.x, 29u)] != global0[_wgslsmith_index_u32(u_input.b, 29u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 29u)], 2308f, global0[_wgslsmith_index_u32(u_input.b, 29u)], -745f) * vec4<f32>(1761f, global0[_wgslsmith_index_u32(u_input.d, 29u)], -1844f, 1317f)))))));
    global1 = vec2<u32>(627u, 77909u);
    let var_1 = _wgslsmith_f_op_vec2_f32(min(var_0.b.d.yy, _wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_2(vec2<u32>(29223u, u_input.b) & vec2<u32>(97641u, 15316u), var_0.b), abs(arg_0.xz) ^ u_input.a.xy), Struct_3(var_0, firstTrailingBit(vec2<i32>(arg_0.x, 6255i)) << (~var_0.a % vec2<u32>(32u))))).wx));
    global1 = _wgslsmith_mod_vec2_u32(~vec2<u32>(20426u, var_0.a.x), countOneBits(_wgslsmith_clamp_vec2_u32(var_0.a, ~(~var_0.a), select(~vec2<u32>(83761u, var_0.a.x), select(var_0.a, var_0.a, false), vec2<bool>(false, var_0.b.a.x)))));
    global0 = array<f32, 29>();
    return var_0.b.c;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_1(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(530f, global0[_wgslsmith_index_u32(u_input.d, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(u_input.d, 29u)])))), _wgslsmith_f_op_vec2_f32(func_2(~vec3<i32>(u_input.a.x, ~14481i, _wgslsmith_sub_i32(u_input.a.x, arg_1.x)))), vec4<f32>(2206f, global0[_wgslsmith_index_u32(~global1.x, 29u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(28218u, 29u)] * global0[_wgslsmith_index_u32(~global1.x, 29u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2818f)))));
    let var_1 = _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(_wgslsmith_clamp_u32(~u_input.d, u_input.d, _wgslsmith_mod_u32(global1.x, global1.x)), 0u)), max(~vec2<u32>(_wgslsmith_mult_u32(u_input.d, u_input.d), _wgslsmith_clamp_u32(global1.x, 4294967295u, 87149u)), vec2<u32>(_wgslsmith_mod_u32(1321u, global1.x), u_input.b)));
    let var_2 = Struct_3(Struct_2(var_1, Struct_1(vec2<bool>(true, all(vec3<bool>(var_0.a.x, false, false))), _wgslsmith_f_op_vec4_f32(-var_0.b), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.d.x)))), var_0.d)), vec2<i32>(min(-arg_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, u_input.a.x, -4286i, 10239i), arg_1)), -_wgslsmith_mod_i32(arg_1.x, u_input.c)) << (~_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, 1099u), var_1) % vec2<u32>(32u)));
    var var_3 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0.d * var_2.a.b.b)))))), var_2.a.b.c, var_2.a.b.b);
    let var_4 = Struct_4(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b, var_1.x), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, global1.x), vec3<u32>(global1.x, 1u, 0u)), ~vec3<u32>(138139u, 4294967295u, var_2.a.a.x)) ^ ~vec3<u32>(u_input.b, var_1.x, 1u)), var_2.a.b.c);
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_4 {
    global0 = array<f32, 29>();
    var var_0 = !vec4<bool>(arg_2.x, !arg_1.a.b.a.x, -4188i == _wgslsmith_add_i32(_wgslsmith_add_i32(arg_1.b.x, -2147483647i), arg_1.b.x), false);
    var var_1 = func_1(select(vec2<bool>(!(arg_2.x && false), func_1(arg_2, vec4<i32>(arg_1.b.x, u_input.a.x, u_input.c, 0i)).a.b.a.x), arg_2, !select(vec2<bool>(arg_1.a.b.a.x, arg_2.x), !arg_1.a.b.a, arg_0.a)), vec4<i32>(u_input.a.x, 56415i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_clamp_i32(arg_1.b.x, -1i, 0i)), arg_1.b.x), arg_1.b.x)).a.b.a;
    var var_2 = Struct_3(Struct_2(vec2<u32>(u_input.b, arg_1.a.a.x), Struct_1(vec2<bool>(func_1(arg_0.a, vec4<i32>(u_input.c, 12867i, 1i, arg_1.b.x)).a.b.a.x, func_1(vec2<bool>(arg_1.a.b.a.x, arg_1.a.b.a.x), vec4<i32>(-2147483647i, 57867i, 2147483647i, -2147483647i)).a.b.a.x), vec4<f32>(arg_1.a.b.d.x, -1823f, -521f, _wgslsmith_f_op_f32(f32(-1f) * -1408f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec3<i32>(-1i, 916i, -79390i))) + _wgslsmith_f_op_vec2_f32(-arg_0.b.xy)), vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x * arg_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1163f), _wgslsmith_div_f32(1404f, arg_1.a.b.b.x)))), _wgslsmith_add_vec2_i32(-(~arg_1.b), vec2<i32>(-1i) * -(~vec2<i32>(-1i, 22743i))));
    var_0 = vec4<bool>(true, all(select(!arg_0.a, select(func_1(vec2<bool>(false, var_2.a.b.a.x), vec4<i32>(u_input.c, var_2.b.x, -12089i, var_2.b.x)).a.b.a, !var_0.wx, arg_1.a.b.a), !(!arg_0.a))), !arg_2.x, !all(select(!vec4<bool>(arg_2.x, true, true, false), vec4<bool>(var_1.x, var_0.x, arg_1.a.b.a.x, arg_1.a.b.a.x), select(vec4<bool>(arg_1.a.b.a.x, true, arg_0.a.x, var_1.x), vec4<bool>(false, arg_2.x, false, false), vec4<bool>(arg_1.a.b.a.x, true, false, arg_1.a.b.a.x)))));
    return Struct_4(~(vec3<u32>(arg_1.a.a.x ^ arg_1.a.a.x, _wgslsmith_dot_vec2_u32(arg_1.a.a, vec2<u32>(1u, 1u)), firstTrailingBit(1u)) ^ ~vec3<u32>(arg_1.a.a.x, 4294967295u, 26171u)), arg_0.d.ww);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(func_4(func_1(vec2<bool>(741f >= arg_2.b.x, all(vec4<bool>(false, true, true, true))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, u_input.a.x, 2147483647i) << (vec4<u32>(arg_2.a.x, 31420u, arg_1.a.x, u_input.d) % vec4<u32>(32u)), abs(vec4<i32>(-1i, 2147483647i, u_input.c, -1i)))).a.b, func_1(func_1(vec2<bool>(false, true), vec4<i32>(u_input.c, -14043i, u_input.c, 0i)).a.b.a, reverseBits(vec4<i32>(u_input.a.x, u_input.c, 16249i, -17304i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.a.x, 1u, 1u, 1u), vec4<u32>(8310u, 1u, u_input.b, u_input.d)) % vec4<u32>(32u))), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), true)).b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b - arg_0.xy) - _wgslsmith_f_op_vec2_f32(func_2(vec3<i32>(u_input.c, u_input.c, u_input.a.x)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-731f, 167f), arg_0.zz, vec2<bool>(false, false))))))), func_1(select(vec2<bool>(true, true), vec2<bool>(arg_2.a.x > arg_3, false), any(vec2<bool>(true, true))), vec4<i32>(u_input.a.x, abs(u_input.c), _wgslsmith_mult_i32(u_input.c, 0i), select(u_input.c, u_input.a.x, false)) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(18621u, arg_1.a.x, 1u, u_input.d), vec4<u32>(arg_2.a.x, global1.x, 84500u, 4294967295u)) % vec4<u32>(32u))).a.b.a.x));
    var var_1 = Struct_3(Struct_2(func_4(func_1(vec2<bool>(true, true), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 2699i)).a.b, func_1(vec2<bool>(true, true), _wgslsmith_clamp_vec4_i32(vec4<i32>(-6214i, u_input.c, u_input.a.x, u_input.c), vec4<i32>(2147483647i, u_input.a.x, 4659i, -414i), vec4<i32>(-47776i, u_input.c, -1i, u_input.c))), vec2<bool>(any(vec2<bool>(true, true)), true)).a.xz, Struct_1(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(990f, global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], 323f)), arg_0.xx, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, global0[_wgslsmith_index_u32(70460u, 29u)], arg_0.x, 903f))))))), ~(u_input.a.xx >> (~reverseBits(arg_2.a.yy) % vec2<u32>(32u))));
    var var_2 = func_1(var_1.a.b.a, -select(-(~vec4<i32>(8520i, var_1.b.x, u_input.a.x, -2147483647i)), vec4<i32>(abs(20626i), i32(-1i) * -35078i, _wgslsmith_clamp_i32(var_1.b.x, -42550i, 19284i), 1i), arg_2.b.x == _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 29u)])));
    var var_3 = arg_2.b;
    let var_4 = Struct_2(var_1.a.a, Struct_1(select(vec2<bool>(true, arg_0.x <= arg_2.b.x), vec2<bool>(false, u_input.a.x <= var_1.b.x), func_1(select(var_1.a.b.a, var_1.a.b.a, false), ~vec4<i32>(var_2.b.x, u_input.a.x, var_2.b.x, var_1.b.x)).a.b.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-732f, -1727f, -1208f, var_1.a.b.c.x), vec4<f32>(502f, 1000f, var_2.a.b.d.x, arg_1.b.x)))) - _wgslsmith_f_op_vec4_f32(func_3(func_1(var_2.a.b.a, vec4<i32>(0i, 0i, 1i, 2574i)), func_1(vec2<bool>(false, var_1.a.b.a.x), vec4<i32>(-18068i, u_input.a.x, var_1.b.x, var_2.b.x))))), arg_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a.b.b + _wgslsmith_f_op_vec4_f32(ceil(var_2.a.b.d))))));
    return Struct_1(vec2<bool>(!any(!vec4<bool>(false, true, var_1.a.b.a.x, false)), !(~u_input.b <= ~arg_3)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_1.a.b.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b.c.x, 790f, -352f, var_3.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_4.b.d) - vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(trunc(var_1.a.b.b.x)), _wgslsmith_f_op_f32(round(-788f)), arg_0.x))), _wgslsmith_f_op_vec4_f32(func_3(func_1(var_4.b.a, vec4<i32>(u_input.c, -1i, ~var_1.b.x, u_input.a.x | var_1.b.x)), func_1(var_1.a.b.a, firstTrailingBit(max(vec4<i32>(-1005i, var_1.b.x, 0i, u_input.a.x), vec4<i32>(var_1.b.x, u_input.a.x, u_input.a.x, var_2.b.x)))))).zy, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_1.a.b.b * var_4.b.b), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.b.x, arg_0.x, -932f, 131f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b.d.x, var_2.a.b.d.x, global0[_wgslsmith_index_u32(6652u, 29u)], arg_1.b.x)) + vec4<f32>(149f, -1747f, var_2.a.b.b.x, global0[_wgslsmith_index_u32(4294967295u, 29u)]))))));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<f32, 29>();
    var var_0 = ~1u;
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    var var_1 = u_input.d;
    return func_1(arg_1.a, vec4<i32>(-1i, u_input.c, u_input.a.x, -u_input.c)).a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(1u << (_wgslsmith_mult_u32(4294967295u, ~u_input.b) % 32u), 4294967295u), vec2<u32>(1u, 1u));
    var var_1 = Struct_2(firstLeadingBit(vec2<u32>(~4294967295u, 0u) ^ ~abs(vec2<u32>(4294967295u, global1.x))), func_6(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(var_0.x, 29u)])), 1075f))), func_5(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-949f, global0[_wgslsmith_index_u32(20836u, 29u)], 358f))), func_4(Struct_1(vec2<bool>(false, false), vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 29u)], 290f, 215f, global0[_wgslsmith_index_u32(37657u, 29u)]), vec2<f32>(640f, global0[_wgslsmith_index_u32(16027u, 29u)]), vec4<f32>(-1000f, -610f, global0[_wgslsmith_index_u32(u_input.b, 29u)], global0[_wgslsmith_index_u32(63505u, 29u)])), func_1(vec2<bool>(true, false), vec4<i32>(-2147483647i, 2147483647i, u_input.c, u_input.a.x)), vec2<bool>(true, true)), func_4(Struct_1(vec2<bool>(false, true), vec4<f32>(353f, 219f, -534f, global0[_wgslsmith_index_u32(u_input.d, 29u)]), vec2<f32>(-297f, global0[_wgslsmith_index_u32(u_input.b, 29u)]), vec4<f32>(-824f, 574f, -1000f, -393f)), Struct_3(Struct_2(vec2<u32>(u_input.b, 0u), Struct_1(vec2<bool>(true, false), vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 29u)], global0[_wgslsmith_index_u32(u_input.b, 29u)], -947f, -1431f), vec2<f32>(-565f, global0[_wgslsmith_index_u32(var_0.x, 29u)]), vec4<f32>(-1988f, -483f, global0[_wgslsmith_index_u32(global1.x, 29u)], -252f))), vec2<i32>(7195i, u_input.c)), vec2<bool>(true, false)), ~var_0.x)));
    let var_2 = var_1.b;
    var_0 = ~vec2<u32>(global1.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, 26479u), vec2<u32>(u_input.d, 4294967295u)) >> (0u % 32u));
    var var_3 = var_2.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(!var_1.b.a, ~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -8522i, 15869i, u_input.a.x), -vec4<i32>(u_input.c, -49701i, u_input.c, -2147483647i))).a.a);
}

