struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 17>;

var<private> global1: array<Struct_2, 26>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_3(arg_3, select(!vec2<bool>(any(vec3<bool>(arg_1.a, arg_1.a, true)), arg_3.a), !select(select(vec2<bool>(arg_1.a, arg_3.a), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(arg_3.a, arg_1.a)), all(vec3<bool>(true, true, false))), true), Struct_2((select(arg_3.a, false, arg_1.a) | any(vec4<bool>(true, arg_1.a, false, arg_1.a))) || true, Struct_1(arg_1.b.a, ~_wgslsmith_mult_u32(6415u, 8874u), min(32963i, 2147483647i), vec2<u32>(_wgslsmith_div_u32(arg_1.d, arg_1.e.d.x), 86304u), arg_3.b.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-192f, -285f, arg_2), vec3<f32>(arg_1.c.x, arg_0.x, arg_2))), u_input.c.x, Struct_1(-vec2<i32>(arg_1.b.c, arg_3.b.a.x), arg_3.d, -(~(-1i)), vec2<u32>(u_input.b, arg_1.b.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(531f + arg_3.e.e) * _wgslsmith_f_op_f32(arg_1.c.x * arg_2)))), arg_1.c.yy, !select(vec2<bool>(false, all(vec4<bool>(arg_1.a, false, true, false))), vec2<bool>(false, arg_1.a & false), arg_1.a));
    let var_1 = u_input.c.zyz;
    let var_2 = vec3<i32>(-58100i, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, max(arg_3.e.a.x >> (arg_1.d % 32u), -14525i << (arg_1.e.d.x % 32u))), (vec2<i32>(-1i) * -var_0.c.b.a) | arg_1.b.a));
    var var_3 = max(firstTrailingBit(select(vec4<i32>(-var_0.c.b.c, arg_1.e.a.x, 1i, 1i), ~(vec4<i32>(17174i, var_0.a.e.c, 65909i, var_2.x) << (vec4<u32>(var_0.c.b.b, 54499u, 0u, u_input.c.x) % vec4<u32>(32u))), !arg_3.a || arg_1.a)), _wgslsmith_mult_vec4_i32(~vec4<i32>(-2147483647i, arg_3.b.c, u_input.a, u_input.d) ^ firstLeadingBit(vec4<i32>(arg_3.e.a.x, -30699i, arg_3.e.c, -13374i)), select(~vec4<i32>(-1i, u_input.d, 1i, u_input.d), -vec4<i32>(arg_3.e.a.x, -1i, arg_3.b.a.x, var_2.x), false)) << (~abs(max(u_input.c, u_input.c)) % vec4<u32>(32u)));
    let var_4 = Struct_3(global1[_wgslsmith_index_u32(4294967295u, 26u)], vec2<bool>(false, !any(!vec4<bool>(true, arg_1.a, arg_3.a, var_0.c.a))), Struct_2(!arg_1.a, Struct_1(-(var_3.xw ^ vec2<i32>(arg_1.e.a.x, arg_3.b.c)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.b.d.x, arg_1.e.b, arg_3.d), u_input.c.zyx), var_3.x, _wgslsmith_sub_vec2_u32(var_0.a.e.d, _wgslsmith_sub_vec2_u32(var_1.xy, vec2<u32>(arg_3.b.d.x, arg_1.b.b))), 624f), arg_1.c, var_0.a.e.d.x, var_0.c.b), vec2<f32>(-376f, arg_1.b.e), !vec2<bool>(true & !arg_3.a, false));
    return ~(~var_0.c.b.d.x ^ _wgslsmith_div_u32(var_0.a.d, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.b.b, 0u, 21129u), vec3<u32>(var_4.c.b.b, 0u, 4294967295u))));
}

