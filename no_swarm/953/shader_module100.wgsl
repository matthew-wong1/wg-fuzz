struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: vec3<u32> = vec3<u32>(0u, 1u, 0u);

var<private> global3: f32 = 198f;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<f32> {
    let var_0 = max(_wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(-2147483647i), -u_input.b.x), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b, u_input.a.zz), vec2<i32>(-2147483647i, u_input.b.x), abs(vec2<i32>(19657i, u_input.a.x)))), min(u_input.b.x, -28727i) | (_wgslsmith_sub_i32(global0.x, 1i) & -global0.x)) | _wgslsmith_div_i32(global0.x, ~_wgslsmith_add_i32(1i, global0.x));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1088f, -1054f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(253f, 1447f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1397f + -965f) * -1000f)) + 2064f));
    global2 = vec3<u32>(~(90967u & ~global2.x), ~(~50742u), abs(global2.x));
    var var_2 = 71137i;
    let var_3 = vec3<u32>(37604u, _wgslsmith_div_u32(~global2.x, reverseBits(~(global2.x | global2.x))), global2.x);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) + var_1.x) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), 836f))), 558f, var_1.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(992f, var_1.x, var_1.x) + vec3<f32>(1387f, var_1.x, var_1.x)))))));
}

fn func_2() -> vec3<f32> {
    global0 = vec2<i32>(-18693i, reverseBits(-min(~1i, -1i)));
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, ~(-1i) & global0.x, _wgslsmith_sub_i32(-14693i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, global0.x, -10159i), vec4<i32>(global0.x, global0.x, -46808i, -65373i))), -_wgslsmith_mult_i32(u_input.b.x, u_input.a.x)) << ((vec4<u32>(1u >> (global2.x % 32u), ~global2.x, global2.x, global2.x) ^ vec4<u32>(~global2.x, global2.x, _wgslsmith_div_u32(4294967295u, global2.x), ~global2.x)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(-(vec4<i32>(u_input.b.x, global0.x, u_input.a.x, global0.x) >> (vec4<u32>(4294967295u, global2.x, 1u, 48549u) % vec4<u32>(32u))) >> (vec4<u32>(~global2.x, firstTrailingBit(0u), ~0u, global2.x) % vec4<u32>(32u)), -abs(~vec4<i32>(22099i, global0.x, -2147483647i, 2147483647i))));
    global0 = var_0.yz;
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, countOneBits(_wgslsmith_sub_i32(-1i, u_input.b.x))) ^ var_0.wx, vec2<i32>(~var_0.x, _wgslsmith_mod_i32(u_input.a.x, var_0.x)));
    var var_2 = _wgslsmith_sub_i32(min(global0.x, -1i), firstLeadingBit(~countOneBits(~2147483647i)));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-782f, -1055f, !global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-522f * 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -658f)))) - _wgslsmith_f_op_vec3_f32(func_3()));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32) -> Struct_1 {
    var var_0 = select(vec4<u32>(~arg_1.d.x, ~8369u << (_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_1.d.x, 4294967295u), global2.x) % 32u), arg_1.d.x, 26818u), _wgslsmith_div_vec4_u32(~(~select(vec4<u32>(arg_0.d.d, global2.x, arg_0.a.d, 0u), vec4<u32>(4985u, 4294967295u, 24439u, 38318u), true)), vec4<u32>(1u, _wgslsmith_div_u32(61470u, 19360u), arg_1.b.d.d, global2.x) << (select(vec4<u32>(4294967295u, 38644u, 1u, arg_0.a.d), vec4<u32>(1u, 50687u, 43771u, arg_1.b.a.d), true) % vec4<u32>(32u))), select(!vec4<bool>(arg_1.c.c.x, !arg_0.d.c.x, true, select(arg_0.d.c.x, false, true)), !(!select(vec4<bool>(arg_1.c.c.x, true, arg_1.c.c.x, arg_1.c.c.x), vec4<bool>(false, false, true, arg_1.c.c.x), vec4<bool>(true, false, arg_0.a.c.x, false))), global1.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1117f), 1f) - _wgslsmith_f_op_vec2_f32(arg_0.b.zz - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.b.a.b.x, arg_1.b.b.x))) - _wgslsmith_f_op_vec2_f32(arg_0.b.zy - arg_1.c.b.xy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.e.x, -1070f))))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(select(arg_0.d.e.x, _wgslsmith_f_op_f32(f32(-1f) * -976f), !all(vec4<bool>(arg_1.b.a.c.x, true, global1.x, true)))), arg_0, Struct_1(arg_0.a.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-128f, arg_2)), arg_1.a, 142f), vec3<bool>(!(60194u <= var_0.x), all(!vec4<bool>(false, true, false, global1.x)), false), select(max(0u, _wgslsmith_div_u32(arg_0.a.d, 0u)), arg_1.b.d.d, !(!arg_1.b.d.c.x)), vec3<f32>(-1930f, arg_0.d.b.x, _wgslsmith_f_op_vec3_f32(func_3()).x)), var_0.xyw);
    var var_3 = true;
    var var_4 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(34001u, arg_0.a.d, ~(~arg_1.d.x)), _wgslsmith_clamp_vec3_u32(reverseBits(~vec3<u32>(var_2.d.x, 271u, var_0.x)), vec3<u32>(firstTrailingBit(1u), select(global2.x, 28106u, global1.x), firstLeadingBit(var_0.x)), max(vec3<u32>(59627u, 1965u, var_2.c.d), var_2.d) >> (~var_0.xxw % vec3<u32>(32u)))), vec3<u32>(var_0.x, _wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(~arg_1.c.d, var_0.x, _wgslsmith_add_u32(4294967295u, arg_0.a.d))), abs(1u)));
    return arg_1.c;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    global1 = !(!(!arg_2.c.c));
    var var_0 = vec4<i32>(arg_0.d.a & -(~u_input.a.x), global0.x, -select(33544i, arg_2.b.d.a >> (1u % 32u), arg_0.a.c.x), -(~49021i));
    var var_1 = arg_2.b;
    let var_2 = arg_2;
    let var_3 = var_2.c.c.x;
    return Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(243f, var_2.b.a.e.x), _wgslsmith_f_op_f32(var_1.d.e.x * var_2.a))) + func_4(arg_2.b, arg_2, arg_2.c.b.x).b.x))), Struct_2(Struct_1(arg_2.b.d.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(arg_0.d.e)))), select(var_2.b.d.c, var_1.d.c, any(vec3<bool>(true, false, false))), reverseBits(abs(arg_2.c.d)), vec3<f32>(-990f, _wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_div_f32(-207f, 1750f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a.b - var_2.c.b) * arg_2.c.b), vec3<f32>(_wgslsmith_f_op_f32(-1116f * var_1.d.e.x), _wgslsmith_f_op_f32(-var_1.d.b.x), _wgslsmith_f_op_f32(var_2.a - -189f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.b.x, 766f, var_1.c.x))), func_4(Struct_2(func_4(Struct_2(var_2.b.d, vec3<f32>(259f, arg_0.c.x, -843f), var_2.c.b, var_1.d), Struct_3(-2429f, Struct_2(var_2.c, vec3<f32>(arg_0.b.x, 969f, var_2.b.d.b.x), vec3<f32>(-373f, 714f, var_2.c.b.x), Struct_1(0i, arg_2.c.e, arg_0.a.c, var_2.b.d.d, vec3<f32>(764f, arg_2.a, -1257f))), Struct_1(var_0.x, vec3<f32>(arg_2.b.b.x, var_2.c.b.x, 675f), vec3<bool>(var_2.c.c.x, var_3, var_3), arg_2.b.a.d, var_1.d.b), vec3<u32>(var_1.a.d, arg_2.d.x, 4294967295u)), -162f), _wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1220f, arg_2.c.e.x, var_2.b.c.x)), Struct_1(1i, var_1.b, vec3<bool>(false, arg_1, global1.x), 31249u, vec3<f32>(-1091f, arg_2.c.b.x, var_1.b.x))), arg_2, _wgslsmith_f_op_vec3_f32(func_2()).x)), Struct_1(_wgslsmith_dot_vec3_i32(var_0.yyy, firstTrailingBit(var_0.wxz)) >> (~arg_2.c.d % 32u), var_2.c.b, vec3<bool>(func_4(Struct_2(var_1.a, var_2.b.b, vec3<f32>(arg_2.c.b.x, -266f, 1562f), arg_2.b.a), Struct_3(-401f, arg_2.b, Struct_1(-2068i, arg_0.d.b, arg_0.d.c, arg_2.d.x, vec3<f32>(-307f, var_1.a.e.x, var_1.c.x)), vec3<u32>(arg_0.d.d, arg_0.d.d, 44476u)), var_2.b.d.b.x).c.x, arg_2.b.d.a < global0.x, !global1.x), 1u, var_2.c.e), ~abs(arg_2.d));
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-789f)) - _wgslsmith_f_op_f32(-927f + 825f)))));
    global1 = vec3<bool>(arg_0, true, !all(vec2<bool>(!arg_0, global1.x)));
    let var_1 = func_5(Struct_2(Struct_1(global0.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(932f, 653f, var_0) + vec3<f32>(-1064f, var_0, var_0)))), select(!vec3<bool>(arg_0, global1.x, arg_0), select(vec3<bool>(true, global1.x, arg_0), vec3<bool>(global1.x, false, false), false), vec3<bool>(true, arg_0, false)), countOneBits(select(global2.x, 4294967295u, arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_0, var_0, 107f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -928f) - vec3<f32>(-1010f, -906f, var_0)))), vec3<f32>(1254f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(338f + 414f) * _wgslsmith_f_op_f32(f32(-1f) * -1222f)), var_0), func_4(Struct_2(Struct_1(u_input.b.x, vec3<f32>(-1000f, var_0, var_0), vec3<bool>(true, true, false), global2.x, vec3<f32>(-975f, var_0, -449f)), _wgslsmith_f_op_vec3_f32(func_2()), vec3<f32>(2635f, var_0, var_0), Struct_1(u_input.b.x, vec3<f32>(1019f, -449f, var_0), vec3<bool>(arg_0, true, true), global2.x, vec3<f32>(var_0, -431f, var_0))), Struct_3(-1074f, Struct_2(Struct_1(44671i, vec3<f32>(var_0, 272f, var_0), vec3<bool>(false, false, global1.x), global2.x, vec3<f32>(var_0, 1124f, -1694f)), vec3<f32>(var_0, 1689f, var_0), vec3<f32>(var_0, 100f, -230f), Struct_1(45469i, vec3<f32>(var_0, var_0, var_0), vec3<bool>(false, true, false), global2.x, vec3<f32>(var_0, 2270f, var_0))), Struct_1(global0.x, vec3<f32>(-931f, var_0, 1607f), vec3<bool>(false, false, arg_0), global2.x, vec3<f32>(1200f, var_0, var_0)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global2.x, global2.x, 18807u), vec3<u32>(1u, 12013u, 18192u), vec3<u32>(37833u, global2.x, global2.x))), _wgslsmith_f_op_f32(-var_0))), global1.x, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-var_0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) * -673f)), Struct_2(func_4(Struct_2(Struct_1(global0.x, vec3<f32>(732f, -565f, var_0), vec3<bool>(true, true, arg_0), global2.x, vec3<f32>(var_0, var_0, 269f)), vec3<f32>(-173f, var_0, 216f), vec3<f32>(var_0, 532f, -295f), Struct_1(-23840i, vec3<f32>(var_0, -391f, 150f), vec3<bool>(true, arg_0, false), 1u, vec3<f32>(-412f, -317f, 261f))), Struct_3(var_0, Struct_2(Struct_1(-2147483647i, vec3<f32>(1272f, var_0, 1545f), vec3<bool>(arg_0, false, arg_0), 27283u, vec3<f32>(1000f, var_0, var_0)), vec3<f32>(var_0, -596f, 310f), vec3<f32>(-359f, var_0, var_0), Struct_1(global0.x, vec3<f32>(-709f, var_0, 195f), vec3<bool>(arg_0, global1.x, global1.x), global2.x, vec3<f32>(var_0, var_0, var_0))), Struct_1(0i, vec3<f32>(var_0, -103f, var_0), vec3<bool>(false, arg_0, false), global2.x, vec3<f32>(var_0, 509f, var_0)), vec3<u32>(74951u, global2.x, global2.x)), _wgslsmith_f_op_f32(-var_0)), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_2()).x, 797f, var_0), vec3<f32>(1f, 1f, 1f), func_4(Struct_2(Struct_1(-1i, vec3<f32>(var_0, -987f, 192f), vec3<bool>(true, arg_0, global1.x), global2.x, vec3<f32>(var_0, -1046f, 423f)), vec3<f32>(var_0, -1381f, 524f), vec3<f32>(723f, -199f, -998f), Struct_1(u_input.b.x, vec3<f32>(var_0, var_0, var_0), vec3<bool>(false, arg_0, arg_0), global2.x, vec3<f32>(var_0, -1000f, 744f))), Struct_3(var_0, Struct_2(Struct_1(44655i, vec3<f32>(524f, var_0, 1614f), vec3<bool>(arg_0, global1.x, true), 7904u, vec3<f32>(2367f, -558f, 828f)), vec3<f32>(var_0, -799f, var_0), vec3<f32>(var_0, var_0, -1711f), Struct_1(u_input.b.x, vec3<f32>(var_0, var_0, -990f), vec3<bool>(arg_0, false, arg_0), global2.x, vec3<f32>(-713f, 2330f, var_0))), Struct_1(15033i, vec3<f32>(var_0, var_0, 1000f), vec3<bool>(false, global1.x, false), 61051u, vec3<f32>(211f, 542f, var_0)), vec3<u32>(32106u, 4294967295u, 4294967295u)), _wgslsmith_f_op_f32(308f - -1020f))), func_4(Struct_2(func_4(Struct_2(Struct_1(u_input.a.x, vec3<f32>(1881f, 1671f, var_0), vec3<bool>(arg_0, false, true), 0u, vec3<f32>(var_0, var_0, var_0)), vec3<f32>(607f, var_0, var_0), vec3<f32>(var_0, -284f, var_0), Struct_1(-1i, vec3<f32>(var_0, var_0, -1008f), vec3<bool>(true, false, false), global2.x, vec3<f32>(var_0, var_0, var_0))), Struct_3(var_0, Struct_2(Struct_1(-1i, vec3<f32>(273f, 2029f, var_0), vec3<bool>(true, arg_0, global1.x), 13655u, vec3<f32>(var_0, -396f, -660f)), vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_0, var_0, var_0), Struct_1(-27421i, vec3<f32>(-280f, var_0, var_0), vec3<bool>(true, arg_0, global1.x), global2.x, vec3<f32>(var_0, var_0, var_0))), Struct_1(-1i, vec3<f32>(var_0, 1896f, var_0), vec3<bool>(global1.x, true, true), global2.x, vec3<f32>(-682f, -1357f, var_0)), vec3<u32>(0u, 4294967295u, 35387u)), var_0), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_0, var_0), vec3<f32>(540f, 200f, -1059f), arg_0)), vec3<f32>(-1003f, 126f, 527f), Struct_1(2147483647i, vec3<f32>(var_0, var_0, var_0), vec3<bool>(arg_0, false, global1.x), 0u, vec3<f32>(var_0, -430f, 1000f))), Struct_3(-2105f, Struct_2(Struct_1(1i, vec3<f32>(var_0, var_0, var_0), vec3<bool>(global1.x, false, global1.x), global2.x, vec3<f32>(-1246f, var_0, -1453f)), vec3<f32>(var_0, 1000f, var_0), vec3<f32>(var_0, 608f, var_0), Struct_1(global0.x, vec3<f32>(var_0, var_0, 1767f), vec3<bool>(false, false, global1.x), global2.x, vec3<f32>(var_0, var_0, -1703f))), Struct_1(u_input.b.x, vec3<f32>(var_0, var_0, var_0), vec3<bool>(arg_0, false, false), 1u, vec3<f32>(-634f, -1775f, -1205f)), _wgslsmith_sub_vec3_u32(vec3<u32>(34322u, global2.x, global2.x), vec3<u32>(global2.x, global2.x, global2.x))), 222f), vec3<u32>(37307u, 64996u | abs(global2.x), 4294967295u)));
    var var_2 = vec2<f32>(1633f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(122f, var_1.a), var_1.c.b.x)))));
    global2 = var_1.d ^ ~var_1.d;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(-(u_input.a.zz << (global2.xz % vec2<u32>(32u))));
    global0 = u_input.a.zz;
    var var_0 = !select(vec4<bool>(true & all(vec3<bool>(global1.x, false, global1.x)), select(false, global1.x, true), func_1(all(vec3<bool>(false, global1.x, global1.x))), true), !select(!vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(global1.x, false, global1.x, true), true), global1.x);
    var_0 = !(!vec4<bool>(func_1(all(var_0.wy)), any(var_0.zw), false, true));
    var var_1 = abs(_wgslsmith_div_i32(13841i, _wgslsmith_mult_i32(-1i, -4676i)));
    global2 = ~(~(~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(40156u, global2.x, global2.x), vec3<u32>(global2.x, global2.x, 26307u), vec3<u32>(global2.x, global2.x, 3533u)), vec3<u32>(global2.x, global2.x, 22881u) & vec3<u32>(global2.x, 0u, 4294967295u))));
    var var_2 = vec4<bool>(true, func_1(true), true, !global1.x);
    let var_3 = 52938u >= func_5(func_5(func_5(func_5(Struct_2(Struct_1(-1i, vec3<f32>(802f, -2336f, -1675f), var_2.zyw, 0u, vec3<f32>(-1114f, 564f, 187f)), vec3<f32>(-1985f, -1052f, 816f), vec3<f32>(679f, -1000f, -1982f), Struct_1(global0.x, vec3<f32>(451f, -367f, 814f), var_2.ywy, 0u, vec3<f32>(208f, -554f, 1156f))), global1.x, Struct_3(202f, Struct_2(Struct_1(u_input.a.x, vec3<f32>(-1532f, -466f, -364f), var_2.zxy, global2.x, vec3<f32>(-1288f, 218f, -734f)), vec3<f32>(-1399f, -841f, 309f), vec3<f32>(-1077f, -1000f, -1739f), Struct_1(3750i, vec3<f32>(-1000f, -1126f, -681f), vec3<bool>(true, var_0.x, var_2.x), global2.x, vec3<f32>(-286f, 1737f, 906f))), Struct_1(-32413i, vec3<f32>(-1417f, -1501f, -514f), var_2.xzw, 1u, vec3<f32>(1000f, -652f, -302f)), vec3<u32>(global2.x, 3674u, global2.x))).b, global1.x != var_2.x, func_5(Struct_2(Struct_1(-21808i, vec3<f32>(-292f, 165f, -242f), vec3<bool>(false, false, true), 34871u, vec3<f32>(961f, 100f, -1094f)), vec3<f32>(2496f, -960f, -272f), vec3<f32>(582f, 1234f, 3133f), Struct_1(global0.x, vec3<f32>(1299f, 853f, 405f), var_0.wzz, 0u, vec3<f32>(-926f, 309f, -959f))), global1.x, Struct_3(1344f, Struct_2(Struct_1(-1i, vec3<f32>(-136f, 1207f, -1204f), var_2.zzw, global2.x, vec3<f32>(1468f, -1209f, -367f)), vec3<f32>(1153f, -721f, 1000f), vec3<f32>(-931f, 394f, -801f), Struct_1(global0.x, vec3<f32>(-1513f, 1388f, -1775f), vec3<bool>(true, var_0.x, var_2.x), 36686u, vec3<f32>(-406f, 269f, -1000f))), Struct_1(2147483647i, vec3<f32>(-353f, 381f, 732f), var_0.www, global2.x, vec3<f32>(-345f, -1000f, -565f)), vec3<u32>(global2.x, global2.x, 1u)))).b, false, Struct_3(-519f, func_5(Struct_2(Struct_1(-290i, vec3<f32>(597f, -845f, -1366f), var_0.wyw, 5031u, vec3<f32>(-1000f, -1180f, -748f)), vec3<f32>(1200f, -584f, 735f), vec3<f32>(-695f, 2577f, 1416f), Struct_1(global0.x, vec3<f32>(-835f, 559f, 1469f), vec3<bool>(global1.x, global1.x, global1.x), 41156u, vec3<f32>(118f, -1866f, 1000f))), var_2.x, Struct_3(420f, Struct_2(Struct_1(global0.x, vec3<f32>(-428f, 1463f, 3156f), var_0.zxw, global2.x, vec3<f32>(202f, 850f, 908f)), vec3<f32>(-347f, -1097f, 1000f), vec3<f32>(-860f, -1311f, -736f), Struct_1(-1i, vec3<f32>(-1253f, -1045f, -1402f), var_0.wyy, 25940u, vec3<f32>(-714f, -1036f, -825f))), Struct_1(6730i, vec3<f32>(-409f, 759f, 1333f), vec3<bool>(true, false, global1.x), 4294967295u, vec3<f32>(692f, 552f, 113f)), vec3<u32>(global2.x, global2.x, 1u))).b, Struct_1(0i, vec3<f32>(-155f, 314f, -1931f), vec3<bool>(var_2.x, var_0.x, false), global2.x, vec3<f32>(-162f, -638f, -2033f)), ~vec3<u32>(global2.x, global2.x, 26570u))).b, false, func_5(func_5(func_5(Struct_2(Struct_1(u_input.a.x, vec3<f32>(493f, -1000f, -1385f), vec3<bool>(false, var_2.x, false), global2.x, vec3<f32>(-818f, -1795f, 988f)), vec3<f32>(336f, -1117f, 496f), vec3<f32>(-134f, -1000f, 320f), Struct_1(global0.x, vec3<f32>(-1000f, -450f, -336f), vec3<bool>(var_2.x, true, false), 1u, vec3<f32>(2048f, 1000f, 1000f))), global1.x, Struct_3(-1125f, Struct_2(Struct_1(-11963i, vec3<f32>(-944f, 1000f, 1000f), var_2.ywy, 45600u, vec3<f32>(-745f, -249f, -114f)), vec3<f32>(1342f, 284f, -408f), vec3<f32>(-1481f, 459f, -273f), Struct_1(u_input.b.x, vec3<f32>(-1426f, 669f, -963f), var_0.zwx, 18076u, vec3<f32>(-779f, 614f, -503f))), Struct_1(-39171i, vec3<f32>(-1455f, 379f, 1875f), var_2.xzy, 52761u, vec3<f32>(632f, -648f, -507f)), vec3<u32>(global2.x, 41966u, global2.x))).b, !global1.x, func_5(Struct_2(Struct_1(-12991i, vec3<f32>(1000f, -600f, 1082f), vec3<bool>(var_0.x, global1.x, true), global2.x, vec3<f32>(459f, -1128f, -1223f)), vec3<f32>(-1365f, -1091f, -112f), vec3<f32>(-403f, 2263f, 824f), Struct_1(u_input.b.x, vec3<f32>(-1000f, 156f, -433f), var_0.zwy, global2.x, vec3<f32>(-414f, 752f, -1260f))), var_2.x, Struct_3(-1000f, Struct_2(Struct_1(-1i, vec3<f32>(432f, -451f, 314f), vec3<bool>(true, false, false), global2.x, vec3<f32>(347f, -1000f, 1000f)), vec3<f32>(1126f, -489f, 1093f), vec3<f32>(-256f, -547f, 282f), Struct_1(3627i, vec3<f32>(-1000f, -1000f, -1890f), var_0.yzx, global2.x, vec3<f32>(919f, -812f, -170f))), Struct_1(-1i, vec3<f32>(-219f, 527f, 1469f), vec3<bool>(false, global1.x, true), 21838u, vec3<f32>(-1062f, -1371f, 193f)), vec3<u32>(global2.x, global2.x, 62144u)))).b, global1.x, func_5(func_5(Struct_2(Struct_1(global0.x, vec3<f32>(-1017f, -1178f, 501f), vec3<bool>(true, var_2.x, var_0.x), 4294967295u, vec3<f32>(894f, 610f, -456f)), vec3<f32>(-1000f, 303f, 666f), vec3<f32>(254f, 117f, 777f), Struct_1(52261i, vec3<f32>(-710f, -1052f, 365f), vec3<bool>(var_2.x, true, true), 265u, vec3<f32>(-1000f, -532f, -1000f))), global1.x, Struct_3(359f, Struct_2(Struct_1(global0.x, vec3<f32>(-935f, -414f, -487f), vec3<bool>(false, false, global1.x), global2.x, vec3<f32>(-1497f, -1630f, 1295f)), vec3<f32>(1333f, -1249f, 3414f), vec3<f32>(341f, 1118f, 1119f), Struct_1(-13485i, vec3<f32>(688f, 520f, -661f), var_0.zyw, global2.x, vec3<f32>(594f, 607f, -1050f))), Struct_1(-1i, vec3<f32>(-898f, 1472f, 1026f), vec3<bool>(false, var_2.x, var_0.x), 1u, vec3<f32>(-388f, -887f, 1760f)), vec3<u32>(global2.x, global2.x, 62445u))).b, !var_2.x, Struct_3(1000f, Struct_2(Struct_1(-1i, vec3<f32>(337f, -511f, 437f), vec3<bool>(var_2.x, true, var_0.x), global2.x, vec3<f32>(-276f, 1597f, -1000f)), vec3<f32>(2097f, 2408f, -1202f), vec3<f32>(667f, -953f, 1646f), Struct_1(global0.x, vec3<f32>(108f, -632f, 368f), vec3<bool>(true, true, true), 1u, vec3<f32>(964f, -938f, 176f))), Struct_1(global0.x, vec3<f32>(-450f, -424f, -362f), var_2.zyw, global2.x, vec3<f32>(102f, -413f, -2180f)), vec3<u32>(56254u, global2.x, global2.x))))).c.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(func_4(Struct_2(Struct_1(-52989i, vec3<f32>(-1346f, -836f, 1000f), var_2.xyw, global2.x, vec3<f32>(-369f, -1448f, -2207f)), vec3<f32>(-1535f, 1411f, -310f), vec3<f32>(295f, -1145f, -496f), Struct_1(-2147483647i, vec3<f32>(403f, -285f, -512f), var_0.xzw, 1u, vec3<f32>(-1289f, 866f, 380f))), Struct_3(762f, Struct_2(Struct_1(u_input.a.x, vec3<f32>(322f, -1120f, -1225f), var_2.xyz, 0u, vec3<f32>(-2247f, -552f, 1164f)), vec3<f32>(1849f, 1631f, 817f), vec3<f32>(859f, -131f, -1721f), Struct_1(u_input.b.x, vec3<f32>(-1000f, -798f, -960f), var_2.zxz, 4294967295u, vec3<f32>(-2633f, -542f, 502f))), Struct_1(23594i, vec3<f32>(-1914f, -430f, -1390f), vec3<bool>(true, false, var_3), global2.x, vec3<f32>(192f, -1270f, 1000f)), vec3<u32>(45053u, 0u, 4294967295u)), -269f).e.x, 473f, -900f, _wgslsmith_f_op_f32(f32(-1f) * -1303f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 1000f, 793f, -116f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(588f, -305f, 118f, -1054f))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-534f, -169f, var_0.x)) + _wgslsmith_f_op_f32(floor(-123f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1250f))), _wgslsmith_f_op_f32(f32(-1f) * -2817f), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2()).x * -946f))), _wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 14591u, global2.x, global2.x), reverseBits(vec4<u32>(global2.x, global2.x, global2.x, 1u)), ~vec4<u32>(global2.x, global2.x, 4294967295u, 30228u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, global2.x), vec4<u32>(16674u, 4294967295u, 76651u, global2.x)) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(global2.x, global2.x, 86639u, 1u), ~vec4<u32>(4294967295u, 4294967295u, global2.x, global2.x))));
}

