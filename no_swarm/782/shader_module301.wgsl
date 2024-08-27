struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec4<u32>;

var<private> global2: vec4<bool>;

var<private> global3: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(i32(-2147483648), 18359i, 18699i), vec3<i32>(34858i, 2147483647i, -28316i), vec3<i32>(0i, -32359i, 18763i), vec3<i32>(i32(-2147483648), 21932i, 2147483647i), vec3<i32>(2147483647i, 6409i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(-37990i, -21469i, -8057i), vec3<i32>(4484i, 0i, -1i), vec3<i32>(-1i, 2147483647i, 1i));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: Struct_5, arg_3: f32) -> vec4<u32> {
    var var_0 = Struct_5(arg_2.a, arg_2.b);
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.b.b, arg_2.b.b, arg_2.b.b, -56602i) ^ vec4<i32>(var_0.b.b, 29116i, 0i, 0i), countOneBits(~vec4<i32>(u_input.a, -1i, 34848i, -515i))), select(~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_0.b.b, -2147483647i, arg_2.b.b), vec4<i32>(var_0.b.b, u_input.a, arg_0.b.b, 36761i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -1i, -2147483647i, -2147483647i), vec4<i32>(-1i, -20825i, u_input.a, u_input.a)), !select(false, true, arg_1))), ~vec4<i32>(_wgslsmith_mult_i32(-1i, 33469i), _wgslsmith_div_i32(-57280i, 2147483647i), ~23979i, -arg_2.b.b) & _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(arg_0.b.b, arg_0.b.b, arg_0.b.b, 6556i), vec4<i32>(-1i, 2147483647i, 19268i, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b.b, 2147483647i, -15261i, -6817i), vec4<i32>(-8110i, u_input.a, -1i, -10765i))), vec4<i32>(-24338i, _wgslsmith_mult_i32(arg_2.b.b, u_input.a), i32(-1i) * -2147483647i, 12543i)));
    let var_2 = false;
    var var_3 = _wgslsmith_sub_vec3_u32(~(~global1.xzx), abs(~global1.xwz));
    var var_4 = -global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(3635u, 0u), vec2<u32>(arg_2.b.c, var_3.x)), var_3.x & (var_0.b.c | 6180u)), var_0.b.c), 9u)];
    return ~(~firstTrailingBit(vec4<u32>(1u, firstLeadingBit(0u), 1u, 97002u)));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: bool) -> i32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(15149i, u_input.a, arg_0.b, u_input.a)), -countOneBits(vec4<i32>(u_input.a, 0i, u_input.a, -1i)), vec4<i32>(u_input.a, u_input.a, 2147483647i, 13950i) << (func_3(Struct_5(vec3<f32>(arg_0.a.x, arg_1.x, arg_1.x), arg_0), global2.x, Struct_5(arg_1, Struct_4(arg_0.a, arg_0.b, global1.x)), 1686f) % vec4<u32>(32u)))), Struct_2(-vec4<i32>(~0i, ~0i, _wgslsmith_clamp_i32(-9655i, 0i, -23758i), ~u_input.a)), -reverseBits(arg_0.b), vec2<bool>(true, true));
    let var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -864f), arg_1.x), -u_input.a, 86451u ^ arg_0.c);
    let var_2 = Struct_2(~(~(-var_0.a.a)));
    let var_3 = 2147483647i;
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return var_2.a.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: u32) -> i32 {
    global3 = array<vec3<i32>, 9>();
    let var_0 = Struct_1(arg_0.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1541f))) * -569f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1323f, _wgslsmith_f_op_f32(f32(-1f) * -2040f))), 1035f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(353f, 546f, true)), _wgslsmith_f_op_f32(343f * 216f))))), ~vec3<u32>(arg_0.x, abs(_wgslsmith_mult_u32(arg_2, 1u)), _wgslsmith_mod_u32(arg_0.x, arg_0.x) | max(arg_2, arg_0.x)), global2.x, arg_1);
    var var_1 = _wgslsmith_add_vec2_u32(var_0.c.yy, ~vec2<u32>(max(1u, _wgslsmith_div_u32(global1.x, arg_0.x)), reverseBits(arg_0.x)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b.x, 523f), var_0.b.x);
    var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(0u, global1.x), firstTrailingBit(~countOneBits(global1.yy | global1.yy)));
    return _wgslsmith_sub_i32(arg_1.x, _wgslsmith_add_i32(func_2(Struct_4(vec2<f32>(var_2, -1304f), -37571i, ~global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-879f, 443f, -859f) - vec3<f32>(253f, -195f, var_2))), !var_0.d & !var_0.d), max(2147483647i, select(countOneBits(u_input.a), _wgslsmith_div_i32(arg_1.x, u_input.a), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<i32>, 9>();
    var var_0 = max(abs(0u), global1.x & _wgslsmith_sub_u32(global1.x, _wgslsmith_clamp_u32(global1.x, global1.x, global1.x))) >= 44666u;
    global1 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(~global1.xx, ~vec2<u32>(47114u, global1.x)), global1.x >> (72281u % 32u), 4294967295u, global1.x);
    var var_1 = _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, ~_wgslsmith_sub_i32(u_input.a, u_input.a)) >> (~_wgslsmith_div_u32(4294967295u, global1.x) % 32u), select(_wgslsmith_clamp_i32(select(u_input.a, 46314i, true) & firstLeadingBit(-48035i), min(func_1(vec4<u32>(0u, global1.x, global1.x, 51252u), vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), global1.x), 2147483647i), i32(-1i) * -u_input.a), ~_wgslsmith_sub_i32(~u_input.a, 2147483647i), true));
    let var_2 = all(select(vec2<bool>(true, !all(global2.ww)), !global2.zz, !vec2<bool>(global2.x, all(vec3<bool>(global2.x, global2.x, global2.x)))));
    global3 = array<vec3<i32>, 9>();
    global2 = select(select(vec4<bool>(all(global2.zzw) || true, true, true, var_2), vec4<bool>(true & (global2.x && var_2), any(global2.yxz), !global2.x, true), select(vec4<bool>(true, all(global2.xx), !var_2, var_2), vec4<bool>(true, true, true, var_2), (u_input.a ^ u_input.a) < max(0i, u_input.a))), vec4<bool>(false, var_2, true, var_2 && !(true && global2.x)), !select(vec4<bool>(u_input.a < u_input.a, any(vec2<bool>(global2.x, global2.x)), !var_2, true), select(!vec4<bool>(global2.x, false, false, global2.x), !vec4<bool>(true, global2.x, var_2, var_2), any(vec4<bool>(var_2, global2.x, var_2, global2.x))), true));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.a));
}

