struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: bool;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec4<bool> {
    let var_0 = vec4<bool>(any(vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), !any(vec3<bool>(false, false, true)), false)), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true))), select(true, any(vec2<bool>(true, true)), true), !all(vec4<bool>(select(false, true, false), any(vec4<bool>(false, true, true, false)), true, true)));
    let var_1 = Struct_2(-select(firstLeadingBit(vec3<i32>(1i, 1i, 1i)), ~vec3<i32>(-2147483647i, 14317i, -2147483647i), true), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(326f, -1514f) * _wgslsmith_f_op_f32(968f * -552f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -625f))))), vec4<i32>(-(i32(-1i) * -65993i), ~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, 28171i, 0i)), -vec3<i32>(66327i, -89550i, -23098i)), _wgslsmith_sub_i32(-15143i, abs(1i << (u_input.a.x % 32u))), 37874i >> (firstTrailingBit(u_input.a.x) % 32u)));
    global0 = all(vec3<bool>(select(var_0.x, all(vec2<bool>(false, false)), 32024i <= select(-2147483647i, var_1.c.x, true)), var_0.x, true));
    let var_2 = var_1.b.a;
    let var_3 = var_1.b.a;
    return var_0;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = false;
    var var_0 = _wgslsmith_mult_vec4_i32(select(~vec4<i32>(~(-26675i), 0i, -49338i, abs(-1i)), vec4<i32>(1i, 1i, 1i, 1i), !select(func_3(), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true))), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, firstLeadingBit(1i), 1i), -max(min(vec4<i32>(-1i, -38456i, 0i, 1i), vec4<i32>(5457i, -1i, 2147483647i, 1i)), min(vec4<i32>(-2147483647i, 2217i, -11790i, -2132i), vec4<i32>(-865i, -1i, 1988i, -12885i)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * -843f));
    let var_2 = Struct_2(-var_0.wzx, Struct_1(346f), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_0.x, 0i, 2147483647i) & abs(vec4<i32>(var_0.x, var_0.x, -2147483647i, var_0.x)), vec4<i32>(var_0.x, var_0.x, 2147483647i, -1i) & vec4<i32>(-22519i, -1i, var_0.x, 2985i)), -_wgslsmith_add_vec4_i32(-vec4<i32>(var_0.x, -35442i, var_0.x, var_0.x), vec4<i32>(1i, 0i, var_0.x, -21901i))));
    global0 = 355f == _wgslsmith_f_op_f32(min(400f, _wgslsmith_f_op_f32(-arg_1.a)));
    return var_0.x;
}

fn func_1() -> bool {
    let var_0 = vec3<u32>(4294967295u, ~(_wgslsmith_sub_u32(u_input.a.x, 59637u) & 40767u), 11021u) & vec3<u32>(abs(4294967295u), _wgslsmith_sub_u32(~1u, ~1u & u_input.a.x), 1u);
    var var_1 = Struct_2(max(vec3<i32>(1i, countOneBits(-76215i), _wgslsmith_mod_i32(2147483647i, -14484i)) << (var_0 % vec3<u32>(32u)), vec3<i32>(-_wgslsmith_mod_i32(1i, 1i), ~(-29029i), func_2(Struct_1(-2219f), Struct_1(722f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -919f))), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(2147483647i, -2147483647i, 45643i, 12026i)), _wgslsmith_add_vec4_i32(-abs(vec4<i32>(-1i, -45240i, 19629i, 11126i)), abs(vec4<i32>(-16603i, 33213i, 1i, 39316i) >> (vec4<u32>(57350u, 1u, 1u, u_input.a.x) % vec4<u32>(32u))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-914f - 1414f));
    global0 = false;
    let var_3 = true;
    return !(var_1.a.x != firstTrailingBit(_wgslsmith_sub_i32(-2147483647i, func_2(var_1.b, var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(!vec4<bool>(!func_1(), false, true, false));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-344f)) + -792f))) > _wgslsmith_div_f32(-1197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -456f) - _wgslsmith_f_op_f32(min(-337f, -1000f)))));
    let var_0 = -select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(~(-2147483647i) | _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, 8326i), vec3<i32>(-1i, 0i, -1i)), select(0i, 25049i, true), countOneBits(_wgslsmith_clamp_i32(1i, -1803i, -12425i)), -2147483647i), select(func_3(), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), (0i >> (u_input.a.x % 32u)) < (i32(-1i) * -1i)));
    let var_1 = 42700i;
    var var_2 = Struct_2(~var_0.yzw, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))), vec4<i32>(_wgslsmith_clamp_i32(19981i, 1i, 54097i), var_1, -3343i, ~(var_1 ^ func_2(Struct_1(118f), Struct_1(909f)))));
    var var_3 = !vec2<bool>(func_3().x, var_2.b.a != 1315f);
    let var_4 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.a.x) << (abs(~u_input.a.x) % 32u));
}

