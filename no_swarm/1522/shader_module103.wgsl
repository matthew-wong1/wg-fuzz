struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(135928u, 117179u), vec2<u32>(5906u, 1u), vec2<u32>(1u, 0u), vec2<u32>(650u, 3120u), vec2<u32>(4294967295u, 23645u), vec2<u32>(4294967295u, 1181u), vec2<u32>(5128u, 1u), vec2<u32>(4294967295u, 5615u), vec2<u32>(0u, 38934u), vec2<u32>(1u, 3825u), vec2<u32>(31542u, 0u), vec2<u32>(4294967295u, 30330u), vec2<u32>(61666u, 62782u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 24997u), vec2<u32>(4294967295u, 37683u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(33033u, 41430u), vec2<u32>(1u, 1u), vec2<u32>(47218u, 4294967295u), vec2<u32>(0u, 14644u), vec2<u32>(1u, 8579u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 76032u), vec2<u32>(0u, 1u), vec2<u32>(29218u, 82513u), vec2<u32>(21631u, 1562u));

var<private> global1: vec4<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec4<bool>) -> f32 {
    var var_0 = ~u_input.a;
    let var_1 = select(vec2<bool>(~(~u_input.a) < ~u_input.a, !arg_2.x), !vec2<bool>(any(arg_2.xzz), false), arg_2.x & arg_2.x);
    var var_2 = u_input.a;
    let var_3 = arg_0.c;
    var_0 = 65621u;
    return _wgslsmith_f_op_f32(-arg_0.a.a);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_3(788f);
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_0.a)), _wgslsmith_f_op_f32(1391f * 724f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(1198f + global1.x), _wgslsmith_f_op_f32(trunc(667f))), vec4<f32>(285f, 707f, _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(func_3(Struct_5(Struct_3(var_0.a), Struct_3(-1139f), Struct_2(vec2<f32>(1107f, global1.x))), Struct_5(Struct_3(global1.x), Struct_3(200f), Struct_2(global1.zx)), vec4<bool>(true, arg_0, arg_1, false)))), _wgslsmith_f_op_f32(var_0.a + -373f)));
    var var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(min(u_input.a, ~(~u_input.a)), ~(~abs(42279u)), ~8448u, 23559u), _wgslsmith_add_vec4_u32(firstLeadingBit(select(min(vec4<u32>(18123u, u_input.a, 45430u, 14777u), vec4<u32>(86781u, 4294967295u, u_input.a, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, u_input.a), vec4<u32>(1u, 0u, 0u, 36045u)), vec4<bool>(false, arg_0, arg_0, arg_1))), _wgslsmith_mult_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 23616u), vec4<u32>(u_input.a, u_input.a, 68098u, 73455u)), ~vec4<u32>(4294967295u, 11260u, u_input.a, 3586u)), abs(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))));
    var_2 = max(select(select(min(_wgslsmith_sub_vec4_u32(vec4<u32>(9216u, 8640u, 4294967295u, var_2.x), vec4<u32>(u_input.a, u_input.a, 38805u, 0u)), select(vec4<u32>(u_input.a, 0u, u_input.a, 0u), vec4<u32>(var_2.x, 10547u, var_2.x, 28166u), vec4<bool>(arg_1, arg_0, true, false))), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, 24689u, var_2.x, 0u), vec4<u32>(34044u, 43206u, var_2.x, 0u), vec4<u32>(4294967295u, u_input.a, 74618u, var_2.x)) >> ((vec4<u32>(u_input.a, 63818u, var_2.x, u_input.a) >> (vec4<u32>(u_input.a, 32077u, u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), any(select(vec3<bool>(false, arg_1, arg_0), vec3<bool>(arg_1, arg_0, arg_0), true))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, var_2.x, u_input.a, 55713u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), select(vec4<u32>(701u, 4294967295u, u_input.a, u_input.a), vec4<u32>(var_2.x, 40973u, u_input.a, var_2.x), false)), (vec4<u32>(4412u, 55446u, 118743u, var_2.x) | vec4<u32>(u_input.a, 4294967295u, 17678u, var_2.x)) ^ select(vec4<u32>(0u, 4294967295u, var_2.x, u_input.a), vec4<u32>(var_2.x, 84588u, 7524u, var_2.x), arg_0)), vec4<bool>(any(!vec4<bool>(false, arg_0, arg_1, true)), false, false, !arg_0 & true)), vec4<u32>(var_2.x, ~(abs(u_input.a) ^ _wgslsmith_div_u32(var_2.x, var_2.x)), select(16834u, 4294967295u, all(vec4<bool>(arg_0, true, arg_0, arg_0)) & !arg_0), abs(~(~var_2.x))));
    var var_3 = countOneBits(~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a, var_2.x, u_input.a, 0u)), abs(select(vec4<u32>(var_2.x, 47401u, u_input.a, u_input.a), vec4<u32>(34538u, 8404u, var_2.x, var_2.x), vec4<bool>(true, arg_0, arg_1, arg_1))), ~(~vec4<u32>(0u, var_2.x, 21699u, 1u))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-989f, -289f) + global1.yz))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, var_0.a)))), ~_wgslsmith_mod_u32((var_2.x ^ u_input.a) << ((var_2.x | u_input.a) % 32u), u_input.a), ~46480u, 1000f, vec2<bool>(true, true));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(1570f * 595f), global1.x, _wgslsmith_f_op_f32(min(269f, arg_2.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(221f, arg_0.d, arg_0.a.x, arg_2.a))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 491f, 1915f, arg_0.d)))))));
    global0 = array<vec2<u32>, 27>();
    let var_0 = Struct_4(arg_1, _wgslsmith_clamp_u32(arg_3, ~(~arg_0.c) ^ 1u, 1u), !(!(!(!vec4<bool>(arg_0.e.x, arg_1, arg_1, false)))), max(~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, arg_3), vec4<u32>(0u, 10277u, 0u, 1u))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3, arg_0.c, arg_0.b, 4294967295u), vec4<u32>(u_input.a, 1u, u_input.a, 1u)))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1026f, _wgslsmith_f_op_f32(-arg_2.a)) - global1.xz)));
    let var_1 = u_input.c.x;
    var var_2 = var_0;
    return func_2(false, arg_0.e.x, -(vec3<i32>(1i, -59641i, u_input.c.x) | u_input.c));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4) -> vec4<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e.a.x * _wgslsmith_f_op_f32(f32(-1f) * -926f))), 201f, -147f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-460f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e.a.x) + -823f))) + _wgslsmith_f_op_f32(floor(-1000f))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(round(var_0.x))))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-209f * global1.x) * _wgslsmith_f_op_f32(-1464f * arg_1.e.a.x)), arg_0.d, !(!arg_0.e.x)))), _wgslsmith_f_op_f32(global1.x * arg_1.e.a.x), _wgslsmith_f_op_f32(func_3(Struct_5(Struct_3(_wgslsmith_f_op_f32(-330f - global1.x)), Struct_3(global1.x), arg_1.e), Struct_5(Struct_3(2293f), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1796f)), arg_1.e), select(!arg_1.c, arg_1.c, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -972f)));
    let var_1 = u_input.c;
    var var_2 = 1i;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -124f)));
    return _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(arg_1.b, 1u, arg_1.b, 41234u)), vec4<u32>(_wgslsmith_sub_u32(33420u, arg_1.b), ~arg_0.b, u_input.a ^ 66730u, 33814u)), _wgslsmith_sub_vec4_u32(max(_wgslsmith_div_vec4_u32(vec4<u32>(43110u, 4294967295u, 18544u, u_input.a), vec4<u32>(4294967295u, 38741u, 0u, 4294967295u)), ~arg_1.d), ~(~arg_1.d))) ^ abs(firstTrailingBit(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b, 10420u, arg_0.c, 1u), arg_1.d))));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(-670f));
    var var_1 = abs(func_5(func_4(func_2(758f > global1.x, any(vec4<bool>(false, true, true, true)), -u_input.c), all(vec3<bool>(true, true, true)), Struct_3(1380f), 110128u), Struct_4(any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), ~63446u, vec4<bool>(true, true, true, true), select(~vec4<u32>(u_input.a, u_input.a, 31895u, u_input.a), vec4<u32>(32785u, 0u, u_input.a, u_input.a), vec4<bool>(true, true, true, true)), Struct_2(vec2<f32>(global1.x, global1.x)))));
    global0 = array<vec2<u32>, 27>();
    let var_2 = true;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, -1136f)))))));
    return ~(i32(-1i) * -2147483647i) | firstLeadingBit(_wgslsmith_mult_i32(u_input.c.x, select(1i & u_input.b.x, _wgslsmith_clamp_i32(-44800i, u_input.b.x, 82798i), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-_wgslsmith_add_i32(func_1(), u_input.c.x), -select(-min(1i, -9368i), firstLeadingBit(-u_input.b.x), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), u_input.c.x, _wgslsmith_clamp_i32(-(u_input.c.x >> (1u % 32u)) | (-u_input.b.x ^ ~0i), 1i, abs(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.c.x, u_input.b.x))) & ~(-27i)));
    var var_1 = Struct_4(true, 1u, select(select(vec4<bool>(all(vec2<bool>(false, true)), true, false, any(vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, true))), !vec4<bool>(func_4(Struct_1(vec2<f32>(global1.x, global1.x), u_input.a, u_input.a, global1.x, vec2<bool>(true, true)), true, Struct_3(global1.x), 4294967295u).e.x, true, false, false), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), all(vec2<bool>(false, false))))), vec4<u32>(u_input.a, ~_wgslsmith_div_u32(0u | u_input.a, reverseBits(u_input.a)), u_input.a, _wgslsmith_mod_u32(22731u, (u_input.a & 26140u) ^ ~u_input.a)), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global1.wx)), vec2<f32>(global1.x, -1000f))));
    var_1 = Struct_4(all(!select(var_1.c.xyz, var_1.c.yxx, var_1.c.x)) || (all(select(vec3<bool>(true, false, var_1.a), var_1.c.zzz, true)) | true), ~(~u_input.a ^ 18654u), select(vec4<bool>(true, any(select(var_1.c.xww, var_1.c.xyx, var_1.c.wwx)), true || var_1.c.x, !(var_1.c.x && var_1.c.x)), vec4<bool>(any(var_1.c.yyx), var_1.c.x, _wgslsmith_f_op_f32(-1086f - global1.x) >= _wgslsmith_f_op_f32(f32(-1f) * -508f), all(func_2(false, var_1.c.x, vec3<i32>(u_input.b.x, 9282i, u_input.c.x)).e)), !(!select(var_1.c, var_1.c, var_1.a))), ~vec4<u32>(var_1.d.x ^ _wgslsmith_add_u32(0u, 4294967295u), func_4(func_2(false, true, vec3<i32>(-49830i, var_0.x, -44882i)), true, Struct_3(var_1.e.a.x), ~u_input.a).c, _wgslsmith_add_u32(~1u, select(0u, 1u, false)), _wgslsmith_div_u32(var_1.d.x, ~var_1.d.x)), var_1.e);
    var_1 = Struct_4(false, var_1.b, var_1.c, vec4<u32>(~select(~12292u, 4294967295u ^ var_1.b, true & var_1.c.x), u_input.a, func_4(func_2(-8524i > var_0.x, select(false, var_1.c.x, var_1.c.x), var_0.zwx ^ var_0.xzx), false, Struct_3(var_1.e.a.x), _wgslsmith_clamp_u32(reverseBits(var_1.b), ~1u, u_input.a)).b, u_input.a), Struct_2(var_1.e.a));
    var var_2 = var_0;
    let var_3 = Struct_5(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-380f, -1675f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -266f)))), Struct_3(global1.x), var_1.e);
    let var_4 = -1000f;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.a.x, 633f, var_3.c.a.x, var_3.b.a) * vec4<f32>(global1.x, var_3.a.a, 731f, -1374f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), var_4, _wgslsmith_f_op_f32(max(var_4, 1000f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.yww))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1455f * _wgslsmith_f_op_f32(-var_4)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(285f - 1922f) + _wgslsmith_f_op_f32(-var_1.e.a.x)))), max(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_1.b), var_1.d.zz), var_1.d.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_1.d, var_1.d), vec4<u32>(0u, u_input.a, var_1.b, u_input.a)), 1u), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, var_1.b, 1u, var_1.b)), ~(vec4<u32>(var_1.d.x, var_1.b, u_input.a, var_1.b) >> (var_1.d % vec4<u32>(32u))))));
}

