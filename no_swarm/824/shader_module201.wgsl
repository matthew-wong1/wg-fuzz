struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true), true, -1060f, 10140i, 13142i);

var<private> global2: vec3<f32>;

var<private> global3: array<i32, 31> = array<i32, 31>(6130i, -1i, -1i, -5389i, 49468i, 2147483647i, 54880i, 54253i, -11714i, -51938i, -1i, -51827i, -27981i, -8918i, 1i, i32(-2147483648), -51615i, i32(-2147483648), 54694i, -1i, 0i, 12922i, 44953i, 2147483647i, i32(-2147483648), -34267i, 2147483647i, -35618i, -67353i, 2147483647i, 29803i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> u32 {
    return ~(u_input.b & ~u_input.b);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec3<i32>, arg_3: vec3<u32>) -> bool {
    var var_0 = Struct_1(global1.a, firstLeadingBit(arg_2.x) == reverseBits(u_input.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_1)))), _wgslsmith_f_op_f32(sign(-890f))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, global1.e, global3[_wgslsmith_index_u32(arg_3.x, 31u)], global1.d), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0, arg_2.x, 4390i, arg_2.x), vec4<i32>(0i, -32961i, -10938i, 2147483647i))), i32(-1i) * -8825i), -2147483647i), -global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.b) << (73128u % 32u)), 31u)]);
    var var_1 = Struct_3(732f, true, ~4294967295u, Struct_2(u_input.a.zz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, arg_1, -2867f, var_0.c))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, 1654f, -321f, 1765f) - vec4<f32>(arg_1, global1.c, 1562f, var_0.c))))), 518f, _wgslsmith_add_i32(~(~global3[_wgslsmith_index_u32(u_input.b, 31u)]), arg_2.x ^ ~56385i), _wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_0.c, -691f, true)))))), Struct_1(select(!select(global1.a, global1.a, true), vec2<bool>(all(vec3<bool>(var_0.b, false, var_0.a.x)), select(false, var_0.a.x, var_0.a.x)), global1.a), true, _wgslsmith_f_op_f32(-1295f + var_0.c), 16554i, -1i));
    var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(109f))))) * arg_1), !any(vec4<bool>(arg_3.x == 4294967295u, var_1.b, global1.b && true, global1.b)), arg_3.x, Struct_2(vec2<i32>(min(1i, abs(var_0.d)), arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d.b), var_1.d.b) + _wgslsmith_f_op_vec4_f32(exp2(var_1.d.b))), arg_1, -31487i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c * var_1.a) + _wgslsmith_f_op_f32(min(var_0.c, arg_1)))))), var_1.e);
    var var_2 = _wgslsmith_f_op_vec2_f32(round(global2.zy));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_2.x - global2.x)));
    return (~_wgslsmith_add_u32(arg_3.x << (1u % 32u), arg_3.x) > select(select(~u_input.b, ~var_1.c, false), abs(firstLeadingBit(4294967295u)), true)) && !(select(false, true, false) | var_0.b);
}

