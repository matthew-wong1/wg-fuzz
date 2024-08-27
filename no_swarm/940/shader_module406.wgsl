struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(abs(_wgslsmith_clamp_vec3_i32(arg_1.a, _wgslsmith_div_vec3_i32(vec3<i32>(1i, -2147483647i, arg_0.a.x), arg_0.a) | arg_1.a, -(vec3<i32>(arg_3.a.x, arg_1.a.x, -3703i) | arg_1.a))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-181f, -906f, 852f, 564f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-985f, -602f, 1525f, -240f) * vec4<f32>(1270f, -603f, -524f, 1563f))) + vec4<f32>(-1790f, -196f, -988f, -1930f)))));
    let var_2 = u_input.d;
    var_0 = Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(arg_1.a.yz, arg_3.a.zy), _wgslsmith_dot_vec3_i32(arg_1.a, var_0.a), 1i), arg_1.a), firstTrailingBit(~(-25847i)) ^ firstTrailingBit(var_0.a.x), 1i));
    var_0 = Struct_1(vec3<i32>(-1i, arg_0.a.x, _wgslsmith_sub_i32(-2147483647i | arg_3.a.x, ~arg_1.a.x) << (~u_input.d % 32u)));
    return _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1258f))) + -1000f)));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(~(-vec3<i32>(firstLeadingBit(60239i), _wgslsmith_mod_i32(2147483647i, 1i), 0i)));
    let var_1 = Struct_1(var_0.a);
    var_0 = var_1;
    var_0 = Struct_1(var_1.a);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -690f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -889f), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(var_1.a.x, -14685i, var_1.a.x)), Struct_1(vec3<i32>(-1i, 1i, var_1.a.x)), false, var_1))))), -136f);
    return ~(~u_input.d);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~arg_3.a.x;
    let var_1 = vec4<bool>(arg_3.a.x <= _wgslsmith_sub_i32(var_0, arg_3.a.x), false, true, true);
    let var_2 = ~u_input.b.xz | ~(firstTrailingBit(~vec2<u32>(u_input.a, 48268u)) >> (u_input.b.xx % vec2<u32>(32u)));
    var var_3 = arg_1;
    var var_4 = 1i;
    return Struct_1(_wgslsmith_clamp_vec3_i32(~vec3<i32>(var_0, max(-1i, arg_1.a.x), _wgslsmith_mult_i32(-54555i, var_3.a.x)), ~reverseBits(_wgslsmith_div_vec3_i32(arg_3.a, var_3.a)), var_3.a));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> Struct_1 {
    let var_0 = func_4(func_2(), Struct_1(vec3<i32>(-40292i, -arg_0.x, max(-1762i, -2147483647i))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, 9309u < u_input.a)), Struct_1(firstLeadingBit(abs(~vec3<i32>(85235i, 0i, arg_0.x)))));
    let var_1 = 35528u;
    var var_2 = func_4(var_1, Struct_1(_wgslsmith_mod_vec3_i32(~(-vec3<i32>(var_0.a.x, arg_0.x, 26440i)), vec3<i32>(firstLeadingBit(var_0.a.x), -arg_0.x, -1i))), select(vec3<bool>(true, true, true), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), vec3<bool>(true, true & all(vec4<bool>(true, true, true, true)), true)), var_0);
    var_2 = var_0;
    var var_3 = 1866f;
    return Struct_1(var_2.a >> (select(firstTrailingBit(~u_input.b), vec3<u32>(33616u, _wgslsmith_clamp_u32(u_input.a, 1u, u_input.c), _wgslsmith_mult_u32(33484u, 0u)), select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), true)) % vec3<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: u32) -> Struct_1 {
    let var_0 = countOneBits(func_1(vec2<i32>(arg_0.a.x, ~(-1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1)))).a.zx);
    var var_1 = func_4(u_input.c >> (_wgslsmith_add_u32((36314u & arg_2) << (_wgslsmith_clamp_u32(arg_2, 4294967295u, arg_3) % 32u), ~(~20780u)) % 32u), Struct_1(arg_0.a), vec3<bool>(true, all(vec3<bool>(true, true, true)), !all(select(vec2<bool>(true, true), vec2<bool>(false, true), false))), arg_0);
    let var_2 = select(!vec3<bool>(_wgslsmith_mod_i32(var_0.x, 2147483647i) != reverseBits(2147483647i), (-1i < var_0.x) || true, false), select(select(select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, false)), false, any(vec3<bool>(false, true, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), all(vec3<bool>(true, false, arg_1 != 292f))), !any(vec4<bool>(true, true, true, true)));
    let var_3 = var_2.yz;
    var var_4 = !select(!var_2, !(!(!var_2)), !var_2);
    return Struct_1(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(vec2<i32>(1i, 1i), _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-611f, 2387f)) + -298f)), 0u, 4294967295u);
    var var_1 = ~(~(~u_input.b));
    var var_2 = func_5(Struct_1(_wgslsmith_sub_vec3_i32(firstLeadingBit(-var_0.a), _wgslsmith_mod_vec3_i32(-var_0.a, abs(var_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1081f))) * _wgslsmith_f_op_f32(f32(-1f) * -335f))), min(0u, 4294967295u), 4294967295u);
    let var_3 = -firstLeadingBit(-60127i);
    var var_4 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~(~45806u), 4294967295u >> (var_1.x % 32u)), vec2<u32>(u_input.c, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(var_1.x, 39985u), 42055i, vec3<u32>(~(~var_1.x), _wgslsmith_mod_u32(firstLeadingBit(var_1.x) << (var_1.x % 32u), 31155u), max(min(1u, var_1.x & var_1.x), ~u_input.b.x)));
}

