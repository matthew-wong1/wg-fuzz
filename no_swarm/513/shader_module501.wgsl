struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 2>;

var<private> global1: array<i32, 32>;

var<private> global2: vec3<bool>;

var<private> global3: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec4<f32>) -> vec2<bool> {
    var var_0 = vec3<u32>(~abs(1u), ~30848u, 61343u);
    global3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1592f - _wgslsmith_f_op_f32(floor(-672f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x + global3.a.x)) * _wgslsmith_f_op_f32(-2180f + _wgslsmith_f_op_f32(arg_2.x - arg_2.x))), -139f, 532f), global3.b, var_0.x >> (var_0.x % 32u), 0u);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-global3.a), ~(abs(vec2<u32>(0u, 1u)) >> ((global3.b ^ vec2<u32>(14288u, 25725u)) % vec2<u32>(32u))) ^ firstLeadingBit(~vec2<u32>(1u, 1u)), global3.d, max(var_0.x, var_0.x));
    global0 = array<vec2<bool>, 2>();
    var var_2 = ~(~4294967295u);
    return !select(vec2<bool>(global2.x, all(select(vec3<bool>(true, global2.x, false), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, false, true)))), !select(!vec2<bool>(global2.x, false), vec2<bool>(false, global2.x), global2.x), false);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = vec2<bool>(false, true && all(func_3(Struct_2(arg_3.x), arg_0, _wgslsmith_f_op_vec4_f32(select(global3.a, global3.a, global2.x)))));
    global3 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-690f, global3.a.x, global3.a.x, -1197f), global3.a)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(355f, -381f, arg_1, arg_1) - vec4<f32>(230f, global3.a.x, 254f, 424f)) + vec4<f32>(arg_1, arg_1, global3.a.x, 704f))), _wgslsmith_f_op_vec4_f32(global3.a - global3.a)), max(vec2<u32>(8475u, arg_2.a), ~u_input.c.xy), ~78820u, ~(~(9550u | _wgslsmith_clamp_u32(arg_3.x, global3.c, arg_2.a))));
    return Struct_2(u_input.c.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> vec4<f32> {
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1142f, 1174f, global3.a.x, global3.a.x), arg_1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1591f, global3.a.x, global3.a.x, -1882f), vec4<f32>(arg_1.a.x, global3.a.x, arg_1.a.x, -264f), global2.x))))), countOneBits(arg_1.b), ~(~1u >> (~_wgslsmith_mod_u32(arg_0.a, 29990u) % 32u)), ((global3.d >> (arg_1.c % 32u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 0u, arg_1.b.x), _wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(arg_1.d, 0u, 8538u), u_input.c)) % 32u)) | arg_0.a);
    global1 = array<i32, 32>();
    var var_0 = Struct_2(~(~1u));
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(682f, _wgslsmith_f_op_f32(-global3.a.x), global3.a.x, _wgslsmith_f_op_f32(round(-985f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1312f, global3.a.x, 1109f, global3.a.x), vec4<f32>(arg_1.a.x, global3.a.x, global3.a.x, -1485f), vec4<bool>(global2.x, true, false, global2.x)))))), select(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 0u), ~vec2<u32>(global3.b.x, 1u)), vec2<u32>(arg_1.c, ~1414u), any(select(select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, global2.x, false), vec3<bool>(false, global2.x, global2.x)), select(vec3<bool>(global2.x, false, true), vec3<bool>(global2.x, true, false), vec3<bool>(global2.x, false, false)), true))), select(47587u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(40883u, arg_0.a, 47148u, arg_1.c), vec4<u32>(0u, 4294967295u, 36656u, 4294967295u)) << (_wgslsmith_add_u32(arg_0.a, arg_1.c) % 32u)), func_3(Struct_2(~1u), ~_wgslsmith_div_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(0u, 32u)], -1i), vec2<i32>(arg_2, global1[_wgslsmith_index_u32(global3.b.x, 32u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(649f, -375f, 565f, global3.a.x))) * _wgslsmith_div_vec4_f32(arg_1.a, vec4<f32>(global3.a.x, global3.a.x, global3.a.x, 1217f)))).x), ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(~u_input.b, u_input.c.x), 21770u));
    var_0 = func_2(vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, 23677i, u_input.a), -1i), _wgslsmith_f_op_f32(f32(-1f) * -872f), arg_0, vec3<u32>(~(~1u), 53775u, u_input.b));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-525f + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-507f)) + _wgslsmith_div_f32(1571f, global3.a.x)), arg_1.a.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.a, arg_1.a) + vec4<f32>(arg_1.a.x, arg_1.a.x, -1060f, arg_1.a.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1580f, 1578f, arg_1.a.x, global3.a.x))))))));
}

