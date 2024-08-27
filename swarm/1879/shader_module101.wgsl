struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true));

var<private> global1: array<i32, 26>;

var<private> global2: bool = true;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: f32) -> Struct_3 {
    var var_0 = firstTrailingBit(abs(vec4<u32>(~_wgslsmith_clamp_u32(3125u, u_input.b, 38464u), u_input.e.x, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 39397u), u_input.e.xy)), ~u_input.c)));
    var var_1 = vec3<f32>(arg_2, 960f, 1317f);
    var var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(418f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + arg_2), 313f)), ~vec3<u32>(abs(_wgslsmith_mod_u32(3334u, var_0.x)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(7206u, 1u), ~4294967295u), reverseBits(select(26864u, var_0.x, true))));
    let var_3 = false;
    let var_4 = arg_1;
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), 373f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a - arg_2) + -310f)))), var_2.b);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_1 {
    global2 = select(arg_0, arg_0 & arg_0, arg_0 && (!(!arg_0) & !arg_0));
    let var_0 = _wgslsmith_f_op_f32(-arg_1.a);
    var var_1 = Struct_1(vec4<u32>(func_2(!(!arg_0), true, _wgslsmith_f_op_f32(floor(arg_3.a))).b.x, arg_1.b.x, _wgslsmith_mult_u32(~1u, ~arg_3.b.x) >> (firstTrailingBit(arg_1.b.x) % 32u), 39079u));
    let var_2 = !select(!(!select(vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(false, arg_0, true, false))), vec4<bool>(true, all(select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), true)), arg_0, all(select(vec2<bool>(false, true), vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0)))), select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, true, false, false), arg_0), !arg_0), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(false, true, arg_0, true), vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(arg_0, true, arg_0, false)), vec4<bool>(arg_0, true, arg_0, arg_0)), false));
    var var_3 = Struct_2(select(-2147483647i, _wgslsmith_clamp_i32(firstLeadingBit(abs(global1[_wgslsmith_index_u32(11216u, 26u)])), reverseBits(global1[_wgslsmith_index_u32(~48000u, 26u)]), -1i), any(select(var_2, select(var_2, var_2, arg_0), !var_2))), Struct_1(~var_1.a), firstLeadingBit((_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, var_1.a.x, 46080u, arg_1.b.x), vec4<u32>(arg_1.b.x, arg_1.b.x, 3173u, 1u)) ^ 81636u) | arg_1.b.x));
    return var_3.b;
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    global0 = array<vec3<bool>, 11>();
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-1i, _wgslsmith_clamp_i32(0i, countOneBits(global1[_wgslsmith_index_u32(1u, 26u)]), abs(21039i))), ~(~(0i << (arg_0.a.x % 32u))), -(~_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(18438u, 26u)]))), _wgslsmith_clamp_vec3_i32(abs(min(vec3<i32>(-1i, global1[_wgslsmith_index_u32(4294967295u, 26u)], -12062i), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(u_input.a, 26u)], global1[_wgslsmith_index_u32(u_input.a, 26u)]))) | ~vec3<i32>(global1[_wgslsmith_index_u32(u_input.c, 26u)], 1i, -6389i), vec3<i32>(reverseBits(1i), _wgslsmith_add_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(22523i, global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(u_input.a, 26u)]), vec3<i32>(33390i, 1i, global1[_wgslsmith_index_u32(48344u, 26u)]))), -1i), select(_wgslsmith_mod_vec3_i32(-vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], 1i, global1[_wgslsmith_index_u32(u_input.c, 26u)]), ~vec3<i32>(global1[_wgslsmith_index_u32(116111u, 26u)], global1[_wgslsmith_index_u32(u_input.d, 26u)], 26819i)), vec3<i32>(0i, global1[_wgslsmith_index_u32(abs(4294967295u), 26u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 94221u), 26u)]), true)));
    var var_1 = vec2<i32>(-2147483647i, ~(-2147483647i));
    let var_2 = _wgslsmith_dot_vec3_i32(~(vec3<i32>(~global1[_wgslsmith_index_u32(arg_0.a.x, 26u)], -1i, ~var_1.x) | -vec3<i32>(var_0.x, -31152i, -2151i)), vec3<i32>(countOneBits(i32(-1i) * -22673i), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(10163i, global1[_wgslsmith_index_u32(u_input.b, 26u)], var_0.x, var_1.x), vec4<i32>(-68042i, var_1.x, global1[_wgslsmith_index_u32(23889u, 26u)], 5555i)), vec4<i32>(var_1.x, 2147483647i, var_0.x, var_0.x)), select(-var_0.x, 1i, 32520u != arg_0.a.x)), var_1.x));
    let var_3 = vec2<bool>(all(vec2<bool>(true, true)), true);
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-254f, _wgslsmith_div_f32(-257f, 1175f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(2520f))))), vec3<u32>(~41010u, firstLeadingBit(reverseBits(4294967295u)), reverseBits(arg_0.a.x)));
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> Struct_3 {
    let var_0 = u_input.e.yz;
    var var_1 = countOneBits(_wgslsmith_add_i32(0i, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(20793u), abs(arg_0.b.x)), 26u)])) | _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(44450u, 26u)], global1[_wgslsmith_index_u32(arg_0.b.x, 26u)]), vec3<i32>(global1[_wgslsmith_index_u32(56846u, 26u)], 38688i, 0i)), -19633i, global1[_wgslsmith_index_u32(arg_1, 26u)] & global1[_wgslsmith_index_u32(22292u, 26u)]), global1[_wgslsmith_index_u32(~1u & ~u_input.a, 26u)]), global1[_wgslsmith_index_u32(74424u, 26u)]);
    var var_2 = arg_0;
    let var_3 = false;
    var var_4 = abs(countOneBits(vec4<u32>(_wgslsmith_add_u32(33761u, var_0.x) | ~arg_1, ~(var_2.b.x << (1u % 32u)), u_input.c, arg_0.b.x)));
    return func_2(!(!all(vec4<bool>(var_3, true, var_3, var_3))), _wgslsmith_f_op_f32(-var_2.a) != -568f, 183f);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: f32) -> Struct_2 {
    var var_0 = arg_1.a;
    let var_1 = !select(vec3<bool>(!(!arg_2), false, all(!vec4<bool>(true, arg_2, arg_2, arg_2))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, arg_2, true), vec3<bool>(false, arg_2, false), arg_2), vec3<bool>(arg_2, true, arg_2), !global0[_wgslsmith_index_u32(arg_0.b.x, 11u)]), !arg_2), (func_4(Struct_1(vec4<u32>(1u, arg_1.b.x, 43091u, 1u))).b.x <= func_5(Struct_3(arg_0.a, vec3<u32>(u_input.b, arg_0.b.x, 1u)), 32366u).b.x) & ((-1i | global1[_wgslsmith_index_u32(u_input.c, 26u)]) > _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.c, 26u)], global1[_wgslsmith_index_u32(88722u, 26u)], 2147483647i)));
    var var_2 = Struct_3(arg_1.a, arg_1.b);
    let var_3 = Struct_3(func_5(Struct_3(arg_1.a, _wgslsmith_div_vec3_u32(min(vec3<u32>(var_2.b.x, 4294967295u, 16571u), u_input.e), func_3(arg_2, Struct_3(var_2.a, vec3<u32>(47883u, u_input.b, arg_0.b.x)), vec4<f32>(429f, arg_0.a, arg_0.a, 1550f), Struct_3(arg_3, var_2.b)).a.xzw)), 17241u).a, vec3<u32>(18351u, firstTrailingBit(arg_0.b.x), ~arg_1.b.x));
    let var_4 = ~(~vec3<u32>(19587u, 4294967295u, select(~u_input.b, _wgslsmith_mod_u32(var_2.b.x, var_2.b.x), arg_2)));
    return Struct_2(-max(~(~(-41564i)), global1[_wgslsmith_index_u32(~(~5779u), 26u)]), func_3(arg_2, func_2(all(select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(false, var_1.x, false, var_1.x), var_1.x)), true, _wgslsmith_f_op_f32(f32(-1f) * -1007f)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_3, 1570f)))), _wgslsmith_f_op_f32(select(-175f, -1630f, arg_2)), func_4(func_3(true, Struct_3(2269f, vec3<u32>(arg_0.b.x, 34406u, 0u)), vec4<f32>(var_3.a, var_3.a, var_2.a, -629f), var_3)).a), arg_0), 39949u);
}

