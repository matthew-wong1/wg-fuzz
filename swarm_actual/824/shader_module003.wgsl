struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(116961u, 0u, 15739u), vec3<u32>(25823u, 4294967295u, 0u), vec3<u32>(36664u, 1u, 5606u), vec3<u32>(0u, 64185u, 46358u), vec3<u32>(1u, 70833u, 1u), vec3<u32>(4589u, 5330u, 4925u), vec3<u32>(17380u, 57599u, 4294967295u), vec3<u32>(4294967295u, 1739u, 97605u), vec3<u32>(4294967295u, 77957u, 0u), vec3<u32>(91448u, 59491u, 45416u), vec3<u32>(1u, 56729u, 18753u), vec3<u32>(1u, 46938u, 39504u), vec3<u32>(26366u, 55610u, 4294967295u), vec3<u32>(53511u, 40746u, 0u), vec3<u32>(16759u, 49710u, 1u), vec3<u32>(627u, 33148u, 0u), vec3<u32>(46728u, 72436u, 50260u), vec3<u32>(1u, 16703u, 4294967295u), vec3<u32>(0u, 41934u, 4294967295u), vec3<u32>(1u, 16255u, 50948u), vec3<u32>(10446u, 55620u, 39704u), vec3<u32>(39363u, 137490u, 56235u), vec3<u32>(18344u, 1u, 89971u), vec3<u32>(4294967295u, 18005u, 1u), vec3<u32>(1u, 8305u, 1u), vec3<u32>(65227u, 4294967295u, 30959u), vec3<u32>(4294967295u, 52833u, 4294967295u), vec3<u32>(42871u, 4294967295u, 4294967295u), vec3<u32>(38394u, 44456u, 51602u), vec3<u32>(25668u, 1u, 12048u));

var<private> global1: bool;

var<private> global2: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: f32) -> u32 {
    let var_0 = _wgslsmith_mult_u32(abs(0u), 35783u);
    var var_1 = ~(25901i >> (select(~_wgslsmith_div_u32(arg_1.a.x, var_0), select(~1u, select(40204u, 20373u, true), false && arg_1.d.x), select(false || arg_2.b.c.d.x, arg_1.d.x, false)) % 32u));
    let var_2 = Struct_3(arg_1, Struct_1(select(vec2<u32>(firstTrailingBit(arg_2.a.x), ~0u), arg_0.wy, select(vec2<bool>(arg_2.b.c.d.x, arg_2.b.c.d.x), vec2<bool>(false, false), select(arg_1.d, vec2<bool>(false, arg_2.b.c.d.x), vec2<bool>(true, true)))), ~(~vec2<u32>(1u, 25548u)), ~_wgslsmith_sub_vec4_i32(arg_1.c, arg_1.c | arg_2.b.c.c), vec2<bool>(!arg_2.b.c.d.x, arg_2.b.c.d.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_3, 552f), vec2<f32>(813f, 730f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.b.c.e - vec2<f32>(arg_1.e.x, -607f)), arg_1.e))), arg_2.b.c, vec2<u32>(1u >> (_wgslsmith_div_u32(1062u & u_input.a, 44733u | arg_2.a.x) % 32u), ~(~(~6933u))), Struct_1(arg_2.b.c.a, ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 7877u), arg_1.b) >> (arg_1.a % vec2<u32>(32u)), arg_2.b.c.c, !select(!vec2<bool>(true, arg_2.b.c.d.x), select(vec2<bool>(false, arg_1.d.x), vec2<bool>(arg_1.d.x, false), true), false && arg_2.b.c.d.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e.x, _wgslsmith_f_op_f32(exp2(arg_2.b.b))))));
    global1 = false;
    global2 = u_input.a;
    return reverseBits(0u);
}

