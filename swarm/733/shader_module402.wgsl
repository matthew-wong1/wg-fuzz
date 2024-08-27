struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, true, true, false, true, false, false, true, true, false, true, false, false, true, true);

var<private> global1: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(9244u, 20671u), vec2<u32>(43425u, 1u), vec2<u32>(0u, 43053u), vec2<u32>(134317u, 0u), vec2<u32>(50880u, 1u), vec2<u32>(54486u, 0u), vec2<u32>(272u, 4294967295u), vec2<u32>(8234u, 16072u), vec2<u32>(37844u, 52004u), vec2<u32>(1u, 4294967295u), vec2<u32>(116087u, 52512u));

var<private> global2: array<vec3<f32>, 23>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = Struct_2(any(vec2<bool>(true, global0[_wgslsmith_index_u32(54566u, 15u)])));
    return 6162u;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: u32) -> u32 {
    let var_0 = -2147483647i;
    var var_1 = Struct_1(vec3<bool>(true, !(select(global0[_wgslsmith_index_u32(arg_2.x, 15u)], true, true) || true), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, arg_1.c.x), -arg_1.c) <= firstTrailingBit(abs(arg_1.c.x))), arg_1.b, select(vec2<i32>(i32(-1i) * -2147483647i, -1i), _wgslsmith_sub_vec2_i32(-u_input.b.yz ^ arg_1.c, vec2<i32>(-arg_1.c.x, arg_1.c.x)), arg_1.a.yy));
    let var_2 = Struct_2(true);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-370f)))), 1f)));
    var_1 = Struct_1(var_1.a, arg_1.b, vec2<i32>(var_0, 1i));
    return var_1.b;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: bool) -> Struct_1 {
    var var_0 = ~func_4(true, Struct_1(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_2.x, 15u)], global0[_wgslsmith_index_u32(0u, 15u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 15u)], true, false), vec3<bool>(true, true, global0[_wgslsmith_index_u32(arg_2.x, 15u)])), !vec3<bool>(true, global0[_wgslsmith_index_u32(arg_2.x, 15u)], false), false), u_input.a, abs(vec2<i32>(0i, 2147483647i))), vec4<u32>(func_3(arg_3), u_input.a, ~u_input.a, arg_2.x ^ 1u), ~countOneBits(u_input.a));
    let var_1 = select(vec4<bool>(true, true, arg_3, true), vec4<bool>(false, any(select(select(vec3<bool>(false, true, false), vec3<bool>(arg_1.a, arg_1.a, true), vec3<bool>(arg_1.a, arg_1.a, arg_1.a)), vec3<bool>(arg_1.a, true, arg_1.a), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 15u)], false, global0[_wgslsmith_index_u32(0u, 15u)]), vec3<bool>(global0[_wgslsmith_index_u32(52756u, 15u)], arg_3, false), arg_1.a))), true, arg_1.a), ~(~arg_2.x) <= func_3(true));
    let var_2 = select(vec3<bool>(true, any(vec2<bool>(true, true)), select(true, true, true)), var_1.zyw, select(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(arg_2.x, 15u)], false, global0[_wgslsmith_index_u32(0u, 15u)]), vec3<bool>(var_1.x, true, false), arg_3)), var_1.wyz, arg_3));
    var var_3 = var_1.x;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1856f - 1422f))))) + 220f);
    return Struct_1(select(select(var_1.wxx, vec3<bool>(true, global0[_wgslsmith_index_u32(3212u, 15u)] || true, any(vec3<bool>(arg_3, arg_3, false))), var_2.x), select(!vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(global0[_wgslsmith_index_u32(arg_2.x, 15u)], var_2.x, any(var_2)), true), true), ~func_4(arg_3, Struct_1(var_1.ywx, abs(arg_2.x), firstTrailingBit(u_input.b.zy)), ~(vec4<u32>(u_input.a, 0u, arg_2.x, u_input.a) | vec4<u32>(u_input.a, 11894u, 1u, 8986u)), ~(~u_input.a)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(firstTrailingBit(arg_0), 2147483647i), abs(u_input.b.yy), vec2<i32>(u_input.b.x, ~_wgslsmith_add_i32(arg_0, -2147483647i))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: bool) -> Struct_1 {
    global0 = array<bool, 15>();
    global2 = array<vec3<f32>, 23>();
    global1 = array<vec2<u32>, 13>();
    global0 = array<bool, 15>();
    global2 = array<vec3<f32>, 23>();
    return Struct_1(arg_1.a, _wgslsmith_div_u32(firstLeadingBit(15588u), firstLeadingBit(~select(u_input.a, 0u, true))), -vec2<i32>(-u_input.b.x, select(arg_1.c.x, 1i, arg_3 | true)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    global2 = array<vec3<f32>, 23>();
    let var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-603f, 1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -424f), -1072f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -686f)))));
    var var_1 = arg_1;
    var var_2 = vec3<u32>(~arg_2, _wgslsmith_mult_u32(4294967295u, u_input.a), 28518u);
    var var_3 = ~vec4<u32>(~arg_0.b, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 1u, arg_0.b), ~vec4<u32>(4294967295u, 42596u, var_2.x, 1u)), firstLeadingBit(vec4<u32>(arg_0.b, 109376u, arg_2, arg_0.b))), var_2.x, arg_0.b);
    return Struct_1(arg_0.a, 43654u << (abs(_wgslsmith_sub_u32(51601u, 1u | arg_2)) % 32u), -(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.yz, arg_0.c), u_input.b.xy) << (vec2<u32>(1u | arg_0.b, _wgslsmith_sub_u32(var_3.x, var_3.x)) % vec2<u32>(32u))));
}