fn func_1(arg_0: vec2<bool>) -> vec2<i32> {
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_4(func_2(vec2<i32>(-17413i, -2147483647i), global3.a.x, Struct_2(u_input.e), u_input.c), Struct_1(global3.a, u_input.c.yy, u_input.e, u_input.c.x), 1i))))), _wgslsmith_sub_vec2_u32(firstTrailingBit(~countOneBits(u_input.c.xx)), vec2<u32>(4294967295u, countOneBits(countOneBits(global3.d)))), global3.b.x, global3.d);
    global1 = array<i32, 32>();
    global0 = array<vec2<bool>, 2>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, -206f)))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global3.a.x, 132f), _wgslsmith_f_op_f32(f32(-1f) * -1556f))), _wgslsmith_div_f32(global3.a.x, -802f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global3.a.yy, vec2<f32>(-1000f, 2081f)) - global3.a.zy))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.a.x * var_0.x))))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global3.a.x))))), 321f));
    return _wgslsmith_mod_vec2_i32(~vec2<i32>(abs(-1i), ~1003i) >> ((global3.b & ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(u_input.b, 43600u))) % vec2<u32>(32u)), reverseBits(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, 68989i) & vec2<i32>(global1[_wgslsmith_index_u32(13880u, 32u)], global1[_wgslsmith_index_u32(0u, 32u)]), vec2<i32>(1i, 1i)), vec2<i32>(u_input.a ^ 19940i, _wgslsmith_add_i32(29558i, 1i)))));
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = firstLeadingBit(arg_3.c);
    var var_1 = Struct_2(4294967295u);
    let var_2 = Struct_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(~(12101u & global3.b.x), _wgslsmith_add_u32(~var_1.a, var_1.a)), u_input.c.zx >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 0u), vec2<u32>(0u, global3.d) | arg_3.b) % vec2<u32>(32u)), arg_3.b));
    var var_3 = func_2(_wgslsmith_sub_vec2_i32(arg_2, firstTrailingBit(~(arg_2 >> (vec2<u32>(var_2.a.x, 4294967295u) % vec2<u32>(32u))))), -1413f, func_2(~(-arg_2), -685f, Struct_2(~(~44831u)), firstTrailingBit(max(_wgslsmith_clamp_vec3_u32(u_input.c, u_input.c, vec3<u32>(1u, 0u, var_2.a.x)), u_input.c | u_input.c))), select(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 16019u, global3.b.x), u_input.c), vec3<u32>(arg_3.b.x, 87421u, global3.b.x) ^ u_input.c), vec3<u32>(_wgslsmith_add_u32(global3.b.x, u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 9013u, arg_3.c, 93176u), vec4<u32>(arg_3.d, global3.c, 0u, global3.c)), arg_3.c), select(vec3<u32>(25507u, 86416u, 1u) | vec3<u32>(u_input.e, 65631u, arg_3.d), u_input.c, true)), vec3<u32>(global3.c, var_2.a.x, var_1.a), select(global2.x, true, (0u > var_2.a.x) | arg_1.x)));
    let var_4 = vec3<f32>(global3.a.x, global3.a.x, arg_3.a.x);
    return func_2(abs(arg_2) ^ vec2<i32>(u_input.a, select(~(-32263i), arg_2.x, !arg_1.x)), global3.a.x, func_2(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(arg_2.x, -43475i)), select(select(vec2<i32>(-37387i, 1i), arg_2, vec2<bool>(global2.x, true)), arg_2, true)), _wgslsmith_f_op_f32(-var_4.x), Struct_2(arg_3.d), abs(~vec3<u32>(1u, var_2.a.x, var_1.a))), u_input.c);
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(countOneBits(~vec3<i32>(-40329i, -1i, arg_1)), vec3<i32>(select(16880i, u_input.a, global2.x), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(17265u, 32u)], -17515i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(global3.d, 32u)], arg_1), vec3<i32>(arg_1, global1[_wgslsmith_index_u32(u_input.d, 32u)], global1[_wgslsmith_index_u32(arg_0.a, 32u)]))), vec3<i32>(u_input.a, u_input.a, arg_1));
    global2 = !select(select(vec3<bool>(true, any(vec2<bool>(arg_2.x, false)), false), vec3<bool>(func_3(Struct_2(5376u), vec2<i32>(global1[_wgslsmith_index_u32(0u, 32u)], arg_1), vec4<f32>(-1810f, global3.a.x, global3.a.x, -1294f)).x, global2.x, global2.x), !(0u < u_input.c.x)), vec3<bool>(true && any(vec3<bool>(false, arg_2.x, arg_2.x)), global2.x, !(u_input.e == 0u)), select(select(!vec3<bool>(global2.x, true, true), vec3<bool>(arg_2.x, true, true), select(vec3<bool>(arg_2.x, true, false), vec3<bool>(false, global2.x, true), arg_2.x)), !vec3<bool>(true, global2.x, arg_2.x), (false | arg_2.x) | false));
    global3 = Struct_1(vec4<f32>(-109f, _wgslsmith_f_op_f32(abs(global3.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -123f) - -754f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(800f)) - _wgslsmith_div_f32(146f, 449f)) - global3.a.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(min(4294967295u & global3.b.x, 0u), arg_3.a), u_input.c.zy, vec2<u32>(0u, ~global3.d)), 1u, u_input.e);
    var_0 = firstTrailingBit(-(vec3<i32>(global1[_wgslsmith_index_u32(1u, 32u)], 0i, 2147483647i) >> (~u_input.c % vec3<u32>(32u))) | vec3<i32>(1i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.a, var_0.x), var_0.zx), _wgslsmith_clamp_vec2_i32(vec2<i32>(-8024i, global1[_wgslsmith_index_u32(u_input.c.x, 32u)]), vec2<i32>(arg_1, -2147483647i), var_0.zy)), -_wgslsmith_add_i32(23320i, u_input.a)));
    var var_1 = reverseBits(vec3<i32>(-18909i, _wgslsmith_clamp_i32(2147483647i, ~1i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-7792i, arg_1), ~42569i)), arg_1));
    return Struct_2(~(~reverseBits(34810u) & (_wgslsmith_dot_vec4_u32(vec4<u32>(global3.c, 4294967295u, u_input.d, 0u), vec4<u32>(4294967295u, u_input.c.x, 1u, 0u)) << (u_input.d % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(-4879i, select(vec3<bool>(select(false, false, false), true, global2.x), select(!vec3<bool>(true, global2.x, global2.x), vec3<bool>(false, global2.x, global2.x), u_input.a <= 2707i), !(global1[_wgslsmith_index_u32(21364u, 32u)] == global1[_wgslsmith_index_u32(u_input.e, 32u)])), func_1(select(vec2<bool>(false, false), select(global2.xy, vec2<bool>(true, global2.x), vec2<bool>(true, global2.x)), !vec2<bool>(false, global2.x))), Struct_1(vec4<f32>(global3.a.x, -479f, global3.a.x, global3.a.x), ~vec2<u32>(4294967295u, u_input.d), max(82108u, u_input.b), 85792u)), 0i, vec2<bool>(!global2.x, (_wgslsmith_f_op_f32(abs(global3.a.x)) != 1703f) & (all(vec3<bool>(false, true, global2.x)) | true)), func_2(firstLeadingBit(select(vec2<i32>(global1[_wgslsmith_index_u32(global3.b.x, 32u)], global1[_wgslsmith_index_u32(global3.c, 32u)]) & vec2<i32>(global1[_wgslsmith_index_u32(67281u, 32u)], global1[_wgslsmith_index_u32(52873u, 32u)]), ~vec2<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 32u)], u_input.a), global2.xz)), global3.a.x, func_2(~(vec2<i32>(42225i, global1[_wgslsmith_index_u32(12723u, 32u)]) ^ vec2<i32>(u_input.a, 0i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.a.x * global3.a.x))), func_2(vec2<i32>(-15643i, -18112i), -710f, func_5(0i, vec3<bool>(false, false, true), vec2<i32>(-2147483647i, -17160i), Struct_1(global3.a, vec2<u32>(u_input.b, global3.c), global3.d, 7595u)), u_input.c), ~(~vec3<u32>(0u, u_input.c.x, 53726u))), ~_wgslsmith_div_vec3_u32(abs(vec3<u32>(41419u, 56984u, u_input.c.x)), ~u_input.c)));
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2009f, _wgslsmith_f_op_f32(global3.a.x * 754f), -1441f, _wgslsmith_f_op_f32(global3.a.x * 1259f)))), vec4<f32>(-2453f, 694f, _wgslsmith_f_op_f32(-global3.a.x), -509f))), u_input.c.zx, global3.d, ~u_input.b);
    var var_1 = !(!(!vec3<bool>(global2.x, func_3(Struct_2(0u), vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(var_0.a, 32u)]), global3.a).x, global2.x)));
    global2 = !select(select(vec3<bool>(all(vec3<bool>(var_1.x, var_1.x, var_1.x)), 0u <= var_0.a, false), select(select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, var_1.x, true), var_1.x), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(global2.x, true, global2.x)), var_1.x), !select(!vec3<bool>(global2.x, true, false), select(vec3<bool>(false, false, true), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, var_1.x, false)), select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(global2.x, false, global2.x), var_1.x)), select(!vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, var_0.a >= global3.b.x, global2.x), all(select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(global2.x, true, var_1.x), vec3<bool>(global2.x, true, var_1.x)))));
    global3 = Struct_1(global3.a, firstLeadingBit(~u_input.c.zx), ~(~(~var_0.a)), ~u_input.d);
    global1 = array<i32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, global3.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, global3.a.x, global3.a.x, global3.a.x))) - global3.a)));
}

