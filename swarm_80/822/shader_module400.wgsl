struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(false, false, vec4<f32>(1144f, -1164f, -325f, 1396f)), Struct_1(true, false, vec4<f32>(436f, 1449f, -253f, 1039f)), Struct_1(false, false, vec4<f32>(-2623f, 417f, 792f, 596f)), Struct_1(true, true, vec4<f32>(-206f, 208f, 1169f, -1000f)), Struct_1(false, false, vec4<f32>(-447f, 514f, -300f, -936f)), Struct_1(false, false, vec4<f32>(-389f, -932f, -930f, 732f)), Struct_1(false, false, vec4<f32>(1236f, -197f, 1000f, 2503f)), Struct_1(false, false, vec4<f32>(-803f, 119f, 1572f, -830f)), Struct_1(true, true, vec4<f32>(-646f, -1000f, -372f, -1168f)), Struct_1(true, false, vec4<f32>(-477f, -847f, -589f, -144f)), Struct_1(false, false, vec4<f32>(357f, 619f, 1000f, 158f)), Struct_1(true, false, vec4<f32>(-1249f, 525f, 488f, -634f)), Struct_1(true, true, vec4<f32>(-157f, 1761f, 159f, -299f)), Struct_1(false, true, vec4<f32>(-460f, -1633f, 1029f, 1114f)), Struct_1(false, true, vec4<f32>(407f, -984f, -1323f, -1538f)), Struct_1(false, false, vec4<f32>(1000f, 319f, -827f, -1000f)), Struct_1(false, false, vec4<f32>(2227f, -1887f, 431f, -648f)), Struct_1(true, true, vec4<f32>(-419f, -703f, -807f, -1000f)), Struct_1(true, false, vec4<f32>(-777f, -1000f, -401f, 117f)), Struct_1(false, true, vec4<f32>(-756f, 1000f, -240f, -836f)), Struct_1(false, false, vec4<f32>(651f, -473f, 1346f, 150f)), Struct_1(true, true, vec4<f32>(1105f, 428f, 669f, 290f)));

var<private> global1: array<u32, 2>;

var<private> global2: array<u32, 9>;

var<private> global3: vec4<i32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> f32 {
    global1 = array<u32, 2>();
    var var_0 = _wgslsmith_mod_i32(u_input.a, _wgslsmith_sub_i32(~u_input.b.x, 38198i ^ u_input.a));
    var var_1 = vec4<bool>(any(!select(arg_2.a, !vec3<bool>(false, false, arg_2.b.a), arg_2.b.a)), arg_1, true, true);
    global2 = array<u32, 9>();
    let var_2 = ~((select(max(vec3<u32>(4294967295u, 4294967295u, global2[_wgslsmith_index_u32(0u, 9u)]), vec3<u32>(global1[_wgslsmith_index_u32(54033u, 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 1u)), vec3<u32>(61935u, 2173u, global1[_wgslsmith_index_u32(38949u, 2u)]), true) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(70032u, 2u)], 2u)], global1[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 2u)], 9u)]), vec3<u32>(30027u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 9u)], 9u)], 9u)], 2u)], 2u)], 33989u)), vec3<u32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)], 9u)], 2u)], 0u, 1u)) % vec3<u32>(32u))) << (vec3<u32>(global2[_wgslsmith_index_u32(~abs(global1[_wgslsmith_index_u32(49192u, 2u)]), 9u)], global2[_wgslsmith_index_u32(~(39102u << (0u % 32u)), 9u)], (global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26520u, 9u)], 2u)] ^ 73686u) >> (abs(4294967295u) % 32u)) % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(-arg_2.b.c.x);
}

