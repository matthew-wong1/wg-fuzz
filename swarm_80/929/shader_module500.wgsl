struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec4<bool>,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_3,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec4<f32>) -> vec3<f32> {
    let var_0 = !arg_1.e;
    var var_1 = var_0;
    var var_2 = arg_2.e;
    let var_3 = ~vec2<i32>(-2147483647i, 2147483647i);
    var var_4 = arg_2.c;
    return _wgslsmith_div_vec3_f32(arg_3.yww, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.zxx)) * _wgslsmith_f_op_vec3_f32(arg_3.yzw + _wgslsmith_f_op_vec3_f32(-arg_3.yyw)))));
}

fn func_3() -> vec2<i32> {
    let var_0 = -vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(-87707i, -36534i, 46103i), vec3<i32>(1i, 1i, 1i)), vec3<i32>(1i, 1i, 1i)), -1i, _wgslsmith_mod_i32(5491i, ~0i));
    var var_1 = true;
    let var_2 = var_0.x;
    var var_3 = abs(firstTrailingBit(~u_input.a.x));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-589f, -1728f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(338f, -379f)))) - vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(384f + 1712f) * _wgslsmith_f_op_f32(f32(-1f) * -1550f))));
    return var_0.yz;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.d, _wgslsmith_f_op_f32(arg_1.d - 778f), -1131f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.d, 738f, arg_1.d), vec3<f32>(arg_1.d, 273f, arg_1.d)) + _wgslsmith_f_op_vec3_f32(func_2(arg_1.a, arg_1, Struct_4(vec3<u32>(u_input.a.x, u_input.a.x, 1u), Struct_1(arg_1.c.zy, arg_1.d), Struct_3(vec2<f32>(arg_1.d, -385f), Struct_1(arg_1.c.zz, arg_1.d), 154f, arg_1, arg_1.d), vec3<bool>(arg_1.c.x, arg_1.e, false), -801f), vec4<f32>(1254f, 849f, 1667f, -1337f))))))));
    var var_1 = _wgslsmith_add_vec2_i32(func_3(), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(arg_2, vec2<i32>(-arg_2.x, arg_2.x)), select(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.x, arg_2.x), vec2<i32>(arg_2.x, -547i)), arg_2, true) & vec2<i32>(arg_2.x, 2147483647i)));
    var var_2 = arg_1.e;
    var var_3 = -269f;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-301f, var_0.x)), _wgslsmith_f_op_f32(-arg_1.d), -772f, _wgslsmith_div_f32(arg_1.d, var_0.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-191f, arg_1.d, var_0.x, var_0.x) - vec4<f32>(var_0.x, var_0.x, 849f, 1285f))))) + vec4<f32>(-425f, _wgslsmith_f_op_f32(trunc(var_0.x)), -545f, -709f));
    return Struct_1(select(!select(select(vec2<bool>(arg_1.c.x, arg_1.c.x), vec2<bool>(arg_1.e, arg_1.e), vec2<bool>(arg_1.c.x, arg_1.e)), !arg_1.c.zz, false), !arg_1.c.xx, all(arg_1.c)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_4.x + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-317f, var_0.x)))));
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = ~_wgslsmith_mod_u32(abs(1u), u_input.a.x);
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -830f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1215f) * arg_0.b)), vec2<f32>(arg_0.b, arg_0.b))), func_1(~max(firstLeadingBit(1u), _wgslsmith_clamp_u32(0u, 7709u, 1u)), Struct_2(~u_input.a, ~firstLeadingBit(16959u), vec4<bool>(arg_0.a.x, !arg_0.a.x, true, false), -287f, true && (arg_0.a.x && false)), abs(~(-vec2<i32>(0i, 0i))), _wgslsmith_sub_vec2_u32(~vec2<u32>(var_0, 73442u) ^ _wgslsmith_sub_vec2_u32(u_input.a.wy, u_input.a.zw), _wgslsmith_mult_vec2_u32(vec2<u32>(23339u, var_0) >> (u_input.a.wx % vec2<u32>(32u)), u_input.a.wx))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(var_0, Struct_2(vec4<u32>(u_input.a.x, var_0, 78406u, var_0), u_input.a.x, vec4<bool>(true, arg_0.a.x, arg_0.a.x, false), arg_0.b, arg_0.a.x), vec2<i32>(4418i, 13498i), u_input.a.wz).b) - -1000f), 238f), Struct_2(select(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(0u, 7893u, 1u, 22131u)), max(vec4<u32>(var_0, 1u, 72065u, u_input.a.x), vec4<u32>(8807u, var_0, 1u, 0u)), all(vec3<bool>(true, arg_0.a.x, arg_0.a.x))) << (reverseBits(select(u_input.a, vec4<u32>(var_0, 4294967295u, var_0, var_0), arg_0.a.x)) % vec4<u32>(32u)), _wgslsmith_div_u32(var_0 ^ 1u, _wgslsmith_div_u32(83837u, min(19697u, 4294967295u))), vec4<bool>(!(u_input.a.x <= 38951u), true, true, true), 1000f, arg_0.a.x), -525f);
    var var_2 = ~vec2<i32>(~1i, _wgslsmith_clamp_i32(~(-2147483647i), firstTrailingBit(-16103i) >> (~0u % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 11613i), vec3<i32>(69257i, 2147483647i, 1i))));
    var var_3 = ~vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(34320u, ~u_input.a.x, ~1u), u_input.a.x), _wgslsmith_mult_u32(~(~8938u), 92177u));
    let var_4 = -abs(vec2<i32>(-2147483647i, _wgslsmith_mult_i32(var_2.x | var_2.x, var_2.x)));
    return var_1.d.a.xyw;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = func_1(abs(4401u), Struct_2(~vec4<u32>(func_4(Struct_1(vec2<bool>(true, false), 708f)).x, 1u << (u_input.a.x % 32u), _wgslsmith_sub_u32(4294967295u, 46777u), func_4(Struct_1(vec2<bool>(true, true), 124f)).x), 12961u, vec4<bool>(1u != _wgslsmith_add_u32(108975u, u_input.a.x), true, true, true), 1360f, true), -vec2<i32>(0i, 1i), abs(arg_1.xx));
    var var_1 = Struct_1(var_0.a, 342f);
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(round(var_1.b)), -681f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, -1777f), vec2<f32>(var_1.b, 534f)))))), func_1(17345u, Struct_2(vec4<u32>(0u >> (arg_1.x % 32u), _wgslsmith_mod_u32(24682u, arg_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 124457u, arg_1.x), vec3<u32>(1u, 92157u, arg_0.x)), 0u), ~1u, select(vec4<bool>(var_0.a.x, false, var_0.a.x, true), vec4<bool>(false, false, true, true), true), var_1.b, !var_0.a.x), max(select(reverseBits(vec2<i32>(26022i, -37228i)), _wgslsmith_sub_vec2_i32(vec2<i32>(22379i, 5917i), vec2<i32>(-1i, 3881i)), var_1.a), vec2<i32>(select(1i, 0i, var_0.a.x), 1i)), ~arg_1.zy), var_1.b, Struct_2(abs(reverseBits(vec4<u32>(1u, 68969u, u_input.a.x, arg_0.x) | u_input.a)), _wgslsmith_sub_u32(select(max(arg_0.x, 4294967295u), _wgslsmith_sub_u32(arg_1.x, arg_0.x), false), firstTrailingBit(69129u)), select(select(vec4<bool>(true, var_1.a.x, false, var_1.a.x), !vec4<bool>(false, var_1.a.x, var_0.a.x, var_1.a.x), select(var_0.a.x, false, true)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(var_0.a.x, var_1.a.x, false, var_1.a.x), vec4<bool>(true, false, false, false)), !vec4<bool>(var_1.a.x, var_0.a.x, true, var_1.a.x), select(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x))), vec4<bool>(var_0.a.x, true, true, var_1.a.x)), _wgslsmith_f_op_f32(314f * var_0.b), select(false, all(vec3<bool>(true, var_1.a.x, var_0.a.x)), any(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(u_input.a, Struct_2(u_input.a, u_input.a.x, vec4<bool>(false, var_1.a.x, false, false), -1444f, var_1.a.x), Struct_4(vec3<u32>(arg_1.x, 0u, arg_0.x), var_0, Struct_3(vec2<f32>(var_1.b, var_0.b), Struct_1(var_0.a, var_1.b), var_1.b, Struct_2(vec4<u32>(arg_1.x, 4294967295u, 41478u, arg_1.x), u_input.a.x, vec4<bool>(var_1.a.x, true, false, false), 538f, true), var_1.b), vec3<bool>(true, true, true), var_0.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-885f, var_1.b, 331f, -1000f) + vec4<f32>(199f, -399f, 888f, -1187f)))).x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0.b)))))));
    var var_3 = vec3<bool>(var_1.a.x, false, true);
    var_3 = select(vec3<bool>(!all(!vec2<bool>(var_1.a.x, false)), var_3.x, false), !var_2.d.c.zyz, false);
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2488f, -600f))))), var_2.b, 329f, Struct_2(select(var_2.d.a, vec4<u32>(~2864u, ~u_input.a.x, _wgslsmith_div_u32(1u, var_2.d.b), var_2.d.a.x), var_2.d.c), u_input.a.x, var_2.d.c, var_1.b, any(vec3<bool>(true, !var_0.a.x, true))), var_2.d.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(~u_input.a.yxy, Struct_1(vec2<bool>(true, false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(913f - -468f)))), func_5(u_input.a.yx, func_4(func_1(~u_input.a.x, Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), 1u, vec4<bool>(true, false, false, false), -119f, true), vec2<i32>(1i, 69194i), vec2<u32>(25028u, 7490u)))), func_5(u_input.a.zz, vec3<u32>(16813u, _wgslsmith_add_u32(1u, u_input.a.x & u_input.a.x), u_input.a.x)).d.c.xxw, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1428f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-734f - -1805f)))));
    var var_1 = func_5(vec2<u32>(0u, ~var_0.a.x), firstTrailingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 3860u, 33593u), var_0.c.d.a.ywy) >> (~(~vec3<u32>(u_input.a.x, 78129u, 1u)) % vec3<u32>(32u))));
    var_0 = Struct_4(_wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.a.x, countOneBits(65308u), var_0.a.x), _wgslsmith_sub_vec3_u32(var_1.d.a.ywx, var_0.a << (var_1.d.a.wwx % vec3<u32>(32u))), func_5(countOneBits(u_input.a.yw), ~u_input.a.wzy).d.c.zwz), max(abs(~var_0.a), ~_wgslsmith_div_vec3_u32(u_input.a.zzy, vec3<u32>(var_1.d.b, 48012u, var_1.d.b)))), Struct_1(select(func_5(abs(var_0.a.zx), ~vec3<u32>(13492u, 4294967295u, 29657u)).b.a, vec2<bool>(true, var_0.b.a.x), var_1.b.a), -655f), Struct_3(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(-var_1.d.d)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0.e))))), func_1(countOneBits(var_1.d.b), var_1.d, vec2<i32>(~(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(6319i, 12814i), vec2<i32>(-54886i, 1i))), abs(countOneBits(var_1.d.a.zy))), _wgslsmith_f_op_f32(f32(-1f) * -321f), Struct_2(vec4<u32>(~4294967295u, firstTrailingBit(481u), 43257u, 4294967295u), 1u, select(vec4<bool>(true, var_1.b.a.x, false, var_0.b.a.x), var_1.d.c, var_0.c.d.b == 0u), 293f, var_1.b.a.x), 414f), !vec3<bool>(any(!var_1.d.c.yzy), func_5(u_input.a.xz ^ vec2<u32>(31945u, 4294967295u), vec3<u32>(6866u, 40412u, 87885u)).b.a.x, (89817u > var_0.a.x) | true), _wgslsmith_f_op_f32(trunc(932f)));
    var var_2 = -(~(~(-46223i)));
    let var_3 = func_1(firstLeadingBit(var_1.d.a.x) & ~(reverseBits(var_0.c.d.b) & 0u), var_1.d, vec2<i32>(~abs(max(42938i, -17004i)), countOneBits(2147483647i)), ~u_input.a.zx).a;
    var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(var_1.a.x + var_1.d.d), var_1.e), func_1(14752u, Struct_2(abs(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(70037u, 5783u, var_0.c.d.a.x, var_1.d.a.x))), 5240u, vec4<bool>(true, var_3.x | var_3.x, all(vec3<bool>(var_0.c.d.e, false, true)), true), var_0.c.d.d, var_0.c.d.c.x), min(~vec2<i32>(-1i, -2147483647i) << (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u)), ~(-vec2<i32>(31414i, -6082i))), var_0.a.xz), _wgslsmith_f_op_f32(-390f * 313f), var_0.c.d, var_1.c);
    var var_4 = vec4<u32>(u_input.a.x << (var_1.d.b % 32u), 13365u, 0u, 20067u);
    let x = u_input.a;
    s_output = StorageBuffer(8476i, _wgslsmith_clamp_vec4_i32(-vec4<i32>(1i, 2147483647i, -12362i, 60029i), -vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(456i, 38871i, -2626i, 0i))) ^ ~(-firstTrailingBit(vec4<i32>(-34926i, 0i, -1i, -2147483647i))), vec4<i32>(-_wgslsmith_div_i32(1i, abs(2147483647i)), _wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(1i, -33292i, 55914i, -9933i)), ~vec4<i32>(-4213i, 1i, 42011i, -2147483647i)), _wgslsmith_mod_i32(-6700i << (1u % 32u), ~(-24055i)), -1279i));
}

