struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(-1i, 35611i, 1i, -1i, 0i, 1i, 7969i, -1i, 7200i, 2147483647i, -1i, -14165i, 0i, 2147483647i, 24219i, -32637i, i32(-2147483648), -33835i, i32(-2147483648), 2147483647i, 0i, 7705i, i32(-2147483648), -4516i, -1i);

var<private> global1: bool = true;

var<private> global2: u32 = 1862u;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    global1 = !(false && any(vec2<bool>(true, true)));
    global2 = 0u;
    var var_0 = vec3<bool>(~(~u_input.a.x) <= 38697u, !all(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), false);
    var var_1 = !select(vec4<bool>(var_0.x, u_input.a.x < countOneBits(u_input.a.x), var_0.x, true), !select(select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(true, true, true, var_0.x)), vec4<bool>(false, false, var_0.x, var_0.x), 48137i > global0[_wgslsmith_index_u32(4294967295u, 25u)]), any(vec4<bool>(any(vec3<bool>(var_0.x, true, false)), any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), var_0.x, true)));
    let var_2 = Struct_2(Struct_1(~65957u, var_1.x, any(select(var_1.yxw, vec3<bool>(false, true, var_0.x), var_1.zwy)), u_input.c.ywy), any(vec3<bool>(var_1.x, !var_0.x, !(u_input.a.x < 0u))), Struct_1(firstLeadingBit(1u), all(vec3<bool>(true, select(true, true, false), !var_1.x)), select(!all(vec4<bool>(var_1.x, false, var_1.x, var_1.x)), true, var_1.x), u_input.c.zyy), !select(vec3<bool>(true, var_0.x || true, false), select(select(var_1.yyx, vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, false, false)), select(var_1.xwx, var_1.xzz, var_1.x), true), u_input.a.x == 73626u));
    return 22352u ^ _wgslsmith_clamp_u32(var_2.c.a, ~_wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(0u, var_2.c.a, 42064u, u_input.a.x)), ~_wgslsmith_mult_u32(0u, ~1u));
}