fn func_4(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -827f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1419f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1051f, -176f, 1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(997f, 391f, 582f), vec3<f32>(-1220f, 858f, -808f)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2247f, 1491f, -1688f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1088f, 693f, -813f), vec3<f32>(444f, -565f, 328f), global0[_wgslsmith_index_u32(45491u, 17u)]))))));
    var var_1 = -vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(abs(vec3<i32>(-101014i, 13183i, u_input.d)), ~vec3<i32>(u_input.a, u_input.d, 11426i)), -abs(vec3<i32>(30511i, u_input.d, u_input.d))), 40916i >> (_wgslsmith_mult_u32(u_input.b, 15926u) % 32u), _wgslsmith_mod_i32(_wgslsmith_div_i32(96154i | u_input.d, _wgslsmith_add_i32(u_input.d, u_input.a)), ~u_input.d));
    let var_2 = vec4<bool>(~u_input.a < u_input.a, all(vec4<bool>(any(vec4<bool>(true, false, false, false)), true, select(true, true, true), any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), false)))), true, all(vec4<bool>(true, true, true, true)));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2672f + var_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), var_0.x))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(-567f)))), vec2<f32>(_wgslsmith_f_op_f32(step(-492f, _wgslsmith_f_op_f32(max(-604f, var_0.x)))), 1f)));
    let var_4 = any(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b, u_input.b), 17u)]);
    return u_input.b;
}

