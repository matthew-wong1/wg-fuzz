struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: Struct_2,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(38266u, 84424u), false, 1u);

var<private> global1: array<Struct_5, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec4<u32> {
    var var_0 = ~(~(i32(-1i) * -abs(-2147483647i)));
    let var_1 = _wgslsmith_f_op_f32(532f * _wgslsmith_f_op_f32(f32(-1f) * -128f));
    var_0 = i32(-1i) * -_wgslsmith_mult_i32(-2147483647i, _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -25659i, 62813i), vec3<i32>(2147483647i, -2147483647i, 78711i))));
    let var_2 = vec4<i32>(-12073i, firstLeadingBit(~2147483647i) << (min(_wgslsmith_clamp_u32(47845u, 1u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(global0.a.x, u_input.a))) % 32u), max(_wgslsmith_clamp_i32(-37257i, 2147483647i, -1i), ~1i) | -(-1i >> (global0.c % 32u)), abs(-select(25824i, -2147483647i, global0.b))) ^ vec4<i32>(abs(firstLeadingBit(~(-42570i))), firstLeadingBit(1i), i32(-1i) * -1i, _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, -8646i), -22194i << (global0.a.x % 32u)), _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 1i), vec2<i32>(-29760i, -60079i))));
    global1 = array<Struct_5, 14>();
    return ~select(select(vec4<u32>(~u_input.a, ~u_input.a, u_input.a, ~34788u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, global0.c, global0.c, 43210u), max(vec4<u32>(45484u, 57559u, 45693u, 0u), vec4<u32>(0u, 32976u, u_input.a, 35253u))), !vec4<bool>(global0.b, true, false, false)), select(~vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a), vec4<u32>(reverseBits(global0.a.x), ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 96604u, 1u, 17327u), vec4<u32>(u_input.a, 4294967295u, global0.c, 0u)), u_input.a), any(vec3<bool>(false, global0.b, false))), any(!vec2<bool>(global0.b, global0.b)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1347f)))));
    let var_1 = true;
    global1 = array<Struct_5, 14>();
    let var_2 = Struct_3(~arg_2.a, arg_1.b, arg_2.c, true, 16339i);
    let var_3 = vec2<i32>(arg_2.e, _wgslsmith_div_i32(var_2.e, reverseBits(~(-1i)) | arg_1.b));
    return 1u;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> f32 {
    global1 = array<Struct_5, 14>();
    let var_0 = Struct_1(~global0.a & ~global0.a, !all(vec2<bool>(global0.b, true)), func_4(!select(vec2<bool>(global0.b, global0.b), vec2<bool>(false, false), global0.b), Struct_4(global0.b, -1i), Struct_3(func_3(), i32(-1i) * -2147483647i, Struct_2(u_input.a, global0.b), true, 2147483647i)) & ~abs(abs(2817u)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1103f);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>) -> u32 {
    let var_0 = -961f;
    var var_1 = vec3<i32>(abs(-1393i), -29017i, _wgslsmith_sub_i32(0i, i32(-1i) * -1i));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1381f, -1279f, -1697f, 2627f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-496f, _wgslsmith_f_op_f32(func_2(var_0, vec3<f32>(248f, var_0, -367f))), _wgslsmith_div_f32(-555f, -192f), _wgslsmith_f_op_f32(-var_0)))));
    var_1 = vec3<i32>(~(~(-firstLeadingBit(-64023i))), -27704i, select(var_1.x, ~_wgslsmith_sub_i32(-var_1.x, -31128i), !all(arg_0) || !arg_1.x));
    global1 = array<Struct_5, 14>();
    return 36931u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1((vec2<u32>(global0.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(116146u, u_input.a, 34980u))) ^ _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(global0.a, global0.a), min(global0.a, vec2<u32>(30238u, 1u)))) << (vec2<u32>(global0.a.x, 0u) % vec2<u32>(32u)), true, func_1(vec2<bool>(true, true), select(vec4<bool>(false, false, global0.b, false), !vec4<bool>(global0.b, global0.b, false, true), !vec4<bool>(false, false, global0.b, false))) >> (u_input.a % 32u));
    var var_1 = ~(reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-38227i, -23506i))) << ((abs(min(global0.a, var_0.a)) ^ vec2<u32>(func_4(vec2<bool>(false, true), Struct_4(var_0.b, -5570i), Struct_3(vec4<u32>(53785u, 1u, 57397u, u_input.a), 0i, Struct_2(1u, global0.b), global0.b, -33152i)), max(var_0.a.x, global0.c))) % vec2<u32>(32u)));
    var var_2 = Struct_3(vec4<u32>(~137282u ^ func_4(!vec2<bool>(var_0.b, global0.b), Struct_4(true, -36012i), Struct_3(vec4<u32>(u_input.a, global0.c, 1u, u_input.a), var_1.x, Struct_2(0u, false), false, 34467i)), ~_wgslsmith_div_u32(min(1u, 20400u), func_3().x), u_input.a, _wgslsmith_mod_u32(var_0.c, global0.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(36656i, var_1.x, -1235i, var_1.x), vec4<i32>(1i, var_1.x, var_1.x, var_1.x)), select(vec4<i32>(-2147483647i, var_1.x, var_1.x, -25632i), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_0.b, true, true))), 15852i, 43472i), -_wgslsmith_div_vec3_i32(~vec3<i32>(-1i, 9633i, var_1.x), vec3<i32>(2147483647i, var_1.x, var_1.x))), Struct_2(1u, false & all(!vec2<bool>(true, global0.b))), any(vec4<bool>(true | any(vec3<bool>(true, var_0.b, global0.b)), var_1.x >= _wgslsmith_add_i32(0i, var_1.x), ~var_0.a.x != 1396u, true)), 1i ^ -_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, -31668i, 0i), reverseBits(vec3<i32>(var_1.x, 3225i, var_1.x))));
    var_2 = Struct_3((vec4<u32>(~var_0.a.x, func_4(vec2<bool>(var_2.d, false), Struct_4(var_2.d, 2147483647i), Struct_3(vec4<u32>(var_0.c, 13704u, u_input.a, var_2.a.x), -24579i, Struct_2(36912u, true), false, -3183i)), var_2.a.x ^ global0.c, ~u_input.a) ^ _wgslsmith_add_vec4_u32(vec4<u32>(var_0.c, 50118u, 1u, 0u) ^ vec4<u32>(68300u, var_0.c, var_0.c, u_input.a), select(var_2.a, vec4<u32>(var_2.c.a, var_2.a.x, var_2.c.a, u_input.a), global0.b))) | _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(var_2.a, _wgslsmith_mod_vec4_u32(var_2.a, var_2.a)), var_2.a), _wgslsmith_mod_i32(var_1.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_2.e, var_2.b, -2147483647i)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(54153u, 29742u, global0.c), vec3<u32>(u_input.a, 4294967295u, 76376u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(select(vec3<i32>(2147483647i, -66894i, var_1.x), vec3<i32>(var_2.e, 0i, -2147483647i), vec3<bool>(global0.b, var_2.c.b, var_0.b)), select(vec3<i32>(-1920i, var_1.x, 2147483647i), vec3<i32>(var_2.b, var_2.e, 2147483647i), false)))), var_2.c, any(select(!vec2<bool>(var_2.c.b, true), select(vec2<bool>(true, true), vec2<bool>(true, true), global0.b != false), all(vec4<bool>(var_2.c.b, false, global0.b, false)))), ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(-28890i, var_1.x) << (var_0.a % vec2<u32>(32u)), -vec2<i32>(-1i, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(~4294967295u, select(_wgslsmith_mod_u32(4294967295u, var_2.a.x), 34055u ^ global0.c, var_0.b), global0.a.x, 20100u), ~(~(~vec4<u32>(global0.a.x, var_2.c.a, u_input.a, 16528u))), vec4<bool>(true, false, global0.b, var_0.b)), ~1045u, 25620u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-124f + _wgslsmith_f_op_f32(f32(-1f) * -919f)) + 1882f)), var_2.a);
}

