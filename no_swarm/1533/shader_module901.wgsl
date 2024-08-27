struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: bool;

var<private> global2: array<vec2<u32>, 8>;

var<private> global3: Struct_1 = Struct_1(vec2<u32>(1u, 7759u), true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = countOneBits(-1i);
    global0 = -4999i;
    global2 = array<vec2<u32>, 8>();
    global2 = array<vec2<u32>, 8>();
    global2 = array<vec2<u32>, 8>();
    return 268f;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(vec2<u32>(1u, 27441u) | ~global3.a, global3.b);
    var var_1 = Struct_1(vec2<u32>(min(abs(8510u), abs(_wgslsmith_sub_u32(56580u, 16278u))), firstTrailingBit(86063u)), !var_0.b);
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(637f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec2<u32>(4294967295u, 0u), false)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -333f, 1582f) + _wgslsmith_f_op_vec3_f32(sign(arg_0.wyx))) * _wgslsmith_f_op_vec3_f32(-arg_0.wzz)), arg_0.zyy));
    var var_3 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(~var_1.a.x, var_0.a.x & global3.a.x), vec2<u32>(~4294967295u, 1u)) << (vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.x, u_input.d.x, var_0.a.x), vec3<u32>(var_1.a.x, 0u, global3.a.x)), _wgslsmith_div_vec3_u32(vec3<u32>(82168u, var_1.a.x, 26058u), vec3<u32>(var_1.a.x, 1u, 1u))), ~(var_1.a.x >> (global3.a.x % 32u))) % vec2<u32>(32u)), global3.b);
    var_3 = Struct_1(vec2<u32>(_wgslsmith_div_u32(var_3.a.x, ~global3.a.x) ^ ((1u | u_input.d.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.x, 18935u, 0u, var_1.a.x), vec4<u32>(22721u, global3.a.x, 0u, var_1.a.x))), ~var_3.a.x), true && !all(select(vec3<bool>(var_0.b, false, false), vec3<bool>(var_3.b, var_1.b, true), var_1.b)));
    return Struct_1(~(~vec2<u32>(88828u, ~var_3.a.x)), true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-3268f, 276f, -1362f)))))));
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(391f * 106f), 1806f, _wgslsmith_f_op_f32(sign(732f))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -615f, var_0.x, -158f), vec4<f32>(606f, -1196f, var_0.x, var_0.x))))));
    global1 = func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -333f, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-943f, 782f, 1810f, var_0.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.x, 454f), 636f, _wgslsmith_f_op_f32(var_0.x - var_0.x), -1000f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(683f, var_0.x, 1378f, var_0.x) * vec4<f32>(var_0.x, var_0.x, 1717f, -1064f)), vec4<f32>(482f, var_0.x, var_0.x, 1484f), !vec4<bool>(false, arg_0.b, true, global3.b)))))).b;
    var var_2 = _wgslsmith_add_vec3_u32(select(~(~(~vec3<u32>(31317u, 40516u, global3.a.x))), max(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(arg_0.a.x, var_1.a.x, u_input.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))) > _wgslsmith_div_f32(-466f, _wgslsmith_f_op_f32(max(570f, -1021f)))), firstTrailingBit(min(~vec3<u32>(5688u, 91509u, 28035u), ~vec3<u32>(var_1.a.x, var_1.a.x, 0u) & (vec3<u32>(u_input.e.x, arg_0.a.x, 1u) | vec3<u32>(26030u, 69072u, 0u)))));
    global2 = array<vec2<u32>, 8>();
    return select(vec4<bool>(false, global3.b && any(vec4<bool>(false, true, arg_1.b, false)), !global3.b, true), !(!select(!vec4<bool>(false, arg_0.b, global3.b, false), select(vec4<bool>(global3.b, global3.b, global3.b, false), vec4<bool>(global3.b, false, true, false), false), vec4<bool>(true, false, global3.b, true))), 19186i < abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, -1i), ~vec3<i32>(-26044i, u_input.b, 1i))));
}

