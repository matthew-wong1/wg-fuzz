struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29>;

var<private> global1: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(-1531f, -3189f, 227f, -1090f), vec4<f32>(1095f, 1000f, -253f, 427f), vec4<f32>(687f, -1000f, -1206f, -571f), vec4<f32>(-530f, 962f, -686f, 213f), vec4<f32>(-732f, -776f, -973f, -1000f), vec4<f32>(-1822f, 620f, -607f, 1212f), vec4<f32>(279f, 641f, -879f, 439f), vec4<f32>(-2171f, -1533f, 1156f, 722f), vec4<f32>(925f, -255f, 331f, 1052f), vec4<f32>(179f, 812f, -1000f, 206f), vec4<f32>(2109f, -601f, 1000f, 1000f), vec4<f32>(-1544f, 157f, 1044f, -317f), vec4<f32>(466f, -760f, 1054f, 1328f), vec4<f32>(-191f, 1000f, 1280f, 1212f), vec4<f32>(2082f, -1000f, 525f, -565f), vec4<f32>(-933f, 105f, -1000f, 209f), vec4<f32>(1000f, 1320f, 1493f, 208f), vec4<f32>(180f, 1564f, -691f, -861f), vec4<f32>(-1000f, -684f, -495f, -1128f), vec4<f32>(1586f, 626f, -1126f, -849f));

var<private> global2: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false));

var<private> global3: f32 = -274f;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = max(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(u_input.a | select(_wgslsmith_clamp_i32(u_input.b.x, u_input.a, -8995i), -2147483647i | u_input.a, !arg_0.c), _wgslsmith_sub_i32(~(~u_input.a), -40062i)));
    global2 = array<vec4<bool>, 24>();
    var var_1 = 10132i;
    var var_2 = min(abs(u_input.b), -_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, 601i, u_input.a)), _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, -3485i, 703i))) << (_wgslsmith_mult_vec3_u32((arg_0.a >> (vec3<u32>(0u, 14379u, 4275u) % vec3<u32>(32u))) >> (vec3<u32>(arg_0.b, arg_0.a.x, 4294967295u) % vec3<u32>(32u)), vec3<u32>(~18205u, 1u, arg_0.a.x)) % vec3<u32>(32u)));
    var_0 = -2147483647i;
    return arg_0.a;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~arg_3.a.yx;
    var var_1 = Struct_1(arg_2.a, ~0u, all(select(vec3<bool>(arg_2.c, arg_3.c, arg_2.c), !vec3<bool>(arg_2.c, false, true), all(vec3<bool>(false, false, true)))) && arg_3.c);
    var var_2 = arg_3;
    let var_3 = abs(24184u) | _wgslsmith_div_u32(_wgslsmith_mod_u32(max(5275u ^ arg_3.b, _wgslsmith_dot_vec2_u32(arg_1.yy, vec2<u32>(var_2.a.x, arg_3.b))), arg_1.x), var_2.b);
    let var_4 = Struct_1(~firstLeadingBit(func_3(Struct_1(arg_3.a, arg_3.a.x, var_1.c))) | ~firstTrailingBit(vec3<u32>(4294967295u, var_2.b, 47307u)), arg_2.a.x, true & all(vec2<bool>(arg_3.c, u_input.b.x > u_input.a)));
    return arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(681f))) * 446f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1494f, -1331f)))), 611f)))));
    var var_1 = arg_1;
    var var_2 = vec3<i32>(-min(u_input.b.x, -11822i), -30428i, _wgslsmith_add_i32(u_input.a >> (abs(~arg_1.b) % 32u), ~abs(max(1i, -1944i))));
    global0 = array<vec3<u32>, 29>();
    var var_3 = var_1.a.x <= (func_2(reverseBits(_wgslsmith_add_u32(var_1.b, arg_0.a.x)), select(vec3<u32>(4294967295u, 58771u, 1u), ~vec3<u32>(arg_1.a.x, 1u, 1u), select(var_1.c, true, arg_1.c)), arg_0, func_2(max(0u, 78382u), global0[_wgslsmith_index_u32(1u, 29u)], arg_0, Struct_1(arg_0.a, var_1.b, arg_1.c))).b << (func_3(Struct_1(vec3<u32>(0u, 0u, 37066u) & var_1.a, _wgslsmith_sub_u32(arg_0.b, arg_0.a.x), arg_1.c)).x % 32u));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec2<u32>) -> bool {
    global0 = array<vec3<u32>, 29>();
    let var_0 = 1i;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var var_2 = ~u_input.b.x << (firstLeadingBit(~min(arg_1.b, arg_3.x << (0u % 32u))) % 32u);
    let var_3 = Struct_1(arg_0.a, 1u, arg_2);
    return arg_2;
}