fn func_2() -> vec2<bool> {
    let var_0 = !select(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), vec3<bool>(select(true, true, false), false, true), vec3<bool>(true, true, true));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-541f, 131f, -564f, 235f) * vec4<f32>(380f, -651f, -1792f, -286f)))))));
    var_1 = vec4<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-var_1.x))), 477f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + -155f), _wgslsmith_f_op_f32(round(883f))) - -1000f)));
    var var_2 = Struct_2(62070u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)), 1695f)))), Struct_1(vec2<u32>(func_3(~vec4<u32>(u_input.a, 42689u, u_input.a, 51976u), Struct_1(vec2<u32>(1u, u_input.a), vec2<u32>(1u, 0u), vec4<i32>(5067i, -10468i, 0i, -1i), vec2<bool>(false, var_0.x), var_1.xz), Struct_4(global0[_wgslsmith_index_u32(u_input.a, 30u)], Struct_2(u_input.a, var_1.x, Struct_1(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a), vec4<i32>(2147483647i, 911i, 38822i, 2147483647i), var_0.zz, var_1.wx))), var_1.x), 1u), ~vec2<u32>(_wgslsmith_mult_u32(51505u, u_input.a), u_input.a), vec4<i32>(firstLeadingBit(firstLeadingBit(24393i)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), countOneBits(vec4<i32>(-104865i, -2147483647i, 2147483647i, -28438i))), -reverseBits(0i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 48689i, 30265i, -2147483647i), vec4<i32>(14885i, 2147483647i, -2147483647i, 1i))), !vec2<bool>(true, any(vec2<bool>(var_0.x, true))), var_1.yy));
    var var_3 = Struct_2(~select(u_input.a << (_wgslsmith_sub_u32(var_2.c.a.x, var_2.a) % 32u), 46889u, all(!vec4<bool>(true, var_0.x, false, var_0.x))), _wgslsmith_f_op_f32(417f * _wgslsmith_f_op_f32(max(var_2.c.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x))))), Struct_1(vec2<u32>(33618u, firstLeadingBit(firstTrailingBit(3143u))), var_2.c.b, _wgslsmith_div_vec4_i32(var_2.c.c & (vec4<i32>(-1i, -4089i, var_2.c.c.x, 927i) << (vec4<u32>(6851u, u_input.a, 0u, var_2.a) % vec4<u32>(32u))), max(var_2.c.c, ~var_2.c.c)), !vec2<bool>(true, all(vec4<bool>(false, var_2.c.d.x, true, var_2.c.d.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_1.xx), vec2<f32>(764f, 1082f)))))));
    return select(vec2<bool>(!(27851i == firstTrailingBit(-2147483647i)), any(!vec2<bool>(false, var_3.c.d.x))), vec2<bool>(false, var_2.c.d.x), select(vec2<bool>(var_2.c.d.x & var_3.c.d.x, any(var_2.c.d)), select(var_0.zz, vec2<bool>(false, true), select(var_2.c.d, select(var_3.c.d, var_2.c.d, vec2<bool>(false, false)), true)), vec2<bool>(true, true)));
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_4 {
    var var_0 = select(!vec2<bool>(arg_0, arg_0), vec2<bool>(!all(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, false, false), arg_0)), true), select(func_2(), vec2<bool>(arg_0, false), any(!vec3<bool>(arg_0, true, arg_0))));
    let var_1 = firstTrailingBit(min(firstLeadingBit(~(~vec3<u32>(u_input.a, 46108u, u_input.a))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~global0[_wgslsmith_index_u32(18031u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)]) | 0u, 30u)]));
    var var_2 = select(firstLeadingBit(firstTrailingBit(-vec4<i32>(1i, 42959i, 2147483647i, arg_1))), (vec4<i32>(_wgslsmith_add_i32(40533i, arg_1), select(31440i, arg_1, var_0.x), -1i, -1i) ^ vec4<i32>(arg_1, -arg_1, _wgslsmith_sub_i32(arg_1, arg_1), max(arg_1, arg_1))) ^ countOneBits(firstLeadingBit(min(vec4<i32>(arg_1, -11335i, 8986i, arg_1), vec4<i32>(arg_1, arg_1, arg_1, arg_1)))), false);
    global0 = array<vec3<u32>, 30>();
    return Struct_4(abs(global0[_wgslsmith_index_u32(min(u_input.a, ~u_input.a), 30u)]), Struct_2(abs(abs(u_input.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(vec2<u32>(countOneBits(123809u), ~0u), var_1.yz, vec4<i32>(abs(-1i), 46744i, _wgslsmith_div_i32(-15330i, var_2.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, arg_1), vec2<i32>(var_2.x, -19062i))), vec2<bool>(!var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1297f, -647f)))))));
}

