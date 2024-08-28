struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, 2147483647i, -32251i);

var<private> global1: vec4<f32>;

var<private> global2: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(1u, 53164u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 10576u), vec2<u32>(0u, 37880u), vec2<u32>(0u, 1u), vec2<u32>(0u, 1u), vec2<u32>(1u, 3581u), vec2<u32>(4294967295u, 10345u), vec2<u32>(4294967295u, 0u), vec2<u32>(8616u, 57849u), vec2<u32>(1u, 80346u), vec2<u32>(8822u, 0u), vec2<u32>(4294967295u, 33101u));

var<private> global3: array<Struct_3, 29>;

var<private> global4: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(-1245f, 1351f, 471f, -401f), vec4<f32>(778f, -678f, 1201f, 1170f), vec4<f32>(1086f, -869f, 203f, 1000f), vec4<f32>(-334f, 1308f, -184f, -370f), vec4<f32>(1959f, -1000f, -340f, -325f), vec4<f32>(983f, 169f, 1214f, 1175f), vec4<f32>(-295f, 1071f, 292f, -981f), vec4<f32>(-1914f, 836f, -926f, 2513f), vec4<f32>(178f, -1426f, 527f, 775f), vec4<f32>(-572f, -478f, -435f, 1402f), vec4<f32>(-432f, -256f, 1000f, -188f), vec4<f32>(-1107f, -830f, -555f, -1144f), vec4<f32>(-393f, -412f, 1890f, 1000f), vec4<f32>(240f, -909f, 691f, 140f), vec4<f32>(-565f, -317f, 386f, -1761f), vec4<f32>(1000f, -398f, 539f, -951f), vec4<f32>(-134f, 395f, -466f, 364f));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    var var_0 = 12158u;
    global3 = array<Struct_3, 29>();
    var var_1 = true;
    let var_2 = Struct_1(global1.x, 4294967295u, ~(i32(-1i) * -u_input.b.x), vec4<bool>(false, true, false, true));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(firstLeadingBit(var_2.b), 17u)] - global4[_wgslsmith_index_u32(min(1u << (~var_2.b % 32u), _wgslsmith_clamp_u32(var_2.b, 771u, min(var_2.b, 4294967295u))), 17u)]), var_2, (var_2.c >> (var_2.b % 32u)) == -1i, ~_wgslsmith_mod_i32(-6520i, -2147483647i), Struct_1(-315f, firstLeadingBit(max(var_2.b, 4294967295u)), -1i, vec4<bool>(true, all(vec4<bool>(false, true, var_2.d.x, false)), false, var_2.d.x)));
    return _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(max(global1.x, 1101f)), global1.x)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: bool) -> f32 {
    var var_0 = 1u | (~4897u >> (~arg_0.a.e.b % 32u));
    let var_1 = !arg_0.a.b.d;
    let var_2 = Struct_1(-1057f, ~1u, abs(-42819i), vec4<bool>(true, (min(1u, arg_0.a.b.b) != arg_0.a.b.b) || all(!vec3<bool>(arg_3, var_1.x, false)), false, arg_3));
    let var_3 = Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.a.e.b, arg_0.a.b.b, 10005u) | 20141u, 13u)], max(global2[_wgslsmith_index_u32(~countOneBits(49068u), 13u)], ~_wgslsmith_add_vec2_u32(global2[_wgslsmith_index_u32(54315u, 13u)], vec2<u32>(12214u, arg_0.a.b.b)))), 17u)], Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -808f) + -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(444f + 519f)))), ~abs(arg_0.a.e.b), arg_0.a.e.c, !vec4<bool>(!arg_0.a.e.d.x, any(vec3<bool>(false, arg_0.a.c, false)), 26112u != var_2.b, any(vec3<bool>(false, true, true)))), arg_3, i32(-1i) * -4220i, Struct_1(_wgslsmith_f_op_f32(var_2.a + 720f), ~79374u | _wgslsmith_clamp_u32(arg_0.a.b.b, 0u, arg_0.a.b.b), -u_input.b.x, select(vec4<bool>(true, all(vec2<bool>(arg_3, var_2.d.x)), true, !var_2.d.x), !vec4<bool>(arg_3, var_1.x, var_1.x, var_1.x), !(arg_0.a.e.c == u_input.a))));
    global4 = array<vec4<f32>, 17>();
    return arg_0.a.a.x;
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_2 {
    let var_0 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(116f)))))), global1.x);
    global2 = array<vec2<u32>, 13>();
    var var_1 = Struct_1(946f, abs(max(1u, arg_1)), -_wgslsmith_sub_i32(~(-99847i), (u_input.c >> (0u % 32u)) & -1i), vec4<bool>(arg_0, !(arg_0 | false), arg_0, !any(!vec3<bool>(arg_0, arg_0, false))));
    global0 = firstTrailingBit(_wgslsmith_div_vec3_i32(-vec3<i32>(global0.x, u_input.b.x, -4834i) & _wgslsmith_sub_vec3_i32(~vec3<i32>(1i, -1i, global0.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_1.c, var_1.c), vec3<i32>(global0.x, 2147483647i, global0.x), vec3<i32>(var_1.c, u_input.a, var_1.c))), ~max(vec3<i32>(69295i, 0i, 2147483647i), vec3<i32>(1i, 36307i, u_input.a)) << ((vec3<u32>(var_1.b, 1u, arg_1) | _wgslsmith_div_vec3_u32(vec3<u32>(69746u, 1u, arg_1), vec3<u32>(var_1.b, arg_1, 31441u))) % vec3<u32>(32u))));
    let var_2 = Struct_1(-1000f, ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(~var_1.b, var_1.b), 0u), _wgslsmith_sub_i32(0i, -1i), !var_1.d);
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(global4[_wgslsmith_index_u32(var_2.b, 17u)], global4[_wgslsmith_index_u32(49288u, 17u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(872f, -1011f, 743f, global1.x) * vec4<f32>(-218f, var_2.a, -187f, var_0.x)), true))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-155f, var_2.a, 660f, _wgslsmith_f_op_f32(var_1.a * var_0.x)), vec4<f32>(-1038f, -952f, _wgslsmith_f_op_f32(f32(-1f) * -499f), _wgslsmith_f_op_f32(var_2.a - 1275f))))), Struct_1(_wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(global4[_wgslsmith_index_u32(2509u, 17u)], var_2, arg_0, var_2.c, var_2)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3()), vec2<f32>(var_2.a, -1106f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, -364f))) * _wgslsmith_f_op_vec2_f32(global1.ww - vec2<f32>(var_2.a, 1855f))), true)), _wgslsmith_dot_vec2_u32(select(global2[_wgslsmith_index_u32(46842u, 13u)] >> (vec2<u32>(1u, arg_1) % vec2<u32>(32u)), vec2<u32>(0u, arg_1), true), select(vec2<u32>(1u, 0u) | global2[_wgslsmith_index_u32(var_1.b, 13u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_1.b), vec3<u32>(var_2.b, var_2.b, var_1.b)), 13u)], var_1.d.ww)), -global0.x, select(vec4<bool>(false, arg_0, false, all(var_1.d.xz)), vec4<bool>(false, true, select(true, true, arg_0), !var_2.d.x), var_2.d)), any(vec4<bool>(var_1.b <= var_2.b, true, !(!var_2.d.x), false)), u_input.a, var_2);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    global2 = array<vec2<u32>, 13>();
    global0 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(~(vec3<i32>(u_input.a, arg_0.x, -2147483647i) << (vec3<u32>(35593u, arg_3.b, 35552u) % vec3<u32>(32u))) ^ vec3<i32>(arg_2.e.c, u_input.b.x, _wgslsmith_mod_i32(-7720i, arg_3.c)), ~(-vec3<i32>(u_input.c, arg_3.c, -1i) & vec3<i32>(-2147483647i, -2147483647i, arg_1.a.d))), ~max(-_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.a.e.c, -2147483647i, u_input.c), vec3<i32>(0i, 14762i, 23827i)), vec3<i32>(global0.x, global0.x, ~(-21606i))));
    let var_0 = true;
    var var_1 = all(!vec3<bool>(!arg_1.a.e.d.x, true, arg_3.d.x));
    global2 = array<vec2<u32>, 13>();
    return func_2(true, 4294967295u & arg_1.a.b.b);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    let var_0 = arg_0.zx;
    let var_1 = global1.yx;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(-global1.x), -511f) - vec4<f32>(_wgslsmith_f_op_f32(-102f * var_1.x), _wgslsmith_f_op_f32(-670f + 1000f), _wgslsmith_f_op_f32(global1.x * -474f), 996f))), arg_1.b, false, min(-1i, _wgslsmith_clamp_i32(global0.x, global0.x, ~u_input.b.x)) | ~(-select(-27619i, -28264i, arg_1.e.d.x)), func_2(false || !any(arg_1.e.d), ~4294967295u).e);
    global0 = vec3<i32>(global0.x >> (firstTrailingBit(func_1(u_input.b, Struct_3(Struct_2(var_2.a, Struct_1(arg_2, arg_0.x, global0.x, vec4<bool>(false, var_2.e.d.x, true, var_2.b.d.x)), false, 0i, Struct_1(-327f, arg_1.e.b, global0.x, vec4<bool>(true, var_2.b.d.x, false, var_2.b.d.x)))), arg_1, Struct_1(1074f, 0u, global0.x, vec4<bool>(var_2.b.d.x, true, true, arg_1.c))).e.b ^ 1u) % 32u), u_input.c, -14181i);
    let var_3 = _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(min(~13379u, ~1u), arg_1.b.b, var_2.e.b >> (109764u % 32u)), min(select(vec3<u32>(4294967295u, var_2.b.b, var_0.x) << (arg_0 % vec3<u32>(32u)), arg_0, func_2(var_2.c, arg_1.b.b).b.d.ywy), ~firstLeadingBit(arg_0)), vec3<u32>(var_0.x, _wgslsmith_div_u32(var_0.x, 3383u), ~(~var_2.e.b))), vec3<u32>(func_1(_wgslsmith_sub_vec2_i32(vec2<i32>(42307i, global0.x), vec2<i32>(global0.x, 23053i) & vec2<i32>(1i, global0.x)), Struct_3(func_1(u_input.b, Struct_3(arg_1), Struct_2(vec4<f32>(801f, arg_1.b.a, arg_1.a.x, -340f), var_2.e, false, 1i, var_2.b), Struct_1(-729f, 1u, arg_1.e.c, vec4<bool>(false, true, false, arg_1.c)))), arg_1, func_1(select(u_input.b, u_input.b, vec2<bool>(var_2.e.d.x, arg_1.b.d.x)), Struct_3(Struct_2(global4[_wgslsmith_index_u32(var_2.e.b, 17u)], var_2.e, var_2.e.d.x, arg_1.d, Struct_1(1341f, var_0.x, -26618i, arg_1.b.d))), func_1(vec2<i32>(-1i, -43205i), global3[_wgslsmith_index_u32(arg_1.b.b, 29u)], Struct_2(var_2.a, var_2.b, true, arg_1.d, var_2.e), Struct_1(arg_2, 4294967295u, global0.x, vec4<bool>(false, false, var_2.c, true))), Struct_1(global1.x, 1u, u_input.c, vec4<bool>(false, false, true, false))).b).b.b, ~arg_0.x, _wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(var_0.x >> (0u % 32u), var_0.x), ~arg_1.b.b | 3548u)));
    return Struct_2(arg_1.a, func_1(vec2<i32>(abs(reverseBits(57706i)), ~(i32(-1i) * -1i)), Struct_3(arg_1), Struct_2(_wgslsmith_f_op_vec4_f32(min(global4[_wgslsmith_index_u32(~arg_1.b.b, 17u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, 179f, 1540f, -863f) - arg_1.a))), func_2(var_2.c, var_0.x | var_2.b.b).e, true, _wgslsmith_mult_i32(0i, -18555i), Struct_1(-814f, abs(1u), var_2.b.c, func_1(global0.xy, global3[_wgslsmith_index_u32(4294967295u, 29u)], arg_1, Struct_1(arg_1.b.a, 40077u, u_input.a, vec4<bool>(false, var_2.b.d.x, arg_1.c, var_2.b.d.x))).b.d)), func_2(!(arg_1.e.d.x && false), 0u).b).e, arg_1.e.d.x, -func_1(~firstTrailingBit(global0.zz), Struct_3(func_1(vec2<i32>(0i, global0.x), global3[_wgslsmith_index_u32(var_0.x, 29u)], arg_1, Struct_1(var_1.x, 2395u, var_2.b.c, vec4<bool>(var_2.b.d.x, arg_1.b.d.x, true, true)))), Struct_2(_wgslsmith_f_op_vec4_f32(var_2.a + vec4<f32>(arg_2, -228f, 111f, -865f)), Struct_1(1340f, 67324u, global0.x, vec4<bool>(true, true, var_2.e.d.x, var_2.b.d.x)), true, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -3379i, global0.x), vec3<i32>(-2147483647i, global0.x, 1i)), Struct_1(arg_2, arg_0.x, u_input.b.x, arg_1.e.d)), func_2(true, 1u).e).d, Struct_1(-444f, arg_1.e.b, select(~_wgslsmith_clamp_i32(var_2.d, u_input.c, var_2.d), 50014i, !(var_2.e.a != -929f)), var_2.e.d));
}

