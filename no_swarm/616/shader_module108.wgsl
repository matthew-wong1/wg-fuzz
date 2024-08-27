struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(379f, 1000f, 1000f), vec3<f32>(598f, 807f, -1103f), vec3<f32>(-868f, -375f, 1580f), vec3<f32>(1700f, -118f, -1034f), vec3<f32>(778f, 871f, 1000f), vec3<f32>(-857f, -373f, -2049f), vec3<f32>(-1000f, -967f, 653f), vec3<f32>(-1532f, 1399f, 697f), vec3<f32>(-241f, -1595f, -487f), vec3<f32>(869f, 661f, -1264f), vec3<f32>(-211f, -1376f, 1119f), vec3<f32>(895f, 855f, 144f));

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(337f, vec4<i32>(24126i, -89765i, -14311i, 0i), vec4<i32>(25227i, 1i, -12813i, 2147483647i), vec2<i32>(i32(-2147483648), 11985i), vec3<bool>(false, false, true)), Struct_2(561f, vec4<i32>(i32(-2147483648), 6854i, 0i, 1i), vec4<i32>(-1i, 0i, 0i, -1i), vec2<i32>(i32(-2147483648), -18021i), vec3<bool>(true, false, true)), Struct_2(-1346f, vec4<i32>(-48586i, 10030i, 12904i, 0i), vec4<i32>(-51799i, 3537i, 2147483647i, 52005i), vec2<i32>(-54585i, 2147483647i), vec3<bool>(false, true, false)), Struct_2(-1000f, vec4<i32>(5147i, 0i, -7393i, 20204i), vec4<i32>(42196i, -9139i, 28513i, 0i), vec2<i32>(0i, -2917i), vec3<bool>(true, false, false)), Struct_2(-218f, vec4<i32>(-21648i, 23139i, -50063i, 49424i), vec4<i32>(-1i, 10902i, 0i, 1i), vec2<i32>(i32(-2147483648), 0i), vec3<bool>(false, false, true)), Struct_2(-1193f, vec4<i32>(-10015i, -6626i, 35270i, 2147483647i), vec4<i32>(-47749i, 2147483647i, 1i, 0i), vec2<i32>(-1i, i32(-2147483648)), vec3<bool>(false, false, false)), Struct_2(-962f, vec4<i32>(i32(-2147483648), 11105i, -36480i, 1i), vec4<i32>(-15676i, 1i, 0i, 24683i), vec2<i32>(27198i, 28025i), vec3<bool>(true, true, false)), Struct_2(-257f, vec4<i32>(-1i, -12852i, -3694i, i32(-2147483648)), vec4<i32>(20780i, 21590i, -1i, 0i), vec2<i32>(-1i, -35606i), vec3<bool>(true, true, false)), Struct_2(1180f, vec4<i32>(18515i, 47323i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, 1i, 12865i, 3412i), vec2<i32>(37565i, 1i), vec3<bool>(false, true, false)), Struct_2(247f, vec4<i32>(i32(-2147483648), 2147483647i, 22168i, -1i), vec4<i32>(2147483647i, 15966i, 0i, -3171i), vec2<i32>(1i, 0i), vec3<bool>(true, false, true)), Struct_2(-1000f, vec4<i32>(2147483647i, -32973i, 1i, 2147483647i), vec4<i32>(3720i, 2147483647i, 1i, 2147483647i), vec2<i32>(-14983i, 18514i), vec3<bool>(true, true, false)), Struct_2(-538f, vec4<i32>(9666i, 41195i, 1i, -1i), vec4<i32>(2147483647i, 24165i, i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, 10905i), vec3<bool>(false, false, true)));

var<private> global2: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    let var_0 = false && !any(vec4<bool>(true, true, -18320i != u_input.a, true));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(~1u, _wgslsmith_add_u32(~(~1348u), select(4294967295u, 37142u, true)), 1u)), 12u)];
    global0 = array<vec3<f32>, 12>();
    global1 = array<Struct_2, 12>();
    var var_2 = 20156u;
    return u_input.a;
}

