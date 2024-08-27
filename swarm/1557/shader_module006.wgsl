struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<u32, 24> = array<u32, 24>(1u, 4294967295u, 1u, 30937u, 17457u, 4294967295u, 1u, 26844u, 1u, 29198u, 36910u, 1u, 4294967295u, 0u, 24572u, 21824u, 4011u, 71349u, 42166u, 2438u, 1u, 1936u, 0u, 0u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>) -> vec3<bool> {
    var var_0 = Struct_1(-1i);
    global0 = array<Struct_1, 7>();
    var var_1 = Struct_1(u_input.a);
    var var_2 = Struct_3(Struct_1(-abs(1i)), 764f, select(_wgslsmith_sub_u32(abs(arg_2.x), 4294967295u), 45436u, true), abs(vec3<u32>(~(~arg_2.x), 79276u, 4294967295u)));
    global1 = array<u32, 24>();
    return select(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), true), vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), true, true), 0u >= ~u_input.d), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), false), false);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec2_i32(u_input.b.xz, _wgslsmith_mod_vec2_i32(vec2<i32>(1i, arg_1.x), u_input.b.zz)) & arg_1;
    var var_1 = select(select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), func_3(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], Struct_1(0i), vec2<u32>(u_input.d, u_input.d))), (arg_0.x <= arg_0.x) & true), vec3<bool>(-865f != _wgslsmith_f_op_f32(1381f + arg_0.x), !any(vec2<bool>(false, true)), select(true, false, true)), select(func_3(~global1[_wgslsmith_index_u32(1u, 24u)], Struct_1(arg_1.x), ~vec2<u32>(u_input.d, 32941u)), vec3<bool>(true, true, true), func_3(1u, Struct_1(var_0.x), vec2<u32>(global1[_wgslsmith_index_u32(10317u, 24u)], u_input.d)))), vec3<bool>(!any(vec4<bool>(true, true, true, true)), false, true), !(u_input.d != countOneBits(1u)));
    return Struct_2(Struct_1(-u_input.c.x), Struct_1(max(-2147483647i, firstLeadingBit(var_0.x))), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(49345u, global1[_wgslsmith_index_u32(49451u, 24u)]) ^ (vec2<u32>(u_input.d, global1[_wgslsmith_index_u32(u_input.d, 24u)]) & vec2<u32>(67945u, global1[_wgslsmith_index_u32(41603u, 24u)])), _wgslsmith_clamp_vec2_u32(vec2<u32>(24087u, u_input.d) & vec2<u32>(0u, 34325u), ~vec2<u32>(u_input.d, 4294967295u), vec2<u32>(global1[_wgslsmith_index_u32(38084u, 24u)], 16079u))), -vec4<i32>(-1i, ~arg_1.x, select(-1i, -47267i, var_1.x), u_input.b.x) & -firstTrailingBit(-vec4<i32>(-1i, -1i, arg_1.x, 36882i)), vec2<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~75541u, firstTrailingBit(34822u)), 24u)], global1[_wgslsmith_index_u32(~(~17144u), 24u)]), 52090u));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = arg_0.e.x >= arg_0.c.x;
    var_0 = arg_3;
    let var_1 = Struct_3(Struct_1(-2147483647i), 885f, _wgslsmith_sub_u32(~38254u, arg_0.e.x), ~abs(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 113740u, 12069u), vec3<u32>(u_input.d, 1u, global1[_wgslsmith_index_u32(u_input.d, 24u)]))));
    global0 = array<Struct_1, 7>();
    var var_2 = all(!select(vec3<bool>(arg_2, true, arg_2), !vec3<bool>(false, true, arg_3), func_3(6101u, Struct_1(var_1.a.a), vec2<u32>(4294967295u, u_input.d)))) & true;
    return Struct_1(min(arg_0.a.a, var_1.a.a) ^ var_1.a.a);
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: vec4<u32>) -> vec4<f32> {
    var var_0 = Struct_2(func_4(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-981f, arg_1))), vec2<i32>(-2147483647i, arg_0.a.a.a) | (arg_0.d.d.zw | vec2<i32>(u_input.a, -17221i))), arg_1, !arg_0.c.x, true), arg_0.a.b, ~arg_0.a.c, -(~vec4<i32>(func_4(Struct_2(arg_0.d.a, Struct_1(-5074i), vec2<u32>(arg_2.x, 28785u), arg_0.a.d, arg_0.d.e), 1000f, true, false).a, 1i, _wgslsmith_add_i32(2147483647i, u_input.a), -86504i)), ~select(vec2<u32>(_wgslsmith_dot_vec4_u32(arg_2, arg_2), ~72917u), ~vec2<u32>(arg_2.x, 46902u), !select(vec2<bool>(true, arg_0.c.x), vec2<bool>(false, true), vec2<bool>(arg_0.b, arg_0.b))));
    global1 = array<u32, 24>();
    global0 = array<Struct_1, 7>();
    var var_1 = Struct_4(Struct_2(func_4(func_2(_wgslsmith_div_vec2_f32(vec2<f32>(934f, arg_1), vec2<f32>(-1179f, 129f)), vec2<i32>(0i, 32058i)), 989f, false, !(-19976i >= var_0.a.a)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~select(func_2(vec2<f32>(-285f, -194f), var_0.d.yx).c.x, ~global1[_wgslsmith_index_u32(44963u, 24u)], true), 24u)], 7u)], vec2<u32>(~1u, _wgslsmith_mod_u32(1u, firstTrailingBit(arg_0.a.c.x))), firstTrailingBit(-(~vec4<i32>(var_0.d.x, arg_0.d.d.x, 1i, u_input.a))), vec2<u32>(_wgslsmith_dot_vec3_u32(arg_2.wzz, firstLeadingBit(arg_2.zzx)), arg_0.d.e.x)), false, vec3<bool>(u_input.d != ~max(arg_2.x, u_input.d), true, arg_0.b & true), Struct_2(Struct_1(_wgslsmith_clamp_i32(0i, -27473i, func_4(Struct_2(Struct_1(2147483647i), var_0.a, arg_2.xy, var_0.d, vec2<u32>(49884u, 4294967295u)), 1134f, true, arg_0.b).a)), Struct_1(_wgslsmith_clamp_i32(-1513i, ~10146i, 2147483647i)), var_0.c, _wgslsmith_add_vec4_i32(arg_0.d.d, vec4<i32>(_wgslsmith_div_i32(var_0.a.a, 51967i), arg_0.d.d.x, var_0.d.x, -u_input.b.x)), abs(vec2<u32>(select(1u, global1[_wgslsmith_index_u32(7950u, 24u)], false), abs(0u)))), func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, -2729f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(922f, 394f))))), _wgslsmith_sub_vec2_i32(u_input.c.xx, vec2<i32>(var_0.d.x, u_input.a))).b);
    global0 = array<Struct_1, 7>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2196f, arg_1, 612f, 740f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(451f, arg_1, arg_1, -2315f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1086f, arg_1, arg_1, arg_1)), vec4<f32>(520f, arg_1, arg_1, arg_1)) - vec4<f32>(arg_1, _wgslsmith_f_op_f32(select(1659f, 1000f, arg_0.b)), _wgslsmith_f_op_f32(arg_1 - -1606f), _wgslsmith_f_op_f32(-arg_1))), select(select(!vec4<bool>(true, arg_0.b, var_1.c.x, arg_0.c.x), !vec4<bool>(false, var_1.c.x, arg_0.b, arg_0.b), vec4<bool>(true, arg_0.b, arg_0.c.x, false)), vec4<bool>(arg_0.b, true, arg_0.c.x, var_1.b), !(arg_1 < arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 24>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(361f, 2031f, 197f, -1696f) + vec4<f32>(-1000f, 1610f, -1066f, 157f)), _wgslsmith_f_op_vec4_f32(func_1(Struct_4(Struct_2(Struct_1(0i), Struct_1(u_input.c.x), vec2<u32>(22391u, global1[_wgslsmith_index_u32(u_input.d, 24u)]), vec4<i32>(u_input.c.x, u_input.c.x, -1i, 0i), vec2<u32>(1u, 4294967295u)), true, vec3<bool>(true, false, false), Struct_2(Struct_1(u_input.b.x), Struct_1(-9373i), vec2<u32>(32375u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20667u, 24u)], 24u)]), vec4<i32>(u_input.c.x, -21954i, -16775i, u_input.b.x), vec2<u32>(51802u, u_input.d)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 24u)], 7u)]), 1473f, vec4<u32>(17101u, u_input.d, u_input.d, global1[_wgslsmith_index_u32(30191u, 24u)])))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(644f, 1559f, 979f, -854f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-511f, 1000f, 157f, 1079f), vec4<f32>(-1159f, 1185f, 814f, 522f), true)))) * vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(748f * -1000f))), _wgslsmith_f_op_f32(-294f * _wgslsmith_f_op_f32(f32(-1f) * -1512f)), -1104f, _wgslsmith_f_op_f32(sign(-483f)))));
    var var_1 = -_wgslsmith_mod_vec4_i32(vec4<i32>(-27512i, 33345i, -1i, -u_input.a), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b.x, u_input.a, 22136i, 17820i), vec4<i32>(u_input.a, func_4(Struct_2(global0[_wgslsmith_index_u32(24652u, 7u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 7u)], vec2<u32>(u_input.d, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29967u, 24u)], 24u)]), vec4<i32>(u_input.b.x, 0i, 42824i, u_input.a), vec2<u32>(u_input.d, 1u)), var_0.x, false, false).a, 1i, ~(-1i))));
    var var_2 = firstLeadingBit(abs(var_1.wz ^ ~vec2<i32>(-2637i, -56568i)) ^ (-vec2<i32>(var_1.x, 799i) & select(var_1.yw, vec2<i32>(var_1.x, var_1.x), vec2<bool>(false, true))));
    let var_3 = ~(vec2<u32>(max(_wgslsmith_add_u32(u_input.d, 52410u), 1u), ~0u) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u)));
    global1 = array<u32, 24>();
    let var_4 = vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(~4735u, 1u & global1[_wgslsmith_index_u32(8153u, 24u)], ~0u, ~40026u), select(abs(vec4<u32>(51782u, var_3.x, 4294967295u, var_3.x)), vec4<u32>(1u, var_3.x, global1[_wgslsmith_index_u32(4294967295u, 24u)], 1u) ^ vec4<u32>(21369u, 38384u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8605u, 24u)], 24u)]), any(vec2<bool>(true, true))))), select(119867u, ~(~57001u), true), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_3.x, 21115u), ~vec3<u32>(u_input.d, var_3.x, var_3.x)), var_3.x, var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(~(~vec3<i32>(-28070i, 0i, var_1.x)), var_1.zyz), vec3<i32>(abs(u_input.a), var_1.x, ~7455i), 54739i, ~firstTrailingBit(max(vec4<u32>(0u, var_4.x, 16191u, 34948u), ~vec4<u32>(0u, 18000u, var_4.x, 1u))));
}

