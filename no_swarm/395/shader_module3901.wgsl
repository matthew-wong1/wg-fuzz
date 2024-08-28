struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: array<vec3<f32>, 15>;

var<private> global2: Struct_2;

var<private> global3: array<vec4<f32>, 20>;

var<private> global4: array<Struct_3, 15>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = !(!global2.a) != !global2.a;
    let var_1 = abs(abs(vec2<i32>(u_input.a, u_input.a)));
    global4 = array<Struct_3, 15>();
    let var_2 = vec2<i32>(1i | (_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -22857i, 0i), vec3<i32>(var_1.x, u_input.a, 60061i)), _wgslsmith_div_i32(-12873i, var_1.x), abs(2147483647i)) | _wgslsmith_dot_vec2_i32(var_1, _wgslsmith_div_vec2_i32(var_1, vec2<i32>(u_input.a, u_input.a)))), -_wgslsmith_sub_i32(reverseBits(28847i), -27846i));
    let var_3 = vec4<i32>(~(-_wgslsmith_mult_i32(~2147483647i, ~(-1i))), min(~(-countOneBits(-38909i)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 68335i, 7595i), vec3<i32>(1i, 1i, 1i)))), 1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(49608i, var_1.x, u_input.a), vec3<i32>(_wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(u_input.a, var_1.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -7935i), -vec2<i32>(var_1.x, 0i)), -2147483647i)));
    return all(vec2<bool>(!(global0[_wgslsmith_index_u32(4294967295u, 9u)] >= 733f), !any(!vec3<bool>(false, var_0, global2.a))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool) -> u32 {
    let var_0 = vec2<bool>(true, func_3());
    global3 = array<vec4<f32>, 20>();
    var var_1 = 0u;
    let var_2 = Struct_2(any(!select(select(vec3<bool>(true, false, true), vec3<bool>(global2.a, arg_2, arg_2), vec3<bool>(false, var_0.x, true)), vec3<bool>(true, var_0.x, false), global2.a)));
    var var_3 = global4[_wgslsmith_index_u32(1u | abs(select(~(~arg_1.x), ~1u, true)), 15u)];
    return countOneBits(~(~abs(~1u)));
}

fn func_1() -> Struct_2 {
    var var_0 = false;
    global3 = array<vec4<f32>, 20>();
    let var_1 = reverseBits(~(-(vec3<i32>(27406i, u_input.a, u_input.a) ^ -vec3<i32>(-4283i, u_input.a, -10770i))));
    var var_2 = !vec3<bool>(!global2.a, true, !(!(!global2.a)));
    var var_3 = ~(_wgslsmith_add_vec3_u32(vec3<u32>(1u, ~1u, abs(37978u)), vec3<u32>(1u, func_2(Struct_1(vec4<u32>(38028u, 1u, 1u, 0u), 21776u, vec3<i32>(0i, -46809i, var_1.x), var_1), vec2<u32>(0u, 30625u), var_2.x), 4294967295u)) >> (~(~firstTrailingBit(vec3<u32>(4294967295u, 0u, 12883u))) % vec3<u32>(32u)));
    return Struct_2(!var_2.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: f32) -> i32 {
    let var_0 = any(select(select(!select(vec2<bool>(false, false), vec2<bool>(global2.a, arg_2), vec2<bool>(false, arg_0.a)), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(global2.a, arg_0.a)), select(!vec2<bool>(global2.a, arg_0.a), vec2<bool>(arg_2, global2.a), select(vec2<bool>(arg_0.a, arg_2), vec2<bool>(arg_2, global2.a), true))), vec2<bool>(all(vec3<bool>(false, false, arg_0.a)), true), !arg_2));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1744f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * -367f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(684f)) - 649f) * -347f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-712f))) * _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), !(arg_1.b.x != _wgslsmith_dot_vec3_u32(vec3<u32>(41342u, arg_1.b.x, arg_1.b.x), vec3<u32>(arg_1.b.x, arg_1.b.x, 0u))))));
    var var_2 = 1i ^ select(arg_1.a, firstLeadingBit(arg_1.a), !any(!vec4<bool>(true, global2.a, false, global2.a)));
    var var_3 = Struct_1(vec4<u32>(~arg_1.b.x, ~arg_1.b.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, arg_1.b.x)) & ~8482u, 4294967295u), _wgslsmith_add_u32(arg_1.b.x, 36179u)), arg_1.b.x, -min(~vec3<i32>(-2147483647i, 1i, 9979i), vec3<i32>(reverseBits(1i), -51060i, -1i)), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(~(~vec3<i32>(-29419i, u_input.a, u_input.a)), firstLeadingBit(vec3<i32>(-5771i, u_input.a, u_input.a)) ^ -vec3<i32>(arg_1.a, u_input.a, arg_1.a)), -vec3<i32>(1i, -1i, -arg_1.a)));
    var var_4 = Struct_2(func_1().a);
    return -52851i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-622f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), abs(vec3<u32>(1u, 23387u, 0u))), 9u)]) + 1580f));
    global1 = array<vec3<f32>, 15>();
    let var_1 = min(_wgslsmith_div_u32(~(~41925u), ~103561u), countOneBits(~0u));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 9u)], _wgslsmith_f_op_f32(round(523f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1030f, global0[_wgslsmith_index_u32(32809u, 9u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(505f, 2160f) - vec2<f32>(global0[_wgslsmith_index_u32(var_1, 9u)], global0[_wgslsmith_index_u32(var_1, 9u)])) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(376f, global0[_wgslsmith_index_u32(1u, 9u)]), vec2<f32>(global0[_wgslsmith_index_u32(59919u, 9u)], global0[_wgslsmith_index_u32(var_1, 9u)])))))), vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 9u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~reverseBits(13901u), 9u)] + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1), vec2<u32>(var_1, var_1)), 9u)])))));
    let var_3 = Struct_1(~select(vec4<u32>(~0u, var_1 >> (31403u % 32u), 1u, abs(25080u)), vec4<u32>(11266u, 24957u, var_1, var_1) | min(vec4<u32>(19552u, 0u, var_1, 5681u), vec4<u32>(var_1, 1u, var_1, 1u)), false), var_1, vec3<i32>(u_input.a, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-6856i, u_input.a, -1i), ~vec3<i32>(0i, 0i, -1i)), _wgslsmith_sub_i32(u_input.a | u_input.a, u_input.a >> (16836u % 32u)), reverseBits(u_input.a & u_input.a)), firstLeadingBit(_wgslsmith_mod_i32(u_input.a, 51119i) & (u_input.a & u_input.a))), vec3<i32>(firstTrailingBit(i32(-1i) * -u_input.a), func_4(func_1(), Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), vec2<u32>(var_1, var_1)), global2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1, 9u)] + var_2.x)))), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(~(~var_1), 9u)], _wgslsmith_div_f32(-893f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(18392u, 9u)] + global0[_wgslsmith_index_u32(var_1, 9u)]))) - vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(min(79544u, var_3.b), 9u)] + _wgslsmith_f_op_f32(-var_2.x)), var_2.x)), reverseBits(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(0i, 1i), 56874i << (var_1 % 32u)), 0i, ~(-2147483647i))), _wgslsmith_f_op_f32(-1067f + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(30120u, var_1, 30560u, var_1), vec4<u32>(20423u, 45828u, var_3.b, 0u)), vec4<u32>(var_1, var_3.a.x, var_3.b, var_3.a.x) >> (var_3.a % vec4<u32>(32u))), var_3.a), 9u)]), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~var_3.a.xz | var_3.a.wy, var_3.a.yw ^ ~vec2<u32>(0u, 60448u)), ~var_3.a.xz), 4093u);
}

