struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_mod_vec2_u32(u_input.b.xz, _wgslsmith_sub_vec2_u32(select(vec2<u32>(~4294967295u, 0u), u_input.b.ww, false), max(~firstTrailingBit(u_input.b.wx), u_input.b.zz)));
    global0 = vec3<i32>(-1i) * -arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1387f, -347f, 530f)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(862f, 1128f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(531f, 1698f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1380f, -1607f, 396f))), _wgslsmith_div_vec3_f32(vec3<f32>(-401f, -2053f, 345f), vec3<f32>(-730f, 1208f, 242f))))));
    var var_2 = Struct_1(vec3<bool>(var_0.x >= 61742u, any(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false))), true), _wgslsmith_dot_vec3_u32(~firstLeadingBit(u_input.b.xww) << ((_wgslsmith_clamp_vec3_u32(u_input.b.yyw, vec3<u32>(u_input.a, 4294967295u, 77195u), u_input.b.yyx) | vec3<u32>(u_input.b.x, var_0.x, u_input.b.x)) % vec3<u32>(32u)), ~reverseBits(u_input.b.wxy)), u_input.b.x, ~_wgslsmith_dot_vec4_u32(u_input.b >> (vec4<u32>(4294967295u, u_input.a, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), select(vec4<u32>(var_0.x, 42106u, 1u, 58525u), u_input.b, true)) << (~(min(3258u, 7928u) << (var_0.x % 32u)) % 32u), ~42737u);
    var_2 = Struct_1(!select(!select(var_2.a, vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x), vec3<bool>(var_2.a.x, true, false)), var_2.a, select(any(vec4<bool>(false, var_2.a.x, var_2.a.x, false)), var_2.a.x && var_2.a.x, any(vec4<bool>(var_2.a.x, false, true, var_2.a.x)))), 4294967295u, firstLeadingBit(4294967295u), ~(~(~max(var_0.x, 43942u))), ~4675u);
    return 22444u;
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<bool>) -> i32 {
    global0 = abs(~reverseBits(vec3<i32>(~global0.x, ~global0.x, global0.x)));
    var var_0 = arg_2.x;
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 6925u, 1u, u_input.b.x), u_input.b), firstLeadingBit(~_wgslsmith_div_u32(u_input.b.x, u_input.a))), u_input.b.yz);
    let var_2 = func_3(-(~vec3<i32>(global0.x, global0.x, countOneBits(global0.x))));
    let var_3 = arg_2.x;
    return _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(reverseBits(countOneBits(abs(vec3<i32>(global0.x, 2147483647i, global0.x)))), vec3<i32>(~2999i, ~(-1570i), _wgslsmith_mod_i32(global0.x, global0.x)) >> (vec3<u32>(4368u, 51287u, 1u) % vec3<u32>(32u)), min(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -36893i, global0.x, global0.x), vec4<i32>(global0.x, global0.x, 28447i, global0.x)), -15064i, _wgslsmith_clamp_i32(-1i, global0.x, global0.x)))), ~(-_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global0.x, global0.x), vec3<i32>(global0.x, global0.x, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(3804i, -1i, 64018i), vec3<i32>(52728i, global0.x, 0i)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1717f, -242f)), 1000f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(2224f, 1791f, arg_1.a.x)), _wgslsmith_div_f32(1279f, -899f))))));
    var var_1 = Struct_2(arg_1, vec4<u32>(14391u, arg_1.b, max(~(~arg_1.b), abs(arg_1.d)), ~(arg_1.c >> (u_input.b.x % 32u))), arg_1);
    global0 = -vec3<i32>(-16977i, arg_0, global0.x);
    var var_2 = arg_1;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -111f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -527f))))));
    return Struct_4(Struct_1(select(!(!var_1.a.a), var_2.a, !(!var_1.c.a)), u_input.b.x, ~var_2.c, ~(51255u | func_3(vec3<i32>(arg_0, 11454i, arg_0))), _wgslsmith_mod_u32(53364u, arg_1.c)), !(!vec3<bool>(true, !var_1.c.a.x, true)), Struct_3(global0.zy, Struct_1(!vec3<bool>(false, arg_1.a.x, false), var_1.b.x | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.e), vec2<u32>(var_1.b.x, 68057u)), 1u, ~(~var_2.d), var_2.b)));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_4 {
    global0 = abs(vec3<i32>(reverseBits(arg_0), _wgslsmith_mod_i32(arg_0, 0i), arg_0));
    var var_0 = ~(~(-arg_0));
    var_0 = global0.x;
    global0 = ~vec3<i32>(arg_0, global0.x, _wgslsmith_add_i32(~4547i, ~_wgslsmith_clamp_i32(global0.x, arg_0, arg_0)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-459f, -135f), _wgslsmith_f_op_f32(902f - -1000f), true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1883f, -1000f), 291f)))) * -699f), _wgslsmith_f_op_f32(max(-719f, 1f)), -612f);
    return func_4(_wgslsmith_clamp_i32(-9583i, -(arg_0 | global0.x) >> (6202u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(func_2(arg_1.x, vec3<f32>(179f, 876f, var_1.x), arg_2.a.a), global0.x >> (0u % 32u), global0.x), vec3<i32>(global0.x, _wgslsmith_add_i32(1i, 46546i), -2147483647i))), Struct_1(!vec3<bool>(arg_2.c.c < 10836u, any(arg_3), true), _wgslsmith_clamp_u32(u_input.a << ((13536u & u_input.a) % 32u), u_input.b.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 16711u), u_input.b.wz)), u_input.b.x, 23267u, abs(u_input.a)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<u32>) -> Struct_4 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2105f, -552f, 689f, 725f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-911f, 815f)), -857f, _wgslsmith_f_op_f32(230f + -1000f), -801f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2244f, 1423f, 397f, 764f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(712f, -348f, 411f, -766f))))), vec4<f32>(-547f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * 650f), -1716f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !(!(!vec4<bool>(true, arg_0.c.b.a.x, false, true))))));
    let var_2 = arg_1.a.a.x;
    var var_3 = arg_1;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_1.zw, vec2<f32>(-610f, var_1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2428f, 1145f) * vec2<f32>(var_1.x, -468f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(var_1.zx, var_1.zy))))));
    return func_4(-13868i, Struct_1(arg_0.a.a, 4294967295u, arg_2.x, ~(~(~var_3.c.b.d)), _wgslsmith_sub_u32(arg_0.a.b, 54551u)));
}

