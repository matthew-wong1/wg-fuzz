struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec3<i32>(-29933i, -18769i, -31218i), vec2<i32>(-1173i, 0i), Struct_1(true, vec2<u32>(1u, 113678u)), Struct_1(true, vec2<u32>(26324u, 31507u))), Struct_2(vec3<i32>(-14637i, -24858i, 67271i), vec2<i32>(31073i, 9525i), Struct_1(true, vec2<u32>(66661u, 17043u)), Struct_1(false, vec2<u32>(0u, 4294967295u))), Struct_2(vec3<i32>(1i, 30716i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(false, vec2<u32>(116816u, 0u)), Struct_1(true, vec2<u32>(0u, 0u))), Struct_2(vec3<i32>(1i, i32(-2147483648), 10339i), vec2<i32>(i32(-2147483648), -6678i), Struct_1(false, vec2<u32>(6749u, 108596u)), Struct_1(false, vec2<u32>(0u, 10622u))), Struct_2(vec3<i32>(0i, i32(-2147483648), -55223i), vec2<i32>(2147483647i, 2147483647i), Struct_1(true, vec2<u32>(1u, 26802u)), Struct_1(false, vec2<u32>(59950u, 4294967295u))), Struct_2(vec3<i32>(-1i, 0i, 1i), vec2<i32>(0i, 27788i), Struct_1(false, vec2<u32>(1u, 39374u)), Struct_1(true, vec2<u32>(0u, 0u))), Struct_2(vec3<i32>(17156i, i32(-2147483648), -76394i), vec2<i32>(46383i, 38227i), Struct_1(false, vec2<u32>(4294967295u, 29023u)), Struct_1(false, vec2<u32>(0u, 95932u))), Struct_2(vec3<i32>(-15827i, 2147483647i, 1i), vec2<i32>(-1i, 1i), Struct_1(true, vec2<u32>(25244u, 79585u)), Struct_1(true, vec2<u32>(12740u, 1u))), Struct_2(vec3<i32>(6355i, 4749i, i32(-2147483648)), vec2<i32>(75824i, 45174i), Struct_1(true, vec2<u32>(1u, 4294967295u)), Struct_1(true, vec2<u32>(4294967295u, 29079u))), Struct_2(vec3<i32>(-43950i, 0i, 29408i), vec2<i32>(2147483647i, -26203i), Struct_1(true, vec2<u32>(0u, 4294967295u)), Struct_1(false, vec2<u32>(0u, 4294967295u))), Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), 41969i), vec2<i32>(7698i, -48910i), Struct_1(true, vec2<u32>(30295u, 36344u)), Struct_1(true, vec2<u32>(10020u, 22790u))), Struct_2(vec3<i32>(-53408i, -3540i, 1i), vec2<i32>(-1i, -7463i), Struct_1(false, vec2<u32>(45569u, 33215u)), Struct_1(false, vec2<u32>(4294967295u, 34510u))), Struct_2(vec3<i32>(19761i, -4361i, -1i), vec2<i32>(1i, -19594i), Struct_1(true, vec2<u32>(19312u, 31298u)), Struct_1(true, vec2<u32>(1u, 4294967295u))), Struct_2(vec3<i32>(i32(-2147483648), -19949i, 0i), vec2<i32>(1i, 44269i), Struct_1(true, vec2<u32>(18556u, 10101u)), Struct_1(true, vec2<u32>(0u, 30142u))), Struct_2(vec3<i32>(14844i, 2147483647i, i32(-2147483648)), vec2<i32>(1i, 10494i), Struct_1(false, vec2<u32>(4294967295u, 0u)), Struct_1(true, vec2<u32>(0u, 60045u))), Struct_2(vec3<i32>(2147483647i, 0i, 0i), vec2<i32>(-63183i, 36809i), Struct_1(false, vec2<u32>(1u, 91756u)), Struct_1(false, vec2<u32>(41672u, 9640u))), Struct_2(vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec2<i32>(35761i, i32(-2147483648)), Struct_1(false, vec2<u32>(39713u, 17402u)), Struct_1(true, vec2<u32>(3169u, 0u))), Struct_2(vec3<i32>(-23207i, 0i, 20797i), vec2<i32>(-11138i, -37098i), Struct_1(true, vec2<u32>(1u, 4294967295u)), Struct_1(true, vec2<u32>(32076u, 4294967295u))), Struct_2(vec3<i32>(-29284i, -22721i, 2147483647i), vec2<i32>(-17117i, 11974i), Struct_1(true, vec2<u32>(42853u, 46624u)), Struct_1(true, vec2<u32>(0u, 14446u))), Struct_2(vec3<i32>(2147483647i, 2147483647i, 50770i), vec2<i32>(28838i, 1i), Struct_1(false, vec2<u32>(0u, 38361u)), Struct_1(false, vec2<u32>(10205u, 74672u))), Struct_2(vec3<i32>(-33201i, 0i, 0i), vec2<i32>(-19873i, 0i), Struct_1(false, vec2<u32>(0u, 38075u)), Struct_1(true, vec2<u32>(0u, 0u))));