fn func_6(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: bool) -> Struct_1 {
    var var_0 = 4294967295u < func_2(_wgslsmith_mult_u32(~func_4(Struct_1(global0[_wgslsmith_index_u32(0u, 29u)], 61673u, arg_0.x), Struct_1(vec3<u32>(36313u, 0u, 1u), 42176u, true)).b, ~_wgslsmith_mod_u32(14183u, 21918u)), _wgslsmith_div_vec3_u32(global0[_wgslsmith_index_u32(14708u, 29u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(23770u), ~54235u), 29u)]), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(select(4294967295u, 68920u, arg_0.x), _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(0u, 29u)], vec3<u32>(1u, 1u, 1u))), 29u)], countOneBits(~1u), false), func_4(func_2(max(4294967295u, 0u), ~global0[_wgslsmith_index_u32(1u, 29u)], Struct_1(global0[_wgslsmith_index_u32(4294967295u, 29u)], 1u, false), func_2(15561u, global0[_wgslsmith_index_u32(42298u, 29u)], Struct_1(global0[_wgslsmith_index_u32(3132u, 29u)], 0u, arg_2), Struct_1(vec3<u32>(1u, 34478u, 0u), 57970u, arg_2))), func_2(1u, abs(vec3<u32>(50171u, 315u, 52353u)), func_4(Struct_1(vec3<u32>(16520u, 17721u, 4294967295u), 64773u, arg_0.x), Struct_1(global0[_wgslsmith_index_u32(0u, 29u)], 45470u, arg_0.x)), Struct_1(vec3<u32>(53533u, 4294967295u, 69569u), 4294967295u, arg_2)))).b;
    let var_1 = vec3<bool>(all(arg_0), true, !(_wgslsmith_f_op_f32(max(-757f, 1f)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1586f)), -162f)));
    var var_2 = func_2(3416u, ~max(func_3(Struct_1(global0[_wgslsmith_index_u32(17587u, 29u)], 1u, true)) ^ ~global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(940u, 29u)]), func_2(4294967295u, global0[_wgslsmith_index_u32(~0u, 29u)], Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(88602u, 0u, 37318u), vec3<u32>(40016u, 17363u, 4294967295u) & global0[_wgslsmith_index_u32(1u, 29u)]), func_4(Struct_1(global0[_wgslsmith_index_u32(3590u, 29u)], 77363u, false), func_4(Struct_1(global0[_wgslsmith_index_u32(117733u, 29u)], 1u, var_1.x), Struct_1(vec3<u32>(0u, 4294967295u, 11339u), 12127u, false))).b, true), Struct_1(~(~global0[_wgslsmith_index_u32(0u, 29u)]), 11972u, arg_0.x)), func_4(Struct_1(vec3<u32>(1u, 16149u, 1u) << (global0[_wgslsmith_index_u32(0u, 29u)] % vec3<u32>(32u)), ~4294967295u, arg_2), func_4(Struct_1(~global0[_wgslsmith_index_u32(16470u, 29u)], ~32896u, true), Struct_1(global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 29u)], 1u, true))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-608f, 1092f)) * -723f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-128f - -301f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1140f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(485f))));
    let var_4 = var_2.a.yy;
    return func_2(~(~var_4.x), ~abs(abs(_wgslsmith_clamp_vec3_u32(var_2.a, global0[_wgslsmith_index_u32(var_4.x, 29u)], var_2.a))), func_2(~(~_wgslsmith_sub_u32(var_4.x, var_2.b)), var_2.a, Struct_1(max(global0[_wgslsmith_index_u32(var_4.x, 29u)] & vec3<u32>(var_2.a.x, 1u, var_4.x), var_2.a), ~9998u, any(select(vec4<bool>(arg_0.x, true, true, false), global2[_wgslsmith_index_u32(var_4.x, 24u)], false))), func_2(func_3(Struct_1(vec3<u32>(31692u, 35001u, 6832u), var_2.a.x, true)).x, ~global0[_wgslsmith_index_u32(1u, 29u)], Struct_1(vec3<u32>(var_4.x, var_2.b, var_2.a.x), ~51565u, var_1.x), func_4(Struct_1(var_2.a, 1u, arg_0.x), func_4(Struct_1(vec3<u32>(var_2.b, 36608u, 84367u), var_2.b, false), Struct_1(vec3<u32>(var_2.a.x, 17023u, var_4.x), 23099u, arg_2))))), Struct_1(~global0[_wgslsmith_index_u32(abs(15365u), 29u)], ~firstLeadingBit(4294967295u), any(global2[_wgslsmith_index_u32(var_4.x, 24u)])));
}

fn func_7(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: u32) -> Struct_1 {
    global3 = _wgslsmith_f_op_f32(3082f - _wgslsmith_f_op_f32(round(1587f)));
    let var_0 = -vec2<i32>(u_input.a, 0i);
    return Struct_1(func_3(Struct_1(func_6(vec2<bool>(true, true), _wgslsmith_mult_vec2_i32(var_0, u_input.b.xx), !arg_1.x).a, max(_wgslsmith_mod_u32(arg_3, 43440u), 1u), func_4(Struct_1(arg_0.a, 11676u, false), func_6(vec2<bool>(arg_0.c, arg_0.c), vec2<i32>(-16666i, var_0.x), true)).c)), _wgslsmith_div_u32(~_wgslsmith_add_u32(arg_3, arg_0.a.x), countOneBits(72090u)), !((u_input.b.x >= ~u_input.b.x) | !(arg_0.c && true)));
}

