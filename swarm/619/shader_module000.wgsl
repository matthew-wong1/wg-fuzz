struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: array<bool, 18> = array<bool, 18>(true, false, true, false, true, true, false, true, true, true, true, false, false, false, false, false, true, true);

var<private> global2: array<u32, 29>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_clamp_vec2_i32(~(vec2<i32>(u_input.a, -1i) & vec2<i32>(-u_input.a, u_input.b)), -vec2<i32>(i32(-1i) * -1i, -1i), vec2<i32>(~11453i | u_input.b, _wgslsmith_sub_i32(25261i, countOneBits(1i))));
    let var_1 = ((~min(61495u, 33877u) ^ global2[_wgslsmith_index_u32(1u, 29u)]) << (_wgslsmith_div_u32(~0u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 29u)], 29u)], 29u)], 0u, global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 29u)], 29u)])), reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(28013u, 29u)], 0u, 1u)))) % 32u)) < _wgslsmith_add_u32(41548u, global2[_wgslsmith_index_u32(1u, 29u)]);
    global0 = array<f32, 25>();
    var var_2 = firstTrailingBit(u_input.a);
    let var_3 = _wgslsmith_clamp_vec4_u32(~(~max(~vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 29u)], global2[_wgslsmith_index_u32(30489u, 29u)], 10392u), vec4<u32>(14592u, global2[_wgslsmith_index_u32(5340u, 29u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 29u)], 1u))), ~reverseBits(~(~vec4<u32>(0u, 32859u, 4294967295u, 96736u))), ~vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(7722u, 29u)], 2805u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12137u, 29u)], 29u)], 6300u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 29u)], 1u, 41426u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19760u, 29u)], 29u)])), min(1u, ~global2[_wgslsmith_index_u32(5018u, 29u)]), 68265u, 1u));
    return ~var_3.x;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec4<i32>) -> u32 {
    var var_0 = i32(-1i) * -(~arg_2.x);
    global2 = array<u32, 29>();
    let var_1 = any(!select(vec3<bool>(!global1[_wgslsmith_index_u32(1u, 18u)], true, any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(51487u, 18u)]))), select(!vec3<bool>(global1[_wgslsmith_index_u32(arg_0, 18u)], global1[_wgslsmith_index_u32(24531u, 18u)], global1[_wgslsmith_index_u32(62748u, 18u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 29u)], 29u)], 18u)], true, true), vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(41452u, 18u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(106987u, 18u)])), false), select(!vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 18u)], false), select(vec3<bool>(global1[_wgslsmith_index_u32(1186u, 18u)], global1[_wgslsmith_index_u32(50599u, 18u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 18u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0, 29u)], 18u)], global1[_wgslsmith_index_u32(0u, 18u)]), vec3<bool>(true, true, false)), true & global1[_wgslsmith_index_u32(0u, 18u)])));
    var var_2 = Struct_3(max(~(-45102i), ~(-(1i >> (0u % 32u)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(34216u, 25u)], global0[_wgslsmith_index_u32(4635u, 25u)])), 1563f))));
    return firstLeadingBit(firstTrailingBit(~arg_0));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    global0 = array<f32, 25>();
    let var_0 = Struct_3(u_input.a);
    let var_1 = Struct_4(vec4<u32>(func_4(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 29u)], 29u)], func_3(vec4<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 18u)], true, false, global1[_wgslsmith_index_u32(38348u, 18u)]))), Struct_3(u_input.a), min(vec4<i32>(-1i, -1i, var_0.a, 2147483647i), vec4<i32>(var_0.a, -76253i, 1i, u_input.b)) << (~vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45359u, 29u)], 29u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(51594u, 29u)], 29u)], global2[_wgslsmith_index_u32(1u, 29u)]) % vec4<u32>(32u))), 29749u, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(_wgslsmith_sub_u32(4294967295u, 35170u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 29u)], 29u)], false), 21794u), 29u)], ~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u | global2[_wgslsmith_index_u32(59942u, 29u)], 29u)], 29u)])), _wgslsmith_add_i32(reverseBits(arg_0.x) << (((20844u << (global2[_wgslsmith_index_u32(1u, 29u)] % 32u)) | global2[_wgslsmith_index_u32(~1u, 29u)]) % 32u), -u_input.a), Struct_3(3207i), -(countOneBits(1i) >> (~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(41049u, 29u)] | 24642u, 29u)] % 32u)));
    global1 = array<bool, 18>();
    global0 = array<f32, 25>();
    return _wgslsmith_mod_u32(~var_1.a.x, 66951u);
}

