struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 30> = array<u32, 30>(21685u, 8961u, 87265u, 1u, 0u, 1u, 4294967295u, 0u, 4294967295u, 64046u, 0u, 4994u, 4294967295u, 50147u, 0u, 1u, 52u, 1u, 38598u, 49171u, 0u, 28913u, 0u, 0u, 4294967295u, 10283u, 1u, 75908u, 56211u, 0u);

var<private> global2: array<i32, 3>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_4, arg_1: i32) -> Struct_4 {
    var var_0 = select(4276u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(12405u, global1[_wgslsmith_index_u32(23175u, 30u)], 19087u) & ~vec3<u32>(global0.a, global1[_wgslsmith_index_u32(u_input.b, 30u)], u_input.b), max(vec3<u32>(56874u, global1[_wgslsmith_index_u32(0u, 30u)], 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 30u)], 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14626u, 30u)], 30u)], 1u)) >> (vec3<u32>(20529u, u_input.b, 1818u) % vec3<u32>(32u))), true);
    let var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.c - arg_0.a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1205f + 1000f)) + arg_0.a.b.x), 1590f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, -1216f)) + _wgslsmith_f_op_vec2_f32(min(arg_0.a.a.xz, vec2<f32>(arg_0.a.a.x, global0.e.b.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.a.wx) - _wgslsmith_f_op_vec2_f32(-global0.c)) - vec2<f32>(arg_0.a.b.x, 553f))));
    global2 = array<i32, 3>();
    global1 = array<u32, 30>();
    var_0 = global1[_wgslsmith_index_u32(~u_input.b, 30u)];
    return arg_0;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(firstLeadingBit(~(-firstTrailingBit(2147483647i))), 8999i);
    global2 = array<i32, 3>();
    var_0 = global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(_wgslsmith_add_u32(~firstTrailingBit(global0.a), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 1u) >> (vec2<u32>(64438u, 1u) % vec2<u32>(32u)), min(vec2<u32>(60476u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)]), vec2<u32>(global0.a, global1[_wgslsmith_index_u32(49521u, 30u)])))), _wgslsmith_div_u32(reverseBits(1u), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global0.a), 30u)], 30u)], u_input.b >> (4294967295u % 32u))))), 3u)];
    var var_1 = u_input.a.xyz;
    let var_2 = ~(~abs(vec2<u32>(u_input.b, ~31021u)));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), -990f, _wgslsmith_f_op_f32(1616f - _wgslsmith_f_op_f32(ceil(arg_2.x))), 891f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_2))), arg_0, func_2(func_2(Struct_4(arg_1), global2[_wgslsmith_index_u32(0u, 3u)]), _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_1.x | -2147483647i, global2[_wgslsmith_index_u32(24866u, 3u)] & global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.x, 30u)], 30u)], 3u)]), abs(~var_1.x))).a.d);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_4) -> Struct_4 {
    global0 = Struct_3(~0u, func_2(Struct_4(Struct_1(func_3(358f, Struct_1(vec4<f32>(284f, global0.c.x, arg_0.a.a.x, -204f), vec2<f32>(-523f, 626f), global0.b.c, arg_0.a.d), vec2<f32>(-132f, arg_0.a.b.x), vec2<f32>(arg_0.a.c, arg_3.a.b.x)).a, _wgslsmith_f_op_vec2_f32(arg_3.a.b * vec2<f32>(global0.b.a.x, global0.e.b.x)), 132f, vec4<bool>(true, true, arg_0.a.d.x, true))), reverseBits(_wgslsmith_dot_vec4_i32(u_input.a, -u_input.a))).a, _wgslsmith_f_op_vec2_f32(max(arg_3.a.a.wx, arg_2.a.xw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_3.a.a.xzx, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1625f, arg_2.a.x, 306f)), arg_3.a.a.wzy, true))))), global0.e);
    let var_0 = Struct_3(select(_wgslsmith_mod_u32(min(_wgslsmith_div_u32(19862u, 14275u), global0.a), 51820u), _wgslsmith_dot_vec2_u32(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 29522u), vec2<u32>(0u, 54132u), vec2<u32>(591u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41438u, 30u)], 30u)])), vec2<u32>(4294967295u, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(global0.a, u_input.b) & vec2<u32>(global0.a, 0u), vec2<u32>(41366u, global1[_wgslsmith_index_u32(global0.a, 30u)]))), true), func_2(arg_0, 0i).a, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(abs(-319f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-805f, 1487f) * _wgslsmith_f_op_vec2_f32(-arg_2.a.zx))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.a.a.zyx - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-635f, global0.c.x, -586f))))), Struct_2(vec3<f32>(global0.e.b.x, 1344f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(exp2(arg_2.a.x))))), vec2<f32>(-644f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1195f)) - _wgslsmith_div_f32(arg_2.b.x, arg_2.c)))));
    let var_1 = global0.b;
    global1 = array<u32, 30>();
    global1 = array<u32, 30>();
    return arg_0;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_4) -> vec4<i32> {
    let var_0 = Struct_3(global0.a, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a.a) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_1.a.a - vec4<f32>(1184f, 1092f, arg_1.a.c, global0.e.b.x))))), arg_1.a.a.xz, -320f, vec4<bool>(true, !(arg_0.x | true), true, !(!arg_0.x))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-306f, _wgslsmith_f_op_f32(sign(arg_1.a.a.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.d.zy) - _wgslsmith_f_op_vec2_f32(select(arg_1.a.a.yw, vec2<f32>(480f, global0.e.b.x), arg_1.a.d.xy))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b.a.xwy + vec3<f32>(715f, global0.b.a.x, -928f)))))), Struct_2(arg_1.a.a.zxz, _wgslsmith_f_op_vec2_f32(-global0.c)));
    var var_1 = ~global1[_wgslsmith_index_u32(~(~(~(~69739u))), 30u)];
    var var_2 = var_0;
    global2 = array<i32, 3>();
    var var_3 = select(~vec3<u32>(~1u, 0u, abs(var_0.a)), ~vec3<u32>(var_2.a, global1[_wgslsmith_index_u32(0u & var_0.a, 30u)], 46873u), true);
    return max(select(vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, global2[_wgslsmith_index_u32(0u, 3u)]) ^ min(global2[_wgslsmith_index_u32(global0.a, 3u)], -6002i), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~4294967295u, abs(var_2.a)), 3u)], -_wgslsmith_mod_i32(1i, u_input.a.x)), vec4<i32>(u_input.a.x, 17569i, _wgslsmith_div_i32(1i, _wgslsmith_mod_i32(-8613i, u_input.a.x)), max(u_input.a.x, firstLeadingBit(0i))), !func_2(arg_1, 9719i).a.d), vec4<i32>(0i, select(72518i, abs(countOneBits(-16905i)), !(!arg_1.a.d.x)), 1i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, u_input.a.x), -max(-1i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 3u)]))));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: u32) -> Struct_3 {
    let var_0 = func_5(global0.b.d.zz, func_4(func_2(Struct_4(Struct_1(vec4<f32>(1133f, -667f, global0.d.x, 475f), arg_1, 537f, global0.b.d)), ~u_input.a.x & _wgslsmith_div_i32(-15500i, -2147483647i)), func_2(Struct_4(func_3(1746f, global0.b, global0.d.xz, global0.e.b)), abs(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(1u, 3u)]))).a.d, global0.b, Struct_4(func_3(731f, Struct_1(vec4<f32>(global0.c.x, global0.c.x, -1000f, 966f), vec2<f32>(292f, -498f), arg_1.x, vec4<bool>(global0.b.d.x, false, true, false)), vec2<f32>(777f, arg_1.x), func_2(Struct_4(global0.b), global2[_wgslsmith_index_u32(arg_2, 3u)]).a.a.ww))));
    var var_1 = Struct_3(1u, global0.b, func_4(func_2(Struct_4(Struct_1(vec4<f32>(590f, arg_1.x, global0.b.c, -1293f), global0.e.b, -1752f, vec4<bool>(true, global0.b.d.x, true, true))), -46724i), vec4<bool>(true, any(func_3(-832f, Struct_1(global0.b.a, arg_1, global0.c.x, global0.b.d), arg_1, global0.d.zx).d.ywx), func_2(Struct_4(global0.b), global2[_wgslsmith_index_u32(41610u, 3u)]).a.d.x | true, arg_1.x >= _wgslsmith_f_op_f32(-arg_1.x)), func_4(Struct_4(global0.b), vec4<bool>(true, false, false, false), Struct_1(global0.b.a, _wgslsmith_f_op_vec2_f32(round(arg_1)), _wgslsmith_f_op_f32(global0.e.b.x - -969f), vec4<bool>(false, false, true, global0.b.d.x)), Struct_4(Struct_1(vec4<f32>(arg_1.x, 1000f, global0.e.a.x, 1138f), global0.e.a.yx, global0.e.a.x, global0.b.d))).a, Struct_4(func_4(func_4(Struct_4(global0.b), global0.b.d, Struct_1(vec4<f32>(global0.d.x, 631f, -2723f, arg_1.x), arg_1, global0.c.x, vec4<bool>(global0.b.d.x, false, global0.b.d.x, true)), Struct_4(Struct_1(global0.b.a, vec2<f32>(global0.b.a.x, global0.d.x), global0.b.c, vec4<bool>(true, global0.b.d.x, false, global0.b.d.x)))), global0.b.d, Struct_1(vec4<f32>(-1213f, arg_1.x, 275f, global0.d.x), arg_1, arg_1.x, global0.b.d), Struct_4(global0.b)).a)).a.a.xw, global0.b.a.xyz, global0.e);
    var var_2 = func_4(func_2(func_2(Struct_4(var_1.b), abs(select(var_0.x, 1i, var_1.b.d.x))), -11787i), global0.b.d, func_4(Struct_4(func_3(_wgslsmith_f_op_f32(floor(var_1.d.x)), Struct_1(vec4<f32>(654f, -1442f, 1470f, 756f), vec2<f32>(-1694f, 203f), 506f, vec4<bool>(global0.b.d.x, false, global0.b.d.x, true)), vec2<f32>(arg_1.x, 978f), vec2<f32>(var_1.d.x, -1234f))), !vec4<bool>(true, !global0.b.d.x, false, !var_1.b.d.x), func_2(Struct_4(func_3(-1341f, global0.b, vec2<f32>(-1000f, 313f), vec2<f32>(129f, arg_1.x))), var_0.x).a, Struct_4(func_3(_wgslsmith_div_f32(var_1.c.x, -1812f), global0.b, vec2<f32>(global0.c.x, arg_1.x), global0.b.b))).a, func_2(func_4(Struct_4(func_3(2147f, Struct_1(vec4<f32>(arg_1.x, var_1.d.x, global0.e.b.x, 944f), vec2<f32>(var_1.d.x, global0.d.x), 190f, vec4<bool>(true, false, global0.b.d.x, global0.b.d.x)), arg_1, vec2<f32>(-1492f, global0.b.a.x))), func_4(func_2(Struct_4(var_1.b), 51897i), !global0.b.d, Struct_1(global0.b.a, global0.b.b, -930f, global0.b.d), func_4(Struct_4(Struct_1(vec4<f32>(global0.c.x, -341f, 290f, var_1.c.x), arg_1, 1552f, var_1.b.d)), global0.b.d, var_1.b, Struct_4(var_1.b))).a.d, func_2(func_4(Struct_4(var_1.b), vec4<bool>(false, global0.b.d.x, false, global0.b.d.x), Struct_1(vec4<f32>(global0.c.x, 1510f, global0.e.a.x, 784f), vec2<f32>(arg_1.x, 1130f), arg_1.x, global0.b.d), Struct_4(global0.b)), 1i).a, func_2(Struct_4(Struct_1(vec4<f32>(-868f, 180f, 676f, arg_1.x), vec2<f32>(var_1.d.x, 620f), 597f, global0.b.d)), 2147483647i)), -1i)).a.d.zxy;
    let var_3 = Struct_4(Struct_1(_wgslsmith_div_vec4_f32(var_1.b.a, global0.b.a), _wgslsmith_f_op_vec2_f32(ceil(func_3(_wgslsmith_f_op_f32(f32(-1f) * -450f), func_4(Struct_4(Struct_1(var_1.b.a, global0.c, -1143f, global0.b.d)), var_1.b.d, Struct_1(vec4<f32>(911f, arg_1.x, 1747f, var_1.b.b.x), vec2<f32>(-1000f, 1786f), arg_1.x, vec4<bool>(true, true, global0.b.d.x, global0.b.d.x)), Struct_4(global0.b)).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-595f, 1137f)), _wgslsmith_f_op_vec2_f32(-global0.c)).a.yy)), 1811f, !var_1.b.d));
    var var_4 = vec3<u32>(~_wgslsmith_clamp_u32((32436u << (global0.a % 32u)) << (global1[_wgslsmith_index_u32(global0.a, 30u)] % 32u), ~global0.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, 4294967295u, arg_0), vec3<u32>(arg_0, u_input.b, 73638u))), ~select(global1[_wgslsmith_index_u32(~max(21042u, arg_2), 30u)], 1u, true), ~var_1.a);
    return Struct_3(~reverseBits(~19961u) | (~42438u >> (~(global0.a | var_1.a) % 32u)), func_3(func_2(var_3, _wgslsmith_dot_vec4_i32(func_5(vec2<bool>(true, false), Struct_4(Struct_1(vec4<f32>(283f, global0.e.a.x, arg_1.x, var_3.a.a.x), arg_1, 1449f, global0.b.d))), var_0 >> (vec4<u32>(arg_2, u_input.b, arg_2, 4294967295u) % vec4<u32>(32u)))).a.a.x, func_4(func_4(Struct_4(var_3.a), !var_1.b.d, Struct_1(var_1.b.a, vec2<f32>(var_3.a.b.x, var_3.a.a.x), -293f, global0.b.d), var_3), select(vec4<bool>(false, global0.b.d.x, var_1.b.d.x, false), select(var_1.b.d, vec4<bool>(var_3.a.d.x, var_3.a.d.x, false, var_3.a.d.x), false), global0.b.d), Struct_1(_wgslsmith_f_op_vec4_f32(-var_3.a.a), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.b.a.x, var_1.c.x), vec2<f32>(global0.e.b.x, var_1.b.a.x))), var_3.a.a.x, !global0.b.d), var_3).a, vec2<f32>(-514f, -574f), func_4(func_2(func_4(var_3, var_3.a.d, var_3.a, Struct_4(var_1.b)), 40716i | u_input.a.x), !vec4<bool>(global0.b.d.x, true, false, false), global0.b, func_4(var_3, !global0.b.d, var_3.a, var_3)).a.a.xw), _wgslsmith_f_op_vec2_f32(-func_2(var_3, ~var_0.x | _wgslsmith_clamp_i32(u_input.a.x, 2147483647i, var_0.x)).a.a.zz), var_1.b.a.wwz, global0.e);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 30>();
    global1 = array<u32, 30>();
    global0 = func_1(global0.a, global0.c, global1[_wgslsmith_index_u32(firstLeadingBit(0u), 30u)]);
    let var_0 = global0.d.x;
    var var_1 = Struct_4(func_1(~abs(firstTrailingBit(global1[_wgslsmith_index_u32(99191u, 30u)])), func_4(func_2(func_4(Struct_4(Struct_1(global0.b.a, global0.e.a.yy, global0.d.x, vec4<bool>(global0.b.d.x, true, global0.b.d.x, global0.b.d.x))), global0.b.d, Struct_1(global0.b.a, global0.e.a.yy, -1230f, vec4<bool>(global0.b.d.x, global0.b.d.x, global0.b.d.x, false)), Struct_4(global0.b)), _wgslsmith_sub_i32(35851i, u_input.a.x)), !func_1(u_input.b, global0.b.a.yw, global1[_wgslsmith_index_u32(4294967295u, 30u)]).b.d, func_3(global0.d.x, Struct_1(vec4<f32>(1000f, global0.d.x, 2214f, global0.d.x), vec2<f32>(global0.e.a.x, 1199f), 228f, vec4<bool>(false, false, global0.b.d.x, false)), _wgslsmith_f_op_vec2_f32(round(global0.b.a.wx)), _wgslsmith_f_op_vec2_f32(-global0.c)), func_2(func_2(Struct_4(global0.b), -2159i), -43000i)).a.b, u_input.b).b);
    global2 = array<i32, 3>();
    let var_2 = vec3<u32>(33804u, global0.a, _wgslsmith_add_u32(1u, 38u));
    global2 = array<i32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(0u), var_2.xx, ~vec2<i32>(abs(54739i), ~1i) << (vec2<u32>(var_2.x, ~u_input.b) % vec2<u32>(32u)), global2[_wgslsmith_index_u32(u_input.b, 3u)] << (~_wgslsmith_add_u32(u_input.b, 4294967295u) % 32u));
}

