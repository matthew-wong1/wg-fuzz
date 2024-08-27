struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: bool) -> bool {
    var var_0 = abs(arg_0);
    var_0 = arg_0;
    var_0 = _wgslsmith_div_vec3_i32(abs(vec3<i32>(var_0.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(36187u, 4294967295u, u_input.a.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) % 32u), arg_0.x, -arg_0.x)), arg_0);
    var_0 = _wgslsmith_div_vec3_i32(firstLeadingBit(arg_0), vec3<i32>(firstLeadingBit(reverseBits(arg_0.x)), 1i, _wgslsmith_mod_i32(var_0.x, 14940i) >> (~countOneBits(56703u) % 32u)));
    var var_1 = arg_2 | (!all(select(vec3<bool>(true, true, arg_2), vec3<bool>(false, arg_1, true), vec3<bool>(false, true, true))) & true);
    return true;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(!vec4<bool>(_wgslsmith_f_op_f32(-966f - 214f) >= _wgslsmith_f_op_f32(select(-568f, 1119f, true)), true, true, true), 1i);
    var_0 = Struct_1(vec4<bool>((var_0.a.x & var_0.a.x) == !var_0.a.x, !(any(vec3<bool>(false, var_0.a.x, var_0.a.x)) == true), var_0.a.x, all(select(vec2<bool>(true, true), var_0.a.xz, var_0.a.x))), reverseBits(min(_wgslsmith_add_i32(2147483647i, -1i) >> (u_input.b.x % 32u), 1i)));
    let var_1 = Struct_2(!vec4<bool>(!(u_input.a.x >= 56572u), true | !var_0.a.x, func_3(select(vec3<i32>(-1i, 2147483647i, -9282i), vec3<i32>(22274i, var_0.b, var_0.b), var_0.a.x), true, !var_0.a.x), all(vec3<bool>(true, false, var_0.a.x)) | true), Struct_1(select(var_0.a, !(!var_0.a), !all(var_0.a.wzy)), _wgslsmith_clamp_i32(1i, var_0.b, 0i)), select(!var_0.a, vec4<bool>(true, true, true | !var_0.a.x, !(var_0.b < var_0.b)), var_0.a.x), vec4<bool>(true, any(!vec4<bool>(var_0.a.x, false, true, var_0.a.x)), true, select(false, !var_0.a.x, all(select(var_0.a, var_0.a, var_0.a)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-932f, 1000f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(735f, 2339f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-358f, -1938f), vec2<f32>(1639f, 582f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1469f, -2403f)))))));
    var_0 = var_1.b;
    var_0 = var_1.b;
    return var_1.b;
}

