struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<i32>, 26>;

var<private> global2: Struct_2 = Struct_2(-58043i);

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> u32 {
    global2 = Struct_2(~global2.a);
    let var_0 = select(select(vec4<bool>(any(arg_1.b), arg_0.b.x, true, global0.a), vec4<bool>(arg_1.a, !any(vec4<bool>(arg_1.b.x, true, false, false)), all(select(vec2<bool>(global0.a, false), vec2<bool>(false, true), false)), true), vec4<bool>(false, !all(vec4<bool>(global3.a, true, global0.a, false)), global3.b.x, true)), !select(!vec4<bool>(true, true, arg_1.a, true), vec4<bool>(true, false, any(arg_1.b.xx), arg_0.a & global3.a), select(select(vec4<bool>(false, arg_1.a, arg_0.b.x, arg_1.b.x), vec4<bool>(arg_0.b.x, global3.a, global3.b.x, true), vec4<bool>(global3.a, false, arg_1.a, global0.b.x)), !vec4<bool>(arg_0.b.x, true, global3.b.x, arg_0.b.x), select(vec4<bool>(false, false, arg_1.b.x, arg_0.a), vec4<bool>(false, true, true, true), vec4<bool>(global3.b.x, true, global3.a, arg_1.a)))), arg_0.a);
    var var_1 = countOneBits(~(~_wgslsmith_div_u32(arg_0.c.x, global0.c.x)) & ~(~arg_0.c.x & global3.c.x));
    var var_2 = _wgslsmith_mod_u32(~0u | global0.c.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_1.c, vec2<u32>(~9295u, u_input.b)), vec2<u32>(arg_0.c.x, global3.c.x)));
    var_1 = arg_0.c.x;
    return ~_wgslsmith_clamp_u32(u_input.b, 4294967295u, global0.c.x);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(any(vec3<bool>(global3.b.x, false, true)), vec3<bool>(~_wgslsmith_div_u32(112102u, global3.c.x) > func_3(Struct_3(global3.a, global0.b, vec2<u32>(1u, global3.c.x)), Struct_3(true, global3.b, vec2<u32>(0u, global3.c.x))), global3.b.x && false, !global0.a), max(select(global0.c, _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(global3.c, vec2<u32>(4294967295u, 31671u)), global3.c), select(vec2<bool>(global3.b.x, global0.b.x), global0.b.zx, any(vec4<bool>(true, global3.a, true, false)))), vec2<u32>(_wgslsmith_div_u32(u_input.b, global0.c.x), 101902u & global3.c.x) >> (~global0.c % vec2<u32>(32u))));
    var var_1 = _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~global0.c, _wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.c.x, 6405u), _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(u_input.b, u_input.b)), vec2<u32>(5716u, global3.c.x), _wgslsmith_add_vec2_u32(global3.c, global0.c)))), min(abs(var_0.c), abs(vec2<u32>(global3.c.x ^ 1u, select(0u, 48454u, false)))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1625f, -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(698f - -277f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(986f * -253f)))) - _wgslsmith_f_op_f32(432f * _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1076f, -1063f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-276f)) + _wgslsmith_f_op_f32(-133f + _wgslsmith_div_f32(-222f, 700f)))), _wgslsmith_f_op_f32(trunc(-549f)));
    global0 = Struct_3(var_0.c.x < ~countOneBits(_wgslsmith_mod_u32(global3.c.x, 1u)), var_0.b, var_0.c);
    global3 = Struct_3(true, !(!(!var_0.b)), ~(~(~var_0.c)));
    return Struct_1(-(-reverseBits(vec4<i32>(0i, u_input.a.x, global2.a, global2.a)) & -vec4<i32>(global2.a, 10568i, global2.a, u_input.a.x)), select(!(!var_0.b), vec3<bool>(true, !global0.b.x, global0.b.x), global3.b.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = 26195u;
    var var_1 = firstLeadingBit(~u_input.b) >> (func_3(Struct_3(true, global3.b, ~global0.c | vec2<u32>(global0.c.x, global0.c.x)), Struct_3(!global0.b.x, arg_1.b, _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(global3.c, global0.c), global3.c, max(global0.c, vec2<u32>(global3.c.x, global3.c.x))))) % 32u);
    global1 = array<vec3<i32>, 26>();
    var_0 = firstLeadingBit(firstTrailingBit(71682u));
    var var_2 = -1000f;
    return arg_0;
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    var var_0 = Struct_1(-(_wgslsmith_add_vec4_i32(-vec4<i32>(global2.a, 21083i, global2.a, u_input.a.x), vec4<i32>(global2.a, u_input.a.x, u_input.a.x, 5609i)) | vec4<i32>(global2.a, global2.a, u_input.a.x ^ 1i, _wgslsmith_add_i32(1i, 17999i))), vec3<bool>(true, !all(vec4<bool>(global0.b.x, global3.b.x, false, global3.b.x)), any(!(!vec4<bool>(global3.b.x, true, true, global3.b.x)))));
    var_0 = func_4(func_2(), Struct_1(vec4<i32>(-15549i, _wgslsmith_sub_i32(1i, var_0.a.x), 21282i, _wgslsmith_dot_vec2_i32(var_0.a.xy, vec2<i32>(2147483647i, u_input.a.x))), !var_0.b), -2147483647i);
    global3 = Struct_3(true, vec3<bool>(func_2().b.x, global0.b.x, true), arg_0.xz);
    var var_1 = global0.c;
    let var_2 = vec4<i32>(-(~_wgslsmith_add_i32(select(global2.a, -4575i, global3.b.x), func_4(Struct_1(var_0.a, vec3<bool>(global0.b.x, global0.b.x, global3.a)), Struct_1(vec4<i32>(global2.a, -1i, global2.a, u_input.a.x), global0.b), u_input.a.x).a.x)), -34142i, _wgslsmith_dot_vec3_i32(-vec3<i32>(global2.a, 1i, abs(var_0.a.x)), select(func_2().a.wxy, vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, u_input.a.x, var_0.a.x), vec3<bool>(global2.a != u_input.a.x, var_0.b.x, -39942i >= var_0.a.x))), min(global2.a << ((global0.c.x >> (0u % 32u)) % 32u), _wgslsmith_clamp_i32(-102048i, -2147483647i, global2.a ^ 8833i)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1017f)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_2) -> Struct_3 {
    var var_0 = func_4(Struct_1(firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(global2.a, arg_2.a, 1i, 1i)), global0.b), Struct_1(select(-reverseBits(vec4<i32>(u_input.a.x, arg_2.a, u_input.a.x, arg_2.a)), ~(~vec4<i32>(arg_2.a, global2.a, 1i, arg_2.a)), !vec4<bool>(global3.b.x, true, arg_1, global3.b.x)), !global3.b), ~41783i);
    var var_1 = global3.c.x;
    global0 = Struct_3(true, vec3<bool>(arg_1, any(!(!vec4<bool>(global0.b.x, arg_1, var_0.b.x, true))), any(func_4(Struct_1(var_0.a, vec3<bool>(global3.a, false, true)), func_2(), ~arg_2.a).b)), vec2<u32>(~(_wgslsmith_add_u32(22401u, global0.c.x) | u_input.b), min(u_input.b, 1u) & 0u));
    let var_2 = _wgslsmith_dot_vec3_i32(abs(u_input.a), vec3<i32>(firstTrailingBit(global2.a) & (abs(1i) << (~u_input.b % 32u)), 0i, _wgslsmith_dot_vec4_i32(max(vec4<i32>(22016i, global2.a, -29126i, -2147483647i), vec4<i32>(28876i, 58543i, 11413i, 1i)), vec4<i32>(1i, 1i, 1i, ~(-2147483647i)))));
    var var_3 = Struct_1(-_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(53680i, arg_2.a, global2.a), u_input.a), _wgslsmith_div_i32(27049i, var_2)), max(var_0.a, var_0.a)), !global3.b);
    return Struct_3(!arg_1, global3.b, vec2<u32>(_wgslsmith_div_u32(21920u << (global0.c.x % 32u), global3.c.x), 30862u ^ ~(1u >> (global3.c.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1982f, 1000f, -1000f)), vec3<f32>(1f, 1f, 1f), !global3.b)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(707f * 1000f) * _wgslsmith_f_op_f32(round(-690f))), _wgslsmith_div_f32(-1101f, 1027f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<u32>(global3.c.x, 64629u, 29787u, u_input.b))) * -1036f))), false, Struct_2(global2.a));
    global1 = array<vec3<i32>, 26>();
    var var_0 = 0i;
    global3 = Struct_3(global0.a, func_2().b, global3.c);
    let var_1 = reverseBits(_wgslsmith_mod_vec4_u32(max(vec4<u32>(max(global3.c.x, global0.c.x), 47568u, 0u, 16819u), vec4<u32>(~global3.c.x, ~u_input.b, global0.c.x << (u_input.b % 32u), global3.c.x)), select(~vec4<u32>(u_input.b, 4294967295u, global0.c.x, 26689u), vec4<u32>(35860u, global3.c.x, global3.c.x, 1u), !vec4<bool>(global0.a, false, true, true)) ^ reverseBits(~vec4<u32>(global0.c.x, global3.c.x, 1u, global0.c.x))));
    global3 = Struct_3(all(select(vec4<bool>(global3.b.x, true, global0.a, false), select(select(vec4<bool>(global0.a, true, false, global0.a), vec4<bool>(false, global3.a, global0.a, global0.a), vec4<bool>(true, false, true, false)), !vec4<bool>(global3.a, false, false, global0.a), select(vec4<bool>(true, true, false, global0.b.x), vec4<bool>(global3.a, false, global3.a, global3.a), false)), false)), func_4(func_2(), Struct_1(-vec4<i32>(0i, -57462i, -2147483647i, global2.a), global0.b), _wgslsmith_div_i32(global2.a, -1793i)).b, ~var_1.xw);
    var var_2 = func_4(func_4(Struct_1(-firstLeadingBit(vec4<i32>(global2.a, 0i, global2.a, -11027i)), global0.b), func_4(func_4(Struct_1(vec4<i32>(-1i, -1i, global2.a, -1i), global3.b), func_2(), _wgslsmith_div_i32(1i, global2.a)), func_2(), ~global2.a), global2.a), Struct_1(select(-(vec4<i32>(7913i, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<i32>(-2147483647i, 10110i, u_input.a.x, global2.a)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 49600i), vec4<i32>(2147483647i, global2.a, u_input.a.x, global2.a)), true), select(func_2().b, vec3<bool>(func_2().b.x, !global0.a, global2.a == u_input.a.x), !(!global0.b))), u_input.a.x).a.x;
    var_2 = 50550i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(1i, _wgslsmith_mod_i32(-u_input.a.x, -1i)), vec4<u32>(u_input.b, global0.c.x, 5566u, func_3(func_5(vec3<f32>(916f, 182f, 1058f), all(vec4<bool>(false, true, true, global0.b.x)), Struct_2(-2147483647i)), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1605f, -1000f, -2416f)), global0.b.x, Struct_2(50723i)))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(global3.c.x, 53146u, u_input.b, 37128u), ~vec4<u32>(global3.c.x, var_1.x, 6989u, 1u)), min(max(var_1, vec4<u32>(1u, global0.c.x, var_1.x, u_input.b)), ~var_1)), select(var_1.yzy, vec3<u32>(~func_5(vec3<f32>(1086f, 2038f, -933f), false, Struct_2(-2147483647i)).c.x, abs(~0u), ~1u), true), u_input.a.x);
}

