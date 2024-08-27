struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_5 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec2<bool>(true, true), vec4<u32>(21722u, 1u, 10186u, 0u)), Struct_2(vec2<bool>(true, true), vec4<u32>(131743u, 1u, 4294967295u, 47310u)), Struct_2(vec2<bool>(true, false), vec4<u32>(0u, 0u, 30748u, 1u)), Struct_2(vec2<bool>(false, true), vec4<u32>(65547u, 1125u, 4294967295u, 62109u)), Struct_2(vec2<bool>(false, false), vec4<u32>(4294967295u, 36912u, 105793u, 4294967295u)), Struct_2(vec2<bool>(false, true), vec4<u32>(1u, 4294967295u, 41760u, 4294967295u)), Struct_2(vec2<bool>(true, false), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)), Struct_2(vec2<bool>(false, false), vec4<u32>(1u, 116513u, 1u, 0u)), Struct_2(vec2<bool>(true, false), vec4<u32>(0u, 1u, 21956u, 139781u)), Struct_2(vec2<bool>(true, true), vec4<u32>(4959u, 3359u, 4294967295u, 6570u)), Struct_2(vec2<bool>(true, false), vec4<u32>(46481u, 4294967295u, 62725u, 45137u)), Struct_2(vec2<bool>(true, true), vec4<u32>(13170u, 36108u, 50435u, 24152u)), Struct_2(vec2<bool>(false, true), vec4<u32>(45369u, 4294967295u, 4294967295u, 16053u)));

var<private> global1: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true));

var<private> global2: array<Struct_2, 31>;

var<private> global3: array<Struct_4, 29>;

var<private> global4: array<i32, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4) -> i32 {
    global2 = array<Struct_2, 31>();
    global4 = array<i32, 10>();
    var var_0 = vec3<i32>(min(min(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(5145i, global4[_wgslsmith_index_u32(59838u, 10u)]), 1i, arg_1.a.a), _wgslsmith_dot_vec3_i32(u_input.b.yzy ^ u_input.b.yxy, abs(vec3<i32>(0i, u_input.a.x, global4[_wgslsmith_index_u32(arg_1.b.b, 10u)])))), ~firstLeadingBit(-2147483647i)), abs(_wgslsmith_div_i32(_wgslsmith_mult_i32(arg_1.a.d, 27280i) & arg_1.a.a, arg_1.a.a)), -13986i);
    var_0 = u_input.b.wxx;
    let var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(u_input.c.x)), 13u)];
    return reverseBits(firstTrailingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global4[_wgslsmith_index_u32(var_1.b.x, 10u)], var_0.x), _wgslsmith_div_vec3_i32(u_input.a, u_input.b.wyy))));
}

