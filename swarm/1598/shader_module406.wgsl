struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = false;

var<private> global2: array<vec2<f32>, 21> = array<vec2<f32>, 21>(vec2<f32>(426f, 310f), vec2<f32>(-1010f, -632f), vec2<f32>(1247f, 277f), vec2<f32>(-192f, -2195f), vec2<f32>(1205f, -922f), vec2<f32>(323f, -971f), vec2<f32>(226f, -800f), vec2<f32>(1359f, 1000f), vec2<f32>(688f, -390f), vec2<f32>(-464f, -695f), vec2<f32>(1000f, 507f), vec2<f32>(1750f, 767f), vec2<f32>(780f, 604f), vec2<f32>(-897f, -153f), vec2<f32>(-1088f, -277f), vec2<f32>(-851f, -1027f), vec2<f32>(-1590f, 1232f), vec2<f32>(337f, -1274f), vec2<f32>(-2483f, -1113f), vec2<f32>(454f, -1000f), vec2<f32>(-1384f, 685f));

var<private> global3: array<vec2<f32>, 30>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3) -> u32 {
    global2 = array<vec2<f32>, 21>();
    global3 = array<vec2<f32>, 30>();
    global0 = Struct_1(_wgslsmith_f_op_f32(arg_0.b - arg_0.b), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.x, -37034i) & global0.b.zz, vec2<i32>(-2175i, 1i)), -2147483647i), vec3<i32>(u_input.a, ~(-2147483647i), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, arg_0.a, -20950i), global0.b)))), countOneBits(~(~arg_0.d.zy)), global0.d, -1250f);
    global2 = array<vec2<f32>, 21>();
    let var_0 = Struct_2(firstLeadingBit(_wgslsmith_add_u32(global0.c.x, u_input.b)), 0u);
    return global0.c.x ^ (1u ^ _wgslsmith_mod_u32(1u, abs(~u_input.b)));
}

fn func_4(arg_0: u32) -> vec2<bool> {
    let var_0 = !select(vec4<bool>(global0.d.x, global0.d.x, !global0.d.x & all(vec3<bool>(true, global0.d.x, false)), false), !vec4<bool>(!global0.d.x, select(true, false, global0.d.x), global0.d.x, select(true, false, false)), select(vec4<bool>(all(vec2<bool>(true, global0.d.x)), any(vec2<bool>(global0.d.x, global0.d.x)), true, all(vec3<bool>(true, false, global0.d.x))), vec4<bool>(false && global0.d.x, all(vec3<bool>(global0.d.x, global0.d.x, global0.d.x)), true | global0.d.x, global0.d.x), select(vec4<bool>(global0.d.x, global0.d.x, false, global0.d.x), !vec4<bool>(global0.d.x, true, false, global0.d.x), select(vec4<bool>(global0.d.x, global0.d.x, global0.d.x, global0.d.x), vec4<bool>(global0.d.x, false, true, global0.d.x), false))));
    let var_1 = vec4<f32>(1014f, -469f, -643f, global0.a);
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, global0.b.x), vec3<i32>(abs(u_input.c.x) | _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), -u_input.c), global0.b.x, ~(-41638i)));
    global2 = array<vec2<f32>, 21>();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(abs(1091f))), global0.a);
    return select(var_0.zy, !(!(!(!global0.d))), var_0.wy);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>) -> i32 {
    var var_0 = Struct_1(-644f, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, global0.b.x << (60314u % 32u), global0.b.x ^ global0.b.x) & vec3<i32>(global0.b.x, -36675i, u_input.c.x), vec3<i32>(-1i) * -abs(global0.b)), global0.c, func_4(_wgslsmith_sub_u32(global0.c.x >> (func_3(Struct_3(u_input.a, global0.a, global0.c.x, vec3<u32>(arg_1.x, 0u, 55993u))) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, global0.c.x, 0u) | vec4<u32>(u_input.b, u_input.b, u_input.b, 7472u), abs(vec4<u32>(u_input.b, 21535u, 4294967295u, u_input.b))))), global0.e);
    var var_1 = ~(vec4<i32>(-1i) * -(vec4<i32>(2147483647i, 5488i, 0i, 2147483647i) & vec4<i32>(-1i, var_0.b.x, var_0.b.x, u_input.a))) ^ vec4<i32>(var_0.b.x, -41612i, 0i, ~_wgslsmith_add_i32(~7316i, reverseBits(0i)));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * 328f)))), _wgslsmith_add_vec3_i32(global0.b, -max(var_1.xyw, global0.b)), firstLeadingBit(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, global0.c.x), ~arg_1)), func_4(1u), _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -208f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1315f, var_0.a) - global0.a))));
    global1 = global0.e < -1050f;
    global2 = array<vec2<f32>, 21>();
    return max(~(~(-_wgslsmith_div_i32(global0.b.x, 45336i))), select(var_0.b.x, ~(~global0.b.x) | u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1238f)) * _wgslsmith_f_op_f32(exp2(var_0.e))) > global0.a));
}

