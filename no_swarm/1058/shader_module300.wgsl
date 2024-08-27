struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(Struct_2(Struct_1(i32(-2147483648), 0i), vec4<bool>(true, true, true, true))), Struct_3(Struct_2(Struct_1(-25574i, -15180i), vec4<bool>(true, false, false, false))), Struct_3(Struct_2(Struct_1(45498i, -55650i), vec4<bool>(false, false, true, true))), Struct_3(Struct_2(Struct_1(17713i, -7910i), vec4<bool>(true, true, false, false))), Struct_3(Struct_2(Struct_1(-6596i, -20732i), vec4<bool>(true, false, true, false))), Struct_3(Struct_2(Struct_1(-1i, 1508i), vec4<bool>(true, true, false, true))), Struct_3(Struct_2(Struct_1(1i, -26443i), vec4<bool>(true, false, false, false))), Struct_3(Struct_2(Struct_1(-7262i, 4132i), vec4<bool>(false, false, false, false))), Struct_3(Struct_2(Struct_1(-29867i, 0i), vec4<bool>(true, false, false, true))), Struct_3(Struct_2(Struct_1(-25542i, -1i), vec4<bool>(false, false, false, false))), Struct_3(Struct_2(Struct_1(2765i, -38159i), vec4<bool>(true, true, false, true))), Struct_3(Struct_2(Struct_1(-25949i, 2684i), vec4<bool>(true, false, false, true))), Struct_3(Struct_2(Struct_1(i32(-2147483648), 39998i), vec4<bool>(true, true, false, true))), Struct_3(Struct_2(Struct_1(9326i, i32(-2147483648)), vec4<bool>(false, false, false, true))), Struct_3(Struct_2(Struct_1(-15756i, 62292i), vec4<bool>(false, true, true, true))), Struct_3(Struct_2(Struct_1(1i, 21249i), vec4<bool>(false, false, false, false))), Struct_3(Struct_2(Struct_1(-1i, i32(-2147483648)), vec4<bool>(false, false, false, false))), Struct_3(Struct_2(Struct_1(2147483647i, 2147483647i), vec4<bool>(true, false, true, false))), Struct_3(Struct_2(Struct_1(25635i, 6565i), vec4<bool>(true, true, true, true))), Struct_3(Struct_2(Struct_1(2147483647i, 2147483647i), vec4<bool>(false, false, false, true))), Struct_3(Struct_2(Struct_1(-59417i, 43041i), vec4<bool>(false, false, true, false))), Struct_3(Struct_2(Struct_1(i32(-2147483648), 1i), vec4<bool>(true, true, true, false))), Struct_3(Struct_2(Struct_1(12639i, 23855i), vec4<bool>(false, true, false, false))), Struct_3(Struct_2(Struct_1(-63622i, -10111i), vec4<bool>(false, true, false, true))), Struct_3(Struct_2(Struct_1(2147483647i, 8710i), vec4<bool>(true, false, false, false))), Struct_3(Struct_2(Struct_1(i32(-2147483648), -1i), vec4<bool>(true, false, false, true))), Struct_3(Struct_2(Struct_1(16476i, 29991i), vec4<bool>(true, false, false, true))), Struct_3(Struct_2(Struct_1(23155i, -11216i), vec4<bool>(false, true, true, true))), Struct_3(Struct_2(Struct_1(7313i, 0i), vec4<bool>(false, false, false, false))));

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(42163i, i32(-2147483648)), Struct_1(-63653i, 54860i), Struct_1(-1i, i32(-2147483648)), Struct_1(2147483647i, -14864i), Struct_1(26567i, -21511i), Struct_1(i32(-2147483648), 0i), Struct_1(-65444i, -1i), Struct_1(21398i, 52120i), Struct_1(0i, 71505i), Struct_1(0i, 0i), Struct_1(664i, -1i), Struct_1(18475i, -65326i), Struct_1(-1i, -1i), Struct_1(2147483647i, 8066i), Struct_1(0i, 1i), Struct_1(31221i, 0i), Struct_1(-13904i, i32(-2147483648)), Struct_1(1i, -14792i), Struct_1(7898i, 24893i));