fn func_1() -> vec2<f32> {
    var var_0 = func_7(func_6(vec2<bool>(true, true), u_input.b.xy, func_5(Struct_1(~global0[_wgslsmith_index_u32(73961u, 29u)], 13499u, false), func_4(func_2(0u, global0[_wgslsmith_index_u32(0u, 29u)], Struct_1(global0[_wgslsmith_index_u32(81868u, 29u)], 18410u, false), Struct_1(vec3<u32>(42970u, 16863u, 0u), 4294967295u, false)), Struct_1(vec3<u32>(4294967295u, 0u, 0u), 4294967295u, true)), any(global2[_wgslsmith_index_u32(~4294967295u, 24u)]), ~vec2<u32>(23092u, 4294967295u))), vec3<bool>(true || (select(u_input.a, u_input.a, true) != u_input.b.x), abs(_wgslsmith_mult_i32(u_input.a, u_input.a)) < u_input.a, !any(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-389f, 303f), vec2<f32>(359f, 1031f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(895f, -522f))))))), ~1u);
    global2 = array<vec4<bool>, 24>();
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1371f) + _wgslsmith_f_op_f32(abs(991f)))), 1637f, var_0.c)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1330f + -1000f) - -836f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(376f - -793f))))));
    var_0 = Struct_1(vec3<u32>(1u | var_0.b, 1u, var_0.a.x) | var_0.a, var_0.a.x, ~var_0.a.x != var_0.b);
    global1 = array<vec4<f32>, 20>();
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1367f, -251f), vec2<f32>(-144f, 419f))) - vec2<f32>(-1132f, -155f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1057f, -1194f), vec2<f32>(-682f, -242f))))), vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-895f + -164f)), true | !var_0.c)), -836f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(245f, -135f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(473f, -1412f))), _wgslsmith_f_op_vec2_f32(func_1()), true & select(true, true, any(global2[_wgslsmith_index_u32(0u, 24u)])))));
    global3 = _wgslsmith_f_op_f32(-var_0.x);
    var var_1 = firstTrailingBit(~func_6(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<i32>(u_input.b.x, -1i), true).a.x);
    var var_2 = Struct_1(vec3<u32>(~func_2(~0u, ~vec3<u32>(0u, 5744u, 0u), func_7(Struct_1(global0[_wgslsmith_index_u32(0u, 29u)], 1u, true), vec3<bool>(false, false, false), vec2<f32>(var_0.x, 1832f), 4294967295u), Struct_1(global0[_wgslsmith_index_u32(14752u, 29u)], 13471u, false)).a.x, 0u, 875u << (firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(5339u, 30768u), vec2<u32>(4294967295u, 0u))) % 32u)), ~35682u, true);
    let var_3 = ~(var_2.a.zy >> ((_wgslsmith_add_vec2_u32(var_2.a.yz << (vec2<u32>(var_2.b, 61446u) % vec2<u32>(32u)), ~var_2.a.zx) ^ ~select(vec2<u32>(1u, 1u), var_2.a.zx, vec2<bool>(var_2.c, true))) % vec2<u32>(32u)));
    let var_4 = Struct_1(select(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(17475u, 56495u), 29u)], _wgslsmith_mod_vec3_u32(vec3<u32>(63375u, 145848u, 15452u) & vec3<u32>(var_2.b, 72361u, var_3.x), var_2.a), func_5(func_4(Struct_1(vec3<u32>(var_2.a.x, 1u, var_3.x), 21167u, var_2.c), Struct_1(vec3<u32>(0u, 11712u, 40931u), var_3.x, true)), func_4(Struct_1(vec3<u32>(var_3.x, var_3.x, 40620u), 46178u, var_2.c), Struct_1(vec3<u32>(var_2.b, var_3.x, 96245u), 4294967295u, var_2.c)), any(vec4<bool>(true, var_2.c, true, false)), ~vec2<u32>(var_3.x, var_3.x))) ^ vec3<u32>(var_3.x, var_2.b, func_4(func_4(Struct_1(global0[_wgslsmith_index_u32(var_2.a.x, 29u)], var_3.x, var_2.c), Struct_1(vec3<u32>(1u, 0u, var_2.b), 0u, true)), func_7(Struct_1(vec3<u32>(var_3.x, 0u, 30553u), 4294967295u, var_2.c), vec3<bool>(true, true, var_2.c), vec2<f32>(-743f, var_0.x), var_2.b)).a.x), 0u, func_5(func_6(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(var_2.c, true)), vec2<i32>(u_input.a, u_input.a) ^ u_input.b.xx, true), func_4(Struct_1(vec3<u32>(var_2.b, 19389u, var_3.x), var_3.x, var_2.c), func_2(var_3.x, var_2.a, Struct_1(vec3<u32>(var_2.b, 31970u, var_3.x), 0u, var_2.c), Struct_1(var_2.a, var_2.b, var_2.c))), false, vec2<u32>(abs(var_2.b), 21107u)) & true);
    global2 = array<vec4<bool>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(~26412i, 251f);
}

