struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
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

var<private> global0: array<u32, 12>;

var<private> global1: u32;

var<private> global2: array<f32, 3>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = Struct_3(~(~arg_1.e.x), -38863i);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_1.a, 3u)] - global2[_wgslsmith_index_u32(arg_1.d.x, 3u)]), _wgslsmith_f_op_f32(f32(-1f) * -1084f), true))), global2[_wgslsmith_index_u32(firstTrailingBit(19792u), 3u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_1.e.x, 3u)] * global2[_wgslsmith_index_u32(var_0.a, 3u)]), -783f, global2[_wgslsmith_index_u32(14420u, 3u)]);
    global1 = ~4294967295u;
    var var_2 = global0[_wgslsmith_index_u32(1u, 12u)];
    var var_3 = Struct_3(~_wgslsmith_div_u32(60514u, 44193u), -(_wgslsmith_dot_vec3_i32(u_input.d.xwz >> (arg_1.e % vec3<u32>(32u)), u_input.d.zyy >> (vec3<u32>(var_0.a, 1u, var_0.a) % vec3<u32>(32u))) >> (select(4294967295u, u_input.c ^ u_input.a, any(vec2<bool>(arg_0.x, arg_0.x))) % 32u)));
    return _wgslsmith_f_op_vec4_f32(select(var_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), 1228f, _wgslsmith_f_op_f32(f32(-1f) * -1012f), _wgslsmith_f_op_f32(f32(-1f) * -751f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_1 * var_1), var_1, true))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1633f, global2[_wgslsmith_index_u32(21446u, 3u)], -710f, 1317f))), var_1)), select(select(!arg_0, arg_0, all(select(arg_0.wz, arg_0.wz, vec2<bool>(arg_0.x, arg_0.x)))), vec4<bool>(select(arg_0.x, true, !arg_0.x), select(arg_0.x, arg_0.x, false) || false, arg_0.x, all(!arg_0.xw)), vec4<bool>(true, arg_0.x, all(select(vec4<bool>(false, true, false, true), arg_0, false)), arg_0.x))));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    let var_0 = -1i;
    var var_1 = 4294967295u;
    var var_2 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(~u_input.d.x, var_0, arg_2.x), u_input.d.yxw >> (vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, arg_0), 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], _wgslsmith_sub_u32(4294967295u, 0u)) % vec3<u32>(32u))), -(~vec3<i32>(0i, ~var_0, arg_2.x)), vec3<i32>(min(firstTrailingBit(-1i), 21844i), ~(~(-9560i) | _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, var_0), vec3<i32>(u_input.b, 15088i, -27938i))), ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_0, var_0, arg_2.x), _wgslsmith_sub_i32(-6141i, arg_2.x))));
    var var_3 = Struct_1(~_wgslsmith_sub_u32(~arg_0, _wgslsmith_dot_vec2_u32(~vec2<u32>(545u, arg_0), vec2<u32>(u_input.a, 4294967295u) & vec2<u32>(u_input.a, arg_0))), arg_2, _wgslsmith_sub_i32(0i, firstLeadingBit(_wgslsmith_sub_i32(abs(arg_2.x), ~arg_2.x))), countOneBits(vec2<u32>(_wgslsmith_add_u32(u_input.c, 4294967295u), 1u) & (reverseBits(vec2<u32>(4294967295u, u_input.a)) & (vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 12u)], global0[_wgslsmith_index_u32(1u, 12u)]) ^ vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 12u)], 85057u)))), vec3<u32>(~u_input.c, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u & u_input.c, 12u)] << (57266u % 32u), ~(u_input.a ^ arg_0)), 39709u));
    var var_4 = -1717f;
    return 1u;
}

