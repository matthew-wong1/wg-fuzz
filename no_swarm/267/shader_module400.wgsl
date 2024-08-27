struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(-31140i, 15963i, 0i, 0i, -13879i, -105123i, 2147483647i, 24496i, i32(-2147483648), i32(-2147483648), 1i, 31012i, 13345i, -85425i, 0i, 2147483647i, -28095i, 2147483647i);

var<private> global1: vec4<bool>;

var<private> global2: vec4<i32>;

var<private> global3: Struct_1 = Struct_1(-676f, 212f, 4294967295u, true);

var<private> global4: vec2<f32> = vec2<f32>(-1000f, -1361f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    global0 = array<i32, 18>();
    global2 = vec4<i32>(u_input.c.x << (_wgslsmith_div_u32(global3.c, ~(u_input.b.x & global3.c)) % 32u), 1i, global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a) | 21563u, 18u)], firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(7955i, 38486i), _wgslsmith_div_vec2_i32(vec2<i32>(global2.x, u_input.c.x), vec2<i32>(-2147483647i, 35389i)), reverseBits(vec2<i32>(-1738i, -2147483647i))), -vec2<i32>(global2.x, 0i) & _wgslsmith_clamp_vec2_i32(vec2<i32>(-4140i, u_input.c.x), global2.wy, vec2<i32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.b.x, 18u)])))));
    let var_0 = Struct_3((_wgslsmith_mod_u32(0u, _wgslsmith_add_u32(global3.c, 28356u)) << (firstTrailingBit(~u_input.a) % 32u)) ^ u_input.b.x, _wgslsmith_div_f32(-571f, _wgslsmith_f_op_f32(max(947f, _wgslsmith_f_op_f32(trunc(1242f))))));
    return _wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.c.x), u_input.c.xy);
}