var<private> global2: array<Struct_2, 23>;

var<private> global3: array<vec3<u32>, 32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<bool>) -> vec2<bool> {
    var var_0 = u_input.a.x | global0.x;
    let var_1 = ~_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, max(_wgslsmith_add_u32(26908u, u_input.a.x), u_input.a.x)), countOneBits(_wgslsmith_div_u32(u_input.a.x, 49810u | global0.x)));
    let var_2 = ~(-(~vec4<i32>(1i, abs(2147483647i), abs(-36688i), u_input.c)));
    global3 = array<vec3<u32>, 32>();
    var_0 = firstTrailingBit(26005u | _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, 12972u, global0.x, global0.x), vec4<u32>(var_1, global0.x, 4294967295u, 1u), true), ~vec4<u32>(21706u, 7140u, var_1, 38672u)), countOneBits(1u)));
    return !vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-806f, -591f, arg_1.x)) + -748f) < _wgslsmith_f_op_f32(175f - _wgslsmith_f_op_f32(trunc(-358f))), arg_1.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> u32 {
    var var_0 = select(vec2<bool>(arg_0.x, select(!all(vec3<bool>(true, false, true)), arg_1, countOneBits(global0.x) == 0u)), !select(vec2<bool>(true, true), func_3(select(vec4<i32>(u_input.c, -20618i, u_input.c, 2147483647i), vec4<i32>(u_input.c, 1i, u_input.c, 2147483647i), arg_0), select(vec2<bool>(false, arg_0.x), arg_0.wz, arg_1)), all(!vec4<bool>(false, arg_1, arg_1, true))), arg_0.zw);
    var var_1 = all(select(select(select(func_3(vec4<i32>(u_input.b, -23127i, u_input.c, -2147483647i), vec2<bool>(true, false)), func_3(vec4<i32>(45245i, u_input.c, u_input.c, 2396i), arg_0.yx), false), func_3(-vec4<i32>(-1i, u_input.c, -2147483647i, 820i), vec2<bool>(arg_0.x, false)), !(!vec2<bool>(true, arg_1))), arg_0.yw, (-824f < _wgslsmith_f_op_f32(floor(550f))) | arg_0.x));
    var_0 = vec2<bool>(true, true);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-158f, -149f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1194f, _wgslsmith_f_op_f32(f32(-1f) * -881f)))));
    var var_3 = ~((u_input.a.xy ^ vec2<u32>(1u, global0.x)) & (global0.xx | ~countOneBits(global0.zx)));
    return ~max(~0u, var_3.x);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_3) -> vec4<i32> {
    global0 = firstLeadingBit(vec3<u32>(4294967295u, func_2(vec4<bool>(false, select(arg_2.a.x, arg_2.a.x, arg_2.a.x), true, true), true), firstLeadingBit(u_input.a.x)));
    let var_0 = false & arg_2.a.x;
    return vec4<i32>(i32(-1i) * -(countOneBits(u_input.c) << (1u % 32u)), arg_0, reverseBits(u_input.b), u_input.c);
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: f32) -> vec3<i32> {
    global0 = _wgslsmith_clamp_vec3_u32(~max(~u_input.a, select(vec3<u32>(0u, 1u, global0.x), global3[_wgslsmith_index_u32(54993u, 32u)], vec3<bool>(true, true, arg_0))), select(select(abs(vec3<u32>(1u, global0.x, global0.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, u_input.a.x, 28364u), vec3<u32>(50293u, 42373u, u_input.a.x)), true), _wgslsmith_div_vec3_u32(u_input.a | global3[_wgslsmith_index_u32(1u, 32u)], global3[_wgslsmith_index_u32(reverseBits(global0.x), 32u)]), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, arg_0, false), true)), vec3<u32>(~max(global0.x, global0.x), ~reverseBits(global0.x), ~(~8572u))) >> (max(~global3[_wgslsmith_index_u32(u_input.a.x, 32u)], global3[_wgslsmith_index_u32(~(~(~u_input.a.x)), 32u)]) % vec3<u32>(32u));
    let var_0 = Struct_2(_wgslsmith_mod_vec3_i32(arg_2, vec3<i32>(max(13704i, u_input.b), abs(~(-13749i)), 51209i << ((u_input.a.x | u_input.a.x) % 32u))), vec2<i32>(1i, 0i), Struct_1(false, vec2<u32>(1u, _wgslsmith_mult_u32(global0.x, 21276u))), Struct_1(true, countOneBits(~(vec2<u32>(global0.x, global0.x) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))))));
    let var_1 = _wgslsmith_f_op_f32(arg_3 + 1000f);
    var var_2 = Struct_3(vec4<bool>(var_0.d.a, !arg_0, false, _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(-2147483647i, 10967i, -7432i, -29989i))) > -45882i));
    let var_3 = vec2<bool>(!var_2.a.x, !(arg_2.x <= ((-55820i << (var_0.d.b.x % 32u)) ^ -35188i)));
    return _wgslsmith_mult_vec3_i32(countOneBits(_wgslsmith_add_vec3_i32(max(vec3<i32>(arg_2.x, var_0.a.x, arg_1.x), vec3<i32>(var_0.a.x, -1i, u_input.c) >> (vec3<u32>(u_input.a.x, var_0.d.b.x, global0.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(~arg_1.xwy, vec3<i32>(arg_1.x, var_0.b.x, u_input.b)))), ~vec3<i32>(-1i, ~(-u_input.b), ~var_0.b.x | arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 32>();
    let var_0 = vec2<bool>(false, u_input.b >= 0i);
    var var_1 = Struct_3(!select(vec4<bool>(var_0.x, !var_0.x, any(var_0), false), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, var_0.x), true), vec4<bool>(true, any(vec4<bool>(false, false, true, false)), true, true)));
    global1 = array<Struct_2, 21>();
    global1 = array<Struct_2, 21>();
    let var_2 = all(!var_1.a);
    var var_3 = ~func_4(var_0.x, _wgslsmith_mod_vec4_i32(max(max(vec4<i32>(-45389i, 48849i, 17467i, u_input.b), vec4<i32>(u_input.c, u_input.b, u_input.c, u_input.c)), func_1(u_input.c, -1040f, Struct_3(var_1.a))), ~(-vec4<i32>(u_input.c, 0i, u_input.b, u_input.b))), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(1461i, u_input.b, 2147483647i)), vec3<i32>(-23143i, 0i, u_input.c)) << (global3[_wgslsmith_index_u32(1u, 32u)] % vec3<u32>(32u)), _wgslsmith_f_op_f32(floor(1f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mult_u32(~u_input.a.x, ~_wgslsmith_clamp_u32(u_input.a.x, global0.x, u_input.a.x)), global0.x, _wgslsmith_clamp_u32(u_input.a.x, ~(~u_input.a.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(10405u, 49234u, 130599u), vec3<u32>(global0.x, global0.x, global0.x)))));
}

