struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec2<f32>(340f, 862f), Struct_1(vec4<i32>(i32(-2147483648), 32043i, 40146i, i32(-2147483648)), vec3<i32>(31290i, 2147483647i, -490i), vec2<f32>(-1585f, -1398f))), Struct_2(vec2<f32>(1898f, 723f), Struct_1(vec4<i32>(1i, i32(-2147483648), -13166i, -1i), vec3<i32>(-15295i, 21093i, 1i), vec2<f32>(-1332f, -228f))), Struct_2(vec2<f32>(-899f, 138f), Struct_1(vec4<i32>(i32(-2147483648), -1i, 12801i, 29958i), vec3<i32>(0i, -1i, 12409i), vec2<f32>(-764f, 800f))), Struct_2(vec2<f32>(296f, 586f), Struct_1(vec4<i32>(2147483647i, 1i, 2147483647i, -30045i), vec3<i32>(32406i, -14176i, 2147483647i), vec2<f32>(-541f, 561f))), Struct_2(vec2<f32>(-387f, -1048f), Struct_1(vec4<i32>(-12826i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(16485i, 1i, -1i), vec2<f32>(-2255f, -1000f))), Struct_2(vec2<f32>(1846f, 300f), Struct_1(vec4<i32>(-35119i, 32883i, 0i, 2147483647i), vec3<i32>(-1i, i32(-2147483648), 1i), vec2<f32>(147f, 708f))), Struct_2(vec2<f32>(-430f, -1235f), Struct_1(vec4<i32>(i32(-2147483648), -40306i, -15634i, 2147483647i), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec2<f32>(-1000f, 1618f))), Struct_2(vec2<f32>(396f, -1479f), Struct_1(vec4<i32>(-1i, 24194i, 2147483647i, 1i), vec3<i32>(-22307i, -26394i, 41343i), vec2<f32>(405f, -3846f))), Struct_2(vec2<f32>(-437f, 1015f), Struct_1(vec4<i32>(35164i, i32(-2147483648), -24379i, 1i), vec3<i32>(-1i, -35016i, 0i), vec2<f32>(1021f, -996f))), Struct_2(vec2<f32>(1000f, 856f), Struct_1(vec4<i32>(0i, 0i, -1i, 27878i), vec3<i32>(-50017i, 2147483647i, -1i), vec2<f32>(-416f, -452f))), Struct_2(vec2<f32>(1312f, -163f), Struct_1(vec4<i32>(67173i, 2147483647i, 2147483647i, 14285i), vec3<i32>(-1i, -8088i, -18850i), vec2<f32>(-1028f, 640f))), Struct_2(vec2<f32>(-2722f, 339f), Struct_1(vec4<i32>(77186i, 34443i, -1i, 18508i), vec3<i32>(-16920i, 13272i, i32(-2147483648)), vec2<f32>(-2104f, -441f))), Struct_2(vec2<f32>(452f, -486f), Struct_1(vec4<i32>(-1i, 14687i, i32(-2147483648), 0i), vec3<i32>(2147483647i, -1212i, -1i), vec2<f32>(-1583f, 1705f))), Struct_2(vec2<f32>(-1438f, -1560f), Struct_1(vec4<i32>(1i, 22499i, 2147483647i, -19947i), vec3<i32>(1i, -25849i, 8517i), vec2<f32>(-2326f, 2159f))), Struct_2(vec2<f32>(-361f, 1632f), Struct_1(vec4<i32>(i32(-2147483648), 16347i, 2147483647i, -24745i), vec3<i32>(-40447i, -6364i, 59657i), vec2<f32>(-1000f, -113f))), Struct_2(vec2<f32>(256f, -310f), Struct_1(vec4<i32>(0i, -1735i, -3291i, 3345i), vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec2<f32>(-1013f, 1508f))), Struct_2(vec2<f32>(755f, 930f), Struct_1(vec4<i32>(-25571i, -959i, 20798i, 0i), vec3<i32>(-26981i, -1i, 12446i), vec2<f32>(-1852f, -894f))), Struct_2(vec2<f32>(1000f, 1086f), Struct_1(vec4<i32>(2147483647i, 0i, -42535i, i32(-2147483648)), vec3<i32>(-1i, 16601i, 11135i), vec2<f32>(-1387f, 1102f))), Struct_2(vec2<f32>(-135f, 1838f), Struct_1(vec4<i32>(61790i, 1i, 2147483647i, 32918i), vec3<i32>(46687i, 2147483647i, 2147483647i), vec2<f32>(1635f, -1418f))), Struct_2(vec2<f32>(1637f, -344f), Struct_1(vec4<i32>(0i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(37273i, i32(-2147483648), -1i), vec2<f32>(-1374f, 1000f))), Struct_2(vec2<f32>(-1249f, 1284f), Struct_1(vec4<i32>(1i, 42050i, i32(-2147483648), -1i), vec3<i32>(2147483647i, 1i, 0i), vec2<f32>(257f, -276f))), Struct_2(vec2<f32>(-1567f, -1019f), Struct_1(vec4<i32>(18137i, 19190i, 3880i, 1i), vec3<i32>(1i, -78027i, 2147483647i), vec2<f32>(622f, -330f))), Struct_2(vec2<f32>(-1305f, 862f), Struct_1(vec4<i32>(-48873i, i32(-2147483648), 32122i, 12082i), vec3<i32>(-13929i, 0i, -12906i), vec2<f32>(-1048f, -1508f))), Struct_2(vec2<f32>(-446f, 2173f), Struct_1(vec4<i32>(0i, -3619i, -7669i, -1i), vec3<i32>(-27773i, -65750i, -62427i), vec2<f32>(-225f, -241f))), Struct_2(vec2<f32>(1000f, 130f), Struct_1(vec4<i32>(-85223i, -51903i, -1i, 2147483647i), vec3<i32>(4145i, -27390i, i32(-2147483648)), vec2<f32>(204f, 178f))));

var<private> global1: bool = false;

var<private> global2: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(false, false));

