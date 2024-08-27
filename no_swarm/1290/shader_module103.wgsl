struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<u32>(43307u, 0u, 0u, 0u)), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<u32>(31527u, 28764u, 47162u, 62189u)), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<u32>(1u, 38704u, 1u, 20115u)), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<u32>(1u, 10706u, 0u, 1u)), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<u32>(85294u, 69883u, 64947u, 15480u)), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<u32>(1u, 1u, 106408u, 1u)), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<u32>(1u, 31165u, 35421u, 1u)), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<u32>(5068u, 1u, 4294967295u, 3928u)), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<u32>(1u, 14503u, 0u, 29061u)), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<u32>(1u, 76881u, 39206u, 28153u)), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec4<u32>(1u, 4294967295u, 0u, 43928u)), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<u32>(8121u, 0u, 4294967295u, 0u)), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(37860u, 46601u, 21174u, 29534u)), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<u32>(32272u, 1u, 1u, 62751u)), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<u32>(4294967295u, 26737u, 61304u, 29943u)), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<u32>(53433u, 0u, 15877u, 0u)), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec4<u32>(4294967295u, 26588u, 0u, 4294967295u)), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<u32>(4294967295u, 22279u, 52031u, 4294967295u)), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<u32>(4294967295u, 55689u, 18346u, 0u)), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(26958u, 1u, 68669u, 0u)), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<u32>(33251u, 7252u, 56340u, 1u)), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<u32>(30241u, 19718u, 1u, 4294967295u)), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<u32>(54685u, 59061u, 4294967295u, 4294967295u)), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(77968u, 0u, 0u, 0u)), vec3<bool>(true, true, true)));

var<private> global1: vec4<u32> = vec4<u32>(116968u, 92369u, 26409u, 60491u);