fn func_6(arg_0: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(min(665f, _wgslsmith_div_f32(-780f, -1141f))), 801f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2032f, 817f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1653f, -640f), vec2<f32>(-199f, -381f))))))));
    let var_1 = select(func_5(arg_0, Struct_4(func_1(_wgslsmith_add_i32(arg_0.c.a.x, arg_0.c.a.x), !arg_0.c.b.a, Struct_2(arg_0.c.b, u_input.b, Struct_1(arg_0.b, arg_0.a.b, u_input.a, arg_0.a.d, 41608u)), !vec3<bool>(false, false, arg_0.a.a.x)).a, vec3<bool>(arg_0.b.x, true, false | arg_0.b.x), Struct_3(func_4(-40954i, Struct_1(vec3<bool>(arg_0.b.x, true, arg_0.b.x), u_input.a, 20395u, u_input.b.x, 4294967295u)).c.a, func_4(-40468i, Struct_1(arg_0.b, u_input.a, 0u, u_input.a, u_input.a)).a)), _wgslsmith_mult_vec4_u32(vec4<u32>(20964u, u_input.a, _wgslsmith_add_u32(arg_0.c.b.e, 689u), ~1u), vec4<u32>(4294967295u, _wgslsmith_mult_u32(11541u, 1u), 4294967295u, 7746u))).c.b.a.x, arg_0.c.b.a.x, arg_0.b.x);
    global0 = -firstTrailingBit(_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_0.c.a.x, 19828i, global0.x), -vec3<i32>(1i, 2147483647i, -13032i) << (~vec3<u32>(arg_0.a.c, u_input.b.x, arg_0.c.b.e) % vec3<u32>(32u))));
    let var_2 = Struct_3(~_wgslsmith_mult_vec2_i32(abs(vec2<i32>(2147483647i, global0.x) << (vec2<u32>(u_input.b.x, arg_0.a.d) % vec2<u32>(32u))), func_5(func_4(-10288i, arg_0.a), arg_0, u_input.b).c.a), arg_0.c.b);
    global0 = vec3<i32>(global0.x, -(~max(global0.x, arg_0.c.a.x)), func_1(countOneBits(var_2.a.x), vec3<bool>(true, !arg_0.c.b.a.x, true), Struct_2(func_4(-2147483647i, Struct_1(arg_0.c.b.a, arg_0.a.e, 4294967295u, 29060u, u_input.a)).a, max(vec4<u32>(9922u, var_2.b.e, 9632u, 4579u), vec4<u32>(48265u, var_2.b.e, u_input.a, var_2.b.c)), arg_0.a), func_4(i32(-1i) * -2147483647i, func_4(-1i, Struct_1(var_2.b.a, 12400u, 68157u, 0u, 1u)).c.b).b).c.a.x) & vec3<i32>(-49823i, _wgslsmith_mult_i32(global0.x, abs(i32(-1i) * -38745i)), global0.x << (u_input.b.x % 32u));
    return all(vec2<bool>(true, arg_0.c.b.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(select(false, u_input.a < 1u, true), false, false), vec3<bool>(true, func_6(func_5(Struct_4(Struct_1(vec3<bool>(true, false, false), u_input.a, u_input.b.x, u_input.a, 93011u), vec3<bool>(true, true, true), Struct_3(vec2<i32>(-26433i, -44031i), Struct_1(vec3<bool>(true, true, true), u_input.a, u_input.a, 0u, u_input.b.x))), func_1(-24478i, vec3<bool>(true, true, false), Struct_2(Struct_1(vec3<bool>(true, true, false), u_input.a, u_input.a, u_input.a, 1u), u_input.b, Struct_1(vec3<bool>(true, false, false), 4294967295u, 43417u, u_input.a, 1u)), vec3<bool>(true, false, false)), u_input.b)), true), ~countOneBits(min(-62765i, global0.x)) >= 17819i);
    var var_1 = reverseBits(~abs(~vec3<i32>(0i, 2147483647i, global0.x)));
    global0 = ~(~(~vec3<i32>(0i << (u_input.a % 32u), var_1.x, abs(global0.x))));
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(max(-33765i, -11617i & var_1.x), 2147483647i, -67785i, _wgslsmith_mult_i32(-1i, func_1(2147483647i, vec3<bool>(var_0.x, var_0.x, true), Struct_2(Struct_1(vec3<bool>(var_0.x, true, var_0.x), u_input.a, 23723u, 57365u, 0u), vec4<u32>(4294967295u, 44338u, u_input.a, u_input.b.x), Struct_1(vec3<bool>(true, true, false), u_input.a, u_input.a, u_input.a, 38520u)), vec3<bool>(var_0.x, var_0.x, false)).c.a.x)), _wgslsmith_div_vec4_i32(~vec4<i32>(-1i, -8048i, global0.x, -21077i), _wgslsmith_clamp_vec4_i32(~vec4<i32>(var_1.x, -61755i, -16400i, var_1.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -2147483647i, var_1.x, var_1.x), vec4<i32>(var_1.x, 2147483647i, -2147483647i, var_1.x)), vec4<i32>(-7881i, -14710i, global0.x, -2147483647i)))) >> (~(~(reverseBits(vec4<u32>(1u, 0u, 1u, u_input.b.x)) << (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.b.x) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var_0 = vec3<bool>(func_6(Struct_4(Struct_1(!vec3<bool>(true, var_0.x, var_0.x), _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x), ~u_input.b.x, ~u_input.a, u_input.b.x), !(!vec3<bool>(var_0.x, false, true)), Struct_3(var_2.zz, Struct_1(vec3<bool>(var_0.x, true, false), 64517u, u_input.b.x, u_input.a, 44126u)))), u_input.b.x < _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 1u) | u_input.b.yw, u_input.b.xy | vec2<u32>(u_input.b.x, u_input.b.x)), ~vec2<u32>(u_input.b.x, u_input.b.x)), true);
    var var_3 = func_5(Struct_4(func_1(1i, vec3<bool>(true, any(vec2<bool>(var_0.x, true)), true), Struct_2(func_5(Struct_4(Struct_1(vec3<bool>(true, var_0.x, var_0.x), u_input.a, 49541u, u_input.b.x, u_input.b.x), vec3<bool>(var_0.x, false, true), Struct_3(global0.yx, Struct_1(vec3<bool>(false, false, var_0.x), u_input.b.x, u_input.a, 1u, 65892u))), Struct_4(Struct_1(vec3<bool>(true, var_0.x, var_0.x), 17253u, 17899u, u_input.b.x, 13646u), vec3<bool>(var_0.x, false, false), Struct_3(vec2<i32>(var_2.x, -16998i), Struct_1(vec3<bool>(var_0.x, var_0.x, true), u_input.b.x, u_input.b.x, u_input.a, u_input.a))), vec4<u32>(68162u, u_input.a, u_input.b.x, u_input.b.x)).c.b, vec4<u32>(u_input.a, u_input.a, u_input.b.x, 1u) | vec4<u32>(0u, u_input.a, u_input.a, 33666u), func_4(global0.x, Struct_1(vec3<bool>(var_0.x, var_0.x, var_0.x), 25012u, 4294967295u, 4294967295u, 27919u)).c.b), func_1(firstLeadingBit(6566i), !vec3<bool>(var_0.x, false, var_0.x), Struct_2(Struct_1(vec3<bool>(true, true, var_0.x), u_input.b.x, u_input.b.x, 65145u, u_input.b.x), vec4<u32>(u_input.a, u_input.b.x, 4294967295u, 0u), Struct_1(vec3<bool>(false, false, var_0.x), u_input.b.x, 23660u, u_input.a, 1u)), !vec3<bool>(false, false, var_0.x)).b).c.b, vec3<bool>(var_0.x, !all(vec4<bool>(true, var_0.x, false, false)), any(!var_0.xy)), func_5(Struct_4(Struct_1(vec3<bool>(false, true, true), 28984u, u_input.a, 4294967295u, u_input.b.x), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), true), func_1(global0.x, vec3<bool>(false, var_0.x, var_0.x), Struct_2(Struct_1(vec3<bool>(var_0.x, var_0.x, false), 29300u, 33498u, 6418u, 23363u), u_input.b, Struct_1(vec3<bool>(var_0.x, var_0.x, var_0.x), u_input.b.x, u_input.b.x, 73845u, 4294967295u)), vec3<bool>(var_0.x, var_0.x, false)).c), func_4(global0.x ^ 0i, Struct_1(vec3<bool>(var_0.x, false, false), 15263u, 4294967295u, u_input.b.x, u_input.a)), ~u_input.b ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 5227u, u_input.a), u_input.b)).c), Struct_4(Struct_1(!vec3<bool>(var_0.x, true, true), max(firstLeadingBit(u_input.a), u_input.b.x), ~(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 24985u, 4294967295u), u_input.b.xzw) >> (~u_input.a % 32u), abs(~37752u)), !(!func_4(-2147483647i, Struct_1(vec3<bool>(var_0.x, true, var_0.x), 0u, 11162u, u_input.b.x, u_input.b.x)).b), func_1(~(-20748i), vec3<bool>(var_0.x, true & var_0.x, true), Struct_2(func_4(-2147483647i, Struct_1(vec3<bool>(var_0.x, false, var_0.x), 4709u, 1u, u_input.a, u_input.b.x)).a, u_input.b, func_4(var_1.x, Struct_1(vec3<bool>(var_0.x, var_0.x, var_0.x), 1u, 52046u, u_input.b.x, u_input.a)).c.b), vec3<bool>(!var_0.x, false, true)).c), ~(~max(u_input.b, u_input.b)) << (firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, 1u, ~72736u)) % vec4<u32>(32u)));
    let var_4 = firstLeadingBit(_wgslsmith_clamp_vec2_i32(abs(global0.zy), (select(var_3.c.a, vec2<i32>(2147483647i, 1i), vec2<bool>(false, var_0.x)) >> (u_input.b.zx % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(firstLeadingBit(u_input.b.xz), vec2<u32>(var_3.c.b.b, var_3.a.d)) % vec2<u32>(32u)), func_5(func_1(1i, vec3<bool>(var_3.b.x, var_3.a.a.x, false), Struct_2(var_3.a, u_input.b, Struct_1(vec3<bool>(true, var_0.x, true), 15285u, u_input.a, var_3.c.b.e, 4294967295u)), vec3<bool>(var_3.b.x, false, var_0.x)), Struct_4(var_3.c.b, var_3.b, Struct_3(vec2<i32>(0i, var_2.x), Struct_1(vec3<bool>(var_3.a.a.x, false, var_3.a.a.x), 105130u, u_input.a, var_3.c.b.d, 4294967295u))), select(u_input.b ^ vec4<u32>(85189u, u_input.b.x, var_3.c.b.d, var_3.a.d), vec4<u32>(var_3.c.b.b, 4732u, 0u, 1u) << (vec4<u32>(u_input.a, 26256u, u_input.b.x, 4294967295u) % vec4<u32>(32u)), any(var_3.b))).c.a));
    let x = u_input.a;
    s_output = StorageBuffer(max(~((var_3.c.b.c >> (25578u % 32u)) << (62866u % 32u)), u_input.a << (func_4(-2147483647i, Struct_1(vec3<bool>(var_3.c.b.a.x, var_3.b.x, var_3.a.a.x), u_input.b.x, var_3.a.c, 0u, var_3.a.e)).c.b.d % 32u)));
}

