struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(false, vec2<bool>(true, true), true, -663f, -485f), Struct_1(false, vec2<bool>(true, true), true, 675f, -412f), Struct_1(true, vec2<bool>(true, true), false, -370f, 1199f), Struct_1(true, vec2<bool>(false, true), true, -2495f, -698f), Struct_1(false, vec2<bool>(false, false), true, 824f, 248f), Struct_1(true, vec2<bool>(false, true), false, 1354f, 1000f), Struct_1(false, vec2<bool>(false, false), false, -805f, 1195f), Struct_1(false, vec2<bool>(false, false), false, 1000f, -766f), Struct_1(false, vec2<bool>(false, false), true, -709f, -1000f), Struct_1(false, vec2<bool>(true, true), true, -1219f, -818f), Struct_1(false, vec2<bool>(true, false), false, 928f, -745f), Struct_1(true, vec2<bool>(false, true), true, -198f, 320f), Struct_1(true, vec2<bool>(true, true), true, -1623f, -1000f), Struct_1(true, vec2<bool>(true, false), false, 873f, 643f), Struct_1(false, vec2<bool>(true, false), true, 618f, 346f), Struct_1(true, vec2<bool>(true, false), true, -612f, 312f), Struct_1(false, vec2<bool>(true, true), true, 1000f, 2170f), Struct_1(false, vec2<bool>(true, true), true, 600f, -1621f), Struct_1(false, vec2<bool>(true, false), false, -1000f, 1109f), Struct_1(false, vec2<bool>(true, true), false, 1028f, -1000f), Struct_1(false, vec2<bool>(false, false), false, -948f, -1099f), Struct_1(false, vec2<bool>(false, false), true, -737f, -1589f), Struct_1(true, vec2<bool>(false, false), false, -1818f, 610f));

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(true, vec2<bool>(false, false), true, 1000f, -259f);

var<private> global3: bool;

var<private> global4: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(-1189f, -1461f), vec2<f32>(-184f, -426f), vec2<f32>(783f, 1591f), vec2<f32>(-999f, -1709f), vec2<f32>(462f, 2090f), vec2<f32>(1351f, 534f), vec2<f32>(122f, -1291f), vec2<f32>(-400f, 1422f), vec2<f32>(-330f, -789f), vec2<f32>(735f, 137f), vec2<f32>(-3142f, 190f), vec2<f32>(-206f, 1000f), vec2<f32>(113f, 524f), vec2<f32>(1485f, -153f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> u32 {
    global2 = Struct_1(u_input.c.x <= -_wgslsmith_div_i32(abs(u_input.c.x), u_input.c.x), vec2<bool>(select(any(vec2<bool>(global1.a, arg_3.b.x)), false, false), true), !select(true, any(vec3<bool>(global2.a, true, arg_3.c)), global2.c) & (4294967295u != u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(min(global1.e, _wgslsmith_f_op_f32(-214f * -165f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1347f)), _wgslsmith_f_op_f32(global1.e - 1034f), global1.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1454f))));
    var var_0 = u_input.b;
    let var_1 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(23446u, abs(firstLeadingBit(4294967295u))), ~8938u), u_input.b);
    let var_2 = firstLeadingBit(abs(-(~vec3<i32>(u_input.c.x, -1i, -37251i))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(632f, 1284f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1191f))));
    return _wgslsmith_add_u32(countOneBits(~countOneBits(u_input.a ^ 4294967295u)), _wgslsmith_clamp_u32(max(15793u, u_input.a), u_input.b ^ ~(~1u), ~(30428u >> (1u % 32u))));
}

