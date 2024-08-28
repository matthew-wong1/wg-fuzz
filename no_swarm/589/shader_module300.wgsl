struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(true, true, true, true, false);

var<private> global1: array<vec2<i32>, 8>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: u32) -> vec3<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-359f)), _wgslsmith_f_op_f32(-arg_0.x)))), arg_0.x)));
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(23659u, min(4294967295u, _wgslsmith_add_u32(1u, max(arg_2.x, 79962u))), ~(~abs(0u)), arg_3), ~vec4<u32>(arg_2.x, ~68185u >> (_wgslsmith_mod_u32(1u, 15264u) % 32u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(53110u, 8997u), _wgslsmith_add_u32(0u, 0u)), 14718u));
    let var_2 = global0[_wgslsmith_index_u32(84848u, 5u)];
    var var_3 = select(!select(vec3<bool>(all(vec2<bool>(arg_1.x, arg_1.x)), true, arg_1.x), !arg_1.xxx, arg_1.xzz), !select(select(!arg_1.xyy, !vec3<bool>(global0[_wgslsmith_index_u32(arg_3, 5u)], false, global0[_wgslsmith_index_u32(0u, 5u)]), true), select(vec3<bool>(true, true, true), !arg_1.wwz, vec3<bool>(true, false, true)), select(select(arg_1.xyz, arg_1.yyw, vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 5u)], arg_1.x, false)), !arg_1.zxw, !vec3<bool>(arg_1.x, true, global0[_wgslsmith_index_u32(arg_2.x, 5u)]))), arg_1.wxx);
    var_3 = !select(select(select(!arg_1.wzx, arg_1.wzw, vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 5u)], true)), vec3<bool>(true, true, true), true), arg_1.zzy, vec3<bool>(false, !(!arg_1.x), var_0.x < var_0.x));
    return !arg_1.xyw;
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_3) -> vec2<i32> {
    let var_0 = Struct_4(arg_2, Struct_3(arg_2.a, arg_2.b, arg_2.c, vec4<i32>(~arg_0.x, -2147483647i, -arg_1, arg_0.x)), !(true & !arg_2.b.x));
    let var_1 = Struct_2(arg_2.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c.b)), ~84616u, countOneBits(var_0.b.c.d), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1278f, -1883f) + -1152f), -782f, any(select(var_0.a.b.yy, vec2<bool>(false, false), vec2<bool>(false, var_0.c))))));
    let var_2 = vec4<bool>(any(!vec2<bool>(-1i > arg_2.c.a.d.x, true)), false, var_0.c, arg_2.c.c != firstTrailingBit(4294967295u ^ abs(arg_2.c.a.a)));
    let var_3 = Struct_4(arg_2, Struct_3(firstTrailingBit(_wgslsmith_add_vec4_i32(arg_2.d, var_0.a.a) | _wgslsmith_clamp_vec4_i32(var_0.b.d, vec4<i32>(var_0.a.d.x, var_0.a.a.x, 29865i, 22058i), vec4<i32>(-1i, var_1.a.d.x, arg_2.d.x, -26818i))), var_2.yww, var_1, select(select(arg_2.a, arg_2.a, var_2), select(arg_2.a, arg_2.a, arg_2.b.x), !global0[_wgslsmith_index_u32(11313u, 5u)]) & ~vec4<i32>(arg_1, 48809i, arg_0.x, 0i)), all(var_2));
    var var_4 = 1u;
    return ~vec2<i32>(_wgslsmith_add_i32(-1i, max(0i, var_0.b.c.a.d.x)) | (i32(-1i) * -arg_2.a.x), _wgslsmith_mult_i32(arg_2.d.x, 3084i));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_i32(-u_input.a, firstLeadingBit(func_3(abs(abs(global1[_wgslsmith_index_u32(18398u, 8u)])), -1i, Struct_3(~vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -16418i), func_1(vec2<f32>(357f, -190f), vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 5u)], global0[_wgslsmith_index_u32(arg_0, 5u)], global0[_wgslsmith_index_u32(arg_0, 5u)], true), vec2<u32>(arg_0, 1u), 0u), Struct_2(Struct_1(1u, -917f, vec4<u32>(0u, 4294967295u, 1u, 0u), vec2<i32>(26754i, u_input.a.x)), -428f, 0u, u_input.a.x, -135f), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -1i)))));
    let var_1 = firstTrailingBit(arg_0);
    var var_2 = Struct_4(Struct_3(select(firstLeadingBit(vec4<i32>(var_0, 1i, -23351i, var_0)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0, 67004i, var_0, 0i), vec4<i32>(50048i, 1i, -2147483647i, 1i)), vec4<bool>(true, global0[_wgslsmith_index_u32(var_1, 5u)], global0[_wgslsmith_index_u32(arg_0, 5u)], global0[_wgslsmith_index_u32(1u, 5u)])) << ((select(vec4<u32>(var_1, var_1, var_1, arg_0), vec4<u32>(arg_0, arg_0, var_1, arg_0), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0, 5u)], false, global0[_wgslsmith_index_u32(66179u, 5u)])) & ~vec4<u32>(4294967295u, var_1, arg_0, arg_0)) % vec4<u32>(32u)), vec3<bool>((var_0 ^ var_0) > (var_0 | var_0), all(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 5u)], global0[_wgslsmith_index_u32(89207u, 5u)], false)), _wgslsmith_f_op_f32(step(1183f, 920f)) <= _wgslsmith_f_op_f32(f32(-1f) * -1424f)), Struct_2(Struct_1(_wgslsmith_mult_u32(0u, 0u), _wgslsmith_f_op_f32(round(-389f)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 28772u, arg_0, 1u), vec4<u32>(var_1, var_1, arg_0, 4294967295u)), vec2<i32>(11268i, var_0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1011f)))), ~var_1 | arg_0, i32(-1i) * -33759i, _wgslsmith_f_op_f32(f32(-1f) * -2463f)), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-1i, var_0, u_input.a.x, u_input.a.x)), vec4<i32>(abs(18110i), 85177i, ~var_0, u_input.a.x))), Struct_3(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, u_input.a.x, -2147483647i, var_0), vec4<i32>(var_0, u_input.a.x, 38978i, var_0), vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, u_input.a.x)) << ((vec4<u32>(arg_0, arg_0, 19000u, arg_0) & vec4<u32>(1521u, var_1, 1u, arg_0)) % vec4<u32>(32u))), vec3<bool>(true, true, true), Struct_2(Struct_1(var_1, 874f, ~vec4<u32>(arg_0, 4294967295u, 46301u, 1u), ~vec2<i32>(-1i, var_0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1282f)), _wgslsmith_f_op_f32(498f - 823f))), ~arg_0 << (64965u % 32u), u_input.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1390f, -1213f)))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(var_0, var_0, var_0, var_0) << (~vec4<u32>(1u, arg_0, 4294967295u, arg_0) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, -35906i, var_0, u_input.a.x), vec4<i32>(var_0, -30482i, u_input.a.x, u_input.a.x) << (vec4<u32>(arg_0, arg_0, var_1, 27713u) % vec4<u32>(32u))), ~vec4<i32>(u_input.a.x, u_input.a.x, var_0, u_input.a.x))), select(false, false, all(vec2<bool>(false, true))) & global0[_wgslsmith_index_u32(50106u, 5u)]);
    var var_3 = u_input.a.x;
    let var_4 = var_2.b;
    return Struct_1(_wgslsmith_clamp_u32(~min(_wgslsmith_add_u32(arg_0, var_2.a.c.c), 1u), 1u, _wgslsmith_dot_vec4_u32(var_2.b.c.a.c, ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 12266u, 28287u, var_1), var_2.a.c.a.c))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_4.c.a.c, vec2<i32>(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(u_input.a.x, 400i)), ~var_4.c.a.d.x)), 1i << ((var_4.c.c << (1u % 32u)) % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(var_0.c.e - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * _wgslsmith_f_op_f32(523f - arg_0.b)));
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    return Struct_2(var_0.c.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-509f + _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x), -951f)))), _wgslsmith_mod_u32(arg_2.c.a.a, arg_3.x), i32(-1i) * -(arg_2.d.x << (~0u % 32u)), -419f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 8>();
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1243f, 2394f, true)), -566f, _wgslsmith_div_f32(1017f, 782f), -1171f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2200f, 296f, 1128f, 844f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1701f, 110f, -856f, -829f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-558f, 886f))), -326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-275f - 550f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(869f)), _wgslsmith_f_op_f32(f32(-1f) * -644f)))))));
    global1 = array<vec2<i32>, 8>();
    var var_1 = Struct_4(Struct_3(~(-(~vec4<i32>(u_input.a.x, u_input.a.x, 27949i, 2147483647i))), !func_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(920f, -1134f)), vec4<bool>(true, global0[_wgslsmith_index_u32(54997u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]), vec2<u32>(29459u, 1u), select(1u, 3241u, true)), func_4(func_2(1u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-2422f, -1000f), vec2<f32>(-2460f, var_0.x)), vec2<f32>(var_0.x, 1327f), vec2<bool>(true, true))), Struct_3(~vec4<i32>(u_input.a.x, u_input.a.x, 19625i, -2147483647i), !vec3<bool>(global0[_wgslsmith_index_u32(451u, 5u)], true, true), Struct_2(Struct_1(4294967295u, var_0.x, vec4<u32>(5962u, 0u, 18767u, 1u), vec2<i32>(u_input.a.x, 46361i)), 1032f, 1u, 57324i, var_0.x), max(vec4<i32>(2147483647i, 2147483647i, 1i, -1i), vec4<i32>(u_input.a.x, -42688i, -1i, 1i))), abs(abs(vec2<u32>(41638u, 0u)))), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), 0i), select(~u_input.a.x, u_input.a.x, !global0[_wgslsmith_index_u32(0u, 5u)]), ~0i, min(u_input.a.x, u_input.a.x) | u_input.a.x)), Struct_3(vec4<i32>(_wgslsmith_div_i32(-u_input.a.x, abs(1i)), -1i, _wgslsmith_add_i32(-44789i, firstLeadingBit(57603i)), u_input.a.x), select(func_1(_wgslsmith_f_op_vec2_f32(var_0.wz * var_0.yy), vec4<bool>(true, global0[_wgslsmith_index_u32(47596u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], true), ~vec2<u32>(17439u, 4482u), _wgslsmith_add_u32(116997u, 40669u)), select(vec3<bool>(true, global0[_wgslsmith_index_u32(31055u, 5u)], global0[_wgslsmith_index_u32(31860u, 5u)]), vec3<bool>(true, false, false), !vec3<bool>(true, false, global0[_wgslsmith_index_u32(28942u, 5u)])), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], true)), func_4(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(4294967295u, 23405u, 4294967295u, 1u)), 148f, reverseBits(vec4<u32>(2762u, 49891u, 49253u, 39969u)), u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-671f, -1000f)), Struct_3(vec4<i32>(u_input.a.x, -2147483647i, -7939i, 2147483647i) >> (vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u) % vec4<u32>(32u)), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)], false, true), Struct_2(Struct_1(84748u, var_0.x, vec4<u32>(2266u, 60076u, 32795u, 4294967295u), vec2<i32>(10942i, 16873i)), 1000f, 0u, u_input.a.x, 246f), -vec4<i32>(9298i, u_input.a.x, 0i, u_input.a.x)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(44782u, 25149u), vec2<u32>(1u, 47159u), true), vec2<u32>(4294967295u, 87852u))), _wgslsmith_mod_vec4_i32(~abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1132i)), firstLeadingBit(-vec4<i32>(u_input.a.x, u_input.a.x, 1i, 41849i)))), !any(select(func_1(var_0.xy, vec4<bool>(global0[_wgslsmith_index_u32(0u, 5u)], false, false, global0[_wgslsmith_index_u32(36258u, 5u)]), vec2<u32>(4294967295u, 4294967295u), 39005u).zy, vec2<bool>(true, true), global0[_wgslsmith_index_u32(0u, 5u)])));
    var_1 = Struct_4(var_1.a, var_1.b, -1126f != var_1.b.c.b);
    let var_2 = Struct_1(_wgslsmith_add_u32((~var_1.a.c.a.c.x & 117975u) & var_1.b.c.c, _wgslsmith_div_u32(var_1.b.c.c, var_1.a.c.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.c.b))) + _wgslsmith_f_op_f32(f32(-1f) * -147f)), _wgslsmith_mod_vec4_u32(~(func_2(var_1.a.c.a.c.x).c & abs(var_1.b.c.a.c)), ~func_4(func_2(var_1.a.c.c), var_0.xw, Struct_3(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -57713i), vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.b.c.a.a, 5u)], true), var_1.a.c, vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -2147483647i)), ~vec2<u32>(1u, 47251u)).a.c), vec2<i32>(u_input.a.x, -2147483647i));
    let var_3 = var_1.b.c;
    let var_4 = var_3.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(~80287u, var_3.e, func_2(~(~min(var_3.a.a, 0u))).c.zx, var_1.b.c.d << (18372u % 32u));
}

