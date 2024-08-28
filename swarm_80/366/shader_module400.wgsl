struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(!vec3<bool>(any(vec2<bool>(false, false)), false, !all(vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(min(-614f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - 372f), 2141f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(253f + 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), Struct_1(_wgslsmith_f_op_f32(sign(-526f))));
    var var_1 = var_0.c;
    var var_2 = 5514i;
    let var_3 = var_0.c;
    var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-331f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(537f, 1725f, var_0.a.x)), var_3.a)))));
    return 0u;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = vec3<bool>(arg_3.b.a.x, false, arg_3.b.a.x);
    let var_1 = Struct_4(arg_3, ~_wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(23665u, abs(u_input.e), ~u_input.b.x)), func_3());
    var var_2 = var_1.b.zx;
    let var_3 = 26529u;
    var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(~(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.c, u_input.e, u_input.d.x), u_input.d) << (~var_1.b % vec3<u32>(32u))), var_1.b & _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, 46834u), var_1.b)), 66137u);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(775f * 1021f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_1.a.a.x), arg_3.a.x == arg_1.x)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2) -> f32 {
    let var_0 = arg_2.c;
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1249f * arg_1) - _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.a) * _wgslsmith_f_op_f32(round(258f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -895f))) * arg_1)), Struct_2(vec3<bool>(arg_2.a.x != true, !(8548i < u_input.a), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a)) * arg_1), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a, arg_2.b)) * _wgslsmith_f_op_f32(f32(-1f) * -1727f)))), ~(-1i), func_2(-828f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(421f, -1000f, _wgslsmith_f_op_f32(arg_2.b + arg_1), arg_2.b)), _wgslsmith_div_f32(-611f, 1333f), Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(446f, 1653f, 1083f) - vec3<f32>(arg_1, 1000f, arg_2.b)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a, -430f, var_0.a))))), Struct_2(arg_2.a, -937f, arg_2.c), 5347i, func_2(_wgslsmith_div_f32(1652f, var_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(855f, arg_2.b, 1421f, 786f) * vec4<f32>(1514f, arg_1, arg_1, -163f)), _wgslsmith_f_op_f32(f32(-1f) * -637f), Struct_3(vec3<f32>(arg_1, 144f, -447f), arg_2, u_input.c.x, arg_2.c, 2147483647i)), u_input.a)), -2147483647i);
    var_1 = Struct_3(var_1.a, arg_2, u_input.c.x, func_2(477f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2113f - -1812f), arg_1, arg_1, arg_2.c.a) - vec4<f32>(arg_1, 1f, _wgslsmith_f_op_f32(var_0.a - -347f), _wgslsmith_f_op_f32(round(var_1.b.c.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, var_0.a)) - _wgslsmith_f_op_f32(-var_1.b.c.a)) - _wgslsmith_f_op_f32(-var_0.a)), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -1555f, var_1.b.c.a)), Struct_2(vec3<bool>(arg_2.a.x, false, false), -288f, var_0), 28411i, Struct_1(var_1.d.a), _wgslsmith_sub_i32(~u_input.c.x, countOneBits(2147483647i)))), -1i);
    let var_2 = ~_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 10973u, 64037u), vec3<u32>(arg_0.x, 1u, u_input.e) | arg_0), firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_0.xy, vec2<u32>(u_input.d.x, u_input.b.x)), 69698u)));
    var var_3 = var_1.b.c;
    return _wgslsmith_f_op_f32(-598f * 582f);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(func_4(u_input.d, -448f, Struct_2(vec3<bool>(true, true, true), -1797f, func_2(560f, vec4<f32>(1066f, arg_0.a, arg_1, arg_0.a), arg_1, Struct_3(vec3<f32>(arg_0.a, arg_1, arg_1), Struct_2(vec3<bool>(false, true, true), arg_0.a, Struct_1(arg_1)), u_input.c.x, Struct_1(254f), u_input.c.x))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_div_f32(arg_1, arg_0.a))), all(vec2<bool>(true, all(vec3<bool>(true, true, true)))), all(vec2<bool>(true, true)) && true, !(all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)) || true));
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1275f, 874f, arg_0.a))) * vec3<f32>(_wgslsmith_f_op_f32(max(arg_1, arg_1)), _wgslsmith_div_f32(-815f, 747f), _wgslsmith_f_op_f32(arg_1 * arg_0.a))), Struct_2(select(vec3<bool>(false, false, var_0.x), !vec3<bool>(true, var_0.x, false), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x), false)), 530f, Struct_1(-677f)), -_wgslsmith_div_i32(u_input.c.x, -21623i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -189f))), u_input.a), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~u_input.d << ((u_input.d ^ u_input.d) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(abs(u_input.d), u_input.d ^ u_input.d)), u_input.d), 31040u ^ ~abs(u_input.e));
    return false || !(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.a.a.x, arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1796f))) < arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(1i << (abs(u_input.b.x) % 32u), ~(~_wgslsmith_mult_i32(2147483647i, 1i))), u_input.c.x);
    var var_1 = true;
    var_1 = any(select(vec2<bool>(select(any(vec2<bool>(false, true)), all(vec3<bool>(false, true, false)), func_1(Struct_1(1235f), 792f)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), false))), !select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), true), !all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)))));
    let var_2 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(254f, 1061f, 1333f) * vec3<f32>(1000f, -910f, 366f)) - _wgslsmith_div_vec3_f32(vec3<f32>(1159f, 1830f, -2273f), vec3<f32>(334f, -1785f, -1207f)))), Struct_2(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-363f - -834f))), Struct_1(_wgslsmith_f_op_f32(select(-1256f, 1175f, false)))), 2147483647i, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(146f - 306f)))), -1i), u_input.d, _wgslsmith_mod_u32(u_input.e, u_input.d.x));
    let var_3 = ~(~_wgslsmith_add_vec4_u32(vec4<u32>(~52671u, ~4294967295u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(25082u, 1u), vec2<u32>(0u, u_input.d.x))), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.b.x, var_2.b.x, 8872u, u_input.e), vec4<u32>(1u, 1u, var_2.b.x, u_input.e)) | _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.b.x, 0u, u_input.e, 0u), vec4<u32>(var_2.c, 36245u, u_input.e, u_input.b.x))));
    var var_4 = var_2.a.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.c.x, var_2.a.c, -15575i, countOneBits(var_0.x)));
}

