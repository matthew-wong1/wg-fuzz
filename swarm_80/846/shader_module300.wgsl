struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25>;

var<private> global1: vec4<i32> = vec4<i32>(-10665i, 67390i, 2147483647i, 1i);

var<private> global2: vec3<f32> = vec3<f32>(-1428f, 367f, -1651f);

var<private> global3: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-16620i, i32(-2147483648), 17884i, i32(-2147483648)), vec4<i32>(-56716i, 1i, 2147483647i, -1i), vec4<i32>(1i, -17722i, 31311i, i32(-2147483648)), vec4<i32>(64666i, 1i, -29808i, -27417i), vec4<i32>(49074i, -1i, 20394i, 2147483647i), vec4<i32>(-29308i, 3556i, -30890i, -1i), vec4<i32>(-39781i, -350i, -20018i, 2147483647i), vec4<i32>(2393i, 36315i, -9198i, 1i), vec4<i32>(-16961i, 48451i, 2628i, 0i), vec4<i32>(2147483647i, -1i, -1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 24867i, -1i, 6838i), vec4<i32>(-25145i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(41790i, 2147483647i, i32(-2147483648), 1i), vec4<i32>(1i, 2147483647i, 20747i, 0i), vec4<i32>(-64206i, -55561i, 28893i, -1i), vec4<i32>(38362i, 37843i, 14238i, 28697i), vec4<i32>(2147483647i, -32630i, 0i, 10730i), vec4<i32>(7211i, -1150i, -10611i, 57347i), vec4<i32>(-1i, 29483i, 0i, 0i), vec4<i32>(-6956i, 2147483647i, -22324i, -16833i), vec4<i32>(-3086i, -1i, 2147483647i, -39207i));

var<private> global4: vec2<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3) -> bool {
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(global2.x + 233f))))), _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-global2.x)), 1697f, -210f))));
    global4 = _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 1i | firstTrailingBit(1i)), global1.zw, vec2<i32>(~_wgslsmith_mod_i32(arg_1.a ^ arg_1.a, -37876i), -1i));
    let var_0 = -(~(-(~54254i)));
    var var_1 = 0u;
    var var_2 = _wgslsmith_div_u32(_wgslsmith_add_u32(arg_1.b, firstTrailingBit(countOneBits(u_input.b.x))), firstLeadingBit(7347u)) >= 4294967295u;
    return ~abs(19389i) <= (~countOneBits(firstTrailingBit(var_0)) >> (arg_1.b % 32u));
}

