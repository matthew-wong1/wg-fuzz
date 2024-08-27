struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(false, true, true, true, true, true, false, true, true, true, false, false, true, true, false, false, true, false, false, true, false, true, false);

var<private> global1: array<u32, 5> = array<u32, 5>(4294967295u, 4294967295u, 0u, 18688u, 1u);

var<private> global2: array<vec3<bool>, 31>;

var<private> global3: array<vec2<f32>, 15>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-549f, _wgslsmith_f_op_f32(f32(-1f) * -1261f), -1032f, _wgslsmith_f_op_f32(trunc(-864f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-380f, 1396f, -613f, -2070f)) - vec4<f32>(-317f, -1406f, -1000f, -397f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1873f, -558f, 824f, 371f) - vec4<f32>(-1723f, 1244f, 1386f, -100f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-209f, -1466f, -2242f, -938f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(u_input.d, 15u)] - _wgslsmith_div_vec2_f32(global3[_wgslsmith_index_u32(u_input.a, 15u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), var_0.wz)))));
    var var_2 = -307f;
    global0 = array<bool, 23>();
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -917f, -1130f, var_1.x), vec4<f32>(-1287f, -137f, 1000f, var_0.x), vec4<bool>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(68803u, 23u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 23u)], true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1028f, var_1.x, 1000f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2402f, 772f, var_0.x, var_1.x))))) - vec4<f32>(_wgslsmith_f_op_f32(abs(-1243f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, var_0.x)) * var_1.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))) + _wgslsmith_f_op_f32(min(-242f, var_0.x)))));
    return Struct_4(~reverseBits(select(vec2<u32>(0u, 1u), vec2<u32>(2098u, 4294967295u), vec2<bool>(false, true))) ^ vec2<u32>(~firstTrailingBit(u_input.a), ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 5u)], 5u)], 5u)])), 8008i, select(true, select(global0[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(~50337u, 5u)] == 4294967295u, any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 23u)], false))), any(vec2<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 5u)], 23u)], true)), !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17514u, 5u)], 23u)]))));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = ~_wgslsmith_div_u32(_wgslsmith_mult_u32(~(u_input.d ^ 0u), arg_0.d >> (~arg_0.d % 32u)), ~(~(~1u)));
    var var_1 = arg_0.b & countOneBits(arg_0.b);
    var var_2 = ~vec4<u32>(u_input.d, 40871u ^ abs(_wgslsmith_clamp_u32(arg_0.d, 0u, u_input.d)), _wgslsmith_sub_u32(_wgslsmith_div_u32(27791u << (arg_0.d % 32u), ~arg_0.d), countOneBits(~arg_0.d)), ~(~0u));
    var var_3 = u_input.a <= ~_wgslsmith_add_u32(~49523u, _wgslsmith_div_u32(4294967295u, arg_0.d) >> (~36360u % 32u));
    var var_4 = firstTrailingBit(u_input.c.x);
    return _wgslsmith_sub_vec3_u32(var_2.xyy, ~vec3<u32>(func_2().a.x, ~arg_0.d, _wgslsmith_div_u32(4294967295u, arg_0.d)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> vec3<u32> {
    global3 = array<vec2<f32>, 15>();
    let var_0 = func_2();
    global3 = array<vec2<f32>, 15>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c.c)))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(arg_1.b.c.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)) - arg_0.e.e))), -251f, _wgslsmith_f_op_f32(-arg_1.b.c.c.x));
    return ~max(~_wgslsmith_mult_vec3_u32(func_3(arg_1.b.c), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 46433u, 45416u), vec3<u32>(arg_0.d.d, u_input.d, var_0.a.x))), (vec3<u32>(arg_1.b.e.d, 0u, 0u) & vec3<u32>(arg_0.e.d, arg_0.d.d, 39797u)) << (vec3<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(27774u, u_input.d, u_input.a), vec3<u32>(60179u, 1u, var_0.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(59715u, arg_0.e.d, arg_1.b.e.d, 1u), vec4<u32>(global1[_wgslsmith_index_u32(1u, 5u)], var_0.a.x, 48631u, 40266u))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_sub_vec4_i32(vec4<i32>(min(u_input.b.x, 0i), -1i, u_input.c.x, u_input.c.x >> (73693u % 32u)) ^ -min(vec4<i32>(-20203i, u_input.b.x, -26321i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.b.x, u_input.b.x, u_input.c.x)), vec4<i32>(reverseBits(_wgslsmith_mod_i32(-14848i, -2147483647i)), u_input.b.x, _wgslsmith_div_i32(i32(-1i) * -23648i, -67673i), firstLeadingBit(-u_input.b.x))), Struct_1(true, abs(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -10303i, 27138i, 2147483647i), vec4<i32>(-41873i, -1i, 1i, u_input.b.x)), vec4<i32>(1i, 1i, u_input.c.x, u_input.b.x) & vec4<i32>(-9399i, u_input.b.x, -1i, 1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(166f, -1797f, -1417f, -1643f), vec4<f32>(1f, 1f, 1f, 1f), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 23u)], true, false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 23u)]), vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30490u, 5u)], 23u)], false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41015u, 5u)], 23u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 5u)], 5u)], 23u)]))))), global1[_wgslsmith_index_u32(~u_input.d, 5u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(997f))))), vec2<u32>(4294967295u, 4294967295u), (~(~global1[_wgslsmith_index_u32(u_input.d, 5u)]) | 18335u) <= (_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, u_input.a), 1u) & 1u));
    let var_1 = !(53314u != _wgslsmith_sub_u32(var_0.c.x, 23558u)) && false;
    let var_2 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b.d, _wgslsmith_add_u32(0u, 57141u), ~13556u), vec3<u32>(1u, 1u, var_0.c.x) | func_1(Struct_2(vec2<i32>(2147483647i, -2147483647i), var_0.a.ywy, var_0.b, var_0.b, Struct_1(true, vec4<i32>(u_input.c.x, 0i, -1i, -13697i), var_0.b.c, u_input.d, var_0.b.c.x)), Struct_3(global2[_wgslsmith_index_u32(4294967295u, 31u)], Struct_2(var_0.b.b.yz, var_0.a.xwy, Struct_1(false, var_0.a, var_0.b.c, global1[_wgslsmith_index_u32(1u, 5u)], var_0.b.c.x), Struct_1(true, vec4<i32>(2147483647i, -1i, 1i, 1i), var_0.b.c, var_0.c.x, -622f), var_0.b)))), vec3<u32>(_wgslsmith_mod_u32(4294967295u, ~var_0.c.x), _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(74461u, 23327u, global1[_wgslsmith_index_u32(var_0.b.d, 5u)])), u_input.a)) | vec3<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(64169u, global1[_wgslsmith_index_u32(u_input.d, 5u)], u_input.a, 30845u), vec4<u32>(21979u, 0u, var_0.b.d, 24626u)), vec4<u32>(u_input.a, 17266u, var_0.b.d, var_0.c.x)), u_input.d ^ min(~1u, ~12415u), global1[_wgslsmith_index_u32(func_2().a.x, 5u)]);
    let var_3 = -1818f;
    let var_4 = max(u_input.c.x, min(i32(-1i) * -3098i, -2147483647i));
    var var_5 = Struct_4(~(~var_2.zx), abs(_wgslsmith_add_i32(0i, var_4)), var_0.b.a);
    let var_6 = !(!(!vec3<bool>(any(global2[_wgslsmith_index_u32(u_input.a, 31u)]), true, true)));
    let var_7 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(471f)))), ~var_2.x, ~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(var_2.yx, ~var_0.c), ~vec2<u32>(1u, 82094u)));
}

