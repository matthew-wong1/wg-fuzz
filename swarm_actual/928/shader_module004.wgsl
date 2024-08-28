struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: u32 = 54020u;

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(0u, vec3<f32>(-1137f, 1734f, 676f), vec3<bool>(false, true, false), 17571i, vec2<u32>(51286u, 1u)), Struct_1(30827u, vec3<f32>(-1066f, -484f, 109f), vec3<bool>(true, false, false), -37276i, vec2<u32>(22361u, 4294967295u)), Struct_1(4294967295u, vec3<f32>(-502f, -958f, 461f), vec3<bool>(true, true, true), i32(-2147483648), vec2<u32>(0u, 0u)), Struct_1(4294967295u, vec3<f32>(602f, 1048f, -761f), vec3<bool>(false, false, true), i32(-2147483648), vec2<u32>(1u, 1u)), Struct_1(1910u, vec3<f32>(1286f, 982f, -1000f), vec3<bool>(false, false, true), 1i, vec2<u32>(1u, 1u)), Struct_1(54660u, vec3<f32>(-704f, 1591f, 1000f), vec3<bool>(true, true, true), -1i, vec2<u32>(0u, 1u)), Struct_1(4294967295u, vec3<f32>(1405f, 780f, 257f), vec3<bool>(false, true, false), -1i, vec2<u32>(1u, 4294967295u)), Struct_1(47171u, vec3<f32>(-1127f, 448f, 355f), vec3<bool>(false, true, false), 2147483647i, vec2<u32>(11119u, 0u)), Struct_1(0u, vec3<f32>(1320f, 710f, -1261f), vec3<bool>(false, false, true), 36033i, vec2<u32>(4294967295u, 0u)), Struct_1(46803u, vec3<f32>(775f, 872f, -557f), vec3<bool>(true, false, true), 21471i, vec2<u32>(50230u, 13115u)), Struct_1(0u, vec3<f32>(1197f, 452f, 366f), vec3<bool>(true, true, false), 1i, vec2<u32>(0u, 0u)), Struct_1(13147u, vec3<f32>(2180f, 1000f, 1158f), vec3<bool>(true, false, true), -1i, vec2<u32>(30058u, 0u)), Struct_1(100647u, vec3<f32>(397f, 677f, -686f), vec3<bool>(false, true, true), -16142i, vec2<u32>(0u, 72303u)), Struct_1(29087u, vec3<f32>(-901f, -988f, -786f), vec3<bool>(true, false, false), -1i, vec2<u32>(24638u, 22190u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_2;
    let var_1 = var_0.b.a;
    global1 = ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, ~arg_2.b.d, _wgslsmith_div_i32(-2147483647i, -1i)), _wgslsmith_add_vec3_i32(~vec3<i32>(-6854i, var_0.b.d, -42972i), vec3<i32>(-12425i, u_input.c, u_input.c) & vec3<i32>(arg_2.a.d, -72685i, arg_2.a.d))));
    let var_2 = arg_2;
    global3 = array<Struct_1, 14>();
    return var_2;
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    global0 = u_input.a.x;
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_0, arg_0)), vec2<i32>(-22376i, -1i)), -(~abs(-2147483647i)), arg_1.a.d, -_wgslsmith_add_i32(-arg_0, _wgslsmith_add_i32(arg_0, -541i))), max(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0, 1i, arg_1.a.d), -vec3<i32>(arg_1.b.d, 1i, -1i)), 1i, arg_0, 2289i), abs(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 0i, -2147483647i, arg_0) & vec4<i32>(arg_0, u_input.c, arg_1.a.d, u_input.c), ~vec4<i32>(0i, 0i, 7298i, 15174i)))));
    global1 = var_0.x;
    let var_1 = 2147483647i;
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.a.b.x, arg_1.b.b.x))), vec3<u32>(~arg_1.b.e.x, func_2(arg_1.b.b.xx, ~_wgslsmith_mult_vec3_u32(vec3<u32>(74332u, arg_1.a.a, 1051u), vec3<u32>(u_input.b.x, 0u, arg_1.b.a)), arg_1).b.e.x, func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-621f, arg_1.a.b.x), arg_1.a.b.yx) * _wgslsmith_f_op_vec2_f32(select(arg_1.a.b.yz, vec2<f32>(1000f, arg_1.a.b.x), arg_1.b.c.x))), countOneBits(select(vec3<u32>(4332u, arg_1.b.a, arg_1.a.e.x), vec3<u32>(0u, 55410u, arg_1.b.e.x), vec3<bool>(true, false, true))), arg_1).b.e.x), func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-835f, arg_1.b.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.b.xz))), ~vec3<u32>(arg_1.b.a, 4294967295u, arg_1.b.a) | vec3<u32>(_wgslsmith_sub_u32(4294967295u, 23838u), 1u, 10936u & u_input.b.x), Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_1.b.a, 1u), u_input.b.x), 14u)], func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-448f, arg_1.b.b.x)), vec3<u32>(6114u, arg_1.a.a, 47547u) & vec3<u32>(u_input.b.x, 4294967295u, 10023u), Struct_2(arg_1.a, Struct_1(arg_1.b.e.x, arg_1.a.b, arg_1.a.c, u_input.c, u_input.b))).a)));
    return func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.a.b.x, _wgslsmith_f_op_f32(abs(var_2.b.b.x))))), abs(~select(~vec3<u32>(u_input.b.x, arg_1.b.a, var_2.b.a), vec3<u32>(0u, 61259u, var_2.a.e.x), vec3<bool>(true, false, arg_1.b.c.x))), Struct_2(Struct_1(abs(min(arg_1.b.a, 87857u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(608f, -883f, arg_1.b.b.x), var_2.b.b)))), !var_2.a.c, var_0.x, _wgslsmith_sub_vec2_u32(arg_1.b.e, vec2<u32>(4294967295u, 5008u)) | ~vec2<u32>(var_2.a.a, 20390u)), func_2(vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.b.x - -229f), _wgslsmith_f_op_f32(-arg_1.a.b.x)), abs(~vec3<u32>(arg_1.a.e.x, u_input.b.x, 4294967295u)), arg_1).b));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>) -> vec3<f32> {
    let var_0 = arg_0;
    global2 = _wgslsmith_div_u32(4294967295u, ~arg_1.a.a) & firstTrailingBit(~arg_2.x);
    let var_1 = vec4<u32>(~(~1u), u_input.a.x, firstTrailingBit(u_input.a.x), func_2(vec2<f32>(arg_1.a.b.x, _wgslsmith_f_op_f32(ceil(var_0.b.x))), arg_2, Struct_2(func_3(-9839i, arg_1).b, func_3(arg_0.d, arg_1).b)).b.e.x) >> (~abs(vec4<u32>(arg_0.a, 31378u, 1u, arg_2.x)) % vec4<u32>(32u));
    var var_2 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_1.b.d, arg_0.d), i32(-1i) * -2147483647i, arg_0.d);
    global2 = _wgslsmith_dot_vec4_u32(~(~var_1 & (vec4<u32>(4581u, arg_0.a, arg_1.a.a, 1u) & vec4<u32>(1u, var_1.x, u_input.a.x, var_0.a))), var_1);
    return vec3<f32>(func_3((2190i | firstTrailingBit(arg_1.a.d)) ^ var_0.d, Struct_2(Struct_1(var_0.a | 4294967295u, vec3<f32>(var_0.b.x, var_0.b.x, arg_0.b.x), select(vec3<bool>(arg_0.c.x, arg_1.a.c.x, var_0.c.x), arg_1.b.c, vec3<bool>(arg_0.c.x, true, false)), max(arg_0.d, arg_0.d), firstLeadingBit(arg_1.a.e)), func_3(1i, arg_1).b)).b.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(804f, 411f))), _wgslsmith_f_op_f32(f32(-1f) * -635f), true)), arg_0.b.x);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: i32, arg_3: u32) -> Struct_2 {
    let var_0 = countOneBits(vec2<i32>(-1i, arg_2));
    var var_1 = func_3(var_0.x >> (abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(arg_3, u_input.b.x)), 0u)) % 32u), Struct_2(global3[_wgslsmith_index_u32(arg_3, 14u)], global3[_wgslsmith_index_u32(abs(~(4294967295u | arg_3)), 14u)]));
    return Struct_2(func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(995f, arg_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.yz, vec2<f32>(-965f, arg_0.x)))), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 30703u, 15742u), vec3<u32>(4294967295u, u_input.b.x, 32066u))) >> (vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, 29114u), ~var_1.b.e.x, 28838u) % vec3<u32>(32u)), func_2(func_3(var_0.x, Struct_2(Struct_1(10067u, var_1.a.b, var_1.a.c, 2147483647i, vec2<u32>(arg_3, arg_3)), var_1.b)).a.b.xx, (vec3<u32>(0u, 99768u, var_1.b.a) ^ vec3<u32>(u_input.b.x, 4294967295u, 4294967295u)) ^ ~vec3<u32>(arg_3, var_1.a.e.x, 17692u), func_3(_wgslsmith_mod_i32(2147483647i, var_0.x), Struct_2(Struct_1(var_1.a.e.x, arg_1.yyz, var_1.a.c, 22096i, vec2<u32>(u_input.a.x, arg_3)), Struct_1(u_input.a.x, arg_1.yyy, vec3<bool>(var_1.a.c.x, true, true), 7337i, vec2<u32>(arg_3, 48173u)))))).b, Struct_1(~(~min(arg_3, 1u)), _wgslsmith_f_op_vec3_f32(min(var_1.b.b, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1003f, var_1.a.b.x, var_1.b.b.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, -369f, var_1.b.b.x))))))), !select(vec3<bool>(false, var_1.b.c.x, var_1.a.c.x), !var_1.b.c, true), _wgslsmith_sub_i32(_wgslsmith_div_i32(min(-2147483647i, 1i), arg_2), 2147483647i), var_1.b.e));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_3.b.d;
    var var_1 = _wgslsmith_f_op_f32(max(-774f, _wgslsmith_f_op_f32(-arg_0.b.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(arg_0.b + _wgslsmith_div_vec3_f32(arg_3.a.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_3.b.b.x - arg_0.b.x), arg_0.b.x, func_2(arg_0.b.yz, arg_2, Struct_2(Struct_1(1u, arg_3.b.b, vec3<bool>(arg_1, true, arg_0.c.x), u_input.c, vec2<u32>(u_input.b.x, 81617u)), global3[_wgslsmith_index_u32(12918u, 14u)])).b.b.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_3.b.b))))));
    let var_3 = ~arg_3.b.a << (min(~abs(arg_2.x), u_input.b.x) % 32u);
    var var_4 = select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, arg_0.c.x), !(!(!vec4<bool>(true, true, arg_0.c.x, true))), !(!vec4<bool>(arg_3.a.c.x, false, false, arg_1))), arg_3.b.c.x);
    return arg_3.b;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_6(global3[_wgslsmith_index_u32(firstLeadingBit(~(~firstLeadingBit(1u))), 14u)], !(!(_wgslsmith_add_u32(u_input.a.x, 4294967295u) == firstLeadingBit(arg_0.a))), ~(~reverseBits(vec3<u32>(u_input.b.x, 1u, arg_0.a) >> (vec3<u32>(23080u, u_input.a.x, 0u) % vec3<u32>(32u)))), func_5(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(~10467u, arg_0.b, arg_0.c, -u_input.c, ~arg_0.e), func_3(u_input.c, func_2(vec2<f32>(-1666f, 194f), vec3<u32>(25684u, u_input.b.x, arg_0.e.x), Struct_2(global3[_wgslsmith_index_u32(arg_0.a, 14u)], global3[_wgslsmith_index_u32(42865u, 14u)]))), vec3<u32>(_wgslsmith_add_u32(arg_0.e.x, 25182u), abs(arg_0.e.x), firstLeadingBit(u_input.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-1997f - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, arg_0.b.x)), _wgslsmith_f_op_f32(ceil(arg_0.b.x)), _wgslsmith_f_op_f32(-arg_0.b.x)), -func_2(_wgslsmith_div_vec2_f32(vec2<f32>(1389f, 1992f), arg_0.b.zy), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a, u_input.a.x, arg_0.a), vec3<u32>(u_input.b.x, 0u, 31659u)), Struct_2(Struct_1(arg_0.a, vec3<f32>(arg_0.b.x, arg_0.b.x, -1015f), arg_0.c, arg_0.d, u_input.a), global3[_wgslsmith_index_u32(0u, 14u)])).b.d, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.e ^ u_input.b, ~vec2<u32>(arg_0.a, 20046u)), vec2<u32>(u_input.b.x, arg_0.a))));
    var var_1 = func_3(var_0.d, Struct_2(func_6(arg_0, all(arg_0.c.xz), ~(vec3<u32>(51203u, 4294967295u, 19544u) | vec3<u32>(u_input.b.x, u_input.b.x, 49873u)), Struct_2(Struct_1(9697u, arg_0.b, vec3<bool>(var_0.c.x, false, arg_0.c.x), -2147483647i, var_0.e), func_2(arg_0.b.xx, vec3<u32>(4294967295u, arg_0.e.x, 25161u), Struct_2(var_0, global3[_wgslsmith_index_u32(11804u, 14u)])).b)), Struct_1(~0u << (_wgslsmith_mod_u32(var_0.e.x, u_input.b.x) % 32u), var_0.b, vec3<bool>(true, false & arg_0.c.x, var_0.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_0.d, arg_0.d) | vec3<i32>(21041i, arg_0.d, -12916i), _wgslsmith_mult_vec3_i32(vec3<i32>(33331i, var_0.d, 12581i), vec3<i32>(u_input.c, 1i, -39890i))), ~(~u_input.b))));
    var var_2 = ~vec4<u32>(_wgslsmith_mult_u32(~arg_0.e.x, u_input.b.x), ~var_0.a, ~_wgslsmith_clamp_u32(20801u, var_0.e.x, 0u) ^ firstTrailingBit(u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a >> (var_1.a.e.x % 32u), 18318u, 0u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 42434u, var_1.a.a, var_1.a.a), vec4<u32>(15566u, 85078u, arg_0.e.x, 58436u)), vec4<u32>(1u, var_1.b.e.x, 85402u, arg_0.a))));
    var var_3 = reverseBits(2147483647i);
    var var_4 = arg_0;
    return Struct_1(var_2.x, arg_0.b, !select(vec3<bool>(13405u > var_2.x, arg_0.c.x || var_1.b.c.x, all(vec4<bool>(true, var_1.b.c.x, false, true))), select(var_1.b.c, !vec3<bool>(true, var_0.c.x, var_0.c.x), false), (1u == var_1.b.a) || true), -1i, min(func_3(-var_0.d, func_3(1i, Struct_2(Struct_1(4294967295u, vec3<f32>(-237f, var_1.a.b.x, 1733f), arg_0.c, 0i, vec2<u32>(1u, var_0.a)), Struct_1(var_2.x, var_4.b, vec3<bool>(true, false, true), arg_0.d, vec2<u32>(var_4.e.x, arg_0.e.x))))).b.e, vec2<u32>(~u_input.a.x, var_2.x)));
}

