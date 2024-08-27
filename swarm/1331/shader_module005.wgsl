struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(-243f, true), Struct_3(427f, false), Struct_3(222f, false), Struct_3(-1410f, false), Struct_3(990f, false), Struct_3(1434f, false), Struct_3(-1234f, true), Struct_3(-1000f, true), Struct_3(-526f, true), Struct_3(-391f, true), Struct_3(453f, true), Struct_3(-1700f, false), Struct_3(1253f, true), Struct_3(533f, false), Struct_3(1700f, true), Struct_3(-516f, false), Struct_3(742f, false), Struct_3(-945f, false), Struct_3(954f, true), Struct_3(1000f, false), Struct_3(-375f, false));

var<private> global2: array<bool, 7>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<i32>(8782i, i32(-2147483648))), vec2<u32>(48181u, 0u), vec4<f32>(474f, 343f, -2048f, 1000f), vec4<f32>(-1000f, -1000f, -152f, 552f), 1u);

var<private> global4: array<Struct_1, 24>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> u32 {
    let var_0 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(-8632i, 52220i), _wgslsmith_div_i32(49172i, -14339i)));
    var var_1 = global3.a;
    var var_2 = global1[_wgslsmith_index_u32(global3.b.x, 21u)];
    var var_3 = _wgslsmith_f_op_f32(-1f);
    let var_4 = select(!select(vec2<bool>(global0[_wgslsmith_index_u32(~global3.b.x, 2u)], arg_0.b), vec2<bool>(all(vec4<bool>(var_2.b, global0[_wgslsmith_index_u32(1u, 2u)], false, arg_0.b)), true), select(vec2<bool>(arg_0.b, true), select(vec2<bool>(false, var_2.b), vec2<bool>(var_2.b, false), arg_0.b), true)), select(vec2<bool>(arg_0.b, !global2[_wgslsmith_index_u32(~arg_1, 7u)]), select(vec2<bool>(true, true), vec2<bool>(!global0[_wgslsmith_index_u32(0u, 2u)], false), !vec2<bool>(global0[_wgslsmith_index_u32(global3.e, 2u)], global0[_wgslsmith_index_u32(1u, 2u)])), false), vec2<bool>(any(!select(vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(var_2.b, global0[_wgslsmith_index_u32(19364u, 2u)], false), vec3<bool>(true, global2[_wgslsmith_index_u32(global3.b.x, 7u)], true))), var_2.b));
    return 17739u;
}

