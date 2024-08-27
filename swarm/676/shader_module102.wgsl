struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: Struct_4 = Struct_4(1i, Struct_1(true, vec4<i32>(-1i, 15353i, -34456i, 59477i)));

var<private> global2: i32;

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(true, vec4<i32>(-19798i, 0i, 0i, 7203i)), Struct_1(false, vec4<i32>(6608i, 0i, i32(-2147483648), -1i)), Struct_1(false, vec4<i32>(1i, -12492i, 28999i, 13572i)), Struct_1(true, vec4<i32>(1i, 0i, 12927i, 0i)), Struct_1(true, vec4<i32>(0i, -36055i, 68016i, -18809i)), Struct_1(false, vec4<i32>(-46014i, -1156i, -4009i, -52214i)), Struct_1(false, vec4<i32>(-2759i, 2147483647i, 20079i, -19668i)), Struct_1(true, vec4<i32>(-1i, -14361i, 0i, 3642i)), Struct_1(true, vec4<i32>(-27569i, 6440i, -28922i, -12162i)), Struct_1(true, vec4<i32>(i32(-2147483648), i32(-2147483648), -48948i, i32(-2147483648))), Struct_1(false, vec4<i32>(0i, -28346i, 14117i, 0i)), Struct_1(true, vec4<i32>(-6073i, -21885i, -14164i, 0i)), Struct_1(true, vec4<i32>(-56080i, -26376i, 2147483647i, 45891i)), Struct_1(true, vec4<i32>(-16608i, 47388i, 4582i, i32(-2147483648))), Struct_1(true, vec4<i32>(-46351i, -45871i, -24785i, 1i)), Struct_1(false, vec4<i32>(-1i, 2147483647i, -18939i, -22869i)), Struct_1(true, vec4<i32>(-1i, 73174i, -26033i, 0i)), Struct_1(false, vec4<i32>(2147483647i, 1i, i32(-2147483648), -66308i)), Struct_1(true, vec4<i32>(0i, i32(-2147483648), -1i, 2147483647i)), Struct_1(true, vec4<i32>(28304i, 59728i, 6886i, -32960i)), Struct_1(false, vec4<i32>(0i, 34007i, -5585i, 2147483647i)), Struct_1(true, vec4<i32>(i32(-2147483648), 25448i, 7629i, -18452i)), Struct_1(false, vec4<i32>(56083i, 0i, i32(-2147483648), -25106i)), Struct_1(false, vec4<i32>(-43795i, -30674i, i32(-2147483648), 2147483647i)), Struct_1(false, vec4<i32>(i32(-2147483648), -313i, -70523i, -4255i)), Struct_1(false, vec4<i32>(9581i, i32(-2147483648), i32(-2147483648), -30226i)), Struct_1(false, vec4<i32>(40842i, 2147483647i, -1168i, 12237i)));

