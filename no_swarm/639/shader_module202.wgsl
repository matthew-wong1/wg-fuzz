struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = arg_3.d.a.yz ^ global0.a.wx;
    let var_1 = Struct_5(arg_3.e.zx | vec2<i32>(_wgslsmith_clamp_i32(u_input.a, reverseBits(arg_3.e.x), arg_3.c), (-2147483647i << (arg_3.d.a.x % 32u)) >> (var_0.x % 32u)), abs(1u));
    var var_2 = 222f;
    let var_3 = arg_1.yxx;
    var var_4 = select(arg_3.e.zzy, -(~firstLeadingBit(arg_3.e.ywx)) ^ (~vec3<i32>(var_1.a.x, var_1.a.x, var_1.a.x) >> (global0.a.wxy % vec3<u32>(32u))), arg_1.yyy);
    return vec4<i32>(-2147483647i, arg_3.e.x, _wgslsmith_sub_i32(-11835i, -(-18176i >> (global0.a.x % 32u)) << (_wgslsmith_div_u32(global0.a.x, 41608u) % 32u)), _wgslsmith_mod_i32(0i, _wgslsmith_div_i32(26579i, var_1.a.x)) ^ ~1i);
}

fn func_2() -> vec4<bool> {
    let var_0 = abs(global0.a.yy);
    var var_1 = 1f;
    let var_2 = global0.a.x;
    let var_3 = vec2<bool>(!any(vec2<bool>(37014u >= global0.a.x, false)), select(all(select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), true)), !(~var_0.x == ~global0.a.x), true));
    var var_4 = Struct_4(Struct_2(209f, ~_wgslsmith_div_vec2_u32(vec2<u32>(global0.a.x, var_0.x), firstTrailingBit(vec2<u32>(4294967295u, global0.a.x))), 3120i | select(-1i, -u_input.a, true & var_3.x), Struct_1(global0.a), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), func_3(vec4<f32>(1012f, 1364f, -780f, 1789f), vec4<bool>(false, true, var_3.x, false), 1335f, Struct_2(163f, var_0, u_input.a, Struct_1(global0.a), vec4<i32>(u_input.a, -10425i, 0i, 0i))))), Struct_1(select(firstTrailingBit(global0.a), _wgslsmith_mod_vec4_u32(~vec4<u32>(54043u, global0.a.x, 8035u, 48319u), global0.a), !(!vec4<bool>(var_3.x, true, var_3.x, var_3.x)))));
    return vec4<bool>(1225f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_4.a.a)) * -346f), true, var_3.x, !(!(_wgslsmith_f_op_f32(-var_4.a.a) >= 923f)));
}

fn func_1(arg_0: Struct_5, arg_1: f32) -> f32 {
    var var_0 = select(!(!vec4<bool>(true, true, true, select(true, false, true))), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true), true), !func_2(), !func_2()), select(true, any(vec4<bool>(true, true, all(vec3<bool>(false, true, false)), any(vec3<bool>(true, true, false)))), false));
    var var_1 = Struct_2(arg_1, global0.a.xz, firstLeadingBit(min(_wgslsmith_div_i32(1i, u_input.a), arg_0.a.x)), Struct_1(vec4<u32>(arg_0.b, ~65084u, ~arg_0.b ^ 77100u, ~arg_0.b)), ~vec4<i32>(u_input.a, 18877i, -arg_0.a.x, reverseBits(u_input.a)));
    var var_2 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-var_1.a), ~reverseBits(vec2<u32>(var_1.d.a.x, var_1.d.a.x)), reverseBits(u_input.a), Struct_1(vec4<u32>(countOneBits(1478u), countOneBits(global0.a.x), ~global0.a.x, ~var_1.d.a.x)), vec4<i32>(-min(-15267i, -36470i), firstLeadingBit(arg_0.a.x), -u_input.a, u_input.a)), Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(global0.a, var_1.d.a), ~vec4<u32>(arg_0.b, 39772u, 4294967295u, arg_0.b))));
    var var_3 = Struct_4(var_2.a, Struct_1(global0.a));
    var_0 = select(!func_2(), !vec4<bool>(false, !all(var_0.xz), any(!var_0.wxx), !var_0.x), select(!func_2(), select(vec4<bool>(func_2().x, true, var_0.x, !var_0.x), func_2(), select(func_2(), select(vec4<bool>(false, true, true, false), vec4<bool>(var_0.x, var_0.x, false, true), var_0.x), select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, false, var_0.x, var_0.x), true))), _wgslsmith_clamp_i32(14351i, var_3.a.e.x, select(arg_0.a.x, 0i, var_0.x)) != abs(_wgslsmith_clamp_i32(var_3.a.e.x, 31143i, 0i))));
    return _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(1000f + -466f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.a, u_input.a);
    let var_1 = _wgslsmith_sub_u32(global0.a.x, 4294967295u);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_5(min(vec2<i32>(1i, u_input.a), vec2<i32>(10408i, var_0.x)), _wgslsmith_mod_u32(1u, 88210u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-960f, 1821f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(883f, 2242f) * _wgslsmith_f_op_f32(1756f + -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1296f)))) - 644f);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(432f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-177f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-538f + 1000f))))) * _wgslsmith_f_op_f32(floor(473f)));
    let var_2 = any(!func_2());
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-788f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1443f - 281f) * _wgslsmith_f_op_f32(trunc(1659f))), -1157f)), global0.a.xx, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, 0i), ~(~vec2<i32>(var_0.x, u_input.a))), firstTrailingBit(~(var_0.x & 1i))), Struct_1(global0.a), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a, var_0.x, -1901i), ~_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(-17013i, var_0.x, var_0.x, 24276i)), vec4<i32>(var_0.x, var_0.x, 0i, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~global0.a.x), 49966u);
}

