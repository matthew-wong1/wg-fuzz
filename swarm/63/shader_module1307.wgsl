struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_1(-2147483647i, arg_0.b, ~_wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(u_input.d.x, u_input.d.x) & vec2<u32>(3102u, arg_0.d.x)), vec2<u32>(~u_input.c.x, u_input.d.x));
    var var_1 = select(!vec3<bool>(select(false, all(vec4<bool>(false, false, true, false)), true), reverseBits(u_input.c.x) < var_0.c.x, true), select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), vec3<bool>(false, false, false), arg_0.b == var_0.b), vec3<bool>(true, true, true), true), vec3<bool>(any(vec4<bool>(true, false, true, false)) || true, false, !any(vec2<bool>(true, true))), !vec3<bool>(any(vec4<bool>(true, true, true, false)), false, false)), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))));
    let var_2 = !(!vec3<bool>(true, true, !any(var_1.yy)));
    var_1 = var_2;
    let var_3 = arg_0;
    return arg_0.a;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(~_wgslsmith_mult_i32(~u_input.b, u_input.e), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1428f * _wgslsmith_f_op_f32(trunc(-337f)))))), u_input.c >> (~_wgslsmith_div_vec2_u32(~u_input.d.zy, vec2<u32>(1u, 1u)) % vec2<u32>(32u)), ~vec2<u32>(~4294967295u ^ (23868u | u_input.c.x), u_input.c.x));
    var_0 = Struct_1(func_3(Struct_1(var_0.a, -1436f, var_0.d, _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(19855u, 49688u)), vec2<u32>(2240u, 1u) ^ vec2<u32>(var_0.d.x, 49517u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b))))) + _wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(-var_0.b)))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.d.x | u_input.d.x, _wgslsmith_mult_u32(var_0.c.x, var_0.c.x)), u_input.c), vec2<u32>(1u, ~(~(~u_input.d.x))));
    let var_1 = _wgslsmith_div_i32(var_0.a, 25078i);
    var var_2 = firstTrailingBit(vec3<u32>(~(~var_0.c.x), max(4294967295u, firstLeadingBit(41235u)), ~35632u) | ~u_input.d);
    let var_3 = 21075u;
    return u_input.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> vec3<f32> {
    var var_0 = true;
    var var_1 = arg_0;
    var var_2 = Struct_1(-1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b)))), -388f), vec2<u32>(~arg_0.c.x, select(~arg_1.x, u_input.d.x, false)), ~vec2<u32>(1u, 78036u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1747f, _wgslsmith_f_op_f32(round(-913f)), arg_0.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(747f, -2532f, var_1.b), vec3<f32>(580f, 1266f, -682f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, 1616f, 1010f) + vec3<f32>(-268f, -620f, 993f))))));
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 1564f, _wgslsmith_f_op_f32(round(-1028f))), vec3<f32>(-1640f, _wgslsmith_f_op_f32(round(1579f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -467f))), all(vec2<bool>(any(vec3<bool>(false, false, true)), false)))) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(195f - _wgslsmith_f_op_f32(min(-2047f, -621f))))), -1295f, -1000f));
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, var_0.x, true)) - var_0.x), _wgslsmith_f_op_f32(max(-1737f, _wgslsmith_div_f32(-939f, 1910f))), var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, var_0.x)))))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1359f), 1232f, _wgslsmith_f_op_f32(round(1299f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(func_4(Struct_1(_wgslsmith_clamp_i32(func_2(), func_3(Struct_1(2147483647i, 1626f, u_input.c, u_input.d.yy)), u_input.e), 260f, min(vec2<u32>(84109u, u_input.c.x) ^ u_input.c, vec2<u32>(22949u, u_input.d.x)) >> (reverseBits(max(u_input.d.yz, vec2<u32>(0u, 1u))) % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, u_input.d.x), vec2<u32>(u_input.d.x, u_input.c.x), u_input.d.yx), vec2<u32>(u_input.c.x, u_input.d.x))), vec3<u32>(35882u, max(1u, 0u), u_input.d.x)));
    let var_1 = 18604i;
    let var_2 = Struct_1(~(select(u_input.b, var_1, any(vec2<bool>(true, false))) ^ -75686i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 490f)))), (vec2<u32>(~27664u, reverseBits(u_input.c.x)) | vec2<u32>(~u_input.c.x, 4294967295u)) ^ u_input.d.xz, ~u_input.c);
    return select(vec4<bool>(!any(vec3<bool>(true, false, true)), !any(vec2<bool>(true, true)), -var_2.a <= min(u_input.b, -var_2.a), func_3(var_2) > 1i), !(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)))), vec4<bool>(true, !select(all(vec4<bool>(true, false, false, false)), true, true), true, firstLeadingBit(firstTrailingBit(u_input.d.x)) <= abs(_wgslsmith_div_u32(u_input.c.x, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -3462f;
    var_0 = 724f;
    let var_1 = firstTrailingBit(~_wgslsmith_div_u32(0u, u_input.c.x));
    var var_2 = reverseBits(u_input.c.x);
    var var_3 = true;
    var_3 = any(!select(select(func_1(), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), any(vec2<bool>(false, false))), vec4<bool>(true, false, true, any(vec2<bool>(false, true))), true));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(506f + _wgslsmith_f_op_f32(f32(-1f) * -977f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, 1f);
}

