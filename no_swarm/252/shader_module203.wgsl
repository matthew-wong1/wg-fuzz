struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(15436i, -19091i, -78868i), vec3<i32>(0i, -32315i, -1i), vec3<i32>(1i, -13958i, 10647i), vec3<i32>(-46896i, 45264i, 4902i), vec3<i32>(-46699i, -10568i, -6593i), vec3<i32>(-41650i, 6516i, -12670i), vec3<i32>(-92891i, i32(-2147483648), -29540i), vec3<i32>(1i, 8207i, 0i), vec3<i32>(0i, -8136i, -23598i), vec3<i32>(3639i, 5831i, 2147483647i), vec3<i32>(-17637i, -20481i, -1i), vec3<i32>(-1i, -25703i, 0i), vec3<i32>(0i, i32(-2147483648), 1i), vec3<i32>(i32(-2147483648), 1i, -2985i), vec3<i32>(26665i, -25614i, 54495i), vec3<i32>(-1041i, 25421i, 22128i), vec3<i32>(1i, 1812i, -6747i), vec3<i32>(-1i, -19143i, -15266i));

var<private> global1: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_2) -> Struct_3 {
    var var_0 = arg_1.a;
    return Struct_3(vec3<u32>(u_input.a.x, 1u, 31003u));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_5 {
    global0 = array<vec3<i32>, 18>();
    global0 = array<vec3<i32>, 18>();
    let var_0 = ~func_2(Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1333f, arg_1))), all(vec3<bool>(true, true, true)) & true), Struct_2(Struct_1(vec2<i32>(34621i, u_input.d.x) >> (u_input.a % vec2<u32>(32u)), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<f32>(1312f, 629f, 331f)), Struct_1(u_input.d.xx, vec3<bool>(false, false, true), vec3<bool>(true, true, false), _wgslsmith_div_vec3_f32(vec3<f32>(479f, arg_1, 423f), vec3<f32>(arg_1, arg_1, -1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1))))).a.x;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(f32(-1f) * -792f)), 1885f, arg_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(arg_1, arg_1, 1250f), false)))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1, _wgslsmith_f_op_f32(-244f - -1000f)))));
    var var_2 = ~vec3<u32>(arg_0.x, ~firstLeadingBit(4294967295u), arg_0.x);
    return Struct_5(vec2<f32>(1769f, _wgslsmith_f_op_f32(sign(arg_1))), true);
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: u32) -> vec2<f32> {
    global0 = array<vec3<i32>, 18>();
    let var_0 = Struct_2(Struct_1(~u_input.d.yy, select(select(!vec3<bool>(arg_2.b, true, arg_1.x), vec3<bool>(arg_2.b, true, true), select(vec3<bool>(true, true, arg_2.b), vec3<bool>(true, true, arg_1.x), false)), select(select(vec3<bool>(arg_1.x, true, false), vec3<bool>(arg_2.b, arg_1.x, false), vec3<bool>(true, false, false)), !vec3<bool>(true, arg_1.x, false), !vec3<bool>(arg_1.x, arg_2.b, arg_1.x)), select(vec3<bool>(false, arg_2.b, true), vec3<bool>(arg_1.x, arg_2.b, arg_2.b), vec3<bool>(arg_2.b, false, true))), vec3<bool>(!(arg_2.a.x != arg_2.a.x), arg_1.x, any(select(vec4<bool>(arg_1.x, true, arg_2.b, arg_1.x), vec4<bool>(arg_2.b, arg_1.x, arg_2.b, arg_2.b), vec4<bool>(false, arg_1.x, true, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, -2311f, 343f) * vec3<f32>(arg_2.a.x, arg_2.a.x, 903f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1272f, arg_2.a.x, arg_2.a.x)))), Struct_1(firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-12866i, -67811i, -2147483647i), vec3<i32>(u_input.d.x, -39480i, u_input.c.x)), select(-1i, u_input.c.x, true))), !(!select(vec3<bool>(arg_2.b, true, arg_1.x), vec3<bool>(arg_2.b, false, arg_1.x), vec3<bool>(true, false, arg_1.x))), vec3<bool>(any(!vec3<bool>(arg_1.x, false, arg_1.x)), func_3(vec3<u32>(4294967295u, u_input.a.x, arg_3) | vec3<u32>(arg_3, 0u, u_input.a.x), _wgslsmith_f_op_f32(arg_2.a.x - arg_2.a.x), Struct_3(vec3<u32>(arg_3, u_input.e, u_input.a.x)), ~vec4<u32>(75963u, u_input.e, arg_3, 4294967295u)).b, _wgslsmith_div_f32(arg_2.a.x, arg_2.a.x) < arg_2.a.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-567f - arg_2.a.x), _wgslsmith_f_op_f32(min(arg_2.a.x, arg_2.a.x)), -1118f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, arg_2.a.x, 540f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1822f, -263f, arg_2.a.x))), any(vec4<bool>(arg_1.x, arg_2.b, false, true)))), true))), -1636f);
    var var_1 = ~(~19913u);
    global1 = array<vec2<bool>, 3>();
    let var_2 = firstTrailingBit(-vec4<i32>(-firstTrailingBit(-2147483647i), _wgslsmith_mod_i32(abs(var_0.b.a.x), arg_0), _wgslsmith_mod_i32(arg_0, 3031i), -2147483647i));
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.d.x, -157f) - vec2<f32>(1117f, -1844f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1804f, -364f)))), vec2<f32>(var_0.c, arg_2.a.x))));
}

