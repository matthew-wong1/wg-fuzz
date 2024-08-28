struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_3,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_4) -> vec3<bool> {
    let var_0 = u_input.d.zxx;
    return vec3<bool>(true, all(arg_1), arg_2.c.e.a.b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: u32) -> f32 {
    var var_0 = !select(!(!(!vec4<bool>(false, false, arg_0.c.b, arg_0.d))), select(vec4<bool>(true, true, !arg_1.c.b, !arg_1.e.a.b), vec4<bool>(true, false, all(vec3<bool>(false, true, arg_1.d)), arg_0.c.b), vec4<bool>(select(true, arg_1.c.b, arg_1.e.a.b), arg_0.d, true, true)), arg_1.c.b);
    var_0 = !vec4<bool>(_wgslsmith_f_op_f32(-arg_0.c.c) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(597f, arg_1.c.c))), arg_0.d, var_0.x & !arg_0.d, u_input.c.x > firstTrailingBit(arg_1.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-618f, -335f, arg_0.e.a.c, -456f) - vec4<f32>(arg_1.c.d, arg_1.c.d, 252f, 1148f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(775f, arg_1.e.a.d, arg_0.c.c, -115f) * vec4<f32>(-446f, arg_0.c.c, 1592f, arg_1.e.a.c)))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1366f)))), _wgslsmith_f_op_f32(min(arg_0.e.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-706f)) * -1732f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(478f + -1003f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.c.c))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(468f)), arg_0.e.a.c))), abs(i32(-1i) * -20636i) > _wgslsmith_div_i32(_wgslsmith_mult_i32(arg_0.c.a, ~2147483647i), firstLeadingBit(u_input.a.x) ^ (arg_1.c.a >> (4294967295u % 32u)))));
    var_0 = vec4<bool>(var_0.x, true, arg_1.d, !(!var_0.x));
    var var_2 = select(!vec2<bool>(all(!vec4<bool>(arg_1.c.b, true, true, false)), var_0.x), select(var_0.zz, vec2<bool>(all(!var_0.yy), func_1(Struct_1(-2147483647i, false, var_1.x, arg_1.c.c), var_0.zy, Struct_4(arg_1.c.c, -1369f, Struct_3(arg_3, vec2<u32>(arg_3, arg_0.b.x), arg_0.c, true, Struct_2(arg_0.e.a)), arg_2)).x | !var_0.x), select(func_1(arg_1.c, vec2<bool>(true, true), Struct_4(var_1.x, arg_1.e.a.c, arg_0, u_input.a.wzx)).x, false, true)), vec2<bool>(!all(select(vec4<bool>(var_0.x, arg_1.d, false, false), vec4<bool>(var_0.x, false, true, true), vec4<bool>(true, var_0.x, arg_1.e.a.b, var_0.x))), all(vec4<bool>(true, any(vec2<bool>(arg_1.d, arg_0.c.b)), !arg_1.c.b, false))));
    return -172f;
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(u_input.e.x, vec2<u32>(0u, u_input.c.x), Struct_1(u_input.b.x, true, -296f, 208f), false, Struct_2(Struct_1(-6855i, false, -678f, -170f))), Struct_3(1u, u_input.c.xy, Struct_1(u_input.b.x, false, 1327f, -910f), false, Struct_2(Struct_1(u_input.b.x, true, 1443f, -933f))), vec3<i32>(u_input.a.x, u_input.a.x, -11773i), 57681u)))) + -524f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -684f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(456f, -440f)) - -751f)), _wgslsmith_f_op_f32(ceil(252f)), true)), Struct_3(u_input.e.x, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(0u, u_input.e.x)) << (vec2<u32>(~28272u, u_input.e.x & u_input.e.x) % vec2<u32>(32u)), Struct_1(u_input.b.x, false, _wgslsmith_f_op_f32(select(-718f, _wgslsmith_div_f32(623f, -2037f), true)), -375f), true, Struct_2(Struct_1(_wgslsmith_mod_i32(0i, -2147483647i), true, -1000f, _wgslsmith_f_op_f32(276f * 496f)))), max(abs(u_input.b.yww), _wgslsmith_mult_vec3_i32(-u_input.a.zyz, _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.wxw, vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x), vec3<i32>(6623i, 1i, u_input.b.x)), u_input.b.wzz))));
    let var_1 = !(!(((var_0.b >= -651f) & !var_0.c.e.a.b) & true));
    let var_2 = Struct_1(_wgslsmith_clamp_i32(-u_input.b.x, -24996i, reverseBits(-1i)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -905f))), _wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_dot_vec2_u32(var_0.c.b, countOneBits(vec2<u32>(21136u, 17391u))), vec2<u32>(max(u_input.c.x, u_input.e.x), var_0.c.a << (var_0.c.b.x % 32u)), var_0.c.c, abs(-1i) < _wgslsmith_mod_i32(-13706i, var_0.c.e.a.a), var_0.c.e), Struct_3(86021u, ~vec2<u32>(u_input.e.x, var_0.c.b.x), Struct_1(0i >> (0u % 32u), var_1, _wgslsmith_f_op_f32(abs(var_0.b)), _wgslsmith_f_op_f32(-var_0.c.e.a.d)), ~u_input.e.x >= u_input.e.x, Struct_2(var_0.c.e.a)), (vec3<i32>(-1i) * -var_0.d) >> ((~u_input.d.wyw & _wgslsmith_mod_vec3_u32(u_input.c, u_input.c)) % vec3<u32>(32u)), u_input.c.x)));
    var var_3 = var_0;
    var_3 = var_0;
    return select(select(vec3<bool>(!(305f <= var_2.d), all(vec2<bool>(true, true)) & true, any(func_1(Struct_1(var_0.c.e.a.a, true, 525f, -365f), vec2<bool>(false, var_0.c.c.b), Struct_4(-1806f, var_2.c, var_0.c, vec3<i32>(var_2.a, u_input.b.x, -2147483647i))).zy)), vec3<bool>((u_input.b.x << (4294967295u % 32u)) >= -2147483647i, all(!vec2<bool>(var_0.c.d, true)), var_3.c.c.b), !vec3<bool>(var_3.c.e.a.b, var_1, var_1)), vec3<bool>(false, var_0.c.e.a.b, all(!(!vec2<bool>(var_1, false)))), vec3<bool>(true, (firstTrailingBit(var_2.a) ^ firstTrailingBit(0i)) > var_3.c.e.a.a, var_3.c.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    var var_1 = select(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), all(vec4<bool>(true, true, false, false))), true), !select(select(func_1(Struct_1(1i, true, -1400f, 2250f), vec2<bool>(false, true), Struct_4(510f, -786f, Struct_3(28326u, vec2<u32>(u_input.d.x, u_input.e.x), Struct_1(-10503i, true, -1244f, -374f), true, Struct_2(Struct_1(2147483647i, false, 1197f, -198f))), u_input.a.wzx)), vec3<bool>(true, true, true), any(vec3<bool>(true, true, false))), vec3<bool>(true, u_input.b.x < -23738i, true), vec3<bool>(true, 23843i >= u_input.a.x, false)), func_2());
    var var_2 = u_input.b;
    var_1 = func_2();
    var_0 = abs(firstTrailingBit(~1u));
    var var_3 = vec2<u32>(u_input.c.x, u_input.d.x);
    let var_4 = u_input.c >> (vec3<u32>(~u_input.c.x, ~1910u, min(countOneBits(0u), ~4294967295u) >> (_wgslsmith_add_u32(var_3.x, _wgslsmith_add_u32(var_3.x, 4294967295u)) % 32u)) % vec3<u32>(32u));
    var_3 = (~(_wgslsmith_mod_vec2_u32(var_4.xy, u_input.e) & ~vec2<u32>(u_input.d.x, u_input.e.x)) >> (vec2<u32>(abs(1u >> (var_3.x % 32u)), _wgslsmith_div_u32(u_input.c.x, var_3.x) << (1u % 32u)) % vec2<u32>(32u))) & _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 23373u), vec2<u32>(_wgslsmith_add_u32(var_3.x, 79693u), _wgslsmith_div_u32(var_3.x, var_3.x))), ~u_input.d.zz);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, 12925u, 27932u, var_4.x), u_input.d) | ~4294967295u) % 32u), -(i32(-1i) * -28424i) >> (1u % 32u), -23115i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~select(vec2<i32>(26040i, var_2.x), vec2<i32>(u_input.a.x, u_input.a.x), false), u_input.a.wx), u_input.b.x));
}