fn func_2() -> vec4<i32> {
    var var_0 = 50059u;
    global1 = global0[_wgslsmith_index_u32(func_3(!global1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(~firstLeadingBit(u_input.b), 14u)])), _wgslsmith_add_u32(u_input.b, abs(14123u)), global0[_wgslsmith_index_u32(1u, 23u)]), 23u)];
    var var_1 = global0[_wgslsmith_index_u32(select(min(u_input.a, u_input.a), _wgslsmith_div_u32(func_3(true, global4[_wgslsmith_index_u32(4294967295u, 14u)], ~u_input.a, global0[_wgslsmith_index_u32(~u_input.a, 23u)]), ~firstLeadingBit(reverseBits(4294967295u))), u_input.c.x == ~1i), 23u)];
    var var_2 = ~4294967295u;
    let var_3 = global1.b.x;
    return _wgslsmith_div_vec4_i32(u_input.c, _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.c, u_input.c), u_input.c), _wgslsmith_mod_vec4_i32(u_input.c, select(vec4<i32>(u_input.c.x, 1i, u_input.c.x, u_input.c.x), vec4<i32>(-84980i, u_input.c.x, -2147483647i, u_input.c.x), vec4<bool>(global1.b.x, global2.b.x, true, global2.c)))), firstLeadingBit(u_input.c)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    global4 = array<vec2<f32>, 14>();
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d, 439f, global1.d, global1.d) + vec4<f32>(-354f, -1793f, 477f, global1.d)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-911f, -503f, 332f, 1998f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-302f, global1.d, 1301f, -1062f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -2185f, -374f, global2.d)))) + vec4<f32>(_wgslsmith_f_op_f32(global1.d - 254f), global1.d, 740f, _wgslsmith_f_op_f32(ceil(622f)))), select(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, global2.b.x, global2.b.x, false), true), vec4<bool>(true, arg_1.b.x, arg_1.b.x, global2.c), !vec4<bool>(global2.c, false, true, true)), select(!vec4<bool>(false, global2.a, global2.c, false), vec4<bool>(global2.b.x, true, false, global1.c), !global1.c), true), select(!vec4<bool>(global1.b.x, false, arg_1.a, arg_1.c), !select(vec4<bool>(global1.c, global1.c, true, global1.a), vec4<bool>(global2.c, false, global2.a, global2.c), vec4<bool>(global1.a, global2.c, false, false)), true), vec4<bool>(false, all(vec2<bool>(false, false)), any(!vec3<bool>(global1.b.x, arg_1.b.x, global2.b.x)), global2.a))));
    var var_1 = global1.a;
    let var_2 = arg_1;
    var var_3 = global0[_wgslsmith_index_u32(arg_0, 23u)];
    return Struct_1(false, vec2<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1597f, global2.d), arg_1.e)) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.d, var_0.x)), true), true, -438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -298f) - -1111f)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    global1 = arg_2;
    let var_0 = u_input.c;
    var var_1 = func_4(_wgslsmith_sub_u32(countOneBits(~39037u), 1u << ((~1u | ~arg_3.x) % 32u)), global0[_wgslsmith_index_u32(~0u, 23u)], countOneBits(_wgslsmith_clamp_vec4_i32(func_2() << (abs(vec4<u32>(u_input.b, arg_3.x, arg_3.x, arg_3.x)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(u_input.c, abs(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, arg_0))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, -42869i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, arg_0, -21515i, -11462i)) << (select(vec4<u32>(arg_3.x, arg_3.x, u_input.b, 49042u), vec4<u32>(41891u, 4294967295u, arg_3.x, u_input.b), vec4<bool>(arg_1, true, true, false)) % vec4<u32>(32u)))));
    var var_2 = all(!select(!vec2<bool>(var_1.b.x, var_1.a), select(global1.b, arg_2.b, !vec2<bool>(arg_2.c, global2.b.x)), var_1.b));
    var var_3 = !select(var_1.b, vec2<bool>(global1.a, true), true);
    return Struct_1(any(vec4<bool>(false, all(select(global1.b, arg_2.b, vec2<bool>(global2.c, true))), !any(vec3<bool>(arg_2.c, true, var_3.x)), any(!vec3<bool>(false, true, global1.b.x)))), arg_2.b, !func_4(67423u, func_4(~9985u, Struct_1(true, vec2<bool>(false, true), arg_2.a, global1.e, -1277f), -vec4<i32>(arg_0, 52882i, u_input.c.x, var_0.x)), _wgslsmith_sub_vec4_i32(u_input.c, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, -11376i, u_input.c.x, var_0.x), vec4<i32>(var_0.x, u_input.c.x, u_input.c.x, 1i)))).c, _wgslsmith_f_op_f32(-arg_2.d), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2371f)) + _wgslsmith_f_op_f32(-global2.d)), -1899f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, -18319i), u_input.c.zx), vec2<i32>(u_input.c.x, u_input.c.x)), _wgslsmith_sub_i32(u_input.c.x, -(~u_input.c.x))), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-3372i, 1i, u_input.c.x)), vec3<i32>(_wgslsmith_add_i32(u_input.c.x, -1i), min(u_input.c.x, 11148i), -2147483647i)) == 34972i, Struct_1(~4294967295u >= select(1u, _wgslsmith_sub_u32(u_input.a, 32657u), any(vec4<bool>(global1.a, true, true, true))), global2.b, global1.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-810f - 221f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(959f - 824f)))), global1.d), ~(~vec3<u32>(1u, ~1u, ~45972u)));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 1u), 23u)];
    var var_2 = !vec4<bool>(var_1.c, func_1(min(-u_input.c.x, firstTrailingBit(86461i)), -1249f > _wgslsmith_f_op_f32(abs(global2.d)), func_4(~u_input.a, Struct_1(global2.b.x, vec2<bool>(var_1.c, var_0.c), true, -867f, var_0.e), max(u_input.c, vec4<i32>(-24427i, 2147483647i, u_input.c.x, 2147483647i))), ~vec3<u32>(u_input.b, u_input.b, 0u) | _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b), vec3<u32>(4294967295u, 53448u, u_input.a))).a, true, (true & any(vec3<bool>(false, var_0.a, false))) == !(var_0.a | var_1.c));
    let var_3 = ~u_input.c.wy;
    var var_4 = vec4<bool>(!(true && (all(var_2.xxw) != var_0.c)), func_4(1u, Struct_1(countOneBits(-1i) == _wgslsmith_add_i32(2147483647i, var_3.x), global1.b, any(vec4<bool>(var_1.b.x, global2.b.x, var_0.c, var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(590f, 696f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(685f)), _wgslsmith_f_op_f32(f32(-1f) * -174f))), -vec4<i32>(_wgslsmith_mult_i32(u_input.c.x, 2147483647i), -14680i, _wgslsmith_dot_vec3_i32(u_input.c.zwz, vec3<i32>(var_3.x, -41647i, 1067i)), u_input.c.x)).a, global1.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1057f)) * _wgslsmith_f_op_f32(ceil(global2.e))))) <= _wgslsmith_f_op_f32(f32(-1f) * -1677f));
    var var_5 = reverseBits(select(vec4<u32>(_wgslsmith_add_u32(~u_input.b, _wgslsmith_sub_u32(37783u, 1u)), func_3(true, global4[_wgslsmith_index_u32(firstLeadingBit(1u), 14u)], 32884u, func_1(0i, var_2.x, Struct_1(var_2.x, var_0.b, true, global1.e, global2.d), vec3<u32>(23256u, u_input.a, 0u))), 0u << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 44708u, 29604u), vec4<u32>(100922u, u_input.a, u_input.a, 1u)) % 32u), u_input.a), _wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u), vec4<u32>(91418u, 0u, 67348u, u_input.a), global2.e < -711f), countOneBits(select(vec4<u32>(37149u, u_input.a, u_input.a, 41073u), vec4<u32>(u_input.b, 32284u, u_input.b, 108345u), vec4<bool>(var_2.x, global2.c, true, global1.c)))), !(u_input.c.x >= u_input.c.x)));
    var_1 = func_4(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(var_5.wxx, vec3<u32>(var_5.x, 24213u, u_input.b)) ^ firstLeadingBit(~16511u), select(1u, var_5.x ^ 1u, false), ~u_input.b), Struct_1(var_1.c, func_4(_wgslsmith_mod_u32(~u_input.a, var_5.x), Struct_1(true, vec2<bool>(global1.c, true), true, _wgslsmith_f_op_f32(global1.e - var_0.e), _wgslsmith_f_op_f32(var_1.d + -1138f)), vec4<i32>(_wgslsmith_div_i32(u_input.c.x, -17861i), -38276i, var_3.x, -2147483647i)).b, true, _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.d * global1.e))))), u_input.c << ((~_wgslsmith_mult_vec4_u32(vec4<u32>(2360u, 71079u, 45352u, var_5.x), vec4<u32>(0u, 56038u, var_5.x, var_5.x)) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 64637u, 4294967295u, 1u), vec4<u32>(u_input.a, 4294967295u, u_input.a, var_5.x))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_div_f32(global2.d, -132f), var_1.d) - vec3<f32>(_wgslsmith_f_op_f32(trunc(-646f)), _wgslsmith_f_op_f32(f32(-1f) * -188f), -188f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, -525f, 651f, var_0.e)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1634f, -609f, global2.d, global2.e)))), vec4<f32>(global1.e, _wgslsmith_f_op_f32(-global2.d), -828f, 1185f))));
}