fn func_1() -> u32 {
    let var_0 = !select(!(!(!vec4<bool>(true, global3.b, global3.b, true))), func_4(Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3.a, vec2<u32>(global3.a.x, global3.a.x)), 8u)], false), func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(431f, 1205f, -223f, -611f))))), any(!vec3<bool>(global3.b, global3.b, true)));
    let var_1 = ~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(7612u, 1u, global3.a.x), vec3<u32>(u_input.e.x, 4294967295u, u_input.d.x))) & select(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, 4294967295u, 1u) ^ vec3<u32>(17641u, u_input.e.x, 1019u), vec3<u32>(global3.a.x, 4294967295u, global3.a.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(4294967295u, 41293u, global3.a.x)), ~vec3<u32>(u_input.e.x, u_input.d.x, global3.a.x)), min(select(vec3<u32>(global3.a.x, u_input.e.x, u_input.e.x), vec3<u32>(21060u, global3.a.x, global3.a.x), true), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x))), true);
    var var_2 = ~(1u | _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 45409u, 0u), vec4<u32>(68152u, global3.a.x, u_input.d.x, 4719u)) & ~global3.a.x, ~u_input.e.x));
    var var_3 = _wgslsmith_f_op_f32(-897f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(427f))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1107f, 490f))))));
    let var_4 = Struct_1(select(_wgslsmith_add_vec2_u32(~u_input.e, _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e.x, u_input.d.x), global2[_wgslsmith_index_u32(4294967295u, 8u)]), var_1.xx)), ~global2[_wgslsmith_index_u32(var_1.x & _wgslsmith_mult_u32(0u, global3.a.x), 8u)], var_0.x), any(func_4(func_2(vec4<f32>(788f, -1987f, -565f, 1531f)), Struct_1(~var_1.yx, true)).zzz));
    return ~u_input.d.x;
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_1(~u_input.e, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2405f, 156f, -142f, 642f) - vec4<f32>(1781f, 365f, 1048f, 175f)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(347f, 1393f, -1189f, -1058f)))))).b);
    var var_1 = 880f;
    var_1 = 1702f;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(408f))) + _wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1864f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-326f, _wgslsmith_f_op_f32(min(-114f, 1317f)))), -1747f, true)))));
    global0 = u_input.b;
    return func_2(vec4<f32>(var_2, -153f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(max(-311f, var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(max(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(1u), func_1()), 8u)], reverseBits(_wgslsmith_sub_vec2_u32(u_input.d, vec2<u32>(u_input.e.x, u_input.e.x)))), true), _wgslsmith_add_u32(~(~u_input.e.x) >> (firstLeadingBit(_wgslsmith_div_u32(u_input.e.x, 0u)) % 32u), ~global3.a.x));
    let var_1 = vec2<u32>(u_input.e.x, _wgslsmith_sub_u32(~max(1u, 4294967295u >> (1u % 32u)), ~(7406u | u_input.e.x) << (_wgslsmith_div_u32(30269u, ~1u) % 32u)));
    var var_2 = -reverseBits(-9347i);
    global0 = _wgslsmith_dot_vec3_i32(u_input.c, u_input.c) | u_input.c.x;
    let var_3 = _wgslsmith_div_vec2_u32(func_5(func_5(func_5(var_0, ~1u), ~60120u), ~var_1.x).a, _wgslsmith_add_vec2_u32(var_0.a, (global3.a >> (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))) ^ vec2<u32>(_wgslsmith_clamp_u32(75892u, 21980u, 50356u), select(22716u, 97196u, var_0.b))));
    var var_4 = func_5(Struct_1(var_1, (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -82175i, 2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.b, u_input.b, 1i)) >> ((var_0.a.x >> (0u % 32u)) % 32u)) != u_input.b), ~_wgslsmith_clamp_u32(~(~global3.a.x), var_3.x, firstLeadingBit(2930u)));
    var var_5 = 14393i;
    let var_6 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~(vec3<u32>(u_input.d.x, 95948u, 59471u) & vec3<u32>(1u, 54094u, var_1.x))), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(global3.a.x, var_3.x), 1u), 81281u, func_1())), 8u)], false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(-1018f)), countOneBits(vec4<i32>(_wgslsmith_mult_i32(~(-32108i), u_input.c.x), 21037i, ~u_input.a, u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -394f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(929f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_div_f32(-1131f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -2469f)), -918f), (min(-1i, -109042i ^ u_input.a) | 24752i) & (_wgslsmith_div_i32(_wgslsmith_div_i32(-4703i, -1i), u_input.b & u_input.b) | (i32(-1i) * -u_input.c.x)));
}