fn func_4(arg_0: Struct_4) -> i32 {
    let var_0 = func_1(true, arg_0.b.c.c.x).b.c;
    global1 = true;
    let var_1 = abs(firstTrailingBit(-1i));
    var var_2 = any(vec2<bool>(!var_0.d.x, any(vec4<bool>(arg_0.b.c.d.x, arg_0.b.c.d.x, true, any(arg_0.b.c.d)))));
    global2 = u_input.a >> (~4294967295u % 32u);
    return 1i << (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(abs(arg_0.a), vec3<u32>(var_0.a.x, arg_0.a.x, 79154u)), vec3<u32>(39561u >> (u_input.a % 32u), u_input.a ^ var_0.b.x, ~4294967295u)), arg_0.a.x) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = reverseBits(58188u);
    let var_0 = 0u;
    var var_1 = Struct_3(Struct_1(~select(vec2<u32>(31661u, var_0), vec2<u32>(u_input.a, var_0), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), min(vec2<u32>(_wgslsmith_add_u32(4294967295u, u_input.a), 0u), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(80305u, 13325u)))), vec4<i32>(func_4(func_1(true, 2147483647i)), ~0i, -_wgslsmith_sub_i32(0i, 66749i), countOneBits(countOneBits(27273i))), select(func_1(true, -45777i).b.c.d, !select(vec2<bool>(false, false), vec2<bool>(true, true), true), true), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-815f, -1198f))))))), Struct_1(~(~(~vec2<u32>(u_input.a, 4294967295u))), select(vec2<u32>(min(1u, 25156u), ~var_0), vec2<u32>(_wgslsmith_div_u32(1u, u_input.a), ~var_0), vec2<bool>(true, true)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -select(vec4<i32>(2147483647i, -51001i, -22499i, 0i), vec4<i32>(0i, -22201i, 0i, -2147483647i), false)), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), false), all(vec3<bool>(true, true, true))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2620f, -438f)) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-481f))))), func_1(true, 1i).b.c, _wgslsmith_div_vec2_u32(reverseBits(countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(35541u, 1u), vec2<u32>(1u, 57693u)))), select(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, 21696u), func_1(true, 5753i).b.c.a), select(abs(vec2<u32>(1u, u_input.a)), ~vec2<u32>(4294967295u, var_0), any(vec2<bool>(true, true))), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))), Struct_1(~vec2<u32>(48621u, ~u_input.a), vec2<u32>(select(0u << (u_input.a % 32u), _wgslsmith_mod_u32(0u, var_0), func_2().x), var_0), vec4<i32>(64649i, 22029i, 1i, 0i), vec2<bool>(false, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(871f, 1513f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1309f, 165f)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -1326f), vec2<f32>(-1000f, -817f), true)))))));
    let var_2 = firstTrailingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(min(~vec4<u32>(var_1.c.a.x, 0u, u_input.a, u_input.a), ~vec4<u32>(var_0, 1u, var_0, 52303u)), vec4<u32>(var_0, var_0, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(var_1.d.x, 30u)], vec3<u32>(u_input.a, u_input.a, 0u)), u_input.a)), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), countOneBits(select(vec4<u32>(var_0, 4294967295u, var_1.b.b.x, 1u), vec4<u32>(var_1.d.x, var_1.d.x, var_1.d.x, 13846u), vec4<bool>(var_1.a.d.x, var_1.a.d.x, var_1.a.d.x, true))))));
    global1 = any(vec3<bool>(!func_2().x, var_1.a.d.x, all(vec2<bool>(true, true))));
    global2 = 1u;
    let var_3 = var_1.a.c.x;
    var var_4 = Struct_4(~(~var_2.zzz) & (~select(global0[_wgslsmith_index_u32(u_input.a, 30u)], vec3<u32>(u_input.a, var_0, 0u), var_1.c.d.x) << ((var_2.yxx << (global0[_wgslsmith_index_u32(~u_input.a, 30u)] % vec3<u32>(32u))) % vec3<u32>(32u))), Struct_2(u_input.a, _wgslsmith_f_op_f32(-128f + -277f), var_1.e));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(true, var_4.b.c.c.x).b.c.c.xy);
}

