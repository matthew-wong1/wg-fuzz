struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<f32>,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10>;

var<private> global1: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true));

var<private> global2: array<i32, 29>;

var<private> global3: array<Struct_1, 31>;

var<private> global4: array<Struct_1, 30>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = !select(vec2<bool>(false == any(vec3<bool>(arg_0.a, false, true)), _wgslsmith_dot_vec2_i32(vec2<i32>(23825i, global2[_wgslsmith_index_u32(65425u, 29u)]), u_input.a.xx) > -1i), vec2<bool>(!(arg_0.b >= 65613u), all(select(vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a), vec4<bool>(false, arg_0.a, true, arg_0.a), vec4<bool>(false, arg_0.a, false, true)))), vec2<bool>(true == (-21377i == u_input.a.x), false));
    global0 = array<vec3<bool>, 10>();
    let var_1 = Struct_2(Struct_1(false || var_0.x, countOneBits(arg_0.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1897f, -335f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1488f, -296f) - vec2<f32>(888f, 524f)))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(362f, 257f), vec2<f32>(642f, 634f))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1674f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<bool>(!arg_0.a, all(global0[_wgslsmith_index_u32(arg_0.b, 10u)]))))), Struct_1(arg_0.a, firstTrailingBit(~_wgslsmith_sub_u32(36605u, arg_0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-394f + -166f), _wgslsmith_f_op_f32(f32(-1f) * -663f), 412f, _wgslsmith_f_op_f32(373f - 369f)))), 30178u);
    var var_2 = max(arg_0.b, var_1.c.b);
    var var_3 = _wgslsmith_mult_u32(firstTrailingBit(arg_0.b), 40256u);
    return u_input.a.yy;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> i32 {
    global3 = array<Struct_1, 31>();
    global1 = array<vec3<bool>, 32>();
    let var_0 = Struct_3(_wgslsmith_div_u32(_wgslsmith_mult_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.b, arg_1.b), vec3<u32>(74882u, 60208u, arg_1.b))), ~(arg_1.b & arg_1.b)), arg_1.b), vec4<i32>(reverseBits(arg_0.x), -u_input.a.x, global2[_wgslsmith_index_u32(arg_1.b, 29u)], _wgslsmith_mod_i32(~(-1i ^ global2[_wgslsmith_index_u32(arg_1.b, 29u)]), -(~arg_0.x))), ~max(global2[_wgslsmith_index_u32(~(~arg_1.b), 29u)], abs(countOneBits(0i))));
    let var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(42270u, 4294967295u, arg_1.b), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(6301u, 0u, arg_1.b), min(vec3<u32>(0u, arg_1.b, arg_1.b), vec3<u32>(var_0.a, 56169u, var_0.a))), _wgslsmith_div_vec3_u32(~vec3<u32>(var_0.a, 8074u, var_0.a), vec3<u32>(4294967295u, 12868u, 47549u)))) | abs(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(73840u, 28104u), vec2<u32>(1u, var_0.a)), countOneBits(0u), var_0.a | 1u)));
    let var_2 = var_1.x;
    return ~u_input.a.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec4<i32>) -> f32 {
    var var_0 = abs(func_4(_wgslsmith_div_vec2_i32(arg_2.zw, func_3(Struct_1(arg_1.x, 106058u))), Struct_1(true, ~1u)) ^ _wgslsmith_dot_vec4_i32(arg_2, _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 12293i, -31720i, -26681i), select(vec4<i32>(1i, 5475i, global2[_wgslsmith_index_u32(45416u, 29u)], arg_2.x), vec4<i32>(arg_2.x, 35377i, global2[_wgslsmith_index_u32(0u, 29u)], -23903i), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)))));
    let var_1 = vec3<u32>(31431u, 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(26560u, 13262u), 38230u, countOneBits(18045u)), vec3<u32>(_wgslsmith_div_u32(69715u, ~3983u), ~4294967295u, _wgslsmith_mod_u32(~15855u, ~1u))));
    var_0 = -(~u_input.a.x) | (0i | ~abs(firstTrailingBit(arg_2.x)));
    var var_2 = select(reverseBits(-vec2<i32>(-14928i, ~(-12378i))), vec2<i32>(arg_2.x, 30091i), ((i32(-1i) * -2147483647i) >= firstLeadingBit(max(global2[_wgslsmith_index_u32(var_1.x, 29u)], -65000i))) && arg_1.x);
    var var_3 = vec4<f32>(1022f, arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))))), _wgslsmith_f_op_f32(select(arg_0.x, -348f, all(select(global0[_wgslsmith_index_u32(21548u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(var_1.x, 32u)]))))), -341f);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.x)))))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-957f * -342f) * _wgslsmith_f_op_f32(arg_2.b.x * -223f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1383f))))));
    var var_2 = any(global1[_wgslsmith_index_u32(~arg_1.x, 32u)]);
    var var_3 = 1u;
    global2 = array<i32, 29>();
    return Struct_1(!(arg_2.c.a || false), ~(~3598u));
}

