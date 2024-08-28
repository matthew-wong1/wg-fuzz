struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(2147483647i);

var<private> global2: Struct_1;

var<private> global3: array<i32, 1> = array<i32, 1>(i32(-2147483648));

var<private> global4: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(-1000f, -914f, -337f, -1033f), vec4<f32>(-434f, 444f, -318f, 411f), vec4<f32>(-586f, 1704f, 142f, -1402f), vec4<f32>(-1076f, -1000f, -1310f, 438f), vec4<f32>(-407f, 1334f, 1000f, -564f), vec4<f32>(-972f, -476f, 1376f, 494f), vec4<f32>(930f, -767f, -953f, 562f), vec4<f32>(-125f, 724f, -752f, -508f), vec4<f32>(331f, 848f, 458f, 869f), vec4<f32>(1358f, -2547f, 106f, 739f), vec4<f32>(-1629f, 388f, 1488f, 284f), vec4<f32>(-1000f, 388f, 727f, -932f), vec4<f32>(336f, -112f, -1000f, -987f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32) -> i32 {
    global3 = array<i32, 1>();
    var var_0 = vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 1u)], 0i, ~abs(global1.a));
    let var_1 = Struct_1(global3[_wgslsmith_index_u32(u_input.a, 1u)]);
    return firstLeadingBit(~(i32(-1i) * -1i));
}

fn func_2() -> vec4<u32> {
    global0 = Struct_1(max(func_3(vec3<f32>(603f, 1443f, 1109f), _wgslsmith_f_op_f32(select(423f, -1233f, true))) | u_input.b.x, ~global1.a));
    var var_0 = vec4<u32>(u_input.a >> ((1u << (1u % 32u)) % 32u), ~(u_input.a << (4294967295u % 32u)) >> (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(u_input.a, u_input.a, 33913u) << (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u))) % 32u), ~(~u_input.a), ~(~(~1u))) ^ vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 14761u, u_input.a, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, 29535u))), ~reverseBits(u_input.a)), min(~0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), vec2<u32>(0u, 1573u) | vec2<u32>(u_input.a, u_input.a))), u_input.a, min(28238u, _wgslsmith_add_u32(6369u, u_input.a) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(99030u, u_input.a), vec2<u32>(u_input.a, u_input.a)) % 32u)));
    global1 = Struct_1(_wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(~vec3<i32>(-20661i, global3[_wgslsmith_index_u32(var_0.x, 1u)], 30204i), reverseBits(vec3<i32>(-15809i, 6004i, global3[_wgslsmith_index_u32(var_0.x, 1u)]))), ~vec3<i32>(0i & global1.a, -global2.a, -global2.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-780f, -270f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -983f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1566f, -299f), vec2<f32>(1163f, 1158f))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-514f, 1000f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1477f, -1382f), vec2<f32>(-713f, 834f)))), vec2<f32>(_wgslsmith_f_op_f32(-1281f + 106f), _wgslsmith_f_op_f32(min(-406f, 851f)))))));
    var_0 = vec4<u32>(u_input.a, ~u_input.a ^ ~52576u, 4294967295u, _wgslsmith_sub_u32(~42314u, _wgslsmith_dot_vec3_u32(~(var_0.zyw & vec3<u32>(u_input.a, 22905u, u_input.a)), vec3<u32>(~var_0.x, 4294967295u, select(23898u, u_input.a, true)))));
    return vec4<u32>(reverseBits(_wgslsmith_div_u32(u_input.a, ~var_0.x)), ~0u, 4294967295u, ~(~4184u & ~var_0.x) >> ((u_input.a << (~(4294967295u << (u_input.a % 32u)) % 32u)) % 32u));
}

