struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1458f;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(false, 0u, vec4<bool>(true, true, true, false)), Struct_1(true, 10362u, vec4<bool>(false, false, false, true)), Struct_1(true, 4294967295u, vec4<bool>(false, false, false, false)), Struct_1(true, 26080u, vec4<bool>(true, true, true, false)), Struct_1(false, 46060u, vec4<bool>(false, true, false, false)), Struct_1(true, 4294967295u, vec4<bool>(true, false, true, false)), Struct_1(false, 4853u, vec4<bool>(false, false, true, true)), Struct_1(true, 4294967295u, vec4<bool>(true, false, false, true)), Struct_1(true, 4294967295u, vec4<bool>(true, true, false, true)), Struct_1(true, 14837u, vec4<bool>(true, true, true, false)), Struct_1(false, 0u, vec4<bool>(true, true, false, true)), Struct_1(false, 20742u, vec4<bool>(true, true, true, true)), Struct_1(true, 15198u, vec4<bool>(true, false, false, false)), Struct_1(false, 4294967295u, vec4<bool>(false, true, false, true)), Struct_1(true, 0u, vec4<bool>(false, false, false, true)), Struct_1(true, 0u, vec4<bool>(true, false, false, false)));

var<private> global2: array<i32, 30> = array<i32, 30>(2147483647i, i32(-2147483648), -13848i, 79732i, 35494i, i32(-2147483648), 20811i, -19376i, 17016i, 1i, 40466i, 65442i, 19556i, 1i, 0i, 1i, -23424i, i32(-2147483648), 1i, 64691i, -14351i, 2147483647i, 1i, 1i, 17860i, i32(-2147483648), 2147483647i, 2147483647i, 14761i, 2147483647i);

var<private> global3: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global4: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(false, 16131u, vec4<bool>(true, true, false, true)), Struct_1(true, 4294967295u, vec4<bool>(true, false, true, false)), Struct_1(false, 1u, vec4<bool>(false, true, true, false)), Struct_1(false, 42852u, vec4<bool>(true, false, false, false)), Struct_1(true, 0u, vec4<bool>(true, false, true, false)), Struct_1(false, 0u, vec4<bool>(true, true, false, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> bool {
    global0 = -1000f;
    var var_0 = min(select(u_input.a, u_input.c, global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(4745u, u_input.a.x, arg_0.b)), 12u)]) << (u_input.a % vec2<u32>(32u)), u_input.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-321f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-164f))))));
    global0 = var_1.x;
    var var_2 = global1[_wgslsmith_index_u32(~4294967295u, 16u)];
    return false;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: bool) -> vec2<bool> {
    global3 = array<vec2<bool>, 12>();
    let var_0 = Struct_1(arg_3, abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, 4294967295u) ^ vec3<u32>(arg_1.x, 1u, arg_0.b), vec3<u32>(u_input.e, arg_1.x, u_input.c.x))), arg_0.c);
    let var_1 = _wgslsmith_add_i32(~57087i, u_input.b.x) << (4294967295u % 32u);
    var var_2 = ~reverseBits(~abs(~u_input.c.x));
    let var_3 = Struct_1(!((arg_1.x | _wgslsmith_dot_vec3_u32(arg_1, arg_1)) > 1u), firstTrailingBit(_wgslsmith_add_u32(~_wgslsmith_div_u32(43540u, 8982u), 1u)), !(!(!var_0.c)));
    return select(global3[_wgslsmith_index_u32(u_input.d, 12u)], var_0.c.xz, all(vec3<bool>(!var_0.a, false, true)));
}

