struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<u32>(0u, 39546u, 1u, 40822u)), Struct_1(vec4<u32>(1u, 8388u, 4294967295u, 38411u)), Struct_1(vec4<u32>(58076u, 4294967295u, 6448u, 0u)), Struct_1(vec4<u32>(91943u, 10310u, 47860u, 1u)), Struct_1(vec4<u32>(58113u, 4294967295u, 47532u, 4294967295u)), Struct_1(vec4<u32>(1u, 5617u, 15889u, 1942u)), Struct_1(vec4<u32>(43613u, 28746u, 0u, 1u)), Struct_1(vec4<u32>(4294967295u, 894u, 0u, 0u)), Struct_1(vec4<u32>(21646u, 1u, 1u, 0u)), Struct_1(vec4<u32>(61926u, 33825u, 0u, 0u)), Struct_1(vec4<u32>(1u, 41404u, 20886u, 0u)), Struct_1(vec4<u32>(28981u, 38076u, 109950u, 4294967295u)), Struct_1(vec4<u32>(1817u, 0u, 40664u, 0u)), Struct_1(vec4<u32>(23484u, 1u, 4294967295u, 0u)), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(97848u, 1u, 1u, 44314u)), Struct_1(vec4<u32>(37067u, 0u, 19169u, 1341u)), Struct_1(vec4<u32>(10398u, 4294967295u, 34234u, 49944u)), Struct_1(vec4<u32>(1u, 44490u, 39323u, 45432u)), Struct_1(vec4<u32>(4294967295u, 29260u, 20293u, 82213u)), Struct_1(vec4<u32>(27343u, 82512u, 61565u, 23615u)), Struct_1(vec4<u32>(0u, 11122u, 0u, 0u)), Struct_1(vec4<u32>(4294967295u, 15791u, 4294967295u, 19062u)), Struct_1(vec4<u32>(4294967295u, 31190u, 4294967295u, 7031u)));

var<private> global1: Struct_3 = Struct_3(vec4<bool>(false, false, false, false), 68523u);

var<private> global2: vec2<f32> = vec2<f32>(427f, 757f);

