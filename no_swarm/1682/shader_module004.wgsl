struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

var<private> global1: array<f32, 12> = array<f32, 12>(676f, -106f, 964f, -1000f, -222f, 1945f, -1394f, 2048f, 1067f, 342f, -1025f, -659f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> u32 {
    let var_0 = vec4<bool>(-_wgslsmith_sub_i32(-2147483647i, u_input.a << (u_input.b % 32u)) > u_input.a, (14634u | abs(29384u << (u_input.b % 32u))) >= 0u, true, true);
    var var_1 = ~(~(~(~reverseBits(vec3<u32>(4294967295u, 34820u, 22455u)))));
    global0 = array<Struct_3, 29>();
    global1 = array<f32, 12>();
    var var_2 = var_1.x;
    return var_1.x;
}

fn func_3(arg_0: vec2<i32>, arg_1: i32) -> vec3<bool> {
    let var_0 = Struct_2(select(u_input.b, max(9556u, u_input.b), true), !select(vec2<bool>(true, true), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 12u)] > global1[_wgslsmith_index_u32(u_input.b, 12u)]), max(u_input.b, 4294967295u) >= _wgslsmith_dot_vec2_u32(vec2<u32>(8002u, u_input.b), vec2<u32>(u_input.b, u_input.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global1[_wgslsmith_index_u32(11643u, 12u)])))) * vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 12u)], global1[_wgslsmith_index_u32(~(~u_input.b), 12u)])), !(!(!all(vec3<bool>(false, true, true)))));
    global0 = array<Struct_3, 29>();
    var var_1 = Struct_2(var_0.a, vec2<bool>(var_0.b.x, var_0.b.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, global1[_wgslsmith_index_u32(0u, 12u)])) + _wgslsmith_f_op_vec2_f32(max(var_0.c, vec2<f32>(global1[_wgslsmith_index_u32(1u, 12u)], var_0.c.x)))), var_0.c)), select(!all(vec4<bool>(false, var_0.b.x, var_0.d, var_0.b.x)), !(var_0.b.x && any(var_0.b)), false));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-964f, 1334f, 2474f))), vec3<f32>(_wgslsmith_f_op_f32(888f - var_0.c.x), -1401f, var_1.c.x), any(select(vec4<bool>(false, false, var_0.d, false), vec4<bool>(var_1.b.x, false, var_1.d, false), false)))), vec3<f32>(_wgslsmith_f_op_f32(-903f + _wgslsmith_f_op_f32(537f + -727f)), 1f, 781f))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 703f, var_0.c.x)))))))));
    global0 = array<Struct_3, 29>();
    return !(!(!select(vec3<bool>(var_0.d, false, true), select(vec3<bool>(var_1.d, var_1.b.x, var_0.d), vec3<bool>(var_1.b.x, false, var_0.b.x), vec3<bool>(var_1.b.x, true, var_0.d)), !vec3<bool>(var_0.d, var_1.b.x, var_1.d))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec2<i32>) -> Struct_5 {
    let var_0 = -arg_1.b;
    global1 = array<f32, 12>();
    let var_1 = arg_3.x;
    global1 = array<f32, 12>();
    let var_2 = arg_0;
    return Struct_5(reverseBits(u_input.b ^ ~(~24092u)), var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-962f - 1271f), _wgslsmith_f_op_f32(var_2.c.x + -2192f), _wgslsmith_f_op_f32(-arg_0.c.x), global1[_wgslsmith_index_u32(~u_input.b, 12u)]))), min(reverseBits(arg_0.d), _wgslsmith_add_u32(arg_1.c.a, 32298u)));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = ~_wgslsmith_sub_vec4_i32(min(~reverseBits(vec4<i32>(0i, u_input.a, -2147483647i, -2147483647i)), ~(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), -(abs(vec4<i32>(u_input.a, 48755i, u_input.a, u_input.a)) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)));
    global0 = array<Struct_3, 29>();
    let var_1 = 834f;
    var var_2 = func_4(Struct_5(func_2(), select(func_3(-var_0.zw, _wgslsmith_sub_i32(17934i, u_input.a)), func_3(-var_0.wz, 34328i), !arg_3.b.x), _wgslsmith_f_op_vec4_f32(abs(arg_1)), u_input.b), Struct_3(Struct_1(vec3<bool>(!arg_2.d, arg_0, true), abs(u_input.a), true && arg_3.b.x), -vec4<i32>(-1060i, var_0.x, 2147483647i, u_input.a), Struct_2(4294967295u, func_3(var_0.xy << (vec2<u32>(38578u, arg_2.a) % vec2<u32>(32u)), -u_input.a).zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.c.x, arg_2.c.x), arg_1.yw)), !arg_2.d)), firstTrailingBit(vec3<u32>(0u, ~67021u, 1u) ^ ~abs(vec3<u32>(0u, arg_2.a, u_input.b))), _wgslsmith_clamp_vec2_i32(~firstTrailingBit(reverseBits(var_0.wz)), var_0.zw, var_0.xw));
    let var_3 = Struct_3(Struct_1(select(!var_2.b, !(!var_2.b), !vec3<bool>(arg_0, true, arg_0)), ~(-_wgslsmith_clamp_i32(u_input.a, 2147483647i, u_input.a)), true), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(57164i, 53297i, -67707i, var_0.x)), firstLeadingBit(~vec4<i32>(20131i, 2147483647i, u_input.a, var_0.x)), vec4<i32>(~var_0.x, -62257i, ~12441i, -var_0.x)), select(vec4<i32>(1i, 19494i, -34450i, ~var_0.x), countOneBits(vec4<i32>(u_input.a, var_0.x, var_0.x, var_0.x)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(8904i, u_input.a, u_input.a, -3190i), vec4<i32>(-1i, -28534i, -64941i, var_0.x)), all(!vec4<bool>(var_2.b.x, arg_0, arg_3.b.x, var_2.b.x))), vec4<i32>(-_wgslsmith_sub_i32(u_input.a, u_input.a), 0i, -5137i, ~(-19381i))), Struct_2(_wgslsmith_clamp_u32(39769u, firstLeadingBit(~arg_3.a), ~4294967295u), vec2<bool>(true, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, 1u, arg_3.a, arg_3.a), vec4<u32>(64801u, u_input.b, arg_3.a, 1219u)) == u_input.b), func_4(Struct_5(_wgslsmith_add_u32(16108u, 20172u), !vec3<bool>(var_2.b.x, true, true), _wgslsmith_div_vec4_f32(arg_1, arg_1), ~1u), Struct_3(Struct_1(vec3<bool>(true, false, false), u_input.a, arg_2.b.x), select(vec4<i32>(u_input.a, var_0.x, var_0.x, u_input.a), vec4<i32>(u_input.a, -1203i, 33706i, -1i), vec4<bool>(true, true, false, false)), Struct_2(4294967295u, vec2<bool>(arg_3.b.x, arg_0), arg_2.c, var_2.b.x)), ~(vec3<u32>(0u, 5090u, arg_3.a) << (vec3<u32>(arg_3.a, arg_2.a, var_2.a) % vec3<u32>(32u))), _wgslsmith_clamp_vec2_i32(max(vec2<i32>(0i, u_input.a), vec2<i32>(var_0.x, u_input.a)), ~var_0.xw, firstTrailingBit(var_0.wy))).c.ww, arg_2.d));
    return select(vec4<bool>(true, !all(vec3<bool>(var_3.a.a.x, true, arg_2.d)), arg_3.b.x, false), select(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, arg_0, false, false), arg_3.d), select(vec4<bool>(arg_0, var_2.b.x, var_2.b.x, arg_0), vec4<bool>(true, true, false, arg_0), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, arg_3.d, false), vec4<bool>(true, false, var_2.b.x, true))), !vec4<bool>(true, arg_0, true, true), false), !(arg_3.b.x || arg_2.d));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_5) -> vec3<bool> {
    var var_0 = Struct_5(arg_3.d, vec3<bool>(false, !(!arg_1.x), ~(~(-2147483647i)) != (-32488i ^ abs(u_input.a))), arg_3.c, ~(~u_input.b) | (_wgslsmith_add_u32(~u_input.b, arg_2) | arg_3.d));
    global1 = array<f32, 12>();
    global0 = array<Struct_3, 29>();
    var_0 = Struct_5(1u, var_0.b, _wgslsmith_f_op_vec4_f32(-var_0.c), var_0.a);
    var var_1 = var_0.c.wz;
    return !func_4(func_4(arg_3, Struct_3(Struct_1(arg_3.b, 20776i, true), ~vec4<i32>(1181i, 60904i, 47348i, u_input.a), Struct_2(1u, vec2<bool>(arg_3.b.x, false), vec2<f32>(1000f, 1641f), var_0.b.x)), reverseBits(~vec3<u32>(0u, arg_3.a, arg_3.d)), abs(min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 1i)))), global0[_wgslsmith_index_u32(4294967295u, 29u)], ~vec3<u32>(arg_3.a, 13018u, arg_2 & 0u), -_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(-44810i, -11717i)) << (~(~vec2<u32>(15866u, arg_2)) % vec2<u32>(32u))).b;
}

