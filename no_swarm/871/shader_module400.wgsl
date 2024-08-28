struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> bool {
    var var_0 = arg_1.b;
    var_0 = arg_1.b;
    var var_1 = arg_1.d;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_1.b * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b.x, var_0.x), vec2<f32>(-581f, arg_1.b.x)) * vec2<f32>(var_0.x, -2615f))))));
    var_0 = vec2<f32>(297f, var_2.x);
    return _wgslsmith_f_op_f32(-1783f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.x, var_0.x))))) >= -1364f;
}

fn func_3() -> vec3<i32> {
    var var_0 = ~u_input.b;
    let var_1 = !(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true))));
    let var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 12568u)), vec4<u32>(_wgslsmith_mod_u32(var_0.x, var_0.x), 1u, countOneBits(8965u), _wgslsmith_clamp_u32(var_0.x, var_0.x, 0u)) << (select(~vec4<u32>(u_input.b.x, var_0.x, 34886u, 1u), ~vec4<u32>(1u, u_input.b.x, 46750u, 4294967295u), 5008u > var_0.x) % vec4<u32>(32u))), u_input.b.x, ~u_input.b.x);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-339f, 861f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-167f, 335f) + vec2<f32>(2447f, -382f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-108f, 1250f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1816f, 1665f))), vec2<f32>(488f, -904f)))))), vec3<i32>(firstTrailingBit(_wgslsmith_clamp_i32(-1i >> (0u % 32u), reverseBits(22037i), _wgslsmith_div_i32(1i, u_input.c))), ~abs(firstLeadingBit(17226i)), u_input.c), u_input.a, var_1.zy, !(!var_1.x) && !((var_1.x && var_1.x) & any(vec2<bool>(false, var_1.x))));
    let var_4 = !vec4<bool>(any(var_1.yz), var_1.x, true || (1u != firstLeadingBit(var_0.x)), true);
    return (firstTrailingBit(var_3.b) << (~vec3<u32>(var_2.x, 1u | u_input.b.x, 16374u << (1u % 32u)) % vec3<u32>(32u))) >> (~vec3<u32>(0u, firstTrailingBit(reverseBits(var_2.x)), ~(~var_0.x)) % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> bool {
    let var_0 = vec4<i32>(~max(-min(-26610i, 16583i), ~min(u_input.c, -2726i)), firstLeadingBit(-6858i), -u_input.c, -2147483647i);
    var var_1 = Struct_2(var_0.wwy, arg_0.a, min(-vec2<i32>(arg_1.b.x, u_input.a), vec2<i32>(_wgslsmith_add_i32(var_0.x, arg_0.c), min(arg_1.c, 0i))) | (-var_0.zw ^ select(vec2<i32>(-1i, arg_1.b.x) ^ var_0.wy, arg_1.b.yx, vec2<bool>(false, arg_1.d.x))), true);
    var_1 = Struct_2(_wgslsmith_mult_vec3_i32(reverseBits(func_3()) ^ vec3<i32>(1i, var_1.a.x, _wgslsmith_dot_vec4_i32(var_0, vec4<i32>(arg_1.b.x, var_0.x, var_1.c.x, 2147483647i))), -arg_1.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-470f + -1668f), 1350f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, var_1.b.x)))), var_0.yz << (abs(abs(u_input.b.xz) >> (~vec2<u32>(31579u, 69083u) % vec2<u32>(32u))) % vec2<u32>(32u)), any(!(!select(vec3<bool>(true, var_1.d, true), vec3<bool>(arg_0.e, arg_0.d.x, var_1.d), arg_1.d.x))));
    let var_2 = arg_1.e;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -369f;
    var_0 = -213f;
    let var_1 = -firstTrailingBit(vec4<i32>(u_input.a, u_input.c, -_wgslsmith_div_i32(2147483647i, -6524i), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, -21250i, -1i), vec4<i32>(u_input.a, u_input.a, u_input.c, -7198i)), _wgslsmith_clamp_i32(-2147483647i, u_input.a, u_input.a))));
    let var_2 = select(select(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true)), !vec4<bool>(func_1(vec3<i32>(u_input.a, var_1.x, 1i), Struct_2(vec3<i32>(var_1.x, var_1.x, -38753i), vec2<f32>(-532f, 443f), vec2<i32>(-66167i, var_1.x), false)), true, false, false), (2147483647i > _wgslsmith_mult_i32(var_1.x, 27506i)) || (max(u_input.b.x, u_input.b.x) != 4294967295u)), !(!vec4<bool>(all(vec4<bool>(true, true, true, true)), true, all(vec3<bool>(true, true, true)), func_2(Struct_1(vec2<f32>(-249f, -2637f), var_1.zzx, -48012i, vec2<bool>(false, false), true), Struct_1(vec2<f32>(-662f, 388f), var_1.zxy, 2147483647i, vec2<bool>(false, false), true), -187f))), !vec4<bool>(true, all(vec2<bool>(true, true)), !all(vec3<bool>(true, false, false)), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    let var_3 = var_2.yy;
    var var_4 = Struct_3(u_input.a, u_input.b.x, u_input.b.x, var_1.yzx, !select(var_2.wz, vec2<bool>(true, true), !var_3));
    var_0 = -542f;
    var_0 = _wgslsmith_f_op_f32(-618f * _wgslsmith_f_op_f32(1422f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(round(402f))) - -697f)));
    let var_5 = _wgslsmith_div_u32(~1u, _wgslsmith_clamp_u32(2009u, ~4294967295u, _wgslsmith_sub_u32(max(1u, _wgslsmith_clamp_u32(0u, 1u, u_input.b.x)), 36090u)));
    let x = u_input.a;
    s_output = StorageBuffer(403f, ~(-5297i), firstTrailingBit(_wgslsmith_mult_i32(var_1.x, 0i)), _wgslsmith_div_f32(-1634f, _wgslsmith_f_op_f32(trunc(1044f))), _wgslsmith_sub_i32(~(-1i), ~_wgslsmith_dot_vec2_i32(var_1.yy | vec2<i32>(-46370i, var_4.d.x), max(vec2<i32>(var_4.d.x, var_1.x), vec2<i32>(25310i, var_4.d.x)))));
}

