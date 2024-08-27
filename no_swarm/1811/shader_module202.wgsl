struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool, arg_3: bool) -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(183f - arg_0.a.x), _wgslsmith_f_op_f32(global0.x * arg_0.a.x)))))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(769f, _wgslsmith_f_op_f32(-global0.x), 912f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(456f, 630f, -893f), vec3<f32>(-725f, arg_0.a.x, arg_0.a.x))), arg_3)));
    var var_0 = 20411u;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(1686f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, arg_0.a.x)) + _wgslsmith_f_op_f32(trunc(-1438f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - global0.x))))), arg_0.a.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 218f)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1416f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a.x), -661f))))));
    return select(vec4<bool>(any(select(vec3<bool>(true, false, true), !vec3<bool>(true, true, arg_3), select(vec3<bool>(arg_3, arg_2, arg_3), vec3<bool>(arg_3, arg_2, arg_2), vec3<bool>(arg_2, false, arg_3)))), true, 9656u < u_input.a, !(!any(vec4<bool>(true, false, arg_3, true)))), select(vec4<bool>(all(vec2<bool>(true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, arg_3), true)), !arg_3, select(true, true, false)), !(!vec4<bool>(false, false, false, arg_2)), select(vec4<bool>(true, all(vec3<bool>(true, false, false)), true, arg_2), !vec4<bool>(true, false, arg_3, arg_2), select(vec4<bool>(arg_3, arg_2, arg_3, arg_3), select(vec4<bool>(true, true, arg_3, arg_3), vec4<bool>(arg_3, true, false, arg_2), vec4<bool>(arg_2, false, true, false)), vec4<bool>(arg_3, arg_2, true, false)))), 665f < var_2);
}

fn func_2(arg_0: vec3<f32>) -> vec3<u32> {
    let var_0 = !(!select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true), !func_3(Struct_1(vec2<f32>(1646f, 755f)), vec2<i32>(-14963i, -2147483647i), true, false), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(global0.xz * vec2<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - 792f), -626f))));
    var_1 = Struct_1(global0.xx);
    return min(~_wgslsmith_clamp_vec3_u32(vec3<u32>(28730u, 84975u, u_input.a) >> (vec3<u32>(u_input.a, 86704u, 1u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 22900u, u_input.a), vec3<u32>(1u, 4294967295u, 55320u)), vec3<u32>(1u, u_input.a, 0u)) ^ select(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u))), abs(firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 0u))), !vec3<bool>(false, var_0.x, false)), ~countOneBits(~vec3<u32>(0u, u_input.a, 13832u)) & ~select(~vec3<u32>(3673u, 1u, 70909u), vec3<u32>(u_input.a, u_input.a, u_input.a), u_input.a <= u_input.a));
}

