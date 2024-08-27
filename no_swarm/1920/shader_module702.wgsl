struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 17>;

var<private> global1: array<u32, 21>;

var<private> global2: u32;

var<private> global3: array<Struct_3, 23>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_3) -> i32 {
    global1 = array<u32, 21>();
    var var_0 = _wgslsmith_add_u32(~arg_2, 55301u);
    var var_1 = ~vec3<u32>(5730u, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(abs(22704u), 21u)], global1[_wgslsmith_index_u32(arg_3.b.a, 21u)] ^ arg_2) ^ arg_3.b.a, arg_3.b.a);
    var var_2 = countOneBits(~(~var_1.xy));
    global3 = array<Struct_3, 23>();
    return 54437i;
}

fn func_2(arg_0: u32) -> u32 {
    global3 = array<Struct_3, 23>();
    global1 = array<u32, 21>();
    let var_0 = _wgslsmith_div_i32(func_3(vec2<u32>(arg_0, (arg_0 & arg_0) ^ ~arg_0), Struct_1(global0[_wgslsmith_index_u32(select(1u, u_input.b, false), 17u)] << (~vec4<u32>(u_input.b, 74362u, 43575u, global1[_wgslsmith_index_u32(21074u, 21u)]) % vec4<u32>(32u)), u_input.a.x >= (u_input.a.x & 27969i), u_input.a.x, u_input.c.x > (-56673i >> (0u % 32u))), firstLeadingBit(_wgslsmith_sub_u32(4294967295u, 1u)), Struct_3(reverseBits(arg_0) <= ~u_input.b, Struct_2(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)], u_input.a))), -20153i);
    global3 = array<Struct_3, 23>();
    var var_1 = Struct_2(_wgslsmith_div_u32(64578u, arg_0), u_input.c.xy);
    return abs(max(4294967295u, _wgslsmith_mult_u32(13601u, 36337u)));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_3.b.a, u_input.b) & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.a, 21u)] | 33362u, 21u)], func_2(72864u)) >> (abs(4294967295u) % 32u), abs(arg_0.b << (abs(reverseBits(vec2<u32>(2858u, u_input.b))) % vec2<u32>(32u))));
    global3 = array<Struct_3, 23>();
    global0 = array<vec4<i32>, 17>();
    global0 = array<vec4<i32>, 17>();
    return Struct_1(select(vec4<i32>(min(func_3(vec2<u32>(u_input.b, var_0.a), Struct_1(vec4<i32>(-38034i, arg_3.b.b.x, var_0.b.x, var_0.b.x), false, arg_0.b.x, true), 105258u, Struct_3(false, var_0)), arg_0.b.x), -1i, ~(134i ^ u_input.a.x), firstTrailingBit(func_3(vec2<u32>(var_0.a, arg_3.b.a), Struct_1(global0[_wgslsmith_index_u32(arg_3.b.a, 17u)], arg_3.a, 0i, arg_3.a), 4294967295u, global3[_wgslsmith_index_u32(35645u, 23u)]))), vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, arg_3.b.b.x, arg_3.b.b.x, -2380i), vec4<i32>(42716i, arg_3.b.b.x, arg_0.b.x, var_0.b.x)), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, arg_3.a, false, arg_3.a), vec4<bool>(arg_3.a, arg_3.a, false, true)))), arg_3.a, arg_3.b.b.x, false);
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(482f)));
    var var_1 = u_input.b;
    let var_2 = false;
    let var_3 = vec2<bool>(true, true);
    global3 = array<Struct_3, 23>();
    return !arg_0.d;
}

