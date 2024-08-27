struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(false, false, false, true, true, true, false, true, false);

var<private> global1: array<Struct_3, 13>;

var<private> global2: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(-35391i, -1i), vec2<i32>(0i, 1i), vec2<i32>(39125i, 0i), vec2<i32>(24391i, -23400i), vec2<i32>(18799i, 14934i), vec2<i32>(2147483647i, 34698i), vec2<i32>(0i, 30607i), vec2<i32>(i32(-2147483648), 16118i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(7064i, 38311i), vec2<i32>(i32(-2147483648), 36487i), vec2<i32>(-7664i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(i32(-2147483648), -5330i), vec2<i32>(-61978i, 51579i), vec2<i32>(-28256i, 0i), vec2<i32>(0i, 6733i), vec2<i32>(-109i, -54893i), vec2<i32>(i32(-2147483648), 5873i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(7282i, i32(-2147483648)), vec2<i32>(2147483647i, 10835i), vec2<i32>(27264i, i32(-2147483648)), vec2<i32>(35949i, 0i), vec2<i32>(1i, -48735i), vec2<i32>(-47602i, i32(-2147483648)), vec2<i32>(-1i, 1i), vec2<i32>(2767i, 81473i), vec2<i32>(9800i, -7339i), vec2<i32>(-1i, 40949i), vec2<i32>(0i, -1i));

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global4: array<vec3<f32>, 22>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = vec4<i32>(firstTrailingBit(arg_0.x) | -19895i, countOneBits(u_input.a.x), -1i, select(arg_0.x, select(1i, _wgslsmith_div_i32(1i, u_input.a.x), global3.x), all(!global3.xxy)));
    global4 = array<vec3<f32>, 22>();
    var var_1 = vec4<bool>(!(!all(!global3.zw)), true, 1i <= arg_0.x, true);
    global3 = vec4<bool>(all(select(vec3<bool>(var_1.x, all(vec4<bool>(global3.x, global0[_wgslsmith_index_u32(39139u, 9u)], false, false)), any(vec3<bool>(true, var_1.x, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, var_1.x, global0[_wgslsmith_index_u32(26489u, 9u)]), all(vec2<bool>(false, true))), var_1.x)), (_wgslsmith_f_op_f32(-614f + _wgslsmith_f_op_f32(sign(-1252f))) >= 677f) && (_wgslsmith_f_op_f32(-1077f * _wgslsmith_f_op_f32(-860f + 372f)) != _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-129f, 569f)))), true, (~select(u_input.c, u_input.c, true) ^ u_input.c) < (u_input.b.x | 89038u));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -434f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-280f, -1114f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))));
    return vec4<bool>(!(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.zy, vec2<u32>(4294967295u, 31879u), vec2<u32>(u_input.c, u_input.c)), u_input.b.yy) > max(firstLeadingBit(u_input.c), u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-406f, -866f)) + var_2.x) + _wgslsmith_f_op_f32(f32(-1f) * -553f)) != _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(exp2(var_2.x)))), select(global3.x, true, global0[_wgslsmith_index_u32(u_input.b.x, 9u)]), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(352f, _wgslsmith_f_op_f32(select(719f, _wgslsmith_f_op_f32(872f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1060f - 149f))), false))));
    var var_1 = _wgslsmith_dot_vec3_u32(u_input.b.wyy, vec3<u32>(19129u, ~33745u & ~u_input.b.x, countOneBits(~2839u)));
    var var_2 = global1[_wgslsmith_index_u32(~0u ^ _wgslsmith_div_u32(~abs(_wgslsmith_sub_u32(arg_2.b.x, arg_2.c)), ~(0u & u_input.b.x)), 13u)];
    let var_3 = Struct_3(var_2.a, vec4<i32>(-1i, _wgslsmith_mod_i32(var_2.a.b, -22932i), u_input.a.x | _wgslsmith_clamp_i32(u_input.d, ~1i, var_2.b.x), 0i), 4294967295u, var_2.d);
    let var_4 = Struct_2(any(!arg_0) | all(select(vec3<bool>(true, var_3.d.a, var_2.d.a), func_3(var_3.b.zwx).yxx, vec3<bool>(false, false, global3.x))), _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(u_input.c, ~1u)), firstTrailingBit(vec2<u32>(1u, u_input.c))), 14097u);
    return _wgslsmith_f_op_f32(-2608f - -482f);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global0 = array<bool, 9>();
    let var_0 = countOneBits(select(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(10735i, -48846i), vec2<i32>(2147483647i, -81932i)), 2147483647i), -reverseBits(u_input.a.x | u_input.a.x), true));
    global0 = array<bool, 9>();
    var var_1 = _wgslsmith_mod_vec3_i32(min(u_input.a.wwx, vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(18156i, var_0, -18757i), vec3<i32>(var_0, 2147483647i, 0i))), -_wgslsmith_add_vec3_i32(u_input.a.zwy, _wgslsmith_sub_vec3_i32(firstLeadingBit(u_input.a.zzw), u_input.a.zxy)));
    let var_2 = arg_0;
    return Struct_1(vec2<f32>(-2973f, _wgslsmith_f_op_f32(func_4(func_3(vec3<i32>(1i, 1i, var_0)), (vec2<i32>(-1i, 10119i) & global2[_wgslsmith_index_u32(22811u, 31u)]) | ~vec2<i32>(u_input.d, 2147483647i), Struct_2(false, var_2.b, ~77377u)))), 6877i, ~(~var_2.c), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.b, u_input.b.yy) | 1u, 22u)])), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(0u, 22u)]))))), false)), vec3<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 1u)), vec2<u32>(4294967295u, 17481u) & vec2<u32>(69628u, u_input.c)) | (u_input.b.x ^ (0u << (u_input.c % 32u))), _wgslsmith_mult_u32(1u, countOneBits(u_input.b.x)), _wgslsmith_sub_u32(~(~u_input.c), 1u)));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_div_vec3_i32(select(_wgslsmith_div_vec3_i32(u_input.a.yzw, u_input.a.zyw), vec3<i32>(~min(arg_0.a.b, 2147483647i), reverseBits(max(62121i, u_input.d)), ~u_input.d), global3.yww), arg_0.b.yzz);
    var var_1 = arg_0.a.a.x;
    let var_2 = Struct_3(func_2(Struct_2(true, u_input.b.yx, 0u)), vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(~vec4<i32>(0i, 30753i, 215i, 776i), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -1i, 0i, -28925i), u_input.a)), ~(~4294967295u), Struct_2(arg_1.x, vec2<u32>(122758u, u_input.c), firstTrailingBit(u_input.c ^ u_input.b.x) << (~firstLeadingBit(arg_0.a.c) % 32u)));
    let var_3 = arg_0.b.yxz;
    global4 = array<vec3<f32>, 22>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.a.a.x, var_2.a.d.x, -1000f, var_2.a.d.x), vec4<f32>(var_2.a.a.x, 1094f, 916f, var_2.a.d.x))), vec4<f32>(arg_0.a.a.x, arg_0.a.a.x, -141f, var_2.a.a.x))) + vec4<f32>(var_2.a.a.x, -823f, -257f, _wgslsmith_f_op_f32(arg_0.a.d.x - var_2.a.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.a.a.x, arg_0.a.a.x, 229f, -1447f), vec4<f32>(arg_0.a.a.x, arg_0.a.a.x, -1172f, arg_0.a.a.x))))))));
}

