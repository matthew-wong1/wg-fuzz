struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_3,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_vec4_u32(~vec4<u32>(min(1u, 0u), ~arg_0.a.x, 1u, 43683u), vec4<u32>(1u, arg_0.a.x, u_input.a, u_input.a) & firstLeadingBit(~(vec4<u32>(75682u, 49927u, 0u, u_input.a) ^ vec4<u32>(0u, u_input.a, 4294967295u, arg_1.a))));
    var var_1 = arg_1;
    let var_2 = ~(~(~(~80784u)));
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    return vec3<bool>(arg_1.a >= var_2, all(select(!select(vec3<bool>(false, false, true), vec3<bool>(var_1.b, var_1.b, true), vec3<bool>(var_1.e, arg_1.b, true)), !vec3<bool>(false, false, var_1.e), true)), all(!vec2<bool>(arg_1.e, any(vec4<bool>(var_1.b, false, false, false)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_5) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(976f, -741f) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(529f, -783f), vec2<f32>(-1831f, 766f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-419f, 893f))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1947f, 483f))), vec2<f32>(_wgslsmith_f_op_f32(abs(-1150f)), 2139f), true))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1039f, 2086f) - vec2<f32>(-2825f, 111f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-702f, -346f))))));
    let var_1 = Struct_4(func_3(global0[_wgslsmith_index_u32(max(~_wgslsmith_mult_u32(11864u, 50749u), u_input.a), 27u)], Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(25575u, 4294967295u)), vec2<u32>(37814u, arg_3.a.a.x)), !(!arg_1), Struct_1(arg_3.a.a), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x), -498f, _wgslsmith_f_op_f32(var_0.x + -2940f)), false)), global0[_wgslsmith_index_u32(~u_input.a, 27u)], Struct_3(Struct_1(vec3<u32>(0u >> (1u % 32u), ~17555u, _wgslsmith_mult_u32(u_input.a, 23106u)))), !vec4<bool>(true, true, true, any(!vec4<bool>(true, arg_1, false, true))));
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    var var_2 = select(~vec4<i32>(arg_0.x & -59223i, _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0.x, 0i), 8731i ^ arg_0.x), -(-1i << (arg_3.a.a.x % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -1i, arg_0.x, arg_0.x), _wgslsmith_mod_vec4_i32(vec4<i32>(50869i, arg_0.x, arg_0.x, 1i), arg_0))), abs(vec4<i32>(max(4562i, 1i), select(arg_0.x, arg_0.x, arg_1), 2147483647i, 1i) & arg_0), !vec4<bool>(arg_1, false || arg_1, var_1.d.x, true));
    return var_0;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: u32) -> Struct_2 {
    var var_0 = reverseBits(-6585i);
    global0 = array<Struct_1, 27>();
    var var_1 = -(vec4<i32>(1i, 1i, 1i, 1i) >> (_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(0u, 13873u, arg_0.b.a.x, 27031u)), vec4<u32>(arg_0.b.a.x, 20961u, 12205u, 0u) >> (vec4<u32>(arg_3, u_input.a, arg_0.c.a.a.x, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))) | vec4<i32>(1i, 1i, 1i, 1i);
    var_0 = var_1.x;
    let var_2 = Struct_1(vec3<u32>(~_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_3, u_input.a), arg_0.b.a.x), arg_0.c.a.a.x, arg_0.b.a.x));
    return Struct_2(var_2.a.x, all(!arg_0.a.yz), global0[_wgslsmith_index_u32(var_2.a.x, 27u)], vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -861f), _wgslsmith_f_op_f32(f32(-1f) * -160f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, 1202f)))), false);
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> vec2<bool> {
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    var var_0 = vec3<i32>(-46509i, 0i, 1i);
    let var_1 = func_4(Struct_4(select(vec3<bool>(arg_1.e, true, true), vec3<bool>(arg_1.b, true, arg_1.b | arg_1.e), !select(vec3<bool>(arg_1.e, arg_1.b, false), vec3<bool>(arg_1.e, arg_1.b, false), vec3<bool>(arg_1.e, arg_1.e, true))), Struct_1(~arg_1.c.a ^ arg_1.c.a), Struct_3(func_4(Struct_4(vec3<bool>(arg_1.e, false, arg_1.b), Struct_1(arg_1.c.a), Struct_3(arg_1.c), vec4<bool>(false, false, arg_1.e, false)), vec2<f32>(1755f, arg_1.d.x), select(vec4<bool>(true, true, arg_1.e, arg_1.e), vec4<bool>(arg_1.e, arg_1.e, arg_1.b, arg_1.e), true), u_input.a).c), !(!select(vec4<bool>(arg_1.b, arg_1.b, false, true), vec4<bool>(arg_1.e, arg_1.b, arg_1.b, false), false))), _wgslsmith_f_op_vec2_f32(min(arg_1.d.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-502f, arg_1.d.x))))))), vec4<bool>(false, true, all(vec2<bool>(!arg_1.b, false)), arg_1.e), arg_0).c;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(241f, 782f)) + arg_1.d.x) - arg_1.d.x);
    return select(vec2<bool>(!arg_1.b, _wgslsmith_div_f32(arg_1.d.x, -1890f) == _wgslsmith_f_op_f32(-arg_1.d.x)), vec2<bool>(arg_1.e, arg_1.e), select(vec2<bool>(arg_1.e, true), !select(vec2<bool>(false, arg_1.e), select(vec2<bool>(true, arg_1.e), vec2<bool>(true, arg_1.b), true), arg_1.e), vec2<bool>(any(vec4<bool>(arg_1.b, true, arg_1.b, arg_1.e)), arg_1.e)));
}

