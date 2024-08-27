struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 3> = array<u32, 3>(4799u, 4294967295u, 28231u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec2<i32>) -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(vec2<bool>(true, true == all(vec4<bool>(false, true, true, true))), vec3<bool>(firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22552u, 3u)], 3u)], 3u)]) >= _wgslsmith_add_u32(24568u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50665u, 3u)], 3u)], 3u)], 3u)], 3u)]), true, !(arg_2.x <= -2147483647i)), u_input.d.yy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1002f, _wgslsmith_f_op_f32(f32(-1f) * -188f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.b.x, arg_1.c.x, true)), arg_1.b.x))), -2147483647i, _wgslsmith_clamp_vec3_i32(~vec3<i32>(arg_2.x, reverseBits(2147483647i), reverseBits(-52386i)), u_input.d, u_input.d), -_wgslsmith_sub_i32(-1i, 19954i) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2481u, 3u)], 3u)], 3u)]), vec3<u32>(37062u, 0u, 17974u)) % 32u));
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(~(~(~0u)), ~(global1[_wgslsmith_index_u32(64825u, 3u)] & global1[_wgslsmith_index_u32(27139u, 3u)]) >> (~0u % 32u)), vec2<u32>(1u, max(firstTrailingBit(countOneBits(4294967295u)), ~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13601u, 3u)], 3u)] & global1[_wgslsmith_index_u32(44000u, 3u)]))));
    var var_2 = select(_wgslsmith_mult_vec3_u32(~vec3<u32>(abs(global1[_wgslsmith_index_u32(var_1.x, 3u)]), ~var_1.x, var_1.x), vec3<u32>(abs(~30171u), 25492u, var_1.x & global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(36212u, 3u)], 3u)])), ~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5764u, 3u)], 3u)], var_1.x), vec3<u32>(0u, global1[_wgslsmith_index_u32(1317u, 3u)], 1u)), ~vec3<u32>(var_1.x, 27597u, 0u)), ~(vec3<u32>(18619u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6949u, 3u)], 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 3u)], 3u)]) >> (vec3<u32>(global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(42368u, 3u)], var_1.x) % vec3<u32>(32u)))), vec3<bool>(true && !(!var_0.a.b.x), var_0.a.a.x, false & !all(vec2<bool>(false, true))));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -320f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(318f)) + _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(trunc(-385f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x + 1274f) - -1461f))), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(-arg_0), any(var_0.a.b.zx)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(451f, -1000f, _wgslsmith_f_op_f32(floor(arg_1.b.x)), arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-791f, 560f)), arg_0, _wgslsmith_f_op_f32(ceil(-352f)), _wgslsmith_f_op_f32(max(arg_1.b.x, 837f)))), !select(!vec4<bool>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, false), vec4<bool>(false, false, true, true), false))));
    var_2 = (vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_2.x, 22667u, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, 1u, var_1.x), vec3<u32>(11396u, var_2.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25067u, 3u)], 3u)]))), 9448u, 0u) << (_wgslsmith_mod_vec3_u32(firstLeadingBit(~vec3<u32>(43119u, var_2.x, var_1.x)), vec3<u32>(4294967295u, _wgslsmith_mod_u32(4294967295u, 5487u), global1[_wgslsmith_index_u32(59458u, 3u)])) % vec3<u32>(32u))) ^ _wgslsmith_div_vec3_u32(vec3<u32>(select(var_2.x, 1u, true), _wgslsmith_mult_u32(4294967295u, ~var_1.x), ~firstLeadingBit(global1[_wgslsmith_index_u32(0u, 3u)])), min(min(min(vec3<u32>(4294967295u, var_2.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.x, 3u)], 3u)]), vec3<u32>(var_2.x, 61950u, 0u)), ~vec3<u32>(global1[_wgslsmith_index_u32(var_1.x, 3u)], 1u, 4294967295u)), min(vec3<u32>(0u, var_2.x, 20403u), vec3<u32>(var_2.x, 49052u, 37179u))));
    return var_0.a.a;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> i32 {
    var var_0 = Struct_2(Struct_1(!func_3(_wgslsmith_f_op_f32(ceil(1840f)), Struct_4(-2147483647i, vec2<f32>(-1202f, -223f), vec2<f32>(1076f, 775f)), u_input.d.yz ^ u_input.d.zy), arg_0, u_input.d.zy), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1968f)))), _wgslsmith_f_op_f32(floor(210f))), _wgslsmith_mult_i32(-1i, _wgslsmith_mult_i32(-1i, arg_1)), vec3<i32>(u_input.a, _wgslsmith_sub_i32(~(arg_1 & arg_1), ~2147483647i), ~(-52553i)), firstTrailingBit(abs(1i)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-965f, _wgslsmith_f_op_f32(-728f - _wgslsmith_f_op_f32(floor(var_0.b.x))))) * 1759f), 563f);
    var var_2 = Struct_5(firstTrailingBit(~firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(16027u, 3u)], 89879u, global1[_wgslsmith_index_u32(39806u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)])) | _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18752u, 3u)], 3u)], 3u)], 14184u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28074u, 3u)], 3u)], 3u)], 3u)])), vec4<u32>(global1[_wgslsmith_index_u32(1u, 3u)], 8098u, global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19232u, 3u)], 3u)], 3u)], 3u)]))), Struct_3(reverseBits(var_0.d.x), Struct_1(vec2<bool>(var_0.a.a.x, var_0.a.a.x), vec3<bool>(select(true, false, var_0.a.b.x), any(vec4<bool>(var_0.a.b.x, true, true, false)), any(var_0.a.b)), ~(~var_0.a.c)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1478f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_1)), var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), var_0.a));
    var var_3 = var_0.c;
    var var_4 = var_2.a.x;
    return _wgslsmith_mult_i32(firstLeadingBit(select(-1i, -2147483647i, arg_0.x)), abs(~(-1i | max(1i, u_input.c))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = countOneBits(~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)], 1u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39828u, 3u)], 3u)], 3u)], 3u)], 3u)], 3u)])), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25977u, 3u)], 3u)], 4294967295u)), 3u)], ~firstLeadingBit(47970u)));
    let var_1 = 0u ^ abs(_wgslsmith_sub_u32(firstLeadingBit(1u), var_0));
    global1 = array<u32, 3>();
    var var_2 = _wgslsmith_mod_u32(firstLeadingBit(var_0), var_1);
    var var_3 = vec3<i32>(_wgslsmith_mult_i32(-3309i, ~abs(-1i)), func_2(vec3<bool>(false, ~u_input.e <= _wgslsmith_mult_i32(-1i, 2147483647i), false), 45894i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, min(u_input.e, u_input.a)) ^ -2147483647i, i32(-1i) * -21801i));
    return Struct_2(Struct_1(vec2<bool>(true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), vec2<i32>(-21631i << (_wgslsmith_mod_u32(1u, 4294967295u) % 32u), firstLeadingBit(var_3.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -758f)), _wgslsmith_div_vec3_f32(vec3<f32>(1034f, arg_0.x, arg_0.x), vec3<f32>(-638f, arg_0.x, 368f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, 915f, -109f), vec3<f32>(385f, -1072f, arg_0.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-693f, -1000f, arg_0.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1709f, -780f, 781f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(761f, 1261f, 305f), vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))))), ~_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_sub_i32(1i, 1i)), -35803i), vec3<i32>(~7027i, max(u_input.c, -(i32(-1i) * -2147483647i)), var_3.x), max(_wgslsmith_clamp_i32(35559i, _wgslsmith_mod_i32(u_input.b, -2147483647i >> (var_1 % 32u)), -(~2147483647i)), 2147483647i));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: bool) -> bool {
    var var_0 = Struct_3(-4701i, Struct_1(vec2<bool>((arg_1.a.b.x || arg_3) | (arg_3 & arg_1.a.b.x), true), arg_1.a.b, firstLeadingBit(firstLeadingBit(vec2<i32>(0i, 37813i)))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1380f)))), arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1118f, -304f))))), _wgslsmith_f_op_f32(-func_1(vec2<f32>(750f, arg_0.x)).b.x)), arg_1.a);
    var var_1 = arg_3;
    global0 = -(~min(u_input.a << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)] % 32u), min(var_0.a, -1i))) << ((~reverseBits(1u) ^ firstTrailingBit(global1[_wgslsmith_index_u32(~firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)]), 3u)])) % 32u);
    let var_2 = firstLeadingBit(~abs(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)], 7006u, 11145u, 0u) | vec4<u32>(global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57872u, 3u)], 3u)], global1[_wgslsmith_index_u32(58499u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(108u, 3u)], 3u)], 3u)])));
    let var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(arg_1.e << (32150u % 32u), -u_input.a), ~_wgslsmith_dot_vec3_i32(-arg_1.d, max(vec3<i32>(arg_1.e, u_input.d.x, var_0.b.c.x), arg_1.d)), firstTrailingBit(u_input.c) | u_input.e), vec3<i32>(2147483647i, ~_wgslsmith_mod_i32(-22732i, 2298i), max(abs(arg_1.c), reverseBits(2147483647i))) >> (min(max(vec3<u32>(15827u, 1u, 27973u), ~var_2.xxw), ~vec3<u32>(global1[_wgslsmith_index_u32(51488u, 3u)], 0u, global1[_wgslsmith_index_u32(1u, 3u)])) % vec3<u32>(32u)));
    return global1[_wgslsmith_index_u32(16894u, 3u)] < global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(abs(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2.x, global1[_wgslsmith_index_u32(var_2.x, 3u)]), 3u)]), 39718u), ~(~(~global1[_wgslsmith_index_u32(38490u, 3u)]))), 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 3>();
    var var_0 = vec2<bool>(true, true);
    let var_1 = i32(-1i) * -1i;
    var_0 = vec2<bool>(false, true);
    var var_2 = 25423u;
    var var_3 = vec2<bool>(!(func_4(vec3<f32>(-342f, -251f, -996f), func_1(vec2<f32>(1493f, -434f)), Struct_4(u_input.c, vec2<f32>(860f, -1253f), vec2<f32>(1390f, -892f)), any(vec2<bool>(var_0.x, var_0.x))) | true), var_0.x);
    var var_4 = Struct_5(max(firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(39292u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27602u, 3u)], 3u)], 4294967295u, 35719u)) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(14189u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)], 3u)], 55741u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)]), ~vec4<u32>(global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(19503u, 3u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)], 1u), abs(vec4<u32>(4294967295u, 52658u, 51879u, global1[_wgslsmith_index_u32(49945u, 3u)]))) % vec4<u32>(32u)), ~(~(~vec4<u32>(1u, global1[_wgslsmith_index_u32(0u, 3u)], 44122u, 56672u)))), Struct_3(_wgslsmith_div_i32(2147483647i, ~var_1), Struct_1(vec2<bool>(false, all(vec2<bool>(true, var_3.x))), select(func_1(vec2<f32>(999f, -806f)).a.b, vec3<bool>(var_3.x, false, true), func_1(vec2<f32>(-2254f, -1112f)).a.b), u_input.d.yz), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-699f, 1425f, -722f, -1864f))), vec4<f32>(_wgslsmith_f_op_f32(max(-650f, 163f)), _wgslsmith_f_op_f32(129f + -725f), _wgslsmith_div_f32(167f, 162f), _wgslsmith_f_op_f32(select(719f, 606f, true)))), Struct_1(func_3(_wgslsmith_f_op_f32(max(-2291f, 1000f)), Struct_4(2147483647i, vec2<f32>(1088f, -1357f), vec2<f32>(-413f, -234f)), u_input.d.zx), vec3<bool>(true, !var_0.x, var_0.x), firstTrailingBit(u_input.d.zz))));
    let var_5 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~abs(vec3<i32>(var_5.a, u_input.a, var_1)))), ~var_4.a.xy, 2147483647i);
}

