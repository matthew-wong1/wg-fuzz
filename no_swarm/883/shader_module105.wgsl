struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(2282i, 2147483647i), vec2<i32>(1i, -8693i), vec2<i32>(-1i, 4093i), vec2<i32>(-1i, -3774i), vec2<i32>(37036i, 2147483647i), vec2<i32>(16780i, 2366i), vec2<i32>(i32(-2147483648), -46036i), vec2<i32>(-1i, 13142i), vec2<i32>(-45643i, -46216i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(7961i, 2147483647i), vec2<i32>(4369i, -4091i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(0i, 1i), vec2<i32>(7607i, -37129i), vec2<i32>(10617i, 1i), vec2<i32>(-1i, -4805i), vec2<i32>(4586i, 2147483647i), vec2<i32>(-69258i, -1793i), vec2<i32>(68490i, 29076i), vec2<i32>(2147483647i, 0i), vec2<i32>(52955i, i32(-2147483648)), vec2<i32>(8315i, -43106i), vec2<i32>(0i, 48343i), vec2<i32>(2147483647i, -1i), vec2<i32>(i32(-2147483648), 40399i), vec2<i32>(0i, -48790i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    global0 = ~(~(~(~vec2<u32>(29782u, 1u))));
    let var_0 = firstTrailingBit(~_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)]));
    let var_1 = firstLeadingBit(_wgslsmith_mult_i32(var_0, _wgslsmith_mult_i32(~var_0, ~(-2147483647i))));
    var var_2 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(114f - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1017f)), arg_0, arg_0 != arg_0)), _wgslsmith_f_op_f32(max(-103f, arg_0)), -334f), vec4<u32>(~(~global0.x), ~(u_input.a.x | 76283u), 4294967295u, global0.x)), ~vec3<u32>(u_input.b, abs(global0.x ^ 4294967295u), _wgslsmith_add_u32(~global0.x, u_input.b)));
    global1 = array<vec2<i32>, 29>();
    return select(!(!vec3<bool>(var_0 > var_0, true, false)), vec3<bool>(true, true, true), !any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false))) && false);
}

fn func_4(arg_0: i32, arg_1: vec3<bool>) -> i32 {
    global0 = ~_wgslsmith_mult_vec2_u32(u_input.a.yy, vec2<u32>(global0.x & 0u, u_input.a.x));
    var var_0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(116f)), -158f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-384f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(608f, -211f))), -1029f), u_input.a), vec3<u32>(4294967295u, abs(~1u) & ((4294967295u & global0.x) & 1u), _wgslsmith_div_u32(u_input.b, 45157u)));
    let var_1 = _wgslsmith_sub_vec3_u32(u_input.a.xyx, ~min(var_0.b, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 4294967295u), u_input.a.xwz) | vec3<u32>(global0.x, 4294967295u, global0.x)));
    global1 = array<vec2<i32>, 29>();
    var var_2 = Struct_2(var_0.a, var_0.a.b.zxx);
    return 1i;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = true;
    let var_1 = arg_0;
    var var_2 = arg_1 >= abs(17823i);
    var_0 = select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + -1243f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -659f))) == 583f, !all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), false);
    let var_3 = -891f;
    return func_4(-44815i, select(vec3<bool>(arg_1 >= -1i, any(vec2<bool>(false, false)) & true, true), !vec3<bool>(true, arg_1 < -10108i, true), select(vec3<bool>(true, true, true), func_3(_wgslsmith_f_op_f32(trunc(arg_0.a.x))), true)));
}