fn func_2(arg_0: bool) -> vec2<f32> {
    let var_0 = Struct_1(func_3(), true && arg_0, arg_0, countOneBits(_wgslsmith_mod_vec3_i32(u_input.b, reverseBits(vec3<i32>(-6111i, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(47258u, 25u)])))) << (select(~_wgslsmith_sub_vec3_u32(u_input.a.yzw, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), vec3<u32>(2907u, u_input.a.x, u_input.a.x | u_input.a.x), select(vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(true, arg_0, arg_0), !vec3<bool>(arg_0, false, false))) % vec3<u32>(32u)));
    global1 = true;
    let var_1 = max(~func_3(), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(98099u, var_0.a, u_input.a.x, var_0.a), reverseBits(vec4<u32>(10850u, u_input.a.x, 1u, u_input.a.x))), vec4<u32>(reverseBits(u_input.a.x), u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a.yyy, vec3<u32>(23086u, var_0.a, var_0.a)), min(28097u, var_0.a)))) & ~30487u;
    var var_2 = 1332f;
    let var_3 = select(!vec2<bool>(var_0.c, true), vec2<bool>(true, !arg_0), arg_0);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1116f, 1247f) - vec2<f32>(420f, -481f))), vec2<f32>(_wgslsmith_f_op_f32(1344f - 502f), _wgslsmith_f_op_f32(429f + 885f)), all(var_3)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2686f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(766f + -2190f))) * vec2<f32>(1f, 1f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: u32, arg_3: vec2<i32>) -> Struct_1 {
    global2 = ~4294967295u;
    let var_0 = _wgslsmith_mult_vec3_u32(u_input.a.yzy, arg_1.wxx);
    global1 = any(vec2<bool>(true, true));
    var var_1 = !(!all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)));
    let var_2 = Struct_1(u_input.a.x, true, true, -vec3<i32>(arg_3.x ^ _wgslsmith_sub_i32(-3536i, arg_3.x), global0[_wgslsmith_index_u32(4294967295u, 25u)], u_input.b.x | _wgslsmith_mod_i32(36047i, u_input.c.x)));
    return var_2;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_2(true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1180f, 1756f), vec2<f32>(578f, -1261f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-969f, 245f) * vec2<f32>(551f, -1466f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 900f))))), u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, firstLeadingBit(firstLeadingBit(vec4<u32>(u_input.a.x, arg_0.a.c.a, 1u, 0u)))), vec4<u32>(_wgslsmith_mod_u32(3162u, 71447u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0.b.c.a, arg_1.x), u_input.a.x), _wgslsmith_clamp_u32(abs(u_input.a.x), arg_0.a.a.a, arg_0.b.a.a ^ 0u), ~func_3())), _wgslsmith_mod_vec2_i32(arg_0.d.a.d.yy, arg_0.c.zy));
    var var_1 = true;
    var var_2 = arg_0;
    global0 = array<i32, 25>();
    var_2 = arg_0;
    return Struct_2(var_2.d.a, var_2.d.b, arg_0.a.c, select(arg_0.a.d, select(vec3<bool>(all(vec2<bool>(false, arg_0.b.d.x)), true, true), vec3<bool>(0i == var_2.b.a.d.x, false, arg_0.b.a.b), var_2.a.d), select(!select(vec3<bool>(var_2.a.b, false, true), var_2.b.d, true), select(arg_0.d.d, vec3<bool>(arg_0.a.c.c, var_0.b, arg_0.b.b), var_0.d.x >= u_input.c.x), true)));
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_3) -> bool {
    let var_0 = u_input.a.x;
    var var_1 = arg_1.a.a.d;
    let var_2 = _wgslsmith_div_f32(-141f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1130f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-481f * 324f)))) + -2125f));
    var var_3 = Struct_3(arg_1.d, arg_3.a, u_input.c, Struct_2(Struct_1(~(1u >> (0u % 32u)), !any(arg_1.a.d.zy), select(false, any(vec3<bool>(true, true, arg_3.a.d.x)), func_4(vec2<f32>(var_2, var_2), u_input.a, 53921u, u_input.b.yz).b), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 17900i, arg_0), firstTrailingBit(arg_1.a.c.d), arg_1.c.xyx)), arg_1.b.b, Struct_1(max(var_0, 4294967295u), arg_1.b.c.c, arg_1.d.c.b, -(vec3<i32>(-32556i, arg_0, arg_3.a.c.d.x) ^ vec3<i32>(47399i, arg_1.b.a.d.x, u_input.b.x))), func_1(Struct_3(Struct_2(Struct_1(u_input.a.x, true, true, arg_3.a.a.d), false, Struct_1(var_0, arg_1.b.b, false, arg_1.d.a.d), arg_3.d.d), arg_3.d, arg_3.c & arg_1.c, func_1(arg_3, u_input.a.xxz)), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.yxw, u_input.a.wxw), vec3<u32>(77006u, 1u, var_0))).d));
    var var_4 = vec4<bool>(all(select(select(!vec4<bool>(false, false, arg_1.d.c.b, arg_1.d.d.x), vec4<bool>(arg_1.d.c.b, var_3.a.a.b, arg_1.b.c.c, var_3.a.a.c), !vec4<bool>(var_3.a.a.b, arg_1.a.c.b, true, false)), !select(vec4<bool>(arg_3.b.c.b, arg_3.b.c.c, var_3.b.d.x, var_3.b.a.b), vec4<bool>(var_3.b.a.b, true, arg_3.b.b, false), arg_1.b.d.x), select(vec4<bool>(arg_3.d.d.x, arg_3.d.d.x, true, true), select(vec4<bool>(var_3.d.b, true, arg_1.d.b, false), vec4<bool>(arg_3.b.c.b, true, arg_3.a.b, arg_1.d.d.x), arg_3.b.a.c), !vec4<bool>(var_3.d.b, false, var_3.b.a.c, true)))), any(!(!vec2<bool>(var_3.b.a.b, false))), all(vec2<bool>(any(arg_1.a.d.yx), arg_3.a.c.b)), any(!(!vec3<bool>(var_3.d.a.b, arg_1.a.b, false))));
    return all(vec4<bool>(false, !all(vec4<bool>(false, true, true, false)), false, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a.x >> (u_input.a.x % 32u), !func_5(_wgslsmith_clamp_i32(reverseBits(global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), u_input.b.yy)), Struct_3(func_1(Struct_3(Struct_2(Struct_1(1u, false, false, u_input.c.xyz), true, Struct_1(u_input.a.x, true, true, u_input.b), vec3<bool>(true, false, true)), Struct_2(Struct_1(u_input.a.x, true, false, vec3<i32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], -23956i)), true, Struct_1(0u, true, false, vec3<i32>(u_input.b.x, -2147483647i, -27933i)), vec3<bool>(false, false, false)), vec4<i32>(u_input.b.x, u_input.c.x, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], -1i), Struct_2(Struct_1(2972u, false, false, u_input.c.wzw), false, Struct_1(u_input.a.x, false, false, vec3<i32>(-71970i, u_input.b.x, 2147483647i)), vec3<bool>(true, false, true))), u_input.a.zxw), Struct_2(Struct_1(0u, false, true, vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(0u, 25u)])), true, Struct_1(1u, true, false, vec3<i32>(-1i, u_input.b.x, u_input.b.x)), vec3<bool>(true, true, false)), u_input.c, Struct_2(Struct_1(0u, false, true, vec3<i32>(u_input.c.x, -1i, 0i)), false, Struct_1(u_input.a.x, false, true, vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 2147483647i, 48666i)), vec3<bool>(true, false, true))), (u_input.b.yy >> (u_input.a.zy % vec2<u32>(32u))) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), Struct_3(Struct_2(Struct_1(3989u, false, true, vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i)), true, Struct_1(78629u, true, false, u_input.b), vec3<bool>(true, false, true)), func_1(Struct_3(Struct_2(Struct_1(35304u, false, false, vec3<i32>(global0[_wgslsmith_index_u32(11466u, 25u)], u_input.c.x, global0[_wgslsmith_index_u32(u_input.a.x, 25u)])), true, Struct_1(1u, true, false, u_input.b), vec3<bool>(true, true, true)), Struct_2(Struct_1(12076u, true, true, u_input.c.xyy), true, Struct_1(60945u, false, true, u_input.b), vec3<bool>(true, false, true)), u_input.c, Struct_2(Struct_1(u_input.a.x, false, false, u_input.b), true, Struct_1(0u, false, true, u_input.c.yyx), vec3<bool>(true, false, false))), u_input.a.yxz), u_input.c, Struct_2(Struct_1(4294967295u, true, false, u_input.c.www), true, Struct_1(13051u, true, false, u_input.c.xyz), vec3<bool>(false, false, true)))), !(!select(all(vec3<bool>(false, true, true)), true, true)), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 0i), global0[_wgslsmith_index_u32(~29160u, 25u)]), ~(i32(-1i) * -2147483647i), _wgslsmith_add_i32(-u_input.c.x, -2147483647i)), vec3<i32>(global0[_wgslsmith_index_u32(32300u, 25u)], firstLeadingBit(global0[_wgslsmith_index_u32(1707u, 25u)]) | global0[_wgslsmith_index_u32(abs(u_input.a.x), 25u)], _wgslsmith_sub_i32(-1i | u_input.b.x, func_4(vec2<f32>(607f, 821f), u_input.a, u_input.a.x, u_input.b.yx).d.x))));
    global2 = var_0.a;
    global2 = abs(~(~reverseBits(~14989u)));
    let var_1 = func_1(Struct_3(func_1(Struct_3(Struct_2(Struct_1(u_input.a.x, false, true, u_input.c.yzx), var_0.c, var_0, vec3<bool>(var_0.b, true, true)), func_1(Struct_3(Struct_2(Struct_1(1u, var_0.c, true, var_0.d), false, var_0, vec3<bool>(var_0.c, var_0.c, true)), Struct_2(var_0, false, Struct_1(u_input.a.x, false, true, u_input.b), vec3<bool>(true, var_0.b, true)), u_input.c, Struct_2(var_0, var_0.c, var_0, vec3<bool>(false, false, true))), vec3<u32>(4294967295u, var_0.a, u_input.a.x)), u_input.c, func_1(Struct_3(Struct_2(var_0, false, var_0, vec3<bool>(true, var_0.c, true)), Struct_2(Struct_1(59675u, var_0.c, false, vec3<i32>(u_input.c.x, 0i, global0[_wgslsmith_index_u32(4294967295u, 25u)])), var_0.b, Struct_1(4294967295u, false, false, var_0.d), vec3<bool>(var_0.b, true, false)), vec4<i32>(-17668i, -50532i, -15584i, global0[_wgslsmith_index_u32(49783u, 25u)]), Struct_2(var_0, true, var_0, vec3<bool>(var_0.b, false, var_0.c))), u_input.a.xxy)), _wgslsmith_mult_vec3_u32(u_input.a.yzy, u_input.a.zxy)), Struct_2(func_1(Struct_3(Struct_2(var_0, false, var_0, vec3<bool>(var_0.c, true, true)), Struct_2(var_0, false, var_0, vec3<bool>(false, var_0.c, var_0.b)), u_input.c, Struct_2(var_0, false, Struct_1(78988u, false, var_0.c, vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], -1i, var_0.d.x)), vec3<bool>(true, var_0.c, false))), ~u_input.a.xwz).a, true, func_1(Struct_3(Struct_2(Struct_1(u_input.a.x, var_0.c, var_0.b, var_0.d), false, Struct_1(var_0.a, var_0.b, var_0.b, vec3<i32>(var_0.d.x, u_input.c.x, 51571i)), vec3<bool>(true, true, false)), Struct_2(Struct_1(var_0.a, var_0.c, var_0.c, vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], 24966i, global0[_wgslsmith_index_u32(u_input.a.x, 25u)])), true, var_0, vec3<bool>(var_0.c, true, var_0.b)), vec4<i32>(-32730i, var_0.d.x, 11894i, 21081i), Struct_2(var_0, true, Struct_1(7808u, var_0.b, false, vec3<i32>(global0[_wgslsmith_index_u32(0u, 25u)], var_0.d.x, u_input.c.x)), vec3<bool>(var_0.c, var_0.b, false))), _wgslsmith_sub_vec3_u32(vec3<u32>(888u, 3503u, u_input.a.x), vec3<u32>(1u, u_input.a.x, var_0.a))).c, vec3<bool>(true, var_0.c | false, true)), vec4<i32>(~(var_0.d.x ^ global0[_wgslsmith_index_u32(0u, 25u)]), -(~2147483647i), -global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 25u)], _wgslsmith_mod_i32(~global0[_wgslsmith_index_u32(0u, 25u)], abs(u_input.b.x))), func_1(Struct_3(Struct_2(Struct_1(1u, true, var_0.c, var_0.d), var_0.b, var_0, vec3<bool>(var_0.b, true, var_0.b)), Struct_2(var_0, var_0.b, Struct_1(u_input.a.x, var_0.b, var_0.b, vec3<i32>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], -24883i)), vec3<bool>(true, true, true)), countOneBits(vec4<i32>(var_0.d.x, 0i, u_input.c.x, var_0.d.x)), func_1(Struct_3(Struct_2(Struct_1(var_0.a, true, var_0.c, vec3<i32>(33263i, -2147483647i, -35681i)), false, Struct_1(23559u, var_0.c, false, u_input.c.yxw), vec3<bool>(var_0.c, var_0.c, var_0.b)), Struct_2(Struct_1(var_0.a, false, true, vec3<i32>(22298i, u_input.c.x, -74347i)), var_0.c, var_0, vec3<bool>(var_0.b, false, false)), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_0.a, 25u)], u_input.c.x, 602i), Struct_2(Struct_1(4294967295u, var_0.c, true, u_input.c.xxx), false, var_0, vec3<bool>(var_0.b, true, true))), u_input.a.wwx)), ~vec3<u32>(var_0.a, 36515u, 12406u) ^ u_input.a.yzx)), _wgslsmith_mod_vec3_u32(reverseBits(countOneBits(vec3<u32>(var_0.a, u_input.a.x, 96875u))), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a.xxz, ~u_input.a.zzy), u_input.a.wyy)));
    global1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-(vec2<i32>(select(u_input.c.x, var_0.d.x, var_1.c.c), var_0.d.x) >> (u_input.a.yz % vec2<u32>(32u))), ~(~4294967295u | var_1.c.a) ^ var_1.c.a, ~select(vec2<i32>(10429i, -15436i), var_0.d.xy, !vec2<bool>(false, var_0.b)) ^ (_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c.zx, var_0.d.zx), ~var_0.d.zy) ^ var_1.a.d.xy));
}