fn func_5(arg_0: vec2<u32>, arg_1: bool) -> Struct_1 {
    var var_0 = ~(-u_input.c.xy) << (vec2<u32>(abs(countOneBits(~u_input.b)), 36558u) % vec2<u32>(32u));
    let var_1 = _wgslsmith_dot_vec4_i32(-global0[_wgslsmith_index_u32(70593u, 17u)], select(global0[_wgslsmith_index_u32(70384u, 17u)], -global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, arg_0.x, 0u)), 21u)], 17u)], !vec4<bool>(any(vec4<bool>(false, false, true, true)), arg_1, !arg_1, true)));
    global1 = array<u32, 21>();
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_add_vec3_i32(~(vec3<i32>(-1i) * -(~vec3<i32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_clamp_vec3_i32((firstTrailingBit(vec3<i32>(var_0.x, 25169i, 44364i)) << (~vec3<u32>(32767u, 0u, u_input.b) % vec3<u32>(32u))) << (vec3<u32>(func_2(4294967295u), ~global1[_wgslsmith_index_u32(arg_0.x, 21u)], ~39154u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_1, 1i, 38249i), -vec3<i32>(-13801i, var_0.x, var_0.x)), -_wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(var_1, var_0.x, 1i))), u_input.c));
    return func_1(Struct_2(~firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10804u, 21u)], 21u)]), _wgslsmith_div_vec2_i32(-var_3.zz, var_3.yy >> (~arg_0 % vec2<u32>(32u)))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-622f - 124f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2172f)))), vec4<f32>(1f, 1f, 1f, 1f), global3[_wgslsmith_index_u32(~7076u, 23u)]);
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = abs(-1i);
    var var_1 = Struct_3(all(vec4<bool>(true, true, any(vec3<bool>(arg_1.b, arg_2.d, arg_1.d)), any(vec2<bool>(arg_2.d, arg_1.d)))) & (!(u_input.c.x > 2483i) && !(!arg_2.d)), Struct_2(~func_2(0u), _wgslsmith_add_vec2_i32(-abs(vec2<i32>(8593i, u_input.a.x)), abs(vec2<i32>(-1i, arg_1.c)))));
    global2 = ~(~4294967295u);
    var var_2 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(max(arg_0, -874f)));
    var_1 = global3[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(1u, ~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(var_1.b.a, 21u)], var_1.b.a))), 23u)];
    return StorageBuffer(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -747f, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -2945f, arg_0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 2334f, 1043f))))), ~var_1.b.a >> (var_1.b.a % 32u), 0i, ~arg_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 23>();
    global1 = array<u32, 21>();
    var var_0 = Struct_2(u_input.b, -u_input.c.yy);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1882f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(764f + -1485f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -662f), _wgslsmith_f_op_f32(-268f * 1f), true)), false)) + -195f);
    let var_2 = vec2<i32>(-1i, var_0.b.x);
    let x = u_input.a;
    s_output = func_6(_wgslsmith_div_f32(var_1, var_1), func_5(~_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 2758u), vec2<u32>(var_0.a, 4294967295u) >> (vec2<u32>(42595u, var_0.a) % vec2<u32>(32u))), !func_4(func_1(Struct_2(4294967295u, u_input.c.zy), vec3<f32>(var_1, 282f, -2614f), vec4<f32>(var_1, var_1, -632f, var_1), global3[_wgslsmith_index_u32(var_0.a, 23u)]))), func_1(Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(49265u), 4294967295u), 21u)], vec2<i32>(reverseBits(1i), -var_2.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-172f, -1000f, 1000f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -138f, var_1) * vec3<f32>(-723f, var_1, -871f)), func_1(Struct_2(0u, var_2), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1, var_1, -1166f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, var_1, -500f, -418f))), global3[_wgslsmith_index_u32(~var_0.a, 23u)]).d)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1797f, var_1, -1226f, -279f), vec4<f32>(964f, -1453f, -372f, var_1))), vec4<f32>(_wgslsmith_f_op_f32(401f - -448f), _wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(f32(-1f) * -1893f), 833f), vec4<bool>(global1[_wgslsmith_index_u32(2157u, 21u)] < global1[_wgslsmith_index_u32(14466u, 21u)], any(vec3<bool>(true, true, false)), true, func_5(vec2<u32>(var_0.a, 0u), true).b))), global3[_wgslsmith_index_u32(54117u, 23u)]));
}