fn func_2(arg_0: vec4<i32>) -> vec4<bool> {
    let var_0 = Struct_4(Struct_2(true, Struct_1(arg_0.xw, 0u, ~(-21120i), ~vec2<u32>(117784u, u_input.c.x) & (u_input.c.xx & u_input.c.xx), _wgslsmith_f_op_f32(step(1049f, _wgslsmith_f_op_f32(f32(-1f) * -720f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1114f, -1022f, -867f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1152f, 1121f, -335f), vec3<f32>(-1742f, 1564f, 773f)))), firstTrailingBit(func_4(func_3(vec4<f32>(765f, -640f, -1018f, 108f), Struct_2(true, Struct_1(arg_0.yz, 4294967295u, 2147483647i, vec2<u32>(u_input.c.x, 0u), 295f), vec3<f32>(-280f, -514f, 852f), u_input.b, Struct_1(arg_0.wz, 31985u, u_input.d, u_input.c.wz, -273f)), 199f, Struct_2(true, Struct_1(arg_0.zy, 4692u, 34626i, u_input.c.ww, -697f), vec3<f32>(-476f, -458f, 868f), u_input.c.x, Struct_1(arg_0.yx, u_input.b, 1i, u_input.c.xz, 1301f))))), Struct_1(~(-arg_0.ww), 25982u, _wgslsmith_div_i32(arg_0.x, max(34751i, u_input.d)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, 1u), ~vec2<u32>(u_input.b, u_input.c.x)), 495f)), _wgslsmith_sub_i32(arg_0.x, u_input.a | min(31395i, 1i)), Struct_1(arg_0.zz, _wgslsmith_add_u32(min(~u_input.b, ~u_input.b), ~_wgslsmith_sub_u32(4294967295u, u_input.b)), u_input.a, abs(u_input.c.yz), _wgslsmith_f_op_f32(f32(-1f) * -537f)), _wgslsmith_add_vec3_i32(arg_0.xzx, vec3<i32>(arg_0.x, _wgslsmith_div_i32(u_input.a, u_input.d), u_input.d)) | min(max(firstTrailingBit(vec3<i32>(u_input.a, arg_0.x, arg_0.x)), vec3<i32>(arg_0.x, -11896i, -2334i)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0.zzy, vec3<i32>(u_input.d, 2147483647i, -1i)), ~vec3<i32>(65547i, 14415i, u_input.d))), global0[_wgslsmith_index_u32(~u_input.c.x, 17u)]);
    var var_1 = Struct_3(var_0.a, !var_0.e.yy, Struct_2(!var_0.e.x, Struct_1(vec2<i32>(~u_input.a, 6976i), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(827f, var_0.a.b.e, -1358f, -260f) * vec4<f32>(-1705f, -161f, 1000f, 341f)), var_0.a, _wgslsmith_f_op_f32(abs(-1342f)), Struct_2(true, var_0.a.b, var_0.a.c, 124761u, Struct_1(vec2<i32>(var_0.a.e.a.x, -77400i), 74310u, 4282i, var_0.c.d, 195f))), _wgslsmith_mod_i32(-18373i, arg_0.x) << (4294967295u % 32u), ~u_input.c.zx, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.e.e)))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(636f)), _wgslsmith_f_op_f32(-534f + var_0.c.e))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_0.a.c.x, var_0.c.e, true)), -509f)), _wgslsmith_f_op_f32(1459f * _wgslsmith_div_f32(-184f, var_0.a.e.e))), 23251u, var_0.a.e), _wgslsmith_f_op_vec2_f32(-var_0.a.c.zx), vec2<bool>(false, false));
    var var_2 = Struct_3(var_1.a, vec2<bool>(var_0.a.e.b > (var_0.c.d.x | var_0.a.b.b), all(select(select(vec4<bool>(var_0.a.a, true, true, true), vec4<bool>(var_0.a.a, true, true, false), var_1.a.a), vec4<bool>(false, true, false, var_1.c.a), false))), var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.d.x, _wgslsmith_f_op_f32(max(-1671f, 954f))), vec2<f32>(1385f, _wgslsmith_div_f32(1154f, -621f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.e, var_1.d.x)) - _wgslsmith_f_op_vec2_f32(var_1.c.c.yy * var_1.c.c.xz))), var_1.e);
    var var_3 = _wgslsmith_f_op_f32(round(var_0.a.b.e));
    let var_4 = any(global0[_wgslsmith_index_u32(4294967295u, 17u)]);
    return select(select(vec4<bool>(!(!var_0.a.a), var_1.a.b.d.x == var_0.c.b, !var_4, true), select(!select(vec4<bool>(var_1.b.x, var_1.e.x, var_1.b.x, var_2.c.a), vec4<bool>(var_2.a.a, false, var_1.b.x, var_1.c.a), var_4), !(!vec4<bool>(true, var_0.a.a, false, true)), select(vec4<bool>(var_4, var_0.e.x, true, true), !vec4<bool>(true, false, true, var_1.e.x), !vec4<bool>(var_4, var_2.e.x, false, true))), vec4<bool>(!var_1.e.x & any(vec4<bool>(var_4, false, false, true)), !any(vec3<bool>(false, false, true)), all(vec3<bool>(true, var_2.c.a, true)), !var_0.e.x)), !select(vec4<bool>(true, var_4, true, false | var_2.e.x), vec4<bool>(var_1.c.a, !var_0.e.x, !var_2.b.x, false), vec4<bool>(any(vec4<bool>(true, false, true, var_4)), true, var_0.a.a, var_2.a.b.d.x == var_1.c.b.d.x)), !any(!var_0.e));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> bool {
    global0 = array<vec3<bool>, 17>();
    global1 = array<Struct_2, 26>();
    global1 = array<Struct_2, 26>();
    var var_0 = select(select(!(!func_2(vec4<i32>(-2147483647i, u_input.a, 2147483647i, -18752i))), select(!(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), !func_2(vec4<i32>(23614i, 1i, 46897i, -1i)), arg_1.x), false), !select(vec4<bool>(true, true, true, arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, true, false), func_3(vec4<f32>(526f, -124f, 983f, 794f), Struct_2(arg_1.x, Struct_1(vec2<i32>(u_input.d, -36354i), 0u, u_input.d, u_input.c.wx, 140f), vec3<f32>(-488f, 339f, -663f), u_input.c.x, Struct_1(vec2<i32>(u_input.d, -15807i), u_input.c.x, 1i, u_input.c.zw, -515f)), 106f, Struct_2(true, Struct_1(vec2<i32>(0i, u_input.a), u_input.b, u_input.a, vec2<u32>(arg_0, u_input.c.x), 923f), vec3<f32>(-712f, -1000f, -673f), 0u, Struct_1(vec2<i32>(0i, 15225i), arg_0, u_input.d, vec2<u32>(28656u, u_input.c.x), -699f))) < reverseBits(u_input.c.x)), !vec4<bool>(func_2(-vec4<i32>(-2147483647i, u_input.d, -21020i, 21635i)).x, arg_1.x, arg_1.x || true, false));
    let var_1 = countOneBits(u_input.c.x);
    return !(!(!((4294967295u | var_1) < 0u)));
}