var<private> global2: array<f32, 22>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec2<f32>) -> Struct_4 {
    global1 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(firstTrailingBit(select(1u, 4294967295u, false)), ~arg_1.x << (global1.x % 32u), ~35205u), 0u, _wgslsmith_div_u32(_wgslsmith_mod_u32(~global1.x, arg_0.a.b.x), 0u), ~(arg_0.a.b.x >> (arg_0.a.b.x % 32u))), vec4<u32>(global1.x, global1.x, 38575u, arg_0.a.b.x));
    var var_0 = 1u;
    var_0 = 35673u;
    var_0 = ~arg_0.a.b.x;
    global2 = array<f32, 22>();
    return Struct_4(arg_0.a, -u_input.a.x, Struct_3(Struct_1(vec4<bool>(arg_0.a.a.x & true, arg_0.a.a.x, false, arg_0.b.x), vec4<u32>(global1.x, abs(arg_0.a.b.x), _wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_0.a.b.x, arg_0.a.b.x), global1.zxy))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1.x, 22u)]), Struct_2(arg_0.a, !vec3<bool>(arg_0.a.a.x, false, arg_0.b.x)), -81683i));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-409f, global2[_wgslsmith_index_u32(arg_2.c.a.b.x, 22u)], arg_2.c.b, 287f)))))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-309f, global2[_wgslsmith_index_u32(global1.x, 22u)], global2[_wgslsmith_index_u32(0u, 22u)], 330f) * vec4<f32>(392f, global2[_wgslsmith_index_u32(arg_2.c.a.b.x, 22u)], arg_2.c.b, 942f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2[_wgslsmith_index_u32(global1.x, 22u)], arg_2.c.b, arg_2.c.b, 1235f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-174f, arg_2.c.b, 1113f, global2[_wgslsmith_index_u32(global1.x, 22u)]) * vec4<f32>(2107f, -355f, 542f, global2[_wgslsmith_index_u32(global1.x, 22u)])), arg_2.a.a))))));
    let var_1 = func_2(Struct_2(func_2(func_2(func_2(global0[_wgslsmith_index_u32(arg_2.c.a.b.x, 24u)], vec3<u32>(global1.x, global1.x, 27976u), var_0.yz).c.c, ~arg_2.a.b.yyy, var_0.xw).c.c, vec3<u32>(_wgslsmith_dot_vec2_u32(global1.yy, vec2<u32>(11148u, 74428u)), 4294967295u, global1.x | global1.x), var_0.xx).c.a, select(!(!arg_2.c.a.a.xwx), !(!arg_3), arg_2.a.a.yxy)), ~(~(global1.yxw ^ vec3<u32>(arg_2.a.b.x, arg_2.a.b.x, 1715u))) ^ ~arg_2.a.b.zxz, var_0.wz).c.c.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-125f)) * _wgslsmith_f_op_f32(-arg_2.c.b)), _wgslsmith_f_op_f32(-var_0.x), -1880f))));
    global1 = ~arg_2.c.c.a.b;
    let var_3 = Struct_4(func_2(func_2(Struct_2(func_2(arg_2.c.c, vec3<u32>(28610u, var_1.b.x, arg_2.c.a.b.x), vec2<f32>(1405f, -1000f)).c.c.a, vec3<bool>(arg_3.x, arg_3.x, true)), abs(~vec3<u32>(334u, 1u, var_1.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yy))).c.c, vec3<u32>(_wgslsmith_mult_u32(var_1.b.x, global1.x) << (global1.x % 32u), _wgslsmith_sub_u32(_wgslsmith_add_u32(var_1.b.x, 54996u), ~global1.x), global1.x), _wgslsmith_f_op_vec2_f32(min(var_0.yw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.xy)))))).a, arg_0.x, func_2(func_2(func_2(func_2(global0[_wgslsmith_index_u32(arg_2.a.b.x, 24u)], vec3<u32>(global1.x, 11013u, 0u), vec2<f32>(var_0.x, arg_2.c.b)).c.c, vec3<u32>(var_1.b.x, var_1.b.x, arg_2.c.a.b.x), _wgslsmith_f_op_vec2_f32(-var_0.yz)).c.c, vec3<u32>(0u, ~var_1.b.x, 18940u), _wgslsmith_f_op_vec2_f32(sign(var_0.yz))).c.c, vec3<u32>(~(68608u >> (global1.x % 32u)), _wgslsmith_dot_vec2_u32(var_1.b.yz | vec2<u32>(45644u, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.c.a.b.x, var_1.b.x), var_1.b.wy)), global1.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(var_0.zw))))).c);
    return func_2(func_2(arg_2.c.c, ~abs(~global1.xwz), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_3.c.b, var_2.x), vec2<f32>(var_0.x, var_3.c.b)))))).c.c, vec3<u32>(min(_wgslsmith_dot_vec4_u32(vec4<u32>(3666u, 4294967295u, 0u, global1.x), vec4<u32>(18778u, var_1.b.x, 1u, var_1.b.x)), 8533u), 0u, firstLeadingBit(var_1.b.x) >> ((0u << (arg_2.c.c.a.b.x % 32u)) % 32u)) | ~(global1.zzy ^ (vec3<u32>(31292u, 24818u, var_1.b.x) | var_1.b.xxx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.b, 1f)))).b;
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = vec2<i32>(-func_3(u_input.a, -(~vec4<i32>(-1i, 2147483647i, -17923i, 28491i)), func_2(Struct_2(Struct_1(vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<u32>(global1.x, global1.x, 4294967295u, 105328u)), arg_1), vec3<u32>(global1.x, 0u, global1.x) >> (vec3<u32>(global1.x, global1.x, global1.x) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-517f, global2[_wgslsmith_index_u32(global1.x, 22u)]))), arg_1), 0i);
    var var_1 = !(!select(select(arg_1.yx, !arg_1.xx, true), vec2<bool>(false && arg_1.x, arg_1.x), vec2<bool>(0i > arg_0, 1i == arg_0)));
    global1 = vec4<u32>(21041u, 4294967295u << (global1.x % 32u), global1.x, global1.x);
    var var_2 = select(!arg_1, !(!vec3<bool>(arg_1.x, arg_1.x, var_1.x)), vec3<bool>(true, false, false));
    var var_3 = Struct_1(vec4<bool>(!(true && !arg_1.x), false, (4294967295u > (1u | global1.x)) || false, func_2(global0[_wgslsmith_index_u32(~4294967295u, 24u)], global1.xyz & _wgslsmith_clamp_vec3_u32(vec3<u32>(29970u, global1.x, global1.x), vec3<u32>(0u, global1.x, 1u), global1.zxx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(global1.x, 22u)], -741f))).c.a.a.x), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, 0u, global1.x, global1.x) | vec4<u32>(56503u, 1u, 0u, global1.x), firstLeadingBit(vec4<u32>(14191u, 4294967295u, global1.x, 0u))) << (~(~vec4<u32>(global1.x, global1.x, 1u, global1.x)) % vec4<u32>(32u))));
    return Struct_1(select(!vec4<bool>(any(vec3<bool>(arg_1.x, arg_1.x, false)), !arg_1.x, true, !var_1.x), !(!var_3.a), !vec4<bool>(16138u > global1.x, true, var_1.x || arg_1.x, !var_1.x)), ~var_3.b & vec4<u32>(global1.x << (1u % 32u), global1.x >> (firstTrailingBit(var_3.b.x) % 32u), global1.x, firstLeadingBit(22288u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u | _wgslsmith_mod_u32(abs(global1.x), 1u);
    let var_1 = func_1(-1i, select(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), ~1i == _wgslsmith_div_i32(0i, u_input.a.x)), vec3<bool>(any(vec4<bool>(true, true, true, true)), any(vec4<bool>(false, false, true, false)), global2[_wgslsmith_index_u32(82065u, 22u)] <= global2[_wgslsmith_index_u32(~global1.x, 22u)]), vec3<bool>(select(true, -1000f < global2[_wgslsmith_index_u32(38623u, 22u)], false), !select(true, true, true), true)));
    let var_2 = (~(func_2(Struct_2(var_1, var_1.a.zwy), var_1.b.wzy, vec2<f32>(global2[_wgslsmith_index_u32(var_1.b.x, 22u)], global2[_wgslsmith_index_u32(global1.x, 22u)])).a.b | vec4<u32>(1u, 1u, 1u, 1u)) & vec4<u32>(~var_1.b.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.b.x, global1.x, 1u, var_1.b.x), vec4<u32>(38532u, 4294967295u, 14665u, var_1.b.x)), 1u, ~(~1u))) >> (var_1.b % vec4<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1157f * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_2.x, 22u)])));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2[_wgslsmith_index_u32(var_4.b.x, 22u)], global2[_wgslsmith_index_u32(33317u, 22u)], -1165f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(global1.x, 22u)], 2667f, global2[_wgslsmith_index_u32(1u, 22u)]), vec3<f32>(957f, global2[_wgslsmith_index_u32(var_1.b.x, 22u)], 283f))))), vec4<u32>(_wgslsmith_dot_vec4_u32(~(var_1.b >> (var_4.b % vec4<u32>(32u))), var_1.b), func_1(0i, vec3<bool>(var_4.a.x, global2[_wgslsmith_index_u32(var_2.x, 22u)] > 1522f, true)).b.x, var_1.b.x, (~var_1.b.x << (var_4.b.x % 32u)) | ~max(78390u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2391f + -763f))) * -1000f), ~var_2);
}

