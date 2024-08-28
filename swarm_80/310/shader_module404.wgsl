struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 21>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = _wgslsmith_sub_i32(arg_0.b, _wgslsmith_sub_i32(abs(~arg_0.b), ~countOneBits(_wgslsmith_div_i32(11965i, arg_0.b))));
    let var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1111f, _wgslsmith_f_op_f32(f32(-1f) * -1073f))) + _wgslsmith_f_op_f32(sign(-389f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -169f)) - -292f)), Struct_1(reverseBits(arg_0.a.a), vec2<bool>(true, arg_0.c.b.x), 0u), true, arg_0.a.b.x, !select(vec3<bool>(arg_0.c.b.x, true, false), select(select(vec3<bool>(true, arg_0.a.b.x, true), vec3<bool>(true, arg_0.c.b.x, true), true), !vec3<bool>(arg_0.c.b.x, arg_0.c.b.x, true), vec3<bool>(false, false, false)), all(vec4<bool>(false, arg_0.a.b.x, true, true)) && true));
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1971f, _wgslsmith_div_f32(var_1.a.x, 1458f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(557f, -1207f), vec2<f32>(var_1.a.x, var_1.a.x)) * _wgslsmith_f_op_vec2_f32(-var_1.a.xx))))));
    global0 = array<vec3<f32>, 21>();
    let var_3 = !vec4<bool>(true | select(false, var_1.c, true), arg_0.a.b.x, _wgslsmith_clamp_i32(-58813i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.a.x, var_1.b.a.x, var_0, var_1.b.a.x), arg_0.c.a), -13042i >> (u_input.e.x % 32u)) < _wgslsmith_sub_i32(firstTrailingBit(var_1.b.a.x), firstTrailingBit(var_1.b.a.x)), any(select(var_1.e, select(var_1.e, vec3<bool>(var_1.b.b.x, false, false), vec3<bool>(arg_0.c.b.x, false, true)), !vec3<bool>(arg_0.a.b.x, false, true))));
    return select(select(!(!(!vec2<bool>(arg_0.a.b.x, false))), select(!select(vec2<bool>(false, arg_0.a.b.x), vec2<bool>(true, var_3.x), var_3.zx), vec2<bool>(-10288i <= var_1.b.a.x, all(vec2<bool>(false, true))), var_1.e.xx), all(!var_3)), select(var_3.yw, arg_0.c.b, vec2<bool>(_wgslsmith_clamp_i32(var_1.b.a.x, 0i, var_1.b.a.x) > var_1.b.a.x, true)), var_3.x);
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_3(Struct_1(vec4<i32>(min(-2147483647i, 1i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(4282i, 0i, -22698i, 2628i), vec4<i32>(-1i, -2147483647i, 0i, 48620i)), -29064i, 2147483647i, countOneBits(reverseBits(1i))), select(select(func_3(Struct_3(Struct_1(vec4<i32>(1i, 2147483647i, 50172i, -55029i), vec2<bool>(false, false), u_input.e.x), 4821i, Struct_1(vec4<i32>(11839i, -2147483647i, -2147483647i, -2147483647i), vec2<bool>(false, true), u_input.a), vec2<u32>(1222u, u_input.d))), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), true), u_input.e.x), _wgslsmith_div_i32(abs(_wgslsmith_sub_i32(2147483647i, 1i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(15983i, 42356i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1550i, 38021i, 0i), vec3<i32>(2147483647i, 2484i, 0i))) | -28171i), Struct_1(vec4<i32>(max(0i, ~0i), _wgslsmith_clamp_i32(1i, -29603i, i32(-1i) * -1i), _wgslsmith_mult_i32(19657i, 47927i) << ((u_input.a >> (4294967295u % 32u)) % 32u), -(~(-8893i))), !vec2<bool>(any(vec4<bool>(false, false, true, true)), true), u_input.d), firstLeadingBit(u_input.e.yy));
    var var_1 = Struct_3(var_0.a, _wgslsmith_sub_i32(i32(-1i) * -51041i, -(~28518i)), var_0.c, vec2<u32>(1u, 37813u));
    var var_2 = ~((var_0.b ^ var_1.b) >> (~u_input.e.x % 32u));
    var var_3 = -var_1.c.a.x;
    let var_4 = var_0.c.c & 89440u;
    return var_0.c.b;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = !vec4<bool>(false, all(vec3<bool>(true, true, true)), u_input.c == _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 11560u) ^ u_input.e.xy, ~u_input.e.yz), !all(vec3<bool>(false, true, true)));
    var var_1 = func_2();
    global0 = array<vec3<f32>, 21>();
    let var_2 = vec2<i32>(1i, ~_wgslsmith_sub_i32(_wgslsmith_div_i32(1i, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(67624i, 40173i, 2147483647i), vec3<i32>(1i, 0i, 1i)))) << (reverseBits(countOneBits(~u_input.e.yz)) % vec2<u32>(32u));
    global0 = array<vec3<f32>, 21>();
    return Struct_2(global0[_wgslsmith_index_u32(~arg_0, 21u)], Struct_1(~select(firstLeadingBit(vec4<i32>(var_2.x, var_2.x, 13359i, var_2.x)), vec4<i32>(-15131i, var_2.x, var_2.x, var_2.x) & vec4<i32>(-54708i, -1i, -37855i, -4400i), func_2().x), var_0.yx, 50077u), !((var_2.x >> (u_input.e.x % 32u)) != (2147483647i >> (u_input.e.x % 32u))) && true, false, !(!var_0.xww));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    let var_0 = 1u;
    let var_1 = Struct_3(func_1(_wgslsmith_clamp_u32(arg_0.x, countOneBits(~var_0), ~(~arg_2.b.c))).b, abs(~(~abs(-8867i))), func_1(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_0.x, var_0, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_2.b.c, 15341u, arg_1.b.c), arg_0)), reverseBits(abs(vec4<u32>(51900u, 4294967295u, 4294967295u, arg_2.b.c))))).b, ~arg_0.zy);
    global0 = array<vec3<f32>, 21>();
    var var_2 = Struct_1(vec4<i32>(1i, -_wgslsmith_dot_vec3_i32(var_1.c.a.zzy, _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -2147483647i, var_1.c.a.x), vec3<i32>(21662i, arg_1.b.a.x, arg_1.b.a.x))), -reverseBits(firstLeadingBit(var_1.c.a.x)), 0i << (1u % 32u)), var_1.a.b, func_1(reverseBits(reverseBits(~var_0))).b.c);
    var var_3 = Struct_1(arg_2.b.a, var_1.c.b, arg_2.b.c);
    return Struct_1(var_2.a, select(vec2<bool>(var_1.c.b.x & arg_2.d, func_3(Struct_3(Struct_1(var_2.a, vec2<bool>(var_1.c.b.x, true), 4294967295u), var_1.c.a.x, arg_2.b, var_1.d)).x), func_3(var_1), var_2.b.x), abs(~_wgslsmith_mult_u32(var_0, ~arg_2.b.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~_wgslsmith_mult_vec4_u32(abs(~vec4<u32>(u_input.c, u_input.d, u_input.a, u_input.c)), abs(vec4<u32>(0u, u_input.a, 0u, u_input.a)) & ~vec4<u32>(23446u, u_input.b, u_input.b, u_input.b)), func_1(u_input.a), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1429f, 195f, 717f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-218f, 1036f, -768f) * vec3<f32>(107f, -593f, -362f))), Struct_1(firstLeadingBit(countOneBits(vec4<i32>(-13802i, 72470i, -9000i, 1i))), func_3(Struct_3(Struct_1(vec4<i32>(-9129i, -2147483647i, 1i, 13372i), vec2<bool>(true, false), u_input.e.x), -63077i, Struct_1(vec4<i32>(1i, -19107i, 30937i, -1i), vec2<bool>(true, true), 4840u), u_input.e.xy)), 24865u), all(vec4<bool>(true, true, true, false)), all(vec4<bool>(true, true, true, true)), vec3<bool>(true & select(true, false, false), true, true)));
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1059f), -2214f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1927f - -1000f))), _wgslsmith_f_op_f32(-647f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1300f)))), Struct_1(var_0.a, vec2<bool>(var_0.b.x, !var_0.b.x), reverseBits(_wgslsmith_clamp_u32(60598u, u_input.e.x, var_0.c >> (0u % 32u)))), true, func_2().x, vec3<bool>(true, all(var_0.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(662f, -318f) * -1116f) >= func_1(1u).a.x));
    var_1 = Struct_2(func_1(~1u).a, Struct_1(~var_1.b.a, vec2<bool>(!var_0.b.x & (var_1.b.b.x & true), true), _wgslsmith_sub_u32(_wgslsmith_mod_u32(~u_input.e.x, ~var_0.c), 4294967295u)), all(select(select(select(vec4<bool>(true, false, var_1.d, false), vec4<bool>(true, false, false, var_1.e.x), var_0.b.x), !vec4<bool>(var_0.b.x, true, var_1.d, true), vec4<bool>(true, true, var_0.b.x, true)), select(!vec4<bool>(var_0.b.x, var_1.c, var_1.d, var_0.b.x), !vec4<bool>(var_1.e.x, true, var_1.c, var_1.e.x), !vec4<bool>(var_1.b.b.x, false, var_1.d, true)), _wgslsmith_sub_u32(32075u, var_1.b.c) > 0u)), true, func_1(_wgslsmith_div_u32(~1u, ~var_1.b.c)).e);
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a.x, -612f, var_1.a.x))) * var_1.a)), Struct_1(_wgslsmith_add_vec4_i32(-var_0.a, vec4<i32>(-8272i, var_1.b.a.x << (u_input.b % 32u), _wgslsmith_mult_i32(var_0.a.x, 2147483647i), -19196i)), !func_1(func_1(4294967295u).b.c).e.yy, 69391u), true, any(!(!(!var_0.b))), var_1.e);
    global0 = array<vec3<f32>, 21>();
    var_1 = func_1(~select(~0u, ~(~9576u), false));
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, 1739f, 1000f) + global0[_wgslsmith_index_u32(34355u, 21u)]), vec3<f32>(-427f, 2250f, 168f)) * vec3<f32>(var_1.a.x, 581f, -1877f)) * global0[_wgslsmith_index_u32(1u >> ((70523u | _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 45593u, u_input.e.x, 4294967295u), vec4<u32>(var_0.c, var_0.c, u_input.b, var_0.c))) % 32u), 21u)]), func_4(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 1u, var_1.b.c, 55941u), ~vec4<u32>(var_1.b.c, 87927u, u_input.d, u_input.e.x)), Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(var_1.b.c, 21u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_1.a.x, -786f) - global0[_wgslsmith_index_u32(17193u, 21u)]))), func_4(vec4<u32>(u_input.e.x, u_input.d, u_input.e.x, var_0.c), Struct_2(var_1.a, Struct_1(vec4<i32>(var_0.a.x, -27677i, var_0.a.x, var_1.b.a.x), var_1.e.zz, 16158u), false, false, var_1.e), func_1(var_1.b.c)), true, var_1.e.x, !func_1(u_input.d).e), Struct_2(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(var_0.c, 21u)] + _wgslsmith_f_op_vec3_f32(abs(global0[_wgslsmith_index_u32(var_1.b.c, 21u)]))), func_4(vec4<u32>(u_input.a, 47202u, var_1.b.c, 35175u), Struct_2(vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x), Struct_1(vec4<i32>(35899i, 2147483647i, var_1.b.a.x, var_1.b.a.x), var_0.b, 4294967295u), var_1.b.b.x, false, vec3<bool>(true, false, true)), Struct_2(vec3<f32>(var_1.a.x, 706f, var_1.a.x), var_1.b, var_0.b.x, false, var_1.e)), min(18792i, -9339i) <= _wgslsmith_mult_i32(-1i, var_0.a.x), var_1.b.b.x, vec3<bool>(false, var_1.b.b.x, true))), ((!var_1.b.b.x & true) && !(!var_0.b.x)) && ((abs(4294967295u) >> (var_1.b.c % 32u)) <= _wgslsmith_clamp_u32(func_4(vec4<u32>(var_1.b.c, var_1.b.c, 32584u, 0u), Struct_2(vec3<f32>(var_1.a.x, var_1.a.x, -1000f), var_0, var_0.b.x, false, var_1.e), Struct_2(vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x), var_0, false, var_0.b.x, var_1.e)).c, max(u_input.a, var_0.c), var_0.c & 25783u)), var_1.e.x, vec3<bool>(!(var_1.b.c >= _wgslsmith_add_u32(1u, var_1.b.c)), !(!(!var_1.e.x)), !(var_0.c <= _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, u_input.e.x, 28188u), u_input.e))));
    var var_2 = func_2().x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_div_i32(-(~var_0.a.x), firstLeadingBit(_wgslsmith_clamp_i32(var_1.b.a.x, var_0.a.x, var_1.b.a.x))), func_4(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.c, 39404u, 4294967295u, 8808u), vec4<u32>(114290u, 0u, 57117u, 43059u)), var_1.b.c, 1623u, ~u_input.c), func_1(_wgslsmith_add_u32(0u, u_input.c)), func_1(abs(u_input.b))).a.x, 0i, var_0.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(389f, 1154f, -1000f) * vec3<f32>(var_1.a.x, -159f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-274f + 594f)))));
}