fn func_2(arg_0: bool, arg_1: Struct_5) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(-2457f)), select(firstTrailingBit(vec4<i32>(53586i, u_input.a, u_input.a, u_input.a) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), vec4<i32>(0i << (1u % 32u), u_input.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, -62294i), vec3<i32>(u_input.a, u_input.a, -32027i)), select(u_input.a, u_input.a, true)), func_3()), all(!select(vec3<bool>(true, arg_1.b, false), vec3<bool>(true, arg_0, arg_0), false))), vec4<i32>(-2534i, -(u_input.a << (4294967295u % 32u)), abs(i32(-1i) * -2147483647i), 1i) >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(18497i, 1i), select(-1i, u_input.a, arg_0)), i32(-1i) * -364i), countOneBits(-20367i)), !select(!(!vec3<bool>(false, false, arg_0)), select(vec3<bool>(arg_0, true, arg_1.b), vec3<bool>(arg_1.b, arg_1.b, false), vec3<bool>(true, true, arg_0)), vec3<bool>(true, true, true)));
    let var_1 = ~79446u;
    global0 = array<vec3<f32>, 12>();
    global0 = array<vec3<f32>, 12>();
    var var_2 = ~(reverseBits(min(~vec2<u32>(35068u, 9033u), _wgslsmith_clamp_vec2_u32(vec2<u32>(2929u, 41901u), vec2<u32>(28171u, 0u), vec2<u32>(51920u, 22841u)))) | (vec2<u32>(1u, var_1) & select(min(vec2<u32>(var_1, var_1), vec2<u32>(76114u, 43173u)), _wgslsmith_sub_vec2_u32(vec2<u32>(29205u, var_1), vec2<u32>(1u, 1u)), !arg_0)));
    return !(!(0i == var_0.c.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_3(vec2<u32>(4118u, max(1u, 33259u)), reverseBits(_wgslsmith_sub_vec3_u32(max(~vec3<u32>(4294967295u, 1u, 14921u), vec3<u32>(65809u, 21312u, 1u)), max(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 4294967295u, 4294967295u)))), 19171i, arg_1, _wgslsmith_clamp_i32(u_input.a, _wgslsmith_mult_i32(u_input.a, -1i), -abs(i32(-1i) * -2147483647i)));
    let var_1 = arg_1.b.yxw;
    var var_2 = vec2<bool>(all(vec4<bool>(var_0.d.e.x, var_0.a.x != _wgslsmith_mod_u32(var_0.a.x, 26495u), !var_0.d.e.x, false)), !all(select(arg_1.e, arg_0, false)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(abs(var_0.d.a)), vec4<i32>(var_1.x, -2147483647i, firstLeadingBit(_wgslsmith_sub_i32(-13666i, -1i)), select(firstTrailingBit(reverseBits(u_input.a)), 29278i, true)), var_0.d.c, vec2<i32>(abs(firstTrailingBit(firstTrailingBit(var_1.x))), u_input.a), !(!select(arg_0, !vec3<bool>(true, true, var_2.x), true)));
    var var_4 = select(!vec3<bool>(var_2.x, true & select(var_2.x, false, arg_1.e.x), !func_2(var_0.d.e.x, Struct_5(1118f, arg_1.e.x))), vec3<bool>(true, all(!select(vec4<bool>(arg_1.e.x, var_2.x, var_3.e.x, var_0.d.e.x), vec4<bool>(var_0.d.e.x, true, var_0.d.e.x, true), var_0.d.e.x)), true), !var_3.e.x & arg_0.x);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-724f - 473f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a))), true));
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(func_4(vec3<bool>(false, func_2(true, Struct_5(-193f, true)) || true, select(true, -u_input.a <= -25142i, any(vec4<bool>(true, true, true, true)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-657f - -738f), _wgslsmith_f_op_f32(f32(-1f) * -398f)))), ~vec4<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), ~u_input.a, u_input.a, 18126i), ~_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, -18382i, -1i), vec4<i32>(-2166i, 2147483647i, u_input.a, 1i)), vec4<i32>(-26241i, 19645i, -10241i, u_input.a)), ~vec2<i32>(1i, -60472i) ^ select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(2147483647i, 2147483647i)), vec2<i32>(u_input.a, 337i), true), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)))));
    let var_1 = !vec4<bool>((var_0 > -762f) | true, any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), (22975i >= u_input.a) || select(func_2(false, Struct_5(var_0, true)), true, true), false);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_1.wzy, Struct_2(var_0, vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), vec2<i32>(2147483647i, u_input.a), vec3<bool>(var_1.x, true, true))))) * 445f) + var_0);
    let var_3 = vec2<u32>(min(1u, reverseBits(1u)), 4294967295u);
    global1 = array<Struct_2, 12>();
    return Struct_4(3939i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1068f))))));
    var var_2 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(~59235u, abs(1u))), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(29685u, 48769u), vec2<u32>(10079u, 4294967295u)), abs(17949u)), select(~vec2<u32>(4294967295u, 4294967295u), min(vec2<u32>(0u, 35226u), vec2<u32>(0u, 4294967295u)), vec2<bool>(true, true))) ^ vec2<u32>(34648u, ~(~30111u)));
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(~19988u << (_wgslsmith_clamp_u32(0u, 72673u, 47239u) % 32u), 0u), 27272u), ~countOneBits(37678u));
    global2 = _wgslsmith_f_op_f32(var_1 * 1473f);
    var_0 = Struct_4(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_i32(~(-vec4<i32>(var_0.a, var_0.a, var_0.a, var_0.a)), vec4<i32>(~var_0.a, i32(-1i) * -5154i, 1i, firstLeadingBit(u_input.a))));
}

