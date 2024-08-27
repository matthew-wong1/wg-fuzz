struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: bool,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: array<Struct_2, 3>;

var<private> global2: array<Struct_3, 22>;

var<private> global3: vec4<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: u32, arg_1: bool) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(0u >> ((arg_0 | u_input.b.x) % 32u), 22u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d.e.e - var_0.d.a.a)))), ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.d.c & -1i, var_0.a ^ 1948i), -14704i), arg_1, var_0.d.a.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.d.b.e, vec3<f32>(485f, var_0.d.a.e.x, _wgslsmith_f_op_f32(-var_0.b.x)))));
    global2 = array<Struct_3, 22>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 563f) + _wgslsmith_f_op_f32(sign(var_1.a.x)))), var_1.e.x, !((i32(-1i) * -1i) <= var_0.e))) * -1000f);
    let var_3 = _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.x, var_1.e.x))), _wgslsmith_f_op_f32(-var_0.d.a.a.x))))));
    return false;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> u32 {
    var var_0 = min(abs(min(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(74482u, 26510u, 76373u)), vec3<u32>(0u, u_input.a, 28142u)), min(u_input.b, firstTrailingBit(vec3<u32>(4294967295u, 29665u, arg_0.d.b.d.x))))), ~vec3<u32>(_wgslsmith_dot_vec4_u32(arg_0.d.a.d, vec4<u32>(u_input.b.x, arg_0.d.d, 0u, 0u)), ~abs(57480u), 0u));
    var_0 = _wgslsmith_clamp_vec3_u32(arg_0.d.e.d.wwy, firstTrailingBit(arg_0.d.a.d.zzy), ~vec3<u32>(var_0.x, ~(~3468u), ~(~1u)));
    global3 = vec4<bool>(any(!(!select(vec4<bool>(arg_2, false, arg_0.d.b.c, global3.x), vec4<bool>(arg_2, true, global0[_wgslsmith_index_u32(0u, 9u)], global3.x), vec4<bool>(global3.x, true, true, true)))), false, true, global3.x);
    var var_1 = arg_0.a;
    let var_2 = ~(reverseBits(firstLeadingBit(vec2<i32>(arg_0.e, arg_1))) << (~u_input.b.yz % vec2<u32>(32u)));
    return ~(arg_0.d.b.d.x & firstLeadingBit((arg_0.d.b.d.x >> (65176u % 32u)) & _wgslsmith_mult_u32(var_0.x, 4294967295u)));
}

fn func_2() -> vec4<i32> {
    let var_0 = ~abs(1i);
    let var_1 = _wgslsmith_f_op_f32(201f - _wgslsmith_div_f32(-1000f, -962f));
    var var_2 = vec4<u32>(~u_input.b.x, func_4(Struct_3(reverseBits(var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -161f) * vec2<f32>(-1000f, var_1))), _wgslsmith_f_op_f32(f32(-1f) * -1298f), Struct_2(Struct_1(vec3<f32>(var_1, 224f, var_1), 30842i, global3.x, vec4<u32>(1u, u_input.b.x, 38468u, 0u), vec3<f32>(var_1, -464f, var_1)), Struct_1(vec3<f32>(1678f, -491f, -194f), var_0, true, vec4<u32>(u_input.b.x, 55128u, 0u, u_input.a), vec3<f32>(-483f, -576f, 1221f)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -1i, var_0), vec4<i32>(var_0, -6612i, var_0, 48694i)), abs(0u), Struct_1(vec3<f32>(var_1, var_1, -127f), var_0, global3.x, vec4<u32>(u_input.a, u_input.a, 1u, 26853u), vec3<f32>(var_1, 891f, -482f))), var_0), -var_0, select(func_3(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), u_input.b.yy), false), global3.x, all(select(vec4<bool>(false, global0[_wgslsmith_index_u32(76137u, 9u)], global0[_wgslsmith_index_u32(u_input.b.x, 9u)], true), vec4<bool>(global3.x, global3.x, true, global3.x), vec4<bool>(global3.x, global0[_wgslsmith_index_u32(79755u, 9u)], global3.x, true))))), ~79491u >> (~((u_input.a ^ u_input.b.x) << (u_input.a % 32u)) % 32u), u_input.b.x);
    var var_3 = ~min(~firstLeadingBit(~0u), func_4(global2[_wgslsmith_index_u32(3625u, 22u)], _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0, -30747i), vec2<i32>(var_0, -45948i)), -vec2<i32>(-33700i, var_0)), global3.x));
    var_2 = firstLeadingBit(vec4<u32>(~firstLeadingBit(var_2.x), 3251u, u_input.a, 67145u));
    return select(vec4<i32>(~_wgslsmith_sub_i32(var_0, 0i), _wgslsmith_dot_vec3_i32(countOneBits(abs(vec3<i32>(var_0, var_0, var_0))), -(~vec3<i32>(var_0, var_0, -2147483647i))), ~(var_0 | ~52774i), var_0), select(vec4<i32>(-26575i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, var_0, -29713i), max(vec3<i32>(10485i, var_0, var_0), vec3<i32>(18299i, 0i, var_0))), firstLeadingBit(abs(var_0)), -1i), _wgslsmith_mod_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-30762i, 1i, -2147483647i, var_0), vec4<i32>(var_0, var_0, -31530i, -1i)), max(vec4<i32>(-1i, var_0, 5928i, 0i), vec4<i32>(2147483647i, var_0, 2147483647i, 46680i))), true | all(select(global3.yxy, vec3<bool>(global0[_wgslsmith_index_u32(var_2.x, 9u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(var_2.x, 9u)], global0[_wgslsmith_index_u32(104u, 9u)], false)))), vec4<bool>(true, global3.x, any(vec2<bool>(any(vec3<bool>(true, false, global3.x)), !global0[_wgslsmith_index_u32(16231u, 9u)])), ~(var_2.x << (var_2.x % 32u)) == u_input.a));
}