var<private> global3: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = select(vec4<bool>(_wgslsmith_sub_u32(~u_input.a, u_input.a) <= (~4294967295u << (1u % 32u)), any(vec3<bool>(true, true, true)), false, u_input.a < u_input.a), vec4<bool>(false, true, select(any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false)), (1i >= u_input.c.x) && true, true), select(59710u <= (u_input.a & u_input.a), _wgslsmith_f_op_f32(arg_0.a.c.x - -493f) < _wgslsmith_f_op_f32(arg_0.a.c.x - arg_0.a.c.x), true)), vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), false, true, false));
    let var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~(~(~vec2<u32>(u_input.a, u_input.a)))) << ((vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 24335u)), ~vec2<u32>(27978u, u_input.a))) >> (_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 0u), ~vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 4294967295u) & min(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 1u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    var_0 = vec4<bool>(false, var_0.x, var_0.x, false);
    let var_2 = firstLeadingBit(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(89710u, 33065u, var_1.x, u_input.a), vec4<u32>(u_input.a, 9136u, 0u, 34647u)), _wgslsmith_mult_u32(u_input.a, 22346u)), ~u_input.a)) ^ max(var_1, var_1);
    let var_3 = Struct_4(Struct_1(arg_0.a.a, _wgslsmith_add_vec3_i32((u_input.c | vec3<i32>(1i, u_input.b.x, -1i)) | (u_input.c & vec3<i32>(u_input.c.x, -9358i, 2147483647i)), vec3<i32>(-u_input.b.x, 0i >> (var_2.x % 32u), ~u_input.c.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-198f, arg_0.a.c.x))), arg_0.a.c, vec2<bool>(true, false)))));
    return !select(!select(vec4<bool>(false, var_0.x, var_0.x, true), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, false), var_0.x), var_0.x), !select(!vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), false), !any(!vec4<bool>(false, var_0.x, false, true)));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<bool>) -> Struct_1 {
    global3 = arg_0 & all(select(!(!vec4<bool>(arg_0, true, false, true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, arg_2.x), false), true));
    global3 = all(select(select(select(select(vec4<bool>(true, arg_2.x, arg_2.x, false), vec4<bool>(true, false, true, true), arg_2.x), vec4<bool>(arg_0, arg_2.x, arg_2.x, true), any(vec3<bool>(arg_2.x, arg_0, false))), select(vec4<bool>(true, false, true, arg_2.x), func_3(Struct_4(Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -1i), vec3<i32>(-1546i, -70534i, u_input.b.x), arg_1.yx))), all(vec4<bool>(true, arg_0, arg_2.x, false))), func_3(Struct_4(Struct_1(vec4<i32>(20250i, -2147483647i, u_input.c.x, u_input.b.x), u_input.c, arg_1.yx)))), vec4<bool>(all(vec2<bool>(true, true)), arg_2.x & arg_0, (u_input.b.x << (u_input.a % 32u)) != ~u_input.b.x, all(vec3<bool>(arg_2.x, arg_2.x, arg_2.x)) | true), true));
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_1.xy - vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)))));
    var var_1 = min(vec3<u32>(~(~123684u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.a), vec3<u32>(31525u, 4294967295u, 0u))), firstLeadingBit(_wgslsmith_clamp_u32(52846u, u_input.a, u_input.a))) | ~(~(~vec3<u32>(u_input.a, u_input.a, 29798u))), vec3<u32>(_wgslsmith_mult_u32(13028u, ~4294967295u), 4294967295u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(12874u, u_input.a, u_input.a), vec3<u32>(37308u, 1u, u_input.a) << (vec3<u32>(u_input.a, 0u, u_input.a) % vec3<u32>(32u)))));
    global3 = true;
    return Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(min(vec4<i32>(-2147483647i, 51694i, 2147483647i, -2147483647i), vec4<i32>(30399i, 2147483647i, 42519i, -1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.c.x), vec4<i32>(16794i, u_input.c.x, -6046i, 51417i))) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(17328u, var_1.x, 0u, var_1.x), vec4<u32>(var_1.x, var_1.x, 4262u, u_input.a) >> (vec4<u32>(1u, 0u, 62189u, u_input.a) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, 1098u, var_1.x), vec4<u32>(u_input.a, u_input.a, 19128u, u_input.a))) % vec4<u32>(32u)), vec4<i32>(countOneBits(-2147483647i), 11086i, -(i32(-1i) * -27565i), 33208i), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, u_input.b.x, u_input.b.x, -9653i) >> (vec4<u32>(2990u, var_1.x, u_input.a, 1u) % vec4<u32>(32u)), vec4<i32>(u_input.c.x, u_input.c.x, 0i, -25260i))), min(~u_input.c, vec3<i32>(u_input.b.x, u_input.c.x, 61685i)), arg_1.xy);
}