fn func_5(arg_0: u32, arg_1: vec2<f32>) -> Struct_2 {
    return Struct_2(Struct_1(vec4<f32>(-1007f, arg_1.x, _wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(round(-426f))), ~(~u_input.a)), u_input.a.wxz);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    global1 = array<vec2<i32>, 29>();
    var var_0 = 1u;
    var var_1 = 468f;
    return func_5(select(~_wgslsmith_dot_vec2_u32(abs(arg_3.b.xy), arg_2.b.ww << (vec2<u32>(1281u, 1496u) % vec2<u32>(32u))), ~4294967295u, !(-1i != func_2(arg_2, -1i))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_3.a.xw), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, -1697f)) - vec2<f32>(arg_3.a.x, arg_2.a.x)))), func_3(arg_3.a.x).zy)));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = arg_0.a.b.xxx;
    let var_2 = func_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, arg_2.b.x), u_input.a.zz) << (arg_2.b.yz % vec2<u32>(32u)), var_1.zy), arg_0.b.yx), abs(_wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(~arg_2.b.x, ~14491u))), func_1(~var_0.b.x, 0u, func_5(arg_0.b.x, var_0.a.a.xz).a, arg_2).a, func_1(var_1.x, select(_wgslsmith_sub_u32(abs(var_0.a.b.x), ~4294967295u), countOneBits(~0u), all(vec3<bool>(true, true, true))), arg_2, var_0.a).a);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a.a * vec4<f32>(arg_2.a.x, arg_2.a.x, arg_0.a.a.x, arg_0.a.a.x)) + arg_2.a) + vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), arg_2.a.x, _wgslsmith_f_op_f32(step(883f, -1000f)), arg_0.a.a.x))), var_2.a.b);
    var var_4 = func_1(func_1(4294967295u, var_2.b.x, var_3, func_5(select(arg_2.b.x, var_3.b.x, false) | u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, 1082f))))).a).b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~(~var_2.a.b.x), _wgslsmith_mult_u32(1u, ~31937u)), var_3.b.yy), func_1(58924u, var_3.b.x, func_1(~abs(4294967295u), 0u, var_3, arg_2).a, var_2.a).a, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_0.a.a, arg_0.a.a)), _wgslsmith_f_op_vec4_f32(var_3.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, arg_2.a.x, arg_0.a.a.x, arg_0.a.a.x)))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(select(var_3.b, vec4<u32>(40971u, 1u, 1u, 0u), false), firstTrailingBit(var_0.a.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(36198u, var_1.x, 2258u, arg_0.b.x), vec4<u32>(0u, var_0.b.x, 0u, 6203u)) | countOneBits(vec4<u32>(0u, var_2.b.x, var_2.a.b.x, 60345u)), ~(~u_input.a)))).a;
    return var_2.a;
}

