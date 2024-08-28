struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<bool, 12> = array<bool, 12>(false, false, true, false, false, true, false, false, false, false, false, true);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    var var_0 = select(_wgslsmith_sub_vec3_i32(countOneBits(select(vec3<i32>(-29388i, 64829i, -54791i), vec3<i32>(4501i, -2147483647i, -55893i), global2[_wgslsmith_index_u32(u_input.a.x, 12u)]) | _wgslsmith_add_vec3_i32(vec3<i32>(12629i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b))), select(vec3<i32>(u_input.b, u_input.b, -51281i), -vec3<i32>(32336i, 2147483647i, u_input.b), all(vec4<bool>(false, global2[_wgslsmith_index_u32(49903u, 12u)], true, true))) >> (~(u_input.a & vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))), vec3<i32>(1i, countOneBits(-_wgslsmith_mult_i32(u_input.b, u_input.b)), select(u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, -2147483647i), vec3<i32>(1i, 21527i, 0i)), vec3<i32>(-1i, u_input.b, -2147483647i) ^ vec3<i32>(u_input.b, u_input.b, u_input.b)), select(!global2[_wgslsmith_index_u32(5786u, 12u)], any(vec3<bool>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(u_input.a.x, 12u)])), true))), vec3<bool>(u_input.a.x != _wgslsmith_sub_u32(u_input.a.x ^ 44712u, 1u), select(false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u))), 12u)], global2[_wgslsmith_index_u32(~max(u_input.a.x, u_input.a.x), 12u)]), global2[_wgslsmith_index_u32(~u_input.a.x, 12u)]));
    let var_1 = ~max(u_input.a.zz, ~(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(17935u, 13383u))));
    var var_2 = u_input.a;
    let var_3 = any(select(!vec4<bool>(global2[_wgslsmith_index_u32(var_1.x, 12u)], true, global2[_wgslsmith_index_u32(max(u_input.a.x, 36362u), 12u)], all(vec3<bool>(global2[_wgslsmith_index_u32(var_2.x, 12u)], true, global2[_wgslsmith_index_u32(125446u, 12u)]))), vec4<bool>(false, select(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.x, u_input.a.x, u_input.a.x), 12u)], true, false), (global2[_wgslsmith_index_u32(u_input.a.x, 12u)] != global2[_wgslsmith_index_u32(u_input.a.x, 12u)]) | global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_2.x, 4294967295u, var_2.x)), 12u)], global2[_wgslsmith_index_u32(var_2.x, 12u)]), !select(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(var_2.x, 12u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(var_2.x, 12u)], false, global2[_wgslsmith_index_u32(0u, 12u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(99703u, 12u)], false, false))));
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-617f))) - _wgslsmith_f_op_f32(695f - -185f)))));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(853f)), _wgslsmith_f_op_f32(step(-359f, 1250f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-146f, -963f), vec2<f32>(-1826f, -809f), vec2<bool>(var_3, false))) + vec2<f32>(2042f, 220f))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-189f, 238f, false)) - _wgslsmith_f_op_f32(abs(389f))), _wgslsmith_f_op_f32(round(592f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-111f, 1729f))), global2[_wgslsmith_index_u32(~firstLeadingBit(4294967295u) | var_2.x, 12u)]));
}

fn func_2() -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 21u)];
    let var_1 = _wgslsmith_f_op_f32(ceil(229f));
    global1 = array<Struct_1, 21>();
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(715f, var_1) * _wgslsmith_f_op_vec2_f32(func_3()));
    global0 = var_2.x;
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1959f + _wgslsmith_f_op_f32(var_1 + var_2.x))), -1355f), global1[_wgslsmith_index_u32(~u_input.a.x, 21u)]);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    let var_0 = ~u_input.a;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.a.x)));
}

fn func_1(arg_0: vec4<bool>) -> vec2<i32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1000f)), 1059f)), -873f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_div_f32(-1000f, 831f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(749f)) + -1306f))), -758f);
    global2 = array<bool, 12>();
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(2488f)))) + _wgslsmith_f_op_f32(-1621f + 1074f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec2<i32>(u_input.b, 1i), func_2(), func_2())) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, 646f))))), _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-var_0.x));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-332f))));
    let var_2 = func_2().b;
    return _wgslsmith_clamp_vec2_i32((select(abs(vec2<i32>(1i, u_input.b)), vec2<i32>(u_input.b, 1i), true) ^ vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(14873i, 2147483647i), vec2<i32>(u_input.b, u_input.b)), u_input.b)) >> (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(~(~28075i), max(_wgslsmith_mult_i32(-5948i, u_input.b), u_input.b)) >> (~vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(-min(vec2<i32>(-8637i, u_input.b), vec2<i32>(u_input.b, u_input.b)) ^ ~max(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -1i)), ~(~vec2<i32>(-1i, u_input.b))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<u32> {
    global2 = array<bool, 12>();
    var var_0 = !all(select(vec2<bool>(arg_0.x, false), select(arg_0, vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], true), arg_0), select(arg_0, arg_0, false))) && any(!select(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec3<bool>(true, true, true), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 12u)], true)));
    global2 = array<bool, 12>();
    let var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, ~(~(-arg_2.x))), arg_2, _wgslsmith_sub_vec2_i32(-vec2<i32>(_wgslsmith_div_i32(u_input.b, 2147483647i), -arg_2.x), max(arg_2, arg_2)));
    var var_2 = -1i;
    return vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(min(max(u_input.a.x, _wgslsmith_mod_u32(1u, u_input.a.x)), 9417u), ~_wgslsmith_clamp_u32(43593u, 58938u, ~u_input.a.x), max(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x))), 0u);
}