fn func_1() -> Struct_5 {
    var var_0 = Struct_5(func_2(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-959f, _wgslsmith_f_op_f32(f32(-1f) * -350f), -762f)), vec2<bool>(false, true)), global2[_wgslsmith_index_u32(abs(35614u), 1u)]);
    var var_1 = Struct_4(var_0.a);
    return Struct_5(func_2(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.c.x, 1543f, 635f) * vec3<f32>(var_1.a.c.x, var_0.a.c.x, var_0.a.c.x))) * vec3<f32>(1f, 1f, 1f)), select(select(!global2[_wgslsmith_index_u32(u_input.a, 1u)], select(var_0.b, vec2<bool>(false, false), vec2<bool>(var_0.b.x, false)), vec2<bool>(true, false)), var_0.b, false)), vec2<bool>(var_0.b.x, true));
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: vec2<i32>, arg_3: Struct_4) -> vec3<f32> {
    global2 = array<vec2<bool>, 1>();
    let var_0 = _wgslsmith_sub_u32(~u_input.a, u_input.a >> (4294967295u % 32u));
    global2 = array<vec2<bool>, 1>();
    var var_1 = global0[_wgslsmith_index_u32(54679u, 25u)];
    var var_2 = _wgslsmith_div_f32(func_2(arg_1.b.x == !(!arg_1.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-847f, -544f, 221f) - vec3<f32>(arg_3.a.c.x, arg_1.a.c.x, 113f))), select(vec2<bool>(true, true), arg_1.b, vec2<bool>(true, false))).c.x, _wgslsmith_f_op_f32(-619f - 2149f));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(316f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -922f), _wgslsmith_f_op_f32(-var_1.a.x)))), 343f, var_1.b.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_4(-1i, func_1(), vec2<i32>(u_input.c.x | u_input.b.x, -u_input.b.x) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), Struct_4(func_1().a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1477f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * -808f))))), u_input.b, -727f);
}