fn func_2() -> u32 {
    let var_0 = vec3<i32>(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(648f, -1926f)), Struct_4(Struct_3(u_input.b.x, 500f, u_input.c.yx, u_input.a.x), Struct_1(vec4<u32>(u_input.c.x, 4294967295u, 1u, 1u), u_input.c.x, global1[_wgslsmith_index_u32(383u, 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec4<u32>(1u, u_input.c.x, u_input.c.x, 4294967295u))) >> (87998u % 32u), ~u_input.b.x, -25916i << (1u % 32u)) >> ((~(~(~u_input.c)) >> (countOneBits(~(vec3<u32>(12004u, 4294967295u, u_input.c.x) ^ u_input.c)) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = !(!all(vec2<bool>(true, u_input.c.x > 0u)));
    let var_2 = Struct_4(Struct_3(reverseBits(u_input.a.x) ^ ~var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -743f)))), vec2<u32>(53526u, _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x)), select(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -48i, var_0.x, 9245i), ~vec4<i32>(-1i, u_input.b.x, -35061i, 2225i)), 0i, true)), Struct_1(~vec4<u32>(1u, firstLeadingBit(65356u), ~20831u, _wgslsmith_dot_vec4_u32(vec4<u32>(56793u, 4294967295u, u_input.c.x, u_input.c.x), vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x))), _wgslsmith_mult_u32(~(u_input.c.x ^ u_input.c.x), _wgslsmith_dot_vec2_u32(countOneBits(u_input.c.yz), u_input.c.xx)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~1u), ~u_input.c.x | u_input.c.x, 31282u & u_input.c.x), 10u)], global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec4<u32>(~0u, firstTrailingBit(firstTrailingBit(u_input.c.x)), 1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.c.x, u_input.c.x, 0u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 3425u, u_input.c.x), vec4<u32>(10033u, 37542u, 54896u, 1u), vec4<u32>(1u, u_input.c.x, 1u, u_input.c.x)), ~(vec4<u32>(37558u, 27492u, u_input.c.x, 4294967295u) << (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u) % vec4<u32>(32u))))));
    global3 = array<Struct_4, 29>();
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1686f * var_2.a.b), -340f, _wgslsmith_f_op_f32(-1844f - 858f), var_2.a.b)))), _wgslsmith_div_vec4_f32(vec4<f32>(884f, var_2.a.b, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -651f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1802f, var_2.a.b, var_2.a.b, -1050f) - vec4<f32>(var_2.a.b, -456f, var_2.a.b, -1323f)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.b, -529f, 547f, var_2.a.b), vec4<f32>(var_2.a.b, 198f, -617f, -721f)))))));
    return select(_wgslsmith_dot_vec3_u32(firstLeadingBit(~u_input.c), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.b.a.x, u_input.c.x, var_2.c.x) << (vec3<u32>(63926u, u_input.c.x, 0u) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(u_input.c.x, var_2.c.x, 1u)), ~var_2.c.xyz), vec3<u32>(~var_2.c.x, var_2.c.x, 0u))), var_2.a.c.x, var_2.b.c.x);
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 13u)];
    global3 = array<Struct_4, 29>();
    global4 = array<i32, 10>();
    let var_1 = global2[_wgslsmith_index_u32(38887u, 31u)];
    let var_2 = -1000f;
    return _wgslsmith_div_u32(0u, arg_1.b.x) >> (func_2() % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(trunc(-732f)), ~_wgslsmith_add_u32(20921u | u_input.c.x, func_1(any(vec3<bool>(false, false, true)), Struct_2(vec2<bool>(false, true), vec4<u32>(u_input.c.x, u_input.c.x, 55866u, 1u)))));
    var var_1 = Struct_1(vec4<u32>(~70208u, 1u ^ u_input.c.x, u_input.c.x, _wgslsmith_add_u32(firstLeadingBit(u_input.c.x), var_0.b)) | vec4<u32>(~max(3145u, var_0.b), var_0.b, _wgslsmith_mod_u32(15929u, ~u_input.c.x), ~countOneBits(4294967295u)), var_0.b << (abs(14721u) % 32u), vec4<bool>(true, any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), any(vec4<bool>(true, false, true, false)))), (12522i == _wgslsmith_sub_i32(global4[_wgslsmith_index_u32(4294967295u, 10u)], -3788i)) && !all(vec2<bool>(true, true)), all(select(global1[_wgslsmith_index_u32(1u, 10u)], vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)))), select(!vec4<bool>(true, all(global1[_wgslsmith_index_u32(var_0.b, 10u)]), var_0.b >= 4294967295u, true), global1[_wgslsmith_index_u32(0u, 10u)], true));
    global0 = array<Struct_2, 13>();
    let var_2 = var_1.a.xxw;
    var var_3 = _wgslsmith_mult_i32((-2147483647i ^ -countOneBits(u_input.a.x)) << ((_wgslsmith_clamp_u32(func_1(var_1.d.x, global2[_wgslsmith_index_u32(4294967295u, 31u)]), var_1.a.x, 1u) & abs(var_2.x)) % 32u), -u_input.b.x);
    global4 = array<i32, 10>();
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(447f, var_0.a, true)) * _wgslsmith_f_op_f32(min(var_0.a, -1000f))) - _wgslsmith_div_f32(var_0.a, -288f))));
    let var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_f_op_f32(var_4 - var_4), true)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1101f * -1586f), _wgslsmith_f_op_f32(f32(-1f) * -2026f), select(true, false, var_1.c.x)))), _wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4 + var_4) * var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -621f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-612f, 1969f, -463f, var_4)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, -878f, -251f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_0.a, var_4, var_4) + vec4<f32>(var_0.a, 708f, var_4, var_4)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-318f, var_0.a, var_4, var_4), vec4<f32>(var_0.a, 1828f, var_4, var_4), var_1.c.x)))), select(global1[_wgslsmith_index_u32(~u_input.c.x, 10u)], var_1.d, all(vec3<bool>(var_1.d.x, true, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1069f, 177f) + _wgslsmith_f_op_f32(-var_0.a)), -2147483647i, _wgslsmith_f_op_f32(trunc(var_4)), countOneBits(1i));
}