fn func_1(arg_0: Struct_3) -> vec3<bool> {
    global0 = array<vec3<bool>, 10>();
    global1 = array<vec3<bool>, 32>();
    let var_0 = func_5(Struct_2(Struct_1(true, arg_0.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-531f, 574f)) * vec2<f32>(-680f, 543f)), vec2<f32>(_wgslsmith_f_op_f32(func_2(vec4<f32>(-1000f, -871f, -1173f, -796f), vec2<bool>(true, false), arg_0.b)), _wgslsmith_f_op_f32(min(-1605f, -389f))))), Struct_1(arg_0.a <= arg_0.a, ~0u), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(644f, -1065f, -471f, -580f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1776f, -191f, -266f, 1345f), vec4<f32>(-1643f, 199f, -532f, 503f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1089f, 565f, 815f, 605f))))), 0u), ~vec3<u32>(1u, 83889u, _wgslsmith_sub_u32(arg_0.a, 1u)) & countOneBits(~(~vec3<u32>(1u, 1u, arg_0.a))), Struct_2(global3[_wgslsmith_index_u32(~(arg_0.a >> (1u % 32u)) ^ (1u | arg_0.a), 31u)], _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))), global3[_wgslsmith_index_u32(~21975u, 31u)], _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(155f, 827f, -271f, -1403f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1314f, -2166f, -794f, -559f)))), 5395u));
    global2 = array<i32, 29>();
    var var_1 = !((-931f <= _wgslsmith_f_op_f32(round(2529f))) == true);
    return select(select(vec3<bool>(!(!var_0.a), true, false), global0[_wgslsmith_index_u32(var_0.b, 10u)], global0[_wgslsmith_index_u32(~(~var_0.b), 10u)]), !vec3<bool>(!var_0.a, false, true && var_0.a), false);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 29>();
    var var_0 = countOneBits(_wgslsmith_div_i32(max(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 104763u, 1u, 1u), vec4<u32>(27191u, 7695u, 46828u, 45101u)), 29u)], _wgslsmith_mod_i32(2147483647i, 10750i)), u_input.a.x), _wgslsmith_sub_i32(firstTrailingBit(u_input.a.x), -countOneBits(1i))));
    var var_1 = ~(-select(1i, -2147483647i, true));
    global0 = array<vec3<bool>, 10>();
    var var_2 = !(!func_1(Struct_3(_wgslsmith_div_u32(0u, 4294967295u), select(vec4<i32>(u_input.a.x, 2428i, -1i, 16917i), vec4<i32>(-4696i, 16298i, u_input.a.x, global2[_wgslsmith_index_u32(40722u, 29u)]), vec4<bool>(true, false, true, false)), ~u_input.a.x)));
    var var_3 = vec4<u32>(1u, ~(~_wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4835u, 1u, 6673u, 4294967295u), vec4<u32>(64033u, 1u, 51953u, 0u)))), 4294967295u, 78488u);
    var_2 = vec3<bool>(false, any(var_2.yz), true);
    global2 = array<i32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-352f, 165f), vec2<f32>(1f, 1f), select(var_2.yy, var_2.xy, vec2<bool>(var_2.x, false))))))), ~var_3.zy, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_mod_vec3_i32((vec3<i32>(u_input.a.x, global2[_wgslsmith_index_u32(1u, 29u)], u_input.a.x) >> (var_3.wxy % vec3<u32>(32u))) | select(vec3<i32>(global2[_wgslsmith_index_u32(var_3.x, 29u)], -2147483647i, u_input.a.x), u_input.a, var_2.x), vec3<i32>(u_input.a.x & u_input.a.x, func_4(u_input.a.xx, global3[_wgslsmith_index_u32(41514u, 31u)]), ~u_input.a.x)) & ~u_input.a);
}