fn func_2(arg_0: bool) -> Struct_1 {
    global3 = Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.e, 67922u), 24u)], vec2<u32>(func_3(Struct_3(-1365f, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.b.x, 69056u), 2u)]), reverseBits(~global3.b.x)), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(global3.b.x, global3.b.x), global3.e)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(global3.c.x)), _wgslsmith_f_op_f32(1128f + -440f), global3.d.x, global3.c.x) + global3.c))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-530f + global3.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -378f))), 320f, 352f, 779f), 4294967295u);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global3.c.x)))))));
    global0 = array<bool, 2>();
    var var_1 = global1[_wgslsmith_index_u32(1u, 21u)];
    let var_2 = !select(!(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(global3.b.x, 2u)], arg_0), vec3<bool>(true, true, global2[_wgslsmith_index_u32(15849u, 7u)]), global2[_wgslsmith_index_u32(global3.b.x, 7u)])), !vec3<bool>(false && arg_0, true, 11239u < global3.b.x), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, arg_0, global0[_wgslsmith_index_u32(global3.e, 2u)]), global2[_wgslsmith_index_u32(4294967295u, 7u)])));
    return Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.a, u_input.b.x), -2147483647i), firstTrailingBit(vec2<i32>(-1i, global3.a.a.x) | global3.a.a)) << (vec2<u32>(global3.b.x, global3.b.x) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> u32 {
    var var_0 = vec4<u32>(2525u, 17306u, ~(global3.b.x ^ (~0u ^ firstLeadingBit(global3.b.x))), ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, ~24175u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(global3.e, 0u), global3.e)));
    let var_1 = Struct_1(vec2<i32>(arg_3 | -(~arg_1.a.x), arg_0.a.x));
    let var_2 = select(!select(!(!vec2<bool>(true, global2[_wgslsmith_index_u32(31190u, 7u)])), vec2<bool>(global2[_wgslsmith_index_u32(global3.b.x, 7u)] && global2[_wgslsmith_index_u32(var_0.x, 7u)], all(vec4<bool>(global0[_wgslsmith_index_u32(global3.b.x, 2u)], false, false, global2[_wgslsmith_index_u32(global3.b.x, 7u)]))), !select(vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 7u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 2u)]), global2[_wgslsmith_index_u32(global3.b.x, 7u)])), select(select(select(!vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(global3.b.x, 2u)], false), select(vec2<bool>(global2[_wgslsmith_index_u32(var_0.x, 7u)], global2[_wgslsmith_index_u32(1u, 7u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(global3.e, 2u)]), vec2<bool>(global2[_wgslsmith_index_u32(global3.e, 7u)], false))), select(!vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 7u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(global3.b.x, 2u)], global0[_wgslsmith_index_u32(20852u, 2u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 2u)], false), global0[_wgslsmith_index_u32(0u, 2u)]), select(vec2<bool>(false, global2[_wgslsmith_index_u32(global3.b.x, 7u)]), vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], false))), vec2<bool>(true, all(vec3<bool>(global2[_wgslsmith_index_u32(15414u, 7u)], global0[_wgslsmith_index_u32(global3.b.x, 2u)], false)))), select(!(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 7u)], false)), vec2<bool>(any(vec2<bool>(false, true)), global3.d.x <= global3.c.x), select(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, var_0.x), 7u)], false, !global0[_wgslsmith_index_u32(69812u, 2u)])), !(!(!global0[_wgslsmith_index_u32(45940u, 2u)]))), select(vec2<bool>((u_input.b.x > arg_1.a.x) || select(global0[_wgslsmith_index_u32(global3.b.x, 2u)], global0[_wgslsmith_index_u32(13487u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]), any(vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 7u)], false, false))), !select(vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(1u, 7u)], true), vec2<bool>(true, true)), global2[_wgslsmith_index_u32(~(~21391u), 7u)]));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-global3.d.x), !all(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 2u)]))));
    var var_4 = var_2;
    return 1u;
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    let var_0 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~28955u, 38057u, ~1u, 1u), ~(~vec4<u32>(global3.e, global3.b.x, global3.b.x, 20757u))), ~vec4<u32>(global3.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 75893u, 82164u), vec4<u32>(0u, 4294967295u, global3.e, global3.b.x)), firstLeadingBit(global3.e), min(global3.e, 13077u)));
    let var_1 = vec2<bool>(any(select(vec2<bool>(global3.c.x >= 1074f, select(false, global0[_wgslsmith_index_u32(var_0.x, 2u)], true)), !select(vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 7u)]), vec2<bool>(global2[_wgslsmith_index_u32(var_0.x, 7u)], false), vec2<bool>(global2[_wgslsmith_index_u32(0u, 7u)], true)), global2[_wgslsmith_index_u32(0u, 7u)])), global2[_wgslsmith_index_u32(func_3(global1[_wgslsmith_index_u32(abs(~8595u), 21u)], func_4(global4[_wgslsmith_index_u32(30934u, 24u)], func_2(true), ~(-34054i), _wgslsmith_mod_i32(global3.a.a.x, -1i))) ^ ~global3.b.x, 7u)]);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global3.d.x - _wgslsmith_f_op_f32(floor(-1410f))));
    global0 = array<bool, 2>();
    var var_3 = vec4<i32>(global3.a.a.x, 19229i, -(-_wgslsmith_mod_i32(1i, u_input.b.x) >> (4294967295u % 32u)), 2147483647i);
    return global1[_wgslsmith_index_u32(global3.b.x >> (~_wgslsmith_div_u32(18548u, var_0.x) % 32u), 21u)];
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    global1 = array<Struct_3, 21>();
    global3 = Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(arg_0.zw, vec2<i32>(-1i) * -u_input.b)), ~(~(~reverseBits(global3.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3.d + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-390f, -971f, global3.d.x, global3.c.x)) + _wgslsmith_f_op_vec4_f32(sign(global3.c))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c.x, -1987f)), -581f, global3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.d.x, _wgslsmith_f_op_f32(ceil(global3.d.x))))), global3.b.x);
    global4 = array<Struct_1, 24>();
    var var_0 = func_5(global4[_wgslsmith_index_u32(~func_4(func_2(true), Struct_1(arg_0.xz), _wgslsmith_div_i32(global3.a.a.x, -64589i), ~abs(arg_0.x)), 24u)]);
    let var_1 = global4[_wgslsmith_index_u32(global3.b.x, 24u)];
    return Struct_2(Struct_1(select(var_1.a, vec2<i32>(~global3.a.a.x, 16292i), select(vec2<bool>(true, var_0.b), vec2<bool>(false, global0[_wgslsmith_index_u32(45252u, 2u)]), !vec2<bool>(var_0.b, global2[_wgslsmith_index_u32(global3.b.x, 7u)])))), global3.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-355f, 1000f, global3.c.x, 781f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1324f), 1415f, var_0.a, -1518f)) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global3.c, vec4<f32>(-1139f, var_0.a, global3.c.x, -1092f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a, 1524f, var_0.a, 1000f), vec4<f32>(global3.d.x, global3.c.x, -462f, 254f))) * _wgslsmith_f_op_vec4_f32(global3.c + vec4<f32>(global3.d.x, global3.c.x, -720f, 1580f))), vec4<f32>(_wgslsmith_f_op_f32(1339f - var_0.a), _wgslsmith_f_op_f32(global3.d.x + var_0.a), global3.c.x, -1459f))) * global3.c), _wgslsmith_clamp_u32(global3.e << (max(global3.b.x, _wgslsmith_mult_u32(25671u, 0u)) % 32u), global3.e << (~firstTrailingBit(global3.b.x) % 32u), 5076u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -735f;
    var var_1 = Struct_1(_wgslsmith_sub_vec2_i32(min(select(global3.a.a, vec2<i32>(u_input.b.x, 35899i), !vec2<bool>(global2[_wgslsmith_index_u32(0u, 7u)], true)), global3.a.a), vec2<i32>(global3.a.a.x, -1i >> ((global3.e >> (global3.e % 32u)) % 32u))));
    let var_2 = func_1(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_1.a.x, -57154i, var_1.a.x, global3.a.a.x) | (~vec4<i32>(-20766i, var_1.a.x, 0i, var_1.a.x) & (vec4<i32>(-26159i, global3.a.a.x, -2147483647i, -2147483647i) | vec4<i32>(67098i, 0i, 7163i, var_1.a.x))), vec4<i32>(select(max(var_1.a.x, var_1.a.x), i32(-1i) * -2564i, global0[_wgslsmith_index_u32(0u, 2u)]), i32(-1i) * -global3.a.a.x, reverseBits(u_input.b.x) << ((global3.b.x << (25592u % 32u)) % 32u), 41594i)));
    global0 = array<bool, 2>();
    var var_3 = any(!select(vec4<bool>(!global2[_wgslsmith_index_u32(global3.b.x, 7u)], 0u >= global3.b.x, all(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 2u)], true)), all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 2u)], false, global2[_wgslsmith_index_u32(4294967295u, 7u)], true))), select(select(vec4<bool>(global2[_wgslsmith_index_u32(28134u, 7u)], true, global2[_wgslsmith_index_u32(4294967295u, 7u)], false), vec4<bool>(global0[_wgslsmith_index_u32(15711u, 2u)], false, global2[_wgslsmith_index_u32(67204u, 7u)], false), vec4<bool>(true, global2[_wgslsmith_index_u32(global3.e, 7u)], global2[_wgslsmith_index_u32(0u, 7u)], true)), vec4<bool>(global2[_wgslsmith_index_u32(58597u, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)], true, false), true), any(!vec3<bool>(false, global2[_wgslsmith_index_u32(6570u, 7u)], false))));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(countOneBits(vec3<u32>(1u, 9457u, 56068u))) ^ vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(1u), ~global3.e), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.e, var_2.e, 68770u, 0u), vec4<u32>(global3.b.x, 24604u, 37980u, var_2.e)), 4713u, func_1(vec4<i32>(2147483647i, u_input.a, 0i, u_input.a)).b.x), 24225u), u_input.a, -var_1.a.x, -466f, var_2.b.x);
}

