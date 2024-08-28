struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(-1170f, 60142u, false, vec4<bool>(false, true, false, false)), true), Struct_2(Struct_1(-293f, 0u, true, vec4<bool>(false, false, false, true)), true), Struct_2(Struct_1(-352f, 0u, false, vec4<bool>(false, true, false, true)), true), Struct_2(Struct_1(-1237f, 0u, true, vec4<bool>(true, false, false, true)), false), Struct_2(Struct_1(-1272f, 15207u, false, vec4<bool>(true, true, true, false)), false), Struct_2(Struct_1(-1614f, 1u, true, vec4<bool>(false, false, false, false)), true), Struct_2(Struct_1(-544f, 71246u, true, vec4<bool>(true, false, true, true)), true), Struct_2(Struct_1(-1498f, 35844u, true, vec4<bool>(false, false, false, true)), false), Struct_2(Struct_1(1000f, 4294967295u, true, vec4<bool>(true, true, false, true)), false), Struct_2(Struct_1(-1892f, 35590u, true, vec4<bool>(true, true, true, true)), true), Struct_2(Struct_1(108f, 66585u, false, vec4<bool>(true, false, true, true)), false), Struct_2(Struct_1(1341f, 1u, true, vec4<bool>(false, true, false, false)), true), Struct_2(Struct_1(954f, 53606u, true, vec4<bool>(false, true, true, true)), true), Struct_2(Struct_1(-575f, 93345u, false, vec4<bool>(true, true, false, false)), false));

var<private> global1: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(559f, 123f), vec2<f32>(783f, -821f), vec2<f32>(1091f, -412f), vec2<f32>(899f, -973f), vec2<f32>(-2465f, 567f), vec2<f32>(538f, 732f), vec2<f32>(1528f, -765f), vec2<f32>(-1335f, -1154f), vec2<f32>(179f, -1000f), vec2<f32>(795f, -967f), vec2<f32>(-1000f, -431f), vec2<f32>(-1000f, 472f), vec2<f32>(-1456f, -1090f), vec2<f32>(-497f, 355f), vec2<f32>(-1698f, -151f), vec2<f32>(553f, -498f), vec2<f32>(-807f, -764f), vec2<f32>(793f, -549f), vec2<f32>(1617f, -840f), vec2<f32>(129f, -1034f), vec2<f32>(-768f, -733f), vec2<f32>(475f, -2528f), vec2<f32>(669f, 1967f), vec2<f32>(849f, -1563f), vec2<f32>(831f, -2366f), vec2<f32>(679f, 1261f), vec2<f32>(-494f, 1337f), vec2<f32>(535f, -954f), vec2<f32>(-1150f, 1947f));

var<private> global2: u32;

