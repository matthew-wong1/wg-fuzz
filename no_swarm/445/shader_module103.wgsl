struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: array<Struct_3, 11>;

var<private> global2: Struct_2;

var<private> global3: f32 = -782f;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>) -> Struct_3 {
    global2 = Struct_2(global2.a);
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-818f, 1625f, 1573f, 1913f) + vec4<f32>(-397f, -1576f, -1000f, -2130f)) - vec4<f32>(-903f, 1000f, -2301f, 479f))))));
    let var_1 = global1[_wgslsmith_index_u32(u_input.a << (arg_1.x % 32u), 11u)];
    var var_2 = var_1.a.xy;
    let var_3 = countOneBits(_wgslsmith_sub_vec3_i32(~vec3<i32>(_wgslsmith_mult_i32(1i, arg_0.x), -13700i, _wgslsmith_dot_vec4_i32(global2.a, global2.a)), global2.a.yyw));
    return global1[_wgslsmith_index_u32(u_input.a, 11u)];
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec4<i32> {
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    global3 = _wgslsmith_f_op_f32(trunc(-833f));
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-303f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(607f, 757f, arg_1.a.x))))), _wgslsmith_f_op_f32(1f - 1331f), 320f) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -358f), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -314f))), -1238f));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(705f)) - _wgslsmith_f_op_f32(step(3112f, 162f))), var_0.x, any(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], true, arg_1.a.x), arg_1.a.wwz, false)) & select(!arg_1.a.x, 4294967295u == u_input.a, false)))));
    return select(~(~global2.a), ~(vec4<i32>(-3882i, 47766i, 2147483647i, arg_0) >> (arg_1.b % vec4<u32>(32u))), true) << (vec4<u32>(_wgslsmith_mult_u32(u_input.a, ~u_input.a) | _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.b.xx, arg_1.b.zy), firstTrailingBit(vec2<u32>(1u, 0u))), ~(u_input.a ^ u_input.a) << (161308u % 32u), _wgslsmith_add_u32(arg_1.b.x, 52072u), ~(~(~u_input.a))) % vec4<u32>(32u));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1794f * -1246f)), _wgslsmith_f_op_f32(trunc(-355f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-873f, -564f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = Struct_2(global2.a);
    let var_2 = Struct_3(select(vec4<bool>(!all(arg_0.a), !global0[_wgslsmith_index_u32(7309u, 27u)] & arg_0.a.x, any(arg_0.a.wz), arg_0.a.x), vec4<bool>(any(select(arg_0.a, arg_0.a, false)), true, all(arg_0.a.wyx), true), arg_0.a), vec4<u32>(~(~arg_0.b.x << (_wgslsmith_sub_u32(u_input.a, 1u) % 32u)), u_input.a, func_2(~_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1, 11458i), vec2<i32>(arg_1, 85976i)), vec3<u32>(~arg_0.b.x, u_input.a, 7110u)).b.x, firstTrailingBit(0u)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), 814f) - _wgslsmith_f_op_f32(602f * _wgslsmith_f_op_f32(round(989f))))), var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -2460f));
    global1 = array<Struct_3, 11>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_3.x))))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-885f)))))));
}

