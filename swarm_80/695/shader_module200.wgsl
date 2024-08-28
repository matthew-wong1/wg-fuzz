struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(57940u, 3778u, 45895u, 43645u);

var<private> global1: array<f32, 7>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_5) -> vec3<bool> {
    global0 = select(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(22364u, ~36463u, max(u_input.a, arg_1), global0.x << (6730u % 32u)), vec4<u32>(_wgslsmith_mult_u32(33628u, 21521u), arg_1, 4294967295u, arg_2.b & arg_2.b))), firstTrailingBit(vec4<u32>(abs(~1u), firstTrailingBit(~1u), 4294967295u, abs(37818u))), arg_2.a);
    return vec3<bool>(any(vec4<bool>(true, true, arg_0, true)), arg_2.a, true);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: u32, arg_3: i32) -> vec4<bool> {
    var var_0 = Struct_3(arg_0.b, !(!vec2<bool>(1u < global0.x, true)), func_3(arg_0.a.b, 4294967295u, Struct_5(false, arg_2, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 453f, arg_1.x, 1391f))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(min(464f, arg_1.x))))), u_input.b >> (~reverseBits(vec4<u32>(4294967295u, u_input.a, 1u, global0.x)) % vec4<u32>(32u)));
    global1 = array<f32, 7>();
    let var_1 = ~countOneBits(abs(arg_0.c.zz));
    var var_2 = _wgslsmith_div_vec3_f32(arg_0.a.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1899f, _wgslsmith_f_op_f32(-arg_0.b.c.x), 658f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) + vec3<f32>(_wgslsmith_f_op_f32(-1040f * arg_1.x), _wgslsmith_f_op_f32(301f * global1[_wgslsmith_index_u32(arg_2, 7u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 7u)])))));
    let var_3 = (vec3<i32>(-1i) * -firstTrailingBit(_wgslsmith_sub_vec3_i32(u_input.b.zxx, vec3<i32>(0i, arg_3, -1i)))) & vec3<i32>(-2136i, max(-15136i, min(var_0.d.x, _wgslsmith_clamp_i32(var_0.a.a.x, -2147483647i, u_input.b.x))), var_0.d.x);
    return !select(vec4<bool>(true, false, arg_0.a.b, !any(vec4<bool>(var_0.a.b, false, var_0.b.x, arg_0.a.b))), vec4<bool>(var_0.c.x, !(arg_0.a.b && arg_0.a.b), arg_0.a.b, !(global1[_wgslsmith_index_u32(global0.x, 7u)] > var_0.a.c.x)), vec4<bool>(!(arg_0.b.c.x == arg_1.x), !all(vec3<bool>(true, false, arg_0.a.b)), _wgslsmith_add_i32(arg_0.b.a.x, arg_0.a.a.x) >= var_3.x, arg_0.b.b));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>) -> vec4<bool> {
    global1 = array<f32, 7>();
    global1 = array<f32, 7>();
    global0 = vec4<u32>(u_input.a | ~(~22861u), min(4294967295u, global0.x) ^ 52540u, max(global0.x, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global0.x, 0u, 51446u), vec4<u32>(global0.x, 11928u, global0.x, global0.x) >> (vec4<u32>(0u, 1u, u_input.a, global0.x) % vec4<u32>(32u))))), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, global0.x) | global0.wzz), _wgslsmith_mult_vec3_u32(~vec3<u32>(global0.x, 86495u, 26492u), global0.yxx)));
    let var_0 = arg_1.xy;
    let var_1 = -select(~reverseBits(_wgslsmith_mod_vec3_i32(u_input.b.yyy, u_input.b.zxw)), vec3<i32>(14750i, -1383i, 35778i), any(arg_0.xxy));
    return vec4<bool>(true != arg_0.x, true, !(!(0u < u_input.a)), reverseBits(_wgslsmith_mult_i32(23385i, -var_1.x)) == var_1.x);
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_4(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 7u)])) > _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(787f, -1000f))), !all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), false)), _wgslsmith_add_u32(22088u, u_input.a) < ((4294967295u >> (1u % 32u)) >> (~4294967295u % 32u))), func_4(select(select(func_2(Struct_2(Struct_1(vec3<i32>(u_input.b.x, 36068i, u_input.b.x), true, vec3<f32>(global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(66115u, 7u)], -232f)), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, -1i), true, vec3<f32>(833f, global1[_wgslsmith_index_u32(48633u, 7u)], 843f)), vec3<u32>(21226u, 70157u, 4294967295u), vec4<u32>(u_input.a, 12720u, global0.x, 53053u), vec4<u32>(u_input.a, 67472u, 0u, u_input.a)), vec3<f32>(1914f, -2423f, -697f), global0.x, 0i), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), false), true), vec4<bool>(all(vec4<bool>(true, true, false, false)), false, true, false), vec4<bool>(true, true, true, true)), vec3<bool>(true, true, true)), Struct_2(Struct_1(firstLeadingBit(-vec3<i32>(u_input.b.x, 16463i, -2147483647i)), _wgslsmith_add_i32(18879i, 18723i) != u_input.b.x, vec3<f32>(1f, 1f, 1f)), Struct_1(_wgslsmith_mult_vec3_i32(-vec3<i32>(-6784i, u_input.b.x, -13183i), u_input.b.wzy << (global0.xxz % vec3<u32>(32u))), func_3(all(vec2<bool>(true, true)), _wgslsmith_div_u32(0u, global0.x), Struct_5(true, global0.x, vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 7u)], global1[_wgslsmith_index_u32(11147u, 7u)], global1[_wgslsmith_index_u32(global0.x, 7u)], 1059f), -692f)).x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2090f, -952f, global1[_wgslsmith_index_u32(0u, 7u)]))))), abs(~global0.zxz | global0.yxz), vec4<u32>(33917u, u_input.a, ~(~31979u), 28761u), ~select(~vec4<u32>(global0.x, 18910u, global0.x, 0u), select(vec4<u32>(4294967295u, global0.x, 1u, global0.x), vec4<u32>(0u, 32075u, 1u, u_input.a), vec4<bool>(true, true, true, true)), false)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-347f)));
    let var_2 = global0.wy;
    let var_3 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, var_0.c.d.x, var_2.x, global0.x), var_0.c.e)), ~global0.xw), _wgslsmith_dot_vec4_u32(select(reverseBits(var_0.c.e << (vec4<u32>(4294967295u, var_2.x, var_2.x, 21747u) % vec4<u32>(32u))), var_0.c.d & _wgslsmith_div_vec4_u32(var_0.c.e, vec4<u32>(var_0.c.d.x, u_input.a, 4294967295u, 41844u)), vec4<bool>(any(vec4<bool>(false, var_0.c.b.b, var_0.b.x, var_0.c.b.b)), any(vec3<bool>(false, true, false)), true, all(var_0.b))), _wgslsmith_sub_vec4_u32(var_0.c.d, vec4<u32>(global0.x, ~4294967295u, 52284u, _wgslsmith_mult_u32(var_2.x, 78333u)))), abs(~max(max(var_0.c.e.x, 60326u), ~1u)), 14805u << ((var_2.x >> (global0.x % 32u)) % 32u));
    var var_4 = var_0.a.x;
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(u_input.a, ~1u, ~0u, select(max(~global0.x, global0.x | global0.x), ~38381u | (1u | global0.x), true | select(true, false, false)) >> (~(1u ^ countOneBits(u_input.a)) % 32u));
    let var_0 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(~(-2147483647i), 53755i, u_input.b.x), -reverseBits(u_input.b.wyy) >> (abs(_wgslsmith_clamp_vec3_u32(global0.wwz, vec3<u32>(1u, global0.x, 1u), vec3<u32>(0u, u_input.a, global0.x))) % vec3<u32>(32u))), firstLeadingBit(-27143i) != (-2147483647i ^ _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, 14356i, u_input.b.x), vec4<i32>(1i, -4761i, 1i, 2147483647i)))), vec3<f32>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(50563u, 0u), 7u)])), -790f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 7u)] - global1[_wgslsmith_index_u32(u_input.a, 7u)]))))));
    var var_1 = Struct_4(!(!vec3<bool>(true, var_0.b, true)), select(vec4<bool>(all(vec4<bool>(var_0.b, false, var_0.b, var_0.b)), var_0.b, !var_0.b, false), select(select(!vec4<bool>(true, var_0.b, true, var_0.b), !vec4<bool>(var_0.b, var_0.b, false, var_0.b), vec4<bool>(false, true, false, true)), select(!vec4<bool>(var_0.b, false, var_0.b, false), !vec4<bool>(false, var_0.b, var_0.b, var_0.b), vec4<bool>(true, false, var_0.b, false)), u_input.a >= ~423u), !var_0.b), Struct_2(var_0, var_0, vec3<u32>(0u, _wgslsmith_mod_u32(u_input.a, 61710u), 36429u) & global0.xyz, ~max(vec4<u32>(u_input.a, u_input.a, global0.x, 1405u) << (vec4<u32>(global0.x, global0.x, global0.x, 20025u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 85947u, u_input.a, 4294967295u), vec4<u32>(u_input.a, global0.x, 4294967295u, 0u))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(20838u, 6059u, 0u, 0u)), select(vec4<u32>(global0.x, 8368u, 160010u, 0u), vec4<u32>(global0.x, 56680u, 1u, global0.x), true))));
    let var_2 = func_1();
    global1 = array<f32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_2.d, var_2.d | ~vec4<u32>(60560u, 4294967295u, 36326u, global0.x)), 7u)])));
}