fn func_1() -> i32 {
    var var_0 = true;
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(2147483647i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 3730u, u_input.e), vec3<u32>(u_input.e, 4294967295u, 81049u)), select(vec3<u32>(4294967295u, 1u, u_input.e), vec3<u32>(u_input.a.x, u_input.e, 50823u), vec3<bool>(false, true, true))), 3u)], func_3(select(vec3<u32>(29388u, u_input.a.x, 28095u), vec3<u32>(u_input.a.x, u_input.e, 113658u), vec3<bool>(false, true, false)), _wgslsmith_div_f32(992f, 741f), func_2(Struct_5(vec2<f32>(-1525f, 575f), true), Struct_2(Struct_1(vec2<i32>(24774i, u_input.c.x), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<f32>(477f, -151f, 1239f)), Struct_1(u_input.c, vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<f32>(1769f, -2059f, -453f)), 834f)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, u_input.e, u_input.a.x, u_input.e), vec4<u32>(7346u, 4294967295u, u_input.a.x, u_input.a.x))), _wgslsmith_add_u32(min(u_input.e, 4294967295u), 0u))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1412f, -1087f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(482f, -1000f), vec2<f32>(936f, 1068f), global1[_wgslsmith_index_u32(u_input.e, 3u)]))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-808f - _wgslsmith_f_op_f32(step(-510f, 666f))), _wgslsmith_f_op_f32(sign(-2124f)))) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1091f, 774f), _wgslsmith_f_op_f32(round(-2482f)))), -1000f)));
    var var_2 = reverseBits(u_input.c.x);
    var var_3 = true;
    let var_4 = _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(~(1u >> (u_input.a.x % 32u)), _wgslsmith_div_u32(52726u, u_input.a.x))), u_input.a);
    return _wgslsmith_mod_i32(select(_wgslsmith_clamp_i32(1i | u_input.b, -38472i, -54457i), abs(_wgslsmith_sub_i32(u_input.d.x, 9752i)), false) ^ (i32(-1i) * -2147483647i), ~2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_clamp_vec3_i32(countOneBits(-vec3<i32>(u_input.d.x, u_input.b, 1i)), u_input.d, vec3<i32>(_wgslsmith_div_i32(u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, u_input.d.x, u_input.c.x)), ~func_1(), _wgslsmith_clamp_i32(u_input.b, _wgslsmith_clamp_i32(-40872i, u_input.b, 2147483647i), -2851i))), -u_input.d ^ u_input.d, select(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, any(vec4<bool>(false, false, true, false))), !any(vec2<bool>(false, false))));
    var var_1 = _wgslsmith_f_op_f32(trunc(523f));
    var var_2 = ~(~vec3<u32>(select(45681u & u_input.a.x, firstLeadingBit(u_input.e), true), 0u, u_input.e));
    let var_3 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_4(var_0.x, global1[_wgslsmith_index_u32(var_2.x, 3u)], Struct_5(vec2<f32>(1167f, -1262f), true), 119180u)).x + _wgslsmith_f_op_f32(round(-404f))))), 1f, 182f, -2365f), Struct_2(Struct_1(vec2<i32>(var_0.x, -var_0.x), vec3<bool>(true, true, any(global1[_wgslsmith_index_u32(u_input.e, 3u)])), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1154f, -1082f, -374f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(764f, 1273f, 413f))))), Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, -9164i), vec2<i32>(var_0.x, u_input.b)), ~vec2<i32>(var_0.x, u_input.c.x)), vec3<bool>(true, all(vec4<bool>(true, false, false, true)), false), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(460f, 311f, -1382f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(513f, 776f, -766f), vec3<f32>(-320f, -477f, 610f)))))), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(793f, 1635f, -1962f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 604f, -2593f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1247f, -1000f))))), vec3<f32>(-637f, _wgslsmith_div_f32(-483f, _wgslsmith_f_op_vec2_f32(func_4(u_input.d.x, global1[_wgslsmith_index_u32(4927u, 3u)], Struct_5(vec2<f32>(-820f, 202f), true), u_input.a.x)).x), -335f), vec3<bool>(select(any(vec4<bool>(true, false, true, true)), true, true), all(vec3<bool>(false, false, false)), true))));
    var_0 = vec3<i32>(_wgslsmith_mod_i32(0i, ~firstTrailingBit(0i)), _wgslsmith_div_i32(var_3.b.b.a.x, var_0.x), (u_input.c.x & u_input.d.x) & u_input.d.x);
    var var_4 = Struct_2(Struct_1(max(-vec2<i32>(36728i, u_input.b), vec2<i32>(var_0.x, _wgslsmith_add_i32(u_input.d.x, -1i))), vec3<bool>(true, any(var_3.b.a.b.zz), any(!vec4<bool>(true, var_3.b.a.b.x, var_3.b.b.b.x, false))), var_3.b.b.b, var_3.a.xzx), var_3.b.a, _wgslsmith_f_op_f32(-var_3.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.d.x)), u_input.e, var_4.b.d.x, -697f);
}

