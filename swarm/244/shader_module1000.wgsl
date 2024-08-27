struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(vec2<bool>(true, false), vec3<u32>(40465u, 0u, 59703u), vec3<f32>(1494f, 359f, -179f), 4294967295u, Struct_2(-28575i)), Struct_3(vec2<bool>(false, true), vec3<u32>(72435u, 15599u, 26890u), vec3<f32>(1047f, -775f, 1050f), 46354u, Struct_2(2361i)), Struct_3(vec2<bool>(false, false), vec3<u32>(41519u, 11949u, 4294967295u), vec3<f32>(-857f, 1937f, -660f), 3679u, Struct_2(0i)), Struct_3(vec2<bool>(true, true), vec3<u32>(18255u, 9863u, 0u), vec3<f32>(184f, -421f, 459f), 4294967295u, Struct_2(26899i)), Struct_3(vec2<bool>(true, false), vec3<u32>(0u, 23323u, 1u), vec3<f32>(-156f, -152f, 1000f), 4294967295u, Struct_2(7049i)), Struct_3(vec2<bool>(true, true), vec3<u32>(1u, 0u, 24735u), vec3<f32>(-947f, -715f, 476f), 1u, Struct_2(-32457i)), Struct_3(vec2<bool>(true, false), vec3<u32>(0u, 16201u, 0u), vec3<f32>(-146f, 396f, -657f), 1u, Struct_2(-1i)), Struct_3(vec2<bool>(false, true), vec3<u32>(4294967295u, 1u, 56234u), vec3<f32>(-833f, -1341f, -1531f), 24375u, Struct_2(1i)), Struct_3(vec2<bool>(false, true), vec3<u32>(35495u, 30739u, 39895u), vec3<f32>(-644f, -288f, -977f), 4294967295u, Struct_2(i32(-2147483648))), Struct_3(vec2<bool>(true, false), vec3<u32>(0u, 77292u, 6293u), vec3<f32>(1117f, -189f, -1672f), 10729u, Struct_2(1i)));

var<private> global1: u32;

