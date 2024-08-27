struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3>;

var<private> global1: f32 = -1050f;

var<private> global2: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<u32>(16656u, 4294967295u, 6873u, 4294967295u), vec4<u32>(7733u, 0u, 60120u, 0u), vec4<u32>(0u, 0u, 0u, 33266u), vec4<u32>(1u, 4294967295u, 5501u, 28647u), vec4<u32>(34053u, 4294967295u, 92933u, 2547u), vec4<u32>(0u, 36463u, 0u, 0u), vec4<u32>(72470u, 4294967295u, 45960u, 40770u), vec4<u32>(0u, 22149u, 4294967295u, 7076u), vec4<u32>(3699u, 72139u, 4294967295u, 6489u), vec4<u32>(35044u, 9381u, 34106u, 0u), vec4<u32>(1u, 69357u, 9725u, 1u), vec4<u32>(58185u, 7654u, 0u, 26415u), vec4<u32>(11832u, 4658u, 4294967295u, 1u), vec4<u32>(4294967295u, 50653u, 0u, 12355u), vec4<u32>(1u, 34125u, 39462u, 4294967295u), vec4<u32>(91747u, 10226u, 1u, 0u), vec4<u32>(4294967295u, 1u, 701u, 0u), vec4<u32>(50555u, 87270u, 19424u, 1u), vec4<u32>(23422u, 4294967295u, 17951u, 40258u), vec4<u32>(5405u, 35032u, 21327u, 4294967295u), vec4<u32>(57901u, 62532u, 0u, 10984u), vec4<u32>(9159u, 12754u, 43914u, 4294967295u), vec4<u32>(4294967295u, 0u, 7661u, 10332u), vec4<u32>(1u, 4858u, 0u, 19781u));