fn func_2() -> Struct_1 {
    var var_0 = global3.d;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global3.b, -541f), vec2<f32>(-269f, 878f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1793f, -546f)))) - vec2<f32>(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2166f))));
    var var_2 = func_3();
    var var_3 = u_input.b.x;
    var var_4 = vec4<bool>(all(!(!select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(true, global3.d, false, true), vec4<bool>(false, false, false, false)))), false, var_2.x != -u_input.c.x, true);
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(-global4.x)) + global3.b))), -1010f, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(~u_input.a, global3.c), countOneBits(1u), ~global3.c >> (u_input.b.x % 32u)), u_input.b), true);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)))), vec2<bool>(arg_2.x, arg_2.x), Struct_2(arg_0, max(_wgslsmith_div_vec2_u32(u_input.b.yy, u_input.b.yy), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 41300u), u_input.b.xy)), func_2(), arg_2.x), any(global1.yw), func_2());
    global2 = vec4<i32>(abs(16143i), -1i, _wgslsmith_mod_i32(i32(-1i) * -21199i, ~global0[_wgslsmith_index_u32(~(~u_input.b.x), 18u)]), ~1i);
    global1 = vec4<bool>(global3.d, arg_0.d, !(all(global1.yxx) && func_2().d), global1.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-717f, global4.x, -686f, var_0.a) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-496f, 261f, global3.b, -339f) * vec4<f32>(arg_0.a, arg_0.b, arg_0.b, -393f))), vec4<f32>(_wgslsmith_f_op_f32(var_0.c.c.b * arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -153f), _wgslsmith_f_op_f32(var_0.c.c.a * 232f), global3.b))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global4.x, var_0.c.c.b, 1000f, var_0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(445f, -1263f, 444f, -263f)) + vec4<f32>(var_0.a, global3.a, arg_0.b, -458f)), !arg_2.x))));
    global0 = array<i32, 18>();
    return _wgslsmith_f_op_f32(floor(global4.x));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -622f) * _wgslsmith_div_f32(-311f, _wgslsmith_f_op_f32(282f - arg_3.a))), -813f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global3.a)))), _wgslsmith_f_op_f32(func_4(func_2(), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.a), u_input.b), vec2<bool>(false, false)))))), firstLeadingBit(~0u), !arg_3.d);
    global0 = array<i32, 18>();
    let var_1 = Struct_2(var_0, arg_0.zz, arg_3, true);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(-796f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - var_1.a.a), 477f);
    var var_3 = func_2().a;
    return Struct_1(_wgslsmith_f_op_f32(max(250f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -178f))))), _wgslsmith_f_op_f32(func_4(arg_3, global3.c, global1.xz)), _wgslsmith_div_u32(var_0.c, 4294967295u), (((5908u >> (u_input.b.x % 32u)) > ~32561u) && !(!global3.d)) & false);
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec4<u32>, arg_3: bool) -> vec4<i32> {
    global1 = vec4<bool>(false, func_2().d && false, false, global3.a != _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1224f), _wgslsmith_f_op_f32(ceil(1528f))))));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4.x, arg_0.c.a, global3.a, -901f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.a, arg_0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -1040f), _wgslsmith_f_op_f32(-253f + 1214f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(128f, global4.x, -1123f, -717f)))));
    global0 = array<i32, 18>();
    global2 = max(vec4<i32>(13498i, -u_input.c.x, global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_2.x, arg_2.x), ~0u)), 18u)], 17436i), _wgslsmith_add_vec4_i32(vec4<i32>(-51828i & global2.x, 2651i, -(~(-2147483647i)), -8942i), firstLeadingBit(vec4<i32>(~(-29202i), -1i, -1i >> (arg_2.x % 32u), ~0i))));
    global4 = _wgslsmith_f_op_vec2_f32(var_0.zz + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.xy, var_0.zx)));
    return _wgslsmith_div_vec4_i32(-(u_input.c << (arg_2 % vec4<u32>(32u))), firstTrailingBit(-vec4<i32>(-global2.x, 16597i, _wgslsmith_div_i32(-1i, -28605i), i32(-1i) * -46972i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(-countOneBits(global0[_wgslsmith_index_u32(0u, 18u)]), firstTrailingBit(firstLeadingBit(u_input.c.x)), i32(-1i) * -27184i, 0i), _wgslsmith_sub_vec4_i32(u_input.c, func_5(Struct_2(func_1(vec3<u32>(global3.c, u_input.b.x, u_input.b.x), 0u, vec2<f32>(global3.a, -2153f), Struct_1(-1101f, global4.x, 21439u, global3.d)), _wgslsmith_clamp_vec2_u32(u_input.b.xz, u_input.b.zy, vec2<u32>(u_input.a, u_input.b.x)), func_1(u_input.b, 28755u, vec2<f32>(global4.x, 994f), Struct_1(global3.a, 942f, 1u, true)), global3.d), any(global1.xw), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global3.c, u_input.b.x), vec3<u32>(1u, 32208u, global3.c)), u_input.b.x, 0u, _wgslsmith_mod_u32(4294967295u, 24534u)), all(!vec3<bool>(global3.d, true, false)))), (vec4<i32>(1i, 0i, u_input.c.x, global2.x | global0[_wgslsmith_index_u32(12585u, 18u)]) >> (firstLeadingBit(vec4<u32>(4294967295u, 1u, u_input.a, u_input.a) & vec4<u32>(u_input.b.x, u_input.b.x, 0u, global3.c)) % vec4<u32>(32u))) >> (vec4<u32>(~global3.c, 0u, ~29838u, reverseBits(global3.c) & global3.c) % vec4<u32>(32u)));
    var var_1 = Struct_1(global3.b, global3.b, u_input.b.x, !global1.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.b), var_1.a, _wgslsmith_div_f32(703f, var_1.a)) * vec3<f32>(var_1.b, _wgslsmith_f_op_f32(abs(global3.a)), 971f)), vec3<f32>(1000f, 501f, func_1(abs(u_input.b), var_1.c, vec2<f32>(global3.a, 525f), func_1(u_input.b, u_input.a, vec2<f32>(var_1.b, var_1.a), Struct_1(var_1.b, var_1.b, global3.c, global3.d))).b)))));
    global2 = -_wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(global2.x), -3118i, global2.x, _wgslsmith_add_i32(0i, 0i)), var_0) >> (~reverseBits(select(vec4<u32>(0u, 0u, 48341u, 1u), vec4<u32>(0u, 0u, var_1.c, 1u), select(vec4<bool>(global3.d, global1.x, true, false), vec4<bool>(false, var_1.d, true, var_1.d), true))) % vec4<u32>(32u));
    let var_3 = Struct_4(global3.a, !(!select(vec2<bool>(global1.x, global3.d), global1.ww, !var_1.d)), Struct_2(Struct_1(739f, var_2.x, ~83984u, global1.x), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, ~1u), abs(u_input.b.xz)), func_2(), any(vec3<bool>(true, var_2.x < 1478f, all(vec4<bool>(var_1.d, global1.x, global1.x, global3.d))))), any(!(!select(vec4<bool>(true, false, var_1.d, false), vec4<bool>(true, var_1.d, global3.d, true), vec4<bool>(global1.x, true, false, var_1.d)))), func_2());
    let var_4 = var_3.c.c;
    var var_5 = var_4;
    var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

