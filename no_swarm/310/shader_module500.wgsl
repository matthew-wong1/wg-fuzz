struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> f32 {
    global0 = vec4<u32>(21923u, abs(~max(10030u, arg_0)), global0.x, ~_wgslsmith_mod_u32(39u, 4294967295u));
    var var_0 = Struct_4(~global0.x < _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(50637u, arg_2.c), global0.x), ~vec2<u32>(2245u, u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.b.a.x))) + arg_2.a.a.x), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), ~firstTrailingBit(41815i));
    let var_1 = Struct_5(vec3<f32>(-319f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(861f - 917f))), _wgslsmith_f_op_f32(-1546f - _wgslsmith_f_op_f32(-1687f * 504f))), var_0.b));
    var var_2 = !vec2<bool>(!var_0.c.x, true);
    let var_3 = Struct_4(var_0.c.x, var_1.a.x, var_0.c, firstLeadingBit(39381i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-618f - _wgslsmith_f_op_f32(ceil(1470f))) + _wgslsmith_f_op_f32(f32(-1f) * -1341f));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: vec2<u32>) -> vec2<f32> {
    let var_0 = 1i;
    let var_1 = Struct_3(Struct_2(Struct_1(vec2<f32>(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(func_3(arg_2.x, var_0, Struct_2(Struct_1(vec2<f32>(1339f, arg_0)), Struct_1(vec2<f32>(arg_0, 161f)), 1u, Struct_1(vec2<f32>(arg_0, 305f))))))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(784f, arg_0)), vec2<f32>(arg_0, arg_0), any(vec4<bool>(true, false, false, true))))), _wgslsmith_add_u32(_wgslsmith_mod_u32(global0.x, 1u), 24194u), Struct_1(vec2<f32>(arg_0, _wgslsmith_f_op_f32(1792f * 1149f)))));
    global0 = _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(~arg_2.x, ~firstTrailingBit(56246u), ~1u, _wgslsmith_mod_u32(1u, ~global0.x))), vec4<u32>(global0.x, 29475u, var_1.a.c, _wgslsmith_div_u32(4294967295u, 1u)) ^ vec4<u32>(select(abs(17822u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 1u), arg_2), select(true, true, false)), _wgslsmith_mod_u32(u_input.b, global0.x), 4294967295u, 36510u));
    global1 = reverseBits(1u);
    let var_2 = !(33169i == _wgslsmith_sub_i32(~u_input.a.x, _wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.c.x, var_0, -2147483647i), vec3<i32>(arg_1.x, arg_1.x, -2147483647i)), u_input.a)));
    return var_1.a.b.a;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>) -> Struct_3 {
    global1 = _wgslsmith_mod_u32(4294967295u, firstLeadingBit(_wgslsmith_add_u32(~global0.x, arg_1.x)));
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(287f)) - -398f), min(firstTrailingBit(u_input.c), ~vec4<i32>(u_input.c.x, 0i, u_input.a.x, -67115i)), ~reverseBits(vec2<u32>(0u, 85181u))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.yz + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, arg_0.x), vec2<f32>(arg_0.x, -529f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.x, arg_0.x)))))), ~(4294967295u << (firstTrailingBit(_wgslsmith_add_u32(38721u, 59579u)) % 32u)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_0.yz), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(116f, arg_0.x), vec2<f32>(125f, -2243f), vec2<bool>(true, true))))) - arg_0.zx)));
    let var_1 = Struct_5(vec3<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.a.x - -1000f), _wgslsmith_f_op_f32(661f - arg_0.x)))), _wgslsmith_f_op_f32(func_3(arg_1.x, u_input.a.x, Struct_2(Struct_1(vec2<f32>(364f, 455f)), Struct_1(vec2<f32>(-1151f, -355f)), ~var_0.c, var_0.a)))));
    let var_2 = vec3<f32>(-195f, 625f, 1000f);
    let var_3 = min(-1i << (~(_wgslsmith_mod_u32(15230u, u_input.b) | 23342u) % 32u), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-32777i, reverseBits(u_input.c.x) << (firstLeadingBit(var_0.c) % 32u)), u_input.c.x));
    return Struct_3(Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(floor(var_0.a.a.x)))), var_0.a, 0u, var_0.b));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: f32) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)));
    let var_2 = Struct_3(func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.d.a.x, arg_0.a.d.a.x, arg_0.a.b.a.x)), _wgslsmith_f_op_vec3_f32(ceil(arg_1.a))), ~(~(vec3<u32>(u_input.b, arg_0.a.c, u_input.b) >> (global0.xyz % vec3<u32>(32u))))).a);
    var var_3 = arg_2;
    let var_4 = !(!select(!select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false), var_1.x), var_1.zw, var_1.yx));
    return Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.a.a.a.x, var_0.a.x), vec2<f32>(arg_1.a.x, -1386f))) * var_0.a.yx), vec2<f32>(_wgslsmith_f_op_f32(sign(-268f)), -1012f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 28763u;
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(296f, -294f, 1007f, -1179f) * vec4<f32>(771f, 664f, 2159f, -1000f)), vec4<f32>(217f, -453f, 1963f, 252f))) * vec4<f32>(-1400f, _wgslsmith_f_op_f32(368f - 1606f), 1177f, _wgslsmith_f_op_f32(select(-1824f, 1426f, true))))));
    var var_1 = _wgslsmith_add_i32(-u_input.c.x, _wgslsmith_div_i32(_wgslsmith_add_i32(-1i, select(51857i | u_input.c.x, 1i, var_0.x == var_0.x)), reverseBits(u_input.c.x)));
    global0 = firstTrailingBit(vec4<u32>(~_wgslsmith_mod_u32(0u, global0.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.x, 1u), global0.zz), _wgslsmith_add_u32(~global0.x, u_input.b), ~1u)) | (~select(~vec4<u32>(global0.x, 0u, 5885u, global0.x), vec4<u32>(global0.x, u_input.b, u_input.b, u_input.b), any(vec2<bool>(false, true))) | select(~(vec4<u32>(u_input.b, global0.x, 22221u, 54448u) >> (vec4<u32>(1038u, 125732u, 4294967295u, 0u) % vec4<u32>(32u))), vec4<u32>(u_input.b, 6942u, firstLeadingBit(93195u), global0.x), false));
    let var_2 = abs(vec4<u32>(~(_wgslsmith_clamp_u32(84464u, 55177u, 64264u) | (27301u << (0u % 32u))), 5068u, 4294967295u, u_input.b));
    var var_3 = 18498i;
    var var_4 = Struct_3(Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(283f)), _wgslsmith_f_op_f32(f32(-1f) * -1017f))), func_4(func_1(_wgslsmith_f_op_vec3_f32(var_0.zzy + vec3<f32>(-295f, 986f, var_0.x)), abs(global0.wxy)), Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_f32(446f + _wgslsmith_f_op_f32(753f * var_0.x))), 27000u, func_4(Struct_3(func_1(var_0.zyy, var_2.wyy).a), Struct_5(vec3<f32>(-1897f, var_0.x, var_0.x)), _wgslsmith_f_op_f32(-var_0.x))));
    var_1 = ~44111i;
    var var_5 = Struct_4(all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), u_input.b <= 0u), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)))), var_4.a.b.a.x, vec3<bool>(firstLeadingBit(var_2.x) < 4294967295u, !(26179u <= _wgslsmith_sub_u32(1u, var_4.a.c)), true), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(global0.xxy), min(max(_wgslsmith_sub_u32(u_input.b, var_2.x), 30641u), 1u ^ global0.x) & 14395u);
}

