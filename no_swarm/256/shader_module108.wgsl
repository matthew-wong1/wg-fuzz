struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_u32(min(~_wgslsmith_div_u32(29264u, u_input.a), u_input.a), u_input.a), select(vec3<bool>(!any(vec3<bool>(true, true, false)), true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), true), true), !all(vec2<bool>(true, true))), all(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)) | !all(vec3<bool>(true, true, true)), abs(20963i));
    var var_1 = Struct_1(15877u, select(var_0.b, !var_0.b, select(vec3<bool>(!var_0.b.x, true, true), !var_0.b, !var_0.b)), true && var_0.c, ~_wgslsmith_clamp_i32(1i, 39555i, -2147483647i));
    var_0 = Struct_1(u_input.b, var_1.b, true && (_wgslsmith_mult_i32(_wgslsmith_clamp_i32(55384i, var_0.d, var_0.d), -2147483647i) <= -var_0.d), ~_wgslsmith_mod_i32(53477i ^ var_0.d, -(~var_1.d)));
    var var_2 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 7458u, var_1.a, var_1.a) | vec4<u32>(1u, u_input.a, 70517u, 76883u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a, 1u, 1u, var_1.a), vec4<u32>(var_1.a, var_0.a, 86245u, 59388u))) & u_input.a, ~var_1.a), select(select(select(!vec3<bool>(var_0.b.x, var_1.b.x, true), select(var_0.b, vec3<bool>(true, false, true), var_0.b), var_0.b), vec3<bool>(-20400i == var_0.d, false, true), var_1.b), vec3<bool>(any(vec3<bool>(true, true, false)), true, all(vec3<bool>(var_0.b.x, false, true))), !select(2100i == var_1.d, var_0.c, !var_0.c)), var_1.c, -1i);
    var_0 = Struct_1(1u, vec3<bool>(var_0.c, all(!select(vec4<bool>(false, var_1.c, var_1.b.x, true), vec4<bool>(var_0.c, true, var_1.b.x, true), true)), any(select(select(vec4<bool>(var_2.c, var_1.c, var_0.b.x, var_1.c), vec4<bool>(false, false, var_1.b.x, var_2.c), vec4<bool>(false, var_0.c, var_1.c, var_2.b.x)), select(vec4<bool>(false, true, false, var_0.b.x), vec4<bool>(var_1.c, true, false, var_2.b.x), var_2.b.x), !vec4<bool>(false, var_0.c, true, var_1.b.x)))), var_0.b.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(min(-8635i, var_2.d), ~var_2.d, _wgslsmith_mult_i32(-2147483647i, var_1.d)), vec3<i32>(i32(-1i) * -1i, _wgslsmith_mod_i32(-2147483647i, var_1.d), abs(1i))));
    return _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_add_u32(var_2.a, var_1.a)), select(~_wgslsmith_clamp_u32(var_2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1256u, 4294967295u, var_1.a, 0u), vec4<u32>(u_input.b, var_1.a, var_2.a, 16215u)), _wgslsmith_sub_u32(50831u, var_0.a)), ~(~(u_input.a & var_1.a)), true));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_1(func_3(), !(!vec3<bool>(true, true, all(vec3<bool>(false, true, true)))), !(!any(vec3<bool>(true, true, true))), 2147483647i);
    var var_1 = Struct_1(~u_input.b, vec3<bool>(var_0.c, var_0.c || any(var_0.b.yy), _wgslsmith_div_i32(0i, ~(-32912i)) == var_0.d), !(!(!var_0.b.x)) == var_0.c, _wgslsmith_mult_i32(-17374i, _wgslsmith_div_i32(i32(-1i) * -26852i, var_0.d)));
    let var_2 = _wgslsmith_mult_vec4_u32(firstLeadingBit(~vec4<u32>(25179u, var_1.a, arg_0, 4294967295u)), (vec4<u32>(0u, 30611u, var_0.a, 3872u) ^ (vec4<u32>(6324u, 4294967295u, 1u, 48402u) >> (vec4<u32>(arg_0, 1u, 2975u, 0u) % vec4<u32>(32u)))) | select(vec4<u32>(48452u, 4294967295u, var_0.a, arg_0), abs(vec4<u32>(13242u, 4294967295u, var_0.a, 4294967295u)), false)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_1.a, 0u, var_0.a), vec4<u32>(arg_0, 86928u, 0u, u_input.b)), 12673u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0), vec2<u32>(0u, 0u)), ~u_input.b) >> (~vec4<u32>(u_input.a, arg_0, u_input.b, arg_0) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(8738u, 4294967295u, 30324u, arg_0), vec4<u32>(abs(arg_0), _wgslsmith_add_u32(var_0.a, 1457u), 4294967295u, u_input.b))) % vec4<u32>(32u));
    var_1 = var_0;
    var_1 = var_0;
    return Struct_1(~4294967295u, !var_0.b, !any(vec4<bool>(true, var_1.d < var_0.d, var_1.b.x, true)), ~(~(-var_0.d >> ((var_0.a ^ 4294967295u) % 32u))));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> u32 {
    let var_0 = -539f;
    let var_1 = !(!vec4<bool>(true, any(vec4<bool>(true, false, false, false)), select(false, var_0 == var_0, select(false, true, true)), true));
    let var_2 = func_2(_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, 0u, u_input.a), vec3<u32>(arg_1, 43509u, arg_1)), vec3<u32>(u_input.a, 12075u, u_input.a) | vec3<u32>(0u, arg_1, arg_1)), ~(vec3<u32>(u_input.a, 4294967295u, u_input.a) & vec3<u32>(arg_1, arg_1, arg_1)))));
    global0 = true;
    var var_3 = Struct_1(0u, var_1.wxx, true, -6876i);
    return var_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    global0 = arg_0.c;
    global0 = !(func_2(arg_0.a).d != 1i);
    global0 = true;
    var var_0 = vec2<f32>(-649f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))));
    let var_1 = arg_0;
    return Struct_1(arg_0.a >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.a, 14670u, var_1.a) >> (vec4<u32>(arg_2.a, 0u, u_input.a, 5508u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(4294967295u, 24383u, arg_0.a, 4294967295u))) % 32u), arg_2.b, arg_2.c, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d, abs(-1i), _wgslsmith_div_i32(-50301i, arg_0.d >> (arg_0.a % 32u))), vec3<i32>(-firstTrailingBit(arg_2.d), var_1.d, arg_2.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-819f, 231f)), u_input.b), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true), true, 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-2217f, -346f, 264f), vec3<f32>(375f, 858f, -246f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1168f, 949f, -1000f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-698f, -1391f, -805f), vec3<f32>(-1302f, 579f, -356f), false))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1132f, -1035f, 1893f)))), Struct_1(~(~(~u_input.a)), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true)), 2147483647i));
    var var_1 = var_0;
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1651f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1110f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-507f * -599f) + 963f) + _wgslsmith_f_op_f32(f32(-1f) * -269f)))) <= _wgslsmith_f_op_f32(ceil(-660f));
    let var_2 = vec2<i32>(0i, _wgslsmith_mult_i32(func_4(func_2(var_0.a), vec3<f32>(2258f, 1028f, 668f), Struct_1(81864u, var_1.b, true, 24997i)).d, min(-var_0.d, i32(-1i) * -31848i))) >> (abs(~firstTrailingBit(max(vec2<u32>(u_input.a, 23381u), vec2<u32>(var_1.a, 20078u)))) % vec2<u32>(32u));
    var_1 = var_0;
    var var_3 = func_2(var_1.a);
    let var_4 = abs(max(29067u, min(~(u_input.b ^ 3827u), var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(-113f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -506f), _wgslsmith_f_op_f32(abs(1000f))))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(815f, 2535f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -373f)))));
}

