struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<i32>(0i, -15328i, 1i, 20495i));

var<private> global1: Struct_3 = Struct_3(vec4<u32>(4294967295u, 59523u, 118743u, 1u), 0u, 4294967295u);

var<private> global2: vec4<i32>;

var<private> global3: array<f32, 32>;

var<private> global4: array<Struct_1, 20>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(abs(vec4<u32>(82330u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, 0u), ~4294967295u, 4142u), _wgslsmith_mult_u32(firstTrailingBit(4294967295u), global1.b ^ u_input.a.x), ~0u >> (global1.c % 32u))), ~u_input.a.x, u_input.a.x & _wgslsmith_mod_u32(74757u, ~min(global1.c, u_input.a.x)));
    global3 = array<f32, 32>();
    global0 = Struct_4(~(global0.a << (vec4<u32>(~0u, var_0.b, 46317u, global1.a.x) % vec4<u32>(32u))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(4294967295u, 1u)), 32u)] * -295f), global3[_wgslsmith_index_u32(countOneBits(~u_input.a.x), 32u)]);
    var var_2 = 218f <= _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.c, 32u)] * _wgslsmith_f_op_f32(-var_1.x));
    return Struct_3(vec4<u32>(var_0.c, _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0.c, u_input.a.x), ~var_0.c) ^ _wgslsmith_dot_vec3_u32(var_0.a.zwz, global1.a.zyw), ~_wgslsmith_div_u32(u_input.a.x, u_input.a.x) << (~(~4294967295u) % 32u), _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(global1.a.x, var_0.a.x), global1.a.zw), ~(~global1.a.xy))), global1.a.x, var_0.b);
}

