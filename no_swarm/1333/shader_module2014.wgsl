struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(33753i, -10237i, 6535i, 39222i, 26829i, 0i, -42273i, -1i, 18816i, 0i, 26004i, -1i, -7441i, i32(-2147483648), -3172i, 1i, 0i, 2147483647i, 1i, 0i, 0i, 19125i, -1i);

var<private> global1: f32;

var<private> global2: array<vec4<u32>, 4>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    var var_0 = ~global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(38144u, ~(~u_input.b.x))), 4u)];
    var_0 = global2[_wgslsmith_index_u32(var_0.x, 4u)];
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(u_input.d >> (_wgslsmith_div_vec3_u32(vec3<u32>(65048u, u_input.b.x, 0u), vec3<u32>(var_0.x, 41167u, u_input.b.x)) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(2147483647i, 4017i, reverseBits(2501i)))), any(!vec3<bool>(-1i < u_input.d.x, true, u_input.c != u_input.a)), select(true, all(vec3<bool>(true, all(vec3<bool>(true, false, false)), true)), true), !(1i < _wgslsmith_clamp_i32(~u_input.d.x, 1i, u_input.c >> (6428u % 32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -185f), -268f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1507f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -684f), _wgslsmith_div_f32(-1096f, -1408f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1172f, -487f, 614f)))))));
    global2 = array<vec4<u32>, 4>();
    let var_2 = Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 4u)], select(select(select(!vec4<bool>(var_1.d, false, var_1.b, var_1.c), !vec4<bool>(false, var_1.c, var_1.d, false), !vec4<bool>(var_1.c, var_1.d, true, true)), !vec4<bool>(var_1.b, var_1.d, false, var_1.b), select(select(vec4<bool>(var_1.d, var_1.d, false, var_1.d), vec4<bool>(false, var_1.d, var_1.b, var_1.b), vec4<bool>(false, true, var_1.c, true)), !vec4<bool>(var_1.d, var_1.c, true, true), var_1.d && var_1.b)), !vec4<bool>(var_1.d, !var_1.c, false, all(vec4<bool>(var_1.b, true, var_1.c, true))), vec4<bool>(true, !(!var_1.c), true, all(vec2<bool>(false, var_1.c)))), !(!select(!vec2<bool>(var_1.b, var_1.c), vec2<bool>(true, false), vec2<bool>(var_1.d, var_1.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-742f, _wgslsmith_f_op_f32(exp2(var_1.e.x)), -608f, _wgslsmith_f_op_f32(round(1230f)))))));
    return var_2.b.zxy;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = false;
    global1 = 622f;
    global0 = array<i32, 23>();
    let var_1 = vec2<f32>(1f, 1f);
    var var_2 = func_3();
    return Struct_1(~abs(reverseBits(~(-1i))), all(func_3()), true, true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1219f, var_1.x, var_1.x) + vec3<f32>(-1043f, -597f, 956f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-123f, _wgslsmith_f_op_f32(1161f * var_1.x), _wgslsmith_f_op_f32(var_1.x + var_1.x)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(685f, var_1.x, -157f), vec3<f32>(var_1.x, 1000f, var_1.x), var_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1000f, -526f)), select(vec3<bool>(var_2.x, true, true), vec3<bool>(false, false, var_0), vec3<bool>(var_2.x, true, var_2.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> vec4<f32> {
    let var_0 = Struct_2(vec4<u32>(22369u, u_input.b.x, reverseBits(4294967295u), 10903u), vec4<bool>(false, !arg_0.d != false, _wgslsmith_f_op_f32(ceil(arg_0.e.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.e.x))), false), vec2<bool>(arg_0.c, arg_0.c || true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.e.x, -617f, arg_0.e.x, arg_0.e.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.x, arg_0.e.x, arg_0.e.x, arg_0.e.x) * vec4<f32>(arg_0.e.x, arg_0.e.x, -239f, arg_0.e.x)))))));
    let var_1 = ~_wgslsmith_mult_i32(0i, arg_0.a);
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(arg_0.e.xx)))))), var_0, arg_1.x, Struct_1(-min(~21087i, -2147483647i), arg_0.d, true, all(func_3()), arg_0.e), func_2(var_0.a.xwx, vec3<u32>(u_input.b.x, 4294967295u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 92613u, 40588u, var_0.a.x)), var_0.a))));
    let var_3 = func_2(~_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, var_0.a.x, u_input.b.x), abs(var_2.b.a.zyw)), var_0.a.zyz), vec3<u32>(reverseBits(reverseBits(countOneBits(u_input.b.x))), 1u, ~(1u << ((var_2.b.a.x & var_0.a.x) % 32u))));
    let var_4 = var_3.d;
    return _wgslsmith_f_op_vec4_f32(var_0.d * var_2.b.d);
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: Struct_2) -> Struct_2 {
    global1 = -1000f;
    var var_0 = arg_1;
    global0 = array<i32, 23>();
    let var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(round(arg_2.a.x)), _wgslsmith_f_op_f32(arg_2.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1067f - arg_2.a.x)))), Struct_2(arg_3.a, arg_3.b, arg_3.b.wy, _wgslsmith_f_op_vec4_f32(func_4(func_2(vec3<u32>(u_input.b.x, 1u, 0u), vec3<u32>(75636u, arg_3.a.x, 1608u) >> (u_input.b % vec3<u32>(32u))), ~(u_input.d.xy >> (vec2<u32>(28017u, 1u) % vec2<u32>(32u)))))), func_2(~(vec3<u32>(0u, 48740u, u_input.b.x) << (arg_3.a.zzz % vec3<u32>(32u))), vec3<u32>(0u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(52751u, 10996u, 27605u), arg_3.a.wxy) % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_3.a.x, u_input.b.x), arg_3.a.zzx), ~countOneBits(46357u))).a, Struct_1(~(~arg_1.x), true, arg_3.c.x, true, _wgslsmith_f_op_vec3_f32(min(arg_3.d.wyz, arg_3.d.zzz))), func_2(vec3<u32>(19433u, _wgslsmith_mod_u32(arg_3.a.x, u_input.b.x), arg_3.a.x), vec3<u32>(0u, ~1u, arg_3.a.x)));
    global2 = array<vec4<u32>, 4>();
    return var_1.b;
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    global0 = array<i32, 23>();
    global1 = 414f;
    var var_0 = _wgslsmith_div_u32(u_input.b.x, arg_0.a.x | ~(u_input.b.x | 0u)) | ~u_input.b.x;
    var var_1 = vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.d.x, _wgslsmith_f_op_f32(-106f * -1096f)))) + _wgslsmith_div_f32(189f, arg_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.d.x))) * _wgslsmith_f_op_f32(247f + arg_0.d.x)) + arg_0.d.x));
    var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(func_2(vec3<u32>(4294967295u, 0u, 10623u) & (arg_0.a.zxy | vec3<u32>(arg_0.a.x, 15658u, u_input.b.x)), ~(arg_0.a.wyz >> (vec3<u32>(u_input.b.x, u_input.b.x, 0u) % vec3<u32>(32u)))).e.x, var_1.x, _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_div_f32(716f, _wgslsmith_f_op_f32(-525f - 803f))))), _wgslsmith_div_vec3_f32(func_1(max(12485i, global0[_wgslsmith_index_u32(u_input.b.x, 23u)]) != 2147483647i, vec3<i32>(-u_input.a, 0i, func_2(vec3<u32>(0u, u_input.b.x, 97011u), vec3<u32>(u_input.b.x, arg_0.a.x, 10612u)).a), Struct_4(vec4<f32>(809f, var_1.x, arg_0.d.x, -1597f), arg_0.b.x), func_1(any(arg_0.c), vec3<i32>(2147483647i, -7032i, 1i), Struct_4(arg_0.d, arg_0.b.x), arg_0)).d.xyy, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, var_1.x, 1000f))), _wgslsmith_div_vec3_f32(func_1(false, vec3<i32>(13532i, global0[_wgslsmith_index_u32(u_input.b.x, 23u)], -2147483647i), Struct_4(arg_0.d, false), Struct_2(vec4<u32>(0u, 0u, 17659u, 0u), vec4<bool>(true, false, arg_0.b.x, true), arg_0.b.yw, vec4<f32>(-334f, 1000f, -833f, var_1.x))).d.zzw, vec3<f32>(var_1.x, -475f, arg_0.d.x)))));
    return Struct_1(1i, !(!((u_input.a < u_input.c) && arg_0.c.x)), arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_2(u_input.b | arg_0.a.wyw, firstLeadingBit(arg_0.a.wyz)).e)));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> i32 {
    var var_0 = vec4<u32>(4294967295u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 28337u), ~u_input.b.xz)), 65680u, u_input.b.x) | ~(~func_1(arg_0.d, u_input.d, Struct_4(vec4<f32>(1536f, 705f, -1000f, -1141f), arg_0.d), func_1(false, u_input.d, Struct_4(vec4<f32>(796f, arg_0.e.x, arg_2, 1242f), false), Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 4u)], vec4<bool>(arg_0.d, arg_0.d, arg_0.b, arg_0.c), vec2<bool>(true, false), vec4<f32>(arg_2, arg_0.e.x, 1645f, 1610f)))).a);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-111f, _wgslsmith_f_op_f32(ceil(arg_0.e.x)), _wgslsmith_f_op_f32(-740f * arg_2), -1257f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -479f, arg_0.e.x, 1209f)) - vec4<f32>(arg_0.e.x, arg_0.e.x, arg_0.e.x, arg_2)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2 + arg_2), func_2(var_0.zyx, var_0.yyx).e.x, arg_0.e.x, -1263f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-806f, 1189f, arg_0.e.x, 166f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1654f, arg_2, arg_2, 288f) + vec4<f32>(129f, arg_0.e.x, arg_2, -1000f))))))));
    var var_2 = var_1.x;
    var_2 = _wgslsmith_f_op_f32(step(-273f, var_1.x));
    let var_3 = func_1(arg_0.c, u_input.d, Struct_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1, var_1)))), all(vec2<bool>(arg_0.c, any(vec2<bool>(arg_0.d, false))))), func_1(!select(true, arg_0.b & arg_0.c, func_2(vec3<u32>(43954u, var_0.x, 4294967295u), u_input.b).b), ~vec3<i32>(-1i ^ u_input.a, ~13112i, arg_0.a), Struct_4(_wgslsmith_f_op_vec4_f32(var_1 - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1000f, -373f, arg_0.e.x))), false != any(vec4<bool>(arg_0.b, arg_0.c, false, false))), func_1(u_input.b.x > ~0u, _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(u_input.d, u_input.d), vec3<i32>(-1i, -12304i, -4171i) >> (vec3<u32>(var_0.x, 18014u, var_0.x) % vec3<u32>(32u))), Struct_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(165f, 846f, -357f, 481f), vec4<f32>(arg_0.e.x, -524f, 740f, var_1.x), vec4<bool>(false, arg_0.b, true, true))), arg_0.b), func_1(any(vec4<bool>(arg_0.d, false, false, arg_0.d)), u_input.d, Struct_4(var_1, arg_0.b), Struct_2(vec4<u32>(u_input.b.x, var_0.x, 94254u, var_0.x), vec4<bool>(arg_0.b, false, arg_0.c, arg_0.b), vec2<bool>(arg_0.d, true), vec4<f32>(-607f, 100f, var_1.x, -920f))))));
    return _wgslsmith_dot_vec3_i32(abs(firstLeadingBit(-_wgslsmith_mult_vec3_i32(u_input.d, u_input.d))), countOneBits(vec3<i32>(_wgslsmith_add_i32(-15328i, 0i), -58976i, 38310i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(724f * -211f);
    var var_0 = global0[_wgslsmith_index_u32(~u_input.b.x, 23u)];
    global2 = array<vec4<u32>, 4>();
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-401f, -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1131f, 2214f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1240f - -974f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1276f + _wgslsmith_f_op_f32(769f + 285f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-662f + -785f))));
    let var_2 = vec3<i32>(func_6(func_5(func_1(false, ~vec3<i32>(u_input.d.x, -24331i, global0[_wgslsmith_index_u32(u_input.b.x, 23u)]), Struct_4(vec4<f32>(var_1.x, -1350f, -499f, var_1.x), false), Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u), vec4<bool>(true, true, true, false), vec2<bool>(false, false), var_1))), _wgslsmith_sub_i32(abs(u_input.d.x) & u_input.d.x, firstTrailingBit(-35660i)), _wgslsmith_f_op_f32(-var_1.x)), abs(func_6(func_5(func_1(true, u_input.d, Struct_4(vec4<f32>(635f, 837f, var_1.x, -1000f), false), Struct_2(vec4<u32>(90298u, 1u, u_input.b.x, 4294967295u), vec4<bool>(true, false, false, true), vec2<bool>(false, false), var_1))), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(0u, 23u)], 1i, -41001i), u_input.d)), var_1.x)), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(~1u, 23u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(~0u), max(min(1u, u_input.b.x), min(u_input.b.x, u_input.b.x))), 23u)]));
    let var_3 = ~vec4<i32>(func_2(~u_input.b, _wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, 16766u), u_input.b)).a, var_2.x, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(4294967295u, u_input.b.x)), 23u)], u_input.d.x), func_5(func_1(false, vec3<i32>(41761i, global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 2147483647i), Struct_4(var_1, true), Struct_2(global2[_wgslsmith_index_u32(50082u, 4u)], vec4<bool>(false, true, true, false), vec2<bool>(false, true), var_1))).a) | _wgslsmith_mult_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 1i, -1i, -2147483647i), ~vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 2147483647i, -57566i, 1i)), vec4<i32>(_wgslsmith_mod_i32(var_2.x, 2739i) | ~(-51292i), func_6(Struct_1(28421i, true, false, true, var_1.xwy), reverseBits(-1i), 2480f), -countOneBits(global0[_wgslsmith_index_u32(26929u, 23u)]), u_input.c));
    var var_4 = func_3().x;
    var_4 = func_1(func_2(~u_input.b, u_input.b).d, u_input.d, Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, 601f, 1000f, -535f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(var_1)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -283f, var_1.x, var_1.x), var_1), -20257i > u_input.c))), all(vec4<bool>(any(vec4<bool>(true, false, true, true)), true, false, any(vec3<bool>(true, false, false))))), Struct_2(~func_1(true, vec3<i32>(var_2.x, -2147483647i, 1i) >> (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), Struct_4(vec4<f32>(var_1.x, var_1.x, 176f, var_1.x), true), func_1(true, vec3<i32>(-30984i, -2147483647i, 1i), Struct_4(vec4<f32>(819f, var_1.x, 1077f, -1490f), false), Struct_2(vec4<u32>(0u, 0u, 4294967295u, 7829u), vec4<bool>(true, true, true, true), vec2<bool>(false, true), vec4<f32>(358f, var_1.x, 833f, -326f)))).a, vec4<bool>(true, true, all(vec4<bool>(false, true, true, true)) || (u_input.b.x < 55247u), func_2(u_input.b, u_input.b).c), vec2<bool>(true, func_2(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 1u, u_input.b.x))).d), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(1i, false, true, true, var_1.wwx), var_2.zx)).x)), _wgslsmith_f_op_f32(f32(-1f) * -246f), var_1.x, _wgslsmith_f_op_f32(var_1.x - var_1.x)))).b.x;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

