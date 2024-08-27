struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(44500u, vec3<f32>(-149f, 980f, 1003f), vec4<i32>(i32(-2147483648), -35165i, -1i, i32(-2147483648))), Struct_1(4294967295u, vec3<f32>(-2545f, -953f, 861f), vec4<i32>(-1i, -28473i, 0i, 1i)), Struct_1(4294967295u, vec3<f32>(-1000f, -492f, -1667f), vec4<i32>(11359i, i32(-2147483648), -1i, 0i)), Struct_1(0u, vec3<f32>(424f, 572f, 1492f), vec4<i32>(25134i, -7563i, 76897i, 29193i)), Struct_1(4294967295u, vec3<f32>(-205f, -825f, -432f), vec4<i32>(1i, 2147483647i, -1i, 1i)), Struct_1(4294967295u, vec3<f32>(1000f, 2422f, -607f), vec4<i32>(-1i, 10842i, i32(-2147483648), 1i)), Struct_1(0u, vec3<f32>(-1383f, 921f, -545f), vec4<i32>(1i, 2147483647i, -1i, -1i)), Struct_1(9271u, vec3<f32>(1306f, 1266f, -797f), vec4<i32>(0i, 1i, -82280i, 37333i)), Struct_1(5811u, vec3<f32>(390f, 1273f, -371f), vec4<i32>(-5673i, 64338i, 49917i, i32(-2147483648))), Struct_1(42719u, vec3<f32>(-658f, -1066f, -144f), vec4<i32>(-9082i, 0i, 0i, -39487i)), Struct_1(81499u, vec3<f32>(575f, -1432f, 616f), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 1i)), Struct_1(4294967295u, vec3<f32>(605f, 797f, 706f), vec4<i32>(1996i, 1i, 2147483647i, 2147483647i)), Struct_1(0u, vec3<f32>(-1290f, 1113f, -620f), vec4<i32>(6080i, 1i, 24901i, -35855i)), Struct_1(53128u, vec3<f32>(-785f, -1201f, 374f), vec4<i32>(-7768i, 13548i, -9430i, i32(-2147483648))), Struct_1(0u, vec3<f32>(429f, -198f, 693f), vec4<i32>(i32(-2147483648), -71126i, 1i, 0i)), Struct_1(1u, vec3<f32>(1000f, 565f, 1007f), vec4<i32>(0i, 9742i, 2147483647i, 1i)), Struct_1(1u, vec3<f32>(984f, -257f, -1005f), vec4<i32>(31349i, 0i, -1i, 4384i)), Struct_1(0u, vec3<f32>(1396f, 959f, 353f), vec4<i32>(i32(-2147483648), 64984i, 38665i, -26620i)), Struct_1(4938u, vec3<f32>(-130f, 255f, 1283f), vec4<i32>(0i, 41607i, -32676i, 0i)), Struct_1(43926u, vec3<f32>(1170f, 1285f, -514f), vec4<i32>(2147483647i, 30380i, -102375i, 0i)), Struct_1(1u, vec3<f32>(1625f, -1640f, 499f), vec4<i32>(-31760i, i32(-2147483648), i32(-2147483648), 0i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = vec4<u32>(~5321u, 0u, max(8658u, 1u), arg_0.a);
    var var_1 = reverseBits(firstLeadingBit(_wgslsmith_add_i32(arg_1.c.x, arg_1.c.x))) ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(~arg_2.x, _wgslsmith_add_i32(global0.x, arg_1.c.x), arg_0.c.x >> (arg_1.a % 32u), -1i | global0.x), min(~vec4<i32>(arg_1.c.x, arg_2.x, 1i, global0.x), vec4<i32>(16848i, 1i, -2147483647i, -1i) >> (vec4<u32>(arg_1.a, u_input.a, arg_0.a, 4294967295u) % vec4<u32>(32u))));
    let var_2 = arg_0.c.wy;
    let var_3 = !select(!vec2<bool>(true, all(vec4<bool>(true, false, false, true))), vec2<bool>(all(vec3<bool>(false, true, true)) & true, true), true);
    global1 = array<Struct_1, 21>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.b.x - 1042f))))))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_3.b.zz), vec2<f32>(_wgslsmith_f_op_f32(round(1847f)), 362f)))));
    global0 = arg_3.c;
    let var_1 = select(vec4<bool>(true, all(vec3<bool>(true, true, true)), !(max(global0.x, 37892i) != -global0.x), true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), false))), true);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1050f - _wgslsmith_f_op_f32(round(-1101f))), var_0.x))), -977f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(854f, var_0.x, -1372f) * vec3<f32>(var_0.x, 307f, 1394f)), min(arg_3.c, vec4<i32>(-6416i, arg_3.c.x, global0.x, global0.x))), arg_3, arg_3.c, ~_wgslsmith_mod_vec2_u32(vec2<u32>(41922u, 12936u), arg_2.xz))))), _wgslsmith_f_op_f32(arg_3.b.x * _wgslsmith_f_op_f32(select(414f, _wgslsmith_f_op_f32(max(var_0.x, var_0.x)), true))));
    var_0 = _wgslsmith_f_op_vec2_f32(select(arg_3.b.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.xz) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1131f, 1078f)), vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(min(392f, var_2.x)))))), var_1.yz));
    return Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(arg_3.b - _wgslsmith_f_op_vec3_f32(trunc(arg_3.b))), firstLeadingBit(arg_3.c));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = func_2(firstLeadingBit(93308u), 34096u, ~vec4<u32>(_wgslsmith_div_u32(~u_input.a, arg_1.a), arg_1.a, 1u, _wgslsmith_div_u32(1u, 38747u)), arg_0);
    global1 = array<Struct_1, 21>();
    global1 = array<Struct_1, 21>();
    let var_1 = var_0;
    let var_2 = vec3<i32>(firstLeadingBit(i32(-1i) * -9022i), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-671i, -2147483647i) & arg_0.c.zx, ~vec2<i32>(arg_1.c.x, 32718i))), -60996i) & _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(func_2(select(0u, 1u, true), u_input.a, ~vec4<u32>(var_0.a, var_0.a, 45509u, u_input.a), func_2(var_0.a, 0u, vec4<u32>(0u, 0u, var_0.a, u_input.a), Struct_1(arg_1.a, arg_0.b, arg_0.c))).c.xyz, _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -1i, var_1.c.x), firstLeadingBit(arg_0.c.yww))), ~(-_wgslsmith_mult_vec3_i32(var_0.c.xzy, arg_1.c.zxz)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1017f, _wgslsmith_f_op_f32(952f - 275f)))));
}