fn func_1() -> f32 {
    global4 = array<Struct_1, 20>();
    global1 = func_2();
    var var_0 = _wgslsmith_f_op_f32(1270f + -1376f);
    let var_1 = func_2();
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -656f);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1.a.x & 0u, 32u)]) * -508f) - _wgslsmith_f_op_f32(333f * _wgslsmith_f_op_f32(356f - global3[_wgslsmith_index_u32(var_1.c & u_input.a.x, 32u)]))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(387f, 565f) + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 32u)] * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(1u, 32u)])), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 39377u, 0u), u_input.a), 32u)])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = select(~func_2().a, firstLeadingBit(global1.a), vec4<bool>(true, false, !any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), true));
    global0 = Struct_4(countOneBits(reverseBits(global0.a)));
    var var_1 = Struct_2(Struct_1(var_0.xz, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(arg_2.c, 685f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(40705u, 32u)] * -1392f), _wgslsmith_f_op_f32(-1216f - 2228f), -1256f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c - -1033f)), arg_2.b.x), u_input.a.yy), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_1.b.xyw)) + vec3<f32>(arg_2.c, arg_1.c, arg_1.b.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(816f, arg_1.c, arg_2.b.x))), _wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 32u)], arg_1.b.x, 1601f), vec3<f32>(arg_1.b.x, 292f, -124f)), vec3<bool>(true, true, true))))), vec3<f32>(arg_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(391f - global3[_wgslsmith_index_u32(25262u, 32u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.b.x - -326f)))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-487f))), -983f), arg_1.b.x, 2070f));
    var var_2 = vec4<bool>(true, false, true, true);
    var var_3 = _wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.b.x, var_1.a.b.x), -247f) * -1983f));
    return !(!all(select(var_2.wz, select(vec2<bool>(var_2.x, false), vec2<bool>(false, var_2.x), true), !vec2<bool>(false, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ((_wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, global0.a.x, 26048i), _wgslsmith_div_i32(global2.x, -1i)) << (global1.b % 32u)) ^ global2.x) < select(~(~1i) >> (reverseBits(~u_input.a.x) % 32u), abs(~_wgslsmith_sub_i32(global0.a.x, global0.a.x)), _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(4294967295u, 32u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1.c, 32u)]))) <= _wgslsmith_f_op_f32(f32(-1f) * -488f));
    var var_1 = _wgslsmith_f_op_f32(-414f - _wgslsmith_f_op_f32(func_1()));
    var var_2 = Struct_3((global1.a & global1.a) >> ((global1.a << (vec4<u32>(countOneBits(global1.c), 1u, u_input.a.x, ~global1.b) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(33194u, u_input.a.x), ~(u_input.a.x << (_wgslsmith_dot_vec3_u32(global1.a.yxz, u_input.a) % 32u))), global1.a.x);
    var_1 = _wgslsmith_f_op_f32(select(-312f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(450f * global3[_wgslsmith_index_u32(66581u, 32u)]) + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 32u)]))), _wgslsmith_f_op_f32(max(-262f, _wgslsmith_f_op_f32(839f - _wgslsmith_f_op_f32(trunc(-1800f))))), global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, u_input.a.x), 32u)] <= global3[_wgslsmith_index_u32(func_2().b, 32u)])), var_0));
    let var_3 = select(!vec2<bool>(true, func_3(select(vec2<u32>(global1.a.x, 58179u), vec2<u32>(global1.c, 0u), true), Struct_1(var_2.a.wx, vec4<f32>(global3[_wgslsmith_index_u32(86026u, 32u)], global3[_wgslsmith_index_u32(global1.c, 32u)], -252f, global3[_wgslsmith_index_u32(0u, 32u)]), global3[_wgslsmith_index_u32(u_input.a.x, 32u)], vec2<u32>(global1.c, 9466u)), global4[_wgslsmith_index_u32(u_input.a.x, 20u)])), select(vec2<bool>(true, true), vec2<bool>(!(var_0 && false), true), select(vec2<bool>(!var_0, var_0), vec2<bool>(u_input.a.x >= 0u, var_0), var_0)), select(select(vec2<bool>(false, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(var_0, false), vec2<bool>(var_0, false)), any(vec3<bool>(var_0, true, false)) || true), vec2<bool>(var_0 | true, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(19144u, 32u)]) >= 1000f), true));
    var_2 = Struct_3(max(max(abs(global1.a) & firstLeadingBit(vec4<u32>(0u, 16390u, 0u, 4294967295u)), _wgslsmith_clamp_vec4_u32(~var_2.a, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global1.b, 16247u), vec4<u32>(1u, var_2.c, var_2.a.x, u_input.a.x)), abs(vec4<u32>(4294967295u, 37856u, 4294967295u, global1.c)))), ~vec4<u32>(34844u, 1u, ~u_input.a.x, ~u_input.a.x)), ~_wgslsmith_dot_vec3_u32(abs(func_2().a.xxz), global1.a.yxx), _wgslsmith_add_u32(u_input.a.x, ~(~1u)));
    let var_4 = global1.a.wz;
    global2 = global0.a;
    let var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~global0.a.ww, _wgslsmith_mult_i32(-_wgslsmith_mult_i32(1i, -30267i), ~global2.x), global1.c & _wgslsmith_dot_vec3_u32(max(var_5.a.xyx & var_5.a.zyx, var_2.a.yzy & var_2.a.xxw), _wgslsmith_mult_vec3_u32(vec3<u32>(54871u, 51038u, 27094u) >> (var_5.a.zwz % vec3<u32>(32u)), countOneBits(vec3<u32>(1u, 1u, 4294967295u)))), vec4<u32>(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(17650u, var_5.b), 4294967295u, 33169u), _wgslsmith_mod_u32(reverseBits(~52988u), 4294967295u & ~var_5.b), ~global1.a.x, ~var_4.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1242f, global3[_wgslsmith_index_u32(1u, 32u)], -541f, 1066f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(var_2.b, 32u)], 783f, global3[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(86032u, 32u)]))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], global3[_wgslsmith_index_u32(global1.c, 32u)], global3[_wgslsmith_index_u32(0u, 32u)], -818f)))))))));
}