fn func_2() -> Struct_2 {
    global0 = array<u32, 12>();
    let var_0 = Struct_1(func_4(~firstTrailingBit(_wgslsmith_mod_u32(29202u, 90320u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), Struct_1(0u, u_input.d.zy, u_input.b, vec2<u32>(1u, 0u), vec3<u32>(52543u, 32463u, 4294967295u)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c, 3u)], global2[_wgslsmith_index_u32(26728u, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)], 1000f), vec4<f32>(global2[_wgslsmith_index_u32(u_input.c, 3u)], global2[_wgslsmith_index_u32(u_input.a, 3u)], 210f, -1030f), vec4<bool>(true, true, true, true))))), vec2<i32>(-14742i, u_input.b) & select(u_input.d.xz, -u_input.d.wx, vec2<bool>(true, true)), select(any(vec4<bool>(true, false, false, true)), select(true, false, false) != true, true)), ~u_input.d.yy, 8661i, _wgslsmith_add_vec2_u32((_wgslsmith_clamp_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 12u)], u_input.a), vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 12u)], 0u), vec2<u32>(u_input.a, 20u)) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))) >> ((vec2<u32>(u_input.c, u_input.a) ^ (vec2<u32>(1u, global0[_wgslsmith_index_u32(1u, 12u)]) & vec2<u32>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]))) % vec2<u32>(32u)), ~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.c, 12u)]), vec2<u32>(u_input.c, 47079u)), _wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(u_input.c, 12u)]), vec2<u32>(u_input.c, global0[_wgslsmith_index_u32(0u, 12u)])))), abs(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 12u)], _wgslsmith_mult_u32(~66087u, global0[_wgslsmith_index_u32(~u_input.c, 12u)]), func_4(~0u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(63457u, 3u)], 609f, global2[_wgslsmith_index_u32(18458u, 3u)], global2[_wgslsmith_index_u32(u_input.c, 3u)])), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(65518i, -58669i)), global0[_wgslsmith_index_u32(u_input.a, 12u)] <= 1u))));
    var var_1 = vec2<u32>(81922u, global0[_wgslsmith_index_u32((~_wgslsmith_dot_vec4_u32(vec4<u32>(16550u, 23916u, global0[_wgslsmith_index_u32(0u, 12u)], 31268u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(61950u, 12u)], u_input.a, 1u)) | global0[_wgslsmith_index_u32(86560u, 12u)]) | 26883u, 12u)]);
    global0 = array<u32, 12>();
    var var_2 = Struct_3(1u, var_0.b.x);
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1347f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16338u, 12u)], 3u)], global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(var_0.e.x, 3u)]) - vec4<f32>(1583f, -127f, global2[_wgslsmith_index_u32(u_input.c, 3u)], global2[_wgslsmith_index_u32(var_1.x, 3u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(48127u, 3u)], 660f, 281f, global2[_wgslsmith_index_u32(var_0.d.x, 3u)]))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(261f, global2[_wgslsmith_index_u32(6693u, 3u)], global2[_wgslsmith_index_u32(var_0.a, 3u)], global2[_wgslsmith_index_u32(6997u, 3u)]), vec4<f32>(-1013f, -1000f, global2[_wgslsmith_index_u32(93073u, 3u)], -269f), true))))))), u_input.d.xzx, var_0);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> vec2<f32> {
    global1 = 4562u;
    let var_0 = all(vec2<bool>(false, true));
    return vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + global2[_wgslsmith_index_u32(24144u, 3u)]) * 705f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_add_u32(33467u, 1u), 3u)]), _wgslsmith_f_op_f32(f32(-1f) * -1211f))), var_0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 3u)]) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.x, 695f))))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: bool) -> f32 {
    global0 = array<u32, 12>();
    let var_0 = _wgslsmith_sub_u32(63395u, _wgslsmith_div_u32(arg_0, 8375u));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 12u)] ^ var_0, 3u)]), -2081f) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-936f, global2[_wgslsmith_index_u32(13183u, 3u)]))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2[_wgslsmith_index_u32(arg_2, 3u)], global2[_wgslsmith_index_u32(arg_0, 3u)]))), vec2<bool>(arg_3, true))), _wgslsmith_f_op_vec2_f32(func_5(Struct_2(vec4<f32>(-731f, -1000f, global2[_wgslsmith_index_u32(arg_2, 3u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 12u)], 3u)]), u_input.d.wwz, Struct_1(6068u, vec2<i32>(1856i, u_input.b), u_input.b, vec2<u32>(3304u, 1u), vec3<u32>(0u, 54043u, global0[_wgslsmith_index_u32(arg_0, 12u)]))), func_2())))))));
    global1 = 32250u;
    let var_2 = func_2();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -1450f)), _wgslsmith_f_op_f32(trunc(1696f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(25023u, 5407u, 11130u, false))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 3u)] - _wgslsmith_div_f32(-309f, global2[_wgslsmith_index_u32(0u, 3u)])))));
    let var_1 = Struct_4(vec4<bool>(!(global2[_wgslsmith_index_u32(4294967295u, 3u)] < 174f) || true, true, true, true));
    var var_2 = !any(!var_1.a);
    var var_3 = vec3<bool>(var_1.a.x, any(var_1.a.yx), !(!(var_0.x == 1000f)));
    let var_4 = Struct_3(1u, ~u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(9532i, func_2().a.x);
}

