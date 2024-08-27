struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(i32(-2147483648), -1i, 1i, 0i), vec4<i32>(-1i, -36001i, -18888i, -28332i), vec4<i32>(0i, 23986i, -1i, 36710i), vec4<i32>(-23626i, 2147483647i, 19025i, 41285i), vec4<i32>(0i, 19208i, 9401i, 2147483647i), vec4<i32>(2147483647i, 0i, 38070i, -7563i), vec4<i32>(-1i, 16249i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 2147483647i), vec4<i32>(33504i, i32(-2147483648), 41865i, -18296i), vec4<i32>(9429i, 10327i, -69886i, 74694i), vec4<i32>(-1882i, 15171i, -1i, -35110i), vec4<i32>(-1i, 65176i, -12729i, 0i), vec4<i32>(10167i, -1i, -1i, i32(-2147483648)), vec4<i32>(28944i, 1i, -19788i, -51368i), vec4<i32>(-2652i, -1i, -23447i, 0i), vec4<i32>(2262i, 10973i, 12020i, 1i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = !arg_0.c;
    let var_1 = arg_0.b.a ^ ~_wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(u_input.d, 4294967295u)), vec2<u32>(firstLeadingBit(4294967295u), min(60224u, 8900u)));
    var var_2 = min(u_input.a, _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(-2147483647i, max(-33953i, 1109i))), u_input.a >> (vec2<u32>(_wgslsmith_mult_u32(var_1, arg_0.b.a), ~var_1) % vec2<u32>(32u))));
    let var_3 = select(~vec3<i32>(u_input.c, u_input.b, var_2.x), vec3<i32>(_wgslsmith_div_i32(~(i32(-1i) * -11254i), firstLeadingBit(0i)), u_input.c, u_input.b), !vec3<bool>(-728f == _wgslsmith_f_op_f32(sign(global0.b.b)), !(-298f > arg_0.a.x), !all(vec3<bool>(false, true, false))));
    var_2 = vec2<i32>(0i, ~(-1067i) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.d.x, 23607u, arg_0.b.a), firstLeadingBit(arg_0.d)) % 32u));
    return vec2<bool>(true, true);
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: u32) -> bool {
    global0 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global0.a))), vec4<f32>(1035f, -592f, _wgslsmith_f_op_f32(arg_0.a * arg_0.c.b), -358f)), _wgslsmith_f_op_vec4_f32(global0.a + vec4<f32>(1305f, 1091f, -1886f, _wgslsmith_f_op_f32(global0.a.x + -764f)))), Struct_1(global0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -549f))), !global0.c | global0.c, global0.d >> (global0.d % vec3<u32>(32u)));
    let var_0 = global0.a.ww;
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - global0.b.b) * _wgslsmith_f_op_f32(f32(-1f) * -2196f)))) > arg_0.c.b, global0.c);
    var_1 = select(select(!(!vec2<bool>(global0.c, global0.c)), vec2<bool>(true, all(!vec2<bool>(var_1.x, true))), (-25662i | (arg_1 | -67410i)) == -_wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), select(select(!(!vec2<bool>(global0.c, true)), !select(vec2<bool>(global0.c, true), vec2<bool>(global0.c, global0.c), vec2<bool>(true, global0.c)), !select(vec2<bool>(false, global0.c), vec2<bool>(global0.c, true), vec2<bool>(global0.c, var_1.x))), vec2<bool>(all(vec3<bool>(global0.c, global0.c, false)), all(func_3(Struct_3(vec4<f32>(1654f, global0.b.b, 270f, var_0.x), Struct_1(0u, -1000f), false, global0.d)))), !(~arg_1 != countOneBits(u_input.c))), !vec2<bool>(all(!vec2<bool>(var_1.x, true)), var_1.x));
    var var_2 = select(2147483647i, reverseBits(-1i), var_1.x);
    return var_1.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = vec4<u32>(70918u, select(_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0.a, u_input.d, ~0u), vec3<u32>(arg_0.a, ~global0.d.x, 1u)), select(abs(~4294967295u), ~arg_0.a, false), !(!(!arg_1.x))), reverseBits(global0.b.a >> (0u % 32u)), _wgslsmith_sub_u32(~(~4294967295u) << (_wgslsmith_add_u32(u_input.d, ~arg_0.a) % 32u), 0u));
    let var_1 = ((max(4294967295u, _wgslsmith_div_u32(1u, global0.d.x)) & 47718u) & (_wgslsmith_div_u32(1388u << (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.x, u_input.d, global0.b.a, var_0.x), vec4<u32>(15204u, 1404u, global0.b.a, 61431u))) << (var_0.x % 32u))) > _wgslsmith_dot_vec4_u32(~abs(~vec4<u32>(73053u, u_input.d, 261u, arg_0.a)), select(~(~vec4<u32>(11595u, global0.b.a, 4294967295u, global0.b.a)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d.x, arg_0.a, 0u), var_0.ywx), global0.d.x, 1u, ~arg_0.a), !arg_1));
    var var_2 = vec4<bool>(!var_1, true, global0.c, var_1);
    let var_3 = Struct_2(699f, ~(~u_input.d), arg_0);
    let var_4 = Struct_2(arg_0.b, 37288u, arg_0);
    return var_4.c;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_5, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = 2230u;
    var var_1 = !(false || (arg_2.e.x & arg_3.c));
    var var_2 = func_4(Struct_1(4294967295u, arg_1.b), select(arg_2.e, select(!arg_2.e, vec4<bool>(any(arg_2.e.yz), global0.c | global0.c, true, func_2(Struct_2(-547f, u_input.d, arg_1), arg_2.c, arg_2.b)), vec4<bool>(any(vec3<bool>(true, arg_3.c, arg_2.e.x)), false && arg_3.c, global0.c & arg_3.c, 688f <= arg_3.b.b)), arg_2.e.x & ((31299u <= global0.d.x) & func_3(arg_3).x)));
    let var_3 = Struct_1(~(arg_2.d.b & ~arg_2.a.x), func_4(func_4(Struct_1(_wgslsmith_mult_u32(arg_3.b.a, arg_1.a), 1156f), vec4<bool>(arg_3.c, arg_3.c, func_2(Struct_2(-918f, 7231u, arg_0.c), 9517i, 25891u), !global0.c)), vec4<bool>(true, false, 4294967295u != firstTrailingBit(38400u), !arg_2.e.x)).b);
    let var_4 = 1093f;
    return min(~global0.d, global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d & ((u_input.d | _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.d, global0.d.x), 0u)) >> (1u % 32u));
    var var_1 = global0.d.yz;
    var var_2 = vec3<i32>(u_input.c, _wgslsmith_mod_i32(~(-7757i), -(u_input.a.x & -9116i)), ~(~(u_input.c << (u_input.d % 32u)))) >> (~global0.d % vec3<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)) * global0.b.b);
    let var_4 = var_2.yy;
    let var_5 = ~_wgslsmith_mod_vec3_u32(global0.d >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 1097u, 35689u), vec3<u32>(global0.b.a, 0u, 3392u)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(65758u, 0u, 27404u), global0.d), global0.d, _wgslsmith_add_vec3_u32(global0.d, func_1(Struct_2(global0.b.b, 5787u, Struct_1(1u, 1000f)), Struct_1(u_input.d, global0.b.b), Struct_5(global0.d.yz, 45501u, var_2.x, Struct_2(-138f, 1u, Struct_1(var_0, 631f)), vec4<bool>(global0.c, global0.c, global0.c, global0.c)), Struct_3(global0.a, Struct_1(var_1.x, -1057f), false, vec3<u32>(var_0, 1u, var_1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1365f, -1253f, _wgslsmith_f_op_f32(f32(-1f) * -1088f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -746f)), _wgslsmith_f_op_f32(select(-483f, _wgslsmith_f_op_f32(ceil(331f)), all(vec3<bool>(true, global0.c, global0.c))))))), var_3, vec3<i32>(firstTrailingBit(u_input.b), ~var_2.x, ~(-1i)));
}

