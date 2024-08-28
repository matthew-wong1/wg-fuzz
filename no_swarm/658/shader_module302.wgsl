struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: vec3<bool>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(1334f, -1000f, 853f, 845f), -1i, vec4<f32>(284f, 416f, 671f, -422f), vec4<f32>(-773f, -1334f, -986f, -474f));

var<private> global1: array<f32, 22>;

var<private> global2: array<Struct_3, 26>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(88897u, 0u) >> (vec2<u32>(u_input.a, 23787u) % vec2<u32>(32u)), min(vec2<u32>(arg_0, 4294967295u), vec2<u32>(0u, u_input.a))), min(firstLeadingBit(vec2<u32>(1u, 4294967295u)), vec2<u32>(4294967295u, arg_0) | vec2<u32>(0u, arg_0))), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 0u) & vec2<u32>(49989u, arg_0), vec2<u32>(76548u, 78763u)) << (((vec2<u32>(38929u, arg_0) & vec2<u32>(arg_0, 8389u)) ^ ~vec2<u32>(u_input.a, 31022u)) % vec2<u32>(32u))), global0.a.x, vec3<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), all(vec4<bool>(false, true, false, false)))), (any(vec4<bool>(true, true, false, false)) && (60626u > u_input.a)) != all(vec2<bool>(true, false)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), min(_wgslsmith_mult_i32(min(global0.b, global0.b) | 1i, ~global0.b), -25843i), vec2<u32>(~0u | arg_0, arg_0));
    let var_1 = true;
    global1 = array<f32, 22>();
    let var_2 = Struct_2(~(~vec2<u32>(u_input.a, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))), !vec3<bool>(var_0.c.x, !var_0.c.x & any(vec4<bool>(var_0.c.x, var_0.c.x, true, false)), ~var_0.e.x <= 95750u), global0.b, ~vec2<u32>(~arg_0, _wgslsmith_mod_u32(~arg_0, 52073u)));
    var var_3 = select(min(~firstTrailingBit(vec3<u32>(u_input.a, 4294967295u, arg_0)) >> (vec3<u32>(arg_0, _wgslsmith_mod_u32(var_2.a.x, var_2.a.x), max(1922u, u_input.a)) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, u_input.a, var_2.a.x), vec3<u32>(u_input.a, 7038u, u_input.a)) >> (vec3<u32>(_wgslsmith_sub_u32(4294967295u, arg_0), 61184u | u_input.a, ~u_input.a) % vec3<u32>(32u))), ~(~(~vec3<u32>(0u, var_2.a.x, 68106u))) & firstTrailingBit(max(vec3<u32>(var_0.e.x, var_0.a.x, u_input.a), reverseBits(vec3<u32>(22701u, 2400u, 1u)))), !(true == any(select(vec2<bool>(var_2.c.x, false), var_0.c.zy, false))));
    return var_2.c;
}