fn func_5(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_5, arg_3: Struct_3) -> Struct_2 {
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1448f * 426f), -1564f), _wgslsmith_f_op_f32(109f - _wgslsmith_f_op_f32(step(-705f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1, 29u)], 29u)], 25u)] + global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 25u)])))))), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(func_2(_wgslsmith_div_vec2_i32(~vec2<i32>(arg_3.a, -39107i), select(arg_2.b, vec2<i32>(6878i, u_input.b), arg_0.yz))), 25u)]))));
    var var_2 = vec3<bool>(arg_0.x, false, all(vec4<bool>(!arg_2.a, all(!vec4<bool>(arg_2.a, arg_0.x, arg_0.x, false)), !arg_0.x, any(vec3<bool>(arg_0.x, arg_2.a, false)) & global1[_wgslsmith_index_u32(arg_1, 18u)])));
    var_0 = arg_2.b.x;
    let var_3 = Struct_2(arg_3.a);
    return Struct_2(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-20738i, u_input.b, var_3.a, arg_3.a)) & ~(~vec4<i32>(-499i, -3495i, arg_3.a, var_3.a)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, var_3.a, -3227i, u_input.b) | _wgslsmith_add_vec4_i32(vec4<i32>(15110i, u_input.b, 1i, 37878i), vec4<i32>(2147483647i, u_input.b, u_input.a, 2058i)), vec4<i32>(arg_3.a, _wgslsmith_sub_i32(arg_2.b.x, 37787i), 52453i, var_3.a))));
}

fn func_1() -> u32 {
    var var_0 = max(vec3<u32>(~21038u, reverseBits(global2[_wgslsmith_index_u32(45848u, 29u)]), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16528u, 29u)], 29u)]), 29u)]) >> (~vec3<u32>(global2[_wgslsmith_index_u32(5044u, 29u)], global2[_wgslsmith_index_u32(0u, 29u)], 38244u) % vec3<u32>(32u)), vec3<u32>(1u, 1u << (global2[_wgslsmith_index_u32(1u, 29u)] % 32u), firstLeadingBit(global2[_wgslsmith_index_u32(40422u, 29u)])) & firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(35322u, 29u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)], 29u)], 29u)], global2[_wgslsmith_index_u32(36880u, 29u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(92439u, 29u)], 29u)], 29u)], global2[_wgslsmith_index_u32(41300u, 29u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(77010u, 29u)], 29u)], global2[_wgslsmith_index_u32(1031u, 29u)], 0u)))) & ~(~vec3<u32>(~0u, global2[_wgslsmith_index_u32(23318u, 29u)] >> (4294967295u % 32u), 0u << (global2[_wgslsmith_index_u32(0u, 29u)] % 32u)));
    let var_1 = any(!select(vec4<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 29u)], 18u)], global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(var_0.x, 18u)])), !global1[_wgslsmith_index_u32(72656u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], true), !vec4<bool>(false, global1[_wgslsmith_index_u32(37361u, 18u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48159u, 29u)], 29u)], 18u)], global1[_wgslsmith_index_u32(var_0.x, 18u)]), min(u_input.b, -2147483647i) != 1i));
    var var_2 = func_5(vec3<bool>(true, false, (func_2(vec2<i32>(u_input.a, 24518i)) | 0u) > var_0.x), var_0.x ^ global2[_wgslsmith_index_u32(~(~var_0.x), 29u)], Struct_5(any(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, true, true), !var_1)), ~(-vec2<i32>(u_input.a, -2147483647i) >> (~vec2<u32>(143782u, 10649u) % vec2<u32>(32u)))), Struct_3(u_input.b));
    var_2 = func_5(select(select(!(!vec3<bool>(var_1, global1[_wgslsmith_index_u32(4294967295u, 18u)], false)), vec3<bool>(all(vec3<bool>(var_1, global1[_wgslsmith_index_u32(4294967295u, 18u)], var_1)), any(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 18u)])), global1[_wgslsmith_index_u32(var_0.x, 18u)]), select(select(vec3<bool>(var_1, global1[_wgslsmith_index_u32(var_0.x, 18u)], var_1), vec3<bool>(false, var_1, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 18u)]), vec3<bool>(false, false, false)), select(vec3<bool>(var_1, global1[_wgslsmith_index_u32(1u, 18u)], false), vec3<bool>(false, true, false), vec3<bool>(global1[_wgslsmith_index_u32(23021u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], var_1)), select(vec3<bool>(true, var_1, false), vec3<bool>(var_1, var_1, global1[_wgslsmith_index_u32(var_0.x, 18u)]), vec3<bool>(false, var_1, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 29u)], 29u)], 29u)], 18u)])))), select(vec3<bool>(true, var_1, global1[_wgslsmith_index_u32(64790u & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 29u)], 18u)]), vec3<bool>(global1[_wgslsmith_index_u32(~0u, 18u)], var_1 & false, !global1[_wgslsmith_index_u32(var_0.x, 18u)]), !global1[_wgslsmith_index_u32(~33458u, 18u)]), var_1), func_4(~var_0.x, Struct_3(u_input.a), firstLeadingBit(abs(-vec4<i32>(var_2.a, 39669i, -52072i, 2147483647i)))), Struct_5(!(!(13860i == u_input.a)), ~(countOneBits(vec2<i32>(var_2.a, var_2.a)) >> (~vec2<u32>(0u, 18319u) % vec2<u32>(32u)))), Struct_3(1i));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-502f, _wgslsmith_f_op_f32(282f + -112f)));
    return var_0.x;
}

