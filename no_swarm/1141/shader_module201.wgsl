struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: Struct_1 = Struct_1(1435f, vec3<u32>(0u, 4294967295u, 1u), vec3<i32>(1i, 23122i, 2147483647i), 0u, vec3<bool>(false, false, true));

var<private> global2: vec4<u32>;

var<private> global3: vec2<i32>;

var<private> global4: vec3<f32> = vec3<f32>(817f, 522f, 706f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec3<bool> {
    let var_0 = vec2<bool>(false, false && all(arg_0));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(step(global4.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), global0[_wgslsmith_index_u32(55084u, 27u)]) + -134f))), countOneBits(~reverseBits(arg_2.b)), vec3<i32>(2147483647i, arg_2.c.x, _wgslsmith_div_i32(2147483647i, reverseBits(global3.x)) << (1u % 32u)), 32458u, global1.e);
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_1.d, 27u)], -886f, 1391f) - vec3<f32>(-1087f, -240f, arg_2.a))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.x, arg_1.a, global0[_wgslsmith_index_u32(arg_1.b.x, 27u)]), vec3<f32>(146f, -1000f, global0[_wgslsmith_index_u32(134924u, 27u)]), global1.e.x)) * vec3<f32>(1836f, 547f, global4.x)) + vec3<f32>(_wgslsmith_f_op_f32(-global4.x), arg_3, _wgslsmith_f_op_f32(2806f + -217f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_2.d, 27u)], arg_2.a, -1000f), vec3<f32>(global4.x, global4.x, arg_1.a)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, arg_2.a, global1.a) + vec3<f32>(1086f, -1699f, global4.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, -1295f, 587f)))), vec3<f32>(var_1.a, 569f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.a))))))));
    var var_3 = !select(select(!vec4<bool>(false, true, arg_1.e.x, true), arg_0, arg_0), vec4<bool>(!(!arg_1.e.x), all(select(arg_0, arg_0, vec4<bool>(true, var_0.x, false, true))), !(!arg_0.x), true), vec4<bool>(true, true, true, arg_2.e.x & global1.e.x));
    var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -147f), var_1.a, global0[_wgslsmith_index_u32(~firstLeadingBit(global1.d), 27u)]) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_1.a)), _wgslsmith_f_op_f32(1504f + _wgslsmith_div_f32(-936f, -341f)), 834f)));
    return var_1.e;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = min(select(vec4<u32>(abs(arg_0.x), firstLeadingBit(select(u_input.a.x, u_input.a.x, false)), max(~4294967295u, 0u << (u_input.d % 32u)), firstLeadingBit(arg_0.x)), reverseBits(u_input.a & ~u_input.a), any(select(arg_1.e.zz, arg_1.e.xx, true))), ~vec4<u32>(0u << (arg_1.d % 32u), 51977u, ~(~u_input.d), ~1u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4.x)) - _wgslsmith_f_op_f32(round(-308f)))), ~vec3<u32>(0u, ~_wgslsmith_mult_u32(1u, arg_1.d), firstTrailingBit(_wgslsmith_add_u32(var_0.x, 4951u))), global1.c | global1.c, 42579u, global1.e);
    global2 = firstLeadingBit(vec4<u32>(abs(_wgslsmith_mod_u32(58550u, global1.b.x)), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(20700u, 0u), max(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_0.x, 0u))), abs(4294967295u & var_1.b.x)) >> (_wgslsmith_add_vec4_u32(~u_input.a, vec4<u32>(0u, ~15640u, 25844u, 1u)) % vec4<u32>(32u)));
    var var_2 = abs(~(select(var_1.c.zz, var_1.c.zx, vec2<bool>(arg_1.e.x, global1.e.x)) & vec2<i32>(-1i, arg_1.c.x)) ^ select(firstTrailingBit(-var_1.c.yz), _wgslsmith_sub_vec2_i32(global1.c.xy, arg_1.c.yz), global1.e.x));
    let var_3 = select(_wgslsmith_div_i32(select(var_1.c.x ^ firstLeadingBit(0i), -8256i, arg_1.e.x), var_1.c.x & reverseBits(firstLeadingBit(0i))), var_1.c.x, true);
    return max(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(u_input.a ^ vec4<u32>(arg_0.x, global1.d, arg_1.b.x, global2.x), vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, global1.d), u_input.d, ~arg_0.x, ~var_1.b.x)), ~select(~32059u, 7487u, false)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, var_0.x, 1u), ~vec3<u32>(u_input.a.x, 41829u, var_1.d)), vec3<u32>(~arg_1.d, firstTrailingBit(global2.x), firstTrailingBit(1u))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    var var_0 = min(global1.b, global2.yxw);
    global0 = array<f32, 27>();
    var var_1 = _wgslsmith_mult_vec3_u32(func_4(u_input.a.xxy, Struct_1(1451f, ~(~global1.b), _wgslsmith_div_vec3_i32(-vec3<i32>(-43258i, global1.c.x, arg_1.c.x), vec3<i32>(u_input.c.x, global3.x, global3.x)), firstTrailingBit(var_0.x << (global2.x % 32u)), func_3(select(vec4<bool>(false, false, true, arg_1.e.x), vec4<bool>(true, true, false, global1.e.x), false), arg_1, arg_1, global1.a))), _wgslsmith_div_vec3_u32(vec3<u32>(~global2.x, ~_wgslsmith_sub_u32(global1.d, global2.x), select(58928u, ~u_input.a.x, global1.e.x)), vec3<u32>(global1.d, _wgslsmith_mod_u32(~global2.x, _wgslsmith_mult_u32(global1.d, 0u)), 8332u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global4.x + 321f), -248f, _wgslsmith_f_op_f32(arg_1.a - -198f)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0[_wgslsmith_index_u32(global2.x, 27u)], global1.a, global1.a))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1100f, arg_1.a, 286f))), vec3<f32>(global0[_wgslsmith_index_u32(~global1.d, 27u)], 200f, _wgslsmith_div_f32(-644f, global4.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -894f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1512f)), -1000f))));
    global0 = array<f32, 27>();
    return arg_0.x;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<bool>) -> i32 {
    global3 = vec2<i32>(reverseBits(-(func_2(global1.c.xx, Struct_1(-1605f, vec3<u32>(global2.x, u_input.a.x, u_input.d), global1.c, 0u, arg_2), vec4<i32>(global1.c.x, 1i, -39327i, global3.x)) | _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, u_input.b, -43971i, -3318i), vec4<i32>(-1i, global3.x, u_input.e, u_input.b)))), -28405i);
    let var_0 = global1.c;
    let var_1 = Struct_1(global1.a, global1.b, vec3<i32>(_wgslsmith_mod_i32(~(global1.c.x | global1.c.x), select(u_input.e, global1.c.x, false) << (45159u % 32u)), var_0.x, global1.c.x), global1.d, vec3<bool>(false, !(!arg_2.x), false));
    global3 = _wgslsmith_mod_vec2_i32(-(~(~vec2<i32>(global1.c.x, 20865i))) ^ _wgslsmith_add_vec2_i32(var_1.c.zz, ~vec2<i32>(5250i, global1.c.x)), vec2<i32>(global3.x, -countOneBits(1i)) << (select(u_input.a.yz, vec2<u32>(u_input.a.x, ~global2.x), arg_2.x) % vec2<u32>(32u)));
    let var_2 = func_3(!vec4<bool>(all(vec2<bool>(false, true)), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, arg_1), false)), all(select(global1.e, global1.e, var_1.e.x)), true), var_1, Struct_1(global1.a, vec3<u32>(_wgslsmith_clamp_u32(~u_input.d, firstTrailingBit(0u), global2.x ^ 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(48923u, 66320u, var_1.b.x, global1.d) & vec4<u32>(global2.x, 1u, global2.x, u_input.a.x), _wgslsmith_mult_vec4_u32(u_input.a, u_input.a)), global1.d), _wgslsmith_div_vec3_i32(firstTrailingBit(select(vec3<i32>(global1.c.x, var_1.c.x, var_1.c.x), var_1.c, global1.e)), abs(vec3<i32>(global3.x, -1i, u_input.e) >> (global2.wxw % vec3<u32>(32u)))), global1.d, vec3<bool>(false, arg_2.x, global1.e.x)), global4.x);
    return var_0.x;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> vec3<i32> {
    global2 = u_input.a;
    let var_0 = func_3(vec4<bool>(arg_1.e.x, arg_1.e.x, !any(!vec4<bool>(arg_1.e.x, true, false, false)), any(vec2<bool>(true, true))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -270f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-208f, global4.x, false)), -561f))), ~vec3<u32>(4294967295u, abs(arg_1.d), firstTrailingBit(arg_1.b.x)), ~(vec3<i32>(0i, arg_0, 1i) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.x, 0u, global2.x), global1.b, arg_1.b) % vec3<u32>(32u))), ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global2.x, 15430u, 0u), countOneBits(0u)), arg_1.e), arg_1, _wgslsmith_f_op_f32(419f + _wgslsmith_f_op_f32(trunc(global4.x)))).zz;
    var var_1 = global2.x;
    global4 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 27u)], global1.a, -964f) - vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], arg_1.a, 1481f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1038f, 643f, global4.x))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, global0[_wgslsmith_index_u32(11558u, 27u)], -1219f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global1.d, 27u)], global4.x, -721f) * vec3<f32>(global4.x, -1137f, global4.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global1.b.x, 27u)], -258f, global4.x) - vec3<f32>(arg_1.a, global1.a, global1.a))))))));
    let var_2 = Struct_1(arg_1.a, arg_1.b, global1.c, _wgslsmith_sub_u32(func_4(reverseBits(vec3<u32>(1u, global1.b.x, u_input.d)), arg_1).x ^ min(u_input.a.x, reverseBits(0u)), ~(~global1.d) << (_wgslsmith_mod_u32(~1u, firstLeadingBit(arg_1.d)) % 32u)), !global1.e);
    return select(_wgslsmith_div_vec3_i32(-min(vec3<i32>(global3.x, 1i, 0i), vec3<i32>(2147483647i, var_2.c.x, 5397i) << (vec3<u32>(0u, 66671u, u_input.d) % vec3<u32>(32u))), vec3<i32>(countOneBits(15927i), -14704i, global1.c.x)), global1.c, vec3<bool>(!var_0.x, false, !select(true, false, select(var_0.x, true, var_0.x))));
}