fn func_6(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_3 {
    let var_0 = arg_0.a.d;
    var var_1 = arg_0.d;
    var var_2 = global1[_wgslsmith_index_u32(0u, 13u)];
    let var_3 = Struct_1(vec2<f32>(var_2.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-756f * -611f) - _wgslsmith_f_op_f32(var_0.x - 1161f)) + 434f)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -arg_0.b, var_2.b), _wgslsmith_div_u32(abs(66562u), ~0u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-503f - _wgslsmith_f_op_f32(1125f + arg_0.a.a.x))), func_2(var_2.d).d.x, arg_1.x), max(_wgslsmith_add_vec3_u32(arg_0.a.e, var_2.a.e) << (select(vec3<u32>(0u, 8865u, var_2.a.e.x) << (vec3<u32>(68114u, var_1.c, var_1.b.x) % vec3<u32>(32u)), select(vec3<u32>(0u, 0u, arg_0.a.e.x), u_input.b.yzy, var_2.d.a), vec3<bool>(false, var_2.d.a, false)) % vec3<u32>(32u)), vec3<u32>(~(~var_2.c), var_1.c, _wgslsmith_mod_u32(var_2.d.c, firstLeadingBit(var_1.c)))));
    let var_4 = (var_2.d.a | (true && (all(vec4<bool>(false, var_1.a, global0[_wgslsmith_index_u32(var_3.e.x, 9u)], global0[_wgslsmith_index_u32(var_2.d.b.x, 9u)])) | (107863u < arg_0.d.b.x)))) | global3.x;
    return arg_0;
}