var<private> global2: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_mod_vec4_i32(select(~vec4<i32>(2147483647i, ~(-59856i), -1i, 23121i), _wgslsmith_mod_vec4_i32(vec4<i32>(-19869i | u_input.a.x, -1i, arg_0.x, _wgslsmith_dot_vec3_i32(u_input.a.yzz, vec3<i32>(2147483647i, -2147483647i, u_input.a.x))), -(arg_1 >> (vec4<u32>(47521u, u_input.b.x, u_input.c, u_input.c) % vec4<u32>(32u)))), !(_wgslsmith_clamp_i32(arg_1.x, -1i, -2147483647i) > arg_0.x)), vec4<i32>(select(_wgslsmith_dot_vec3_i32(arg_1.xxw, arg_0.xyx), reverseBits(arg_1.x), u_input.b.x < u_input.b.x) << (((41023u ^ u_input.c) >> (0u % 32u)) % 32u), abs(-31926i), arg_1.x, _wgslsmith_mod_i32(countOneBits(u_input.a.x >> (42979u % 32u)), -1i)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-705f * _wgslsmith_f_op_f32(round(-199f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(291f + -1693f)))) * 1000f);
    let var_2 = -(i32(-1i) * -2147483647i);
    global1 = ~24193u;
    var var_3 = vec3<bool>(all(!vec3<bool>(select(true, false, false), var_1 >= var_1, true)), ~(~(var_0.x >> (u_input.c % 32u))) == arg_1.x, select(select(arg_0.x, _wgslsmith_dot_vec3_i32(arg_0.zzy, vec3<i32>(arg_0.x, -100422i, var_0.x)), select(true, false, false)) < (select(u_input.a.x, arg_0.x, false) >> (u_input.c % 32u)), all(vec2<bool>(var_1 > var_1, true)), (select(false, true, false) & true) && (38006i <= (var_2 | u_input.a.x))));
    return _wgslsmith_f_op_f32(floor(155f));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_1(arg_0.d & 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.a, vec4<i32>(arg_0.e.x, 18691i, arg_0.e.x, 0i))), _wgslsmith_f_op_f32(func_3(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, arg_0.e.x), vec4<i32>(-2147483647i, u_input.a.x, 13609i, arg_0.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b))), arg_0.c)) + arg_0.b), any(select(select(!vec4<bool>(arg_0.c, true, arg_0.c, false), select(vec4<bool>(arg_0.c, arg_0.c, true, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, true, true), true), select(vec4<bool>(arg_0.c, false, true, false), vec4<bool>(false, arg_0.c, true, true), false)), vec4<bool>(any(vec2<bool>(arg_0.c, false)), arg_0.c, arg_0.c, true), false)), ~firstTrailingBit(arg_0.d) & ~abs(~76257u), _wgslsmith_mult_vec4_i32(u_input.a, arg_0.e));
    var var_1 = Struct_1(86274u, -439f, any(!(!select(vec3<bool>(arg_0.c, true, false), vec3<bool>(false, var_0.c, arg_0.c), vec3<bool>(arg_0.c, var_0.c, arg_0.c)))), 0u & (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.a), ~u_input.b.yw) & ~arg_0.a), vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(1430i, -2147483647i, arg_0.e.x, u_input.a.x), u_input.a), -firstTrailingBit(arg_0.e.x), 10106i, -(-var_0.e.x ^ u_input.a.x)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + 600f)), -2241f, var_1.b);
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -602f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -390f), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - arg_0.b)))));
    var var_3 = -31307i;
    return Struct_3(vec2<bool>(!(!any(vec4<bool>(var_1.c, var_0.c, false, arg_0.c))), false), vec3<u32>(var_0.d, u_input.b.x, _wgslsmith_div_u32(0u, select(var_1.a, _wgslsmith_clamp_u32(0u, var_0.d, 1u), all(vec2<bool>(true, var_0.c))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-757f, var_0.b, -530f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(294f, var_2.x, 554f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, -1308f, var_1.b) * vec3<f32>(-656f, var_1.b, 731f))), _wgslsmith_f_op_f32(-475f + 1123f) <= _wgslsmith_f_op_f32(trunc(var_0.b)))))), arg_0.d, Struct_2(var_0.e.x));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: f32) -> Struct_3 {
    let var_0 = arg_0;
    global1 = ~(~15356u);
    let var_1 = -50876i;
    global1 = var_0;
    global2 = 2147483647i;
    return func_2(Struct_1(0u, arg_2, false, ~u_input.c, select(u_input.a, countOneBits(u_input.a), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~49488u, vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.b.yz, ~vec2<u32>(u_input.b.x, 0u)), ~(~50713u), ~4294967295u) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 0u, u_input.b.x), u_input.b.ywx, ~(u_input.b.wzz ^ vec3<u32>(32587u, u_input.b.x, u_input.b.x))) % vec3<u32>(32u)), 747f);
    var var_1 = func_2(Struct_1(var_0.b.x, 1660f, var_0.a.x, 0u, u_input.a)).e;
    var var_2 = Struct_1(u_input.c, _wgslsmith_f_op_f32(-var_0.c.x), !all(select(!vec3<bool>(var_0.a.x, var_0.a.x, true), !vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<bool>(true, true, false))), func_1(~15463u, _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b.zzy ^ u_input.b.yxw, ~vec3<u32>(u_input.c, 3136u, u_input.c)), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.b.x, u_input.c), var_0.b)), 1193f).d, u_input.a);
    global1 = ~(~12240u);
    let var_3 = var_0.e;
    let var_4 = Struct_3(!var_0.a, vec3<u32>(~(4294967295u >> (var_2.a % 32u)) | _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, var_0.d), ~0u), _wgslsmith_mod_u32(var_2.d, 1u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.b.x, reverseBits(41529u)), ~_wgslsmith_clamp_u32(40896u, var_2.d, 1u))), var_0.c, ~(~_wgslsmith_div_u32(var_0.b.x, _wgslsmith_clamp_u32(var_0.d, var_2.d, 0u))), var_0.e);
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.b, -1710f)) - _wgslsmith_f_op_f32(f32(-1f) * -377f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(var_4.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(798f)), 1458f, -1000f))), 0i, abs(countOneBits(u_input.a << (vec4<u32>(var_2.a, var_2.a, 42624u, 1u) % vec4<u32>(32u)))));
}