fn func_1() -> bool {
    global1 = array<i32, 26>();
    var var_0 = global1[_wgslsmith_index_u32(~u_input.a, 26u)];
    var var_1 = func_6(Struct_3(_wgslsmith_div_f32(-1000f, -875f), _wgslsmith_clamp_vec3_u32(min(firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 1u)), u_input.e), vec3<u32>(~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b, u_input.b, 29974u), vec4<u32>(u_input.d, u_input.d, 8210u, 9540u)), u_input.a & u_input.a), vec3<u32>(0u, u_input.d, firstLeadingBit(u_input.b)))), func_5(func_4(func_3(true, func_2(true, true, -307f), _wgslsmith_f_op_vec4_f32(vec4<f32>(922f, 228f, 628f, -801f) + vec4<f32>(-1000f, 1202f, -512f, 550f)), func_2(false, true, -2560f))), 1u), true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1908f))));
    let var_2 = vec2<bool>(true, all(vec2<bool>(all(vec2<bool>(false, false)), (u_input.d ^ 1u) > u_input.d)));
    var var_3 = select(!var_2, select(vec2<bool>(var_2.x, !(var_1.a >= global1[_wgslsmith_index_u32(59875u, 26u)])), vec2<bool>(var_1.b.a.x <= ~1u, false), false), any(vec2<bool>(any(!vec3<bool>(var_2.x, var_2.x, var_2.x)), !any(vec4<bool>(var_2.x, var_2.x, true, var_2.x)))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 26>();
    var var_0 = func_1();
    let var_1 = (vec2<i32>(global1[_wgslsmith_index_u32(1u, 26u)], 5210i) & (firstTrailingBit(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], -15739i) >> (u_input.e.zy % vec2<u32>(32u))) ^ vec2<i32>(global1[_wgslsmith_index_u32(u_input.d, 26u)], -global1[_wgslsmith_index_u32(10810u, 26u)]))) & countOneBits(_wgslsmith_mult_vec2_i32(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(global1[_wgslsmith_index_u32(0u, 26u)], 0i), vec2<i32>(28194i, global1[_wgslsmith_index_u32(45274u, 26u)])), vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], -1i) << (vec2<u32>(7584u, 4549u) % vec2<u32>(32u)), vec2<bool>(false, true)), reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(4163u, 26u)]), vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)])))));
    let var_2 = func_3(true, func_4(func_3(true, Struct_3(_wgslsmith_f_op_f32(round(859f)), vec3<u32>(u_input.a, 0u, u_input.c)), vec4<f32>(1f, 1f, 1f, 1f), func_5(Struct_3(-598f, vec3<u32>(0u, 0u, 48855u)), _wgslsmith_clamp_u32(1u, 4294967295u, u_input.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(372f, -117f, -555f, 1915f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1007f, -1544f, -1208f, -488f)), true)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-848f, -468f, 475f, 1562f)))))), Struct_3(-1000f, ~vec3<u32>(u_input.b | u_input.a, 21945u, u_input.c)));
    var_0 = !(!(all(vec3<bool>(true, true, false)) & false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-342f, -1133f, -1875f, 362f))) * vec4<f32>(1333f, 929f, -1451f, 1512f))))), var_1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 800f))) - vec2<f32>(_wgslsmith_f_op_f32(max(-1914f, 137f)), _wgslsmith_f_op_f32(f32(-1f) * -235f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1622f), _wgslsmith_f_op_f32(f32(-1f) * -1838f)))), func_6(Struct_3(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(544f, 1013f))), reverseBits(u_input.e)), func_4(func_6(Struct_3(2958f, var_2.a.xxy), Struct_3(-936f, vec3<u32>(3468u, 31403u, 30261u)), true, _wgslsmith_f_op_f32(min(-2069f, 435f))).b), all(select(!global0[_wgslsmith_index_u32(u_input.d, 11u)], global0[_wgslsmith_index_u32(var_2.a.x, 11u)], select(global0[_wgslsmith_index_u32(4294967295u, 11u)], vec3<bool>(true, false, false), false))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-835f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))).c);
}