fn func_7(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: bool) -> vec4<bool> {
    global0 = array<bool, 15>();
    global1 = array<vec2<u32>, 13>();
    global2 = array<vec3<f32>, 23>();
    let var_0 = Struct_2((i32(-1i) * -21589i) > u_input.b.x);
    var var_1 = min(~(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(arg_0.b, u_input.a, 76871u)), vec3<u32>(arg_0.b, 0u, 4294967295u)) >> (~(~vec3<u32>(1u, 23804u, 4294967295u)) % vec3<u32>(32u))), max(max(abs(~vec3<u32>(99691u, 95u, u_input.a)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, arg_0.b, arg_0.b), vec4<u32>(1u, u_input.a, 4294967295u, 1u)), func_5(global2[_wgslsmith_index_u32(1u, 23u)], Struct_1(vec3<bool>(arg_1.x, arg_1.x, true), arg_0.b, vec2<i32>(24237i, -10574i)), global2[_wgslsmith_index_u32(u_input.a, 23u)], arg_1.x).b, ~u_input.a)), vec3<u32>(34662u, 1868u, ~74975u)));
    return vec4<bool>(!(func_2(-40245i, Struct_2(false), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 46203u, var_1.x), vec3<u32>(var_1.x, arg_0.b, u_input.a)), true).a.x | (!arg_0.a.x != true)), false, any(!(!(!arg_1.zx))), false);
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> vec4<u32> {
    global2 = array<vec3<f32>, 23>();
    let var_0 = func_7(func_6(func_5(_wgslsmith_f_op_vec3_f32(select(global2[_wgslsmith_index_u32(min(u_input.a, 57325u), 23u)], _wgslsmith_div_vec3_f32(vec3<f32>(118f, 267f, 1000f), vec3<f32>(795f, 217f, -1390f)), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 15u)], true, global0[_wgslsmith_index_u32(u_input.a, 15u)]))), func_2(reverseBits(3772i), Struct_2(global0[_wgslsmith_index_u32(1u, 15u)]), vec3<u32>(u_input.a, 1u, 1u), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1599f, 216f, -1622f) + global2[_wgslsmith_index_u32(4294967295u, 23u)])), false), arg_0, u_input.a), func_2(u_input.b.x, Struct_2(!global0[_wgslsmith_index_u32(abs(u_input.a), 15u)]), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 66689u, 1u), firstTrailingBit(vec3<u32>(62272u, 4294967295u, u_input.a))) | ~(~vec3<u32>(4294967295u, 4294967295u, 93087u)), (!global0[_wgslsmith_index_u32(29998u, 15u)] & (u_input.b.x != 30826i)) && any(func_6(Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(23716u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], false), 1u, u_input.b.zy), Struct_2(true), u_input.a).a)).a, Struct_2(global0[_wgslsmith_index_u32(1u, 15u)]), true);
    let var_1 = global2[_wgslsmith_index_u32(17298u, 23u)];
    global1 = array<vec2<u32>, 13>();
    let var_2 = ~u_input.b.x;
    return vec4<u32>(~81321u, ~78585u, ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(abs(u_input.a), u_input.a, ~u_input.a), u_input.a), ~(~(~(~u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 23>();
    let var_0 = ~(max(reverseBits(func_1(Struct_2(global0[_wgslsmith_index_u32(u_input.a, 15u)]), u_input.b.x)), vec4<u32>(func_3(false), _wgslsmith_div_u32(4294967295u, u_input.a), ~20805u, func_3(false))) & ~vec4<u32>(func_4(global0[_wgslsmith_index_u32(u_input.a, 15u)], Struct_1(vec3<bool>(false, true, false), 0u, u_input.b.zy), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), 4294967295u), _wgslsmith_mult_u32(1u, u_input.a), _wgslsmith_add_u32(u_input.a, u_input.a), select(37822u, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 15u)])));
    let var_1 = Struct_2(true);
    let var_2 = !(!any(select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 15u)], false), vec2<bool>(var_1.a, false), vec2<bool>(false, var_1.a)), vec2<bool>(false, var_1.a), !vec2<bool>(var_1.a, global0[_wgslsmith_index_u32(var_0.x, 15u)]))));
    global2 = array<vec3<f32>, 23>();
    var var_3 = !(!vec4<bool>(true, var_1.a, _wgslsmith_f_op_f32(sign(1443f)) < _wgslsmith_f_op_f32(-960f - -386f), var_2));
    var var_4 = Struct_1(!vec3<bool>(true, select(global0[_wgslsmith_index_u32(0u, 15u)] | var_2, true, var_1.a), true), _wgslsmith_dot_vec3_u32(var_0.xwy, _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, var_0.x, u_input.a), var_0.wzy)), select(_wgslsmith_div_vec2_i32(u_input.b.xy, ~u_input.b.xx >> (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u))), u_input.b.zz, vec2<bool>(!(u_input.b.x > 229i), var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-211f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-663f))))), ~var_0.x, func_4(func_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(351f, 537f, -528f), global2[_wgslsmith_index_u32(1u, 23u)], true)), func_5(vec3<f32>(1212f, -1261f, 1000f), Struct_1(vec3<bool>(var_4.a.x, var_2, false), 4294967295u, vec2<i32>(-13859i, var_4.c.x)), vec3<f32>(502f, 1373f, 2478f), true), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-564f, -1619f, 562f), global2[_wgslsmith_index_u32(14370u, 23u)])), true).a.x && all(!vec4<bool>(var_4.a.x, var_4.a.x, true, var_4.a.x)), Struct_1(!vec3<bool>(true, var_2, true), 71697u, vec2<i32>(var_4.c.x, 2147483647i) >> (firstLeadingBit(var_0.yx) % vec2<u32>(32u))), vec4<u32>(u_input.a, func_1(Struct_2(var_1.a), abs(-10642i)).x, var_0.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 13850u, var_4.b), vec3<u32>(u_input.a, var_4.b, u_input.a)) % 32u), 59025u), 126010u), var_0, var_0.xyw);
}

