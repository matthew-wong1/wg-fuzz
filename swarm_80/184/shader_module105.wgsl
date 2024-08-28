struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> bool {
    var var_0 = Struct_2(~u_input.d.x);
    let var_1 = Struct_4(true);
    let var_2 = _wgslsmith_f_op_f32(min(-658f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-2062f)), _wgslsmith_f_op_f32(1322f + -2264f)), _wgslsmith_div_f32(-922f, -243f))))));
    var_0 = Struct_2(u_input.a.x);
    var_0 = Struct_2(abs(32588u) << (var_0.a % 32u));
    return false;
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = all(vec3<bool>(24365u != u_input.b, !(u_input.b < u_input.b), !all(vec2<bool>(true, false)))) & true;
    let var_1 = Struct_3(true);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1668f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-999f + 1218f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1000f, arg_0))))))), _wgslsmith_f_op_f32(sign(100f)), arg_0);
    var var_3 = !select(select(!(!vec3<bool>(var_1.a, var_1.a, var_0)), vec3<bool>(false, true, !var_1.a), _wgslsmith_f_op_f32(796f - var_2.x) >= -1000f), vec3<bool>(any(!vec4<bool>(var_1.a, var_0, var_0, true)), true, var_1.a), var_0);
    var var_4 = Struct_3(!(select(-2147483647i < u_input.c, all(vec3<bool>(false, var_1.a, var_3.x)), var_1.a) || !var_0));
    return any(vec3<bool>(any(!(!vec4<bool>(var_0, false, var_1.a, var_1.a))), true, var_4.a));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec4<bool>) -> vec2<u32> {
    var var_0 = !(!select(arg_2.zxy, vec3<bool>(arg_0.a & arg_2.x, arg_0.a, true), vec3<bool>(true | arg_0.a, arg_2.x, true)));
    var var_1 = Struct_3(true);
    var var_2 = Struct_4(u_input.b < 16411u);
    let var_3 = Struct_3(var_1.a);
    let var_4 = 4294967295u;
    return _wgslsmith_mod_vec2_u32(~((u_input.a << (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))) & u_input.a), ~(~_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 4294967295u)), firstTrailingBit(u_input.d), vec2<u32>(1u, u_input.d.x))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1f))));
    let var_1 = Struct_4(arg_3.b.x);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0, -1477f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, var_0, func_3(var_0))))), -239f, _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(max(var_0, 147f)))))), 455f);
    var var_3 = var_1;
    var var_4 = vec2<i32>(arg_3.c, -5820i);
    return Struct_2(~_wgslsmith_sub_u32(arg_2.x, ~min(76813u, 13596u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> vec4<bool> {
    let var_0 = !select(!vec2<bool>(true, u_input.a.x > u_input.b), vec2<bool>(false, !any(vec2<bool>(true, true))), vec2<bool>(true, true));
    let var_1 = func_5(~(~abs(vec2<u32>(4294967295u, u_input.b))), func_4(Struct_4(!var_0.x), arg_0, select(vec4<bool>(arg_1 <= -733f, func_2(), !var_0.x, var_0.x), vec4<bool>(true, true, all(vec4<bool>(var_0.x, true, false, var_0.x)), var_0.x), vec4<bool>(true, func_3(arg_1), arg_1 <= -154f, func_3(arg_1)))), ~vec3<u32>(u_input.e.x, _wgslsmith_div_u32(u_input.d.x, 0u) ^ abs(u_input.d.x), 4117u), Struct_1(~abs(0u | u_input.e.x), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, true)), vec4<bool>(all(vec4<bool>(var_0.x, false, var_0.x, true)), var_0.x | false, var_0.x, arg_1 <= arg_1), false), u_input.c, max(0i, ~0i)));
    let var_2 = ~select(-vec4<i32>(2147483647i, 34847i, 0i, arg_0.x) | -vec4<i32>(u_input.c, u_input.c, 579i, u_input.c), countOneBits(vec4<i32>(28245i, u_input.c, -39297i, u_input.c)), select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, false, true)), vec4<bool>(false, var_0.x, var_0.x, var_0.x), arg_1 <= 876f)) >> (~abs(abs(countOneBits(vec4<u32>(var_1.a, 1u, var_1.a, 1u)))) % vec4<u32>(32u));
    var var_3 = true;
    var var_4 = func_5(select(vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.e, firstLeadingBit(vec3<u32>(59032u, var_1.a, 8963u))), 6561u), _wgslsmith_add_vec2_u32(~vec2<u32>(34896u, var_1.a), abs(_wgslsmith_mod_vec2_u32(u_input.e.yx, u_input.e.xz))), !select(vec2<bool>(true, true), select(var_0, vec2<bool>(true, false), true), vec2<bool>(false, false))), vec2<u32>(_wgslsmith_sub_u32(var_1.a, ~(~16360u)), firstLeadingBit(func_4(Struct_4(true), firstTrailingBit(arg_0), vec4<bool>(var_0.x, true, false, true)).x)), _wgslsmith_mult_vec3_u32(select(abs(u_input.e), _wgslsmith_div_vec3_u32(~u_input.e, ~u_input.e), select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, false, true), vec3<bool>(false, var_0.x, var_0.x)), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, true)), false)), ~(~firstTrailingBit(vec3<u32>(var_1.a, u_input.d.x, 4294967295u)))), Struct_1(~(~var_1.a & ~var_1.a), select(vec4<bool>(true, var_0.x, var_2.x != u_input.c, var_0.x), vec4<bool>(!var_0.x, !var_0.x, all(vec4<bool>(true, true, var_0.x, var_0.x)), true), !vec4<bool>(var_0.x, false, var_0.x, true)), 2147483647i, var_2.x | u_input.c));
    return !(!(!(!(!vec4<bool>(var_0.x, true, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(false);
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_div_u32(~28324u, 1u), u_input.b);
    let var_2 = Struct_1(8892u, !vec4<bool>(true, true, true, (u_input.b >= u_input.b) || false), u_input.c, u_input.c);
    var var_3 = vec4<bool>(true, any(!(!func_1(vec3<i32>(-2147483647i, var_2.c, 1i), 587f))), !all(var_2.b.zyw), !var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(22686i, -14924i, 21383i) << (~vec3<u32>(u_input.d.x, 1u, var_2.a) % vec3<u32>(32u))), vec3<i32>(0i, min(1i, _wgslsmith_mod_i32(-39944i, 2147483647i)), var_2.c)), 777f);
}

