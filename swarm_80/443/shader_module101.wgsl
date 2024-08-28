struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec4<f32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), -30548i), vec2<i32>(0i, -19135i), vec2<i32>(-1i, 1i));

var<private> global1: vec2<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32) -> u32 {
    global1 = max(~(-global0[_wgslsmith_index_u32(reverseBits(min(arg_0, 4797u)), 4u)]), global0[_wgslsmith_index_u32(17694u, 4u)]);
    let var_0 = select(reverseBits(vec3<i32>(~u_input.a << (44129u % 32u), ~(-2147483647i), max(firstLeadingBit(-1221i), _wgslsmith_add_i32(0i, u_input.a)))), vec3<i32>(firstLeadingBit(-65966i) | -_wgslsmith_mult_i32(global1.x, -27459i), ~(-u_input.a), -2147483647i), !any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))));
    let var_1 = reverseBits(u_input.c.wwy);
    var var_2 = Struct_3(u_input.c, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 2123f, -1286f)))), 1u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_1)))), !select(vec2<bool>(true, true), vec2<bool>(true, false), false), var_1.x)), vec4<f32>(-685f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-900f))))), _wgslsmith_f_op_f32(990f - _wgslsmith_f_op_f32(arg_1 + arg_1)), arg_1), ~arg_0, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -626f)) + vec3<f32>(-2425f, 909f, arg_1)), countOneBits(~u_input.b), -1000f, select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_div_u32(arg_2, arg_2)))));
    let var_3 = _wgslsmith_div_u32(~_wgslsmith_div_u32(~35223u, ~1u >> (u_input.e % 32u)), 0u);
    return abs(u_input.d);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_div_f32(-1354f, 428f), true)), 127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-561f))))), ~func_3(~_wgslsmith_div_u32(u_input.b, 70686u), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-336f * -1779f)), true || all(vec2<bool>(false, false)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2176f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(-503f * 1000f), all(vec4<bool>(false, false, false, true))))))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), u_input.e);
    global1 = vec2<i32>(u_input.a, 0i);
    var var_1 = Struct_3(~u_input.c, Struct_2(var_0), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c, 1000f, var_0.c, 225f))) + vec4<f32>(-1448f, var_0.c, 136f, var_0.c)) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_0.c), -504f, _wgslsmith_f_op_f32(trunc(1470f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), 275f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.c, var_0.c), var_0.a.x, false & var_0.d.x)), var_0.c))), _wgslsmith_clamp_u32(var_0.e, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0.b, u_input.b)) ^ _wgslsmith_clamp_vec2_u32(u_input.c.ww, u_input.c.wz, vec2<u32>(var_0.e, 32876u)), countOneBits(~u_input.c.wz)), 1u), Struct_2(Struct_1(vec3<f32>(147f, _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), _wgslsmith_f_op_f32(-1378f + var_0.a.x)), 1u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-768f, -353f) * _wgslsmith_f_op_f32(-var_0.c)), select(var_0.d, select(var_0.d, vec2<bool>(true, var_0.d.x), var_0.d), !var_0.d), ~4294967295u >> (abs(u_input.b) % 32u))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(var_1.b.a.a + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), 1068f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-250f * var_1.e.a.c)))), ~(~reverseBits(4294967295u)), _wgslsmith_div_f32(var_1.e.a.a.x, _wgslsmith_f_op_f32(-var_1.c.x)), var_1.b.a.d, _wgslsmith_sub_u32(var_1.b.a.b, u_input.e));
    return global1.x;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = 1f > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1139f - 2817f)))));
    let var_1 = Struct_3(select(~abs(abs(u_input.c)), u_input.c, false), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -794f, 546f))), firstTrailingBit(73401u), _wgslsmith_f_op_f32(-1746f * 1273f), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), 56046u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(max(402f, -402f)), -1323f, -790f, 573f))))), u_input.c.x, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-530f, -360f, 206f) - vec3<f32>(731f, -872f, 289f)))), u_input.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1149f, -846f), -1026f)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), arg_1)));
    let var_2 = var_1.e;
    let var_3 = var_2;
    var var_4 = vec2<bool>(var_2.a.d.x, !(var_2.a.d.x && true));
    return Struct_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(60648u, 0u, reverseBits(1u), u_input.d), ~(~vec4<u32>(arg_1, 1u, arg_1, 4294967295u)), ~(~vec4<u32>(arg_1, u_input.d, u_input.d, u_input.e))) << (~var_1.a % vec4<u32>(32u)), var_3, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(553f, var_2.a.a.x, var_3.a.c, -1000f) - var_1.c))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.a.c, 819f, 1670f, var_3.a.a.x) + var_1.c))))), var_2.a.e, Struct_2(var_2.a));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(~(~(~1u)), (_wgslsmith_div_u32(arg_0.a.b, 4294967295u) >> (u_input.e % 32u)) & (~711u ^ ~arg_0.a.b)), ~u_input.b << (~arg_0.a.e % 32u), firstTrailingBit(_wgslsmith_div_u32(4294967295u | _wgslsmith_mod_u32(u_input.d, 0u), 15225u)), ~arg_2);
    return func_4(1i, 0u, vec4<i32>(_wgslsmith_add_i32(1i, arg_1.x), u_input.a, func_2(), max(countOneBits(firstLeadingBit(-41343i)), select(max(-1i, arg_3.x), max(arg_1.x, global1.x), !arg_0.a.d.x))));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    var var_0 = arg_2;
    var var_1 = var_0.c.x;
    let var_2 = var_0.e.a.c;
    global1 = vec2<i32>(global1.x, -global1.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-238f, _wgslsmith_div_f32(-170f, _wgslsmith_f_op_f32(min(arg_2.b.a.a.x, -1172f))), _wgslsmith_f_op_f32(floor(163f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-673f, _wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(min(arg_3.c.x, arg_2.c.x)))), select(!select(vec3<bool>(false, arg_2.b.a.d.x, arg_3.b.a.d.x), vec3<bool>(false, true, false), vec3<bool>(var_0.b.a.d.x, true, arg_1)), vec3<bool>(true, false, var_0.b.a.d.x), var_0.b.a.d.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(trunc(149f)), _wgslsmith_f_op_f32(-var_0.e.a.a.x), arg_3.e.a.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-813f, arg_0, arg_0) * vec3<f32>(arg_3.c.x, 160f, var_0.c.x)))) + func_4(-23422i, arg_3.e.a.e, vec4<i32>(u_input.a, 82766i, u_input.a, global1.x)).e.a.a)));
    return func_1(Struct_2(Struct_1(vec3<f32>(-285f, var_0.e.a.a.x, -190f), _wgslsmith_dot_vec4_u32(u_input.c, var_0.a), arg_0, func_1(Struct_2(var_0.b.a), global0[_wgslsmith_index_u32(1284u, 4u)], 75148u, vec2<i32>(1i, global1.x)).b.a.d, _wgslsmith_add_u32(var_0.e.a.b, 4294967295u))), vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, 10812i, u_input.a), firstTrailingBit(vec3<i32>(2147483647i, u_input.a, global1.x))), ~firstLeadingBit(global1.x)), ~1u, global0[_wgslsmith_index_u32(var_0.e.a.e, 4u)]).e.a.d.x || true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(true, !func_5(_wgslsmith_div_f32(267f, -878f), true, func_1(Struct_2(Struct_1(vec3<f32>(-1000f, -504f, 306f), u_input.d, -612f, vec2<bool>(true, false), 87653u)), vec2<i32>(-14007i, -1i), u_input.e, global0[_wgslsmith_index_u32(0u, 4u)]), Struct_3(vec4<u32>(4294967295u, u_input.b, u_input.e, u_input.e), Struct_2(Struct_1(vec3<f32>(1115f, -1000f, 359f), u_input.e, 120f, vec2<bool>(false, false), 108361u)), vec4<f32>(631f, -190f, -1042f, 184f), 0u, Struct_2(Struct_1(vec3<f32>(1000f, -1293f, -770f), 19993u, 414f, vec2<bool>(true, true), 29358u)))));
    var var_1 = vec3<i32>(-u_input.a | -39912i, global1.x, _wgslsmith_clamp_i32(~global1.x, global1.x, -94703i));
    var_0 = select(select(!vec2<bool>(!var_0.x, all(vec4<bool>(var_0.x, true, var_0.x, false))), func_1(func_4(firstLeadingBit(u_input.a), ~4294967295u, vec4<i32>(32399i, u_input.a, -4504i, global1.x) & vec4<i32>(1i, var_1.x, 12027i, -19340i)).b, firstTrailingBit(vec2<i32>(var_1.x, -60313i)), _wgslsmith_sub_u32(1u, ~u_input.d), global0[_wgslsmith_index_u32(~1u, 4u)]).e.a.d, vec2<bool>(var_0.x || true, true)), func_4(var_1.x & -9296i, _wgslsmith_sub_u32(~func_1(Struct_2(Struct_1(vec3<f32>(290f, 314f, 826f), 0u, 599f, vec2<bool>(true, var_0.x), u_input.b)), var_1.yz, u_input.d, vec2<i32>(global1.x, global1.x)).e.a.b, 1u ^ ~u_input.e), ~(~(~vec4<i32>(u_input.a, -38768i, u_input.a, var_1.x)))).e.a.d, select(!vec2<bool>(global1.x <= u_input.a, var_0.x), func_1(func_1(func_1(Struct_2(Struct_1(vec3<f32>(348f, 254f, -1000f), u_input.d, -1159f, vec2<bool>(false, true), u_input.b)), vec2<i32>(u_input.a, 0i), 4294967295u, var_1.xx).b, var_1.zx, 13597u, -var_1.xy).e, _wgslsmith_add_vec2_i32(vec2<i32>(1i, global1.x), var_1.xx), ~(~359u), ~(var_1.zy & global0[_wgslsmith_index_u32(0u, 4u)])).e.a.d, select(!func_1(Struct_2(Struct_1(vec3<f32>(-1944f, 1643f, 1000f), 50241u, -235f, vec2<bool>(var_0.x, false), u_input.c.x)), vec2<i32>(-28026i, -1i), u_input.c.x, vec2<i32>(var_1.x, 2147483647i)).b.a.d, !func_1(Struct_2(Struct_1(vec3<f32>(213f, -102f, -539f), u_input.e, 2059f, vec2<bool>(var_0.x, var_0.x), u_input.d)), var_1.yz, 13247u, var_1.yz).b.a.d, vec2<bool>(true, select(false, false, true)))));
    global1 = select(var_1.yz, var_1.xz, !(!var_0.x));
    let var_2 = vec3<bool>(var_0.x, !select(true, var_0.x, true), true);
    var_0 = vec2<bool>(all(select(!select(var_2.yz, vec2<bool>(true, true), true), vec2<bool>(var_0.x, true), var_2.yz)), true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(0i), _wgslsmith_mod_i32(-global1.x, -1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2011f, -388f))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1890f, -854f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-709f, 1896f)), var_2.yz))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-272f, 680f), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -518f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-477f, -203f))))));
}

