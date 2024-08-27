struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> bool {
    let var_0 = all(select(select(select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), u_input.a < -2147483647i), !any(vec4<bool>(false, false, false, false))), vec3<bool>(select(all(vec4<bool>(false, true, true, false)), any(vec3<bool>(true, true, true)), true), true, true), select(~u_input.b.x < 17300u, max(u_input.b.x, 33433u) <= u_input.b.x, all(vec3<bool>(true, true, true)) | false)));
    var var_1 = vec2<u32>(u_input.b.x, abs(~819u));
    var_1 = ~u_input.b;
    var_1 = vec2<u32>(var_1.x, ~(1u << (countOneBits(u_input.b.x) % 32u)));
    let var_2 = _wgslsmith_f_op_f32(-1f);
    return false;
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = func_3();
    let var_1 = Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(countOneBits(15157u), u_input.b.x, ~(~u_input.b.x), u_input.b.x), ~(max(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 12467u, 32580u, 3560u)) >> ((vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u) | vec4<u32>(u_input.b.x, u_input.b.x, 5892u, u_input.b.x)) % vec4<u32>(32u))), firstTrailingBit(~vec4<u32>(4293u, u_input.b.x, u_input.b.x, 17814u))), Struct_1(42115u, select(!(!vec4<bool>(true, var_0, var_0, false)), select(vec4<bool>(true, var_0, var_0, false), select(vec4<bool>(var_0, true, var_0, false), vec4<bool>(true, var_0, false, var_0), var_0), !var_0), select(vec4<bool>(false, var_0, false, var_0), vec4<bool>(var_0, var_0, var_0, var_0), true)), _wgslsmith_clamp_i32(~(-4754i), u_input.a, 1i), -(vec4<i32>(u_input.a, u_input.a, 27889i, u_input.a) & countOneBits(vec4<i32>(u_input.a, u_input.a, u_input.a, 0i)))), vec2<i32>(-28884i, max(u_input.a, (i32(-1i) * -2147483647i) & _wgslsmith_clamp_i32(0i, 2147483647i, u_input.a))));
    let var_2 = abs(firstLeadingBit(countOneBits(var_1.c.x))) & -abs(-min(-24202i, -55680i));
    var var_3 = -(~reverseBits(-_wgslsmith_div_i32(2147483647i, var_2)));
    var_3 = i32(-1i) * -14842i;
    return Struct_3(var_0, var_1.b.b.yxw, select(var_1.b.b.wyy, !select(vec3<bool>(false, false, false), select(var_1.b.b.xwz, vec3<bool>(false, false, var_1.b.b.x), var_0), vec3<bool>(var_0, var_1.b.b.x, false)), true), ~(~var_1.a) ^ _wgslsmith_sub_vec4_u32(min(firstTrailingBit(vec4<u32>(var_1.b.a, u_input.b.x, u_input.b.x, 0u)), vec4<u32>(1u, 46405u, var_1.b.a, 1u)), var_1.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: bool, arg_3: vec4<bool>) -> i32 {
    let var_0 = vec2<i32>(-1i) * -(arg_0.yz & _wgslsmith_add_vec2_i32(arg_0.yx ^ arg_0.zx, -vec2<i32>(u_input.a, u_input.a)));
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_1))))));
    var var_2 = Struct_2(_wgslsmith_div_vec4_u32(min(~var_1.d, vec4<u32>(1u, abs(u_input.b.x), _wgslsmith_mult_u32(1u, 4294967295u), var_1.d.x)), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.d.x, 73185u, 31053u, 7415u), var_1.d) & ~var_1.d, vec4<u32>(u_input.b.x, 4294967295u ^ u_input.b.x, 1u, 32733u))), Struct_1(0u, vec4<bool>(arg_2, false, all(!var_1.b.yz), all(!arg_3.zwy)), abs(arg_0.x), vec4<i32>(-1i, -46516i, arg_0.x, 1i << (_wgslsmith_mult_u32(u_input.b.x, u_input.b.x) % 32u))), reverseBits(-var_0));
    var var_3 = Struct_3(true, vec3<bool>(!(~(-1i) != (u_input.a & 1i)), arg_2, var_2.b.b.x), arg_3.ywz, var_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, 2338f))))) + arg_1.x));
    let var_4 = var_2.b;
    return -(~(-2147483647i));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, arg_2.b.a, arg_2.b.a) >> (arg_2.b.a % 32u), ~0u) << (1u % 32u), arg_2.b.b, -2147483647i, vec4<i32>(-1i) * -arg_2.b.d);
    var_0 = arg_2.b;
    let var_1 = Struct_3(!var_0.b.x, arg_2.b.b.wxz, vec3<bool>(arg_2.b.b.x, true, arg_0), vec4<u32>(21449u, ~firstLeadingBit(min(arg_2.a.x, 46540u)), var_0.a, arg_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-738f, _wgslsmith_f_op_f32(f32(-1f) * -396f)))));
    var var_2 = min(~firstLeadingBit(u_input.b), abs(abs(~vec2<u32>(17773u, var_0.a) >> (~var_1.d.zy % vec2<u32>(32u)))));
    var_2 = arg_2.a.xy;
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(true, vec4<i32>(func_1(vec4<i32>(1i, _wgslsmith_clamp_i32(0i, -1i, u_input.a), 44234i, ~2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-761f, 1715f, -610f, -1778f)))), false, !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false))), -2147483647i, func_1(-vec4<i32>(u_input.a, u_input.a, -1i, u_input.a) << (abs(vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)) % vec4<u32>(32u)), vec4<f32>(func_2(vec4<f32>(1066f, -309f, 119f, 855f)).e, _wgslsmith_f_op_f32(1041f + -337f), _wgslsmith_div_f32(-569f, -705f), -1022f), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), vec4<bool>(any(vec2<bool>(false, true)), true, true, true)), -countOneBits(u_input.a)), Struct_2(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b.x, u_input.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 61209u, u_input.b.x), vec4<u32>(65395u, u_input.b.x, 27279u, u_input.b.x))), max(~1u, firstTrailingBit(u_input.b.x)), select(u_input.b.x | u_input.b.x, 42142u, all(vec3<bool>(true, false, false))), 0u), Struct_1(~(~u_input.b.x), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(false, true, true, true), false), u_input.a | -3086i, _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, 0i), vec4<i32>(4080i, -30169i, u_input.a, 44088i)), vec4<i32>(5140i, 0i, u_input.a, u_input.a))), firstTrailingBit(abs(abs(vec2<i32>(2147483647i, 2147483647i))))), -firstLeadingBit(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), vec4<i32>(u_input.a, u_input.a, -2147483647i, -6914i))));
    var var_1 = 47040i;
    var var_2 = var_0.b.x;
    var_2 = false;
    var var_3 = var_0;
    let var_4 = func_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1804f, _wgslsmith_f_op_f32(sign(-990f)), _wgslsmith_div_f32(-485f, -1227f), _wgslsmith_f_op_f32(f32(-1f) * -421f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))))));
    var_1 = (40242i | u_input.a) ^ firstTrailingBit(var_3.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~u_input.b.x, 0u));
}