fn func_6(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> vec4<f32> {
    return vec4<f32>(474f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-306f - 226f))), -1199f)), 1000f, 397f);
}

fn func_7(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: bool) -> Struct_1 {
    var var_0 = global1.x;
    var var_1 = false;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_div_f32(global1.x, arg_0.x)) - 1048f));
    global3 = array<Struct_3, 29>();
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-256f, _wgslsmith_f_op_f32(1441f - -817f), global1.x, _wgslsmith_f_op_f32(796f - -534f)) + global4[_wgslsmith_index_u32(1u, 17u)]), Struct_1(global1.x, 1u, _wgslsmith_sub_i32(u_input.b.x << (14070u % 32u), i32(-1i) * -1i), !func_5(vec3<u32>(1u, 1u, 1u), Struct_2(global4[_wgslsmith_index_u32(36092u, 17u)], Struct_1(652f, 0u, 0i, vec4<bool>(false, false, false, false)), true, arg_1.x, Struct_1(1317f, 0u, -2147483647i, vec4<bool>(true, false, arg_2, true))), global1.x).e.d), true, _wgslsmith_mod_i32(u_input.b.x, ~(-2147483647i)), func_1(_wgslsmith_mult_vec2_i32(global0.xy, -vec2<i32>(u_input.c, 37879i)), Struct_3(func_5(vec3<u32>(6231u, 4294967295u, 1u), Struct_2(vec4<f32>(global1.x, -655f, -1000f, -979f), Struct_1(arg_0.x, 5099u, 1i, vec4<bool>(arg_2, arg_2, true, arg_2)), arg_2, arg_1.x, Struct_1(arg_0.x, 4294967295u, 12620i, vec4<bool>(arg_2, true, true, arg_2))), global1.x)), func_5(select(vec3<u32>(31054u, 0u, 71362u), vec3<u32>(32068u, 47896u, 4294967295u), false), Struct_2(arg_0, Struct_1(global1.x, 32799u, 2147483647i, vec4<bool>(false, arg_2, arg_2, arg_2)), true, -6547i, Struct_1(arg_0.x, 0u, 81388i, vec4<bool>(arg_2, arg_2, true, false))), 1256f), func_5(vec3<u32>(1u, 1u, 1u), Struct_2(vec4<f32>(1350f, arg_0.x, 495f, -2364f), Struct_1(-1041f, 4294967295u, global0.x, vec4<bool>(true, arg_2, true, arg_2)), false, u_input.a, Struct_1(global1.x, 1u, 0i, vec4<bool>(true, arg_2, arg_2, arg_2))), func_2(arg_2, 17817u).a.x).b).b));
    return func_5(vec3<u32>(var_2.a.b.b ^ var_2.a.e.b, ~0u, var_2.a.b.b) | ~_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(17468u, var_2.a.e.b, 1918u)), firstLeadingBit(vec3<u32>(var_2.a.b.b, var_2.a.e.b, var_2.a.b.b)), select(vec3<u32>(var_2.a.b.b, 34755u, 96575u), vec3<u32>(21840u, 7518u, 59644u), arg_2)), var_2.a, _wgslsmith_f_op_f32(trunc(327f))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<f32>, 17>();
    let var_0 = func_7(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_6(!any(vec4<bool>(false, true, false, true)), max(u_input.c, countOneBits(66005i)), func_5(abs(vec3<u32>(108104u, 13581u, 4294967295u)), func_1(vec2<i32>(23431i, global0.x), Struct_3(Struct_2(global4[_wgslsmith_index_u32(79902u, 17u)], Struct_1(106f, 4294967295u, global0.x, vec4<bool>(false, true, true, true)), true, 2147483647i, Struct_1(global1.x, 6694u, 1i, vec4<bool>(false, false, false, true)))), Struct_2(global4[_wgslsmith_index_u32(18870u, 17u)], Struct_1(global1.x, 92086u, -47154i, vec4<bool>(true, false, false, true)), true, u_input.a, Struct_1(-1000f, 90979u, global0.x, vec4<bool>(true, true, true, true))), Struct_1(global1.x, 1u, global0.x, vec4<bool>(true, true, false, false))), 126f)))), u_input.b, false);
    var var_1 = Struct_3(func_1(-(vec2<i32>(13671i, global0.x) >> (global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(8203u, var_0.b), 13u)] % vec2<u32>(32u))), Struct_3(func_2(true & var_0.d.x, min(var_0.b, 1u))), func_5(vec3<u32>(select(0u, 0u, var_0.d.x), _wgslsmith_mult_u32(1u, var_0.b), var_0.b), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, global1.x, var_0.a, var_0.a) * vec4<f32>(global1.x, var_0.a, var_0.a, 217f)), Struct_1(-1835f, var_0.b, 31267i, var_0.d), var_0.d.x, countOneBits(var_0.c), var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, -1051f)))), var_0));
    global0 = _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(~var_0.c, -2147483647i, ~2147483647i) | _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, var_0.c) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), min(vec3<i32>(-45745i, -6291i, u_input.c), vec3<i32>(-11087i, var_0.c, var_0.c)))), vec3<i32>(51629i, -12306i, _wgslsmith_div_i32(-u_input.a, -(~(-7030i)))));
    var var_2 = func_5(~vec3<u32>((var_1.a.b.b | var_0.b) | 4294967295u, var_1.a.e.b & firstLeadingBit(var_1.a.b.b), var_1.a.b.b), Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a.a), _wgslsmith_f_op_vec4_f32(-var_1.a.a)), var_0, (!var_0.d.x & !var_1.a.e.d.x) || false, var_0.c, var_0), 614f).b.d;
    let var_3 = _wgslsmith_f_op_f32(-var_0.a);
    let var_4 = global1.x;
    global2 = array<vec2<u32>, 13>();
    var var_5 = _wgslsmith_f_op_vec2_f32(vec2<f32>(func_5(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.a.b.b, 9668u, var_1.a.b.b), vec3<u32>(var_0.b, var_1.a.e.b, var_0.b))), func_1(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.a.d, -3150i), u_input.b), Struct_3(Struct_2(var_1.a.a, var_1.a.e, var_1.a.b.d.x, global0.x, Struct_1(466f, 27718u, u_input.b.x, var_1.a.b.d))), var_1.a, Struct_1(361f, var_1.a.b.b, 0i, vec4<bool>(var_1.a.e.d.x, var_0.d.x, true, false))), _wgslsmith_f_op_f32(1f - global1.x)).e.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a)) - var_0.a), var_0.a)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-590f, var_1.a.a.x) + var_1.a.a.zz))), vec2<f32>(var_0.a, -137f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~_wgslsmith_add_i32(min(global0.x, u_input.a), -var_0.c), -countOneBits(-62151i), -1i), var_1.a.b.b);
}

