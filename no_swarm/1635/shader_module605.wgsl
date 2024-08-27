struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11>;

var<private> global1: i32;

var<private> global2: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(1756f, -30597i, vec2<i32>(i32(-2147483648), -58113i)), Struct_1(-102f, -55455i, vec2<i32>(58102i, 2147483647i)), Struct_1(1220f, 1i, vec2<i32>(-50563i, -1i))), Struct_2(Struct_1(163f, -2436i, vec2<i32>(2147483647i, 0i)), Struct_1(-3003f, -26269i, vec2<i32>(0i, -37645i)), Struct_1(1000f, 5806i, vec2<i32>(2147483647i, -34118i))), Struct_2(Struct_1(1174f, 1i, vec2<i32>(i32(-2147483648), -21903i)), Struct_1(-1010f, -1i, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(-839f, -24067i, vec2<i32>(i32(-2147483648), -14261i))), Struct_2(Struct_1(-854f, 0i, vec2<i32>(-29657i, 1i)), Struct_1(-1000f, 2147483647i, vec2<i32>(0i, i32(-2147483648))), Struct_1(1300f, 0i, vec2<i32>(-1i, 12607i))), Struct_2(Struct_1(327f, i32(-2147483648), vec2<i32>(-19786i, 655i)), Struct_1(322f, 54337i, vec2<i32>(-24262i, 9775i)), Struct_1(-345f, 2147483647i, vec2<i32>(2147483647i, -16484i))), Struct_2(Struct_1(403f, 1i, vec2<i32>(0i, 0i)), Struct_1(-206f, 34063i, vec2<i32>(0i, -1540i)), Struct_1(750f, -19383i, vec2<i32>(15730i, 34559i))), Struct_2(Struct_1(-1995f, -40324i, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(244f, 1i, vec2<i32>(-1i, 1i)), Struct_1(1096f, 29461i, vec2<i32>(0i, 0i))), Struct_2(Struct_1(1731f, 28119i, vec2<i32>(0i, -14455i)), Struct_1(-289f, i32(-2147483648), vec2<i32>(-12074i, -2326i)), Struct_1(302f, i32(-2147483648), vec2<i32>(2147483647i, -14002i))), Struct_2(Struct_1(1131f, 15350i, vec2<i32>(1i, -10577i)), Struct_1(-1000f, 2147483647i, vec2<i32>(21160i, -14831i)), Struct_1(332f, -11993i, vec2<i32>(i32(-2147483648), 2147483647i))), Struct_2(Struct_1(734f, 1i, vec2<i32>(52216i, -831i)), Struct_1(-1840f, -28902i, vec2<i32>(2147483647i, 10184i)), Struct_1(-1000f, 57371i, vec2<i32>(-3772i, i32(-2147483648)))), Struct_2(Struct_1(-377f, 0i, vec2<i32>(1i, 18928i)), Struct_1(590f, 0i, vec2<i32>(0i, 20668i)), Struct_1(-1134f, 0i, vec2<i32>(-495i, 47939i))));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = Struct_1(-942f, u_input.b, -(~(-vec2<i32>(u_input.b, -34891i))) | vec2<i32>(~0i, u_input.b));
    let var_1 = global2[_wgslsmith_index_u32(min(u_input.a.x, u_input.a.x), 11u)];
    global0 = array<vec3<bool>, 11>();
    let var_2 = _wgslsmith_div_f32(var_0.a, var_1.a.a);
    var var_3 = Struct_2(var_0, Struct_1(_wgslsmith_f_op_f32(319f + _wgslsmith_div_f32(417f, _wgslsmith_f_op_f32(-var_0.a))), -4901i, vec2<i32>(~0i, var_1.c.c.x) << (vec2<u32>(4294967295u, abs(u_input.a.x)) % vec2<u32>(32u))), var_1.b);
    return _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, _wgslsmith_dot_vec4_u32(min(firstTrailingBit(vec4<u32>(u_input.a.x, 32250u, u_input.a.x, u_input.a.x)), vec4<u32>(1u, 45970u, u_input.a.x, u_input.a.x)), abs(vec4<u32>(20810u, u_input.a.x, 0u, u_input.a.x) & vec4<u32>(u_input.a.x, 0u, 30880u, 53171u)))), countOneBits(reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(u_input.a.x, 19134u, u_input.a.x) % vec3<u32>(32u))) >> (vec3<u32>(~4294967295u, 14499u, abs(u_input.a.x)) % vec3<u32>(32u))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.a.x >> (u_input.a.x % 32u)), max(func_3(), u_input.a.x) ^ firstLeadingBit(_wgslsmith_mult_u32(37877u, u_input.a.x)), _wgslsmith_sub_u32(u_input.a.x, ~reverseBits(33773u)), ~(~4294967295u ^ _wgslsmith_div_u32(3589u, u_input.a.x))) >> (firstTrailingBit(~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, 0u, 1u, 81658u), ~vec4<u32>(16973u, 1u, u_input.a.x, u_input.a.x))) % vec4<u32>(32u));
    return Struct_1(1f, 1995i, select(firstLeadingBit(vec2<i32>(i32(-1i) * -32216i, u_input.b)), vec2<i32>(firstLeadingBit(-34786i), -11285i), vec2<bool>(all(!vec4<bool>(false, arg_0, arg_0, arg_0)), all(!vec4<bool>(true, arg_0, true, true)))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    global0 = array<vec3<bool>, 11>();
    return Struct_2(func_2(all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1314f, 535f)))))), select(32024i, -2147483647i, -u_input.b <= -u_input.b), vec2<i32>(~u_input.b, ~(-u_input.b))), func_2(false));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>) -> i32 {
    global2 = array<Struct_2, 11>();
    var var_0 = min(u_input.a.x, 7862u) == 41172u;
    var var_1 = arg_2.xx;
    let var_2 = _wgslsmith_clamp_vec4_i32(~(vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -7582i, u_input.b, arg_0.a.b), vec4<i32>(-2147483647i, 1i, 0i, -68055i)), 0i, ~(-32880i)) << ((select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(5833u, u_input.a.x, u_input.a.x, u_input.a.x), true) >> (~vec4<u32>(25456u, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), reverseBits(vec4<i32>(select(-11525i, 0i, any(vec3<bool>(true, false, var_1.x))), -(~1i), select(2147483647i, arg_1.b.c.x, true), -u_input.b)), -select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -2147483647i, 19975i, -4439i), firstLeadingBit(vec4<i32>(u_input.b, -8220i, -32402i, arg_1.a.b))), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.c.c.x, 0i, 30877i, arg_0.b.b), vec4<i32>(1i, arg_0.c.b, u_input.b, 39544i))), select(u_input.a.x > u_input.a.x, !var_1.x, true)));
    let var_3 = !vec3<bool>(any(!vec2<bool>(var_1.x, arg_2.x)), true, all(select(select(vec4<bool>(true, arg_2.x, true, arg_2.x), vec4<bool>(true, arg_2.x, false, arg_2.x), vec4<bool>(false, arg_2.x, true, false)), select(vec4<bool>(var_1.x, var_1.x, arg_2.x, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)), arg_1.a.a > 1929f)));
    return -15420i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~1u, _wgslsmith_sub_u32(4294967295u, min(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~(90261u << (u_input.a.x % 32u)))));
    var var_1 = _wgslsmith_clamp_i32(~62851i, func_4(global2[_wgslsmith_index_u32(109457u, 11u)], func_1(-2147483647i), select(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], !(!global0[_wgslsmith_index_u32(19649u, 11u)]), true)), u_input.b);
    var var_2 = vec2<u32>(~_wgslsmith_add_u32(u_input.a.x, 1u), 63301u);
    let var_3 = false;
    let var_4 = global2[_wgslsmith_index_u32(~26996u, 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-327f, -184f, _wgslsmith_f_op_f32(-2289f * _wgslsmith_f_op_f32(select(var_4.a.a, _wgslsmith_f_op_f32(floor(-1000f)), var_3 || var_3))), -490f), abs(var_4.c.c));
}