fn func_1() -> vec2<bool> {
    var var_0 = !select(func_5(abs(59541u), func_4(Struct_4(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(u_input.a, 27u)], Struct_3(Struct_1(vec3<u32>(u_input.a, 4294967295u, 80610u))), vec4<bool>(false, true, true, true)), _wgslsmith_f_op_vec2_f32(func_2(vec4<i32>(1i, 31776i, 5173i, -37213i), true, vec3<bool>(true, true, true), Struct_5(Struct_1(vec3<u32>(18878u, 4341u, u_input.a))))), vec4<bool>(true, true, true, true), ~u_input.a)), func_5(~(~0u), Struct_2(_wgslsmith_add_u32(0u, u_input.a), true, func_4(Struct_4(vec3<bool>(true, false, true), Struct_1(vec3<u32>(u_input.a, 23123u, 0u)), Struct_3(Struct_1(vec3<u32>(86288u, 1u, u_input.a))), vec4<bool>(true, false, false, false)), vec2<f32>(2498f, 304f), vec4<bool>(true, false, true, false), 72326u).c, vec4<f32>(-386f, -515f, 2057f, 1107f), all(vec3<bool>(true, true, true)))), !all(vec4<bool>(false, false, true, false)));
    var var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 46219u)) & (vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))), ~vec2<u32>(32780u, 73409u)), ~vec2<u32>(abs(15557u), 1u)), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), max(vec4<u32>(u_input.a, 1u, 1u, u_input.a), vec4<u32>(u_input.a, 40156u, u_input.a, u_input.a))) ^ 4294967295u, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, _wgslsmith_mod_u32(u_input.a, 1u << (1u % 32u))), func_4(Struct_4(vec3<bool>(var_0.x, false, false), func_4(Struct_4(vec3<bool>(var_0.x, var_0.x, false), Struct_1(vec3<u32>(u_input.a, 1u, u_input.a)), Struct_3(Struct_1(vec3<u32>(4294967295u, u_input.a, u_input.a))), vec4<bool>(var_0.x, false, true, true)), vec2<f32>(155f, -2235f), vec4<bool>(var_0.x, var_0.x, true, false), u_input.a).c, Struct_3(Struct_1(vec3<u32>(u_input.a, 22742u, 63505u))), !vec4<bool>(var_0.x, false, var_0.x, var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -608f), _wgslsmith_f_op_f32(-1000f + -786f)), vec4<bool>(!var_0.x, !var_0.x, any(vec4<bool>(false, var_0.x, var_0.x, false)), true), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a, 92237u)), abs(vec2<u32>(0u, u_input.a)))).a), ~_wgslsmith_div_u32(~u_input.a, abs(_wgslsmith_clamp_u32(u_input.a, 0u, 4294967295u))));
    var var_2 = true;
    var var_3 = ~24819u;
    var var_4 = _wgslsmith_f_op_f32(trunc(736f));
    return vec2<bool>(var_0.x, true);
}

