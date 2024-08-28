struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_mult_u32(u_input.d.x, u_input.e);
    var var_1 = Struct_1(any(vec2<bool>(true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false))))), _wgslsmith_f_op_f32(floor(1f)));
    var var_2 = var_1.b;
    let var_3 = u_input.d.zx;
    var_0 = ~min(var_3.x, min(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_3, vec2<u32>(19277u, 12391u)), var_3.x, ~var_3.x), var_3.x));
    return vec3<i32>(1i, ~(-18238i), u_input.b.x);
}

fn func_2() -> bool {
    let var_0 = 343f;
    var var_1 = Struct_2(Struct_1(false, var_0), ~(-10585i), 35643u, countOneBits(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 16892i, 26530i) ^ vec3<i32>(32133i, 27667i, u_input.c), vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x) << (u_input.d % vec3<u32>(32u))))), Struct_1(true, _wgslsmith_f_op_f32(var_0 - _wgslsmith_div_f32(var_0, -1647f))));
    let var_2 = Struct_2(var_1.e, u_input.c, _wgslsmith_sub_u32(u_input.a, ~1670u), func_3(), Struct_1(var_1.a.a, var_0));
    var_1 = var_2;
    return all(!select(select(select(vec3<bool>(false, true, var_1.a.a), vec3<bool>(false, var_1.a.a, false), var_2.e.a), select(vec3<bool>(false, false, var_2.a.a), vec3<bool>(var_1.e.a, true, var_2.e.a), true), vec3<bool>(true, true, true)), select(select(vec3<bool>(var_2.a.a, var_1.e.a, true), vec3<bool>(false, false, false), var_2.e.a), vec3<bool>(false, var_1.e.a, var_2.e.a), true), false));
}

fn func_1() -> bool {
    var var_0 = ~select(vec2<i32>(u_input.b.x, u_input.c), ~(-u_input.b), true);
    var var_1 = true;
    let var_2 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(func_2(), false, true, !all(vec4<bool>(false, true, false, true))), (_wgslsmith_mult_u32(u_input.d.x, 36500u) | 29191u) > countOneBits(u_input.e)), vec4<bool>(false, all(vec3<bool>(any(vec2<bool>(false, true)), true, all(vec2<bool>(false, false)))), select(true, !all(vec4<bool>(false, false, false, false)), false), all(vec4<bool>(true, true, true, true))), !(!any(vec3<bool>(true, true, false)) | (true != any(vec4<bool>(true, false, false, false)))));
    let var_3 = ~(-2147483647i);
    var var_4 = firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-34733i, 32942i, var_0.x, var_3), firstTrailingBit(vec4<i32>(-4464i, 0i, u_input.b.x, u_input.b.x))), abs(-vec4<i32>(var_3, u_input.b.x, -1246i, var_0.x))), ~(-vec4<i32>(var_3, var_3, var_0.x, var_3))));
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = vec3<bool>(arg_1.x, arg_0.x, !all(vec2<bool>(true, true)));
    var_0 = vec3<bool>(arg_1.x, arg_0.x, select(func_2(), false, true || arg_2.a));
    var_0 = vec3<bool>(func_2(), all(vec3<bool>(true, true, all(!vec4<bool>(false, arg_1.x, arg_1.x, true)))), all(select(vec2<bool>(u_input.c >= u_input.c, true), select(!vec2<bool>(arg_0.x, false), arg_1.zw, arg_1.yz), true)));
    var var_1 = -(~(-5509i));
    var var_2 = arg_3.b;
    return all(select(arg_1, vec4<bool>(all(select(vec3<bool>(true, false, arg_3.a), arg_1.zwz, arg_3.a)), true, false, arg_0.x), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(u_input.d.yx, vec2<u32>(44942u, select(~select(u_input.a, u_input.e, true), abs(u_input.e), false)), func_4(vec4<bool>(true, select(func_1(), func_2(), true), all(vec2<bool>(true, true)), select(true, true, true)), vec4<bool>(select(true, true, false), true, true, true), Struct_1(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), 1375f), Struct_1(true && func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2241f - 605f)))));
    var var_1 = any(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))) != true;
    let var_2 = Struct_2(Struct_1(!all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(-783f * _wgslsmith_f_op_f32(f32(-1f) * -1358f))), 40801i, firstLeadingBit(firstLeadingBit(_wgslsmith_mult_u32(var_0.x, firstTrailingBit(var_0.x)))), -vec3<i32>(u_input.b.x, abs(i32(-1i) * -2147483647i), u_input.b.x), Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-283f, _wgslsmith_f_op_f32(trunc(817f)))) * 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-333f + 1279f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.a.b)), _wgslsmith_f_op_f32(684f + var_2.e.b)) - _wgslsmith_div_f32(_wgslsmith_div_f32(316f, var_2.e.b), _wgslsmith_f_op_f32(-1206f + var_2.a.b)))), countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.c, 6637u, u_input.a, 0u), vec4<u32>(1u, var_0.x, 36258u, u_input.d.x), vec4<u32>(4294967295u, var_2.c, 15794u, var_2.c)) | firstTrailingBit(vec4<u32>(u_input.a, 53332u, 32322u, 10183u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.c, var_0.x, var_2.c, u_input.e), vec4<u32>(u_input.a, var_2.c, u_input.a, var_0.x)), vec4<u32>(0u, u_input.e, u_input.d.x, 1u) ^ vec4<u32>(var_0.x, 4294967295u, 4294967295u, 4294967295u), reverseBits(vec4<u32>(4294967295u, 45649u, 0u, 3845u))))));
}

