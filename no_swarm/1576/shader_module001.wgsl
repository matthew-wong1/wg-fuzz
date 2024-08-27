struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 11>;

var<private> global1: vec4<i32> = vec4<i32>(10353i, 28648i, 0i, 9265i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(countOneBits(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, 28977i, global1.x, global1.x), ~vec4<i32>(39768i, -2147483647i, global1.x, global1.x)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1706f, 917f), vec2<f32>(1587f, -1060f))) * vec2<f32>(-2038f, -1836f)))))), 1u << (1u % 32u), ~_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, 40503u) & _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1192u))), u_input.a);
    var var_1 = Struct_3(Struct_2(true, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b), vec2<f32>(1638f, -1000f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2408f, -319f))))), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(var_0.a.x, -2147483647i, var_0.a.x)), select(vec3<i32>(var_0.a.x, -1i, -56417i), global1.wzw, vec3<bool>(false, false, true))) >> (firstTrailingBit(~global0[_wgslsmith_index_u32(var_0.e, 11u)]) % vec3<u32>(32u)), Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.b))), ~_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(var_0.e, 11u)], vec3<u32>(1u, 0u, 0u)), _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(~69020u, 11u)], ~vec3<u32>(var_0.d, 6171u, var_0.e)), u_input.a)), _wgslsmith_f_op_vec2_f32(-var_0.b), var_0.a.wy, _wgslsmith_f_op_f32(-1112f + var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(283f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1156f))));
    var var_2 = vec4<bool>(false, var_1.a.a, any(vec2<bool>(!all(vec3<bool>(true, true, true)), (var_0.a.x << (1u % 32u)) >= -2147483647i)), (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.d.d, 24789u, u_input.a, 0u), vec4<u32>(var_1.a.d.d, 4294967295u, var_0.e, var_0.d)), 7354u) >= 53859u) || (var_1.a.a || !any(vec2<bool>(var_1.a.a, var_1.a.a))));
    let var_3 = ~var_1.a.d.c;
    var_1 = Struct_3(var_1.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.b)))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1037f), _wgslsmith_f_op_f32(var_0.b.x + -354f), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_1.b.x)), 207f)))), _wgslsmith_mult_vec2_i32(-var_0.a.zx, vec2<i32>(var_0.a.x, 1i << (var_3 % 32u))) >> (~vec2<u32>(var_1.a.d.d, min(u_input.a, u_input.a)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(round(var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, var_0.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_0.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d - var_0.b.x)))));
    return _wgslsmith_mod_u32(_wgslsmith_div_u32(6248u, var_0.e) >> (_wgslsmith_mult_u32(15555u, ~var_0.d) % 32u), _wgslsmith_add_u32(_wgslsmith_mod_u32(~var_3, var_0.d), firstLeadingBit(~(~0u))));
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<u32>, 11>();
    global1 = ~((~vec4<i32>(-1i, global1.x, global1.x, 27363i) << (~(~vec4<u32>(0u, u_input.a, 4294967295u, 14101u)) % vec4<u32>(32u))) ^ ~_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global1.x, 18711i, 2147483647i), vec4<i32>(global1.x, global1.x, -1i, 1i)), ~vec4<i32>(global1.x, global1.x, global1.x, 58714i)));
    global1 = abs(firstTrailingBit(vec4<i32>(-16189i, global1.x, global1.x, global1.x)));
    let var_0 = 2838u;
    global0 = array<vec3<u32>, 11>();
    return Struct_1(~(-(~(-vec4<i32>(42876i, -1i, 0i, 2147483647i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-539f, -139f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-377f, -721f) - vec2<f32>(797f, 279f))))), 51669u, _wgslsmith_sub_u32(1u, u_input.a) & (countOneBits(select(389u, u_input.a, false)) | 4294967295u), func_3());
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global1 = arg_0.d.a;
    var var_0 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), arg_0.d.b.x, !arg_0.a));
    let var_1 = 22543u;
    global0 = array<vec3<u32>, 11>();
    return Struct_2(false, vec2<f32>(745f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.b.x) - -822f))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(abs(35988i), arg_0.c.x, arg_0.d.a.x), vec3<i32>(_wgslsmith_dot_vec4_i32(arg_0.d.a, func_2().a), -1i, ~global1.x), ~abs(vec3<i32>(52693i, -46653i, -3141i) >> (global0[_wgslsmith_index_u32(u_input.a, 11u)] % vec3<u32>(32u)))), func_2());
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    global0 = array<vec3<u32>, 11>();
    let var_0 = _wgslsmith_mult_i32(2147483647i, min(arg_1.d.a.x, arg_1.c.x));
    let var_1 = select(select(select(vec3<bool>(!arg_1.a, !arg_2.a.a, any(vec4<bool>(arg_1.a, false, false, arg_2.a.a))), !select(vec3<bool>(false, true, arg_1.a), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), !(!vec3<bool>(false, arg_1.a, arg_2.a.a))), select(select(!vec3<bool>(true, arg_2.a.a, arg_2.a.a), !vec3<bool>(arg_1.a, false, arg_2.a.a), vec3<bool>(arg_2.a.a, true, true)), vec3<bool>(false, !arg_2.a.a, !arg_1.a), vec3<bool>(true, arg_1.a, 216f >= arg_2.a.b.x)), select(vec3<bool>(func_4(Struct_2(arg_1.a, arg_1.b, global1.xyw, Struct_1(vec4<i32>(-2147483647i, 12743i, -2147483647i, 2147483647i), arg_2.a.d.b, arg_1.d.d, u_input.a, 1u))).a, arg_1.a, any(vec4<bool>(true, arg_1.a, false, false))), !select(vec3<bool>(arg_2.a.a, false, true), vec3<bool>(arg_1.a, true, arg_1.a), arg_1.a), vec3<bool>(arg_1.d.d <= arg_1.d.d, true, all(vec4<bool>(arg_1.a, true, true, false))))), select(!(!vec3<bool>(arg_1.a, arg_2.a.a, arg_2.a.a)), select(!(!vec3<bool>(true, arg_2.a.a, arg_2.a.a)), vec3<bool>(!arg_1.a, !arg_1.a, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false)), !vec3<bool>(false, func_4(arg_2.a).a, arg_2.a.a)), vec3<bool>(!(1u >= max(u_input.a, 72259u)), arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.d.b.x, arg_2.e)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.e - 2011f) - arg_1.b.x)));
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-2147483647i, global1.x), _wgslsmith_dot_vec2_i32(countOneBits(-vec2<i32>(1i, 0i)), vec2<i32>(global1.x, arg_1.d.a.x)), abs(-1i)), arg_1.d.a.www);
    return func_4(arg_2.a).d;
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(global1.x, -(global1.x | global1.x)), 1i), _wgslsmith_mod_i32(max(_wgslsmith_clamp_i32(28962i >> (0u % 32u), 1i, _wgslsmith_clamp_i32(global1.x, 0i, 31123i)), 1290i), -3019i ^ ~global1.x), i32(-1i) * -4835i, ~(-1i));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-566f)))), -1260f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-867f, 1046f)) + 153f))))));
    global1 = ~abs(var_0);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(step(-1176f, 478f)), -1000f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(1121f, var_1.x, var_1.x), vec3<f32>(-2034f, var_1.x, var_1.x)))))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -891f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1103f, 559f, var_1.x), vec3<f32>(-116f, var_1.x, var_1.x), vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(962f, -1447f, -1647f)))) - vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -903f)))));
    var var_2 = 1u >> (u_input.a % 32u);
    return func_5(var_1.x, func_4(Struct_2(false, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-480f, var_1.x), _wgslsmith_div_vec2_f32(var_1.zy, var_1.zy))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -26365i, 14362i), -global1.xww, vec3<i32>(2147483647i, global1.x, global1.x) >> (global0[_wgslsmith_index_u32(u_input.a, 11u)] % vec3<u32>(32u))), func_2())), Struct_3(func_4(func_4(Struct_2(false, vec2<f32>(-1211f, -799f), var_0.xwy, Struct_1(var_0, var_1.zx, 4294967295u, u_input.a, 1u)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(var_1.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -615f))))), (vec2<i32>(-1i) * -vec2<i32>(20184i, 0i)) | firstLeadingBit(-vec2<i32>(global1.x, -28847i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(func_4(Struct_2(true, var_1.xx, global1.yxx, Struct_1(vec4<i32>(var_0.x, global1.x, global1.x, 0i), vec2<f32>(var_1.x, var_1.x), u_input.a, u_input.a, 1u))).d.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f) - _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(var_1.x + var_1.x)))));
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: vec2<u32>) -> Struct_3 {
    global1 = select(~(arg_1.d.a << (_wgslsmith_mult_vec4_u32(vec4<u32>(1522u, 4294967295u, arg_3.x, 1u) >> (vec4<u32>(0u, arg_3.x, 71733u, arg_1.d.d) % vec4<u32>(32u)), ~vec4<u32>(22073u, u_input.a, 84746u, arg_3.x)) % vec4<u32>(32u))), arg_1.d.a, true);
    let var_0 = Struct_1(vec4<i32>(arg_1.d.a.x, 0i, arg_1.c.x, _wgslsmith_div_i32(-_wgslsmith_mult_i32(arg_1.c.x, arg_1.d.a.x), i32(-1i) * -global1.x)), arg_1.b, ~(firstTrailingBit(1u) << (func_1().d % 32u)), 1u, arg_1.d.e);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2().b.x * arg_1.d.b.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(452f * arg_0)))));
    var var_2 = vec4<bool>(all(vec3<bool>(arg_1.a, !(arg_2 == false), all(select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(arg_1.a, false), arg_1.a)))), ~1u < (1u << (var_0.d % 32u)), true, arg_1.a);
    var var_3 = vec2<i32>(func_5(func_4(func_4(func_4(arg_1))).b.x, Struct_2(!var_2.x & arg_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-445f, 314f) + arg_1.d.b)), firstLeadingBit(abs(var_0.a.wxz)), arg_1.d), Struct_3(func_4(arg_1), var_0.b, _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.x, var_0.a.x), global1.zw), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, global1.x), vec2<i32>(global1.x, arg_1.c.x))), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(select(181f, _wgslsmith_f_op_f32(f32(-1f) * -975f), select(arg_2, false, false))))).a.x, ~select(global1.x, arg_1.d.a.x, all(var_2.zyx)));
    return Struct_3(func_4(func_4(arg_1)), func_4(arg_1).d.b, vec2<i32>(~20706i, var_3.x), var_1, _wgslsmith_div_f32(var_1, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_f32(abs(707f)), Struct_2(!all(vec4<bool>(false, false, true, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1770f, _wgslsmith_f_op_f32(655f - -627f)) * vec2<f32>(-218f, -1456f)), _wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, -1i, 12928i), abs(vec3<i32>(global1.x, global1.x, global1.x))), func_1()), select(true, !(true == select(false, false, false)), true), select(select(~vec2<u32>(51694u, u_input.a), reverseBits(~vec2<u32>(u_input.a, u_input.a)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), global1.x == -1i)), select(~vec2<u32>(12406u, u_input.a), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, 4294967295u)), true), !(global1.x < ~global1.x)));
    var var_1 = var_0.a.d;
    let var_2 = func_6(_wgslsmith_f_op_f32(-var_0.e), Struct_2(!var_0.a.a, _wgslsmith_f_op_vec2_f32(ceil(func_6(_wgslsmith_f_op_f32(abs(-1000f)), func_6(var_1.b.x, Struct_2(false, vec2<f32>(695f, var_0.a.b.x), var_0.a.d.a.yzy, Struct_1(var_1.a, vec2<f32>(var_0.e, 2032f), u_input.a, var_0.a.d.c, var_1.e)), var_0.a.a, vec2<u32>(var_1.c, var_0.a.d.c)).a, 593f != var_0.e, vec2<u32>(4294967295u, var_0.a.d.d) ^ vec2<u32>(u_input.a, u_input.a)).a.b)), global1.wzw, Struct_1(~(-vec4<i32>(-22627i, 2147483647i, global1.x, -2147483647i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1329f, var_1.b.x)), 63916u, ~(u_input.a | u_input.a), var_1.c)), var_0.a.a, ~vec2<u32>(u_input.a, func_2().e)).a.d;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -303f);
    var var_4 = func_4(Struct_2(var_0.a.d.c < var_2.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(836f, var_1.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b) * _wgslsmith_f_op_vec2_f32(var_0.b - var_1.b)), _wgslsmith_f_op_f32(2731f * var_0.a.d.b.x) == _wgslsmith_f_op_f32(var_2.b.x - -116f))), var_1.a.yyy, var_0.a.d));
    let var_5 = Struct_3(func_6(var_2.b.x, var_0.a, false, abs(vec2<u32>(func_4(Struct_2(false, vec2<f32>(var_4.d.b.x, 362f), vec3<i32>(var_2.a.x, var_1.a.x, var_4.c.x), var_0.a.d)).d.d, 38423u))).a, vec2<f32>(-567f, _wgslsmith_f_op_f32(trunc(1326f))), min(var_0.c, var_0.a.c.yy >> (_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_0.a.d.e), firstTrailingBit(vec2<u32>(var_0.a.d.c, var_2.e))) % vec2<u32>(32u))), -1489f, 201f);
    let x = u_input.a;
    s_output = StorageBuffer(-abs(13779i), -1515f, ~var_5.a.d.a.xwy, _wgslsmith_f_op_f32(-var_1.b.x));
}