fn func_1(arg_0: f32, arg_1: bool) -> f32 {
    var var_0 = Struct_1(vec2<bool>(select(func_2(Struct_3(995f, false, 4294967295u, Struct_2(vec2<i32>(global1.d, 2147483647i), vec4<f32>(arg_0, global1.c, 700f, 249f), arg_0, -13520i, 861f), Struct_1(vec2<bool>(false, arg_1), false, global2.x, global3[_wgslsmith_index_u32(u_input.b, 31u)], 1i)), global3[_wgslsmith_index_u32(u_input.b, 31u)]) <= 0u, func_3(max(global3[_wgslsmith_index_u32(17639u, 31u)], global3[_wgslsmith_index_u32(u_input.b, 31u)]), _wgslsmith_f_op_f32(-443f - -434f), u_input.a, abs(vec3<u32>(36472u, u_input.b, u_input.b))), any(!vec4<bool>(false, true, arg_1, arg_1))), arg_1), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), 403f), -_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), -2147483647i);
    var var_1 = (var_0.d ^ abs(global3[_wgslsmith_index_u32(65835u, 31u)])) << (61463u % 32u);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(354f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.x - var_0.c)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + global1.c)), _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(f32(-1f) * -574f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c * var_0.c))), 671f);
    var var_3 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(select(u_input.b, 0u, true), _wgslsmith_clamp_u32(32252u, u_input.b, 43386u), 0u, min(5047u, 4294967295u))), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(18987u, u_input.b, ~8446u, _wgslsmith_div_u32(u_input.b, 47539u)), vec4<u32>(~u_input.b, func_2(Struct_3(global2.x, var_0.a.x, u_input.b, Struct_2(vec2<i32>(-2147483647i, -11495i), vec4<f32>(-330f, -1247f, var_2.x, 373f), arg_0, global1.e, -428f), Struct_1(vec2<bool>(false, false), var_0.a.x, var_2.x, global1.d, 1i)), global3[_wgslsmith_index_u32(u_input.b, 31u)]), u_input.b, ~u_input.b))));
    var_1 = -(select(_wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, 42652i), _wgslsmith_clamp_i32(var_0.e, u_input.a.x, 1i)), var_0.d << (abs(4294967295u) % 32u), true) << (3937u % 32u));
    return _wgslsmith_f_op_f32(global1.c - arg_0);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = select(~((u_input.a | u_input.a) >> ((_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 61965u), vec3<u32>(u_input.b, 0u, u_input.b)) & abs(vec3<u32>(0u, 1u, u_input.b))) % vec3<u32>(32u))), ~vec3<i32>(-17470i, i32(-1i) * -14512i, ~global3[_wgslsmith_index_u32(u_input.b, 31u)] >> (35411u % 32u)), select(select(!select(vec3<bool>(global1.b, true, arg_1.a.x), vec3<bool>(arg_1.a.x, arg_1.a.x, global1.b), vec3<bool>(arg_1.a.x, arg_1.b, false)), !select(vec3<bool>(global1.b, global1.a.x, true), vec3<bool>(false, global1.b, global1.a.x), vec3<bool>(false, global1.a.x, global1.b)), true), select(!select(vec3<bool>(true, global1.b, arg_1.a.x), vec3<bool>(arg_1.b, global1.a.x, false), vec3<bool>(arg_1.a.x, true, arg_1.b)), vec3<bool>(true, false, arg_1.b), !(!arg_1.b)), true));
    var_0 = u_input.a;
    var var_1 = global1.a;
    var var_2 = u_input.b;
    let var_3 = ~u_input.b;
    return Struct_1(global1.a, ~27275u == (24042u | _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_3, 42205u), 1775u)), -952f, _wgslsmith_add_i32(global3[_wgslsmith_index_u32(var_3, 31u)], var_0.x), _wgslsmith_div_i32(firstTrailingBit(2147483647i) | var_0.x, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>((reverseBits(u_input.b) & min(countOneBits(u_input.b), 1u)) >> (countOneBits(_wgslsmith_div_u32(u_input.b, 11017u)) % 32u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(~24842u, firstTrailingBit(0u)) >> (15832u % 32u), (~u_input.b & ~u_input.b) ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 0u, 147639u), vec4<u32>(1u, 77277u, u_input.b, 4294967295u))), firstTrailingBit(firstTrailingBit((u_input.b | 84675u) << (u_input.b % 32u))));
    var var_1 = func_4(Struct_2(u_input.a.yy, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(1484f, global1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-895f - global2.x) - 506f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.x)) + _wgslsmith_f_op_f32(-global1.c)), global2.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1419f)))))), global1.d, global2.x), Struct_1(!global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global1.c)) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.c + global2.x))), -943f, 4041i, _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(10139u, 31u)], 0i)));
    var_1 = Struct_1(global1.a, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(u_input.c, u_input.a.x, -2147483647i)), vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 31u)], var_1.e, global1.e)), ~(-u_input.a)) == _wgslsmith_dot_vec3_i32(~abs(u_input.a), countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.b, 31u)], 2147483647i, -2147483647i), vec3<i32>(28731i, 1i, -11405i)))), global1.c, global1.d, _wgslsmith_mod_i32(0i ^ countOneBits(global3[_wgslsmith_index_u32(38253u >> (u_input.b % 32u), 31u)]), -8319i));
    var var_2 = Struct_1(global1.a, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -623f))), abs(~u_input.a.x), -min(~(-50244i), global1.d));
    let var_3 = Struct_3(var_1.c, true, abs(var_0.x), Struct_2(reverseBits(~vec2<i32>(var_2.d, 31740i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.c)), _wgslsmith_f_op_f32(var_2.c + 1179f), -1005f, _wgslsmith_f_op_f32(f32(-1f) * -1508f)) * vec4<f32>(-1069f, 1794f, _wgslsmith_f_op_f32(f32(-1f) * -159f), var_2.c)), var_1.c, ~reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(var_0.x, 31u)], global3[_wgslsmith_index_u32(var_0.x, 31u)], 28428i, var_2.d), vec4<i32>(26440i, 28465i, -1i, 5920i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-721f)) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2.c, -1870f), _wgslsmith_f_op_f32(f32(-1f) * -875f))))), Struct_1(vec2<bool>(true, true), any(select(select(vec4<bool>(global1.a.x, false, true, false), vec4<bool>(false, var_2.b, true, var_1.a.x), vec4<bool>(global1.b, var_1.b, true, true)), vec4<bool>(false, false, true, global1.b), !vec4<bool>(var_1.a.x, var_2.a.x, false, false))), 453f, u_input.c << (~(~var_0.x) % 32u), _wgslsmith_add_i32(20427i, -42529i)));
    let var_4 = var_3.d.b.wz;
    global1 = Struct_1(vec2<bool>(all(vec2<bool>(var_3.b, any(vec4<bool>(var_3.b, true, global1.b, global1.b)))), select(global1.a.x, !var_1.a.x, var_3.b)), all(select(vec2<bool>(var_1.b, true), var_1.a, select(global1.a, vec2<bool>(true, var_3.b), vec2<bool>(var_1.a.x, global1.b)))) && !(var_3.b && var_2.b), -1852f, ~(-16593i & _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(var_3.e.d, -40496i, var_3.e.e)), firstTrailingBit(u_input.a))), abs(global3[_wgslsmith_index_u32(abs(4294967295u), 31u)]));
    var_1 = Struct_1(vec2<bool>(false, var_2.e <= max(~(-1i), ~var_3.d.a.x)), var_2.a.x, _wgslsmith_f_op_f32(max(var_1.c, _wgslsmith_f_op_f32(func_4(Struct_2(vec2<i32>(global1.d, u_input.c), var_3.d.b, var_1.c, 1i, var_3.a), Struct_1(vec2<bool>(true, var_3.b), true, global2.x, global3[_wgslsmith_index_u32(31535u, 31u)], 48515i)).c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(121f - 571f) + 1000f)))), global3[_wgslsmith_index_u32(u_input.b, 31u)], ~(-1i));
    global3 = array<i32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.a, u_input.a, 42961i | (countOneBits(-2147483647i) << (countOneBits(1u >> (var_3.c % 32u)) % 32u)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-893f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -468f)))), _wgslsmith_f_op_f32(select(1266f, 1465f, !var_3.b))), min(u_input.a, u_input.a << (min(firstLeadingBit(vec3<u32>(var_0.x, var_3.c, 0u)), vec3<u32>(var_0.x, u_input.b, var_3.c)) % vec3<u32>(32u))));
}