fn func_5(arg_0: vec4<f32>, arg_1: bool) -> Struct_4 {
    let var_0 = u_input.c;
    let var_1 = vec2<f32>(arg_0.x, -1000f);
    global0 = array<vec3<bool>, 17>();
    let var_2 = arg_1;
    let var_3 = -67423i;
    return Struct_4(Struct_2(all(vec4<bool>(arg_1, var_2, true, !var_2)), Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -6780i, var_3, u_input.a), vec4<i32>(1i, -30334i, -2147483647i, u_input.d)), ~(-1i)), func_3(arg_0, global1[_wgslsmith_index_u32(u_input.b ^ 92253u, 26u)], _wgslsmith_f_op_f32(638f + var_1.x), Struct_2(arg_1, Struct_1(vec2<i32>(22503i, -21827i), u_input.b, -1i, vec2<u32>(1u, var_0.x), var_1.x), vec3<f32>(-1076f, -1000f, var_1.x), 1u, Struct_1(vec2<i32>(u_input.d, var_3), var_0.x, u_input.d, var_0.yw, -844f))), min(-1i << (1u % 32u), u_input.a), ~vec2<u32>(5501u, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_0.zyw))), 52271u, Struct_1(reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(31766i, 2091i), vec2<i32>(-2147483647i, u_input.d))), var_0.x, ~45572i, vec2<u32>(u_input.c.x ^ 0u, 3886u), var_1.x)), ~(-var_3), Struct_1(min(vec2<i32>(u_input.d, var_3) ^ (vec2<i32>(-5797i, -19767i) >> (u_input.c.yx % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, 0i), vec2<i32>(197i, var_3)) << (~vec2<u32>(20625u, var_0.x) % vec2<u32>(32u))), _wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, u_input.b, 1u), vec3<u32>(var_0.x, 1u, var_0.x), arg_1), _wgslsmith_add_vec3_u32(var_0.ywx, vec3<u32>(33131u, 32880u, 0u))) | ~(0u & u_input.b), -(~_wgslsmith_clamp_i32(var_3, u_input.d, u_input.a)), firstTrailingBit(select(_wgslsmith_mod_vec2_u32(var_0.xx, vec2<u32>(u_input.c.x, 4294967295u)), u_input.c.wz, true)), var_1.x), vec3<i32>(u_input.d, var_3, ~(-(~(-19860i)))), vec3<bool>(false, true, any(vec4<bool>(any(global0[_wgslsmith_index_u32(u_input.b, 17u)]), !var_2, arg_1, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 26>();
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1697f, 601f, 560f, 160f), vec4<f32>(198f, 564f, -329f, -1265f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(576f, -1478f, -391f, 475f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-321f, 878f, 1890f, 1299f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(669f, -1237f, 601f, -930f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -367f, 229f, 986f))))), func_1(~(_wgslsmith_sub_u32(u_input.b, 21997u) >> (u_input.b % 32u)), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, true, false, true)))));
    var var_1 = var_0.a.c;
    var var_2 = _wgslsmith_div_f32(var_0.a.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c.x - -414f) * 271f))));
    let var_3 = Struct_4(func_5(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c.e, -444f, 721f, var_1.x))))), var_0.e.x || (all(var_0.e.yz) || var_0.a.a)).a, u_input.d, Struct_1(var_0.d.xz, ~0u, abs(u_input.d), select(u_input.c.zx, _wgslsmith_div_vec2_u32(var_0.c.d, firstTrailingBit(var_0.c.d)), var_0.e.zx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_5(vec4<f32>(-672f, 1371f, 145f, 279f), true).a.c.x) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x * var_1.x))))), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-151f, var_1.x, var_1.x, var_1.x), vec4<f32>(-1000f, var_1.x, -323f, var_1.x)))), true).d, !select(var_0.e, global0[_wgslsmith_index_u32(var_0.c.d.x, 17u)], func_2(vec4<i32>(var_0.d.x, -5585i, u_input.d, 43771i)).zxw));
    var var_4 = var_3;
    var var_5 = var_3;
    var var_6 = var_0;
    let var_7 = func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.c.e, _wgslsmith_f_op_f32(2042f * _wgslsmith_f_op_f32(select(var_6.c.e, var_0.c.e, false))), func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(446f, var_5.a.e.e, -2683f, var_4.a.c.x)), true).a.b.e, _wgslsmith_f_op_f32(-var_3.a.b.e))), var_0.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.zy, max(-var_0.d.yx, _wgslsmith_add_vec2_i32(-(vec2<i32>(19508i, -615i) & var_3.d.zy), firstTrailingBit(var_0.a.b.a ^ var_0.d.xx))), ~(var_5.d >> (~u_input.c.zyw % vec3<u32>(32u))), vec2<u32>(var_4.a.e.b, _wgslsmith_div_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(59061u, var_7.c.d.x, var_7.c.b), u_input.c.zzw)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.c.d.x, var_4.c.d.x, u_input.c.x), _wgslsmith_sub_u32(33933u, var_4.a.d)))));
}

