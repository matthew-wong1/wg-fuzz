struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(9776i, -39261i, -1i), vec3<i32>(-1i, 0i, 1i), vec3<i32>(14415i, 0i, 8259i), vec3<i32>(-43126i, -27943i, -50209i), vec3<i32>(1i, 0i, -33314i), vec3<i32>(59361i, 45972i, 2147483647i), vec3<i32>(2147483647i, -5023i, -25279i), vec3<i32>(13509i, i32(-2147483648), 2147483647i), vec3<i32>(9274i, 46108i, -1989i), vec3<i32>(2147483647i, i32(-2147483648), 3235i), vec3<i32>(2147483647i, -4954i, -80433i), vec3<i32>(1i, 19619i, 1i), vec3<i32>(8033i, -26529i, -35665i), vec3<i32>(8793i, 1i, 14038i));

var<private> global2: array<f32, 12> = array<f32, 12>(-581f, -915f, -1084f, 1131f, -962f, -1505f, 265f, -1358f, 1000f, 401f, 500f, -1193f);

var<private> global3: u32;

var<private> global4: vec4<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    global4 = ~firstLeadingBit(countOneBits(vec4<u32>(u_input.a, global4.x, u_input.a, global4.x)) & ~_wgslsmith_add_vec4_u32(vec4<u32>(global4.x, 6161u, u_input.a, 24201u), vec4<u32>(1940u, u_input.a, global4.x, 1u)));
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-515f, 698f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-126f, 156f)))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(0u, 12u)]) - vec2<f32>(-941f, 526f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1416f, 1802f), vec2<f32>(914f, 425f))))))));
    global4 = vec4<u32>(1u, _wgslsmith_add_u32(~_wgslsmith_clamp_u32(u_input.a & u_input.a, 20018u ^ u_input.a, _wgslsmith_mod_u32(global4.x, 29235u)), ~firstTrailingBit(~1u)), _wgslsmith_add_u32(~4294967295u, ~u_input.a), ~countOneBits(77640u));
    let var_1 = ~(-13976i);
    global4 = ~(~abs((vec4<u32>(global4.x, 1587u, 96250u, 1u) >> (vec4<u32>(u_input.a, global4.x, 44936u, u_input.a) % vec4<u32>(32u))) ^ abs(vec4<u32>(global4.x, 0u, global4.x, global4.x))));
    return u_input.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_1 {
    global1 = array<vec3<i32>, 14>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_3(vec4<bool>(arg_0.x, false, arg_0.x, false)), ~(~10557u)), 12u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(~u_input.a, 12u)]))), arg_1.a.x));
    global4 = min(firstLeadingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 0u, u_input.a, global4.x), vec4<u32>(global4.x, u_input.a, 1u, u_input.a))), vec4<u32>(~(global4.x & global4.x), _wgslsmith_dot_vec2_u32(~global4.xw, global4.xy), u_input.a, u_input.a)) | _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~min(vec4<u32>(u_input.a, 136u, global4.x, u_input.a), vec4<u32>(19063u, 19184u, 1u, global4.x)), _wgslsmith_div_vec4_u32(vec4<u32>(global4.x, global4.x, u_input.a, global4.x), vec4<u32>(global4.x, 126264u, global4.x, 0u)) ^ vec4<u32>(global4.x, global4.x, global4.x, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(global4.x, u_input.a, u_input.a, global4.x) & ~vec4<u32>(7608u, u_input.a, 55595u, 16790u), firstTrailingBit(vec4<u32>(21652u, 0u, u_input.a, 1338u)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 4294967295u), vec4<u32>(4294967295u, global4.x, 39093u, u_input.a)) % vec4<u32>(32u))));
    var var_1 = 5596i;
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-418f, _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 12u)])))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)], var_0.x) - vec3<f32>(-1473f, arg_1.a.x, arg_1.a.x))))), arg_0, select(-(~vec2<i32>(-31793i, 0i) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(23220i, 26738i)) | (vec2<i32>(0i, -2661i) << (vec2<u32>(u_input.a, global4.x) % vec2<u32>(32u))), ~(-vec2<i32>(30195i, 2604i))), 1u <= _wgslsmith_mult_u32(~u_input.a, _wgslsmith_clamp_u32(1u, global4.x, global4.x))), global4.x);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    global2 = array<f32, 12>();
    let var_0 = vec3<u32>(arg_1.d, ~max(1u, 77449u), arg_1.d);
    global1 = array<vec3<i32>, 14>();
    let var_1 = ~(-_wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_1.c.x, arg_1.c.x, ~arg_1.c.x), ~_wgslsmith_div_i32(15648i, 38551i)));
    let var_2 = func_2(arg_0.zz, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-353f, global2[_wgslsmith_index_u32(u_input.a, 12u)])))))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(arg_1.a.zy, vec2<f32>(2574f, arg_1.a.x))))) - _wgslsmith_f_op_vec2_f32(trunc(arg_1.a.yz)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_add_vec3_u32(~(~max(max(vec3<u32>(u_input.a, 35397u, u_input.a), global4.yzx), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, global4.x, u_input.a), vec3<u32>(19898u, u_input.a, 4294967295u)))), _wgslsmith_div_vec3_u32(~global4.zyw, global4.wwx));
    global4 = vec4<u32>(reverseBits(global4.x), 36524u, ~2731u, ~_wgslsmith_clamp_u32(global4.x, ~_wgslsmith_mod_u32(1u, 1u), func_3(vec4<bool>(true, false, false, false))));
    let var_1 = func_2(vec2<bool>(true, true), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x * 2104f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.x, 4294967295u, 87849u), 12u)]))));
    let var_2 = func_2(vec2<bool>(select(var_1.c.x, -2147483647i, true) == -40337i, true && all(select(vec2<bool>(true, var_1.b.x), vec2<bool>(var_1.b.x, true), false))), Struct_2(arg_0.a));
    var_0 = global4.zzx << (_wgslsmith_clamp_vec3_u32(~select(~global4.xyz, global4.xzy, true), firstLeadingBit(_wgslsmith_mult_vec3_u32(select(global4.xxy, global4.yzz, var_2.b.x), _wgslsmith_sub_vec3_u32(global4.wxx, vec3<u32>(u_input.a, 28213u, u_input.a)))), _wgslsmith_sub_vec3_u32(abs(abs(vec3<u32>(u_input.a, 38881u, var_2.d))), (global4.zzx | global4.xzz) & _wgslsmith_sub_vec3_u32(global4.yzw, global4.zwx))) % vec3<u32>(32u));
    return Struct_3(_wgslsmith_f_op_f32(ceil(var_2.a.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-629f, -1293f, func_2(vec2<bool>(var_1.b.x, true), Struct_2(arg_0.a)).a.x)), vec2<bool>(any(!vec2<bool>(true, var_2.b.x)), var_1.b.x), -(countOneBits(var_2.c) ^ vec2<i32>(arg_1.x, var_1.c.x)), ~u_input.a), true, var_1.a);
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_3) -> bool {
    global4 = _wgslsmith_mult_vec4_u32(~(~vec4<u32>(~1u, 0u, countOneBits(global4.x), ~arg_0.x)), vec4<u32>(arg_2.b.d, func_3(select(vec4<bool>(arg_2.c, false, false, false), vec4<bool>(arg_2.c, arg_2.c, false, false), true)), arg_2.b.d, _wgslsmith_dot_vec4_u32(select(arg_1, arg_1, arg_2.c), vec4<u32>(23778u, arg_0.x, 68174u, 12675u))) | (vec4<u32>(global4.x, ~arg_1.x, 4294967295u, select(0u, 1u, arg_2.b.b.x)) | vec4<u32>(~arg_1.x, 61182u, 56703u & global4.x, 78572u)));
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, arg_1.x), ~vec2<u32>(u_input.a, _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(u_input.a, 93476u, arg_1.x, u_input.a)))), global4.x);
    let var_1 = -global1[_wgslsmith_index_u32(arg_0.x, 14u)];
    let var_2 = func_1(select(select(select(vec3<bool>(arg_2.b.b.x, false, true), vec3<bool>(false, arg_2.c, arg_2.b.b.x), vec3<bool>(false, false, arg_2.b.b.x)), vec3<bool>(true, true, false), false), vec3<bool>(arg_2.c, true, arg_2.b.b.x & true), any(!select(vec4<bool>(true, arg_2.b.b.x, arg_2.c, false), vec4<bool>(arg_2.c, arg_2.b.b.x, true, arg_2.c), vec4<bool>(false, true, false, arg_2.c)))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1024f, _wgslsmith_f_op_f32(739f * arg_2.a), arg_2.d.x)), arg_2.b.b, func_2(vec2<bool>(arg_2.b.b.x, !arg_2.b.b.x), func_1(vec3<bool>(arg_2.c, false, true), Struct_1(arg_2.d, vec2<bool>(false, arg_2.c), vec2<i32>(2147483647i, arg_2.b.c.x), 4294967295u), -875f)).c, func_3(vec4<bool>(arg_2.b.b.x, false, arg_2.b.b.x, true))), -690f);
    let var_3 = arg_2;
    return !(~firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_2.b.c.x), arg_2.b.c)) < _wgslsmith_add_i32(_wgslsmith_sub_i32(-4521i, var_3.b.c.x), ~max(-73646i, var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(-_wgslsmith_sub_i32(1i, 1i) > _wgslsmith_dot_vec3_i32(-(~global1[_wgslsmith_index_u32(u_input.a, 14u)]), global1[_wgslsmith_index_u32(1u, 14u)]), true, func_5(countOneBits(~vec4<u32>(global4.x, global4.x, global4.x, global4.x)), ~vec4<u32>(12377u, 0u, 85829u, global4.x) & (vec4<u32>(u_input.a, global4.x, 63615u, global4.x) >> (vec4<u32>(u_input.a, u_input.a, global4.x, 57811u) % vec4<u32>(32u))), func_4(func_1(vec3<bool>(false, true, true), Struct_1(vec3<f32>(1000f, global2[_wgslsmith_index_u32(18689u, 12u)], global2[_wgslsmith_index_u32(5706u, 12u)]), vec2<bool>(true, false), vec2<i32>(-18508i, 19997i), global4.x), global2[_wgslsmith_index_u32(70141u, 12u)]), ~global1[_wgslsmith_index_u32(u_input.a, 14u)], Struct_2(vec2<f32>(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)])), Struct_2(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(1u, 12u)])))) | true);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(func_3(!(!vec4<bool>(false, var_0.x, true, var_0.x))), 12u)])), func_4(Struct_2(_wgslsmith_div_vec2_f32(func_2(var_0.zy, Struct_2(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)]))).a.zy, _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 12u)], -772f) + vec2<f32>(global2[_wgslsmith_index_u32(global4.x, 12u)], global2[_wgslsmith_index_u32(1u, 12u)])))), vec3<i32>(1i, -2147483647i, 63018i), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(14644u, 12u)], 1372f), vec2<f32>(-1407f, -245f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1529f, global2[_wgslsmith_index_u32(global4.x, 12u)])))), func_1(vec3<bool>(var_0.x, true, !var_0.x), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-704f, global2[_wgslsmith_index_u32(16532u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)]))), select(vec2<bool>(false, true), var_0.zz, true), firstLeadingBit(vec2<i32>(2147483647i, -14889i)), _wgslsmith_div_u32(1u, global4.x)), global2[_wgslsmith_index_u32(u_input.a, 12u)])).b, 554f <= global2[_wgslsmith_index_u32(func_3(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)), 12u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-356f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)])), _wgslsmith_f_op_f32(-658f + -1000f))));
    global0 = var_1.b.b.x;
    var var_2 = vec2<bool>(func_5(countOneBits(firstTrailingBit(vec4<u32>(global4.x, 26620u, global4.x, u_input.a))) << (firstTrailingBit(vec4<u32>(var_1.b.d, u_input.a, global4.x, global4.x)) % vec4<u32>(32u)), vec4<u32>(u_input.a, ~(~11277u), ~_wgslsmith_div_u32(u_input.a, global4.x), u_input.a), Struct_3(_wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(min(932f, -1000f))), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(var_1.b.a)), vec2<bool>(false, var_1.c), -vec2<i32>(-2012i, 2147483647i), firstTrailingBit(var_1.b.d)), !(var_0.x && var_0.x), var_1.b.a)), true);
    let var_3 = var_1.b;
    let var_4 = 9642u;
    var var_5 = select(vec4<bool>(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.a.x + var_3.a.x), _wgslsmith_f_op_f32(f32(-1f) * -608f))) >= var_1.b.a.x, var_1.c, any(vec3<bool>(func_4(Struct_2(var_3.a.zx), vec3<i32>(var_1.b.c.x, 2147483647i, -1i), Struct_2(var_1.d.zy), Struct_2(var_3.a.xy)).b.b.x, all(vec4<bool>(var_3.b.x, true, true, var_3.b.x)), var_3.b.x))), select(vec4<bool>(var_0.x, true, var_3.b.x, var_3.b.x), !select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, true, false, false), true != var_2.x), (var_1.b.b.x | var_1.b.b.x) | true), !var_3.b.x);
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(~(~(-2147483647i))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) * -360f), global2[_wgslsmith_index_u32(abs(u_input.a), 12u)], func_4(func_1(vec3<bool>(true, false, true), Struct_1(vec3<f32>(493f, global2[_wgslsmith_index_u32(1u, 12u)], -204f), var_0.xx, var_1.b.c, 9250u), -2415f), global1[_wgslsmith_index_u32(global4.x, 14u)], Struct_2(vec2<f32>(var_3.a.x, global2[_wgslsmith_index_u32(7031u, 12u)])), Struct_2(vec2<f32>(-750f, var_3.a.x))).a, _wgslsmith_f_op_f32(-191f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a - global2[_wgslsmith_index_u32(u_input.a, 12u)]))))));
}

