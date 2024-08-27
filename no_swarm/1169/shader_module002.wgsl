struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = vec3<bool>(all(vec2<bool>(true, true)) & true, false, all(vec2<bool>(true, !select(false, true, false))));
    var var_1 = select(!select(vec4<bool>(false, true, false, var_0.x && var_0.x), vec4<bool>(true, !var_0.x, true, true), false), select(select(!vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_0.x | false, arg_0.x <= arg_0.x, false, all(vec2<bool>(var_0.x, false))), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x)), vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x))), select(!vec4<bool>(true, true, var_0.x, var_0.x), !(!vec4<bool>(var_0.x, false, true, var_0.x)), vec4<bool>(any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), false | var_0.x, u_input.b.x > 3315i, select(false, true, var_0.x))), vec4<bool>(true, var_0.x, true, _wgslsmith_f_op_f32(trunc(2635f)) > _wgslsmith_f_op_f32(f32(-1f) * -138f))), false);
    global0 = array<Struct_3, 3>();
    var_1 = vec4<bool>(var_1.x, var_1.x, false, var_0.x);
    let var_2 = _wgslsmith_f_op_f32(ceil(-280f));
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec3<i32>) -> vec3<bool> {
    let var_0 = Struct_1(true, vec3<u32>(1u, 1u, 1u), 1u, vec4<u32>(~1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 15682u, 0u), vec3<u32>(1u, 1u, 1u)), countOneBits(abs(4294967295u))), 1u, 11907u), true);
    var var_1 = true & var_0.e;
    var_1 = !(firstLeadingBit(arg_2.x) != (~(i32(-1i) * -1i) | (u_input.a & arg_2.x)));
    var_1 = all(!vec3<bool>(true, !select(arg_1.x, true, arg_0.x), false));
    var_1 = all(select(select(arg_0, select(vec4<bool>(var_0.a, true, false, false), vec4<bool>(false, false, var_0.e, var_0.e), var_0.a), arg_1.x), vec4<bool>(select(arg_0.x, arg_1.x, arg_1.x), any(arg_0.zzw), 1u == var_0.d.x, any(vec2<bool>(false, arg_1.x))), vec4<bool>(arg_0.x, true, var_0.e, !var_0.a))) && all(arg_0.wx);
    return arg_0.xzz;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: i32, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_1(arg_0, ~(((arg_1 >> (vec3<u32>(0u, arg_1.x, 44461u) % vec3<u32>(32u))) | (arg_1 ^ vec3<u32>(arg_1.x, arg_1.x, 29644u))) | arg_1), arg_1.x, countOneBits(vec4<u32>(arg_1.x, ~arg_1.x, 1u, 2392u)), !(((47467u ^ arg_1.x) ^ arg_1.x) <= 65577u));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(firstTrailingBit(arg_1.x), ~23292u), ~(8479u | var_0.d.x)), vec2<u32>(77777u, arg_1.x)) & var_0.c;
    var var_2 = ~_wgslsmith_mult_i32(u_input.a, -72741i);
    let var_3 = 0u;
    let var_4 = func_4(select(select(vec4<bool>(!arg_0, true, all(vec3<bool>(true, var_0.e, true)), true), select(select(vec4<bool>(false, true, var_0.a, true), vec4<bool>(var_0.a, false, false, var_0.a), vec4<bool>(var_0.a, var_0.a, false, false)), vec4<bool>(var_0.e, var_0.e, arg_0, false), func_3(vec2<u32>(6163u, 4294967295u))), vec4<bool>(var_0.a, arg_0, !var_0.a, true)), select(vec4<bool>(all(vec4<bool>(false, false, var_0.e, true)), var_0.e, var_0.a, select(arg_0, true, arg_0)), select(select(vec4<bool>(true, arg_0, true, false), vec4<bool>(false, var_0.a, var_0.e, var_0.e), var_0.a), !vec4<bool>(false, arg_0, false, false), !vec4<bool>(var_0.a, var_0.a, true, arg_0)), true), !arg_0), vec2<bool>(arg_0, ~(~u_input.a) < -1i), _wgslsmith_div_vec3_i32(u_input.b, firstTrailingBit(~vec3<i32>(arg_2, u_input.b.x, arg_2))));
    return Struct_2(Struct_1(func_4(!(!vec4<bool>(false, var_4.x, false, arg_0)), select(var_4.yz, vec2<bool>(var_0.a, var_4.x), var_4.yx), ~firstTrailingBit(u_input.b)).x, _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.x, 1u, 91236u), select(var_0.d.wwz, arg_1, false) << (arg_1 % vec3<u32>(32u))), ~(~var_3 >> (_wgslsmith_mod_u32(0u, 1u) % 32u)), ~var_0.d, (~arg_1.x != (1u | var_3)) || false));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0.a.d;
    global0 = array<Struct_3, 3>();
    let var_1 = Struct_2(Struct_1(any(!(!vec3<bool>(arg_0.a.e, false, arg_0.a.e))), vec3<u32>(112388u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, 0u, 1u), min(0u, var_0.x)), var_0.x), ~var_0.x, var_0, arg_0.a.a));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -772f)), true)) * _wgslsmith_div_f32(859f, -980f))));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1146f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-570f - -525f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -445f)))));
    return Struct_1(arg_0.a.e, var_0.xxy, 16632u, var_1.a.d, !var_1.a.e);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(func_5(func_2(true, vec3<u32>(arg_1.x ^ 75148u, ~arg_1.x, 27420u), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(447f, arg_0.x) + 708f))));
    var var_1 = _wgslsmith_mod_i32(36068i, ~u_input.a);
    let var_2 = abs(_wgslsmith_mod_vec3_i32(abs(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(arg_2.x, arg_2.x, u_input.b.x)), arg_2.xwz)), arg_2.xzx << (~vec3<u32>(var_0.a.c, var_0.a.d.x, 55711u) % vec3<u32>(32u))));
    var_1 = arg_2.x;
    let var_3 = ~(abs(u_input.b.x) << (var_0.a.d.x % 32u));
    return func_2((var_0.a.e & func_4(select(vec4<bool>(var_0.a.e, false, true, var_0.a.e), vec4<bool>(true, var_0.a.e, true, var_0.a.e), vec4<bool>(true, var_0.a.a, true, true)), func_4(vec4<bool>(true, false, false, var_0.a.e), vec2<bool>(var_0.a.e, var_0.a.a), u_input.b).yx, abs(u_input.b)).x) & true, func_5(func_2(true, var_0.a.d.zzw & _wgslsmith_mult_vec3_u32(var_0.a.d.yzy, vec3<u32>(4603u, var_0.a.b.x, 46018u)), -reverseBits(-1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + _wgslsmith_f_op_f32(round(arg_3.x))))).d.xxz, -abs(_wgslsmith_dot_vec3_i32(var_2, vec3<i32>(2147483647i, var_3, var_2.x)) << (var_0.a.b.x % 32u)), 1000f).a;
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    let var_0 = (-1i | u_input.b.x) | -_wgslsmith_clamp_i32(-1i, u_input.a, u_input.b.x);
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(min(arg_0.c, _wgslsmith_add_u32(arg_0.c, 6505u)), arg_0.b.x, arg_0.d.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.b.x, arg_0.b.x, arg_0.d.x), vec3<u32>(3219u, 0u, arg_0.b.x)), 37607u, arg_0.c)), arg_0.d);
    var var_2 = !func_4(select(vec4<bool>(true, true, false, arg_1), !(!vec4<bool>(arg_0.e, arg_0.a, arg_1, arg_1)), vec4<bool>(all(vec2<bool>(true, false)), arg_0.e && arg_0.e, func_5(Struct_2(arg_0)).e, true)), select(select(vec2<bool>(true, false), func_4(vec4<bool>(true, arg_1, arg_1, true), vec2<bool>(true, arg_0.e), vec3<i32>(var_0, 0i, u_input.a)).xz, !vec2<bool>(true, arg_0.e)), vec2<bool>(true, arg_1 && arg_1), select(true, all(vec3<bool>(true, true, arg_0.a)), arg_0.e)), -reverseBits(u_input.b));
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * _wgslsmith_div_vec2_f32(vec2<f32>(1347f, -701f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1183f, -1451f) - vec2<f32>(945f, 414f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(681f, -1000f))))));
    return Struct_2(arg_0);
}