fn func_7(arg_0: Struct_2) -> i32 {
    var var_0 = true;
    global1 = -27117i;
    let var_1 = ~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, 1u), arg_0.b.e.x)), u_input.b);
    var var_2 = vec4<bool>(arg_0.a.c.x, func_3(u_input.c, func_5(vec3<f32>(_wgslsmith_f_op_f32(abs(-587f)), _wgslsmith_div_f32(arg_0.b.b.x, 1729f), _wgslsmith_f_op_f32(arg_0.a.b.x - 660f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-704f, 151f, -632f, -755f))), -1i, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b.x, 1u), 0u))).b.c.x, true, -arg_0.b.d <= ~15069i);
    return 2172i;
}

fn func_8(arg_0: u32, arg_1: bool, arg_2: vec2<f32>, arg_3: u32) -> vec3<i32> {
    let var_0 = arg_1;
    let var_1 = ~u_input.a.x;
    var var_2 = Struct_2(Struct_1(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~4294967295u, 14721u), ~countOneBits(arg_3), arg_0), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, -1081f) * vec3<f32>(-435f, arg_2.x, arg_2.x)))), vec3<bool>(arg_1, any(vec4<bool>(false, true, true, arg_1)), true), -1i, _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(var_1, 8978u)) << (~vec2<u32>(41377u, 4938u) % vec2<u32>(32u)), func_6(Struct_1(u_input.a.x, vec3<f32>(arg_2.x, -1242f, 972f), vec3<bool>(false, var_0, var_0), u_input.c, vec2<u32>(20554u, 47808u)), true, vec3<u32>(56117u, arg_3, arg_3) ^ vec3<u32>(8712u, 25032u, 1601u), Struct_2(Struct_1(arg_0, vec3<f32>(-572f, arg_2.x, arg_2.x), vec3<bool>(true, false, true), -63272i, vec2<u32>(23566u, arg_0)), global3[_wgslsmith_index_u32(4294967295u, 14u)])).e, vec2<u32>(21518u | arg_3, 40068u))), global3[_wgslsmith_index_u32(~(~72269u), 14u)]);
    global0 = 1u;
    var var_3 = vec3<u32>(1u, func_6(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(67255u, 64314u, 15090u, arg_3), ~vec4<u32>(50719u, var_1, 4294967295u, 74386u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, var_2.b.b.x, var_2.a.b.x) + vec3<f32>(var_2.b.b.x, 448f, 578f)))), var_2.a.c, -24807i, u_input.b), true, _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, 71007u, 1u), abs(vec3<u32>(1u, u_input.b.x, var_2.a.a))), Struct_2(func_6(global3[_wgslsmith_index_u32(~4294967295u, 14u)], var_2.a.c.x, vec3<u32>(var_1, 4294967295u, var_1), Struct_2(Struct_1(arg_0, var_2.b.b, var_2.b.c, 1i, vec2<u32>(var_2.a.a, 23223u)), var_2.b)), Struct_1(~u_input.a.x, var_2.b.b, !vec3<bool>(var_2.a.c.x, arg_1, var_2.a.c.x), var_2.b.d, select(u_input.a, vec2<u32>(1u, var_1), true)))).e.x, _wgslsmith_mod_u32(var_1, _wgslsmith_dot_vec2_u32(u_input.a, var_2.a.e)));
    return countOneBits(max(vec3<i32>(i32(-1i) * -2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(26517i, -1i, 10715i, u_input.c), vec4<i32>(u_input.c, 2147483647i, 2147483647i, 0i)), ~_wgslsmith_div_i32(1i, u_input.c)), vec3<i32>(func_5(_wgslsmith_f_op_vec3_f32(-var_2.a.b), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.a.b.x, var_2.b.b.x, 1006f, 1084f))), -32178i & u_input.c, _wgslsmith_mult_u32(u_input.a.x, var_3.x)).a.d, -1i | countOneBits(u_input.c), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 14>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1196f, 506f) * _wgslsmith_f_op_f32(round(133f)))) * 1097f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1345f, 1145f) * _wgslsmith_f_op_f32(f32(-1f) * -786f)), -3164f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1151f, 412f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -741f)))));
    let var_1 = _wgslsmith_add_u32(u_input.a.x, 1u);
    let var_2 = func_8(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_sub_u32(1u | u_input.a.x, firstTrailingBit(~u_input.a.x))), func_7(Struct_2(func_1(global3[_wgslsmith_index_u32(u_input.b.x, 14u)]), global3[_wgslsmith_index_u32(u_input.a.x, 14u)])) >= 0i, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(var_0.x * func_6(global3[_wgslsmith_index_u32(0u, 14u)], true, vec3<u32>(5661u, u_input.a.x, 485u), Struct_2(global3[_wgslsmith_index_u32(u_input.b.x, 14u)], global3[_wgslsmith_index_u32(23626u, 14u)])).b.x), 104f))), 0u);
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(195f, 661f)))), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(var_1 & ~34684u), u_input.b.x, false), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(1u, var_1, 0u)), ~vec3<u32>(u_input.b.x, 40134u, 10157u)), vec3<u32>(var_1, u_input.a.x, u_input.a.x) & ~vec3<u32>(38986u, var_1, u_input.b.x), max(vec3<u32>(17459u, u_input.b.x, u_input.b.x), vec3<u32>(28313u, 0u, 1u) | vec3<u32>(u_input.a.x, u_input.a.x, 0u))));
}

