struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(-1i, 39033i, 2147483647i, 2147483647i, -18137i, -33158i, -71906i, -26294i, -25649i, 4308i, -1i, 0i, -25477i, 52856i, -1i, 17462i, 2552i, 11721i, 1i, 20149i, 31817i, -8623i, -1i);

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<bool>(false, false, true), vec4<i32>(4067i, i32(-2147483648), 797i, -1i), vec4<i32>(0i, -52143i, 34113i, -15178i), vec4<f32>(976f, 280f, -677f, -349f)), Struct_1(vec3<bool>(true, false, false), vec4<i32>(-41894i, -65922i, i32(-2147483648), 13143i), vec4<i32>(2147483647i, -55743i, i32(-2147483648), 18726i), vec4<f32>(-2484f, -602f, -496f, -1208f)), Struct_1(vec3<bool>(true, true, false), vec4<i32>(-1i, 2147483647i, 27836i, 1i), vec4<i32>(1i, 33758i, -27468i, 2147483647i), vec4<f32>(-447f, 178f, -1346f, 677f)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(-1i, i32(-2147483648), -11365i, 7590i), vec4<i32>(-9895i, 37322i, i32(-2147483648), 51609i), vec4<f32>(280f, 926f, 262f, 1016f)), Struct_1(vec3<bool>(false, false, true), vec4<i32>(-2563i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(23881i, 29669i, 56134i, 10633i), vec4<f32>(1122f, -1000f, 430f, 1604f)), Struct_1(vec3<bool>(false, true, true), vec4<i32>(-1i, 27497i, -325i, -34413i), vec4<i32>(-1i, 1i, -28264i, 1i), vec4<f32>(436f, -1635f, 1027f, -1313f)), Struct_1(vec3<bool>(false, false, true), vec4<i32>(2147483647i, 8596i, 10634i, 13111i), vec4<i32>(1702i, -26035i, -57906i, 35000i), vec4<f32>(292f, 895f, 940f, -1000f)), Struct_1(vec3<bool>(true, false, true), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 45580i), vec4<i32>(2147483647i, -8480i, i32(-2147483648), i32(-2147483648)), vec4<f32>(-1066f, 1171f, 419f, 548f)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(0i, -27654i, -23319i, 13395i), vec4<i32>(0i, 39681i, i32(-2147483648), 58849i), vec4<f32>(1107f, -310f, -265f, 889f)), Struct_1(vec3<bool>(true, true, false), vec4<i32>(-49368i, i32(-2147483648), -55524i, 35474i), vec4<i32>(0i, 0i, 1i, -70080i), vec4<f32>(1219f, 1000f, -975f, -889f)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(-27302i, i32(-2147483648), 5273i, -27294i), vec4<i32>(i32(-2147483648), 2147483647i, 3690i, i32(-2147483648)), vec4<f32>(531f, -1009f, -397f, -696f)), Struct_1(vec3<bool>(true, false, true), vec4<i32>(1i, 2147483647i, 1i, 0i), vec4<i32>(-24843i, 2147483647i, 30664i, -33322i), vec4<f32>(-1504f, 369f, -799f, 271f)), Struct_1(vec3<bool>(false, true, true), vec4<i32>(1i, -1i, 56638i, -1i), vec4<i32>(-2064i, 69812i, -34496i, -27801i), vec4<f32>(585f, -589f, -1000f, -291f)), Struct_1(vec3<bool>(false, false, true), vec4<i32>(0i, -4448i, 11254i, 2147483647i), vec4<i32>(0i, 2147483647i, -14085i, -66254i), vec4<f32>(-1000f, -139f, -1117f, -1340f)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(i32(-2147483648), 7036i, 2147483647i, 2147483647i), vec4<i32>(15250i, -7966i, -24690i, -15272i), vec4<f32>(-446f, 898f, 531f, -173f)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(-1i, -30955i, -9648i, 2147483647i), vec4<i32>(1i, -1i, -1i, 2751i), vec4<f32>(-490f, 1000f, 701f, 702f)), Struct_1(vec3<bool>(true, false, false), vec4<i32>(-63020i, 1i, 2147483647i, 37474i), vec4<i32>(-18453i, -39678i, 1i, 33015i), vec4<f32>(-661f, 1103f, 130f, 136f)), Struct_1(vec3<bool>(false, false, true), vec4<i32>(-11727i, i32(-2147483648), 0i, -8551i), vec4<i32>(-47303i, 2147483647i, 18532i, -28559i), vec4<f32>(-1071f, -389f, -149f, 1034f)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(67661i, 96573i, i32(-2147483648), 1i), vec4<i32>(2147483647i, -53273i, -25708i, 1i), vec4<f32>(-108f, 819f, 810f, -250f)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(1i, -1i, 33727i, 0i), vec4<i32>(-1i, -1i, -50373i, 19989i), vec4<f32>(1348f, -1161f, -803f, -109f)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    let var_0 = vec3<bool>(true, arg_0.x || all(select(select(vec4<bool>(false, false, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), true), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), true)), arg_0.x);
    global1 = array<Struct_1, 20>();
    global0 = array<i32, 23>();
    let var_1 = u_input.b;
    global1 = array<Struct_1, 20>();
    return Struct_3(true, global1[_wgslsmith_index_u32(1u, 20u)]);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = func_2(select(vec2<bool>(func_2(select(arg_1.b.a.yy, arg_1.b.a.xy, arg_1.a)).a, false), select(!vec2<bool>(true, arg_1.a), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)] > arg_1.b.b.x, arg_1.b.d.x < 521f), arg_1.b.a.x), reverseBits(arg_0.x) > 0u)).b;
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_div_f32(153f, _wgslsmith_f_op_f32(round(-484f))), _wgslsmith_f_op_f32(-arg_1.b.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.d.x - var_0.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2487f, -1497f)) - _wgslsmith_f_op_f32(abs(arg_1.b.d.x))) + var_0.d.x)), Struct_1(select(vec3<bool>(1i >= arg_1.b.c.x, false, true), select(vec3<bool>(true, false, false), vec3<bool>(var_0.a.x, var_0.a.x, true), arg_1.b.a), !var_0.a.x), vec4<i32>(39554i, arg_1.b.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_1.b.b.x), vec2<i32>(1629i, 2147483647i)), abs(-1i)) | vec4<i32>(9307i, i32(-1i) * -62218i, _wgslsmith_mod_i32(-11599i, arg_1.b.c.x), 2147483647i), min(abs(vec4<i32>(arg_1.b.c.x, u_input.b, 2147483647i, 0i)), -var_0.b), vec4<f32>(var_0.d.x, -322f, -478f, 554f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1799f + _wgslsmith_div_f32(arg_1.b.d.x, arg_1.b.d.x)))), -arg_1.b.c, !func_2(var_0.a.zz).b.a);
    var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b.d.x, -150f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(588f + var_1.b.d.x)), func_2(var_0.a.xy).b, var_1.b.d.x, ~vec4<i32>(select(arg_1.b.b.x, 0i, true), global0[_wgslsmith_index_u32(3376u, 23u)], -10798i, -7761i), !(!func_2(select(vec2<bool>(arg_1.b.a.x, true), vec2<bool>(false, var_0.a.x), vec2<bool>(false, arg_1.a))).b.a));
    let var_2 = Struct_1(vec3<bool>(var_0.a.x & (-arg_1.b.b.x < global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), select(any(!vec4<bool>(true, var_0.a.x, arg_1.a, arg_1.b.a.x)), all(vec2<bool>(var_1.b.a.x, true)), false & var_1.b.a.x), var_0.a.x), ~vec4<i32>(-abs(arg_1.b.b.x), min(var_0.b.x, _wgslsmith_mod_i32(65339i, -1i)), -_wgslsmith_dot_vec4_i32(var_1.b.c, vec4<i32>(var_1.d.x, 0i, var_1.d.x, u_input.b)), -(global0[_wgslsmith_index_u32(54873u, 23u)] & global0[_wgslsmith_index_u32(arg_0.x, 23u)])), var_1.b.c, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-func_2(var_0.a.yx).b.d)), var_0.d)));
    var_1 = Struct_2(arg_1.b.d, Struct_1(vec3<bool>(true, arg_1.a || (var_1.e.x && true), false & all(var_0.a.xy)), ~_wgslsmith_mod_vec4_i32(~var_2.b, select(vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 23u)], 24650i, -1i, arg_1.b.b.x), var_1.d, arg_1.a)), reverseBits(firstTrailingBit(var_2.c << (u_input.a % vec4<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(130f))), _wgslsmith_div_f32(-996f, _wgslsmith_f_op_f32(floor(402f))), _wgslsmith_f_op_f32(arg_1.b.d.x - _wgslsmith_f_op_f32(select(-715f, -550f, arg_1.b.a.x))), 1091f)), _wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(490f, var_2.d.x)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.d.x))))), _wgslsmith_div_vec4_i32(var_1.d, select(var_2.c << (min(u_input.a, vec4<u32>(arg_0.x, 40494u, u_input.d, arg_0.x)) % vec4<u32>(32u)), var_2.c, vec4<bool>(true, var_1.e.x, true, var_0.a.x))), !(!vec3<bool>(true, -1000f > var_1.c, !var_2.a.x)));
    return Struct_3(false, Struct_1(var_1.b.a, var_1.d, max(-_wgslsmith_mod_vec4_i32(var_0.b, vec4<i32>(955i, -1i, -1i, 6612i)), -arg_1.b.c | max(var_0.b, arg_1.b.b)), vec4<f32>(1000f, var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.d.x + var_1.b.d.x)), 1323f)));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = vec2<bool>(all(vec2<bool>(any(func_3(vec2<u32>(4294967295u, 4294967295u), Struct_3(arg_1.a, arg_1.b)).b.a), -467f <= _wgslsmith_f_op_f32(-arg_2))), select(all(vec4<bool>(true, false, 14233i <= global0[_wgslsmith_index_u32(0u, 23u)], all(vec4<bool>(arg_3.b.a.x, false, arg_3.b.a.x, arg_1.a)))), true, false));
    var var_1 = func_2(arg_1.b.a.xy).b;
    global0 = array<i32, 23>();
    let var_2 = ~min(u_input.d, ~13662u);
    let var_3 = func_2(vec2<bool>(true, arg_3.b.a.x));
    return select(select(arg_3.b.a, func_3(min(abs(u_input.a.wx), u_input.a.xx), func_3(~vec2<u32>(var_2, var_2), var_3)).b.a, func_2(!select(arg_3.b.a.xx, vec2<bool>(false, var_0.x), true)).b.a), vec3<bool>(true && !var_0.x, !all(!arg_3.b.a), var_3.a), true);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> f32 {
    global0 = array<i32, 23>();
    var var_0 = Struct_1(select(func_4(-_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 23u)], 2147483647i, global0[_wgslsmith_index_u32(2231u, 23u)]), vec3<i32>(-2147483647i, -4070i, u_input.b)), func_3(vec2<u32>(u_input.a.x, u_input.a.x) << (arg_0.yy % vec2<u32>(32u)), func_2(vec2<bool>(false, false))), 313f, Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -194f, -350f, 852f) + vec4<f32>(114f, -1400f, -938f, -312f)), global1[_wgslsmith_index_u32(~4294967295u, 20u)], _wgslsmith_f_op_f32(abs(1242f)), vec4<i32>(global0[_wgslsmith_index_u32(24956u, 23u)], -1i, u_input.b, global0[_wgslsmith_index_u32(arg_1, 23u)]) | vec4<i32>(10635i, 17021i, -5490i, 2147483647i), func_3(vec2<u32>(u_input.d, u_input.a.x), Struct_3(true, Struct_1(vec3<bool>(true, false, true), vec4<i32>(u_input.b, -23533i, global0[_wgslsmith_index_u32(arg_1, 23u)], global0[_wgslsmith_index_u32(arg_0.x, 23u)]), vec4<i32>(-2147483647i, u_input.b, -22139i, global0[_wgslsmith_index_u32(arg_1, 23u)]), vec4<f32>(538f, -1295f, -157f, -612f)))).b.a)), vec3<bool>(false, true, true), select(u_input.b > u_input.b, any(vec2<bool>(true, true)), true) || true), func_3(firstTrailingBit(~abs(vec2<u32>(arg_1, arg_0.x))), func_3(arg_0.yy, func_3(arg_0.yy, Struct_3(false, global1[_wgslsmith_index_u32(0u, 20u)])))).b.c, abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-70453i, global0[_wgslsmith_index_u32(63066u, 23u)], -1i, -29231i), vec4<i32>(global0[_wgslsmith_index_u32(15426u, 23u)], 0i, 2147483647i, global0[_wgslsmith_index_u32(u_input.c, 23u)])), -1i, 2147483647i, global0[_wgslsmith_index_u32(arg_1, 23u)])) >> ((u_input.a | select(min(u_input.a, vec4<u32>(0u, 4294967295u, arg_1, arg_1)), u_input.a ^ vec4<u32>(u_input.a.x, arg_0.x, arg_0.x, 4294967295u), true)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-651f, -665f, -1168f, 1272f)) * vec4<f32>(1567f, -657f, 781f, -196f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1501f, 870f, -1743f, -920f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(674f, 1030f, 443f, 1416f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(871f, -419f, 1000f, 116f))))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))))));
    var var_1 = Struct_1(!vec3<bool>(true, min(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 23u)]) > -1i, func_2(vec2<bool>(true, var_0.a.x)).a), var_0.b, select(-(~(~var_0.b)), -(~(var_0.c >> (vec4<u32>(1u, arg_0.x, 1u, arg_1) % vec4<u32>(32u)))), any(!select(vec4<bool>(false, false, false, true), vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0.d, var_0.d)))));
    let var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1962f)))), var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.d.x, var_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x + var_0.d.x) + var_0.d.x))), func_2(select(select(!var_0.a.xz, var_1.a.yz, func_4(1i, Struct_3(false, global1[_wgslsmith_index_u32(1u, 20u)]), 585f, Struct_2(var_1.d, global1[_wgslsmith_index_u32(arg_1, 20u)], var_1.d.x, vec4<i32>(u_input.b, 1i, -69207i, var_0.c.x), var_1.a)).yz), func_4(u_input.b, Struct_3(var_0.a.x, global1[_wgslsmith_index_u32(arg_0.x, 20u)]), _wgslsmith_f_op_f32(-var_1.d.x), Struct_2(vec4<f32>(954f, var_0.d.x, var_1.d.x, var_1.d.x), global1[_wgslsmith_index_u32(62677u, 20u)], var_1.d.x, var_0.c, var_0.a)).xy, false)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(step(-1571f, _wgslsmith_f_op_f32(select(var_1.d.x, var_0.d.x, var_1.a.x)))))), vec4<i32>(1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(var_0.c, var_0.b), _wgslsmith_add_i32(u_input.b, global0[_wgslsmith_index_u32(42358u, 23u)] & -2147483647i), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, arg_0.x), arg_0), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.d, arg_1), vec3<u32>(u_input.a.x, u_input.d, u_input.a.x))), 23u)]), 0i, countOneBits(1i)), var_1.a);
    global0 = array<i32, 23>();
    return _wgslsmith_f_op_f32(floor(var_1.d.x));
}