fn func_2(arg_0: Struct_4) -> Struct_4 {
    var var_0 = Struct_2(~vec2<u32>(1u, _wgslsmith_mod_u32(min(4294967295u, u_input.a), 38506u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-908f, -1346f))) * global0.a.x), vec3<bool>(true, true, all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), func_3(58260u)))), arg_0.a, vec2<u32>(max(u_input.a, u_input.a), u_input.a));
    global1 = array<f32, 22>();
    return Struct_4(_wgslsmith_mod_i32(global0.b, 3431i));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_3, arg_3: i32) -> vec2<i32> {
    global0 = Struct_1(vec4<f32>(arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, arg_2.b.e.x), 22u)])))), _wgslsmith_f_op_f32(arg_1 * arg_2.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * -1000f) + _wgslsmith_f_op_f32(floor(-2420f))))), arg_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.c, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, arg_2.b.b, 118f, global1[_wgslsmith_index_u32(u_input.a, 22u)]))))), !vec4<bool>(false, false, arg_2.a, arg_2.b.c.x))) - _wgslsmith_f_op_vec4_f32(min(global0.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_2.b.b, arg_1, global0.a.x) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, 1097f, -1003f, arg_2.b.b))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(abs(~arg_2.b.e.x), 22u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global0.d.x, global1[_wgslsmith_index_u32(arg_2.b.a.x, 22u)])))), -701f, -180f) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.b.b, -1634f, false))), 671f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 22u)] * global1[_wgslsmith_index_u32(3021u, 22u)]), _wgslsmith_f_op_f32(floor(-135f)))));
    var var_0 = arg_2.b.c.yy;
    let var_1 = Struct_2(abs(vec2<u32>(arg_2.b.e.x, 0u) >> (select(~vec2<u32>(0u, arg_2.b.a.x), arg_2.b.e, true) % vec2<u32>(32u))), _wgslsmith_f_op_f32(1660f + global1[_wgslsmith_index_u32(47285u, 22u)]), select(select(select(arg_2.b.c, select(vec3<bool>(true, true, true), vec3<bool>(arg_2.b.c.x, arg_2.a, arg_2.a), false), true), select(arg_2.b.c, vec3<bool>(false, arg_2.a, true), arg_2.a | false), vec3<bool>(var_0.x, -238f <= arg_1, var_0.x)), vec3<bool>(true, true, true), !(!arg_2.b.c)), firstTrailingBit(~_wgslsmith_div_i32(arg_2.b.d, arg_2.b.d)), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_2.b.e.x, 21613u, arg_2.b.e.x, arg_2.b.e.x), vec4<u32>(u_input.a, u_input.a, 0u, 41099u)), select(~vec4<u32>(u_input.a, arg_2.b.e.x, 1305u, 2882u), select(vec4<u32>(4294967295u, 4294967295u, arg_2.b.e.x, u_input.a), vec4<u32>(arg_2.b.a.x, 62106u, u_input.a, 1u), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), vec4<bool>(true, false, false, var_0.x))), u_input.a));
    var_0 = vec2<bool>(true, func_3(var_1.e.x).x);
    return firstLeadingBit(~countOneBits(~vec2<i32>(-1i, 69418i) | abs(vec2<i32>(0i, global0.b))));
}