var<private> global3: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_3(-437f, !select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(all(vec3<bool>(false, false, false)), false, false), false), _wgslsmith_sub_u32(1u, select(select(1u, 13772u, true), _wgslsmith_add_u32(~4896u, 1u), false)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), all(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), !any(vec3<bool>(true, true, false))), vec4<bool>(true, _wgslsmith_add_i32(u_input.d, u_input.d) <= u_input.d, all(vec4<bool>(false, true, true, false)) && all(vec4<bool>(false, false, false, true)), true), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)))), firstLeadingBit(_wgslsmith_div_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, -36650i), u_input.b)), u_input.c)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, 2813f, var_0.d.x)) - _wgslsmith_f_op_f32(select(898f, var_0.a, false))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a * var_0.a))))));
    global2 = array<vec4<u32>, 25>();
    global3 = max(-(~_wgslsmith_div_i32(u_input.a, reverseBits(-1i))), -54820i);
    let var_2 = -223f;
    return vec3<bool>(var_0.b.x, true, false);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: vec4<u32>) -> vec3<i32> {
    var var_0 = -5776i;
    return select(~(-vec3<i32>(u_input.c.x | u_input.c.x, _wgslsmith_mod_i32(u_input.b.x, 21935i), -53749i)), -(-firstTrailingBit(vec3<i32>(-2147483647i, -86475i, 0i)) << (~select(vec3<u32>(12534u, 4294967295u, 41812u), vec3<u32>(arg_2.e, 63693u, arg_3.x), false) % vec3<u32>(32u))), select(arg_2.c.b.zyz, select(!func_3(), arg_2.a.b.xzx, arg_2.a.b.x), select(select(vec3<bool>(arg_2.b.x, arg_0, arg_0), func_3(), arg_2.a.b.wwy), !select(vec3<bool>(arg_0, true, true), arg_2.a.b.xwx, true), func_3())));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> vec4<bool> {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.c.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a)) - arg_1.a.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(987f)))) - _wgslsmith_div_f32(arg_0.a, -2114f)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1978f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1375f + -1387f))))) * -1029f);
    let var_0 = vec3<u32>(arg_1.a.a.x, ~(~select(arg_0.c, 1u, arg_1.b.x) ^ 1u), _wgslsmith_clamp_u32(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.a.x, arg_2.a.a.x, arg_1.e), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.e, 1u, 308u), vec3<u32>(4294967295u, arg_1.e, arg_2.e))), 27043u));
    var var_1 = min(global0[_wgslsmith_index_u32(arg_0.c, 3u)], countOneBits(~(global0[_wgslsmith_index_u32(76765u, 3u)] >> (firstTrailingBit(vec2<u32>(2493u, 0u)) % vec2<u32>(32u)))));
    var var_2 = func_2(arg_1.d, 159f, arg_1, global2[_wgslsmith_index_u32(~95449u, 25u)]);
    return !arg_1.b;
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    global0 = array<vec2<u32>, 3>();
    var var_0 = arg_0;
    let var_1 = Struct_2(Struct_1(~(vec2<u32>(21238u, 0u) ^ global0[_wgslsmith_index_u32(0u, 3u)]), select(vec4<bool>(true, true, any(var_0.xyy), false), arg_0, vec4<bool>(any(vec2<bool>(arg_0.x, arg_0.x)), true, all(arg_0), any(var_0.yz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1120f, 594f), vec2<f32>(-1186f, 209f), false)), _wgslsmith_div_vec2_f32(vec2<f32>(-800f, 1570f), vec2<f32>(2596f, 356f))))), func_1(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(884f, -294f)) + -1098f), func_1(Struct_3(1000f, var_0.zyz, 33877u, vec4<bool>(true, var_0.x, true, var_0.x), u_input.c), Struct_2(Struct_1(global0[_wgslsmith_index_u32(24222u, 3u)], vec4<bool>(arg_0.x, true, var_0.x, false), vec2<f32>(623f, -1545f)), vec4<bool>(var_0.x, false, arg_0.x, false), Struct_1(global0[_wgslsmith_index_u32(54487u, 3u)], arg_0, vec2<f32>(-1139f, 681f)), true, 0u), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), vec4<bool>(false, arg_0.x, true, false), vec2<f32>(2413f, 917f)), vec4<bool>(arg_0.x, var_0.x, false, false), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 3u)], arg_0, vec2<f32>(-1000f, 1442f)), var_0.x, 1u), _wgslsmith_mult_i32(-1i, 20801i)).zww, 17730u, arg_0, u_input.b), Struct_2(Struct_1(vec2<u32>(4294967295u, 33049u), arg_0, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(820f, -785f)))), arg_0, Struct_1(global0[_wgslsmith_index_u32(~63722u, 3u)], !arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(408f, -299f))), !var_0.x, 1u), Struct_2(Struct_1(global0[_wgslsmith_index_u32(38725u, 3u)], arg_0, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(193f, -484f)))), arg_0, Struct_1(~global0[_wgslsmith_index_u32(1u, 3u)], func_1(Struct_3(203f, arg_0.xzy, 35775u, arg_0, vec2<i32>(u_input.c.x, -39913i)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 3u)], vec4<bool>(var_0.x, false, false, true), vec2<f32>(1878f, 185f)), vec4<bool>(true, arg_0.x, var_0.x, false), Struct_1(vec2<u32>(4294967295u, 1u), arg_0, vec2<f32>(-2204f, 1631f)), arg_0.x, 1u), Struct_2(Struct_1(global0[_wgslsmith_index_u32(1u, 3u)], vec4<bool>(true, true, true, false), vec2<f32>(1932f, 1516f)), vec4<bool>(false, true, true, false), Struct_1(global0[_wgslsmith_index_u32(1u, 3u)], vec4<bool>(false, arg_0.x, true, arg_0.x), vec2<f32>(1021f, -800f)), false, 4294967295u), -14863i), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1381f, -1000f), vec2<f32>(1000f, 1017f)))), false, 0u), -(~(-18329i))), Struct_1(~global0[_wgslsmith_index_u32(abs(1u), 3u)], func_1(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -912f), var_0.wzw, _wgslsmith_add_u32(1u, 1u), vec4<bool>(true, var_0.x, false, var_0.x), vec2<i32>(u_input.a, 8024i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<bool>(arg_0.x, var_0.x, true, arg_0.x), vec2<f32>(441f, 1862f)), !vec4<bool>(false, true, var_0.x, false), Struct_1(global0[_wgslsmith_index_u32(0u, 3u)], vec4<bool>(false, true, var_0.x, arg_0.x), vec2<f32>(997f, 1000f)), false, _wgslsmith_mod_u32(4294967295u, 1u)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(109204u, 3u)], arg_0, vec2<f32>(-1000f, 1131f)), arg_0, Struct_1(global0[_wgslsmith_index_u32(42581u, 3u)], vec4<bool>(var_0.x, false, true, var_0.x), vec2<f32>(-651f, 1416f)), true, 66120u), u_input.d), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-721f, 1470f))), vec2<f32>(-2304f, 687f)))))), all(var_0.xy), ~0u);
    let var_2 = -1i;
    let var_3 = var_1.c.c.x;
    return var_1.c;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    let var_0 = arg_0.a;
    global2 = array<vec4<u32>, 25>();
    let var_1 = Struct_2(Struct_1(~(~reverseBits(vec2<u32>(1u, arg_0.c.a.x))), arg_1.b, _wgslsmith_f_op_vec2_f32(-arg_1.c)), vec4<bool>(~_wgslsmith_sub_u32(arg_0.e, 11736u) < var_0.a.x, true || (true | (arg_0.c.c.x >= var_0.c.x)), true, false), func_4(select(select(!vec4<bool>(false, arg_1.b.x, false, true), !arg_0.c.b, true), !vec4<bool>(var_0.b.x, var_0.b.x, arg_0.b.x, arg_0.a.b.x), func_3().x)), false, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~arg_1.a.x, ~arg_0.c.a.x), ~_wgslsmith_div_vec2_u32(arg_1.a, arg_0.a.a), _wgslsmith_sub_vec2_u32(reverseBits(arg_0.c.a), var_0.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), select(func_4(arg_0.a.b).a, abs(arg_1.a), arg_1.b.x | arg_0.a.b.x))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -496f) * var_0.c.x);
    global2 = array<vec4<u32>, 25>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-214f, -859f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -958f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(153f, -736f)) * _wgslsmith_div_f32(507f, 519f))))))));
    var var_0 = func_5(Struct_2(Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(5994u, 1u), ~global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<bool>(true, true, true, true), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -219f), _wgslsmith_f_op_f32(827f + 1080f))), !select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), true), func_4(!func_1(Struct_3(-715f, vec3<bool>(true, true, false), 65865u, vec4<bool>(false, true, false, false), u_input.b), Struct_2(Struct_1(vec2<u32>(23831u, 57344u), vec4<bool>(true, false, true, true), vec2<f32>(1000f, -1000f)), vec4<bool>(true, false, true, false), Struct_1(global0[_wgslsmith_index_u32(65661u, 3u)], vec4<bool>(false, false, false, true), vec2<f32>(-1735f, -949f)), true, 65578u), Struct_2(Struct_1(vec2<u32>(64835u, 4294967295u), vec4<bool>(true, false, true, true), vec2<f32>(787f, -1000f)), vec4<bool>(true, true, true, true), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 3u)], vec4<bool>(true, false, false, false), vec2<f32>(319f, -2845f)), true, 6466u), 0i)), true, 58013u), Struct_1(vec2<u32>(~1u, 1u), func_4(vec4<bool>(true, true, true, true)).b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-949f, 362f), vec2<f32>(1146f, 1942f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(964f, 305f)))))))));
    var_0 = Struct_2(Struct_1(~var_0.c.a, var_0.c.b, _wgslsmith_f_op_vec2_f32(-var_0.a.c)), var_0.a.b, func_4(select(select(var_0.c.b, var_0.c.b, var_0.b.x), var_0.c.b, func_5(Struct_2(var_0.a, var_0.b, Struct_1(vec2<u32>(1u, 1u), var_0.c.b, var_0.c.c), var_0.c.b.x, 4294967295u), func_4(var_0.b)).a.b)), func_4(vec4<bool>(var_0.a.b.x, !(var_0.b.x | var_0.d), var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -187f) < var_0.a.c.x)).b.x, 8991u);
    global2 = array<vec4<u32>, 25>();
    let var_1 = Struct_2(func_4(var_0.a.b), !func_5(func_5(Struct_2(Struct_1(var_0.c.a, var_0.b, vec2<f32>(var_0.c.c.x, var_0.c.c.x)), var_0.b, var_0.c, var_0.d, 30880u), func_4(var_0.b)), func_4(!vec4<bool>(var_0.d, var_0.b.x, var_0.a.b.x, var_0.d))).c.b, func_5(func_5(func_5(Struct_2(Struct_1(var_0.a.a, vec4<bool>(var_0.d, true, false, true), var_0.a.c), vec4<bool>(var_0.d, true, var_0.c.b.x, true), var_0.c, var_0.d, 4294967295u), func_5(Struct_2(var_0.a, var_0.c.b, var_0.a, var_0.d, var_0.a.a.x), var_0.c).c), var_0.c), var_0.c).c, var_0.c.b.x, ~var_0.e);
    let var_2 = _wgslsmith_div_i32(1i, -2147483647i) ^ (u_input.c.x >> (var_0.a.a.x % 32u));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1448f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-836f, var_1.c.c.x) - _wgslsmith_f_op_f32(-var_1.a.c.x)) - 2087f)) * var_0.a.c.x);
    global2 = array<vec4<u32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(8214i, var_0.a.c);
}