fn func_6(arg_0: bool, arg_1: f32, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(min(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(24266u, 23806u), 29u)], func_3(vec4<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 18u)], true, arg_2.x, false))), 29u)], 25u)]))));
    return func_5(vec3<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(68266u, 29u)], 29u)], 29u)] ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)], global2[_wgslsmith_index_u32(4294967295u, 29u)] | global2[_wgslsmith_index_u32(49114u, 29u)]), 18u)], any(!select(vec3<bool>(arg_2.x, true, true), vec3<bool>(arg_0, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2069u, 29u)], 18u)], arg_2.x), vec3<bool>(arg_0, arg_2.x, true))), any(select(select(vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(100548u, 29u)], 29u)], 18u)], false, arg_0), vec3<bool>(false, true, arg_0), true), vec3<bool>(true, true, true), select(vec3<bool>(arg_0, arg_2.x, arg_0), vec3<bool>(arg_2.x, arg_0, arg_2.x), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 29u)], 29u)], 18u)])))), 0u, Struct_5(true, vec2<i32>(_wgslsmith_mod_i32(33778i, ~1i), u_input.b)), Struct_3(_wgslsmith_add_i32(_wgslsmith_div_i32(-u_input.b, ~u_input.a), firstTrailingBit(1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(global1[_wgslsmith_index_u32(func_1(), 18u)], 555f, vec2<bool>(select(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(5599u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)]), firstTrailingBit(vec2<u32>(79044u, global2[_wgslsmith_index_u32(34654u, 29u)]))), 29u)], 18u)], global0[_wgslsmith_index_u32(7844u, 25u)] >= global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global2[_wgslsmith_index_u32(44457u, 29u)]), 25u)], false), global1[_wgslsmith_index_u32(firstLeadingBit(abs(16916u)), 18u)]));
    global1 = array<bool, 18>();
    global2 = array<u32, 29>();
    let var_1 = vec3<bool>(true, global1[_wgslsmith_index_u32(1u << (~global2[_wgslsmith_index_u32(reverseBits(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)]), 29u)] % 32u), 18u)], true);
    global2 = array<u32, 29>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1219f, -499f, 353f), vec3<f32>(-3310f, -232f, -134f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1574f, 275f), vec3<f32>(1000f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 25u)], -285f)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2057u, 29u)], 29u)], 29u)], 29u)], 25u)], global0[_wgslsmith_index_u32(30718u, 25u)], 1337f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 29u)], 29u)]) ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(40421u, 0u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20180u, 29u)], 29u)], 29u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(23991u, 29u)], 29u)], 29u)], 29u)], 29u)], 29u)])) ^ select(global2[_wgslsmith_index_u32(24830u, 29u)], 94023u, false))), -(i32(-1i) * -var_0.a) << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 29u)] % 32u));
}

