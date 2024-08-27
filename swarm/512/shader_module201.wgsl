struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: u32,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 20>;

var<private> global1: array<vec2<f32>, 31>;

var<private> global2: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_i32(~(i32(-1i) * -3998i), _wgslsmith_mult_i32(-19623i, _wgslsmith_sub_i32(firstLeadingBit(u_input.c), ~u_input.c) ^ firstTrailingBit(1i)));
    var var_1 = vec4<u32>(~_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mod_u32(0u << (1u % 32u), ~72900u)), _wgslsmith_mod_u32(2754u, 1u), ~u_input.a, abs(u_input.a));
    let var_2 = select(var_1.zz, u_input.b.yx | vec2<u32>(_wgslsmith_add_u32(var_1.x, max(arg_2.x, arg_2.x)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, 63100u), ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(14665u, 4294967295u, arg_2.x, 36809u), vec4<u32>(var_1.x, arg_2.x, 93u, 10449u)))), arg_3.c.x);
    global1 = array<vec2<f32>, 31>();
    var_1 = firstLeadingBit(~max(vec4<u32>(max(var_1.x, 37351u), ~0u, 0u, ~69754u), ~(vec4<u32>(86065u, 150595u, 48862u, arg_2.x) ^ vec4<u32>(u_input.b.x, u_input.a, var_1.x, 22536u))));
    return vec4<bool>(global2.x, false, any(!arg_0.c.c.xx), global2.x);
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    global2 = select(vec4<bool>(true, any(func_3(Struct_2(Struct_1(global1[_wgslsmith_index_u32(14285u, 31u)], -1440f, global2.yxw), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 269f, global2.yxz), Struct_1(global1[_wgslsmith_index_u32(12871u, 31u)], 1000f, vec3<bool>(true, global2.x, false)), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], -629f, vec3<bool>(global2.x, arg_0.x, arg_0.x)), Struct_1(global1[_wgslsmith_index_u32(0u, 31u)], -818f, global2.zxy)), 1i, vec2<u32>(u_input.a, u_input.a), Struct_1(vec2<f32>(1000f, 728f), 1195f, vec3<bool>(global2.x, false, false)))) & (_wgslsmith_f_op_f32(trunc(565f)) != _wgslsmith_f_op_f32(612f * 1537f)), !global2.x, any(func_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(0u, 20u)], -713f, vec3<bool>(arg_0.x, true, arg_0.x)), Struct_1(vec2<f32>(171f, 611f), 1043f, vec3<bool>(true, global2.x, global2.x)), Struct_1(vec2<f32>(-695f, 824f), -1142f, global2.xxx), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 31u)], 1071f, vec3<bool>(true, true, global2.x)), Struct_1(global1[_wgslsmith_index_u32(45090u, 31u)], 502f, vec3<bool>(arg_0.x, true, false))), -2147483647i >> (1u % 32u), ~u_input.b.xy, Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 1255f, vec3<bool>(arg_0.x, true, global2.x))).xyw)), func_3(Struct_2(Struct_1(vec2<f32>(-1495f, -524f), _wgslsmith_f_op_f32(round(-854f)), select(global2.zwz, global2.xxy, vec3<bool>(false, true, true))), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(global0[_wgslsmith_index_u32(u_input.a, 20u)])), -1203f, global2.xxx), Struct_1(vec2<f32>(174f, -2276f), _wgslsmith_f_op_f32(step(241f, 325f)), !vec3<bool>(arg_0.x, arg_0.x, true)), Struct_1(global1[_wgslsmith_index_u32(u_input.b.x | u_input.a, 31u)], _wgslsmith_f_op_f32(min(258f, 552f)), vec3<bool>(arg_0.x, arg_0.x, false)), Struct_1(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(u_input.b.x, 20u)] - vec2<f32>(-1814f, -210f)), _wgslsmith_f_op_f32(f32(-1f) * -1128f), vec3<bool>(true, false, true))), -1i, ~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(73537u, 5304u)), reverseBits(u_input.b.zy)), Struct_1(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.a | u_input.a, 31u)]), -1562f, !select(vec3<bool>(false, arg_0.x, false), global2.wyy, global2.xxz))), vec4<bool>(arg_0.x, true, all(!vec3<bool>(true, arg_0.x, arg_0.x)) || any(select(global2.zw, vec2<bool>(global2.x, arg_0.x), vec2<bool>(arg_0.x, arg_0.x))), !global2.x));
    global2 = !(!vec4<bool>(true, true, true && !arg_0.x, !arg_0.x && !global2.x));
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global0[_wgslsmith_index_u32(u_input.a, 20u)]))), _wgslsmith_f_op_f32(select(-829f, -1008f, all(global2.wz))), vec3<bool>(global2.x, arg_0.x, true)), Struct_1(vec2<f32>(-159f, _wgslsmith_f_op_f32(min(132f, -134f))), -182f, func_3(Struct_2(Struct_1(vec2<f32>(285f, -1000f), 1275f, vec3<bool>(false, false, false)), Struct_1(vec2<f32>(-711f, 1000f), 151f, global2.zyy), Struct_1(vec2<f32>(216f, -1190f), 496f, vec3<bool>(false, true, true)), Struct_1(vec2<f32>(-1042f, 958f), 322f, global2.xxw), Struct_1(vec2<f32>(-428f, -1713f), 878f, vec3<bool>(true, global2.x, global2.x))), 0i & u_input.c, vec2<u32>(u_input.a, 0u), Struct_1(vec2<f32>(-381f, 839f), 1284f, global2.xzy)).zzw), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-257f, 1147f))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(4294967295u, 29691u)), 20u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1423f, -370f)) * -604f), vec3<bool>(true, true, true)), Struct_1(vec2<f32>(-1468f, _wgslsmith_f_op_f32(ceil(518f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(549f + -1000f))), global2.xyz), Struct_1(global0[_wgslsmith_index_u32(~1u, 20u)], _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-584f, -778f))), !(!global2.yxz))), vec4<bool>(!global2.x, arg_0.x, any(func_3(Struct_2(Struct_1(vec2<f32>(-124f, -645f), -1000f, global2.xzy), Struct_1(vec2<f32>(-457f, 528f), -981f, vec3<bool>(arg_0.x, false, arg_0.x)), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 20u)], -194f, global2.wwy), Struct_1(vec2<f32>(-2166f, -732f), -1339f, global2.wyw), Struct_1(vec2<f32>(-1000f, 498f), -717f, vec3<bool>(arg_0.x, false, arg_0.x))), ~u_input.c, _wgslsmith_mult_vec2_u32(u_input.b.yx, vec2<u32>(60063u, 49610u)), Struct_1(vec2<f32>(1196f, -641f), 1537f, global2.zwy))), !(!all(vec4<bool>(false, true, true, true)))), ~max(u_input.a | 60876u, 26269u) << (_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a, u_input.b.x, 11959u, 140880u), vec4<u32>(u_input.b.x, 75004u, 73543u, u_input.a)) >> (abs(vec4<u32>(0u, 22681u, 4294967295u, 0u)) % vec4<u32>(32u)), ~vec4<u32>(48660u, 145443u, 23000u, u_input.b.x)) % 32u), select(global2.xw, vec2<bool>(true, all(!vec2<bool>(arg_0.x, false))), func_3(Struct_2(Struct_1(vec2<f32>(-898f, -509f), 176f, global2.xzy), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], -759f, vec3<bool>(true, arg_0.x, arg_0.x)), Struct_1(vec2<f32>(-435f, 256f), 475f, global2.wyw), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], -553f, global2.zzx), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 20u)], -807f, global2.xyz)), firstLeadingBit(_wgslsmith_sub_i32(u_input.c, -2147483647i)), ~vec2<u32>(u_input.b.x, u_input.a) >> (~u_input.b.xx % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1406f, 594f)), -141f, !global2.wyx)).yx), firstLeadingBit(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 4294967295u, 27857u, 0u), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 28052u, 0u), vec4<u32>(u_input.a, 63746u, 17850u, u_input.b.x))))));
    let var_1 = vec4<f32>(var_0.a.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b.a.x) - _wgslsmith_f_op_f32(-337f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.b.a.x))))), _wgslsmith_f_op_f32(sign(var_0.a.b.b)), var_0.a.d.a.x);
    let var_2 = ~vec3<i32>(u_input.c, i32(-1i) * -(~u_input.c), u_input.c << (u_input.b.x % 32u));
    return Struct_3(var_0.a, vec4<bool>(all(func_3(Struct_2(var_0.a.b, var_0.a.c, Struct_1(var_1.xz, var_0.a.b.b, vec3<bool>(true, var_0.d.x, global2.x)), var_0.a.a, var_0.a.b), -19959i, u_input.b.xz & u_input.b.yy, Struct_1(var_1.xy, var_1.x, global2.xzy)).xz), global2.x, true, true), min(var_0.e.x, firstLeadingBit(~12000u & u_input.b.x)), arg_0, vec4<u32>(1u & _wgslsmith_add_u32(_wgslsmith_add_u32(var_0.c, 4294967295u), ~var_0.c), reverseBits(abs(~0u)), u_input.b.x, 1u));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = ~0u;
    global0 = array<vec2<f32>, 20>();
    var var_1 = ~0u;
    var var_2 = arg_0.x ^ ~(-_wgslsmith_add_i32(-20167i, i32(-1i) * -1i));
    global1 = array<vec2<f32>, 31>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(!global2.zz).a.b.b, _wgslsmith_f_op_f32(f32(-1f) * -1044f))), -1110f, !select(vec3<bool>(global2.x, true, true), func_2(!arg_1.b.yz).a.c.c, true));
}