fn func_7(arg_0: Struct_3, arg_1: u32) -> u32 {
    let var_0 = 0u;
    global0 = array<Struct_3, 3>();
    let var_1 = vec4<bool>(all(vec3<bool>(!arg_0.d.a.e, any(vec3<bool>(arg_0.d.a.e, true, true)), true)), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(758f, 625f, 1386f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(142f, -547f, 315f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1635f, -1238f, -722f))))), select(arg_0.c.a.d.zwx, arg_0.c.a.d.xzx, vec3<bool>(false, true, true)), _wgslsmith_sub_vec4_i32(arg_0.a, arg_0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1004f, 1001f, 157f)) - vec3<f32>(710f, _wgslsmith_f_op_f32(round(571f)), _wgslsmith_div_f32(1056f, 232f)))).e, 59098u < func_6(func_2(arg_0.d.a.a || arg_0.c.a.a, arg_0.c.a.b, arg_0.a.x, 592f).a, true).a.c, arg_0.c.a.a || true);
    var var_2 = ~min(-1i, _wgslsmith_div_i32(-23400i, u_input.b.x)) << (40392u % 32u);
    return _wgslsmith_mod_u32(~func_6(Struct_1(true, vec3<u32>(arg_0.d.a.b.x, arg_1, 70762u), 42710u, arg_0.d.a.d, true), var_1.x || false).a.d.x | ~(~30005u), 1u ^ arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(func_7(Struct_3(_wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, 0i, u_input.a, 0i), -vec4<i32>(u_input.b.x, 32752i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 2147483647i, -16737i, u_input.a)), ~vec4<u32>(0u, 0u, 11752u, 48041u), func_6(func_1(vec3<f32>(-439f, 171f, 211f), vec3<u32>(0u, 1u, 4294967295u), vec4<i32>(u_input.a, 47554i, -267i, u_input.b.x), vec3<f32>(-1861f, 1992f, 644f)), true), Struct_2(Struct_1(false, vec3<u32>(35452u, 13920u, 89741u), 1u, vec4<u32>(0u, 4294967295u, 0u, 1u), true))), 34450u));
    global0 = array<Struct_3, 3>();
    var var_1 = vec4<u32>(1u, ~1u, func_6(Struct_1(any(vec2<bool>(false, true)), ~vec3<u32>(0u, 21759u, 15183u), ~4294967295u, ~vec4<u32>(1u, 1u, 1u, 1u), select(true, true, true)), !all(vec3<bool>(true, true, true)) & false).a.b.x, 50466u);
    var var_2 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), !vec2<bool>(any(vec2<bool>(false, true)), !any(vec4<bool>(false, false, true, false))), vec2<bool>(!all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), all(select(func_4(vec4<bool>(true, false, false, false), vec2<bool>(false, false), vec3<i32>(u_input.b.x, u_input.a, 1i)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)))));
    let var_3 = global0[_wgslsmith_index_u32(27770u, 3u)];
    let var_4 = func_2(all(select(select(!vec4<bool>(true, false, true, var_3.d.a.a), vec4<bool>(var_3.d.a.a, var_2.x, var_3.d.a.a, false), true), select(vec4<bool>(var_3.c.a.a, var_2.x, var_2.x, var_3.d.a.a), select(vec4<bool>(var_3.c.a.a, var_2.x, true, var_2.x), vec4<bool>(var_2.x, false, var_3.c.a.a, var_3.d.a.e), vec4<bool>(var_3.c.a.e, true, false, false)), var_3.a.x < -40534i), vec4<bool>(true, var_3.a.x > 0i, var_3.b.x > var_1.x, true || var_2.x))), _wgslsmith_sub_vec3_u32(firstLeadingBit(~(~var_3.c.a.b)), vec3<u32>(abs(4294967295u), var_3.d.a.b.x, 130548u) & _wgslsmith_sub_vec3_u32(var_1.wzx, vec3<u32>(1u, 101424u, var_1.x) | vec3<u32>(var_1.x, 0u, var_3.c.a.d.x))), ~(-var_3.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-368f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(870f, -1040f)) + -1326f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(559f * 275f) + _wgslsmith_f_op_f32(f32(-1f) * -896f))))).a;
    let x = u_input.a;
    s_output = StorageBuffer((vec3<u32>(1u, 34375u >> (var_4.c % 32u), ~1u) | ~abs(var_1.xyw)) & vec3<u32>(var_3.c.a.d.x, 1u, var_1.x), 1138f);
}

