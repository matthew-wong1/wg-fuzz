struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(true, true, vec2<f32>(-1255f, 299f), true), Struct_1(false, false, vec2<f32>(1284f, -655f), false), Struct_1(false, true, vec2<f32>(-1865f, 557f), true), Struct_1(false, false, vec2<f32>(-386f, 283f), true), Struct_1(false, false, vec2<f32>(563f, -1036f), false), Struct_1(false, false, vec2<f32>(1166f, -1392f), false), Struct_1(false, true, vec2<f32>(-1000f, 547f), true), Struct_1(false, false, vec2<f32>(-1272f, -670f), false), Struct_1(false, false, vec2<f32>(2291f, 876f), true), Struct_1(true, true, vec2<f32>(1406f, -420f), true), Struct_1(false, false, vec2<f32>(-393f, 1486f), false), Struct_1(true, false, vec2<f32>(523f, 170f), false), Struct_1(true, true, vec2<f32>(-984f, 1295f), false), Struct_1(true, true, vec2<f32>(-165f, 226f), true), Struct_1(false, false, vec2<f32>(-285f, -1436f), true), Struct_1(true, false, vec2<f32>(916f, -409f), true), Struct_1(true, true, vec2<f32>(-414f, 1792f), true), Struct_1(false, false, vec2<f32>(-2053f, 315f), true), Struct_1(false, false, vec2<f32>(1728f, -744f), false), Struct_1(false, true, vec2<f32>(-1312f, 259f), true), Struct_1(true, true, vec2<f32>(691f, 841f), false), Struct_1(true, true, vec2<f32>(-926f, 969f), false), Struct_1(false, false, vec2<f32>(991f, 800f), true), Struct_1(false, true, vec2<f32>(-959f, 1000f), false), Struct_1(false, true, vec2<f32>(-1000f, 162f), true), Struct_1(true, true, vec2<f32>(1066f, -902f), true), Struct_1(false, true, vec2<f32>(1119f, 310f), false), Struct_1(true, false, vec2<f32>(-1197f, 1107f), false), Struct_1(false, true, vec2<f32>(-446f, 1159f), false), Struct_1(false, false, vec2<f32>(1000f, 933f), true), Struct_1(true, true, vec2<f32>(-561f, 397f), true), Struct_1(false, true, vec2<f32>(354f, 1000f), false));

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(false, false, vec2<f32>(597f, -1529f), false);