fn func_1(arg_0: vec2<f32>) -> vec2<i32> {
    global3 = vec4<bool>(!(-1030f > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-2292f + -1417f)))), global0[_wgslsmith_index_u32(u_input.b.x, 9u)], !(min(abs(u_input.a), u_input.b.x) < select(_wgslsmith_mod_u32(1u, 9254u), _wgslsmith_sub_u32(u_input.b.x, 4294967295u), true)), true);
    var var_0 = func_2();
    var var_1 = Struct_4(global3.zyy, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(346f)), -1692f)), -153f, arg_0.x), 2147483647i | var_0.x, all(select(vec2<bool>(global3.x, global3.x), global3.zx, vec2<bool>(true, true))), ~(~(~vec4<u32>(u_input.a, u_input.b.x, u_input.a, 11701u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, 548f) - vec3<f32>(arg_0.x, arg_0.x, -2314f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1459f, arg_0.x, arg_0.x), vec3<f32>(-1000f, arg_0.x, 690f)))))), 100f);
    var var_2 = var_0.x;
    let var_3 = select(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~4294967295u), var_1.b.d.x), 9u)]), select(vec4<bool>(true, true, true, true), select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 9u)], var_1.b.c, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], true), !vec4<bool>(global3.x, true, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], global3.x), select(vec4<bool>(true, false, var_1.a.x, false), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 9u)], true, false, var_1.a.x), vec4<bool>(var_1.a.x, global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)], true))), !vec4<bool>(select(false, global3.x, true), all(var_1.a.xy), true, !global0[_wgslsmith_index_u32(20970u, 9u)])), all(var_1.a));
    return var_0.xy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~(2390u >> (u_input.a % 32u)), reverseBits(~_wgslsmith_add_u32(u_input.a, select(34523u, u_input.b.x, global3.x))), 1u, _wgslsmith_dot_vec2_u32(u_input.b.yy, ~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), u_input.b.zy), firstLeadingBit(u_input.b.xy))));
    let var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-7175i, _wgslsmith_add_i32(~1i, abs(13506i))), vec2<i32>(min(52020i, 40731i), -1i) & func_1(vec2<f32>(1847f, -1027f))), vec2<i32>(-25272i, func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(145f, 1016f)) * _wgslsmith_div_vec2_f32(vec2<f32>(791f, -138f), vec2<f32>(-527f, -648f)))).x));
    var var_2 = all(select(!select(!global3.xw, !vec2<bool>(global0[_wgslsmith_index_u32(1u, 9u)], global3.x), vec2<bool>(global3.x, global3.x)), global3.xx, select(all(select(global3.zyy, global3.wxw, true)), global0[_wgslsmith_index_u32(~countOneBits(4294967295u), 9u)], true)));
    var var_3 = firstTrailingBit(min(reverseBits(-vec3<i32>(2147483647i, 83919i, var_1.x)), ~select(~vec3<i32>(0i, -23046i, 0i), ~vec3<i32>(-38096i, var_1.x, var_1.x), vec3<bool>(global3.x, global3.x, global0[_wgslsmith_index_u32(76269u, 9u)]))));
    global3 = !select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x << ((1u | var_0.x) % 32u), 9u)], (true & global0[_wgslsmith_index_u32(0u, 9u)]) && true, any(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 9u)], global3.x), vec4<bool>(true, false, false, false), vec4<bool>(global3.x, true, global3.x, global3.x))), global3.x), select(vec4<bool>(global3.x || global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(67957u ^ var_0.x, 9u)], all(vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_0.x, 9u)], global0[_wgslsmith_index_u32(var_0.x, 9u)])), true), vec4<bool>(false, false, func_3(1u, global0[_wgslsmith_index_u32(u_input.b.x, 9u)]), false), false), func_3(126367u, all(global3.wyz)));
    var var_4 = Struct_4(vec3<bool>(true, func_3(_wgslsmith_sub_u32(~4294967295u, var_0.x), all(vec3<bool>(false, true, false))), countOneBits(~u_input.b.x) <= abs(u_input.b.x << (104019u % 32u))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-524f, 1720f, -499f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-508f, -2120f, 247f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-267f, 377f, 104f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-706f, -1409f, -740f) - vec3<f32>(-969f, 244f, 544f)))), ~countOneBits(var_3.x), true, vec4<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(var_0.x, u_input.a, 7692u), u_input.b), select(var_0.xyx, u_input.b, vec3<bool>(true, false, global3.x))), 16498u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), u_input.b.xz ^ vec2<u32>(48402u, u_input.b.x)), ~(~u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(772f, 933f)))), _wgslsmith_f_op_f32(floor(-833f)), 1246f)), _wgslsmith_f_op_f32(-419f - 440f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(min(var_1.x, ~var_4.b.b), -3239i, 24798i, var_3.x), 17301u);
}