fn func_1(arg_0: vec2<f32>) -> bool {
    let var_0 = ~_wgslsmith_sub_u32(5809u, ~u_input.a.x);
    var var_1 = Struct_2(vec4<bool>(true, true, true, true), func_2((~vec4<u32>(u_input.b.x, var_0, 4294967295u, u_input.a.x) ^ vec4<u32>(var_0, 4294967295u, 4294967295u, 1u)) | ~(~vec4<u32>(30013u, 0u, 20335u, 0u))), vec4<bool>(!func_3(vec3<i32>(1i, 1i, 1i), true, true), !any(vec2<bool>(true, true)), select(true, true, true), !(_wgslsmith_f_op_f32(arg_0.x - 783f) <= _wgslsmith_f_op_f32(1850f + -760f))), !vec4<bool>(true, all(vec2<bool>(true, true)), false, true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)))), 466f));
    var var_2 = Struct_3(Struct_2(var_1.d, func_2(vec4<u32>(1u, 2894u, var_0, u_input.a.x) | vec4<u32>(9791u, u_input.b.x, 4294967295u, 4294967295u)), select(!func_2(vec4<u32>(5802u, var_0, u_input.b.x, u_input.b.x)).a, var_1.d, !(!var_1.d.x)), vec4<bool>(!any(var_1.d), !(!var_1.a.x), var_1.d.x, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 1700f)) - vec2<f32>(575f, arg_0.x)))));
    return all(var_1.b.a.zyz);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    let var_0 = select(select(arg_1.b.a.yxw, !(!(!arg_1.b.a.wxw)), !vec3<bool>(false, arg_1.d.x && false, true)), !arg_1.b.a.wwy, !vec3<bool>(arg_0, !func_2(vec4<u32>(102273u, 13884u, 28699u, 1u)).a.x, u_input.a.x <= (u_input.a.x ^ u_input.a.x)));
    var var_1 = _wgslsmith_f_op_f32(sign(1f));
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_1.e.x, -325f)), arg_1.e.x, arg_0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e.x * 922f))))), ~_wgslsmith_clamp_u32(~u_input.a.x, 1u, u_input.a.x >> (u_input.b.x % 32u)) == u_input.a.x));
    let var_2 = func_2(vec4<u32>(~0u, _wgslsmith_sub_u32(max(14748u, u_input.b.x), u_input.b.x), ~1u, ~abs(0u)));
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.e.x), -260f, func_3(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.b.b, -2147483647i), vec2<i32>(-9047i, arg_1.b.b), vec2<i32>(2147483647i, arg_1.b.b)), -vec2<i32>(var_2.b, 11240i)), ~(-arg_1.b.b), -firstTrailingBit(arg_1.b.b)), !func_2(vec4<u32>(108313u, 4597u, u_input.a.x, u_input.b.x) | vec4<u32>(0u, 0u, u_input.a.x, 4294967295u)).a.x, var_0.x)));
    return Struct_1(vec4<bool>(true, true, true, func_2(vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, 1u), _wgslsmith_mod_u32(u_input.a.x, 40891u), u_input.a.x, ~113635u)).a.x), ~(-980i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!(!(!func_1(vec2<f32>(-434f, -890f)))), Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec2<bool>(false, false)), u_input.b.x >= 63238u), vec4<bool>(false, true, false, true)), func_2(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, 20557u, 1u, u_input.b.x), vec4<u32>(69270u, 83741u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.a.x, 0u, u_input.b.x, u_input.b.x))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-224f, 425f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1086f, 1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(3038f, 1369f))), true))));
    let var_1 = 4294967295u;
    let var_2 = vec2<f32>(466f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -843f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_0 = Struct_1(func_4(!var_0.a.x, Struct_2(var_0.a, Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), -26282i), func_4(true, Struct_2(vec4<bool>(true, var_0.a.x, var_0.a.x, true), Struct_1(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), var_0.b), var_0.a, vec4<bool>(true, true, var_0.a.x, var_0.a.x), var_2)).a, var_0.a, _wgslsmith_f_op_vec2_f32(floor(var_2)))).a, -1i >> (_wgslsmith_mod_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 2036u), vec2<u32>(u_input.b.x, 4294967295u)), 25543u, var_0.a.x && var_0.a.x), ~select(u_input.b.x, 12057u, true)) % 32u));
    var var_3 = Struct_3(Struct_2(func_4(var_0.a.x, Struct_2(vec4<bool>(false, var_0.a.x, false, var_0.a.x), func_4(var_0.a.x, Struct_2(vec4<bool>(var_0.a.x, var_0.a.x, true, true), Struct_1(var_0.a, var_0.b), vec4<bool>(var_0.a.x, var_0.a.x, true, false), vec4<bool>(false, true, false, true), vec2<f32>(var_2.x, 1000f))), vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.a.x, false, false, true), vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), var_0.a), vec2<f32>(var_2.x, var_2.x))).a, Struct_1(vec4<bool>(false, true, select(var_0.a.x, true, false), true), ~(~var_0.b)), vec4<bool>(firstLeadingBit(var_0.b) <= _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, 21844i), vec2<i32>(2147483647i, 2147483647i)), !func_1(var_2), var_2.x < var_2.x, true), var_0.a, _wgslsmith_f_op_vec2_f32(-var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_3.a.e.x, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(ceil(-532f))), _wgslsmith_f_op_f32(max(var_3.a.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-130f - -306f), _wgslsmith_f_op_f32(-var_3.a.e.x)))), _wgslsmith_f_op_f32(1800f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.a.e.x + var_3.a.e.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.a.e.x, -339f, -1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1232f, 1139f, var_2.x) * vec3<f32>(var_2.x, -278f, var_2.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -849f, var_2.x))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-359f, var_2.x, var_3.a.e.x))))), firstTrailingBit(vec4<u32>(var_1, reverseBits(~u_input.a.x), ~countOneBits(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 4294967295u, 0u, var_1), select(vec4<u32>(var_1, var_1, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, var_1, var_1, u_input.b.x), false)))), _wgslsmith_f_op_f32(1165f - -1783f), firstLeadingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(var_1, var_1), ~u_input.a)) << (~countOneBits(u_input.a & u_input.b) % vec2<u32>(32u)));
}