fn func_7(arg_0: Struct_3, arg_1: i32, arg_2: vec4<bool>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_div_i32(~arg_1, _wgslsmith_add_i32(u_input.a.x, func_2(func_6(Struct_3(Struct_1(arg_0.a.d.xx, arg_1, arg_0.a.c, vec3<f32>(arg_0.a.a.x, -1180f, arg_0.a.d.x), arg_0.a.e), vec4<i32>(-1i, -2147483647i, arg_0.b.x, -37193i), 0u, arg_0.d), vec4<f32>(arg_0.a.d.x, -1329f, arg_0.a.a.x, 413f), vec4<i32>(1i, arg_1, u_input.a.x, arg_1)).d).b));
    global0 = array<bool, 9>();
    var var_1 = global1[_wgslsmith_index_u32(u_input.b.x, 13u)];
    global1 = array<Struct_3, 13>();
    global4 = array<vec3<f32>, 22>();
    return func_6(Struct_3(func_2(var_1.d), var_1.b, 15651u, func_6(func_6(global1[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.d.x, 101f, -1392f, var_1.a.d.x)), u_input.a ^ var_1.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.d.x, arg_0.a.d.x, var_1.a.a.x, 1285f) - vec4<f32>(var_1.a.d.x, -536f, 247f, arg_0.a.a.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1602f, arg_0.a.d.x, -794f, var_1.a.a.x))), (vec4<i32>(51018i, -7175i, -2147483647i, arg_1) | arg_0.b) | vec4<i32>(0i, var_1.b.x, u_input.d, arg_1)).d), vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a.d.x)), _wgslsmith_f_op_f32(select(-1727f, var_1.a.d.x, !arg_2.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.x)))), arg_0.a.d.x), u_input.a).a;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = !global3.x;
    return func_7(func_6(global1[_wgslsmith_index_u32(~u_input.b.x, 13u)], _wgslsmith_f_op_vec4_f32(func_5(Struct_3(func_2(Struct_2(global0[_wgslsmith_index_u32(1u, 9u)], vec2<u32>(99911u, u_input.b.x), 4294967295u)), vec4<i32>(-1i, u_input.d, u_input.a.x, 0i), ~9942u, Struct_2(true, u_input.b.xz, u_input.b.x)), func_3(u_input.a.ywx))), u_input.a), firstLeadingBit(_wgslsmith_clamp_i32(func_2(Struct_2(global3.x, u_input.b.yy, 66620u)).b, u_input.a.x, max(u_input.a.x, u_input.a.x))) ^ 0i, vec4<bool>(func_2(Struct_2(global3.x, u_input.b.zz, u_input.b.x)).b < -_wgslsmith_mult_i32(2147483647i, u_input.a.x), global0[_wgslsmith_index_u32(u_input.c, 9u)], all(!select(vec4<bool>(global3.x, true, global3.x, global0[_wgslsmith_index_u32(30719u, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 9u)], false, global3.x, global0[_wgslsmith_index_u32(u_input.b.x, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 9u)], true, false, true))), all(vec4<bool>(true, true, true, true))), ~(((vec2<u32>(u_input.c, 4543u) >> (u_input.b.yw % vec2<u32>(32u))) << (min(vec2<u32>(u_input.c, 4294967295u), u_input.b.zw) % vec2<u32>(32u))) | ~vec2<u32>(u_input.b.x, u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(100575u, 13u)];
    global4 = array<vec3<f32>, 22>();
    var var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-448f, var_0.a.a.x) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.d.x)))) * _wgslsmith_f_op_f32(f32(-1f) * -1264f)));
    var var_2 = ~func_1(-381f).c;
    global1 = array<Struct_3, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(~1u << (0u % 32u));
}

