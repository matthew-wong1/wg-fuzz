struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: vec3<i32> = vec3<i32>(37692i, 59771i, 2147483647i);

var<private> global2: i32;

var<private> global3: array<i32, 30> = array<i32, 30>(2147483647i, 27158i, 1i, i32(-2147483648), 0i, -48119i, -1i, 1i, 16616i, -32443i, -21491i, 1i, 2147483647i, 3866i, i32(-2147483648), 0i, i32(-2147483648), 1i, -1i, 1i, 42234i, 0i, -7100i, 260i, i32(-2147483648), 1i, 2147483647i, -1i, 0i, 1i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))))), Struct_1(vec4<bool>(firstTrailingBit(57652u) > 1u, true, true, select(all(vec3<bool>(false, false, false)), true, true))), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(!select(true, false, true), all(vec2<bool>(false, false)), false, true && any(vec4<bool>(false, false, false, false))), !any(vec3<bool>(false, false, true))), !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), all(vec4<bool>(false, false, true, false))), vec4<bool>(true, true, false, true)));
    let var_1 = var_0;
    global3 = array<i32, 30>();
    let var_2 = Struct_5(u_input.a.x);
    global3 = array<i32, 30>();
    return select(select(var_1.d, select(select(select(vec4<bool>(var_1.d.x, var_0.c.x, false, var_1.b.a.x), vec4<bool>(true, false, var_1.d.x, true), var_0.c.x), var_0.d, var_0.b.a.x), select(var_1.b.a, vec4<bool>(true, true, false, false), vec4<bool>(var_1.c.x, true, var_1.d.x, var_1.c.x)), !(!vec4<bool>(var_1.d.x, true, false, var_1.d.x))), select(var_0.d, var_1.c, vec4<bool>(var_1.d.x, true, var_0.c.x, !var_0.b.a.x))), !select(var_0.c, var_1.c, select(select(vec4<bool>(var_0.c.x, true, var_1.b.a.x, false), vec4<bool>(true, var_1.b.a.x, true, var_1.c.x), var_1.c), var_0.b.a, vec4<bool>(var_0.b.a.x, var_0.c.x, var_0.b.a.x, var_1.c.x))), !all(select(vec2<bool>(var_0.d.x, var_1.b.a.x), select(var_0.c.ww, vec2<bool>(false, false), var_0.d.x), var_0.d.x)));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> u32 {
    let var_0 = firstTrailingBit(abs(~vec4<i32>(0i, _wgslsmith_mult_i32(0i, u_input.b), abs(1i), global1.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_0))))))));
    let var_2 = all(func_3(1605f).yz) != (false | !arg_1.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -824f))), arg_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, var_1))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], -664f)), vec2<f32>(var_1, -1733f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(456f, var_1) + vec2<f32>(-1343f, 350f)))))));
    global1 = vec3<i32>(min(_wgslsmith_mod_i32(-14678i, global3[_wgslsmith_index_u32(1u, 30u)]), min(countOneBits(-46586i | global3[_wgslsmith_index_u32(68968u, 30u)]), -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(8962i, min(select(global3[_wgslsmith_index_u32(54394u, 30u)], u_input.c.x, arg_1.x), select(u_input.a.x, global3[_wgslsmith_index_u32(19594u, 30u)], arg_1.x)), global3[_wgslsmith_index_u32(1u, 30u)], 1i), -(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, global3[_wgslsmith_index_u32(0u, 30u)], 21736i, 57761i), vec4<i32>(-62359i, 2147483647i, -1i, 31267i), var_0) & vec4<i32>(76550i, global3[_wgslsmith_index_u32(45949u, 30u)], -69393i, var_0.x))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-(vec4<i32>(-2147483647i, 13390i, u_input.a.x, 0i) ^ var_0), vec4<i32>(~15685i, _wgslsmith_add_i32(-18967i, u_input.c.x), -4587i, 1i)), _wgslsmith_add_i32(global3[_wgslsmith_index_u32(~4294967295u, 30u)], min(u_input.c.x, var_0.x)) & 2159i));
    return _wgslsmith_sub_u32(5631u, ~firstTrailingBit(47624u)) | _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 1u, 1u)), vec3<u32>(~countOneBits(4294967295u), 1u, 21090u));
}