var<private> global3: vec3<i32> = vec3<i32>(i32(-2147483648), -21011i, 44655i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>) -> vec4<f32> {
    global3 = vec3<i32>(global3.x, global3.x, ~global3.x);
    global1 = Struct_3(vec4<bool>(!(_wgslsmith_f_op_f32(sign(1244f)) > global2.x), (~3468u <= (65769u << (global1.b % 32u))) || !(!global1.a.x), arg_0.x, true), global1.b);
    let var_0 = 0i;
    var var_1 = !(!(!arg_0.wzw));
    var var_2 = !any(select(!select(vec2<bool>(false, false), vec2<bool>(global1.a.x, true), false), vec2<bool>(global3.x == -1i, any(vec3<bool>(arg_0.x, global1.a.x, true))), vec2<bool>(var_1.x, !arg_0.x)));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(227f, -1000f))), -1000f)), _wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x))))), -1093f) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, 1187f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 1372f, -205f) * vec4<f32>(global2.x, -308f, global2.x, -714f)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(global1.a.x, false, true, true)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-204f, 1155f, -2223f, global2.x))))))));
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    global0 = array<Struct_1, 24>();
    global3 = arg_0.wyw;
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(global1.a))));
    global1 = Struct_3(select(!global1.a, !select(vec4<bool>(global1.a.x, global1.a.x, true, true), !global1.a, select(vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x), vec4<bool>(true, true, true, global1.a.x), true)), ~max(41288i, global3.x) <= -42836i), _wgslsmith_clamp_u32(global1.b, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, ~u_input.b.x, abs(0u)), abs(vec4<u32>(global1.b, u_input.a, 17306u, u_input.b.x)))));
    global3 = _wgslsmith_mult_vec3_i32(arg_0.wxy, arg_0.yyy);
    return -2147483647i;
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(global3.x), -7591i, _wgslsmith_clamp_i32(-2147483647i, reverseBits(-2147483647i), reverseBits(-1i))), vec3<i32>(1i | ~global3.x, 77139i, -6356i)), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, 2147483647i, -37750i, global3.x), vec4<i32>(global3.x, global3.x, 1i, global3.x), global1.a), vec4<i32>(-2147483647i, -24082i, global3.x, 0i) >> (vec4<u32>(global1.b, 4294967295u, 4097u, 3555u) % vec4<u32>(32u))) << (_wgslsmith_mult_u32(global1.b ^ u_input.b.x, 35863u) % 32u), func_2(abs(reverseBits(vec4<i32>(global3.x, 9012i, global3.x, global3.x))))));
    var var_1 = global1.a.x;
    var var_2 = vec4<u32>(abs(u_input.a >> (firstLeadingBit(22260u) % 32u)), ~_wgslsmith_add_u32(~34854u, countOneBits(0u)), _wgslsmith_add_u32(34826u, 0u), 0u);
    var var_3 = u_input.b.zz;
    let var_4 = false;
    return Struct_3(!select(!global1.a, select(select(global1.a, global1.a, true), global1.a, vec4<bool>(global1.a.x, false, global1.a.x, false)), false && global1.a.x), ~(~var_2.x));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3) -> Struct_2 {
    var var_0 = max(~(~global1.b), 0u);
    var var_1 = select(!select(select(!vec3<bool>(arg_0.x, arg_1.a.x, arg_0.x), !arg_1.a.ywx, !arg_1.a.x), global1.a.zxy, !(!arg_0.x)), vec3<bool>(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(global2.x - global2.x)) > 860f, all(func_1().a), 27013i != global3.x), global1.a.x);
    var var_2 = _wgslsmith_clamp_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b, arg_1.b, 37462u, global1.b), vec4<u32>(36035u, 8348u, global1.b, 2748u)), vec4<u32>(u_input.a, 0u, 4294967295u, 80885u) ^ vec4<u32>(global1.b, 1u, 60640u, 4294967295u), vec4<u32>(0u, arg_1.b, u_input.b.x, global1.b) & vec4<u32>(0u, 1u, 38697u, 113143u))), vec4<u32>(44793u, ((arg_1.b ^ global1.b) ^ ~69565u) ^ arg_1.b, arg_1.b, abs(~1u)), _wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(0u, 82451u, 13924u, global1.b))), ~vec4<u32>(u_input.a, firstLeadingBit(u_input.a), ~arg_1.b, 21288u)));
    var_2 = ~reverseBits(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b, arg_1.b, 4294967295u, u_input.b.x), vec4<u32>(28986u, u_input.b.x, u_input.a, 1u))));
    let var_3 = Struct_2(select(select(vec2<bool>(true, true), select(vec2<bool>(arg_1.a.x, true), !vec2<bool>(arg_1.a.x, true), var_1.x), func_1().a.zz), !vec2<bool>(!arg_0.x, !var_1.x), vec2<bool>(!all(vec3<bool>(false, false, true)), !any(vec2<bool>(global1.a.x, var_1.x)))), !vec3<bool>(272f >= _wgslsmith_f_op_f32(global2.x - 422f), all(global1.a.xyx), !all(vec3<bool>(false, arg_1.a.x, arg_0.x))), firstLeadingBit(var_2.ywy), _wgslsmith_div_i32(1i, select(firstLeadingBit(1i), _wgslsmith_div_i32(2147483647i, global3.x | 1061i), global1.a.x)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!vec2<bool>(false, 1i >= _wgslsmith_mod_i32(global3.x, global3.x)), func_1());
    var var_1 = vec3<u32>(45231u, u_input.a, ~_wgslsmith_div_u32(global1.b, 36882u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f * -1727f)) - global2.x);
    global1 = Struct_3(!global1.a, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.zz, u_input.b.xz), u_input.b.yy));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-670f, var_2)))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * _wgslsmith_div_f32(var_2, -491f))), _wgslsmith_f_op_f32(-var_2)));
    global0 = array<Struct_1, 24>();
    var_1 = ~var_0.c;
    let var_3 = _wgslsmith_clamp_vec4_i32(reverseBits(-reverseBits(vec4<i32>(var_0.d, -12657i, 2147483647i, var_0.d))), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, _wgslsmith_div_i32(var_0.d, global3.x), -453i, var_0.d), firstTrailingBit(vec4<i32>(global3.x, global3.x, global3.x, -2147483647i) | vec4<i32>(var_0.d, -27238i, global3.x, var_0.d))), _wgslsmith_add_vec4_i32(~vec4<i32>(38587i, var_0.d, 0i, -19039i), select(-vec4<i32>(var_0.d, 22127i, 1i, 15019i), vec4<i32>(-8803i, 27996i, var_0.d, 0i) | vec4<i32>(0i, 0i, 1i, 2388i), var_0.a.x))) >> (~(select(vec4<u32>(var_1.x, global1.b, global1.b, 0u), ~vec4<u32>(u_input.a, u_input.a, 106687u, 98713u), func_1().a) >> (~(~vec4<u32>(75344u, 17059u, global1.b, global1.b)) % vec4<u32>(32u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, 14551u), 4294967295u ^ var_1.x) << (global1.b % 32u)), reverseBits(-var_3.x));
}

