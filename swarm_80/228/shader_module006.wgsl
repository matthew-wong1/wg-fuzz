struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 2098f;

var<private> global1: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool) -> vec3<bool> {
    global1 = array<vec2<bool>, 24>();
    var var_0 = Struct_1(select(vec3<bool>(!arg_0 && true, true || (u_input.a != 47571u), true), vec3<bool>(arg_0, true, true), select(!vec3<bool>(false, arg_0, true), vec3<bool>(true, arg_0 | arg_0, arg_0), arg_0)), -69747i, select(!vec3<bool>(arg_0, all(vec2<bool>(true, arg_0)), true), select(!vec3<bool>(false, arg_0, arg_0), vec3<bool>(!arg_0, true, !arg_0), vec3<bool>(!arg_0, arg_0 == arg_0, !arg_0)), true));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(801f * -980f)), _wgslsmith_f_op_f32(sign(1000f)))))) - -3174f);
    let var_2 = Struct_1(var_0.c, countOneBits(-select(~2147483647i, var_0.b, arg_0 == false)), vec3<bool>(var_0.c.x, !all(!vec4<bool>(var_0.a.x, true, false, true)), arg_0));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1515f);
    return var_2.a;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_3) -> i32 {
    let var_0 = arg_1;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-453f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * 117f), _wgslsmith_div_f32(-995f, 315f), all(arg_1.a.c)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1643f, -1175f))))), Struct_1(func_3(!var_0.a.a.x && (var_0.b.x < u_input.a)), var_0.a.b, vec3<bool>(true, !arg_2.c.x, false)), var_0.a.b, select(max(~(-vec4<i32>(arg_2.b, arg_2.b, 2147483647i, arg_2.b)), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-1i, var_0.a.b, -18321i, 0i)), reverseBits(vec4<i32>(-1i, 1i, var_0.a.b, 34455i)))), ~(~vec4<i32>(arg_2.b, arg_1.a.b, arg_1.a.b, -44857i)) | countOneBits(max(vec4<i32>(arg_3.a.b, 50977i, 14290i, -2147483647i), vec4<i32>(-27480i, 1i, -3951i, 9035i))), _wgslsmith_div_u32(~0u, countOneBits(19225u)) > (var_0.b.x << (0u % 32u))));
    var var_2 = select(global1[_wgslsmith_index_u32(10869u << (1u % 32u), 24u)], vec2<bool>(arg_3.a.c.x, false), true);
    return var_1.d.x;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(vec3<bool>(true, any(vec2<bool>(true, false)) & true, all(vec3<bool>(true, true, true))), 10816i, !vec3<bool>(any(global1[_wgslsmith_index_u32(u_input.b.x, 24u)]), true, -111f != arg_2.x)));
    let var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(-vec3<i32>(0i, var_0.a.b, 14876i) << (abs(vec3<u32>(46494u, 22030u, 64049u)) % vec3<u32>(32u))), -vec3<i32>(14274i, 0i, 0i) << (firstTrailingBit(vec3<u32>(u_input.a, 47939u, u_input.a)) % vec3<u32>(32u)), (-vec3<i32>(var_0.a.b, var_0.a.b, -17544i) & vec3<i32>(var_0.a.b, var_0.a.b, 9990i)) & (select(vec3<i32>(2147483647i, -2147483647i, 0i), vec3<i32>(var_0.a.b, -32466i, 2147483647i), var_0.a.a.x) << (vec3<u32>(77441u, 9757u, 112563u) % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_sub_i32(-func_2(vec4<u32>(u_input.b.x, 34965u, u_input.a, u_input.b.x), Struct_4(var_0.a, vec3<u32>(0u, u_input.b.x, u_input.a)), Struct_1(vec3<bool>(var_0.a.a.x, false, false), var_0.a.b, var_0.a.c), Struct_3(Struct_1(var_0.a.c, 55389i, vec3<bool>(true, var_0.a.a.x, var_0.a.a.x)))), countOneBits(-32708i)), abs(-func_2(vec4<u32>(u_input.b.x, 30537u, u_input.b.x, u_input.a), Struct_4(Struct_1(var_0.a.c, 26835i, vec3<bool>(var_0.a.c.x, false, false)), vec3<u32>(u_input.a, 35275u, 107373u)), var_0.a, var_0)), -var_0.a.b));
    let var_2 = !(!var_0.a.a.x);
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(arg_2.yz))))), Struct_1(func_3(var_0.a.c.x), _wgslsmith_dot_vec3_i32(reverseBits(var_1) << (firstTrailingBit(vec3<u32>(u_input.b.x, 1u, 4294967295u)) % vec3<u32>(32u)), var_1), !vec3<bool>(func_3(true).x, var_0.a.c.x, true)), var_0.a.b, ~(max(vec4<i32>(var_1.x, 2147483647i, var_0.a.b, 1i), select(vec4<i32>(var_1.x, var_0.a.b, var_0.a.b, -51994i), vec4<i32>(var_1.x, var_1.x, var_1.x, 42590i), vec4<bool>(false, var_0.a.a.x, true, true))) ^ (select(vec4<i32>(var_0.a.b, 1i, 2170i, -648i), vec4<i32>(var_0.a.b, 2147483647i, 1344i, 11043i), vec4<bool>(var_0.a.a.x, var_2, false, false)) ^ -vec4<i32>(var_1.x, 32133i, -2147483647i, 1i))));
    var var_4 = vec3<bool>(func_3(!(!any(global1[_wgslsmith_index_u32(71901u, 24u)]))).x, true, !func_3(var_2).x);
    return var_3.b;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(954f)) * _wgslsmith_f_op_f32(275f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1584f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 494f)) + 1123f));
    let var_0 = Struct_3(Struct_1(arg_0.a, arg_0.b, select(vec3<bool>(true, arg_0.c.x, true), vec3<bool>(arg_0.a.x, true, 13585i <= arg_0.b), arg_0.a)));
    global1 = array<vec2<bool>, 24>();
    let var_1 = Struct_3(func_1(354f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1009f)), _wgslsmith_f_op_f32(select(1547f, -694f, false))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<f32>(_wgslsmith_f_op_f32(1062f * _wgslsmith_f_op_f32(f32(-1f) * -1371f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(985f * -112f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1462f - 206f))))));
    var var_2 = !(!select(select(select(vec4<bool>(arg_0.c.x, var_0.a.a.x, var_1.a.c.x, arg_0.a.x), vec4<bool>(arg_0.c.x, arg_0.a.x, var_1.a.c.x, var_0.a.a.x), vec4<bool>(var_0.a.a.x, var_1.a.a.x, var_0.a.a.x, true)), !vec4<bool>(var_0.a.a.x, false, arg_0.c.x, false), vec4<bool>(true, true, true, true)), !(!vec4<bool>(var_1.a.a.x, arg_0.c.x, var_1.a.c.x, var_1.a.c.x)), vec4<bool>(var_1.a.a.x, var_0.a.a.x, 1u <= u_input.a, true)));
    return func_1(1f, _wgslsmith_div_f32(728f, 1972f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2199f) + _wgslsmith_f_op_f32(ceil(457f))), _wgslsmith_f_op_f32(-1562f - _wgslsmith_f_op_f32(-1000f + -874f)), _wgslsmith_f_op_f32(step(1554f, 713f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(-763f, 215f, _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1180f, 1250f, -575f)))));
    var_0 = Struct_1(!var_0.c, 4842i, vec3<bool>(!(var_0.a.x | var_0.a.x) || (true != !var_0.a.x), func_3(var_0.a.x).x, 1u != _wgslsmith_sub_u32(~u_input.a, ~1u)));
    var var_1 = ~(~vec2<u32>(firstTrailingBit(4294967295u), u_input.b.x | u_input.a) & select(u_input.b, u_input.b, vec2<bool>(var_0.c.x && var_0.a.x, true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(886f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-308f, -278f))))), -528f));
    let var_3 = any(vec4<bool>(true, all(select(!vec4<bool>(true, var_0.c.x, false, true), select(vec4<bool>(false, var_0.a.x, var_0.a.x, true), vec4<bool>(false, var_0.c.x, var_0.a.x, var_0.a.x), var_0.a.x), true)), true || !(true | var_0.c.x), false));
    global1 = array<vec2<bool>, 24>();
    var var_4 = _wgslsmith_f_op_f32(var_2.x * var_2.x);
    var var_5 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(max(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 102198u, 70840u, 2435u), vec4<u32>(u_input.a, 37897u, var_1.x, 104557u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 34905u, 1u, u_input.b.x), vec4<u32>(var_1.x, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(1u, var_1.x, 50965u, 1u))), ~vec4<u32>(var_1.x, u_input.b.x, 1u, 1u)), vec4<u32>(19270u, u_input.a, 0u, _wgslsmith_mod_u32(1u, 4294967295u))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, 66083u, u_input.b.x), vec4<u32>(var_1.x, u_input.b.x, u_input.a, 4294967295u)), _wgslsmith_mod_u32(23725u, var_1.x), 36829u, select(u_input.b.x, 0u, var_0.c.x)), vec4<u32>(u_input.b.x, 1u, 1u, ~u_input.a)) << (firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(4552u, 18151u)), 15443u, u_input.a, var_1.x)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_add_vec4_u32(~vec4<u32>(var_1.x, var_1.x, var_5.x, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_5.x, 10144u, var_5.x, var_5.x), vec4<u32>(var_5.x, u_input.b.x, 16851u, var_1.x), vec4<u32>(5017u, u_input.a, 0u, var_1.x))) & vec4<u32>(var_1.x, 1u, ~1u, var_1.x)), max(var_5.zyw, var_5.xxy), vec4<f32>(-356f, _wgslsmith_f_op_f32(round(-1139f)), -380f, _wgslsmith_f_op_f32(floor(632f))), -select(select(vec3<i32>(23060i, -18961i, -2147483647i), vec3<i32>(-49867i, var_0.b, var_0.b), vec3<bool>(true, var_3, true)), countOneBits(vec3<i32>(42816i, 59047i, 24403i)), false) >> (var_5.yxy % vec3<u32>(32u)), min(vec3<i32>(-1i) * -(~vec3<i32>(-55i, 1i, var_0.b)), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(var_0.b, var_0.b, 1i)), vec3<i32>(func_1(var_2.x, -770f, vec3<f32>(995f, 1000f, var_2.x)).b, _wgslsmith_mult_i32(var_0.b, 2497i), 1i))));
}