fn func_1(arg_0: u32) -> vec3<u32> {
    global2 = array<vec2<f32>, 21>();
    let var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.a, _wgslsmith_add_i32(2147483647i, -11039i)) >> (_wgslsmith_div_u32(global0.c.x, 53146u ^ u_input.b) % 32u), i32(-1i) * -(i32(-1i) * -22617i)), ~u_input.c.xz, vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(20948i, global0.b.x), u_input.c.x) ^ (-global0.b.x ^ 1i), func_2(!vec3<bool>(global0.d.x, false, true), global0.c)));
    global3 = array<vec2<f32>, 30>();
    var var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b.x, 13931i, -15848i, 17976i), vec4<i32>(global0.b.x, var_0.x << (1u % 32u), global0.b.x, -global0.b.x), ~(-vec4<i32>(-1i, -2147483647i, 2147483647i, u_input.c.x))), -(-vec4<i32>(u_input.a, -2147483647i, global0.b.x, 1i) | _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, global0.b.x, 23848i, -17366i), vec4<i32>(-55258i, var_0.x, var_0.x, 2147483647i)))) ^ (_wgslsmith_mod_vec4_i32(-max(vec4<i32>(var_0.x, 30273i, var_0.x, 0i), vec4<i32>(63040i, 0i, u_input.c.x, u_input.c.x)), vec4<i32>(-1i, u_input.a, 0i, -1i) ^ reverseBits(vec4<i32>(1i, global0.b.x, global0.b.x, u_input.a))) << ((vec4<u32>(u_input.b, _wgslsmith_mod_u32(arg_0, 4294967295u), global0.c.x, arg_0) << ((vec4<u32>(global0.c.x, u_input.b, global0.c.x, global0.c.x) | abs(vec4<u32>(9420u, arg_0, u_input.b, 0u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global1 = !(!all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, global0.d.x), vec4<bool>(global0.d.x, true, global0.d.x, global0.d.x)), vec4<bool>(true, global0.d.x, global0.d.x, global0.d.x), select(vec4<bool>(true, true, false, false), vec4<bool>(global0.d.x, true, global0.d.x, global0.d.x), vec4<bool>(false, false, global0.d.x, true)))));
    return ~firstLeadingBit(vec3<u32>(~(~u_input.b), ~(~121167u), 66694u));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<u32>) -> Struct_1 {
    global3 = array<vec2<f32>, 30>();
    var var_0 = ~arg_1.x;
    let var_1 = Struct_3(-u_input.c.x, -2039f, arg_0.x, arg_1);
    let var_2 = ~0u;
    var var_3 = var_1;
    return Struct_1(945f, _wgslsmith_add_vec3_i32(-_wgslsmith_sub_vec3_i32(u_input.c, abs(vec3<i32>(var_1.a, var_3.a, var_1.a))), global0.b), ~(~arg_0), vec2<bool>(select(any(select(vec2<bool>(global0.d.x, false), global0.d, global0.d.x)), !global0.d.x, !global0.d.x), global0.d.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec2<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, u_input.b, u_input.b, 0u)), vec4<u32>(global0.c.x, u_input.b, 13762u, 29552u)), ~_wgslsmith_sub_u32(u_input.b, 20788u)), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 75902u, 4294967295u), vec3<u32>(global0.c.x, u_input.b, global0.c.x)), vec3<u32>(79392u, global0.c.x, 4961u)) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1u), vec3<u32>(global0.c.x, u_input.b, 60247u)) % vec3<u32>(32u)), countOneBits(~vec3<u32>(57481u, 0u, 70489u) << (func_1(4294967295u) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(global0.b.x, var_0.b.x, ~var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -182f) * global0.a), global0.e, global0.d.x)) + _wgslsmith_f_op_f32(round(162f))), global2[_wgslsmith_index_u32(func_5(reverseBits(vec2<u32>(var_0.c.x, u_input.b)) >> (vec2<u32>(~4294967295u, global0.c.x >> (1u % 32u)) % vec2<u32>(32u)), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(max(vec3<u32>(var_0.c.x, 57059u, var_0.c.x), vec3<u32>(38231u, global0.c.x, u_input.b)), func_1(var_0.c.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, var_0.c.x, var_0.c.x) & vec3<u32>(var_0.c.x, global0.c.x, 0u), abs(vec3<u32>(global0.c.x, var_0.c.x, 49309u))))).c.x, 21u)], vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e + 334f)), var_0.a)), _wgslsmith_f_op_f32(round(var_0.a)), _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(global0.a - -1766f))));
}