var<private> global4: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32) -> u32 {
    var var_0 = arg_0.a;
    let var_1 = ~abs(u_input.c.zz >> (u_input.c.xz % vec2<u32>(32u)));
    global1 = Struct_4(-14920i, global1.b);
    let var_2 = any(!global4[_wgslsmith_index_u32(var_1.x, 14u)]);
    global2 = -(arg_0.b.x & 66270i);
    return _wgslsmith_add_u32(~(~71627u), abs(arg_2));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: bool) -> vec4<u32> {
    global1 = Struct_4(_wgslsmith_clamp_i32(-1i, arg_0.a, -global1.b.b.x | _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 63650i), countOneBits(arg_0.b.b.wy))), global1.b);
    let var_0 = vec4<bool>(!arg_2, !arg_2, global1.b.b.x >= u_input.a, any(select(!select(vec2<bool>(arg_2, global1.b.a), vec2<bool>(global1.b.a, arg_0.b.a), arg_2), !select(vec2<bool>(global1.b.a, arg_2), vec2<bool>(global1.b.a, arg_0.b.a), vec2<bool>(arg_2, false)), all(select(vec2<bool>(arg_2, false), vec2<bool>(true, arg_2), false)))));
    var var_1 = global1.b;
    let var_2 = ~(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(7646u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(~u_input.c.x, 8u)], select(u_input.d, global0[_wgslsmith_index_u32(4294967295u, 8u)], var_0.x))), 8u)] ^ _wgslsmith_clamp_u32(min(abs(u_input.c.x), ~1u), max(u_input.d, countOneBits(global0[_wgslsmith_index_u32(arg_1, 8u)])), 59161u));
    var var_3 = -firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_0.b.b.x, -3871i), 42934i), _wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-33871i, -2147483647i, u_input.b), vec3<i32>(arg_0.b.b.x, arg_0.b.b.x, arg_0.a)))));
    return vec4<u32>(arg_1, 1u & global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(33294u) >> (abs(u_input.d) % 32u), 4294967295u, u_input.d), 8u)], 55186u, 7441u >> (_wgslsmith_add_u32(~18624u, (55896u ^ arg_1) & (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1, 8u)], 8u)] ^ 1u)) % 32u));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    global2 = -6459i;
    var var_0 = vec3<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(320f, 1000f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-103f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-789f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-809f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1742f)) * -203f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1235f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -130f), _wgslsmith_f_op_f32(1244f * 661f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 1918f, var_0.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-130f, var_0.x, var_0.x)))))) * vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x), var_0.x, !global1.b.a)), -963f, 1426f));
    var var_1 = _wgslsmith_add_vec4_u32(~vec4<u32>(~4294967295u, u_input.c.x, global0[_wgslsmith_index_u32(0u & u_input.c.x, 8u)], ~6177u), vec4<u32>(40278u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 7838u, 4294967295u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(20674u, 8u)], u_input.d, 4294967295u, global0[_wgslsmith_index_u32(26663u, 8u)])), global0[_wgslsmith_index_u32(func_2(arg_2, vec3<f32>(var_0.x, 640f, 2092f), 4294967295u), 8u)], ~0u) & (_wgslsmith_mult_vec4_u32(vec4<u32>(25646u, 1u, u_input.d, global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.d, 8u)], u_input.d, 63941u)) ^ (vec4<u32>(u_input.c.x, 3331u, 1u, u_input.d) >> (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13480u, 8u)], 8u)], 1u, u_input.d, 0u) % vec4<u32>(32u))))) & select(func_3(Struct_4(firstLeadingBit(arg_2.b.x), Struct_1(arg_0, global1.b.b)), ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, u_input.d), 8u)], true), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 72193u, global0[_wgslsmith_index_u32(28286u, 8u)], u_input.d), vec4<u32>(33298u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 8u)], 8u)])), select(vec4<u32>(global0[_wgslsmith_index_u32(21851u, 8u)], 4294967295u, u_input.d, 3817u), _wgslsmith_div_vec4_u32(vec4<u32>(9375u, 4294967295u, 43297u, 1u), vec4<u32>(u_input.d, global0[_wgslsmith_index_u32(0u, 8u)], 24736u, 4294967295u)), !vec4<bool>(arg_2.a, false, arg_0, global1.b.a))), all(select(vec4<bool>(true, true, global1.b.a, arg_2.a), !vec4<bool>(false, true, arg_0, arg_0), global1.b.a || arg_2.a)));
    global2 = u_input.a;
    return abs(var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<bool>, 14>();
    var var_0 = vec4<u32>(~4128u, 41083u, 1u ^ _wgslsmith_div_u32(global0[_wgslsmith_index_u32(~(u_input.c.x ^ 12402u), 8u)], ~0u), select(~global0[_wgslsmith_index_u32(~u_input.c.x, 8u)], ~u_input.d, all(!vec4<bool>(false, global1.b.a, true, global1.b.a))) | 69636u);
    let var_1 = vec2<f32>(1f, 1f);
    var_0 = ~vec4<u32>(reverseBits(~0u), func_1(global1.b.a | global1.b.a, -global1.b.b, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53667u, 8u)], 27u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(41575u, 84708u, var_0.x, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 39048u, 0u, global0[_wgslsmith_index_u32(u_input.d, 8u)]), vec4<u32>(64852u, global0[_wgslsmith_index_u32(15065u, 8u)], u_input.c.x, var_0.x))), _wgslsmith_mod_u32(1u, func_3(Struct_4(u_input.b, Struct_1(global1.b.a, global1.b.b)), 4294967295u, false).x)) ^ firstTrailingBit(_wgslsmith_clamp_vec4_u32(select(~vec4<u32>(var_0.x, global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], 0u), vec4<u32>(4294967295u, 34744u, 4294967295u, global0[_wgslsmith_index_u32(9159u, 8u)]) ^ vec4<u32>(4294967295u, 1u, var_0.x, 44150u), var_1.x > var_1.x), vec4<u32>(1u, firstTrailingBit(15022u), select(var_0.x, 0u, global1.b.a), 0u), ~vec4<u32>(var_0.x, var_0.x, u_input.d, 0u)));
    var var_2 = global1.b.b.x;
    let var_3 = !select(vec2<bool>(abs(global0[_wgslsmith_index_u32(1u, 8u)]) == ~global0[_wgslsmith_index_u32(27285u, 8u)], true), !select(vec2<bool>(global1.b.a, global1.b.a), select(vec2<bool>(false, true), vec2<bool>(global1.b.a, global1.b.a), vec2<bool>(global1.b.a, false)), true), vec2<bool>(global1.b.a, true));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.b, _wgslsmith_sub_u32(var_0.x, 37142u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(min(1914f, -119f)), 808f, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -245f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(-var_1.x), -2061f, _wgslsmith_f_op_f32(abs(var_1.x)))))), var_1, 22260u);
}