fn func_1(arg_0: f32) -> i32 {
    global4 = array<vec4<f32>, 13>();
    global4 = array<vec4<f32>, 13>();
    let var_0 = ~abs(~firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 13336u), vec2<u32>(23067u, u_input.a))));
    let var_1 = select(select(~(~vec4<u32>(4294967295u, 4294967295u, 46517u, u_input.a)), ~(~(~vec4<u32>(var_0.x, 23808u, 166321u, 1u))), arg_0 >= arg_0), _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.a, var_0.x, u_input.a, var_0.x)), vec4<u32>(var_0.x, 6482u, 1u, u_input.a) >> (vec4<u32>(0u, u_input.a, 1u, var_0.x) % vec4<u32>(32u))), func_2()), vec4<bool>(true, true, true, true));
    var var_2 = _wgslsmith_div_vec4_i32(select(reverseBits(~_wgslsmith_div_vec4_i32(vec4<i32>(0i, global0.a, global3[_wgslsmith_index_u32(u_input.a, 1u)], 9042i), vec4<i32>(u_input.b.x, 5771i, 0i, global1.a))), firstTrailingBit(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(global2.a, global2.a, global2.a, global1.a), vec4<i32>(-1i, 2147483647i, -6598i, 14830i)))), select(vec4<bool>(false, true, all(vec3<bool>(false, true, true)), any(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, any(vec2<bool>(true, true))), true)), vec4<i32>(2147483647i, 2147483647i, global2.a, 2147483647i));
    return _wgslsmith_div_i32(2147483647i, _wgslsmith_mod_i32(~min(_wgslsmith_dot_vec3_i32(var_2.wyz, var_2.yxy), global0.a), global1.a));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2169f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1182f + _wgslsmith_f_op_f32(sign(-1044f)))))));
    var var_1 = func_2().x;
    var var_2 = vec3<i32>(arg_0, func_3(vec3<f32>(_wgslsmith_f_op_f32(trunc(280f)), -498f, _wgslsmith_f_op_f32(var_0 - -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(710f)) + _wgslsmith_f_op_f32(-343f + var_0))), -2147483647i) << (select(~select(vec3<u32>(0u, u_input.a, 0u) | vec3<u32>(68722u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, 53374u, u_input.a), !vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), ~vec3<u32>(13292u, u_input.a, abs(u_input.a)), select(vec3<bool>(!arg_1.x, arg_1.x, arg_1.x), !select(arg_1.yyw, vec3<bool>(arg_1.x, true, arg_1.x), false), all(vec3<bool>(arg_1.x, false, arg_1.x)) & arg_1.x)) % vec3<u32>(32u));
    let var_3 = arg_3;
    var var_4 = vec3<bool>(all(arg_1.yxz), false, _wgslsmith_clamp_i32(func_3(vec3<f32>(1299f, var_0, var_0), 1027f), 37037i, ~_wgslsmith_sub_i32(var_2.x, 1i)) > arg_3.a);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(func_1(1f), !vec4<bool>(true, true, false, any(vec2<bool>(true, true))), global0.a, Struct_1(~1i));
    let var_0 = func_4(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, _wgslsmith_mult_i32(1i, -1i)), global0.a), select(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(false, false, false, false))), select(vec4<bool>(false, true, u_input.a == 23052u, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, false, true, false)), true, false)), _wgslsmith_mult_u32(~u_input.a, firstTrailingBit(u_input.a)) > _wgslsmith_sub_u32(u_input.a, ~11261u)), u_input.b.x, func_4(global3[_wgslsmith_index_u32(u_input.a, 1u)], vec4<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(true, false)), true, ~u_input.a > _wgslsmith_clamp_u32(4294967295u, u_input.a, 32144u)), -27950i, Struct_1(countOneBits(~0i))));
    let var_1 = -vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, global3[_wgslsmith_index_u32(u_input.a, 1u)], -16602i, global1.a), vec4<i32>(u_input.b.x, -23276i, global1.a, 661i))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(global1.a, global2.a, 16606i, 2147483647i), vec4<i32>(19130i, -2848i, global1.a, global3[_wgslsmith_index_u32(19733u, 1u)]), true), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, -24784i, u_input.b.x, global0.a), vec4<i32>(var_0.a, global3[_wgslsmith_index_u32(23492u, 1u)], 15832i, -21528i), vec4<i32>(global0.a, -1i, global0.a, u_input.b.x)))), global1.a);
    let var_2 = u_input.a;
    global0 = Struct_1(0i);
    let var_3 = countOneBits(~(~(~vec2<u32>(1u, u_input.a)))) & vec2<u32>(var_2, var_2);
    global0 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(var_1, vec2<i32>(var_1.x, 1i)), abs(vec2<i32>(global2.a, global0.a) << (var_3 % vec2<u32>(32u)))), ~(~(global2.a >> (var_3.x % 32u)))));
    var var_4 = 0i;
    var var_5 = global4[_wgslsmith_index_u32(1u, 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_5.yyy));
}

