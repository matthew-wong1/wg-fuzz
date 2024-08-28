struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: Struct_2,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(775f, -1000f, -1848f, -1406f, 1318f, -1387f, -2043f, -1446f, 298f, -2019f, 1395f, 542f, 2198f, -1000f, 1928f, 484f, 1314f, -1677f, -514f, -977f, 682f, -2749f, 1012f, -665f);

var<private> global1: f32 = 827f;

var<private> global2: array<Struct_3, 10>;

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<u32>(1u, 5062u), -982f, false, 1u), Struct_1(vec2<u32>(1u, 1965u), -1315f, true, 6409u), Struct_1(vec2<u32>(31074u, 9859u), 117f, false, 18462u), Struct_1(vec2<u32>(0u, 4294967295u), -1684f, true, 1u), Struct_1(vec2<u32>(1u, 17663u), 1025f, true, 107925u), Struct_1(vec2<u32>(4294967295u, 1u), -1000f, false, 57182u), Struct_1(vec2<u32>(4294967295u, 42668u), -1590f, true, 0u), Struct_1(vec2<u32>(17706u, 65737u), 548f, false, 40100u), Struct_1(vec2<u32>(0u, 4294967295u), -209f, false, 70605u), Struct_1(vec2<u32>(4294967295u, 21929u), 1781f, false, 44062u), Struct_1(vec2<u32>(107585u, 0u), 931f, false, 0u));

var<private> global4: array<u32, 2> = array<u32, 2>(0u, 4294967295u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    global2 = array<Struct_3, 10>();
    let var_0 = arg_0.b.x;
    var var_1 = _wgslsmith_f_op_f32(-arg_0.c.b.b);
    let var_2 = true;
    var var_3 = select(!(!vec3<bool>(all(vec4<bool>(var_2, false, true, arg_0.a.x)), true, false)), !select(!(!vec3<bool>(var_2, false, arg_0.b.x)), select(select(vec3<bool>(var_2, var_2, true), vec3<bool>(true, true, var_0), var_0), select(vec3<bool>(var_0, true, arg_0.e.b.c), vec3<bool>(false, true, false), vec3<bool>(true, arg_0.b.x, var_2)), any(vec2<bool>(var_2, false))), !(!vec3<bool>(arg_0.e.b.c, var_0, true))), arg_0.a.x);
    return var_3.xz;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = Struct_3(select(!select(select(vec2<bool>(arg_1.b.c, true), vec2<bool>(arg_1.b.c, arg_0.c), false), func_3(global2[_wgslsmith_index_u32(u_input.a, 10u)]), select(vec2<bool>(true, arg_0.c), vec2<bool>(true, arg_0.c), arg_0.c)), vec2<bool>(!(arg_1.b.c || true), !(arg_1.b.c & arg_0.c)), vec2<bool>(arg_1.a <= _wgslsmith_mod_i32(21988i, arg_1.a), select(arg_0.c || arg_1.b.c, arg_0.c, all(vec3<bool>(arg_1.b.c, true, true))))), !vec2<bool>(arg_0.c, _wgslsmith_add_u32(101456u, arg_0.a.x) < ~23606u), Struct_2(~select(38177i, arg_1.a >> (global4[_wgslsmith_index_u32(0u, 2u)] % 32u), 42260u <= u_input.a), Struct_1(~(~vec2<u32>(0u, 59822u)), arg_0.b, arg_0.c, ~global4[_wgslsmith_index_u32(4294967295u, 2u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1088f - 951f), _wgslsmith_div_f32(167f, -1278f), _wgslsmith_f_op_f32(exp2(arg_1.b.b))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(arg_1.b.a.x, 24u)], -1000f, arg_0.b)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1327f, global0[_wgslsmith_index_u32(arg_0.a.x, 24u)], -336f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_1.b.b, arg_0.b))), vec3<bool>(select(true, arg_1.b.c, arg_0.c), true, any(vec4<bool>(false, arg_1.b.c, arg_0.c, false)))))), arg_1);
    let var_1 = reverseBits(var_0.e.a);
    global3 = array<Struct_1, 11>();
    let var_2 = ~_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(arg_0.d, 2u)], global4[_wgslsmith_index_u32(86367u, 2u)]);
    var var_3 = true;
    return ~vec2<u32>(~(arg_0.d >> (58556u % 32u)), countOneBits(u_input.a)) >> (vec2<u32>(_wgslsmith_div_u32(arg_1.b.d, abs(_wgslsmith_mod_u32(var_0.c.b.d, arg_0.a.x))), arg_0.a.x) % vec2<u32>(32u));
}

