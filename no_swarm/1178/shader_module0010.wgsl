struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 16> = array<i32, 16>(10439i, -38127i, -54012i, 0i, -1i, -9996i, 1i, -1665i, 8464i, 15377i, -20848i, i32(-2147483648), 44856i, 2147483647i, -1i, i32(-2147483648));

var<private> global2: array<vec4<bool>, 31>;

var<private> global3: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(48988u, 19251u), vec2<u32>(67126u, 4294967295u), vec2<u32>(15542u, 32380u), vec2<u32>(4294967295u, 26488u), vec2<u32>(29217u, 39766u), vec2<u32>(52026u, 0u), vec2<u32>(0u, 1u), vec2<u32>(0u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 66844u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(24049u, 20370u), vec2<u32>(8731u, 66675u), vec2<u32>(1u, 0u), vec2<u32>(6225u, 44571u), vec2<u32>(0u, 8906u), vec2<u32>(31927u, 0u), vec2<u32>(0u, 1u), vec2<u32>(58717u, 19805u), vec2<u32>(75973u, 46402u), vec2<u32>(25378u, 1u), vec2<u32>(32489u, 1u));

var<private> global4: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(2147483647i, -1i, 45819i, -4433i), vec4<i32>(1i, i32(-2147483648), 41358i, -1i), vec4<i32>(-44500i, 1i, 30915i, -28734i), vec4<i32>(-2368i, -1i, 0i, 15434i), vec4<i32>(-2295i, i32(-2147483648), -64916i, 2147483647i), vec4<i32>(0i, 25162i, -26332i, -5968i), vec4<i32>(54078i, 36351i, -1i, -8289i), vec4<i32>(-12156i, -3380i, 2147483647i, -13616i), vec4<i32>(0i, -23376i, -1i, 1i), vec4<i32>(35054i, 1i, -20462i, -30674i), vec4<i32>(-27712i, -1i, 2147483647i, 11155i), vec4<i32>(1i, -1i, 0i, 2147483647i), vec4<i32>(42212i, -28968i, -33275i, 49896i), vec4<i32>(1i, 0i, 74514i, -26503i), vec4<i32>(2147483647i, 1i, i32(-2147483648), 19234i), vec4<i32>(71385i, -22434i, -14489i, -1i), vec4<i32>(32196i, 70039i, 0i, 2147483647i), vec4<i32>(-1i, 51826i, 1i, 0i), vec4<i32>(-30875i, 15380i, 2147483647i, 21683i), vec4<i32>(41862i, 2147483647i, 0i, -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), -35940i, 2147483647i), vec4<i32>(-25296i, 0i, i32(-2147483648), i32(-2147483648)), vec4<i32>(i32(-2147483648), -14467i, 0i, -9774i));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = all(!vec4<bool>(true, abs(u_input.a.x) <= global0.b, true, true));
    global2 = array<vec4<bool>, 31>();
    var var_1 = -9034i;
    var_1 = -global1[_wgslsmith_index_u32(~firstLeadingBit(u_input.a.x) << (u_input.a.x % 32u), 16u)] | (-(~(-24458i)) ^ (13057i | global1[_wgslsmith_index_u32(0u, 16u)]));
    global0 = Struct_1(global0.a, 0u, global0.c, 20768u);
    return 1256u;
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_3(Struct_2(abs(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(global4[_wgslsmith_index_u32(15672u, 23u)], global4[_wgslsmith_index_u32(72773u, 23u)]), ~global4[_wgslsmith_index_u32(1u, 23u)])), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 67810i, global1[_wgslsmith_index_u32(0u, 16u)]), vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 16u)], -29706i)), 2147483647i) << (func_3() % 32u)), Struct_2(_wgslsmith_mod_vec4_i32(-global4[_wgslsmith_index_u32(~0u, 23u)], vec4<i32>(0i, ~296i, global1[_wgslsmith_index_u32(~61939u, 16u)], _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(17058u, 16u)]))), global1[_wgslsmith_index_u32(func_3(), 16u)]), ~(vec4<i32>(1i, -11548i, -2147483647i >> (u_input.a.x % 32u), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(global0.d, 16u)])) ^ (-global4[_wgslsmith_index_u32(u_input.a.x, 23u)] >> (reverseBits(vec4<u32>(u_input.a.x, 2184u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)))), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), true), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(-988f)), global0.a.x), 0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(291f, 1000f))))), u_input.a.x));
    global1 = array<i32, 16>();
    var var_1 = Struct_3(var_0.b, var_0.b, vec4<i32>(_wgslsmith_div_i32(1i, -50768i), -1i, ~1i, _wgslsmith_mod_i32(_wgslsmith_div_i32(-var_0.a.a.x, 2147483647i), ~var_0.b.b)), select(select(vec2<bool>(true, !var_0.d.x), !(!var_0.d), !var_0.d), select(select(select(var_0.d, var_0.d, false), select(vec2<bool>(var_0.d.x, false), vec2<bool>(var_0.d.x, var_0.d.x), var_0.d), select(false, var_0.d.x, var_0.d.x)), vec2<bool>(any(vec3<bool>(var_0.d.x, var_0.d.x, true)), select(false, var_0.d.x, var_0.d.x)), var_0.d), vec2<bool>(select(false, false, var_0.d.x), !var_0.d.x | true)), Struct_1(vec2<f32>(573f, _wgslsmith_div_f32(global0.a.x, 1334f)), ~_wgslsmith_clamp_u32(~u_input.a.x, global0.b, ~10564u), _wgslsmith_f_op_vec2_f32(max(var_0.e.c, vec2<f32>(_wgslsmith_f_op_f32(-1084f * 584f), 1000f))), 0u));
    var var_2 = Struct_3(var_1.a, var_0.a, (vec4<i32>(29817i, ~29274i, global1[_wgslsmith_index_u32(u_input.a.x, 16u)] >> (u_input.a.x % 32u), 1i) << (~firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 3333u)) % vec4<u32>(32u))) ^ var_0.b.a, vec2<bool>(true, var_1.d.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.e.a.x)), _wgslsmith_div_f32(global0.a.x, 453f)), ~firstTrailingBit(_wgslsmith_mod_u32(var_1.e.b, 53845u)), vec2<f32>(-452f, var_0.e.c.x), abs(~1u)));
    let var_3 = max(-(1i << (var_1.e.b % 32u)), var_2.b.a.x);
    return ~max(vec3<u32>(global0.d, 59529u, ~global0.d), firstLeadingBit(vec3<u32>(u_input.a.x, var_1.e.b, 30960u) | max(vec3<u32>(var_0.e.b, var_2.e.d, var_2.e.b), vec3<u32>(50734u, 10308u, 38898u))));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> vec4<u32> {
    global2 = array<vec4<bool>, 31>();
    global2 = array<vec4<bool>, 31>();
    global1 = array<i32, 16>();
    let var_0 = vec3<bool>(select(true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - -791f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + arg_1.x)), firstLeadingBit(abs(~u_input.a.x)) < ~u_input.a.x, arg_0);
    var var_1 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(global0.b, 0u), min(0u, 52153u), ~24781u), _wgslsmith_mod_vec3_u32(func_2(), vec3<u32>(0u, 4294967295u, 1u))), ~_wgslsmith_mult_u32(87400u, u_input.a.x), select(u_input.a.x, max(global0.b, _wgslsmith_add_u32(7652u, 57324u)), true));
    return vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(max(40284u, 59386u), u_input.a.x) | u_input.a.x, 4294967295u), u_input.a.x, max(78201u, _wgslsmith_mod_u32(_wgslsmith_add_u32(global0.b, ~0u), _wgslsmith_sub_u32(0u, var_1.x) & var_1.x)), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, global0.d), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u)) << (abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, global0.d, 0u, global0.d), vec4<u32>(81642u, 4049u, 0u, u_input.a.x))) % vec4<u32>(32u))) & func_1(false, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-global0.c.x), -1888f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)))));
    let var_1 = var_0.x;
    var var_2 = Struct_2(countOneBits(_wgslsmith_mod_vec4_i32(min(global4[_wgslsmith_index_u32(global0.d, 23u)], vec4<i32>(global1[_wgslsmith_index_u32(0u, 16u)], -8212i, global1[_wgslsmith_index_u32(global0.b, 16u)], global1[_wgslsmith_index_u32(var_0.x, 16u)])), countOneBits(_wgslsmith_mod_vec4_i32(global4[_wgslsmith_index_u32(u_input.a.x, 23u)], vec4<i32>(global1[_wgslsmith_index_u32(38644u, 16u)], global1[_wgslsmith_index_u32(var_0.x, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(var_0.x, 16u)]))))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 89498i, global1[_wgslsmith_index_u32(4294967295u, 16u)]), min(vec3<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(global0.b, 16u)]), vec3<i32>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(20333u, 16u)]))) >> (vec3<u32>(~0u, u_input.a.x, 1u) % vec3<u32>(32u)), vec3<i32>(abs(~(-5776i)), _wgslsmith_add_i32(-20606i, firstLeadingBit(global1[_wgslsmith_index_u32(66676u, 16u)])), -20875i)));
    let var_3 = Struct_4(func_1(~(~global0.d) != ~var_0.x, _wgslsmith_f_op_vec2_f32(select(global0.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global0.a), _wgslsmith_f_op_vec2_f32(select(global0.a, global0.a, true)))), true))).yz);
    var var_4 = !select(abs(~54272u) != _wgslsmith_mult_u32(var_0.x & var_3.a.x, 4294967295u), select(false, false, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 14091u, 37201u, var_0.x), vec4<u32>(u_input.a.x, var_0.x, u_input.a.x, var_3.a.x)) < 92439u), -global1[_wgslsmith_index_u32(var_3.a.x, 16u)] >= countOneBits(~global1[_wgslsmith_index_u32(4294967295u, 16u)]));
    var var_5 = var_2.a.xwx;
    global4 = array<vec4<i32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(global0.a.x, -787f)), _wgslsmith_f_op_f32(ceil(global0.a.x)), 1f, _wgslsmith_f_op_f32(abs(-2012f))))), global0.b, vec2<i32>(abs(var_5.x | ~var_5.x), countOneBits(_wgslsmith_dot_vec4_i32(abs(var_2.a), firstTrailingBit(var_2.a)))));
}