fn func_6(arg_0: u32, arg_1: vec3<bool>, arg_2: f32, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = 1730f;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 12u)] * arg_2), 697f, arg_2) - func_4(Struct_5(4294967295u, arg_1, vec4<f32>(global1[_wgslsmith_index_u32(11259u, 12u)], global1[_wgslsmith_index_u32(67940u, 12u)], -1549f, arg_2), 4294967295u), Struct_3(Struct_1(vec3<bool>(true, false, arg_1.x), -72376i, false), vec4<i32>(u_input.a, 1i, -18328i, 33704i), Struct_2(u_input.b, vec2<bool>(true, arg_1.x), vec2<f32>(-1235f, 702f), false)), vec3<u32>(1u, 69612u, 0u), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), arg_3.yz)).c.xzy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1[_wgslsmith_index_u32(arg_0, 12u)], -702f, 371f)))) - vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 12u)], _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(0u, 12u)])), 534f))));
    var var_2 = Struct_2(u_input.b, select(arg_1.yy, vec2<bool>(arg_1.x, true), vec2<bool>(!arg_1.x, -11434i <= countOneBits(arg_3.x))), var_1.xz, !func_1(!(!arg_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 1206f, -964f, global1[_wgslsmith_index_u32(43822u, 12u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(469u, 12u)], global1[_wgslsmith_index_u32(48893u, 12u)], -1000f, var_1.x))), Struct_2(arg_0, func_4(Struct_5(arg_0, vec3<bool>(arg_1.x, true, arg_1.x), vec4<f32>(global1[_wgslsmith_index_u32(8458u, 12u)], 1121f, global1[_wgslsmith_index_u32(4294967295u, 12u)], 543f), 1u), Struct_3(Struct_1(arg_1, -90591i, true), vec4<i32>(arg_3.x, -1i, 23881i, arg_3.x), Struct_2(33547u, arg_1.zx, vec2<f32>(var_1.x, -757f), false)), vec3<u32>(63364u, arg_0, arg_0), arg_3.zx).b.yx, vec2<f32>(var_1.x, 758f), 13395u != arg_0), Struct_2(~0u, !arg_1.zy, _wgslsmith_div_vec2_f32(vec2<f32>(346f, arg_2), var_1.xz), arg_0 == 31325u)).x);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(129f, 627f, -1867f))))), vec3<f32>(_wgslsmith_f_op_f32(round(1123f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(34244u, 12u)] + 1759f), _wgslsmith_div_f32(-1198f, -1075f)))));
    let var_3 = -firstTrailingBit(u_input.a) >> (1u % 32u);
    return Struct_2(func_2(), arg_1.yx, vec2<f32>(1000f, var_2.c.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 29>();
    let var_0 = func_6(u_input.b, func_5(true, select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), !func_1(true, vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], -659f, 312f, -1202f), Struct_2(1u, vec2<bool>(true, true), vec2<f32>(global1[_wgslsmith_index_u32(24875u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)]), false), Struct_2(4294967295u, vec2<bool>(true, false), vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 12u)], global1[_wgslsmith_index_u32(1u, 12u)]), true)), u_input.b != 1u), abs(u_input.b), func_4(func_4(Struct_5(u_input.b, vec3<bool>(false, true, true), vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 12u)], -972f, global1[_wgslsmith_index_u32(52256u, 12u)], global1[_wgslsmith_index_u32(u_input.b, 12u)]), 0u), global0[_wgslsmith_index_u32(0u, 29u)], ~vec3<u32>(29975u, 0u, u_input.b), vec2<i32>(u_input.a, u_input.a)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, select(u_input.b, u_input.b, false)), 29u)], vec3<u32>(firstLeadingBit(u_input.b), u_input.b & 1u, u_input.b >> (u_input.b % 32u)), ~vec2<i32>(-54582i, -23684i))), _wgslsmith_f_op_f32(abs(-1123f)), vec3<i32>(abs(_wgslsmith_div_i32(-u_input.a, -u_input.a)), u_input.a, -_wgslsmith_add_i32(-15416i, ~1i)));
    global0 = array<Struct_3, 29>();
    let var_1 = vec4<bool>(any(vec4<bool>(1275f == _wgslsmith_f_op_f32(step(var_0.c.x, global1[_wgslsmith_index_u32(u_input.b, 12u)])), all(vec3<bool>(false, var_0.d, true)), false, true)), true, var_0.d, select(_wgslsmith_f_op_f32(min(280f, _wgslsmith_f_op_f32(f32(-1f) * -2203f))) != func_4(Struct_5(var_0.a, vec3<bool>(var_0.d, var_0.b.x, true), vec4<f32>(768f, global1[_wgslsmith_index_u32(62294u, 12u)], global1[_wgslsmith_index_u32(var_0.a, 12u)], 1746f), 101886u), Struct_3(Struct_1(vec3<bool>(var_0.d, var_0.d, false), u_input.a, var_0.b.x), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), var_0), _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.b, var_0.a), vec3<u32>(var_0.a, var_0.a, 4294967295u)), vec2<i32>(u_input.a, 25728i)).c.x, var_0.b.x, any(func_1(all(vec4<bool>(true, false, true, var_0.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1096f, global1[_wgslsmith_index_u32(10785u, 12u)], 1580f, 201f)), func_6(4294967295u, vec3<bool>(false, false, var_0.d), global1[_wgslsmith_index_u32(u_input.b, 12u)], vec3<i32>(-10295i, 2147483647i, -1i)), func_6(var_0.a, vec3<bool>(true, true, var_0.b.x), global1[_wgslsmith_index_u32(u_input.b, 12u)], vec3<i32>(u_input.a, u_input.a, u_input.a))))));
    var var_2 = Struct_3(Struct_1(func_5(true, vec4<bool>(all(var_0.b), true, u_input.a != -2147483647i, false), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b, 4294967295u, var_0.a)), firstTrailingBit(vec3<u32>(73762u, u_input.b, var_0.a))), Struct_5(max(13368u, 1u), func_5(var_0.b.x, var_1, 4294967295u, Struct_5(75786u, vec3<bool>(var_1.x, false, var_0.d), vec4<f32>(global1[_wgslsmith_index_u32(24416u, 12u)], global1[_wgslsmith_index_u32(u_input.b, 12u)], global1[_wgslsmith_index_u32(u_input.b, 12u)], var_0.c.x), 0u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-735f, -401f, global1[_wgslsmith_index_u32(4294967295u, 12u)], -455f), vec4<f32>(-1865f, 830f, 225f, global1[_wgslsmith_index_u32(1u, 12u)]), vec4<bool>(var_0.d, var_1.x, true, var_1.x))), u_input.b)), -(-u_input.a & u_input.a), false), vec4<i32>(1i, -54374i, abs(u_input.a), u_input.a), var_0);
    var var_3 = func_6(var_0.a, vec3<bool>(_wgslsmith_f_op_f32(var_2.c.c.x + -859f) == _wgslsmith_f_op_f32(-func_4(Struct_5(4294967295u, vec3<bool>(true, var_0.b.x, true), vec4<f32>(-370f, 323f, var_2.c.c.x, global1[_wgslsmith_index_u32(3570u, 12u)]), 1u), Struct_3(var_2.a, vec4<i32>(u_input.a, 0i, 25759i, -28125i), Struct_2(104941u, vec2<bool>(var_2.c.b.x, false), vec2<f32>(749f, -971f), var_2.a.a.x)), vec3<u32>(u_input.b, var_0.a, 1u), vec2<i32>(var_2.b.x, 0i)).c.x), !((0u ^ u_input.b) >= 0u), var_2.a.c), func_4(Struct_5(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 20656u, 0u, 0u), ~vec4<u32>(var_2.c.a, 60952u, 37423u, 0u)), !(!var_1.wxz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-982f, global1[_wgslsmith_index_u32(var_0.a, 12u)], 193f, -1270f))), var_0.a), global0[_wgslsmith_index_u32(45245u, 29u)], vec3<u32>(var_2.c.a, u_input.b, countOneBits(0u)), -abs(var_2.b.xx) ^ (min(var_2.b.zy, var_2.b.wy) & vec2<i32>(u_input.a, -1i))).c.x, _wgslsmith_mod_vec3_i32(var_2.b.wxx, -var_2.b.yxy));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(745f, _wgslsmith_f_op_f32(232f * func_4(Struct_5(var_0.a, var_2.a.a, vec4<f32>(1079f, var_2.c.c.x, -1772f, 495f), 4294967295u), global0[_wgslsmith_index_u32(6941u, 29u)], vec3<u32>(var_3.a, 14490u, var_3.a), vec2<i32>(var_2.b.x, var_2.a.b)).c.x))));
    var_3 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(7577u >> (var_2.c.a % 32u)), u_input.a, u_input.a, var_0.c.x);
}