fn func_6(arg_0: vec3<u32>, arg_1: bool) -> u32 {
    var var_0 = -vec4<i32>(~(~(-u_input.b)), select(u_input.b, max(2147483647i, 1i), false), (u_input.b ^ ~u_input.b) << (arg_0.x % 32u), u_input.b | -1i);
    var_0 = -vec4<i32>(min(~(-2147483647i), max(-2147483647i, 2147483647i)), -u_input.b >> (1u % 32u), _wgslsmith_dot_vec2_i32(var_0.zy ^ vec2<i32>(1i, u_input.b), max(vec2<i32>(var_0.x, u_input.b), vec2<i32>(1i, -11667i))), -u_input.b) >> (vec4<u32>(4294967295u, ~arg_0.x >> (u_input.a.x % 32u), arg_0.x, _wgslsmith_sub_u32(arg_0.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), u_input.a.x << (6705u % 32u)))) % vec4<u32>(32u));
    var_0 = _wgslsmith_add_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, var_0.x, 0i, u_input.b), vec4<i32>(-42271i, u_input.b, u_input.b, u_input.b)) ^ (vec4<i32>(-28539i, -42779i, -33337i, 36424i) ^ vec4<i32>(-1i, var_0.x, u_input.b, var_0.x)), vec4<i32>(firstLeadingBit(u_input.b), var_0.x, abs(1i), ~1i), !select(vec4<bool>(true, true, arg_1, false), vec4<bool>(true, true, arg_1, true), global2[_wgslsmith_index_u32(56753u, 12u)])), vec4<i32>(0i, 19342i, 27894i, ~abs(u_input.b))) ^ abs(vec4<i32>(0i, 29634i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, var_0.x, 30657i) ^ vec4<i32>(1i, var_0.x, -9571i, u_input.b), vec4<i32>(0i, var_0.x, u_input.b, u_input.b) & vec4<i32>(21707i, var_0.x, 39373i, var_0.x)), u_input.b));
    let var_1 = vec2<bool>(!(!all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], true)) || arg_1), func_2().b.a);
    global0 = _wgslsmith_f_op_f32(280f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2291f * func_2().a.x), 720f) + -502f));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~_wgslsmith_sub_u32(~16913u, u_input.a.x), ~(~_wgslsmith_mod_u32(u_input.a.x, 4294967295u)), 67076u), firstLeadingBit(~(~vec4<u32>(4294967295u, 2434u, 33078u, u_input.a.x)) & vec4<u32>(_wgslsmith_div_u32(7276u, 30629u), _wgslsmith_div_u32(14396u, 16411u), 42662u, arg_0.x | u_input.a.x)));
}

fn func_7(arg_0: u32) -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1259f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -448f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1048f)), func_2().a.x)) * -266f)));
    var var_0 = -700f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-685f + _wgslsmith_f_op_f32(f32(-1f) * -1977f))))));
    var var_2 = _wgslsmith_dot_vec2_i32(max(~(-vec2<i32>(-2147483647i, -28241i)), _wgslsmith_div_vec2_i32(vec2<i32>(reverseBits(-20337i), min(-45495i, u_input.b)), _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.b, -2147483647i), vec2<i32>(u_input.b, 47686i) | vec2<i32>(u_input.b, 14232i)))), vec2<i32>(2147483647i, 1i));
    var var_3 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(arg_0, arg_0, u_input.a.x, 58051u)) & vec4<u32>(57854u, u_input.a.x, ~arg_0, _wgslsmith_div_u32(1u, arg_0)), vec4<u32>(49399u, _wgslsmith_sub_u32(arg_0, ~u_input.a.x), _wgslsmith_div_u32(1u, 1u), ~4294967295u), vec4<u32>(_wgslsmith_sub_u32(9060u, 0u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4799u, u_input.a.x, 4294967295u, 15591u), vec4<u32>(55175u, u_input.a.x, 24239u, arg_0)), vec4<u32>(1u, 4294967295u, 66589u, u_input.a.x) | vec4<u32>(0u, arg_0, 19749u, arg_0)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(2731u, u_input.a.x), u_input.a.xy), 1u)), _wgslsmith_mult_vec4_u32(reverseBits(firstTrailingBit(vec4<u32>(u_input.a.x, 3368u, u_input.a.x, 65794u) ^ vec4<u32>(u_input.a.x, 4294967295u, 11788u, 1u))), _wgslsmith_mod_vec4_u32(vec4<u32>(~4294967295u, max(arg_0, u_input.a.x), countOneBits(u_input.a.x), 63581u), vec4<u32>(~0u, ~1u, ~arg_0, u_input.a.x | 6236u))));
    return _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-258f - 2333f) + _wgslsmith_f_op_f32(-984f * _wgslsmith_f_op_f32(sign(-458f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-463f - -499f)), -1170f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_7(func_6(func_5(select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 12u)], true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec2<bool>(true, false)), Struct_1(true), func_1(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(u_input.a.x, 12u)]))), func_2().b.a)))));
    global0 = -883f;
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~_wgslsmith_div_u32(abs(firstLeadingBit(4294967295u)), u_input.a.x)), 12u)];
    global1 = array<Struct_1, 21>();
    var var_2 = true;
    global1 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~reverseBits(_wgslsmith_clamp_u32(0u, u_input.a.x, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(round(var_0))))), u_input.a.yy, firstLeadingBit(select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xz), firstTrailingBit(reverseBits(u_input.a.yx)), vec2<bool>(true, true))));
}