fn func_1(arg_0: i32) -> vec4<i32> {
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(~global2.a.xy, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(41388u, u_input.a, u_input.a))), _wgslsmith_dot_vec4_i32(~global2.a, func_3(-7870i, global1[_wgslsmith_index_u32(0u, 11u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -704f) + _wgslsmith_f_op_f32(step(1053f, _wgslsmith_f_op_f32(f32(-1f) * -338f)))) - _wgslsmith_f_op_f32(round(-1000f))));
    let var_0 = vec4<f32>(-130f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-142f - _wgslsmith_f_op_f32(abs(-616f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-409f * -184f), _wgslsmith_f_op_f32(func_4(Struct_3(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 27u)], true, true, true), vec4<u32>(u_input.a, 45267u, 0u, u_input.a)), 2147483647i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, -327f)) * 273f));
    let var_1 = i32(-1i) * -1i;
    global3 = var_0.x;
    let var_2 = global2.a;
    return global2.a;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32, arg_3: bool) -> Struct_2 {
    global2 = Struct_2(firstTrailingBit(arg_1.a) | arg_0);
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1736f - 1620f)))), _wgslsmith_f_op_f32(652f + _wgslsmith_f_op_f32(func_4(Struct_3(!vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(3460u, 27u)]), ~vec4<u32>(arg_2, 0u, 1u, 60876u)), firstLeadingBit(1i >> (u_input.a % 32u))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * -1151f))));
    var var_1 = Struct_2(vec4<i32>(_wgslsmith_sub_i32(arg_1.a.x, 497i), arg_1.a.x, arg_0.x, ~(-2147483647i) | (_wgslsmith_mult_i32(global2.a.x, arg_0.x) & max(global2.a.x, 15157i))));
    let var_2 = Struct_3(func_2(-vec2<i32>(-68832i, _wgslsmith_div_i32(-1i, -16446i)), ~vec3<u32>(3170u, 9919u, arg_2) >> (firstTrailingBit(vec3<u32>(11647u, 6881u, 14903u)) % vec3<u32>(32u))).a, ~vec4<u32>(_wgslsmith_add_u32(~u_input.a, 14633u), u_input.a, u_input.a, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_2), vec2<u32>(arg_2, u_input.a)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(1301f + -843f), _wgslsmith_f_op_f32(-1131f * _wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(u_input.a, 11u)], -2147483647i))), 663f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1593f, 982f, _wgslsmith_f_op_f32(abs(var_0.x)), var_0.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1000f, -112f, var_0.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) - vec4<f32>(-287f, var_0.x, -251f, 789f)))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1279f, var_0.x, -536f, var_0.x))))));
    return Struct_2(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-14520i, var_1.a.x), reverseBits(0i), arg_1.a.x, ~arg_1.a.x), ~(~global2.a)), vec4<i32>(_wgslsmith_mod_i32(~global2.a.x, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global2.a.x, var_1.a.x) & vec3<i32>(20358i, arg_0.x, -46295i), reverseBits(vec3<i32>(-440i, arg_0.x, arg_1.a.x))), _wgslsmith_sub_i32(func_1(var_1.a.x).x, abs(0i)), 37411i)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1299f - 370f), -822f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(224f + -178f)), func_2(vec2<i32>(arg_0.a.x, arg_1.a.x) & arg_0.a.wx, ~vec3<u32>(u_input.a, u_input.a, 0u)).a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -146f)))))) + -2511f);
    global2 = arg_1;
    global1 = array<Struct_3, 11>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -145f, 274f, -2316f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(307f, 492f, 177f, -1252f) + vec4<f32>(-1819f, 312f, -2501f, -2445f)), vec4<bool>(global0[_wgslsmith_index_u32(915u, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)]))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-662f, 310f, 386f, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(363f, -1400f, -1000f, -1924f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(131f, -277f, -839f, 469f) * vec4<f32>(-1892f, -504f, -280f, -1204f)) * _wgslsmith_div_vec4_f32(vec4<f32>(1221f, 1659f, 735f, -215f), vec4<f32>(-447f, -931f, -766f, -1219f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1191f), _wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(u_input.a, 11u)], arg_0.a.x)), _wgslsmith_f_op_f32(round(-1000f)), 1000f))));
    var var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(var_0.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.a, vec4<f32>(var_0.a.x, -524f, var_0.a.x, -1986f))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), -559f, -1964f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(939f * 807f) - _wgslsmith_f_op_f32(var_0.a.x - var_1.a.x)))));
}