fn func_7(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = func_6(func_1(28417u, global0.x, func_5(10568u >> (_wgslsmith_mult_u32(u_input.a.x, 4294967295u) % 32u), vec2<f32>(622f, _wgslsmith_f_op_f32(-arg_2.a.a.x))).a, func_1(~global0.x, ~64339u, arg_2.a, func_5(arg_1, arg_2.a.a.wz).a).a), reverseBits(select(~countOneBits(global1[_wgslsmith_index_u32(4294967295u, 29u)]), global1[_wgslsmith_index_u32(global0.x, 29u)], select(vec2<bool>(arg_0, false), select(vec2<bool>(false, false), vec2<bool>(arg_0, arg_0), false), !vec2<bool>(false, arg_0)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.a.x, -1008f, arg_2.a.a.x, 214f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a.a.x, arg_2.a.a.x, -1298f, arg_2.a.a.x), vec4<f32>(465f, 860f, 556f, arg_2.a.a.x)))), arg_2.a.b ^ vec4<u32>(arg_2.b.x, 45525u, abs(36781u), 0u)), select(16316i, -(13210i >> (global0.x % 32u)) ^ func_4(-56159i >> (1u % 32u), select(vec3<bool>(arg_0, false, true), vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, true, false))), any(select(func_3(arg_2.a.a.x).xx, vec2<bool>(true, true), false)))).b.wy;
    global0 = countOneBits(arg_2.b.xy);
    var var_1 = u_input.b;
    var var_2 = Struct_2(func_1(func_6(func_5(u_input.a.x, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(705f, 219f)))), ~(~global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), Struct_1(func_5(var_0.x, arg_2.a.a.yz).a.a, vec4<u32>(31193u, 1065u, 4294967295u, arg_2.a.b.x)), ~min(-1i, 0i)).b.x, var_0.x, func_6(Struct_2(func_5(0u, arg_2.a.a.xz).a, ~arg_2.a.b.xzy), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(global1[_wgslsmith_index_u32(arg_1, 29u)], vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(-2147483647i, -2147483647i)), vec2<i32>(1i, -2147483647i)), func_5(12535u, arg_2.a.a.wx).a, ~abs(35063i)), Struct_1(arg_2.a.a, u_input.a)).a, ~func_5(func_1(1u, 1u, Struct_1(arg_2.a.a, u_input.a), arg_2.a).b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_2.a.a.yw)))).b);
    global0 = arg_2.b.zx;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 29>();
    var var_0 = Struct_2(func_7(any(vec3<bool>(global0.x >= 12999u, true, true)), ~4294967295u, Struct_2(func_6(func_1(u_input.b, 21444u, Struct_1(vec4<f32>(339f, 945f, -970f, 907f), u_input.a), Struct_1(vec4<f32>(431f, -2489f, 141f, 1016f), u_input.a)), global1[_wgslsmith_index_u32(min(global0.x, 12041u), 29u)], Struct_1(vec4<f32>(1000f, 1662f, -669f, 444f), vec4<u32>(44167u, 4884u, 17002u, 31555u)), _wgslsmith_clamp_i32(0i, -2147483647i, -17479i)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, 36568u, 36614u), ~vec3<u32>(global0.x, 129454u, global0.x), u_input.a.zyx))), countOneBits(~u_input.a.xyw));
    let var_1 = var_0.a.b;
    let var_2 = false;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(var_0.a.a)), var_0.a.b);
    var_3 = func_6(func_1(~_wgslsmith_sub_u32(23083u, var_3.b.x), var_0.b.x, var_0.a, var_0.a), global1[_wgslsmith_index_u32(~func_5(var_1.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1066f, var_0.a.a.x), vec2<f32>(var_3.a.x, -369f), vec2<bool>(false, var_2)))))).a.b.x, 29u)], Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(-742f, var_3.a.x)), func_1(39665u, 4294967295u, var_0.a, Struct_1(var_0.a.a, vec4<u32>(4294967295u, var_3.b.x, 2790u, 1u))).a.a.x, -405f, -258f), _wgslsmith_mult_vec4_u32(var_0.a.b, abs(u_input.a) & u_input.a)), -2147483647i);
    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(258f, -2025f, 793f) * _wgslsmith_f_op_vec3_f32(var_0.a.a.yyy - vec3<f32>(866f, 215f, -1955f))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.a.x)), -1396f, _wgslsmith_f_op_f32(var_0.a.a.x - var_3.a.x)))), -select(select(_wgslsmith_add_i32(2147483647i, -1i), func_2(Struct_1(var_0.a.a, vec4<u32>(var_3.b.x, 4294967295u, 0u, 4294967295u)), -2147483647i), true), 56264i, any(!vec3<bool>(false, false, var_2))), !(-40218i <= func_4(-36329i, vec3<bool>(false, true, false))) || var_2, func_1(~_wgslsmith_mod_u32(4294967295u, func_6(Struct_2(Struct_1(vec4<f32>(var_0.a.a.x, -512f, 300f, 964f), u_input.a), vec3<u32>(0u, var_1.x, global0.x)), vec2<i32>(-1i, -2213i), var_0.a, 2147483647i).b.x), _wgslsmith_mod_u32(36897u, 28361u), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.a.a, var_3.a, vec4<bool>(var_2, true, true, var_2)))), _wgslsmith_mult_vec4_u32(u_input.a, func_6(Struct_2(var_0.a, u_input.a.xzy), vec2<i32>(-2147483647i, 26790i), Struct_1(var_3.a, vec4<u32>(var_3.b.x, var_0.b.x, var_0.a.b.x, var_1.x)), 2147483647i).b)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.a * var_3.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, -287f, 942f, var_0.a.a.x))), vec4<u32>(min(u_input.b, 43086u), global0.x | 0u, 4294967295u ^ var_3.b.x, reverseBits(4294967295u)))));
    var var_5 = Struct_2(var_4.d.a, _wgslsmith_mod_vec3_u32((~vec3<u32>(var_3.b.x, 0u, var_4.d.b.x) | var_0.a.b.xzy) << (func_6(var_4.d, ~vec2<i32>(var_4.b, var_4.b), Struct_1(var_3.a, var_0.a.b), -53395i).b.wyw % vec3<u32>(32u)), ~(~var_0.a.b.yxz)));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