fn func_5(arg_0: f32) -> Struct_3 {
    global1 = array<Struct_1, 20>();
    global0 = array<i32, 23>();
    var var_0 = any(vec2<bool>(all(func_2(vec2<bool>(false, true)).b.a.zz), false));
    return func_3(abs(vec2<u32>(0u, 4294967295u)), Struct_3(all(vec4<bool>(true, func_2(vec2<bool>(false, true)).a, u_input.b != u_input.b, func_4(u_input.b, Struct_3(false, global1[_wgslsmith_index_u32(u_input.d, 20u)]), arg_0, Struct_2(vec4<f32>(420f, arg_0, 1027f, arg_0), Struct_1(vec3<bool>(false, false, false), vec4<i32>(-7539i, u_input.b, 2147483647i, u_input.b), vec4<i32>(0i, u_input.b, 1i, -1i), vec4<f32>(-1933f, arg_0, -341f, 216f)), -1376f, vec4<i32>(20372i, 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec3<bool>(false, false, false))).x)), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(0i, u_input.b, u_input.b, 0i)), vec4<i32>(1i, 2147483647i, global0[_wgslsmith_index_u32(u_input.d, 23u)], u_input.b)), (vec4<i32>(0i, -2147483647i, global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)]) | vec4<i32>(0i, -2147483647i, global0[_wgslsmith_index_u32(14189u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)])) << (u_input.a % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(func_3(u_input.a.yz, Struct_3(false, Struct_1(vec3<bool>(false, false, true), vec4<i32>(-2147483647i, u_input.b, u_input.b, global0[_wgslsmith_index_u32(u_input.c, 23u)]), vec4<i32>(10507i, 1i, u_input.b, u_input.b), vec4<f32>(arg_0, arg_0, arg_0, 1000f)))).b.d * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(272f, -739f, -153f, arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(select(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true))), true, all(vec3<bool>(true, true, true))), Struct_1(vec3<bool>(1u == u_input.a.x, true, false | (2147483647i >= u_input.b)), select(vec4<i32>(-10401i, 3088i, min(u_input.b, u_input.b), global0[_wgslsmith_index_u32(u_input.a.x, 23u)] << (u_input.d % 32u)), vec4<i32>(0i, _wgslsmith_clamp_i32(u_input.b, u_input.b, -15216i), u_input.b, min(u_input.b, 0i)), true), vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 23u)], (i32(-1i) * -35670i) & _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -28456i, 35380i), vec3<i32>(u_input.b, -14368i, u_input.b)), global0[_wgslsmith_index_u32(u_input.c, 23u)], 0i), vec4<f32>(-2343f, 670f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1000f) * _wgslsmith_f_op_f32(abs(653f))), _wgslsmith_f_op_f32(f32(-1f) * -203f))));
    let var_1 = Struct_3(var_0.a, Struct_1(var_0.b.a, vec4<i32>(~u_input.b, ~min(-1i, 2147483647i), _wgslsmith_clamp_i32(1i, select(1i, u_input.b, var_0.a), var_0.b.c.x), global0[_wgslsmith_index_u32(u_input.d, 23u)]), vec4<i32>(global0[_wgslsmith_index_u32(~(u_input.a.x | u_input.c), 23u)], firstTrailingBit(~1i), global0[_wgslsmith_index_u32(u_input.d ^ ~u_input.d, 23u)], 35853i), var_0.b.d));
    var var_2 = var_0.a;
    let var_3 = func_5(_wgslsmith_f_op_f32(func_1(vec3<u32>(18151u, ~_wgslsmith_sub_u32(1u, u_input.c), u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a.xx, ~u_input.a.wz))));
    let var_4 = true;
    global1 = array<Struct_1, 20>();
    global1 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-877f - -1333f) * _wgslsmith_f_op_f32(-func_5(var_3.b.d.x).b.d.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1325f * var_3.b.d.x) * var_1.b.d.x) + var_1.b.d.x), _wgslsmith_f_op_f32(var_3.b.d.x - var_0.b.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -645f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.b.d.x, var_0.b.d.x, var_1.a))))), _wgslsmith_f_op_f32(min(var_3.b.d.x, -113f)), var_3.b.b.zwy);
}

