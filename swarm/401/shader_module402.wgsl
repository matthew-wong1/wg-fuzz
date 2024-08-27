struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: f32 = 611f;

var<private> global2: array<vec3<f32>, 29>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: u32, arg_3: Struct_4) -> vec2<bool> {
    let var_0 = Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, min(_wgslsmith_mod_i32(-36881i, -2328i), arg_3.c.c.a.x >> (17644u % 32u))), arg_3.d.c.a), arg_1.c.b);
    let var_1 = 2147483647i & arg_1.d.c.a.x;
    let var_2 = _wgslsmith_div_u32(arg_2, ~min(_wgslsmith_add_u32(~7598u, arg_2 ^ arg_2), ~arg_1.c.b.b.x & (45761u | arg_1.d.b.a.x)));
    return vec2<bool>(arg_3.c.a, 604f != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.a.c.x - _wgslsmith_f_op_f32(select(var_0.b.c.x, var_0.b.c.x, true))))));
}

fn func_2(arg_0: u32, arg_1: bool) -> f32 {
    global0 = array<Struct_2, 9>();
    var var_0 = !(!select(func_3(_wgslsmith_f_op_f32(select(491f, 1026f, true)), Struct_4(Struct_1(vec3<u32>(arg_0, arg_0, 49822u), vec3<u32>(arg_0, 21236u, 0u), vec2<f32>(2105f, 1337f), vec4<u32>(4561u, arg_0, arg_0, 28068u)), vec2<f32>(-2593f, -1175f), Struct_3(arg_1, Struct_1(vec3<u32>(arg_0, 31024u, arg_0), vec3<u32>(arg_0, 24162u, 1u), vec2<f32>(1852f, -1000f), vec4<u32>(arg_0, arg_0, arg_0, arg_0)), Struct_2(vec2<i32>(-1i, -80613i), Struct_1(vec3<u32>(arg_0, 0u, 1u), vec3<u32>(21427u, arg_0, arg_0), vec2<f32>(-565f, -267f), vec4<u32>(arg_0, arg_0, 0u, arg_0)))), Struct_3(false, Struct_1(vec3<u32>(9285u, arg_0, arg_0), vec3<u32>(arg_0, 0u, 517u), vec2<f32>(271f, -943f), vec4<u32>(arg_0, 21377u, arg_0, 14252u)), Struct_2(vec2<i32>(-1i, u_input.a), Struct_1(vec3<u32>(1u, arg_0, arg_0), vec3<u32>(55317u, 2592u, arg_0), vec2<f32>(348f, -331f), vec4<u32>(arg_0, 1u, 488u, 4294967295u))))), ~34691u, Struct_4(Struct_1(vec3<u32>(arg_0, 1u, 56650u), vec3<u32>(arg_0, 4294967295u, 6119u), vec2<f32>(245f, -404f), vec4<u32>(arg_0, 40736u, 62149u, 0u)), vec2<f32>(-1000f, 375f), Struct_3(arg_1, Struct_1(vec3<u32>(1u, 1u, arg_0), vec3<u32>(arg_0, 31680u, arg_0), vec2<f32>(419f, -2059f), vec4<u32>(0u, arg_0, arg_0, 0u)), global0[_wgslsmith_index_u32(arg_0, 9u)]), Struct_3(true, Struct_1(vec3<u32>(arg_0, 1u, 19962u), vec3<u32>(arg_0, arg_0, 13773u), vec2<f32>(917f, 324f), vec4<u32>(32973u, 0u, 1u, arg_0)), global0[_wgslsmith_index_u32(0u, 9u)]))), vec2<bool>(arg_1, true), select(vec2<bool>(arg_1, true), vec2<bool>(true, arg_1), select(true, arg_1, arg_1))));
    var var_1 = vec3<bool>(!(u_input.a != (u_input.a ^ 23951i)), true, !arg_1);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-263f, -560f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(707f - _wgslsmith_f_op_f32(857f - -268f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-361f))))));
    let var_3 = ~vec2<u32>(0u & arg_0, ~_wgslsmith_add_u32(~42246u, ~arg_0));
    return _wgslsmith_f_op_f32(var_2 * 869f);
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = !(!(!vec2<bool>(select(false, true, arg_0), u_input.a >= 52499i)));
    let var_1 = arg_2.zy;
    global0 = array<Struct_2, 9>();
    var var_2 = abs(41391u);
    var_2 = ~(1u & _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, 0u), ~72318u, 33049u), _wgslsmith_div_u32(min(0u, 17481u), _wgslsmith_dot_vec2_u32(vec2<u32>(8422u, 4294967295u), vec2<u32>(4294967295u, 5286u)))));
    return Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u) << ((vec3<u32>(4294967295u, 1u, 14882u) << (select(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(72322u, 28933u, 0u), arg_1) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(1u, 1u, 1u)), ~max(vec3<u32>(1u, 1u, 1u), vec3<u32>(~105752u, ~76218u, 1u)), _wgslsmith_f_op_vec2_f32(arg_2.yx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2.zy, vec2<f32>(arg_2.x, 572f), true)))), ~(~firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u))));
}