fn func_6(arg_0: bool, arg_1: vec2<bool>) -> bool {
    global0 = array<Struct_1, 27>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(u_input.a, 12812u, ~1u, 7669u);
    global0 = array<Struct_1, 27>();
    var_0 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(~vec4<u32>(70560u, u_input.a, 3164u, 4294967295u)), abs(~vec4<u32>(35294u, var_0.x, u_input.a, 1u)), firstLeadingBit(~vec4<u32>(77620u, u_input.a, u_input.a, 53990u))), vec4<u32>(~u_input.a, var_0.x | 26672u, min(~0u, _wgslsmith_mult_u32(0u, 4294967295u)), 24782u), _wgslsmith_add_vec4_u32(~(vec4<u32>(0u, u_input.a, u_input.a, var_0.x) >> (vec4<u32>(var_0.x, 27247u, 77273u, var_0.x) % vec4<u32>(32u))), vec4<u32>(u_input.a, 18297u, _wgslsmith_div_u32(4294967295u, var_0.x), 1u | u_input.a)));
    global0 = array<Struct_1, 27>();
    let var_1 = vec3<bool>(select(true & (_wgslsmith_div_f32(177f, 1000f) > _wgslsmith_f_op_f32(round(-1072f))), (u_input.a > u_input.a) != false, !(var_0.x <= ~var_0.x)), func_6(true, select(func_1(), select(vec2<bool>(true, true), func_3(Struct_1(var_0.ywy), Struct_2(u_input.a, false, global0[_wgslsmith_index_u32(var_0.x, 27u)], vec4<f32>(-2401f, 479f, -565f, -1606f), true)).yy, select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), vec2<bool>(func_4(Struct_4(vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(12318u, 27u)], Struct_3(global0[_wgslsmith_index_u32(var_0.x, 27u)]), vec4<bool>(true, true, true, false)), vec2<f32>(-197f, -713f), vec4<bool>(true, false, true, false), var_0.x).b, true))), func_6(func_3(Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 7878u, 22007u), vec3<u32>(0u, u_input.a, var_0.x))), func_4(Struct_4(vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(4294967295u, 27u)], Struct_3(global0[_wgslsmith_index_u32(var_0.x, 27u)]), vec4<bool>(true, false, false, true)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-254f, -1000f))), vec4<bool>(true, true, true, true), u_input.a)).x, vec2<bool>(true, true)));
    var var_2 = Struct_3(Struct_1(vec3<u32>(min(~0u, u_input.a), 51283u, _wgslsmith_mult_u32(33838u, 1u))));
    var var_3 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_4(var_1, var_2.a, Struct_3(Struct_1(var_0.wwy)), vec4<bool>(var_1.x, var_1.x, var_1.x, true)), vec2<f32>(-686f, -485f), vec4<bool>(false, var_1.x, false, var_1.x), ~29211u).d.x * _wgslsmith_f_op_f32(774f + _wgslsmith_f_op_f32(ceil(-415f))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_i32(~1i, -1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.a, var_0.x, var_2.a.a.x), vec4<u32>(var_0.x, 37073u, var_2.a.a.x, u_input.a)) % 32u))), 534f, i32(-1i) * -_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(21635i, -2147483647i, 1815i, 37110i), vec4<i32>(-13917i, 9950i, 0i, -2147483647i))), var_3.x, _wgslsmith_mod_i32(-max(max(1i, -2147483647i), firstTrailingBit(-30031i)), -32112i));
}