var<private> global3: array<i32, 17> = array<i32, 17>(-45817i, -1i, 21071i, 41929i, 26976i, -7289i, 0i, 0i, 1i, 730i, 1i, 26050i, i32(-2147483648), 49452i, -7054i, 2147483647i, -1i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> i32 {
    global3 = array<i32, 17>();
    return 21501i;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-325f - _wgslsmith_f_op_f32(ceil(1168f)));
    global2 = Struct_1(false, any(select(select(vec3<bool>(arg_0.b, global2.d, arg_0.a), !vec3<bool>(arg_0.b, true, false), select(vec3<bool>(false, false, global2.d), vec3<bool>(arg_0.b, false, true), vec3<bool>(false, global1.a, global1.a))), !(!vec3<bool>(false, global1.a, false)), vec3<bool>(true, global1.b, u_input.a == 1u))), _wgslsmith_f_op_vec2_f32(-arg_0.c), all(vec3<bool>(false, true || arg_0.a, true)));
    global1 = global0[_wgslsmith_index_u32(~(~1u), 32u)];
    global0 = array<Struct_1, 32>();
    global3 = array<i32, 17>();
    return vec4<i32>(arg_1.x, global3[_wgslsmith_index_u32(~u_input.b, 17u)], 23786i, ~(-arg_1.x)) << (abs(~((vec4<u32>(u_input.c, 61558u, 49706u, u_input.c) ^ vec4<u32>(31728u, 0u, u_input.b, u_input.c)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.c, u_input.b, 0u), vec4<u32>(u_input.b, 17995u, 25562u, 20781u)))) % vec4<u32>(32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> bool {
    global1 = Struct_1(true, any(vec2<bool>(all(select(vec3<bool>(global2.b, global2.b, false), vec3<bool>(true, global1.d, false), vec3<bool>(true, global2.a, false))), true & select(global2.b, false, true))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.c.x, _wgslsmith_f_op_f32(global2.c.x - global1.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(697f, -1000f), vec2<f32>(arg_0.c.x, -287f))))))), arg_0.b);
    global3 = array<i32, 17>();
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 32u)];
    let var_1 = _wgslsmith_clamp_i32((select(global3[_wgslsmith_index_u32(0u, 17u)], arg_1.x, true) >> (1u % 32u)) | global3[_wgslsmith_index_u32(1u, 17u)], ~16081i, _wgslsmith_div_i32(countOneBits(min(global3[_wgslsmith_index_u32(63348u, 17u)], 2147483647i)), _wgslsmith_add_i32(global3[_wgslsmith_index_u32(u_input.b, 17u)] << (4294967295u % 32u), min(arg_1.x, arg_1.x)))) < arg_1.x;
    var var_2 = abs(~(~abs(vec3<u32>(745u, u_input.c, 4294967295u))));
    return var_0.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> vec3<bool> {
    global2 = Struct_1(any(!vec2<bool>(global1.c.x != global2.c.x, false)), select(!select(true, !global2.b, arg_0.b & false), true, true), arg_0.c, any(!vec3<bool>(true, u_input.b > 1u, global1.a)));
    let var_0 = vec4<i32>(-firstTrailingBit(_wgslsmith_mod_i32(1i, 1537i)) | 23427i, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1316f, 1890f, 995f)))), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(arg_1.yy, vec2<u32>(arg_1.x, 71451u)) & 46222u, 17u)]), ~firstLeadingBit(firstTrailingBit(-global3[_wgslsmith_index_u32(45825u, 17u)])), global3[_wgslsmith_index_u32(reverseBits(62693u), 17u)] ^ ~_wgslsmith_dot_vec3_i32(~vec3<i32>(54292i, global3[_wgslsmith_index_u32(u_input.c, 17u)], 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(-1242i, global3[_wgslsmith_index_u32(u_input.a, 17u)], global3[_wgslsmith_index_u32(u_input.a, 17u)]), vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(4294967295u, 17u)], -8002i))));
    global2 = Struct_1(true, true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.c)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global2.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c + vec2<f32>(511f, 1572f)) * global2.c)), false)), !global1.a);
    global3 = array<i32, 17>();
    let var_1 = vec4<bool>(any(vec3<bool>(!(!global1.b), !(!arg_0.a), func_4(global0[_wgslsmith_index_u32(69311u, 32u)], func_3(arg_0, vec3<i32>(1i, -3056i, var_0.x))))), global1.a || !arg_2.d, true, !arg_2.b != global1.b);
    return !(!select(!select(var_1.wwx, vec3<bool>(global1.d, true, var_1.x), vec3<bool>(false, true, false)), vec3<bool>(arg_0.d, arg_2.a, arg_1.x < arg_1.x), var_1.xzw));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * arg_1.c.x) * _wgslsmith_f_op_f32(arg_2.c.x + -1448f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2288f + 893f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_1.c.x))))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(arg_1.c.x)), -1467f, _wgslsmith_f_op_f32(arg_1.c.x - -1802f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.c.x, 506f, arg_2.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(414f, 1528f, arg_1.c.x)), arg_0)))));
    var var_1 = Struct_1(_wgslsmith_div_u32(~(~u_input.a), ~_wgslsmith_add_u32(u_input.b, u_input.b)) >= _wgslsmith_div_u32(0u, _wgslsmith_mult_u32(~u_input.a, min(u_input.c, 17754u))), all(!(!(!vec4<bool>(global2.b, arg_0.x, arg_2.b, arg_1.b)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -454f), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(floor(278f)))), _wgslsmith_f_op_vec2_f32(-var_0.xz), select(!select(arg_0.yy, vec2<bool>(arg_2.d, true), global2.b), select(!arg_0.zy, arg_0.xx, vec2<bool>(global2.d, false)), select(arg_0.zz, select(arg_0.yz, arg_0.zx, false), false)))), arg_1.d != true);
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, 452f, var_0.x))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, global1.c.x, -249f))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1002f))), 614f, global1.c.x)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1156f * _wgslsmith_f_op_f32(global2.c.x + -907f)))), -427f, arg_1.c.x)));
    let var_2 = arg_1;
    var var_3 = countOneBits(abs(26496i));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 32>();
    var var_0 = func_5(select(!(!vec3<bool>(false, global1.b, global1.d)), vec3<bool>(true, select(any(vec2<bool>(false, true)), false, global1.d), false), select(!select(vec3<bool>(true, false, global1.b), vec3<bool>(global2.a, false, global2.b), vec3<bool>(global1.a, global1.a, global1.d)), select(func_1(Struct_1(false, global2.d, global2.c, false), vec3<u32>(u_input.c, 4294967295u, 4294967295u), global0[_wgslsmith_index_u32(u_input.a, 32u)]), select(vec3<bool>(global2.a, global1.b, false), vec3<bool>(global2.b, true, true), vec3<bool>(false, true, true)), global2.a), true)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(countOneBits(u_input.a), countOneBits(12942u)), 2639u << (u_input.a % 32u)), 32u)], Struct_1(!global2.b, global1.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.c - vec2<f32>(-219f, global1.c.x)))), global2.b));
    global1 = Struct_1(func_4(global0[_wgslsmith_index_u32(u_input.b, 32u)], firstLeadingBit(~_wgslsmith_sub_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(471u, 17u)], 0i, 50802i, -23235i), vec4<i32>(global3[_wgslsmith_index_u32(0u, 17u)], global3[_wgslsmith_index_u32(u_input.c, 17u)], global3[_wgslsmith_index_u32(20715u, 17u)], global3[_wgslsmith_index_u32(u_input.a, 17u)])))), func_5(!func_1(Struct_1(false, global1.d, vec2<f32>(global2.c.x, -2060f), true), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, 43331u), vec3<u32>(42629u, u_input.b, 28383u)), func_5(vec3<bool>(true, var_0.d, global2.d), Struct_1(global2.a, true, var_0.c, true), global0[_wgslsmith_index_u32(4294967295u, 32u)])), func_5(func_1(func_5(vec3<bool>(var_0.d, var_0.a, true), global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)]), ~vec3<u32>(1u, 99506u, u_input.c), Struct_1(true, false, vec2<f32>(global2.c.x, -526f), true)), global0[_wgslsmith_index_u32(u_input.b << (55326u % 32u), 32u)], global0[_wgslsmith_index_u32(1u, 32u)]), global0[_wgslsmith_index_u32(~u_input.c, 32u)]).b, vec2<f32>(-659f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + -685f)), _wgslsmith_f_op_f32(1500f + _wgslsmith_div_f32(-307f, var_0.c.x))))), !all(vec4<bool>(true, true, global1.a, var_0.a)));
    var var_1 = countOneBits(vec3<i32>(global3[_wgslsmith_index_u32(~0u, 17u)], global3[_wgslsmith_index_u32(u_input.b, 17u)], global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(61510u, u_input.b, u_input.a), vec3<u32>(27045u, 4294967295u, 4294967295u))), 17u)])) ^ vec3<i32>(i32(-1i) * -16650i, global3[_wgslsmith_index_u32(u_input.a, 17u)], max(global3[_wgslsmith_index_u32(u_input.c, 17u)] ^ select(-1i, 1i, global2.d), 2147483647i));
    var_0 = func_5(vec3<bool>(true, true, global2.b), func_5(vec3<bool>(u_input.b != 34619u, false, false), Struct_1(any(vec4<bool>(true, true, global1.b, true)), func_5(vec3<bool>(var_0.a, false, true), func_5(vec3<bool>(var_0.b, var_0.a, var_0.d), global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(u_input.c, 32u)]), global0[_wgslsmith_index_u32(~u_input.a, 32u)]).b, _wgslsmith_f_op_vec2_f32(sign(global2.c)), 308f < _wgslsmith_f_op_f32(max(global1.c.x, var_0.c.x))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 55225u) & vec2<u32>(71731u, u_input.b), _wgslsmith_mult_vec2_u32(vec2<u32>(69348u, u_input.a) ^ vec2<u32>(0u, u_input.b), min(vec2<u32>(4294967295u, u_input.a), vec2<u32>(71468u, u_input.a)))), 32u)]), func_5(select(!(!vec3<bool>(global1.b, false, true)), !(!vec3<bool>(global1.d, var_0.b, true)), !select(vec3<bool>(false, var_0.b, true), vec3<bool>(global2.b, true, true), vec3<bool>(false, var_0.b, true))), global0[_wgslsmith_index_u32(max(~u_input.b, min(_wgslsmith_div_u32(u_input.c, 4294967295u), u_input.a)), 32u)], func_5(vec3<bool>(true, !global1.a, global2.d), Struct_1(any(vec2<bool>(global2.a, global2.b)), global1.b | var_0.a, _wgslsmith_f_op_vec2_f32(-global1.c), !var_0.a), func_5(vec3<bool>(var_0.b, false, true), global0[_wgslsmith_index_u32(~u_input.c, 32u)], func_5(vec3<bool>(true, global2.d, true), Struct_1(global2.b, false, vec2<f32>(global2.c.x, global1.c.x), false), Struct_1(var_0.b, false, global1.c, false))))));
    global0 = array<Struct_1, 32>();
    var var_2 = ~46379u;
    var var_3 = 1884f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1960f, global2.c.x))), _wgslsmith_f_op_f32(round(var_0.c.x))), var_0.c.x, _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -102f))))), vec4<i32>(~(-2147483647i >> (_wgslsmith_add_u32(36722u, u_input.c) % 32u)), global3[_wgslsmith_index_u32(~(~(~u_input.c)), 17u)], global3[_wgslsmith_index_u32(~abs(u_input.b), 17u)], var_1.x));
}