fn func_2() -> u32 {
    let var_0 = !(!vec2<bool>(true, !func_3(vec4<f32>(global2.x, -1151f, 1096f, -111f), Struct_3(-24392i, u_input.a.x))));
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 29753u, u_input.a.x), u_input.a.xzw)) >> (vec3<u32>(36693u, u_input.a.x, abs(0u)) % vec3<u32>(32u)), u_input.a.wwz), vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x)), 21u)];
    let var_1 = _wgslsmith_div_vec2_f32(global2.xy, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global2.x, global2.x)))), -1355f));
    global2 = _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(min(firstTrailingBit(_wgslsmith_mult_u32(0u, ~42646u)), max(u_input.b.x, 70099u) | (_wgslsmith_div_u32(u_input.b.x, 4294967295u) >> ((u_input.b.x << (u_input.b.x % 32u)) % 32u))), 25u)]);
    var var_2 = Struct_1(2147483647i, 4294967295u | firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b.x, 4294967295u), vec3<u32>(u_input.a.x, 2736u, u_input.a.x))));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(95274u, var_2.b, var_2.b), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.b, 31900u, var_2.b), u_input.a.xxz), vec3<u32>(abs(u_input.b.x), 0u, ~u_input.a.x), u_input.a.yxx)) >> (~((countOneBits(0u) & _wgslsmith_dot_vec3_u32(u_input.a.yyw, vec3<u32>(var_2.b, var_2.b, var_2.b))) << (39274u % 32u)) % 32u);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    global0 = array<vec3<f32>, 25>();
    let var_0 = select(vec4<bool>(!(!arg_1.x), !arg_1.x, true, all(select(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, false, arg_1.x)))), vec4<bool>(!all(select(vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, true, false), vec3<bool>(true, false, arg_1.x))), true && (1u < func_2()), !select(all(vec3<bool>(arg_1.x, true, true)), func_3(vec4<f32>(-872f, 1575f, global2.x, -972f), Struct_3(arg_0.x, arg_3.b)), arg_1.x || true), true && arg_1.x), select(vec4<bool>(true, arg_1.x, true, !arg_1.x), !select(!vec4<bool>(true, true, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), select(vec4<bool>(false, false, true, true), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, true))), func_3(_wgslsmith_div_vec4_f32(vec4<f32>(2596f, global2.x, global2.x, global2.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -1000f, global2.x, global2.x)))), Struct_3(i32(-1i) * -25822i, 510u))));
    global4 = min(countOneBits(~(~vec2<i32>(-58991i, global1.x))), arg_0.zy);
    global0 = array<vec3<f32>, 25>();
    let var_1 = max(vec4<i32>(select(1i, arg_2, !var_0.x), _wgslsmith_mod_i32(_wgslsmith_mult_i32(12987i, global1.x), _wgslsmith_add_i32(1i, 0i)), 30912i, _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, arg_2), vec2<i32>(1i, arg_2)))), arg_0) & ~firstLeadingBit(global3[_wgslsmith_index_u32(~min(arg_3.b, 4294967295u), 21u)]);
    return Struct_2(_wgslsmith_sub_u32((u_input.b.x | 84040u) & ~27402u, _wgslsmith_clamp_u32(~1u, ~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.a.wz))) <= _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, arg_3.b), ~u_input.a.wy << ((vec2<u32>(50073u, 103844u) >> (u_input.a.wx % vec2<u32>(32u))) % vec2<u32>(32u))), arg_3);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = global2.x;
    global2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.x, global2.x, global2.x))) + vec3<f32>(global2.x, -695f, -1082f)))), global0[_wgslsmith_index_u32(7457u, 25u)], vec3<bool>(!func_1(_wgslsmith_mult_vec4_i32(global3[_wgslsmith_index_u32(1u, 21u)], vec4<i32>(1i, global4.x, 16673i, 2147483647i)), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, arg_0.a), true), -1i, arg_1).a, !arg_0.a, true)));
    let var_1 = func_1(firstTrailingBit(max(~(global3[_wgslsmith_index_u32(u_input.a.x, 21u)] >> (u_input.a % vec4<u32>(32u))), global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_1.b, 0u), 21u)])), vec2<bool>(arg_0.a, !any(vec2<bool>(true, arg_0.a))), _wgslsmith_div_i32(global4.x, arg_1.a), Struct_1(global1.x, arg_1.b));
    var_0 = global2.x;
    var var_2 = vec4<u32>(u_input.b.x, 1u, arg_1.b, reverseBits(firstLeadingBit(~arg_0.b.b)));
    return Struct_1(func_1(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_1.b.b, arg_0.b.b, 79103u)), _wgslsmith_mult_vec3_u32(u_input.a.zwy >> (var_2.wwx % vec3<u32>(32u)), abs(var_2.zxx))), 21u)], select(vec2<bool>(!var_1.a, true), !(!vec2<bool>(var_1.a, false)), select(!vec2<bool>(var_1.a, arg_0.a), vec2<bool>(var_1.a, var_1.a), true)), var_1.b.a, func_1(global3[_wgslsmith_index_u32(4294967295u, 21u)], select(vec2<bool>(true, true), select(vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, true), vec2<bool>(var_1.a, false)), true), -2147483647i, Struct_1(-1i, ~arg_1.b)).b).b.a, var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(vec4<u32>(u_input.b.x, 43520u, max(~1u, u_input.b.x), ~select(4294967295u, 4294967295u, global4.x < -2177i)));
    let var_1 = Struct_2(!(!any(vec2<bool>(false, true))), func_4(func_1(global3[_wgslsmith_index_u32(select(u_input.b.x, reverseBits(1u), true), 21u)], vec2<bool>(true, select(true, true, true)), -1i, Struct_1(global1.x, 32162u)), func_1(vec4<i32>(10755i, ~0i, _wgslsmith_mod_i32(21983i, -2147483647i), global1.x), vec2<bool>(true, true), global4.x, func_1(global3[_wgslsmith_index_u32(u_input.b.x, 21u)], vec2<bool>(true, true), ~global1.x, func_1(vec4<i32>(3652i, 0i, -1634i, global1.x), vec2<bool>(true, false), 0i, Struct_1(global4.x, 68932u)).b).b).b));
    let x = u_input.a;
    s_output = StorageBuffer(-func_4(Struct_2(!var_1.a, Struct_1(-2147483647i, 0u)), Struct_1(i32(-1i) * -44363i, _wgslsmith_div_u32(u_input.a.x, var_0.x))).a);
}