var<private> global3: Struct_3 = Struct_3(Struct_1(331f, 0u, true, vec4<bool>(false, true, true, false)), Struct_2(Struct_1(349f, 4294967295u, false, vec4<bool>(false, true, true, false)), true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<i32> {
    var var_0 = global3.a.b;
    let var_1 = _wgslsmith_f_op_f32(global3.a.a - _wgslsmith_f_op_f32(ceil(global3.a.a)));
    var var_2 = 4294967295u;
    global3 = Struct_3(global3.b.a, Struct_2(global3.a, true));
    let var_3 = global3.a.d.ww;
    return vec4<i32>(-(~(-1i)), firstTrailingBit(1i), ~(~countOneBits(2147483647i)) >> (u_input.a % 32u), _wgslsmith_div_i32(~(_wgslsmith_mod_i32(-2147483647i, -33704i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 17750u), vec2<u32>(14323u, 4294967295u)) % 32u)), min(~0i, -1i)));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec3<bool>, arg_3: bool) -> vec4<i32> {
    global1 = array<vec2<f32>, 29>();
    global3 = Struct_3(Struct_1(-355f, 12224u, true, !select(global3.b.a.d, global3.b.a.d, true)), Struct_2(global3.a, false));
    var var_0 = Struct_1(-1184f, abs(20393u), false, global3.b.a.d);
    let var_1 = ~(((vec4<i32>(arg_0, 4649i, arg_0, arg_0) ^ vec4<i32>(1i, -38602i, arg_0, arg_0)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(21148u, var_0.b, 36830u, global3.a.b), vec4<u32>(global3.a.b, global3.a.b, global3.b.a.b, 4294967295u)) % vec4<u32>(32u))) | abs(func_3())) ^ min(-_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, arg_0, -345i, -19237i), vec4<i32>(-2147483647i, arg_0, arg_0, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0, arg_0, 1i, -7992i), vec4<i32>(arg_0, 1i, -23519i, arg_0)), vec4<i32>(-2147483647i, arg_0, arg_0, arg_0) << (vec4<u32>(var_0.b, 14139u, 0u, 1u) % vec4<u32>(32u))), firstTrailingBit(_wgslsmith_sub_vec4_i32(~vec4<i32>(arg_0, 0i, arg_0, arg_0), vec4<i32>(arg_0, 12481i, arg_0, -65477i) ^ vec4<i32>(arg_0, -34027i, -18735i, -4637i))));
    global3 = Struct_3(global3.b.a, Struct_2(Struct_1(1f, countOneBits(24641u), true, !vec4<bool>(var_0.d.x, arg_2.x, false, true)), _wgslsmith_add_i32(arg_0 | arg_0, 21309i) == ~(-1i)));
    return vec4<i32>(~(~(-(~1i))), abs(i32(-1i) * -1i), 20938i, 2147483647i);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: u32, arg_3: vec4<i32>) -> u32 {
    var var_0 = -1333f <= arg_1.b.a.a;
    let var_1 = -_wgslsmith_dot_vec3_i32(countOneBits(func_2(-23818i, 53667u, vec3<bool>(global3.b.b, false, arg_1.b.b), global3.a.d.x).yzw), _wgslsmith_sub_vec3_i32(arg_3.yzx, arg_3.zzy) | ~vec3<i32>(2147483647i, -14318i, arg_3.x)) ^ arg_3.x;
    let var_2 = global0[_wgslsmith_index_u32(22241u, 14u)];
    var var_3 = -(~func_2(~2147483647i, ~firstTrailingBit(0u), vec3<bool>(arg_1.b.a.a > global3.b.a.a, arg_0.x, false), !arg_1.b.a.d.x).wxy);
    var_3 = vec3<i32>(~(func_3().x | -_wgslsmith_dot_vec2_i32(vec2<i32>(-7859i, var_3.x), var_3.zz)), -_wgslsmith_dot_vec3_i32(abs(~arg_3.xzz), select(-vec3<i32>(arg_3.x, var_1, -37549i), arg_3.wyx, true)), _wgslsmith_dot_vec2_i32(min(select(_wgslsmith_add_vec2_i32(arg_3.zy, var_3.yz), var_3.zz, !global3.b.a.d.zz), abs(arg_3.yx)), arg_3.yw));
    return ~4294967295u;
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_1 {
    global2 = _wgslsmith_div_u32(58519u, 51713u & (73430u | _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, 28781u), 4294967295u)));
    global0 = array<Struct_2, 14>();
    let var_0 = vec2<u32>(u_input.a, 20899u);
    let var_1 = ~u_input.a;
    var var_2 = true;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a) + _wgslsmith_f_op_f32(round(-332f)))))), _wgslsmith_div_u32(global3.b.a.b, ~4294967295u), true, arg_1.a.d);
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    global1 = array<vec2<f32>, 29>();
    global1 = array<vec2<f32>, 29>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.a.a + arg_2.a) - _wgslsmith_f_op_f32(f32(-1f) * -183f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2081f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-786f, arg_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -593f)))), -1645f);
    var var_1 = global3.a;
    let var_2 = arg_2;
    return global3.b;
}

