struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<i32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, false, false, true, false, false, false, true, false, true, false, false, false, true, true, false, false, false, true, true, true, false, true, true, true, false, false, true, true, true, false, true);

var<private> global1: u32;

var<private> global2: array<i32, 15>;

var<private> global3: vec2<f32>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool) -> vec2<f32> {
    let var_0 = u_input.a;
    global3 = arg_1.a;
    let var_1 = -27530i;
    let var_2 = firstTrailingBit(u_input.b);
    let var_3 = arg_0;
    return vec2<f32>(_wgslsmith_f_op_f32(min(arg_1.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.a.c.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-485f))));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(func_1(Struct_3(Struct_2(Struct_1(vec2<f32>(global3.x, -588f)), vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(0u, 15u)], -1i, global2[_wgslsmith_index_u32(4294967295u, 15u)]), Struct_1(vec2<f32>(859f, -347f)), vec4<u32>(42870u, u_input.a, 20306u, u_input.a)), global3.x, vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 15u)], -2147483647i, 2147483647i), global0[_wgslsmith_index_u32(u_input.a, 32u)], u_input.a), Struct_1(vec2<f32>(949f, 1076f)), false))), max(~(~vec4<i32>(u_input.b.x, global2[_wgslsmith_index_u32(20159u, 15u)], 2147483647i, global2[_wgslsmith_index_u32(4294967295u, 15u)])), -(~vec4<i32>(global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)], 1i, -50237i))), Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global3.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1394f, 2394f))))), ~(~vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u)) ^ min(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u), vec4<u32>(0u, u_input.a, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.x))), _wgslsmith_sub_vec3_i32(vec3<i32>(select(reverseBits(global2[_wgslsmith_index_u32(u_input.a, 15u)]), ~2147483647i, !global0[_wgslsmith_index_u32(u_input.a, 32u)]), -34683i, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a >> (0u % 32u), select(u_input.a, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 32u)]), 4294967295u), 15u)]), max(select(~vec3<i32>(u_input.b.x, -1i, -13425i), ~vec3<i32>(-1673i, u_input.b.x, 1i), select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(13578u, 32u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)], false), global0[_wgslsmith_index_u32(4294967295u, 32u)])), ~(-vec3<i32>(-2147483647i, 30361i, 1i)))), true, _wgslsmith_add_u32(firstTrailingBit(u_input.a), _wgslsmith_sub_u32(select(u_input.a, ~56588u, global0[_wgslsmith_index_u32(u_input.a, 32u)]), ~u_input.a)));
    let var_1 = Struct_3(var_0.a, global3.x, vec3<i32>(45079i, -27859i, ~u_input.b.x), all(!(!vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.a.d.x, 32u)]))), _wgslsmith_clamp_u32(u_input.a, min(countOneBits(min(90293u, 9096u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.d.x, 6683u, 3784u, u_input.a), vec4<u32>(30093u, 0u, 1u, 29400u))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), var_0.e)));
    var var_2 = 1u;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1218f, global3.x, var_0.a.a.a.x, -458f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.a.c.a.x, -1842f, var_1.a.c.a.x) * vec4<f32>(526f, var_0.b, var_1.a.a.a.x, -1604f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-329f, -1000f, var_0.b, 167f) - vec4<f32>(-539f, var_0.a.a.a.x, -1471f, var_1.a.a.a.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.c.a.x, var_1.a.a.a.x, var_0.a.a.a.x, global3.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(283f, 670f, -435f, -311f))))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.c.a.x))), _wgslsmith_f_op_f32(min(908f, -594f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1286f + 1149f)), var_1.b))));
    global0 = array<bool, 32>();
    return ~(firstTrailingBit(vec4<i32>(-34512i, abs(11867i), -11901i, var_1.c.x)) & _wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -54872i, abs(global2[_wgslsmith_index_u32(1u, 15u)]), global2[_wgslsmith_index_u32(85867u, 15u)] | var_1.a.b.x, var_0.c.x), vec4<i32>(var_1.a.b.x, 5251i, select(8098i, -10767i, true), min(global2[_wgslsmith_index_u32(1u, 15u)], var_1.c.x))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>) -> i32 {
    global2 = array<i32, 15>();
    let var_0 = func_3();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-334f, 392f) + vec2<f32>(1218f, -738f)))) - vec2<f32>(-1330f, -291f))));
    global2 = array<i32, 15>();
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a), var_1.a));
    return reverseBits(func_3().x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 32>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_1(Struct_3(Struct_2(Struct_1(vec2<f32>(376f, global3.x)), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 15u)], -1i, global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(9006u, 15u)]), Struct_1(vec2<f32>(-427f, global3.x)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), 170f, vec3<i32>(u_input.b.x, global2[_wgslsmith_index_u32(u_input.a, 15u)], 0i), global0[_wgslsmith_index_u32(u_input.a, 32u)], u_input.a), Struct_1(vec2<f32>(global3.x, global3.x)), global0[_wgslsmith_index_u32(u_input.a, 32u)])), vec2<f32>(global3.x, -359f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, 861f) - vec2<f32>(global3.x, -1090f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -543f) - vec2<f32>(-405f, global3.x)))))), vec4<i32>(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(24541u, 15u)], 7603i) << (42189u % 32u), _wgslsmith_div_i32(abs(global2[_wgslsmith_index_u32(43620u, 15u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(1u, 15u)], 26850i), vec3<i32>(global2[_wgslsmith_index_u32(1u, 15u)], -2147483647i, 47480i))), _wgslsmith_div_i32(func_2(u_input.b, vec3<u32>(0u, u_input.a, u_input.a)), 1i), 1i) >> (vec4<u32>(u_input.a, 1u, ~u_input.a, abs(0u)) % vec4<u32>(32u)), Struct_1(vec2<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1168f - 1177f)))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 137450u, u_input.a, u_input.a), abs(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)))));
    var var_1 = Struct_3(Struct_2(Struct_1(vec2<f32>(739f, -1228f)), _wgslsmith_clamp_vec4_i32(firstTrailingBit(min(var_0.b, var_0.b)), select(var_0.b, select(var_0.b, var_0.b, vec4<bool>(global0[_wgslsmith_index_u32(var_0.d.x, 32u)], true, global0[_wgslsmith_index_u32(var_0.d.x, 32u)], global0[_wgslsmith_index_u32(0u, 32u)])), global0[_wgslsmith_index_u32(var_0.d.x, 32u)]), vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), var_0.b.x, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(102760u, 15u)], 72561i), -2147483647i << (u_input.a % 32u))), var_0.c, var_0.d), global3.x, _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(9668i, _wgslsmith_mod_i32(var_0.b.x, u_input.b.x)), ~_wgslsmith_add_i32(-38864i, -6277i), ~_wgslsmith_dot_vec4_i32(var_0.b, vec4<i32>(1i, 12918i, -1729i, -25997i))), -var_0.b.ywy), _wgslsmith_dot_vec2_u32(abs(firstLeadingBit(vec2<u32>(0u, 4294967295u))), ~vec2<u32>(u_input.a, 52975u)) > firstLeadingBit(firstLeadingBit(u_input.a)), var_0.d.x);
    var var_2 = Struct_3(Struct_2(var_1.a.c, firstTrailingBit(var_1.a.b), var_0.c, (var_1.a.d >> (~var_0.d % vec4<u32>(32u))) & _wgslsmith_mod_vec4_u32(~vec4<u32>(127942u, 4294967295u, var_1.e, 1u), vec4<u32>(var_1.e, 68743u, var_1.e, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-804f * _wgslsmith_f_op_f32(-var_0.a.a.x))), _wgslsmith_div_vec3_i32(max(var_1.a.b.yyw, var_0.b.wyw), ~vec3<i32>(38081i, -37036i, _wgslsmith_mod_i32(-32001i, -39400i))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.a.d.ww, vec2<u32>(~0u | var_0.d.x, 4294967295u)), 32u)], var_0.d.x);
    var_0 = var_2.a;
    let var_3 = _wgslsmith_div_u32(_wgslsmith_div_u32(1u, 1u), 10651u << (~var_0.d.x % 32u));
    let var_4 = ~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(countOneBits(0u), ~var_0.d.x, u_input.a ^ 1u, ~var_2.a.d.x)), var_1.a.d);
    var var_5 = var_4;
    let var_6 = Struct_3(var_1.a, var_0.c.a.x, vec3<i32>(global2[_wgslsmith_index_u32(12969u, 15u)], _wgslsmith_add_i32(35650i << ((28399u >> (var_5.x % 32u)) % 32u), -17533i), _wgslsmith_sub_i32(var_1.a.b.x | 2147483647i, _wgslsmith_mult_i32(-6998i, -10350i))), true, ~(_wgslsmith_sub_u32(3531u << (var_4.x % 32u), var_5.x) & var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, global3.x) * vec2<f32>(var_2.b, var_0.c.a.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.a.a.x, global3.x) + vec2<f32>(412f, 1014f)), _wgslsmith_f_op_vec2_f32(trunc(var_0.a.a))))))), _wgslsmith_mult_vec4_i32(vec4<i32>(abs(abs(var_2.c.x)), -var_2.c.x ^ var_0.b.x, u_input.b.x, -1i), ~vec4<i32>(global2[_wgslsmith_index_u32(var_2.e, 15u)] ^ 1i, -var_6.a.b.x, abs(-2147483647i), -27533i ^ var_0.b.x)), 650f, var_1.a.d.zy, ~_wgslsmith_add_vec4_u32(firstTrailingBit(~vec4<u32>(var_2.a.d.x, 3404u, var_0.d.x, var_4.x)), ~max(vec4<u32>(var_0.d.x, var_2.e, 95301u, var_5.x), var_2.a.d)));
}