fn func_2() -> Struct_3 {
    var var_0 = vec2<bool>(true, true);
    var var_1 = 35107u < ~func_4(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(63106u, 9u)])), func_3(1653f));
    global3 = array<i32, 30>();
    let var_2 = ~(1u << (~func_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), vec4<bool>(true, true, var_0.x, var_0.x)) % 32u));
    let var_3 = ~_wgslsmith_clamp_u32(var_2, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2, var_2), vec2<u32>(var_2, var_2)), select(var_2, var_2, true)) <= ~var_2;
    return Struct_3(Struct_1(select(func_3(_wgslsmith_div_f32(395f, global0[_wgslsmith_index_u32(var_2, 9u)])), vec4<bool>(false, !var_3, all(vec4<bool>(var_3, var_3, var_3, var_0.x)), var_0.x), var_0.x)), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, var_3, false)), var_0.x || var_3, var_2 <= var_2, var_0.x && false), vec4<bool>(var_0.x, true, global1.x <= global3[_wgslsmith_index_u32(var_2, 30u)], true))), Struct_2(333f, Struct_1(vec4<bool>(true, all(vec4<bool>(false, true, var_3, var_0.x)), !var_3, var_3)), !(!(!vec4<bool>(var_3, var_0.x, var_3, true))), !(!(!vec4<bool>(var_3, var_0.x, true, var_0.x)))), 2245f, func_3(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(var_2, 9u)]))).xy);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(arg_1.a * -283f);
    var var_1 = func_2();
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(106f, -473f, var_1.d, var_0)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], 1520f, -2102f, -973f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2().d - _wgslsmith_f_op_f32(-arg_1.a)), -798f), -205f, -397f, arg_1.a));
    let var_3 = !select(func_3(-405f).xy, func_2().c.b.a.yy, false);
    var var_4 = ~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(16591u, 24953u, ~1u, 1u)), vec4<u32>(~1u, 0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 55516u), vec4<u32>(4294967295u, 50801u, 14989u, 41984u)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(8831u, 42636u, 37522u, 0u), vec4<u32>(65882u, 0u, 22212u, 1u)), 22622u)));
    return arg_1;
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: u32, arg_3: Struct_2) -> vec3<u32> {
    global3 = array<i32, 30>();
    global0 = array<f32, 9>();
    global2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-2147483647i, -57566i, global3[_wgslsmith_index_u32(1u, 30u)], 1i)) << (reverseBits(min(vec4<u32>(64561u, 10308u, arg_1.b.x, 1u), vec4<u32>(70764u, 27105u, 26349u, arg_2))) % vec4<u32>(32u)), ~(~vec4<i32>(u_input.c.x, arg_1.a.x, 0i, -7096i))), arg_0);
    global3 = array<i32, 30>();
    global1 = vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~u_input.c.zy, global1.xy), global1.zy), ~select(3751i, -13466i, arg_2 > (26543u & arg_1.b.x)), ~_wgslsmith_sub_i32(~firstTrailingBit(-8397i), ~global1.x ^ (arg_0 & 14064i)));
    return select(arg_1.b, arg_1.b, vec3<bool>(true, arg_3.b.a.x, !select(!arg_3.b.a.x, any(vec2<bool>(true, arg_3.c.x)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(func_5(119284i, Struct_4(u_input.c, vec3<u32>(21657u, 0u, 4294967295u), Struct_1(vec4<bool>(false, false, true, false)), Struct_3(Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_2(-217f, Struct_1(vec4<bool>(false, true, false, false)), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)), global0[_wgslsmith_index_u32(4294967295u, 9u)], vec2<bool>(false, true)), global0[_wgslsmith_index_u32(34738u, 9u)]), ~1u, func_1(vec3<bool>(true, false, true), Struct_2(global0[_wgslsmith_index_u32(82023u, 9u)], Struct_1(vec4<bool>(false, true, true, false)), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)))), ~(~vec3<u32>(1u, 0u, 4294967295u))), _wgslsmith_add_u32(abs(max(~4294967295u, ~76383u)), min(~func_4(-1570f, vec4<bool>(false, false, false, true)), reverseBits(1u))), ~(~37349u)), 30u)];
    global1 = u_input.c;
    var var_0 = select(1i, _wgslsmith_add_i32(_wgslsmith_add_i32((global1.x ^ global1.x) << (4294967295u % 32u), global1.x), ~1i), true);
    var var_1 = 54013i;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_div_vec2_i32(firstLeadingBit(_wgslsmith_mod_vec2_i32(global1.xy, -vec2<i32>(u_input.c.x, -2147483647i))), u_input.a), func_5(-global3[_wgslsmith_index_u32(~16323u, 30u)], Struct_4(vec3<i32>(-1i, 1i, -2147483647i), ~vec3<u32>(29354u, 37843u, 0u), func_1(vec3<bool>(true, false, false), Struct_2(1257f, Struct_1(vec4<bool>(true, true, false, false)), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true))).b, Struct_3(Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_2(global0[_wgslsmith_index_u32(62538u, 9u)], Struct_1(vec4<bool>(false, false, false, true)), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), global0[_wgslsmith_index_u32(1u, 9u)], vec2<bool>(true, true)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 9u)])), 40755u, Struct_2(_wgslsmith_f_op_f32(-1433f - 898f), Struct_1(vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(false, false, true, false))).xz ^ vec2<u32>(~(~32097u), abs(min(112737u, 1u))), ~firstLeadingBit(1u) >> (_wgslsmith_div_u32(1u, 1u) % 32u), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(35767u, 4294967295u, 2031u), abs(12281u)), select(vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, false))), 53440u));
}