fn func_1() -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 80125u), func_2(Struct_1(~vec2<u32>(0u, 0u), global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(min(13138u, 30235u), 2u)], 24u)], true, 28990u), Struct_2(~24337i, global3[_wgslsmith_index_u32(~1u, 11u)]))), 1284f, true, _wgslsmith_mod_u32(firstLeadingBit(abs(1u)), abs(~u_input.a << (abs(43745u) % 32u))));
    let var_1 = ~(~global4[_wgslsmith_index_u32(22480u, 2u)]);
    global2 = array<Struct_3, 10>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 24u)] - 501f), _wgslsmith_f_op_f32(ceil(687f)))), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(51569u, global4[_wgslsmith_index_u32(var_1, 2u)]), 24u)] - _wgslsmith_f_op_f32(f32(-1f) * -725f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a.x, 24u)]) - _wgslsmith_f_op_f32(-var_0.b)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, global0[_wgslsmith_index_u32(29873u, 24u)], var_2.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-184f, -2359f, 1000f)))))))));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.x, 330f, var_0.b))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(46195u, 2u)], 24u)], 341f, 1371f)))), vec3<f32>(188f, _wgslsmith_f_op_f32(abs(-964f)), 344f)) - vec3<f32>(var_3.x, _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(countOneBits(global4[_wgslsmith_index_u32(80105u, 2u)]), 24u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(33952u, 24u)], 1329f, -946f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1758f, -1000f, -1000f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~43169u, 10u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(1519f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1047f, global0[_wgslsmith_index_u32(1u ^ u_input.a, 24u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x - 953f) + -883f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(150f)) * _wgslsmith_f_op_f32(var_0.d.x * var_0.e.b.b)))) * _wgslsmith_f_op_vec3_f32(func_1()));
    global1 = -439f;
    global1 = _wgslsmith_f_op_f32(select(var_0.c.b.b, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(var_0.c.b.a.x, 24u)])), -251f), global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(firstTrailingBit(1u), 2u)], 24u)])), true));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(294f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1()).x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_1()).x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1363f)))) + vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1()).x * global0[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(1u, 2u)], 24u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(707f + -2297f))), 280f)));
    let var_3 = var_0.e.a >> (_wgslsmith_div_u32(countOneBits(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global4[_wgslsmith_index_u32(1u, 2u)], u_input.a, u_input.a, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)], 2u)], 2u)])), select(vec4<u32>(0u, var_0.c.b.a.x, u_input.a, var_0.c.b.a.x), vec4<u32>(var_0.c.b.a.x, global4[_wgslsmith_index_u32(51u, 2u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0.c.b.a.x, 2u)], 2u)], 36606u), vec4<bool>(var_0.c.b.c, true, false, var_0.c.b.c)))), reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c.b.d, 77674u, 50104u, var_0.e.b.a.x), ~vec4<u32>(32477u, 4294967295u, var_0.c.b.d, 28230u)))) % 32u);
    var var_4 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(reverseBits(_wgslsmith_add_i32(-var_3, var_3 & 1i)), _wgslsmith_div_i32(var_0.e.a, -36915i & var_3) << (var_0.c.b.d % 32u), _wgslsmith_div_i32(5647i, 17321i)), select(-var_0.c.a, _wgslsmith_mod_i32(firstTrailingBit(var_3), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.a, var_0.c.a, var_3, 2147483647i), vec4<i32>(var_0.e.a, var_3, var_0.c.a, -35420i)), 10829i)), all(var_0.a)));
    let var_5 = var_0.c.b.c;
    let var_6 = Struct_2(1i, var_0.e.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.a, var_6.b.b);
}