fn func_1() -> f32 {
    var var_0 = func_6(Struct_3(Struct_1(_wgslsmith_f_op_f32(global3.a.a + _wgslsmith_f_op_f32(834f + 505f)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global3.b.a.b) & vec2<u32>(global3.b.a.b, 9124u), vec2<u32>(35037u, 0u)), any(global3.a.d.wx), global3.b.a.d), global0[_wgslsmith_index_u32(u_input.a, 14u)]), false, func_5(func_4(global3.a.d.yxy, Struct_3(global3.a, global3.b), abs(u_input.a), -func_2(34392i, u_input.a, global3.b.a.d.xww, true)), Struct_3(global3.a, global0[_wgslsmith_index_u32(u_input.a, 14u)]), -vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 27903i), vec2<i32>(-30070i, -23475i)))));
    var var_1 = func_5(select(reverseBits(~(global3.a.b | global3.b.a.b)), ~_wgslsmith_sub_u32(global3.b.a.b, max(0u, global3.b.a.b)), var_0.a.d.x & all(vec3<bool>(global3.b.b, var_0.a.c, var_0.a.c))), Struct_3(Struct_1(global3.b.a.a, 36044u, true, func_5(var_0.a.b, Struct_3(global3.b.a, Struct_2(global3.a, global3.a.c)), select(vec2<i32>(-1i, -1i), vec2<i32>(0i, -2147483647i), false)).d), global0[_wgslsmith_index_u32(abs(~0u ^ u_input.a), 14u)]), vec2<i32>(1i, 1i));
    var var_2 = global3.b;
    let var_3 = _wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_1.b, 0u), vec3<u32>(21805u, global3.a.b, var_2.a.b)) & (vec3<u32>(1u, 74383u, 4294967295u) ^ vec3<u32>(15353u, u_input.a, var_1.b)), vec3<u32>(14399u, 0u, max(51832u, 0u))), select(~(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, var_2.a.b, 16241u))), vec3<u32>(select(3063u, 16588u, false), ~4294967295u, 0u) ^ abs(firstTrailingBit(vec3<u32>(global3.b.a.b, 4294967295u, 43960u))), global3.a.d.x));
    var var_4 = select(select(global3.b.a.d, !func_6(Struct_3(global3.a, global3.b), var_0.b, global3.a).a.d, func_6(Struct_3(func_5(global3.a.b, Struct_3(global3.a, Struct_2(Struct_1(509f, 1u, false, vec4<bool>(false, global3.a.d.x, var_1.d.x, false)), var_0.b)), vec2<i32>(1i, 34800i)), func_6(Struct_3(Struct_1(-442f, 1u, true, vec4<bool>(global3.b.a.d.x, true, true, true)), global0[_wgslsmith_index_u32(var_2.a.b, 14u)]), global3.a.c, Struct_1(var_2.a.a, 0u, false, var_0.a.d))), all(select(vec2<bool>(true, false), var_2.a.d.xy, var_2.a.d.wx)), global3.a).a.d.x), select(!var_2.a.d, !var_0.a.d, select(select(func_6(Struct_3(Struct_1(1500f, 85095u, var_2.a.c, vec4<bool>(var_0.a.c, true, false, var_2.b)), Struct_2(var_0.a, var_2.a.c)), true, var_2.a).a.d, !global3.b.a.d, vec4<bool>(global3.a.c, var_0.b, false, global3.a.d.x)), !(!var_1.d), func_5(var_2.a.b, Struct_3(var_2.a, Struct_2(var_0.a, var_0.a.d.x)), max(vec2<i32>(4992i, 2769i), vec2<i32>(-1i, 57010i))).d)), all(func_5(~(~1u), Struct_3(var_0.a, global0[_wgslsmith_index_u32(func_4(vec3<bool>(true, true, true), Struct_3(var_2.a, global3.b), var_3.x, vec4<i32>(2147483647i, 0i, 1i, 1i)), 14u)]), func_3().ww).d.wz));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-297f))))) * var_2.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-2347f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-270f, 593f), _wgslsmith_f_op_f32(-global3.b.a.a), global3.b.a.a > global3.b.a.a)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.a, global3.b.a.a, global3.a.a)), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, global3.b.a.a, global3.a.a), vec3<f32>(374f, -1239f, global3.a.a))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.a.a, global3.a.a, global3.a.a)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.a.a, 943f, 217f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.a.a, global3.a.a, -793f)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.a.a), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(sign(-1121f))) + vec3<f32>(_wgslsmith_div_f32(global3.a.a, 1480f), global3.b.a.a, _wgslsmith_f_op_f32(global3.a.a + global3.a.a))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1654f, -1047f, 1932f), vec3<f32>(-1000f, global3.a.a, -690f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1000f, 1757f) * vec3<f32>(var_1.x, var_1.x, -568f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.a, 659f, global3.b.a.a)))))));
    var_0 = _wgslsmith_f_op_f32(ceil(var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-329f + var_1.x)))))), var_2.x, -1695f);
}