fn func_7(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>, arg_3: bool) -> Struct_2 {
    global1 = array<Struct_3, 11>();
    var var_0 = Struct_1(arg_0.a);
    var var_1 = -2147483647i;
    global0 = array<bool, 27>();
    var var_2 = Struct_3(select(vec4<bool>(!(var_0.a.x >= arg_0.a.x), _wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x) != var_0.a.x, false, false), select(!(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 27u)], true, true, arg_3)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a & u_input.a, 27u)], arg_2.x | arg_1, true, arg_3), vec4<bool>(true, arg_3, arg_2.x, arg_3)), false), _wgslsmith_add_vec4_u32(func_2(~(vec2<i32>(global2.a.x, 8947i) | vec2<i32>(0i, global2.a.x)), select(func_2(vec2<i32>(global2.a.x, global2.a.x), vec3<u32>(68248u, u_input.a, u_input.a)).b.xxy, vec3<u32>(4294967295u, 70469u, u_input.a), select(arg_1, false, true))).b, vec4<u32>(~(0u | u_input.a), u_input.a, u_input.a, ~14399u)));
    return Struct_2(global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_7(func_6(func_5(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(47849i, global2.a.x, global2.a.x, 36474i)), func_1(-38427i)), Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -4893i, 1i, 0i), vec4<i32>(global2.a.x, global2.a.x, -1i, 0i))), 42488u, select(global2.a.x, 1i, global0[_wgslsmith_index_u32(16532u, 27u)]) <= firstLeadingBit(1i)), func_5(func_5(global2.a, Struct_2(vec4<i32>(-18467i, -10389i, 0i, 1i)), select(u_input.a, u_input.a, false), false).a, Struct_2(firstTrailingBit(global2.a)), u_input.a ^ ~u_input.a, all(vec4<bool>(false, global0[_wgslsmith_index_u32(9762u, 27u)], true, true)))), global0[_wgslsmith_index_u32(0u, 27u)], !select(vec3<bool>(func_2(global2.a.xx, vec3<u32>(4294967295u, u_input.a, u_input.a)).a.x, all(vec4<bool>(global0[_wgslsmith_index_u32(16830u, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)], true, global0[_wgslsmith_index_u32(u_input.a, 27u)])), global0[_wgslsmith_index_u32(1u, 27u)]), select(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 27u)], false, false), global0[_wgslsmith_index_u32(u_input.a, 27u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(37803u, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)]), !global0[_wgslsmith_index_u32(5591u, 27u)]), select(func_2(global2.a.yw, vec3<u32>(90195u, u_input.a, u_input.a)).a.ywx, select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 27u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(58084u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)]), true), global0[_wgslsmith_index_u32(u_input.a, 27u)])), global0[_wgslsmith_index_u32(max(u_input.a, min(_wgslsmith_sub_u32(u_input.a, ~65627u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 39420u, 0u), vec4<u32>(0u, u_input.a, 1u, u_input.a)))), 27u)]);
    let var_0 = -_wgslsmith_div_vec3_i32(-vec3<i32>(12738i, global2.a.x, global2.a.x) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(1u, 8830u, 52662u), vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)), func_7(func_6(Struct_2(global2.a), Struct_2(global2.a)), true, !vec3<bool>(global0[_wgslsmith_index_u32(18701u, 27u)], false, false), global0[_wgslsmith_index_u32(4294967295u, 27u)] & global0[_wgslsmith_index_u32(u_input.a, 27u)]).a.wzz) << (~min(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 20038u), vec3<u32>(11162u, u_input.a, u_input.a)), abs(~vec3<u32>(1u, 4294967295u, u_input.a))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-30112i, vec4<u32>(_wgslsmith_mod_u32(~17370u, ~u_input.a), 1u, _wgslsmith_mult_u32(u_input.a, u_input.a) | u_input.a, firstLeadingBit(u_input.a)) << (vec4<u32>(_wgslsmith_add_u32(reverseBits(u_input.a), u_input.a), 83313u, ~_wgslsmith_add_u32(u_input.a, 22000u), ~u_input.a) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1025f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-616f, 1000f, global0[_wgslsmith_index_u32(u_input.a, 27u)]))), -1847f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(450f, -348f, -104f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1416f, 1205f, -466f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-577f, 855f, -1000f))), true & select(true, global0[_wgslsmith_index_u32(u_input.a, 27u)], false)))), select(~vec3<u32>(~u_input.a, 1u, _wgslsmith_div_u32(0u, 6287u)), vec3<u32>(u_input.a >> (0u % 32u), u_input.a, ~abs(0u)), func_2(min(global2.a.zz, global2.a.zy), ~max(vec3<u32>(0u, u_input.a, 48257u), vec3<u32>(u_input.a, 58459u, 43877u))).a.xwz), 1i);
}

