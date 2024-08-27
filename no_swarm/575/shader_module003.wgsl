struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(false, false, false, true, false, false, true, false, true, false, true, false, false, true, true, false);

var<private> global1: vec2<u32>;

var<private> global2: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(210f, -574f, -309f), vec3<f32>(350f, 800f, -417f), vec3<f32>(846f, -971f, 658f), vec3<f32>(1473f, 113f, -664f), vec3<f32>(-806f, 211f, -640f), vec3<f32>(133f, -391f, 137f), vec3<f32>(-1248f, 134f, -562f), vec3<f32>(-1274f, -698f, -590f), vec3<f32>(-1821f, 117f, -1348f), vec3<f32>(-1155f, 671f, -1765f), vec3<f32>(-438f, 343f, 147f), vec3<f32>(311f, 805f, 1683f), vec3<f32>(-462f, 1961f, -371f), vec3<f32>(-197f, 814f, -420f), vec3<f32>(1649f, 1044f, -660f), vec3<f32>(422f, 432f, -207f));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: u32, arg_3: vec4<bool>) -> vec4<i32> {
    var var_0 = ~(-1i);
    return vec4<i32>(~u_input.a.x, abs(u_input.d | 71922i), u_input.d, u_input.a.x);
}

fn func_2(arg_0: u32) -> vec2<u32> {
    global1 = vec2<u32>(arg_0, ~(u_input.c ^ ~1u));
    var var_0 = _wgslsmith_add_vec4_i32((vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, 41461i, u_input.d, u_input.d), vec4<i32>(u_input.d, -37661i, 0i, -1i), vec4<i32>(u_input.a.x, 9114i, 1i, -8436i))) << (select(~vec4<u32>(arg_0, global1.x, 4294967295u, u_input.c) | (vec4<u32>(39005u, global1.x, global1.x, 9541u) << (vec4<u32>(u_input.c, 0u, global1.x, arg_0) % vec4<u32>(32u))), abs(vec4<u32>(4294967295u, 0u, arg_0, 48814u)), vec4<bool>(!global0[_wgslsmith_index_u32(u_input.c, 16u)], true, !global0[_wgslsmith_index_u32(arg_0, 16u)], !global0[_wgslsmith_index_u32(global1.x, 16u)])) % vec4<u32>(32u)), -_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.d, -10713i, u_input.b), vec4<i32>(u_input.d, 0i, 1i, 1i)), select(vec4<i32>(u_input.a.x, u_input.d, 0i, -36572i), vec4<i32>(u_input.a.x, 2147483647i, u_input.b, 30380i), global0[_wgslsmith_index_u32(u_input.c, 16u)])), max(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 1i, -537i, u_input.a.x), vec4<i32>(-2147483647i, u_input.d, 62846i, u_input.d)), func_3(Struct_4(Struct_1(417f, vec3<u32>(1u, u_input.c, 27448u)), Struct_1(-1252f, vec3<u32>(1u, 2743u, 4041u)), vec4<f32>(1000f, -1762f, -1380f, -145f), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]), Struct_1(-404f, vec3<u32>(u_input.c, u_input.c, 0u))), Struct_1(-174f, vec3<u32>(4294967295u, 0u, u_input.c)), global1.x, vec4<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(global1.x, 16u)], true, global0[_wgslsmith_index_u32(global1.x, 16u)]))), firstTrailingBit(max(vec4<i32>(2147483647i, 597i, u_input.a.x, -28944i), vec4<i32>(2147483647i, 32125i, u_input.a.x, u_input.a.x)))));
    let var_1 = _wgslsmith_sub_u32(u_input.c, ~global1.x);
    let var_2 = u_input.b;
    global0 = array<bool, 16>();
    return firstTrailingBit(vec2<u32>(~15857u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c, u_input.c, global1.x, 4998u)), _wgslsmith_mod_vec4_u32(vec4<u32>(93673u, 87369u, 1u, u_input.c), vec4<u32>(var_1, 0u, global1.x, 1u))) << (_wgslsmith_sub_u32(~var_1, reverseBits(global1.x)) % 32u)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = array<bool, 16>();
    global1 = _wgslsmith_mod_vec2_u32(func_2(4294967295u), reverseBits(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, global1.x), vec2<u32>(24424u, 42246u), vec2<u32>(u_input.c, global1.x)))) << (vec2<u32>(~global1.x, u_input.c) % vec2<u32>(32u));
    let var_0 = abs(_wgslsmith_div_i32(min(1i, -2147483647i), u_input.d));
    return Struct_1(_wgslsmith_f_op_f32(-579f * _wgslsmith_f_op_f32(f32(-1f) * -496f)), ~_wgslsmith_div_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(1u, u_input.c, global1.x))), ~(~vec3<u32>(57738u, 4294967295u, u_input.c))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_4 {
    global2 = array<vec3<f32>, 16>();
    let var_0 = arg_1;
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(-1512f + arg_0.a), var_0.b.a), func_1(false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.e, _wgslsmith_f_op_f32(ceil(1499f)), arg_1.b.e, arg_2.e)), select(vec3<bool>(var_0.a, any(select(vec2<bool>(var_0.a, var_0.b.c.x), arg_1.c, vec2<bool>(global0[_wgslsmith_index_u32(arg_2.a.x, 16u)], arg_2.c.x))), arg_2.c.x && arg_1.a), arg_1.b.c.wzw, arg_1.b.c.xxw), arg_0);
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_4) -> Struct_1 {
    var var_0 = arg_2.c.xyx;
    var var_1 = Struct_4(arg_2.a, func_4(func_4(func_1(u_input.d != 23872i), Struct_5(true, Struct_3(vec3<u32>(57181u, arg_0, arg_2.e.b.x), vec4<u32>(49632u, arg_0, u_input.c, 7002u), vec4<bool>(true, global0[_wgslsmith_index_u32(28931u, 16u)], arg_2.d.x, global0[_wgslsmith_index_u32(global1.x, 16u)]), vec2<i32>(-31464i, -1i), arg_1), vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 16u)], arg_2.d.x), func_4(arg_2.b, Struct_5(false, Struct_3(vec3<u32>(arg_0, 4294967295u, 38487u), vec4<u32>(u_input.c, 20768u, global1.x, arg_2.e.b.x), vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(arg_2.b.b.x, 16u)], false), u_input.a, arg_2.c.x), arg_2.d.yx, vec2<u32>(66147u, 0u)), Struct_3(arg_2.e.b, vec4<u32>(arg_2.a.b.x, u_input.c, u_input.c, global1.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 16u)], true, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(48835u, 16u)]), u_input.a, -705f), arg_2.c.zxx).e.b.zy), Struct_3(_wgslsmith_sub_vec3_u32(arg_2.b.b, vec3<u32>(50285u, 4294967295u, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, u_input.c, 0u, 1u), vec4<u32>(7896u, arg_2.b.b.x, global1.x, u_input.c), vec4<u32>(7546u, 4294967295u, u_input.c, 25027u)), vec4<bool>(false, false, arg_2.d.x, global0[_wgslsmith_index_u32(u_input.c, 16u)]), vec2<i32>(u_input.a.x, 19321i), -1535f), arg_2.c.xxy).e, Struct_5(!(!arg_2.d.x), Struct_3(vec3<u32>(88977u, u_input.c, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 1u, 39317u, 46639u), vec4<u32>(u_input.c, global1.x, 47801u, 29612u)), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 16u)], true, arg_2.d.x, global0[_wgslsmith_index_u32(1u, 16u)]), vec4<bool>(arg_2.d.x, arg_2.d.x, global0[_wgslsmith_index_u32(13050u, 16u)], true), global0[_wgslsmith_index_u32(34093u, 16u)]), ~vec2<i32>(u_input.a.x, -1i), _wgslsmith_f_op_f32(round(-1160f))), !(!arg_2.d.yy), _wgslsmith_mod_vec2_u32(arg_2.b.b.yy, vec2<u32>(arg_0, arg_2.a.b.x) << (arg_2.e.b.zy % vec2<u32>(32u)))), Struct_3(~firstLeadingBit(vec3<u32>(u_input.c, u_input.c, arg_2.a.b.x)), ~min(vec4<u32>(97754u, global1.x, 4294967295u, 4294967295u), vec4<u32>(4294967295u, arg_0, 92241u, 24338u)), select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 16u)], true, global0[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(global1.x, 16u)], arg_2.d.x, arg_2.d.x), vec4<bool>(global0[_wgslsmith_index_u32(1u, 16u)], false, arg_2.d.x, global0[_wgslsmith_index_u32(54377u, 16u)])), select(vec4<bool>(false, true, arg_2.d.x, arg_2.d.x), vec4<bool>(arg_2.d.x, arg_2.d.x, false, global0[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 16u)], true, arg_2.d.x, arg_2.d.x)), vec4<bool>(arg_2.d.x, true, false, false)), ~u_input.a, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, var_0.x, 1072f)), global2[_wgslsmith_index_u32(~arg_2.b.b.x, 16u)]))).e, _wgslsmith_f_op_vec4_f32(-func_4(arg_2.a, Struct_5(false, Struct_3(arg_2.e.b, vec4<u32>(arg_0, u_input.c, global1.x, 38768u), vec4<bool>(global0[_wgslsmith_index_u32(25906u, 16u)], false, arg_2.d.x, true), vec2<i32>(-11470i, u_input.b), 879f), vec2<bool>(arg_2.d.x, arg_2.d.x), countOneBits(vec2<u32>(1u, arg_0))), Struct_3(~vec3<u32>(u_input.c, global1.x, u_input.c), vec4<u32>(1u, arg_0, 4294967295u, arg_2.a.b.x), select(vec4<bool>(false, arg_2.d.x, arg_2.d.x, arg_2.d.x), vec4<bool>(global0[_wgslsmith_index_u32(50890u, 16u)], false, arg_2.d.x, global0[_wgslsmith_index_u32(arg_0, 16u)]), false), vec2<i32>(-9257i, -2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -555f)), arg_2.c.zyz).c), !func_4(Struct_1(_wgslsmith_f_op_f32(-441f - var_0.x), vec3<u32>(arg_0, arg_2.e.b.x, global1.x) ^ vec3<u32>(0u, arg_2.a.b.x, u_input.c)), Struct_5(true, Struct_3(vec3<u32>(1u, arg_0, global1.x), vec4<u32>(33497u, 76101u, global1.x, u_input.c), vec4<bool>(arg_2.d.x, true, true, true), u_input.a, var_0.x), arg_2.d.xx, arg_2.a.b.zx), Struct_3(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 12067u, 1u), vec3<u32>(69379u, arg_0, global1.x)), ~vec4<u32>(1u, arg_2.a.b.x, 18692u, arg_2.a.b.x), vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]), u_input.a, -657f), vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(step(-236f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -3235f))).d, func_4(Struct_1(_wgslsmith_f_op_f32(arg_2.e.a - -278f), vec3<u32>(global1.x, 1u, 37407u)), Struct_5(11259i < u_input.b, Struct_3(firstTrailingBit(vec3<u32>(0u, arg_0, 57243u)), vec4<u32>(13160u, arg_2.a.b.x, arg_0, 4294967295u) & vec4<u32>(arg_2.a.b.x, global1.x, 59096u, 56333u), vec4<bool>(false, true, arg_2.d.x, true), u_input.a, _wgslsmith_f_op_f32(-875f - arg_1)), select(vec2<bool>(false, false), arg_2.d.xy, false), _wgslsmith_mod_vec2_u32(func_1(global0[_wgslsmith_index_u32(0u, 16u)]).b.yz, vec2<u32>(82999u, 14559u))), Struct_3(vec3<u32>(27966u, abs(68480u), ~4294967295u), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 13774u, 62010u), vec4<u32>(61254u, 1u, arg_2.a.b.x, arg_0), vec4<u32>(arg_2.a.b.x, u_input.c, arg_2.b.b.x, global1.x))), !(!vec4<bool>(false, arg_2.d.x, false, global0[_wgslsmith_index_u32(arg_2.e.b.x, 16u)])), _wgslsmith_mult_vec2_i32(~u_input.a, u_input.a), -1074f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2172f, arg_1, var_0.x) + arg_2.c.wxy)))).b);
    global1 = (_wgslsmith_clamp_vec2_u32(arg_2.a.b.zy, select(~var_1.a.b.xz, ~var_1.a.b.yx, u_input.b < -21874i), ~vec2<u32>(arg_2.e.b.x, 90341u)) >> (_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_2.a.b.xy, func_2(0u), ~var_1.a.b.yz), _wgslsmith_sub_vec2_u32(~vec2<u32>(12171u, 1u), ~vec2<u32>(arg_2.a.b.x, var_1.e.b.x))) % vec2<u32>(32u))) | vec2<u32>(0u, arg_0);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, arg_1, var_0.x, var_1.e.a) + vec4<f32>(633f, -730f, var_1.e.a, arg_2.b.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -187f, 259f, var_1.b.a) * vec4<f32>(1646f, 951f, var_0.x, arg_1)), any(vec2<bool>(global0[_wgslsmith_index_u32(var_1.e.b.x, 16u)], true))))) - vec4<f32>(arg_2.a.a, _wgslsmith_div_f32(-1095f, _wgslsmith_f_op_f32(abs(var_0.x))), arg_1, 1863f)) - _wgslsmith_f_op_vec4_f32(-var_1.c));
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = func_5(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -331f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -121f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(712f))))), func_4(func_1(global0[_wgslsmith_index_u32(114u, 16u)]), Struct_5(global0[_wgslsmith_index_u32(u_input.c, 16u)], Struct_3(select(vec3<u32>(global1.x, 0u, u_input.c), vec3<u32>(1u, global1.x, 18643u), vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], false, false)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global1.x, global1.x, 4294967295u), vec4<u32>(4294967295u, 71193u, u_input.c, 0u)), select(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(0u, 16u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 16u)], global0[_wgslsmith_index_u32(u_input.c, 16u)], false), global0[_wgslsmith_index_u32(u_input.c, 16u)]), firstTrailingBit(u_input.a), _wgslsmith_f_op_f32(step(-706f, -1000f))), vec2<bool>(global0[_wgslsmith_index_u32(var_0 | var_0, 16u)], true), func_1(false).b.zx), Struct_3(~_wgslsmith_div_vec3_u32(vec3<u32>(107732u, 4294967295u, 110951u), vec3<u32>(62965u, 1u, 15123u)), vec4<u32>(19228u, var_0 ^ u_input.c, ~var_0, func_1(global0[_wgslsmith_index_u32(global1.x, 16u)]).b.x), select(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(23421u, 16u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0, 16u)], true, true), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 16u)], true, global0[_wgslsmith_index_u32(48647u, 16u)], global0[_wgslsmith_index_u32(global1.x, 16u)])), _wgslsmith_mult_vec2_i32(u_input.a, u_input.a), 797f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 0u), 16u)], vec3<f32>(-1842f, 1000f, -1063f))) * global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 27391u), vec2<u32>(u_input.c, 16070u)), 16u)])));
    var var_2 = !func_4(Struct_1(var_1.a, ~_wgslsmith_add_vec3_u32(var_1.b, vec3<u32>(var_0, 4294967295u, 76333u))), Struct_5(true, Struct_3(vec3<u32>(0u, 23640u, 14085u), vec4<u32>(global1.x, 27062u, 4294967295u, global1.x), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], false, true, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 16u)], true, global0[_wgslsmith_index_u32(u_input.c, 16u)], global0[_wgslsmith_index_u32(u_input.c, 16u)]), global0[_wgslsmith_index_u32(var_1.b.x, 16u)]), min(u_input.a, vec2<i32>(u_input.b, 34086i)), -298f), !(!vec2<bool>(global0[_wgslsmith_index_u32(28824u, 16u)], false)), var_1.b.yz), Struct_3(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(var_1.b, var_1.b), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0), var_1.b.xx)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, global1.x, u_input.c, 1u), vec4<u32>(0u, 4294967295u, 48430u, 66245u)), firstLeadingBit(vec4<u32>(u_input.c, 4463u, u_input.c, global1.x))), select(vec4<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 16u)], false, global0[_wgslsmith_index_u32(u_input.c, 16u)], false), !vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 16u)], false, global0[_wgslsmith_index_u32(944u, 16u)], true), vec4<bool>(false, true, false, true)), u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.a)), 1804f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global2[_wgslsmith_index_u32(4294967295u, 16u)]))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(358f, var_1.a, var_1.a)))))).d;
    let var_3 = var_1;
    var var_4 = true;
    let var_5 = !vec2<bool>(!var_2.x, !(_wgslsmith_f_op_f32(step(-369f, -1628f)) >= _wgslsmith_f_op_f32(step(var_1.a, 145f))));
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    global1 = vec2<u32>(var_1.b.x, 11273u);
    let x = u_input.a;
    s_output = StorageBuffer(~(-u_input.a));
}

