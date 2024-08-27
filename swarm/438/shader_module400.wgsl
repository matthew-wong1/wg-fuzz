struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1014f, 1517f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(-1641f);
    let var_1 = 1u;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 652f) - vec2<f32>(global0.x, var_0.a)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a, var_0.a), vec2<f32>(-119f, var_0.a))), any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1217f, global0.x) - vec2<f32>(global0.x, -567f)))))));
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_div_u32(min(62132u, u_input.a) & (var_1 << (8489u % 32u)), ~countOneBits(var_1)) | var_1, 1u);
    var_0 = Struct_1(global0.x);
    return select(select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))), select(select(vec3<bool>(true, all(vec2<bool>(true, true)), true), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), var_2 < var_2), vec3<bool>(true, any(vec3<bool>(true, false, false)), true), !all(vec4<bool>(false, false, true, true))), true | select(any(vec2<bool>(false, true)) & false, true, false && select(true, true, true)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<f32> {
    var var_0 = !func_3();
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1.a)), _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 605f) + vec2<f32>(-1559f, global0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, -965f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, _wgslsmith_f_op_f32(sign(global0.x))), vec2<f32>(-549f, _wgslsmith_f_op_f32(abs(arg_1.a))))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(365f, -595f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, arg_1.a) - vec2<f32>(global0.x, 1638f)))))));
    let var_1 = vec4<bool>(false | (var_0.x & all(func_3())), arg_0 != _wgslsmith_div_u32(firstLeadingBit(firstLeadingBit(2319u)), ~u_input.a), any(select(vec3<bool>(!var_0.x, func_3().x, all(vec3<bool>(true, var_0.x, var_0.x))), !vec3<bool>(var_0.x, var_0.x, false), var_0.x)), arg_2.x == _wgslsmith_div_i32(reverseBits(366i), _wgslsmith_mod_i32(select(2147483647i, 2147483647i, var_0.x), -17361i)));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(37190i, arg_2.x, _wgslsmith_dot_vec2_i32(arg_2, ~arg_2), -_wgslsmith_mult_i32(firstTrailingBit(arg_2.x), arg_2.x)), vec4<i32>(_wgslsmith_div_i32(arg_2.x, abs(0i)), arg_2.x, _wgslsmith_div_i32(select(1i, ~(-16076i), !var_0.x), ~select(arg_2.x, arg_2.x, true)), abs(-(i32(-1i) * -1i))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0.x, -799f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-825f, global0.x, global0.x))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32) -> Struct_1 {
    let var_0 = (_wgslsmith_div_i32(firstTrailingBit(abs(-1i)), _wgslsmith_mod_i32(1i, 1i)) >> (u_input.a % 32u)) | (-49348i ^ firstTrailingBit(max(-59492i, 2147483647i << (u_input.a % 32u))));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_2 = max(vec3<u32>(max(~51832u ^ ~arg_1, ~(~u_input.a)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(8813u, 1u)), select(vec2<u32>(8899u, arg_1), vec2<u32>(u_input.a, 1u), vec2<bool>(false, false))), 4294967295u), u_input.a), min(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_1, 41975u) & ~vec3<u32>(arg_1, 15868u, arg_1), ~vec3<u32>(u_input.a, u_input.a, 46185u) << (~vec3<u32>(u_input.a, u_input.a, arg_1) % vec3<u32>(32u)), vec3<u32>(arg_1, u_input.a | 20527u, arg_1)), select(abs(vec3<u32>(u_input.a, 4294967295u, arg_1)) ^ ~vec3<u32>(87211u, 1u, u_input.a), ~(~vec3<u32>(70944u, 40669u, 54352u)), vec3<bool>(true, true, 54222i == var_0))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -431f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + global0.x))));
    global0 = arg_0.yz;
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(select(global0.x, arg_0.x, false))))))));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<f32>) -> vec3<u32> {
    var var_0 = u_input.a;
    global0 = _wgslsmith_f_op_vec2_f32(trunc(arg_2.xy));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2260f) * arg_2.x), -1349f));
    global0 = arg_1.xx;
    var var_2 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.yxx) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(452f, arg_1.x, arg_1.x))))), _wgslsmith_f_op_vec3_f32(func_2(1u, Struct_1(global0.x), _wgslsmith_mult_vec2_i32(~vec2<i32>(24320i, 68259i), vec2<i32>(1i, 24368i))))), ~u_input.a);
    return vec3<u32>(53307u, 0u, u_input.a) >> (abs(~vec3<u32>(~17858u, ~u_input.a, ~32003u)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(~firstTrailingBit(1u | u_input.a), ~(~(u_input.a >> (21725u % 32u))), firstTrailingBit(_wgslsmith_mult_u32(19552u, 1u)));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(599f, global0.x) - vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1496f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, global0.x)), -1045f))));
    var_0 = ~select(~min(vec3<u32>(var_0.x, 38936u, 1u), vec3<u32>(var_0.x, 25626u, 1u)), ~func_1(true, vec4<f32>(692f, 118f, 1389f, global0.x), vec4<f32>(1066f, 988f, global0.x, global0.x)), vec3<bool>(any(vec3<bool>(false, true, true)), true, true)) << (select(select(~vec3<u32>(4294967295u, var_0.x, u_input.a), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, u_input.a, u_input.a), vec3<u32>(60708u, u_input.a, var_0.x))), any(vec3<bool>(true, true, true))), ~select(vec3<u32>(20526u, u_input.a, 38676u), vec3<u32>(6101u, var_0.x, u_input.a), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), false) % vec3<u32>(32u));
    var var_1 = 867f;
    var_1 = global0.x;
    var var_2 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -979f, global0.x), vec3<f32>(global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(global0.x, global0.x, global0.x), vec3<bool>(true, false, false))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(global0.x, global0.x, 1145f))))) - vec3<f32>(global0.x, global0.x, global0.x)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, 0i, 65i, -1i)) << (~vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(28282i, -8442i, 2147483647i, 1i))), 9364i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -1814f)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, var_2.a) - vec2<f32>(global0.x, -154f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.a, 1601f), vec2<f32>(1000f, global0.x), false)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -651f), vec2<f32>(var_2.a, 301f), vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(877f, var_2.a) * vec2<f32>(1485f, 1000f)) * vec2<f32>(1f, 1f)))), _wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_mod_u32(~u_input.a, var_0.x)).a));
}

