struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(-472f, -1516f, 443f, -992f, -630f, 832f, -586f, -2422f, 1002f, 1000f, 863f, -1565f, -1020f, -823f, -1009f, -2106f, 1000f, 661f, 737f, 1000f, 425f, -690f, -1138f, -624f, -147f, -2153f, 757f, -1998f, 118f, 181f, 268f, 2268f);

var<private> global1: i32;

var<private> global2: Struct_2 = Struct_2(false, Struct_1(vec2<i32>(20625i, 20816i), vec3<f32>(1521f, 2354f, 1000f)), vec3<f32>(368f, -1231f, 660f), -26945i, vec2<f32>(-1258f, -462f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = arg_1;
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    var var_1 = vec3<u32>(63258u, 7500u, firstTrailingBit(countOneBits(reverseBits(1u)) & _wgslsmith_clamp_u32(~17410u, 91539u, 44816u)));
    global1 = -13895i;
    return !vec4<bool>(true, !all(vec2<bool>(true, true)) & global2.a, any(vec4<bool>(any(vec4<bool>(var_0.a, true, true, var_0.a)), select(arg_1.a, arg_1.a, true), true, arg_1.a)), true);
}

fn func_2() -> Struct_3 {
    let var_0 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, global2.d), 1i), 6996i, _wgslsmith_mult_i32(u_input.a >> (61989u % 32u), -abs(~40945i)), 2147483647i);
    var var_1 = Struct_2(true, global2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global2.c)) * vec3<f32>(global0[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(4294967295u, 0u), ~19384u), 32u)], _wgslsmith_f_op_f32(f32(-1f) * -580f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(countOneBits(92794u), 32u)] * -514f))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.x, -1i) | abs(u_input.b.wy), vec2<i32>(var_0.x, -42009i)), u_input.a), _wgslsmith_f_op_vec2_f32(step(global2.e, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-968f * global2.b.b.x) * -1761f), _wgslsmith_f_op_f32(floor(global2.b.b.x))))));
    var var_2 = select(select(select(vec4<bool>(global2.a, all(vec3<bool>(true, true, global2.a)), 0i <= var_1.d, !var_1.a), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(17538u, 32u)]) <= _wgslsmith_f_op_f32(411f * 533f)), select(vec4<bool>(false, var_1.a, global2.a, false), !(!vec4<bool>(global2.a, false, var_1.a, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), any(vec2<bool>(true, false)))), vec4<bool>(var_1.a, false, true, !(var_1.a && global2.a))), select(!vec4<bool>(all(vec3<bool>(false, true, false)), var_1.a, true, any(vec2<bool>(var_1.a, var_1.a))), !func_3(global2.b, Struct_2(false, global2.b, vec3<f32>(global0[_wgslsmith_index_u32(16286u, 32u)], -1081f, -370f), 2147483647i, global2.c.xx), Struct_1(vec2<i32>(global2.d, -1974i), var_1.b.b)), !(global2.a & (false | global2.a))), func_3(Struct_1(-vec2<i32>(42602i, var_0.x), _wgslsmith_f_op_vec3_f32(-global2.b.b)), Struct_2(select(true, -2147483647i > u_input.b.x, func_3(Struct_1(u_input.b.yy, global2.c), Struct_2(var_1.a, global2.b, vec3<f32>(global2.c.x, 1056f, var_1.b.b.x), var_1.b.a.x, vec2<f32>(var_1.b.b.x, var_1.e.x)), global2.b).x), Struct_1(global2.b.a, _wgslsmith_f_op_vec3_f32(-global2.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global2.b.b))), global2.b.a.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-967f, var_1.b.b.x), vec2<f32>(global2.b.b.x, 1033f), vec2<bool>(global2.a, true)))))), global2.b));
    var var_3 = -2147483647i;
    var var_4 = vec3<i32>(countOneBits(abs(var_0.x)), 2147483647i, var_0.x);
    return Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 32u)])), global2.c.x, true)), ~select(~vec3<u32>(4294967295u, 19468u, 81109u), abs(vec3<u32>(7107u, 30949u, 50343u)), vec3<bool>(true, var_1.a, var_2.x)) ^ ~min(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.x, arg_0.a, arg_1.a, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~0u, 32u)] * _wgslsmith_f_op_f32(ceil(151f)))))));
    global1 = _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(~19872i, _wgslsmith_sub_i32(global2.d, 2147483647i))), vec2<i32>(firstLeadingBit(global2.b.a.x), 37283i));
    let var_1 = arg_0.b.xx;
    global1 = -57964i;
    global2 = Struct_2(global2.a, Struct_1(_wgslsmith_mult_vec2_i32(select(-vec2<i32>(38143i, 19893i), arg_3.yy, all(vec4<bool>(global2.a, global2.a, global2.a, false))), firstTrailingBit(vec2<i32>(1i, global2.d))), arg_2), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(425f, var_0.x, _wgslsmith_f_op_f32(-arg_0.a)), var_0.zyy)), i32(-1i) * -1i, _wgslsmith_f_op_vec2_f32(arg_2.xy - vec2<f32>(770f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * global2.c.x))));
    return Struct_1(countOneBits(firstTrailingBit(arg_3.yz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global2.c)))) * _wgslsmith_f_op_vec3_f32(var_0.wyy * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -852f), _wgslsmith_f_op_f32(-global2.c.x), 653f))));
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    let var_0 = func_4(func_2(), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1631f * global2.b.b.x) - -491f) * global2.b.b.x), ~(~vec3<u32>(0u, 93831u, 4294967295u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), global2.b.b, _wgslsmith_mult_vec3_i32(abs(select(_wgslsmith_mult_vec3_i32(arg_0, vec3<i32>(28969i, u_input.b.x, 8649i)), abs(u_input.b.yxy), !vec3<bool>(global2.a, global2.a, false))), firstTrailingBit(vec3<i32>(~arg_0.x, 752i, global2.d))));
    global1 = 43110i;
    global0 = array<f32, 32>();
    var var_1 = reverseBits(~0u);
    global0 = array<f32, 32>();
    return select(~func_2().b.x, 20584u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-617f * var_0.b.x)) == _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(trunc(485f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 3051f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -_wgslsmith_div_i32(-global2.b.a.x, global2.d) << (func_1(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_mod_i32(global2.b.a.x, -8859i)), global2.d, max(global2.d, _wgslsmith_mod_i32(2147483647i, global2.b.a.x)))) % 32u);
    global0 = array<f32, 32>();
    let var_0 = vec4<bool>(any(func_3(func_4(Struct_3(global2.e.x, vec3<u32>(1u, 148873u, 57971u)), Struct_3(396f, vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec3<f32>(global2.e.x, 758f, global2.c.x), vec3<i32>(global2.d, u_input.a, global2.b.a.x)), Struct_2(false, Struct_1(vec2<i32>(0i, u_input.b.x), vec3<f32>(2406f, 921f, -1526f)), vec3<f32>(global0[_wgslsmith_index_u32(19304u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], -455f), 5793i, global2.b.b.xx), func_4(Struct_3(1247f, vec3<u32>(76599u, 73876u, 38370u)), Struct_3(-1584f, vec3<u32>(0u, 1u, 1u)), vec3<f32>(global2.c.x, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(57757u, 32u)]), vec3<i32>(44865i, 0i, -66175i))).yzy) & false, any(vec4<bool>(true, true, true, true)), global2.a, true);
    let var_1 = -_wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(u_input.b.wzx << (vec3<u32>(1u, 2223u, 45243u) % vec3<u32>(32u)), vec3<i32>(4184i, global2.b.a.x, global2.d)), select(vec3<i32>(-global2.b.a.x, 0i, 44422i), _wgslsmith_div_vec3_i32(~vec3<i32>(33781i, u_input.a, u_input.b.x), firstTrailingBit(u_input.b.ywy)), !(var_0.x && true)));
    var var_2 = Struct_1(~(vec2<i32>(-1i) * -u_input.b.xy), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(30767u, 32u)]) + global2.b.b.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 32u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 32u)]), _wgslsmith_f_op_f32(global2.e.x * global2.c.x)) - -448f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1479f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-268f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 32u)] * 897f)) - global0[_wgslsmith_index_u32(1u, 32u)]), -1247f, -848f), 2147483647i, global2.e.x);
}