var<private> global2: array<i32, 1>;

var<private> global3: array<i32, 27>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = ~max(-_wgslsmith_sub_i32(u_input.a, -16616i), _wgslsmith_add_i32(i32(-1i) * -1i, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(4294967295u, 1u)], -36010i))) < _wgslsmith_div_i32(-23673i, 1i);
    global0 = array<Struct_3, 29>();
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_3 {
    let var_0 = max(~141i, i32(-1i) * -56467i);
    global2 = array<i32, 1>();
    global0 = array<Struct_3, 29>();
    let var_1 = vec3<u32>(1u, func_3(arg_0.b.x), ~1u ^ ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(66124u, 9084u, 1u), vec3<u32>(1841u, 30920u, 0u)), min(32376u, 1u)));
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 29u)];
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(50840u, 65477u), 29u)];
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    let var_0 = arg_0.a.b.x;
    var var_1 = func_2(func_2(arg_0.a, 238f).a, _wgslsmith_f_op_f32(-220f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-507f, 261f, true))))));
    var var_2 = abs(countOneBits(11835i));
    var var_3 = arg_0.a.b.x;
    var_1 = func_2(func_2(Struct_2(Struct_1(~(-28077i), ~global3[_wgslsmith_index_u32(23195u, 27u)]), vec4<bool>(false, true, all(vec3<bool>(true, true, var_0)), false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-516f, 1725f))))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(869f)) - _wgslsmith_f_op_f32(-653f - 1500f)))));
    return arg_0.a;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec4_u32(~(~vec4<u32>(9730u, arg_3.x, 40485u, arg_3.x)) ^ _wgslsmith_clamp_vec4_u32(~(~arg_3), ~arg_3, reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_3.x, 58888u, 61397u), vec4<u32>(arg_3.x, 45013u, 0u, 38983u)))), select(countOneBits(~_wgslsmith_div_vec4_u32(arg_3, vec4<u32>(arg_3.x, arg_3.x, arg_3.x, 0u))), arg_3, true));
    var var_1 = arg_2.a;
    global1 = array<Struct_1, 19>();
    var var_2 = Struct_3(arg_2.a);
    var var_3 = func_4(func_2(var_2.a, _wgslsmith_f_op_f32(703f * _wgslsmith_f_op_f32(round(-370f)))), arg_0).a;
    return Struct_1(select(72582i, func_4(func_2(Struct_2(var_1.a, vec4<bool>(false, var_2.a.b.x, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -1877f)), arg_0).a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2182f, -381f, arg_2.a.b.x))) == -401f), 8334i);
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    global0 = array<Struct_3, 29>();
    var var_0 = Struct_2(func_5(u_input.b, ~max(max(1i, u_input.a), -global3[_wgslsmith_index_u32(arg_0.x, 27u)]), Struct_3(func_4(func_2(Struct_2(global1[_wgslsmith_index_u32(arg_0.x, 19u)], vec4<bool>(false, false, false, true)), 3017f), -1i)), vec4<u32>(select(4294967295u, ~arg_0.x, func_2(Struct_2(global1[_wgslsmith_index_u32(0u, 19u)], vec4<bool>(false, true, true, false)), 293f).a.b.x), _wgslsmith_add_u32(69385u, 4841u), _wgslsmith_mult_u32(arg_0.x, 50564u) ^ _wgslsmith_add_u32(arg_0.x, 0u), ~(~22944u))), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(731f))) <= _wgslsmith_f_op_f32(round(107f)), true, true, all(vec3<bool>(true, all(vec2<bool>(true, false)), false))));
    global3 = array<i32, 27>();
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(807f, _wgslsmith_f_op_f32(ceil(-378f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1333f))), false)), 1f)));
    let var_2 = !select(var_0.b.x, var_0.b.x, !any(vec3<bool>(var_0.b.x, var_0.b.x, true)));
    return Struct_3(func_4(func_2(func_4(func_2(Struct_2(Struct_1(u_input.b, global3[_wgslsmith_index_u32(1u, 27u)]), vec4<bool>(false, true, false, true)), var_1), _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(arg_0.x, 27u)], var_0.a.a, -1955i)), -652f), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 645i, global3[_wgslsmith_index_u32(4294967295u, 27u)], -2147483647i), vec4<i32>(u_input.b, 2147483647i, var_0.a.b, -2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(10579i, var_0.a.b, 0i, -1i), vec4<i32>(var_0.a.b, global2[_wgslsmith_index_u32(76228u, 1u)], global2[_wgslsmith_index_u32(1u, 1u)], global3[_wgslsmith_index_u32(34054u, 27u)]))) >> (_wgslsmith_add_u32(arg_0.x, arg_0.x << (4294967295u % 32u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(max(vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(11105u, 67351u, 4294967295u)), vec3<u32>(1u, 1u, 1u)), reverseBits(~2764u)), select(~vec2<u32>(1387u, 15583u), vec2<u32>(5621u, reverseBits(0u)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))));
    global3 = array<i32, 27>();
    var var_1 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_mod_i32(select(42279i, 45172i, true), _wgslsmith_dot_vec4_i32(vec4<i32>(-4i, -2147483647i, global3[_wgslsmith_index_u32(45685u, 27u)], var_0.a.a.a), vec4<i32>(-858i, u_input.a, -2147483647i, 0i))) << (max(1u, _wgslsmith_mod_u32(4294967295u, 1u)) % 32u), var_0.a.a.a), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(abs(~select(40269u, 0u, var_0.a.b.x)), 1u)], ~(global3[_wgslsmith_index_u32(1u, 27u)] << (_wgslsmith_mult_u32(1u, 35529u) % 32u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2215f, -1000f, _wgslsmith_f_op_f32(529f * -1000f), -1294f))))));
    var_0 = Struct_3(Struct_2(func_4(global0[_wgslsmith_index_u32(~1u, 29u)], _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 68657i, var_0.a.a.b, global2[_wgslsmith_index_u32(1u, 1u)]) ^ vec4<i32>(global3[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(1u, 1u)], u_input.b, -35790i), vec4<i32>(-1i, var_0.a.a.a, global2[_wgslsmith_index_u32(31268u, 1u)], 2147483647i) & vec4<i32>(var_0.a.a.b, global2[_wgslsmith_index_u32(13983u, 1u)], -1i, var_1.a))).a, !func_2(func_4(global0[_wgslsmith_index_u32(21366u, 29u)], 2147483647i), 2220f).a.b));
    global1 = array<Struct_1, 19>();
    let var_3 = vec2<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(21015u, 10804u, 1u), min(vec3<u32>(0u, 4294967295u, 79110u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec3<bool>(var_0.a.b.x, true, true)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 60352u, 6116u)), vec3<u32>(45291u, 0u, 4294967295u), vec3<u32>(1u, 1u, 1u))), firstTrailingBit(7599u)) >> (vec2<u32>(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(8886u, 148109u, 1u), min(vec3<u32>(56518u, 0u, 0u), vec3<u32>(1u, 37134u, 7468u)))), ~(~4294967295u) >> (1u % 32u)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, 822f, var_2.x, var_2.x), vec4<f32>(1067f, -2492f, var_2.x, var_2.x), var_0.a.b)) * vec4<f32>(-700f, var_2.x, -1035f, var_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(249f, 357f, var_2.x, var_2.x) - vec4<f32>(var_2.x, 316f, var_2.x, 370f)))))));
}