fn func_6(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    global3 = vec2<i32>(global1.c.x, abs(_wgslsmith_mod_i32(arg_2.c.x, 1i)));
    global1 = arg_2;
    let var_0 = arg_2;
    var var_1 = vec4<u32>(global2.x, _wgslsmith_sub_u32(u_input.a.x, abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(76431u, arg_2.b.x, global2.x, global2.x), vec4<u32>(arg_0.x, 50405u, global2.x, arg_2.b.x)), _wgslsmith_div_u32(var_0.b.x, global1.d)))), 49441u, 1u);
    var var_2 = true;
    return Struct_1(arg_2.a, select(vec3<u32>(arg_0.x, ~1u, arg_2.d), var_1.wwy, select(vec3<bool>(true, all(vec2<bool>(true, true)), true), select(var_0.e, vec3<bool>(arg_2.e.x, arg_2.e.x, true), func_3(arg_3, arg_2, var_0, -212f)), arg_3.x)), max(var_0.c, _wgslsmith_mult_vec3_i32(global1.c, vec3<i32>(~global1.c.x, arg_2.c.x, -32855i))), select(~abs(~57287u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_0.x, arg_2.b.x, arg_1.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.x, 138110u, u_input.d), vec3<u32>(0u, arg_1.x, var_1.x), vec3<u32>(arg_2.d, 4294967295u, var_1.x)), max(vec3<u32>(38640u, 18917u, global2.x), global1.b))), !var_0.e.x), select(!(!arg_2.e), !arg_3.yzw, arg_2.e));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(~(~(~(~vec2<u32>(4294967295u, 0u)))), u_input.a, Struct_1(925f, select(~(global1.b & vec3<u32>(33586u, global2.x, 7934u)), ~(~global1.b), vec3<bool>(global1.e.x, true, global4.x != global0[_wgslsmith_index_u32(4294967295u, 27u)])), func_5(~func_1(global1.e.x, global1.e.x, global1.e), Struct_1(_wgslsmith_f_op_f32(-global4.x), max(vec3<u32>(4294967295u, 1u, 1u), u_input.a.yxw), firstTrailingBit(vec3<i32>(global3.x, global1.c.x, global3.x)), ~76285u, vec3<bool>(false, false, global1.e.x)), 2738i), reverseBits(0u), func_3(vec4<bool>(global1.e.x, global1.e.x, global1.e.x, global1.e.x), Struct_1(_wgslsmith_f_op_f32(global4.x * 1325f), ~global2.wyx, global1.c, ~50369u, vec3<bool>(false, global1.e.x, true)), Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.x, 27u)] * -956f), vec3<u32>(global1.d, 1206u, global1.d), firstTrailingBit(vec3<i32>(global1.c.x, u_input.b, 97914i)), 1u, global1.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1012f, global0[_wgslsmith_index_u32(28632u, 27u)])) * -592f))), vec4<bool>(true, func_3(select(vec4<bool>(global1.e.x, global1.e.x, global1.e.x, global1.e.x), !vec4<bool>(true, global1.e.x, true, global1.e.x), global1.e.x & true), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1281f), global1.b, global1.c, _wgslsmith_add_u32(1u, 0u), vec3<bool>(true, true, true)), Struct_1(global1.a, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, u_input.a.x, global2.x), global1.b), global1.c, abs(4294967295u), vec3<bool>(false, true, global1.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))).x, global1.e.x, true));
    let var_0 = func_6(_wgslsmith_mult_vec2_u32(reverseBits(~vec2<u32>(global1.b.x, global2.x)), _wgslsmith_add_vec2_u32(global2.xw, global1.b.zy << (vec2<u32>(u_input.d, global1.d) % vec2<u32>(32u)))) & global1.b.xy, abs((_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, global2.x, 78398u, 41255u), u_input.a) >> (abs(vec4<u32>(global1.b.x, u_input.a.x, global1.d, global2.x)) % vec4<u32>(32u))) ^ ~u_input.a), func_6(vec2<u32>(~u_input.d, 38482u), firstLeadingBit(reverseBits(u_input.a)), func_6(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, global2.x), global2.xy), vec4<u32>(select(469u, global2.x, false), 14028u, 4294967295u, 4294967295u), Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(40295u, 27u)]), ~global1.b, vec3<i32>(global1.c.x, 1820i, -27361i), u_input.a.x, global1.e), !vec4<bool>(global1.e.x, false, global1.e.x, false)), vec4<bool>(func_3(vec4<bool>(false, true, global1.e.x, global1.e.x), func_6(global1.b.yz, vec4<u32>(global1.b.x, 4294967295u, 12213u, 1u), Struct_1(-609f, global1.b, vec3<i32>(u_input.e, global3.x, global1.c.x), global2.x, vec3<bool>(global1.e.x, global1.e.x, false)), vec4<bool>(false, false, global1.e.x, global1.e.x)), Struct_1(global4.x, vec3<u32>(32344u, 1u, global2.x), vec3<i32>(-20086i, global3.x, global1.c.x), 37422u, vec3<bool>(true, true, global1.e.x)), global1.a).x, true, global1.e.x, true)), select(vec4<bool>(true, true, true, all(func_6(u_input.a.yy, u_input.a, Struct_1(global1.a, u_input.a.zzy, global1.c, 11321u, vec3<bool>(global1.e.x, global1.e.x, global1.e.x)), vec4<bool>(global1.e.x, global1.e.x, global1.e.x, true)).e.zx)), vec4<bool>(!global1.e.x, true, global1.e.x, func_3(select(vec4<bool>(global1.e.x, global1.e.x, global1.e.x, global1.e.x), vec4<bool>(global1.e.x, global1.e.x, global1.e.x, false), true), func_6(vec2<u32>(49787u, 1u), vec4<u32>(global2.x, global2.x, u_input.a.x, u_input.d), Struct_1(global0[_wgslsmith_index_u32(global2.x, 27u)], vec3<u32>(global1.b.x, global1.d, global2.x), vec3<i32>(-20560i, -1i, u_input.b), 1u, global1.e), vec4<bool>(true, global1.e.x, false, global1.e.x)), Struct_1(global0[_wgslsmith_index_u32(global1.d, 27u)], global2.wyx, vec3<i32>(47626i, u_input.c.x, global3.x), 9117u, vec3<bool>(global1.e.x, false, true)), 2054f).x), !select(select(vec4<bool>(false, false, global1.e.x, false), vec4<bool>(true, global1.e.x, global1.e.x, global1.e.x), global1.e.x), vec4<bool>(global1.e.x, global1.e.x, global1.e.x, true), !global1.e.x)));
    global3 = reverseBits(vec2<i32>(2147483647i, firstTrailingBit(~2147483647i)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a))) - 2845f))), reverseBits(global1.b), _wgslsmith_sub_vec3_i32(~vec3<i32>(var_0.c.x, func_1(var_0.e.x, global1.e.x, vec3<bool>(global1.e.x, true, global1.e.x)), _wgslsmith_add_i32(var_0.c.x, -1i)), vec3<i32>(_wgslsmith_sub_i32(global3.x, global3.x), firstTrailingBit(global1.c.x), ~var_0.c.x) ^ -vec3<i32>(-7892i, var_0.c.x, var_0.c.x)), ~(~_wgslsmith_add_u32(min(1u, global2.x), ~var_0.b.x)), vec3<bool>(func_3(!vec4<bool>(var_0.e.x, global1.e.x, global1.e.x, var_0.e.x), Struct_1(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_sub_vec3_u32(var_0.b, vec3<u32>(global2.x, u_input.d, global1.d)), vec3<i32>(var_0.c.x, 2147483647i, -7816i), max(39345u, 4294967295u), !vec3<bool>(global1.e.x, false, global1.e.x)), Struct_1(_wgslsmith_f_op_f32(-global1.a), firstTrailingBit(vec3<u32>(8307u, u_input.d, u_input.d)), _wgslsmith_mod_vec3_i32(vec3<i32>(global1.c.x, var_0.c.x, 7159i), var_0.c), 4294967295u, select(global1.e, vec3<bool>(false, global1.e.x, false), vec3<bool>(true, var_0.e.x, false))), _wgslsmith_f_op_f32(exp2(global4.x))).x, any(var_0.e.zy), func_6(u_input.a.zw, select(~vec4<u32>(global1.d, var_0.b.x, u_input.d, 16521u), ~u_input.a, var_0.e.x), func_6(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 1u), global2.yz), vec4<u32>(u_input.d, 4294967295u, global1.b.x, 17495u), Struct_1(var_0.a, vec3<u32>(u_input.a.x, 28015u, 24362u), vec3<i32>(-8506i, 16261i, u_input.e), global2.x, vec3<bool>(true, global1.e.x, var_0.e.x)), !vec4<bool>(false, var_0.e.x, var_0.e.x, false)), vec4<bool>(!global1.e.x, true, all(var_0.e.zx), global1.e.x)).e.x));
    let var_2 = func_1(!all(!var_1.e), true, select(!func_3(vec4<bool>(true, global1.e.x, true, var_0.e.x), func_6(vec2<u32>(var_1.b.x, u_input.d), vec4<u32>(0u, global1.b.x, global1.b.x, 4294967295u), var_0, vec4<bool>(global1.e.x, var_0.e.x, var_1.e.x, global1.e.x)), var_1, _wgslsmith_f_op_f32(-442f - var_0.a)), vec3<bool>(func_3(vec4<bool>(var_0.e.x, true, var_0.e.x, global1.e.x), var_0, var_0, 370f).x, !(!global1.e.x), false), true));
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_mod_u32(var_0.b.x, u_input.d)) & 1u, var_0.b.x & global1.d));
}