fn func_1(arg_0: f32) -> bool {
    global0 = array<vec2<f32>, 20>();
    global0 = array<vec2<f32>, 20>();
    let var_0 = -16860i;
    let var_1 = Struct_3(Struct_2(func_4(vec3<i32>(min(27168i, var_0), -2147483647i, -var_0), func_2(vec2<bool>(global2.x, global2.x)), Struct_3(func_2(global2.wy).a, vec4<bool>(global2.x, global2.x, true, false), reverseBits(u_input.b.x), vec2<bool>(false, true), vec4<u32>(u_input.a, u_input.a, u_input.b.x, 4294967295u) & vec4<u32>(3995u, u_input.a, u_input.a, u_input.a)), select(func_2(global2.zx).b, !vec4<bool>(global2.x, global2.x, global2.x, true), true)), Struct_1(_wgslsmith_f_op_vec2_f32(sign(global1[_wgslsmith_index_u32(1u, 31u)])), 962f, func_3(Struct_2(Struct_1(vec2<f32>(arg_0, 1403f), arg_0, vec3<bool>(false, true, global2.x)), Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], -764f, global2.yxz), Struct_1(vec2<f32>(arg_0, arg_0), arg_0, vec3<bool>(false, true, global2.x)), Struct_1(vec2<f32>(arg_0, -1000f), arg_0, vec3<bool>(global2.x, global2.x, global2.x)), Struct_1(global1[_wgslsmith_index_u32(22862u, 31u)], 1599f, vec3<bool>(true, false, true))), _wgslsmith_mult_i32(var_0, u_input.c), u_input.b.yy, func_4(vec3<i32>(-12847i, 1i, u_input.c), Struct_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(0u, 20u)], arg_0, global2.xzw), Struct_1(vec2<f32>(arg_0, -875f), arg_0, global2.xwz), Struct_1(vec2<f32>(1390f, arg_0), arg_0, global2.wwz), Struct_1(vec2<f32>(arg_0, arg_0), arg_0, vec3<bool>(global2.x, global2.x, false)), Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], arg_0, vec3<bool>(true, true, global2.x))), vec4<bool>(true, true, false, global2.x), u_input.b.x, global2.zx, vec4<u32>(0u, 0u, 4294967295u, 4294967295u)), Struct_3(Struct_2(Struct_1(global1[_wgslsmith_index_u32(u_input.a, 31u)], -300f, vec3<bool>(global2.x, true, global2.x)), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 20u)], arg_0, global2.xyz), Struct_1(vec2<f32>(814f, 1280f), arg_0, vec3<bool>(false, true, false)), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 31u)], -623f, vec3<bool>(global2.x, global2.x, global2.x)), Struct_1(global0[_wgslsmith_index_u32(22623u, 20u)], 181f, global2.yyw)), vec4<bool>(global2.x, global2.x, global2.x, global2.x), 1u, vec2<bool>(false, global2.x), vec4<u32>(u_input.a, 4294967295u, u_input.b.x, 0u)), vec4<bool>(global2.x, global2.x, global2.x, global2.x))).xzw), func_4(max(_wgslsmith_div_vec3_i32(vec3<i32>(var_0, var_0, u_input.c), vec3<i32>(0i, -29062i, u_input.c)), vec3<i32>(u_input.c, u_input.c, var_0)), Struct_3(func_2(vec2<bool>(global2.x, global2.x)).a, !vec4<bool>(true, global2.x, false, true), min(u_input.b.x, u_input.a), !global2.xz, ~vec4<u32>(4294967295u, 35402u, u_input.a, 1u)), func_2(!vec2<bool>(global2.x, true)), vec4<bool>(any(vec4<bool>(true, true, global2.x, true)), global2.x, true, true)), func_2(!global2.xx).a.a, func_2(global2.xy).a.e), func_3(Struct_2(func_2(func_4(vec3<i32>(-2147483647i, var_0, u_input.c), Struct_3(Struct_2(Struct_1(vec2<f32>(arg_0, 1083f), -589f, global2.xzy), Struct_1(vec2<f32>(arg_0, -598f), 497f, global2.wyx), Struct_1(vec2<f32>(1167f, 1976f), arg_0, vec3<bool>(true, global2.x, false)), Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], 817f, vec3<bool>(false, false, global2.x)), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 2439f, vec3<bool>(global2.x, global2.x, true))), vec4<bool>(false, true, global2.x, global2.x), u_input.a, global2.xz, vec4<u32>(u_input.b.x, 27660u, u_input.b.x, u_input.b.x)), Struct_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(1u, 20u)], 912f, global2.xyw), Struct_1(vec2<f32>(arg_0, -1041f), 1700f, vec3<bool>(global2.x, false, false)), Struct_1(global0[_wgslsmith_index_u32(39977u, 20u)], arg_0, vec3<bool>(true, global2.x, false)), Struct_1(vec2<f32>(-1350f, 228f), -590f, vec3<bool>(true, global2.x, true)), Struct_1(vec2<f32>(1028f, 271f), arg_0, vec3<bool>(global2.x, global2.x, true))), vec4<bool>(true, global2.x, global2.x, true), 0u, vec2<bool>(global2.x, global2.x), vec4<u32>(u_input.a, 7748u, u_input.a, u_input.a)), vec4<bool>(false, global2.x, true, true)).c.yx).a.e, func_4(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(30491i, u_input.c, -2147483647i)), func_2(global2.yw), Struct_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 20u)], arg_0, vec3<bool>(global2.x, global2.x, true)), Struct_1(global1[_wgslsmith_index_u32(18401u, 31u)], arg_0, global2.xxx), Struct_1(vec2<f32>(arg_0, arg_0), arg_0, vec3<bool>(global2.x, global2.x, true)), Struct_1(global0[_wgslsmith_index_u32(0u, 20u)], -497f, global2.yyz), Struct_1(vec2<f32>(-1000f, 269f), 1584f, global2.wwz)), vec4<bool>(global2.x, true, global2.x, false), 99127u, global2.yx, vec4<u32>(10006u, u_input.b.x, 4294967295u, 57265u)), vec4<bool>(false, false, true, true)), func_4(vec3<i32>(u_input.c, 1i, u_input.c), func_2(global2.wx), Struct_3(Struct_2(Struct_1(vec2<f32>(1252f, -913f), arg_0, global2.wyw), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], arg_0, vec3<bool>(global2.x, false, true)), Struct_1(vec2<f32>(arg_0, arg_0), -1099f, global2.yww), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 31u)], 646f, global2.wyz), Struct_1(global1[_wgslsmith_index_u32(1u, 31u)], 1133f, global2.yxy)), vec4<bool>(global2.x, global2.x, global2.x, global2.x), u_input.b.x, global2.xx, vec4<u32>(21365u, u_input.b.x, 0u, 1u)), vec4<bool>(true, global2.x, global2.x, true)), Struct_1(vec2<f32>(1f, 1f), _wgslsmith_f_op_f32(select(-1000f, arg_0, false)), vec3<bool>(global2.x, global2.x, global2.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(0u, 20u)]), 2127f, vec3<bool>(false, global2.x, global2.x))), u_input.c, ~u_input.b.yy, func_2(func_2(func_3(Struct_2(Struct_1(vec2<f32>(arg_0, 288f), arg_0, global2.yxz), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 20u)], -1433f, vec3<bool>(global2.x, true, false)), Struct_1(global0[_wgslsmith_index_u32(72110u, 20u)], arg_0, global2.yzy), Struct_1(vec2<f32>(arg_0, arg_0), -766f, vec3<bool>(global2.x, global2.x, global2.x)), Struct_1(vec2<f32>(arg_0, -1669f), arg_0, vec3<bool>(true, global2.x, false))), -13255i, u_input.b.zx, Struct_1(global0[_wgslsmith_index_u32(16389u, 20u)], arg_0, global2.yyw)).yz).b.xw).a.c), ~(~_wgslsmith_sub_u32(~9220u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(0u, u_input.b.x, 13996u)))), !vec2<bool>(global2.x, !global2.x), ~vec4<u32>(select(~14871u, ~0u, true), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a, u_input.b.x), u_input.b.x, u_input.a & 7802u), ~(~u_input.b.x), u_input.b.x));
    global1 = array<vec2<f32>, 31>();
    return !func_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.b.a.x, arg_0) * global0[_wgslsmith_index_u32(u_input.a, 20u)]), -1000f, !vec3<bool>(var_1.a.b.c.x, global2.x, true)), Struct_1(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(u_input.b.x, 31u)] + var_1.a.e.a), func_2(global2.zz).a.a.b, var_1.b.xwx), func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0, u_input.c, -2147483647i), vec3<i32>(u_input.c, 1i, var_0)), func_2(vec2<bool>(true, global2.x)), Struct_3(var_1.a, var_1.b, u_input.a, vec2<bool>(var_1.a.b.c.x, false), var_1.e), var_1.b), var_1.a.b, var_1.a.a), _wgslsmith_mult_i32(20330i, u_input.c), min(firstTrailingBit(~vec2<u32>(1u, var_1.c)), vec2<u32>(_wgslsmith_mult_u32(var_1.e.x, 1u), _wgslsmith_add_u32(72700u, u_input.a))), func_2(select(func_4(vec3<i32>(60735i, -34798i, 22306i), Struct_3(var_1.a, var_1.b, u_input.a, vec2<bool>(true, global2.x), var_1.e), var_1, var_1.b).c.xx, !vec2<bool>(global2.x, false), var_1.a.a.b != arg_0)).a.a).x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 31>();
    var var_0 = func_1(558f);
    global2 = !select(vec4<bool>(true && (global2.x & global2.x), any(select(vec4<bool>(false, true, true, false), vec4<bool>(global2.x, false, true, global2.x), vec4<bool>(global2.x, global2.x, true, false))), false, !global2.x), !vec4<bool>(global2.x, all(vec4<bool>(false, global2.x, global2.x, false)), global2.x, false), !(!vec4<bool>(true, global2.x, true, false)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(554f, 3228f)));
    var_1 = _wgslsmith_f_op_f32(427f - _wgslsmith_f_op_f32(f32(-1f) * -637f));
    var_0 = func_1(_wgslsmith_f_op_f32(-996f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-253f - -200f) - _wgslsmith_f_op_f32(round(315f)))))));
    var_1 = -1573f;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -1000f)))), 484f, vec3<bool>(func_2(select(vec2<bool>(true, false), vec2<bool>(false, global2.x), global2.x)).a.d.c.x, global2.x, global2.x)), func_4(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, select(15219i, u_input.c, true), -u_input.c), vec3<i32>(-12479i, 1i, countOneBits(2147483647i))), Struct_3(Struct_2(func_2(vec2<bool>(global2.x, true)).a.a, func_2(vec2<bool>(true, false)).a.e, func_4(vec3<i32>(0i, u_input.c, u_input.c), Struct_3(Struct_2(Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], -1369f, vec3<bool>(global2.x, global2.x, true)), Struct_1(vec2<f32>(1125f, -949f), 460f, global2.wzw), Struct_1(vec2<f32>(-2012f, 900f), 1170f, global2.zxx), Struct_1(global1[_wgslsmith_index_u32(709u, 31u)], 621f, global2.wxw), Struct_1(vec2<f32>(617f, 674f), -1161f, vec3<bool>(false, true, global2.x))), vec4<bool>(true, global2.x, global2.x, false), 4294967295u, global2.yy, vec4<u32>(u_input.a, 74792u, u_input.a, 4294967295u)), Struct_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(1u, 20u)], -1044f, global2.zyw), Struct_1(vec2<f32>(-230f, 743f), 945f, vec3<bool>(global2.x, false, false)), Struct_1(vec2<f32>(-276f, -1907f), 1135f, global2.yxz), Struct_1(global0[_wgslsmith_index_u32(102271u, 20u)], -1784f, vec3<bool>(true, global2.x, true)), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], -585f, vec3<bool>(global2.x, false, global2.x))), vec4<bool>(global2.x, true, true, true), u_input.a, vec2<bool>(true, global2.x), vec4<u32>(4294967295u, u_input.a, u_input.b.x, u_input.b.x)), vec4<bool>(false, true, global2.x, global2.x)), Struct_1(vec2<f32>(548f, -1267f), -1000f, global2.zww), func_4(vec3<i32>(u_input.c, u_input.c, 21067i), Struct_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 20u)], 775f, vec3<bool>(true, true, global2.x)), Struct_1(vec2<f32>(-654f, -1347f), 221f, global2.yzy), Struct_1(vec2<f32>(308f, -120f), 2096f, vec3<bool>(global2.x, global2.x, global2.x)), Struct_1(vec2<f32>(252f, -1292f), 1024f, vec3<bool>(false, false, false)), Struct_1(vec2<f32>(588f, 1000f), -1403f, global2.xzy)), vec4<bool>(global2.x, global2.x, false, global2.x), u_input.b.x, vec2<bool>(global2.x, global2.x), vec4<u32>(u_input.b.x, u_input.a, 0u, 4294967295u)), Struct_3(Struct_2(Struct_1(vec2<f32>(-1176f, 355f), 1000f, global2.xxw), Struct_1(global0[_wgslsmith_index_u32(42168u, 20u)], 930f, vec3<bool>(global2.x, global2.x, false)), Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], -1413f, global2.xyx), Struct_1(global0[_wgslsmith_index_u32(1u, 20u)], -375f, global2.zzy), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 31u)], -2386f, global2.zxz)), vec4<bool>(global2.x, false, global2.x, global2.x), u_input.a, global2.zz, vec4<u32>(25112u, u_input.a, 69966u, u_input.b.x)), vec4<bool>(global2.x, global2.x, global2.x, true))), vec4<bool>(!global2.x, any(vec3<bool>(global2.x, false, global2.x)), all(vec2<bool>(global2.x, global2.x)), true), _wgslsmith_sub_u32(u_input.b.x & 98016u, 48065u & u_input.b.x), vec2<bool>(true, true), (vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u) << (vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) >> (countOneBits(vec4<u32>(91210u, 1u, 17732u, u_input.b.x)) % vec4<u32>(32u))), Struct_3(func_2(vec2<bool>(global2.x, true)).a, !vec4<bool>(true, false, global2.x, global2.x), u_input.b.x, global2.zw, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(2946u, 0u, u_input.b.x, 43599u), vec4<u32>(80187u, 1u, 3596u, 1u)), _wgslsmith_sub_u32(u_input.a, 1u), u_input.a, u_input.b.x)), vec4<bool>(global2.x, global2.x, any(func_3(Struct_2(Struct_1(vec2<f32>(724f, -107f), 1591f, global2.yxx), Struct_1(vec2<f32>(1043f, 1110f), 1259f, vec3<bool>(global2.x, false, global2.x)), Struct_1(vec2<f32>(791f, -304f), -180f, global2.xxy), Struct_1(global0[_wgslsmith_index_u32(4264u, 20u)], 996f, global2.zxw), Struct_1(vec2<f32>(-505f, -516f), 557f, global2.yzx)), u_input.c, vec2<u32>(u_input.b.x, 0u), Struct_1(global0[_wgslsmith_index_u32(14549u, 20u)], 576f, global2.ywz)).yx), all(func_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 688f, vec3<bool>(global2.x, true, true)), Struct_1(global1[_wgslsmith_index_u32(0u, 31u)], -423f, vec3<bool>(true, global2.x, global2.x)), Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], -505f, vec3<bool>(global2.x, true, true)), Struct_1(vec2<f32>(2605f, 399f), 196f, vec3<bool>(false, false, false)), Struct_1(vec2<f32>(-645f, 135f), -1085f, global2.zxw)), u_input.c, u_input.b.zx, Struct_1(global0[_wgslsmith_index_u32(21081u, 20u)], 478f, global2.www))))), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(global1[_wgslsmith_index_u32(u_input.b.x, 31u)])))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1081f * -445f))), _wgslsmith_f_op_f32(f32(-1f) * -344f)), global2.zwy), Struct_1(_wgslsmith_f_op_vec2_f32(min(func_4(~vec3<i32>(0i, u_input.c, u_input.c), Struct_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(36913u, 20u)], 1966f, global2.zww), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 20u)], 1495f, global2.xzx), Struct_1(global0[_wgslsmith_index_u32(86212u, 20u)], 190f, global2.wxy), Struct_1(vec2<f32>(967f, 2004f), 1059f, vec3<bool>(false, global2.x, global2.x)), Struct_1(vec2<f32>(293f, 164f), 592f, global2.wxy)), vec4<bool>(global2.x, true, false, global2.x), u_input.b.x, vec2<bool>(global2.x, global2.x), vec4<u32>(0u, 32499u, u_input.b.x, u_input.b.x)), func_2(global2.zz), !vec4<bool>(global2.x, global2.x, false, false)).a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-107f, 219f) * global1[_wgslsmith_index_u32(u_input.a, 31u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + -203f), global2.zww), Struct_1(vec2<f32>(1f, _wgslsmith_f_op_f32(trunc(-900f))), _wgslsmith_div_f32(1124f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(433f)), _wgslsmith_f_op_f32(abs(208f)))), vec3<bool>(any(!global2.zxz), all(func_2(global2.xz).a.e.c), global2.x)));
    var_1 = var_2.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(_wgslsmith_clamp_i32(max(-1i, u_input.c), abs(2147483647i), countOneBits(-1i)), u_input.c, _wgslsmith_clamp_i32(1i, abs(8694i), u_input.c)), ~(~(~(~vec4<i32>(u_input.c, u_input.c, -27144i, u_input.c)))));
}