fn func_2() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(304f, _wgslsmith_f_op_f32(f32(-1f) * -764f))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1596f * 1669f)), !any(vec2<bool>(true, true)), Struct_2(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(1u, 22u)]))), true));
    var var_1 = _wgslsmith_div_u32(45582u, _wgslsmith_sub_u32(min(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 2u)], 1u), vec3<u32>(24844u, 52182u, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8449u, 2u)], 9u)])), 2u)], 2u)]), 1u)) <= ~(4294967295u | _wgslsmith_div_u32(3540u ^ global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7387u, 9u)], 2u)], 9u)], 2u)]), 2u)], 9u)], 2u)]));
    var var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(21747u, ~0u), vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24969u, 2u)], 2u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(67179u, 2u)], 9u)], 2u)], 9u)]), vec3<u32>(0u, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(62613u, 9u)], 2u)], 1u)), global2[_wgslsmith_index_u32(1u, 9u)], 69420u), ~_wgslsmith_clamp_u32(4294967295u, global1[_wgslsmith_index_u32(38988u, 2u)], 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 9u)], 2u)], 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60395u, 2u)], 9u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 9u)], 2u)], 9u)], 9u)])), vec2<u32>(global2[_wgslsmith_index_u32(0u, 9u)], 1u)) >> (select(~vec2<u32>(1u, 1u), vec2<u32>(66036u, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(51422u, 9u)], 9u)], 2u)], 9u)]), true) % vec2<u32>(32u))), vec2<u32>(~_wgslsmith_add_u32(~20171u, global1[_wgslsmith_index_u32(~13563u, 2u)]), global2[_wgslsmith_index_u32(4294967295u ^ ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 9u)], 2u)], 2u)], 2u)], 4294967295u), 9u)]));
    var var_3 = Struct_1(any(vec3<bool>(true, !any(vec4<bool>(false, false, false, true)), any(vec2<bool>(true, true)))), true, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))));
    var var_4 = max(-16754i, abs(2147483647i));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-453f)), -502f));
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_2());
    global0 = array<Struct_1, 22>();
    return Struct_3(1u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.a, 75658u), reverseBits(vec2<u32>(countOneBits(1u), 5290u)));
    global0 = array<Struct_1, 22>();
    return ~(u_input.b << (~firstLeadingBit(vec4<u32>(45998u, global1[_wgslsmith_index_u32(1u, 2u)], 77827u, 1u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(12492i, -(~2147483647i), _wgslsmith_add_i32(1i, _wgslsmith_div_i32(global3.x, global3.x)), max(45837i, global3.x)), (-u_input.b >> (vec4<u32>(18221u, global1[_wgslsmith_index_u32(0u, 2u)], 28674u, 39492u) % vec4<u32>(32u))) | func_4(Struct_1(true, false, vec4<f32>(891f, 474f, 860f, -1191f)), func_1(1u), Struct_2(vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48242u, 9u)], 22u)]))), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(abs(u_input.a), ~global3.x, abs(u_input.b.x), _wgslsmith_dot_vec3_i32(global3.wwy, global3.zxx)), countOneBits(vec4<i32>(u_input.a, global3.x, 36126i, u_input.b.x))), vec4<i32>(u_input.a, -2147483647i, _wgslsmith_dot_vec4_i32(u_input.b, -vec4<i32>(global3.x, u_input.a, global3.x, -1i)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(global3.xzy, vec3<i32>(9275i, 30927i, 0i)), u_input.b.zyx))));
    var var_0 = global0[_wgslsmith_index_u32(~abs((~40092u | _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)])) & ~global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9055u, 9u)] ^ 0u, 2u)]), 22u)];
    var var_1 = 16892i == countOneBits(u_input.a);
    var var_2 = var_0.a;
    var var_3 = Struct_1(true, any(vec3<bool>(true, var_0.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 2u)], 2u)], 2u)], 9u)], 9u)] > global2[_wgslsmith_index_u32(44934u, 9u)])) && true, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(1615f + var_0.c.x)), _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(269f + var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-925f, -346f) * _wgslsmith_div_f32(var_0.c.x, 571f))), vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-var_0.c.x), false, Struct_2(vec3<bool>(true, var_0.a, false), Struct_1(false, false, vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x))))), -1301f, _wgslsmith_f_op_f32(floor(-2815f)), _wgslsmith_f_op_f32(-var_0.c.x))));
    global3 = u_input.b;
    var var_4 = func_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(max(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50532u, 2u)], 2u)], 2u)], ~9464u) >> (global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5506u, 2u)], 9u)], 9u)]), 9u)]), 2u)], 9u)] % 32u)), 9u)], 9u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.c.ywy)), _wgslsmith_f_op_vec3_f32(var_3.c.ywx * vec3<f32>(1572f, 1362f, -1614f)))))));
}