fn func_1() -> Struct_4 {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(abs(abs(vec2<i32>(0i, global0.b))), _wgslsmith_add_vec2_i32(vec2<i32>(-3609i, global0.b) & vec2<i32>(50479i, global0.b), min(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(global0.b, global0.b)))), -14454i) & _wgslsmith_add_vec2_i32(func_4(func_2(Struct_4(-12378i)), -1411f, global2[_wgslsmith_index_u32(reverseBits(max(u_input.a, 4294967295u)), 26u)], _wgslsmith_mult_i32(12221i, global0.b) | -2147483647i), firstTrailingBit(-(vec2<i32>(1i, global0.b) << (vec2<u32>(u_input.a, 28916u) % vec2<u32>(32u)))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~4294967295u, 22u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) + _wgslsmith_f_op_f32(-1243f - global0.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-423f)))), global0.c.x))), var_0.x, global0.c, vec4<f32>(_wgslsmith_div_f32(global0.a.x, global0.c.x), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(~u_input.a, 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2134f))))), -1103f, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(174f + 631f))))));
    global1 = array<f32, 22>();
    var var_1 = !(!vec3<bool>(false, !all(vec2<bool>(true, false)), all(vec2<bool>(true, true))));
    let var_2 = select(var_1.xz, select(func_3(1u).xz, vec2<bool>(!(!var_1.x), true | all(vec3<bool>(var_1.x, false, false))), any(!(!vec4<bool>(var_1.x, false, var_1.x, var_1.x)))), !var_1.xx);
    return Struct_4(1i);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = select(arg_1.c.xx, select(!vec2<bool>(arg_1.c.x, false), vec2<bool>(true, arg_1.c.x), vec2<bool>(arg_1.c.x, true || (u_input.a >= u_input.a))), !arg_1.c.yz);
    var var_1 = _wgslsmith_div_u32(u_input.a & ~45128u, _wgslsmith_add_u32(arg_1.e.x, arg_1.e.x) >> (~u_input.a % 32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.a, 22u)], -130f)) + 902f), -535f)), _wgslsmith_f_op_vec4_f32(-global0.c), var_0.x));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(arg_1.e.x, 22u)], global1[_wgslsmith_index_u32(16409u, 22u)], arg_1.b, 585f), vec4<f32>(var_2.x, global0.c.x, 289f, var_2.x))))))))), abs(-(~arg_0.a)) & ~(~reverseBits(global0.b)), vec4<f32>(global0.d.x, 2158f, -409f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.b, -804f)), -2195f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(arg_1.e.x, 22u)], 1252f, 793f, var_2.x))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-941f, -805f, 221f, 486f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(695f, -381f, 1000f, global0.d.x), vec4<f32>(var_2.x, 1360f, global0.d.x, -464f), true))))))));
    global1 = array<f32, 22>();
    return vec3<i32>(_wgslsmith_clamp_i32(global0.b, ~(-1i), -1i), ~_wgslsmith_div_i32(_wgslsmith_div_i32(17027i ^ arg_0.a, ~(-2147483647i)), select(1i, i32(-1i) * -2147483647i, false)), -global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 26>();
    let var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(-abs(select(vec3<i32>(1i, global0.b, -24264i), vec3<i32>(-10440i, global0.b, 0i), true)), ~func_5(func_1(), Struct_2(vec2<u32>(4294967295u, 4294967295u), global0.a.x, vec3<bool>(false, false, true), 1i, vec2<u32>(8681u, u_input.a)))), select(global0.b, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(global0.b, global0.b)), select(vec2<i32>(global0.b, global0.b), vec2<i32>(global0.b, global0.b), vec2<bool>(true, false))), global0.b >= 88805i) & -15627i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.b, _wgslsmith_mod_i32(2147483647i, global0.b), 2840i, abs(global0.b)), vec4<i32>(global0.b, global0.b, global0.b | -48882i, -79486i)), ~(~vec4<i32>(global0.b, -33053i, global0.b, 0i))));
    var var_1 = true;
    var var_2 = Struct_3(false, Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), abs(vec2<u32>(u_input.a, u_input.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global0.d.x)))), -151f), vec3<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), func_3(7059u).x), -2147483647i, vec2<u32>(u_input.a, min(~9836u, ~11010u))));
    let var_3 = -var_0;
    var var_4 = !vec4<bool>(select(true, var_2.a, var_2.a), func_3(abs(~var_2.b.a.x)).x, var_2.b.c.x, false);
    let var_5 = true;
    var_1 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, var_2.b.e.x, 1u), reverseBits(vec3<u32>(60682u, u_input.a, u_input.a))), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.b.a.x, u_input.a, var_2.b.e.x), vec3<u32>(var_2.b.e.x, 13379u, u_input.a), vec3<u32>(86218u, 1u, 0u)))), 1u), firstTrailingBit(_wgslsmith_sub_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.b.e.x, u_input.a, var_2.b.e.x, var_2.b.a.x), vec4<u32>(u_input.a, var_2.b.a.x, 24689u, 7119u))), abs(firstLeadingBit(vec4<u32>(u_input.a, 61666u, u_input.a, 22865u))))), _wgslsmith_f_op_vec4_f32(global0.c * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.d.x)), _wgslsmith_f_op_f32(min(-307f, 676f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 22u)] * global1[_wgslsmith_index_u32(4086u, 22u)]), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(var_3.xx, var_0.yz)), _wgslsmith_add_vec2_i32(var_3.xx, vec2<i32>(1i, var_2.b.d))) & reverseBits(~var_0.zx ^ vec2<i32>(var_2.b.d, var_2.b.d)));
}