fn func_1() -> i32 {
    var var_0 = Struct_1(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true))), firstTrailingBit(u_input.a.x), vec4<bool>(func_2(global1[_wgslsmith_index_u32(~36820u, 16u)], -2147483647i), true, 1i <= (i32(-1i) * -u_input.b.x), all(vec4<bool>(4294967295u <= u_input.e, false, true, true))));
    var var_1 = !func_3(global1[_wgslsmith_index_u32(var_0.b, 16u)], vec3<u32>(18565u, 1u, var_0.b), global1[_wgslsmith_index_u32(u_input.a.x, 16u)], false);
    var var_2 = Struct_1(((-u_input.b.x >> (1u % 32u)) == ~(-34379i)) && false, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(u_input.d, u_input.d, u_input.a.x), ~vec3<u32>(24110u, 1u, var_0.b), select(var_0.c.xxw, vec3<bool>(var_0.a, true, false), var_0.c.ywz)) << (vec3<u32>(~1u, _wgslsmith_mod_u32(1u, var_0.b), 15830u) % vec3<u32>(32u)), vec3<u32>(~(~4294967295u), var_0.b, 29037u)), select(vec4<bool>(1u < var_0.b, var_1.x, var_1.x != (global2[_wgslsmith_index_u32(var_0.b, 30u)] == -1i), true), vec4<bool>(true, !(!var_0.a), all(vec4<bool>(var_0.c.x, false, false, false)), !(!var_0.a)), var_0.c));
    let var_3 = Struct_1(_wgslsmith_dot_vec4_i32(u_input.b, abs(vec4<i32>(-28894i, u_input.b.x, u_input.b.x, -92181i))) == (i32(-1i) * -2147483647i), reverseBits(reverseBits(var_0.b | ~var_0.b)), var_2.c);
    var var_4 = 4294967295u;
    return _wgslsmith_dot_vec2_i32(vec2<i32>(~(-(-2147483647i | u_input.b.x)), -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(1u, 30u)], -1i), vec2<i32>(global2[_wgslsmith_index_u32(7137u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)])), global2[_wgslsmith_index_u32(~0u, 30u)])), -vec2<i32>(_wgslsmith_mult_i32(-67352i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x)), abs(global2[_wgslsmith_index_u32(var_2.b, 30u)])));
}

fn func_4(arg_0: vec4<i32>) -> vec2<i32> {
    let var_0 = Struct_1(select(true, false, func_2(Struct_1(func_2(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 8194i), 40375u, select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true)), firstTrailingBit(_wgslsmith_mult_i32(0i, u_input.b.x)))), abs(~u_input.d), select(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true)), vec4<bool>(all(vec4<bool>(true, true, true, true)), any(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 1u), 12u)]), true && (7792i <= arg_0.x), all(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 28586u), 12u)])), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, false, false))))));
    global2 = array<i32, 30>();
    global0 = 474f;
    var var_1 = Struct_1(var_0.a, var_0.b, vec4<bool>(var_0.c.x, var_0.c.x, all(!vec3<bool>(true, var_0.a, false)), true));
    var var_2 = u_input.b.xz;
    return vec2<i32>(func_1(), 20853i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 12>();
    var var_0 = ~func_4(vec4<i32>(_wgslsmith_add_i32(~(-2147483647i), 1i), firstTrailingBit(~global2[_wgslsmith_index_u32(48601u, 30u)]), firstLeadingBit(func_1()), -_wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(71611u, 30u)], global2[_wgslsmith_index_u32(1u, 30u)]), u_input.b.zx)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-240f, -963f))) + _wgslsmith_f_op_f32(max(686f, _wgslsmith_f_op_f32(-355f + -2996f))))));
    var var_1 = Struct_1(!any(vec4<bool>(true, true, false, true)), _wgslsmith_div_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 34893u, u_input.e), ~vec3<u32>(1u, 35342u, 0u))), reverseBits(_wgslsmith_mult_u32(16593u, u_input.d) | 0u)), vec4<bool>(true, true, true, true));
    let var_2 = _wgslsmith_f_op_f32(ceil(-1893f));
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.e, 29533u, 0u, 37325u), vec4<u32>(u_input.e, var_1.b, 0u, var_1.b), var_1.c), ~vec4<u32>(u_input.e, u_input.e, var_1.b, u_input.d)), vec4<u32>(_wgslsmith_mod_u32(abs(var_1.b), var_1.b), 731u, var_1.b, 50887u)), u_input.b.x, ~1i, vec3<f32>(var_2, _wgslsmith_f_op_f32(max(var_2, var_2)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, var_2)))))));
}