fn func_1() -> Struct_2 {
    let var_0 = 1i;
    let var_1 = _wgslsmith_add_vec3_u32(min(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(9864u, 0u, 1u), vec3<u32>(u_input.a, u_input.a, u_input.a))), func_2(vec3<f32>(global0.x, -554f, global0.x)) | _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 48173u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))) ^ ~(~_wgslsmith_add_vec3_u32(vec3<u32>(7180u, 4294967295u, 26234u), vec3<u32>(u_input.a, 32907u, u_input.a))), vec3<u32>(u_input.a, 20008u, ~(~u_input.a)));
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 238f, -863f) - vec3<f32>(global0.x, global0.x, global0.x)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-440f, -355f, global0.x) * vec3<f32>(global0.x, global0.x, global0.x))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(-877f, global0.x), _wgslsmith_f_op_f32(step(774f, global0.x)), global0.x))))));
    var var_2 = Struct_2(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(35818u, 4294967295u, 0u, 1u) << (vec4<u32>(u_input.a, u_input.a, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 20638u, 0u), vec4<u32>(u_input.a, u_input.a, 2561u, 4294967295u))) ^ _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, u_input.a, 4294967295u, 97407u), vec4<u32>(40665u, var_1.x, u_input.a, var_1.x)), vec4<u32>(4294967295u, var_1.x, 25350u, var_1.x) ^ vec4<u32>(4294967295u, 57871u, var_1.x, u_input.a)), abs(countOneBits(vec4<u32>(26385u, 6457u, 24525u, u_input.a)))), ~9581i, !func_3(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -1000f) + vec2<f32>(296f, global0.x))), vec2<i32>(var_0, var_0) << (vec2<u32>(68869u, 75660u) % vec2<u32>(32u)), any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true)), any(func_3(Struct_1(global0.yy), vec2<i32>(var_0, var_0), false, true).zyz)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-379f, 919f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), ~_wgslsmith_div_u32(40305u, 4294967295u));
    let var_3 = !(!func_3(Struct_1(_wgslsmith_f_op_vec2_f32(round(global0.xx))), ~(~vec2<i32>(var_0, -81244i)), var_2.c.x, all(!vec3<bool>(true, var_2.c.x, var_2.c.x))));
    return Struct_2(var_2.a, select(_wgslsmith_mod_i32(min(_wgslsmith_mod_i32(var_0, var_0), ~var_2.b), -1i), -abs(var_0), true), func_3(var_2.d, vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(52320i, var_2.b)), var_2.c.x, func_3(var_2.d, max(~vec2<i32>(var_2.b, var_0), vec2<i32>(var_0, -6963i) << (vec2<u32>(var_1.x, var_2.a.x) % vec2<u32>(32u))), any(vec3<bool>(true, var_3.x, var_2.c.x)), !var_2.c.x & select(false, var_2.c.x, var_2.c.x)).x), var_2.d, 58130u);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: i32) -> i32 {
    return -20784i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(global0.xz), vec2<u32>(~(u_input.a | u_input.a), ~(~u_input.a)), func_1(), reverseBits(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(1i, -36536i)), countOneBits(vec2<i32>(-1i, 0i)))) & _wgslsmith_sub_i32(-29177i, -abs(21395i)));
    global0 = vec3<f32>(1081f, _wgslsmith_f_op_f32(-445f - _wgslsmith_f_op_f32(floor(global0.x))), -550f);
    var var_1 = vec3<i32>(var_0, 1i, ~max(var_0, var_0));
    var_1 = firstTrailingBit(min(vec3<i32>((var_1.x >> (u_input.a % 32u)) & var_1.x, 0i, ~_wgslsmith_sub_i32(var_1.x, 2147483647i)), vec3<i32>(var_1.x, select(~var_0, ~(-1i), false), var_0)));
    let var_2 = func_1().d;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, 278f, global0.x)))))) * vec3<f32>(295f, 646f, 976f));
    let var_3 = Struct_2(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(reverseBits(u_input.a), ~56322u, ~1575u, ~u_input.a), vec4<u32>(firstLeadingBit(u_input.a), u_input.a, ~24185u, ~1u)), ~vec4<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), 29089u | u_input.a, u_input.a, func_1().e)), ~(-44103i), !func_3(var_2, _wgslsmith_mult_vec2_i32(var_1.xz, var_1.yy) & -vec2<i32>(var_0, var_1.x), all(vec2<bool>(false, true)) && true, all(vec3<bool>(true, true, true))), func_1().d, 1u);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-func_1().d.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_3.d.a.x) - _wgslsmith_f_op_f32(min(var_3.d.a.x, global0.x))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1551f, func_1().d.a.x))));
    var var_4 = select(func_3(var_2, vec2<i32>(-(var_0 | 2147483647i), i32(-1i) * -45980i), true, var_3.c.x), !select(var_3.c, !var_3.c, var_3.c.x), var_3.c.x | true);
    let x = u_input.a;
    s_output = StorageBuffer(4235u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1435f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(932f - _wgslsmith_f_op_f32(global0.x - -1511f)) - -526f))));
}