fn func_1(arg_0: i32) -> vec2<f32> {
    global1 = array<Struct_1, 21>();
    var var_0 = Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1007f)), _wgslsmith_f_op_f32(f32(-1f) * -1108f)), _wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.a), 21u)], func_2(u_input.a, u_input.a, vec4<u32>(50220u, 1u, 7874u, u_input.a), global1[_wgslsmith_index_u32(u_input.a, 21u)]))), _wgslsmith_f_op_f32(f32(-1f) * -1357f))), reverseBits(vec4<i32>(-58974i | arg_0, global0.x, ~(-1i), ~7440i)));
    let var_1 = vec4<u32>(~var_0.a, ~(~u_input.a), max(_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0.a, u_input.a, max(4294967295u, 41720u)), ~75232u), u_input.a), var_0.a);
    let var_2 = ~min(var_1, _wgslsmith_mult_vec4_u32(min(var_1, _wgslsmith_sub_vec4_u32(var_1, vec4<u32>(var_1.x, var_1.x, var_1.x, u_input.a))), ~var_1));
    global0 = var_0.c;
    return var_0.b.zx;
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: bool) -> vec2<bool> {
    global1 = array<Struct_1, 21>();
    var var_0 = firstTrailingBit(~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 41378u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 563u) % vec4<u32>(32u)), vec4<u32>(u_input.a, u_input.a, 16280u, u_input.a))));
    return select(!(!vec2<bool>(true, arg_2)), vec2<bool>(arg_2, arg_2), all(!vec4<bool>(true, all(vec4<bool>(false, arg_2, true, arg_2)), true | arg_2, arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-440f, -192f)))) * _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_add_i32(global0.x, global0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-459f, 1636f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-824f, -1000f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1351f)), 962f)))), !all(vec4<bool>(true, true, true, true)));
    var var_1 = vec3<i32>(~(~(-(~global0.x))), 16863i, global0.x);
    var_0 = select(select(vec2<bool>(all(select(vec2<bool>(var_0.x, true), vec2<bool>(true, false), var_0.x)), true), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(26379i))), _wgslsmith_f_op_f32(-710f + _wgslsmith_f_op_f32(-863f - -774f)), any(vec2<bool>(false, true))), func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1269f, 508f), vec2<f32>(-146f, -851f))) - vec2<f32>(557f, 490f)), -1149f, func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(820f, 1000f)), _wgslsmith_f_op_f32(max(549f, -892f)), true).x)), !(!select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), !var_0.x)), !vec2<bool>(false, var_0.x));
    var var_2 = true;
    global1 = array<Struct_1, 21>();
    global0 = vec4<i32>(_wgslsmith_sub_i32(0i, 1i), var_1.x, var_1.x, -global0.x);
    let var_3 = abs(1u);
    let var_4 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3, firstLeadingBit(vec4<i32>(0i, global0.x, 0i, global0.x)), _wgslsmith_f_op_vec2_f32(func_1(global0.x)).x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-477f, -694f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(614f, -393f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-570f, 179f))))));
}

