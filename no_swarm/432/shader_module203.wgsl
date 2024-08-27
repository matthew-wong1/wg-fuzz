struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_3,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: i32) -> Struct_4 {
    return Struct_4(1u, Struct_2(arg_1.a, select(vec4<i32>(13491i, arg_1.c.x << (1u % 32u), -19636i, i32(-1i) * -49583i), vec4<i32>(~(-34769i), arg_1.c.x, -2147483647i, arg_2), select(vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x, true), vec4<bool>(false, arg_1.a.a.x, false, arg_1.a.a.x), !vec4<bool>(arg_1.a.a.x, true, arg_1.a.a.x, arg_1.a.a.x))), _wgslsmith_mod_vec2_i32(countOneBits(~vec2<i32>(arg_1.b.x, arg_2)), u_input.a.zx)), Struct_3(arg_1, Struct_2(arg_1.a, u_input.a, select(arg_1.b.zz, vec2<i32>(arg_2, u_input.a.x), vec2<bool>(arg_1.a.a.x, false)))), arg_0.x, Struct_3(arg_1, Struct_2(Struct_1(!arg_1.a.a), _wgslsmith_add_vec4_i32(vec4<i32>(arg_2, -1i, arg_1.b.x, -42163i), arg_1.b) | _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, arg_2, arg_2), u_input.a), arg_1.c)));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = false;
    let var_1 = select(vec4<bool>(false, arg_0 && any(!vec3<bool>(arg_0, arg_0, false)), all(vec3<bool>(any(vec4<bool>(false, false, arg_0, true)), all(vec3<bool>(arg_0, arg_0, false)), true)), arg_0), vec4<bool>(true, true, true, true), arg_0);
    var var_2 = arg_0 || (func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1098f, 559f)), Struct_2(func_2(vec2<f32>(379f, 250f), Struct_2(Struct_1(vec4<bool>(var_1.x, true, true, var_1.x)), vec4<i32>(30156i, 13411i, -13040i, u_input.a.x), vec2<i32>(u_input.a.x, -80573i)), u_input.a.x).b.a, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1i, -1i), vec4<i32>(0i, u_input.a.x, 5859i, u_input.a.x)), reverseBits(u_input.a.zx)), 2147483647i).e.b.a.a.x & !all(select(vec2<bool>(arg_0, var_1.x), var_1.xw, var_1.yy)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-745f, 221f, -1449f, 1111f) + vec4<f32>(-1000f, 904f, -808f, -610f))))))));
    var var_4 = _wgslsmith_sub_i32(2147483647i, firstLeadingBit(u_input.a.x));
    return u_input.a.x;
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> f32 {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -864f) * _wgslsmith_f_op_f32(f32(-1f) * -1221f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1214f) * _wgslsmith_f_op_f32(-589f + 456f))))), arg_1.a, _wgslsmith_clamp_i32(firstTrailingBit(arg_0), _wgslsmith_dot_vec3_i32(~u_input.a.wyy, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.a.c.x, 2147483647i, arg_1.a.b.x), ~vec3<i32>(-2147483647i, arg_1.a.b.x, 3826i))), countOneBits(-arg_0) ^ max(arg_1.b.b.x, _wgslsmith_sub_i32(u_input.a.x, arg_1.b.b.x))));
    var var_1 = var_0.c.b.a;
    let var_2 = vec4<i32>(-1i, -min(func_3(var_0.b.a.a.x), 41444i), arg_0, -(~var_0.e.a.c.x | 43522i));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + _wgslsmith_f_op_f32(f32(-1f) * -482f)) - 157f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_0.d, var_0.d)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(944f)))))), var_0.d, -947f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, 949f, var_0.d, var_0.d))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2012f, -854f, _wgslsmith_f_op_f32(min(755f, var_0.d)), _wgslsmith_div_f32(var_0.d, var_0.d))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.x)) * 1418f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec2<i32>(u_input.a.x, ~(-1i));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-916f, _wgslsmith_f_op_f32(2497f + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1666f), _wgslsmith_f_op_f32(1218f * -1775f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-704f, -821f, 2447f, -1493f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(277f * 592f), _wgslsmith_f_op_f32(func_1(26059i, Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, false, false)), vec4<i32>(40252i, var_0.x, -2147483647i, 11906i), vec2<i32>(u_input.a.x, 1i)), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), u_input.a, u_input.a.yx)))), 223f, -797f), vec4<f32>(801f, -503f, -408f, 809f)))));
    var var_2 = ~(vec2<u32>(_wgslsmith_clamp_u32(27479u, 9828u, 0u) | countOneBits(4294967295u), 28240u) << (~vec2<u32>(1u >> (1u % 32u), ~66579u) % vec2<u32>(32u)));
    var_2 = ~(~(~vec2<u32>(4294967295u, var_2.x) >> (~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.x, 0u), vec2<u32>(var_2.x, var_2.x), vec2<u32>(1u, 4081u)) % vec2<u32>(32u))));
    var var_3 = u_input.a.x;
    var_2 = ~vec2<u32>(~_wgslsmith_mod_u32(~var_2.x, 868u), 89527u);
    var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>((~var_2.x | (var_2.x >> (var_2.x % 32u))) | abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 1u, 38295u, 10161u), vec4<u32>(85485u, 1u, 0u, var_2.x))), ~0u), abs(vec2<u32>(func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.x, var_1.x))), func_2(var_1.xx, Struct_2(Struct_1(vec4<bool>(false, true, false, true)), u_input.a, var_0), var_0.x).e.b, -19295i).a, ~firstLeadingBit(1479u))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.a.x), ~(~var_2.x));
}

