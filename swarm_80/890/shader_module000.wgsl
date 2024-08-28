struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> u32 {
    let var_0 = vec2<u32>(abs(_wgslsmith_mod_u32(~(~u_input.b), _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 7097u), u_input.b))), reverseBits(_wgslsmith_div_u32(1u, ~0u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-783f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -242f) + 1f) * 1f)));
    let var_2 = arg_0;
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1285f) - vec2<f32>(1221f, 1391f))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1000f) * vec2<f32>(var_1.x, 532f))))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), var_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.x, var_1.x), vec2<f32>(688f, 875f)))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1160f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(404f, var_1.x)), _wgslsmith_f_op_f32(1954f - 204f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_div_f32(-443f, var_1.x))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, -386f), _wgslsmith_div_vec2_f32(vec2<f32>(-374f, 2669f), vec2<f32>(var_1.x, -1581f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(327f, var_1.x)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.x, var_1.x), vec2<f32>(-474f, var_1.x)))), select(arg_1, !arg_1, arg_1)))));
    return 0u;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32, arg_3: i32) -> vec4<u32> {
    let var_0 = Struct_4(Struct_3(19660u), vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(trunc(arg_0.a))) + -396f), _wgslsmith_f_op_f32(-arg_0.a)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1017f, 1046f)), _wgslsmith_f_op_f32(sign(-454f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(934f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-298f + var_0.b.x), _wgslsmith_f_op_f32(-var_0.b.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_f_op_f32(969f + var_0.b.x), arg_0.b.x & arg_0.b.x)))), true)), -515f);
    return ~firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.a.a, u_input.b, u_input.b), vec4<u32>(var_0.a.a, 50461u, 14545u, 0u) & vec4<u32>(71906u, var_0.a.a, var_0.a.a, u_input.b)), 45851u, 86779u, u_input.b));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.b, ~u_input.b, ~u_input.b, 0u), vec4<u32>(func_2(Struct_2(vec4<i32>(29873i, u_input.a, u_input.a, -35541i), vec2<i32>(8410i, u_input.a)), vec2<bool>(false, true)), u_input.b, _wgslsmith_mult_u32(u_input.b, u_input.b), u_input.b)), vec4<u32>(func_2(Struct_2(vec4<i32>(26156i, u_input.a, -2147483647i, -2147483647i), vec2<i32>(u_input.a, 50490i)), vec2<bool>(true, true)), u_input.b, 57936u | ~u_input.b, u_input.b)), _wgslsmith_add_vec4_u32(func_3(Struct_1(256f, vec4<bool>(false, true, false, false)), vec2<bool>(true, true), u_input.a, ~u_input.a) & ~vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), ~(~(~vec4<u32>(1u, u_input.b, u_input.b, 18852u)))));
    var var_1 = _wgslsmith_div_f32(224f, _wgslsmith_f_op_f32(trunc(1035f)));
    let var_2 = !vec2<bool>(true, !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)));
    var var_3 = -1646f;
    let var_4 = Struct_2(firstTrailingBit(firstTrailingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, -63884i, -6357i, u_input.a), vec4<i32>(1i, u_input.a, -14945i, 15453i)), ~vec4<i32>(u_input.a, 37416i, u_input.a, -10223i)))), vec2<i32>(_wgslsmith_mod_i32(101982i, -26524i) | u_input.a, max(select(i32(-1i) * -2147483647i, u_input.a >> (0u % 32u), all(vec2<bool>(true, var_2.x))), min(-45375i, ~u_input.a))));
    return var_4;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_4) -> Struct_4 {
    var var_0 = countOneBits(_wgslsmith_mod_i32(~arg_1.a.x, -(~(-9564i)))) >= 1i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-arg_2.b.x), true)))))));
    let var_2 = Struct_3(~firstLeadingBit(select(~arg_2.a.a, ~u_input.b, !arg_0.x)));
    var var_3 = _wgslsmith_mod_vec3_u32(~abs(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 100591u, 4294967295u), vec3<u32>(4294967295u, u_input.b, 0u)), ~vec3<u32>(u_input.b, 91900u, 54464u))), abs(vec3<u32>(min(var_2.a, ~2856u), u_input.b, firstTrailingBit(~var_2.a))));
    let var_4 = var_3.zx;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(u_input.b);
    var var_1 = func_4(vec3<bool>(!(!(1u >= var_0.a)), true, true), func_1(), Struct_4(var_0, vec3<f32>(_wgslsmith_f_op_f32(step(-2334f, _wgslsmith_f_op_f32(-1000f * -248f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(406f, -761f)), 657f, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-466f, 334f)))));
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1318f, 218f, -238f, 658f) - vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, -1275f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.b.x, -462f, -322f, 305f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-556f, 1000f, var_1.b.x, -529f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b.x, var_1.b.x, -1485f, -252f), vec4<f32>(var_1.b.x, -1879f, var_1.b.x, -657f), false))))));
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_3.xz), vec2<f32>(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_3.x, var_3.x, true)), func_4(vec3<bool>(true, true, false), Struct_2(vec4<i32>(u_input.a, u_input.a, -27653i, u_input.a), vec2<i32>(-22203i, u_input.a)), Struct_4(Struct_3(64979u), var_1.b)).b.x)), var_1.b.x), true));
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_3.x)))), _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-120f - var_4.x)), _wgslsmith_f_op_f32(-1f), var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(Struct_1(_wgslsmith_f_op_f32(select(-1805f, var_4.x, true)), vec4<bool>(true, true, true, true)), vec2<bool>(false, u_input.b >= var_1.a.a), 57332i, ~_wgslsmith_clamp_i32(10275i, u_input.a, -1i)).x << ((~_wgslsmith_add_u32(1u, 18627u) << (firstLeadingBit(var_1.a.a) % 32u)) % 32u));
}