fn func_1(arg_0: bool) -> vec2<i32> {
    global1 = 442f;
    let var_0 = Struct_3(true, func_4(arg_0, !select(vec3<bool>(arg_0, true, arg_0), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, arg_0, arg_0)), false), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2277f, _wgslsmith_div_f32(1000f, 576f), _wgslsmith_f_op_f32(floor(1093f)), _wgslsmith_f_op_f32(func_2(48717u, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-155f, 1000f, -1930f, 948f)), true))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 4294967295u), 9u)]);
    return ~(~_wgslsmith_div_vec2_i32(vec2<i32>(1i, 16793i), vec2<i32>(1i, abs(var_0.c.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_mult_vec2_i32(~firstLeadingBit(vec2<i32>(0i, u_input.a)), func_1(true)), Struct_1(~vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(select(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(53506u, 0u, 1u)), vec3<bool>(true, true, true)), select(vec3<u32>(3944u, 4294967295u, 6171u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 20951u, 45372u), vec3<u32>(4294967295u, 51909u, 74119u)), any(vec2<bool>(false, false)))), vec2<f32>(1f, 1f), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(39957u, 102237u, 52134u, 14406u), vec4<u32>(13826u, 10052u, 1u, 44357u))))));
    let var_1 = false;
    var var_2 = vec4<u32>(_wgslsmith_div_u32(abs(var_0.b.b.x), var_0.b.b.x), 4294967295u, ~(~(var_0.b.b.x << (_wgslsmith_mod_u32(0u, 4294967295u) % 32u))), var_0.b.a.x);
    var var_3 = ~(~var_0.b.a.x);
    let var_4 = var_0.b;
    global0 = array<Struct_2, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1204f, _wgslsmith_f_op_f32(max(530f, 446f)))), min((firstTrailingBit(vec4<i32>(u_input.a, u_input.a, var_0.a.x, u_input.a)) & vec4<i32>(-93824i, u_input.a, -2036i, -24467i)) | _wgslsmith_mod_vec4_i32(abs(vec4<i32>(13783i, -1i, -29358i, 13621i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 50878i, var_0.a.x, var_0.a.x), vec4<i32>(0i, var_0.a.x, u_input.a, var_0.a.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a, 15206i, 0i) ^ vec4<i32>(3422i, 1i, -2147483647i, -21314i), vec4<i32>(var_0.a.x, u_input.a, u_input.a, -1i)) & (select(vec4<i32>(var_0.a.x, -45467i, var_0.a.x, u_input.a), vec4<i32>(u_input.a, u_input.a, var_0.a.x, var_0.a.x), vec4<bool>(var_1, var_1, false, true)) ^ vec4<i32>(-2147483647i, -212i, 0i, var_0.a.x))), min(vec4<i32>(var_0.a.x, 42817i, max(-u_input.a, 28017i), u_input.a >> (_wgslsmith_add_u32(4294967295u, 0u) % 32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(min(var_0.a.x, -1i), 27581i, ~u_input.a, u_input.a << (var_0.b.d.x % 32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.x, u_input.a, u_input.a, u_input.a), -vec4<i32>(-2147483647i, u_input.a, -6876i, 0i)))), abs(-9910i | u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-964f, _wgslsmith_f_op_f32(-var_0.b.c.x), -2029f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.c.x, 165f, var_0.b.c.x) + vec3<f32>(var_0.b.c.x, -2317f, var_4.c.x)))))));
}

