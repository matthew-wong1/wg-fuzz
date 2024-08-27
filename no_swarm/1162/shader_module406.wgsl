struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>) -> bool {
    let var_0 = ~(_wgslsmith_dot_vec3_u32((u_input.a >> (vec3<u32>(u_input.a.x, u_input.a.x, 64794u) % vec3<u32>(32u))) << ((u_input.a & vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), select(u_input.a, u_input.a, true), vec3<u32>(31093u, 35299u, u_input.a.x))) & _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.a.zy << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), ~16102u));
    let var_1 = select(!vec3<bool>(any(vec4<bool>(true, true, true, true)), !all(vec4<bool>(false, false, false, true)), true), select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), true), select(false, false, true) || true), vec3<bool>(true, !all(vec4<bool>(true, true, true, true)), false), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))), all(vec4<bool>(true, true, true, any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))))));
    var var_2 = Struct_3(vec2<f32>(2244f, 2936f), Struct_1(vec2<i32>(_wgslsmith_add_i32(0i, arg_0.x) ^ arg_0.x, 30091i), max(~1u, 44870u), 2229u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(225f, _wgslsmith_f_op_f32(309f + -2026f), var_1.x))), vec3<u32>(4294967295u, 47150u, 0u ^ u_input.a.x)));
    var_2 = Struct_3(_wgslsmith_div_vec2_f32(var_2.a, vec2<f32>(573f, -196f)), Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(var_2.b.a.x, var_2.b.a.x), 2147483647i), abs(abs(vec2<i32>(-9584i, -36603i))), firstTrailingBit(countOneBits(u_input.b))), u_input.a.x, 84982u, var_2.b.d, abs(reverseBits(~vec3<u32>(70100u, var_0, u_input.a.x)))));
    let var_3 = Struct_2(min(vec3<i32>(firstLeadingBit(13795i), arg_0.x | -50284i, -26568i), vec3<i32>(1i, arg_0.x, -50047i)) | vec3<i32>(_wgslsmith_div_i32(-u_input.b.x, 1i), max(0i, u_input.b.x | 2147483647i), ~u_input.b.x), Struct_1(_wgslsmith_add_vec2_i32(-countOneBits(var_2.b.a), _wgslsmith_div_vec2_i32(countOneBits(var_2.b.a), vec2<i32>(2584i, u_input.b.x) & arg_0)), ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(16846u, u_input.a.x, 1u, 0u), vec4<u32>(var_0, u_input.a.x, 4294967295u, var_2.b.c), vec4<bool>(false, var_1.x, false, false)), max(vec4<u32>(101149u, 4294967295u, 30335u, 1u), vec4<u32>(2434u, 0u, u_input.a.x, var_0))), abs(var_2.b.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2.b.d, var_2.a.x))) - -773f), ~var_2.b.e << (vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, var_0), 6442u, var_2.b.c) % vec3<u32>(32u))), vec2<bool>(all(var_1.zy), !any(var_1)), var_0 >> (4294967295u % 32u));
    return var_3.b.c >= _wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(38725u, min(~u_input.a.x, ~0u)));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-714f, -1395f))))) * -2460f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2037f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - 1051f))));
    let var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(364f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 534f), _wgslsmith_f_op_f32(f32(-1f) * -331f))), _wgslsmith_f_op_f32(153f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(2347f, 511f, true)), 895f))), Struct_1(~reverseBits(-vec2<i32>(u_input.b.x, 1i)), u_input.a.x, min(0u, 0u), -1110f, min(_wgslsmith_div_vec3_u32(~u_input.a, _wgslsmith_mod_vec3_u32(vec3<u32>(65486u, u_input.a.x, u_input.a.x), vec3<u32>(0u, u_input.a.x, u_input.a.x))), firstTrailingBit(~u_input.a))));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.x), -1477f, !(true | func_3(vec2<i32>(u_input.b.x, -14317i)))))));
    var var_2 = var_1.b;
    var var_3 = func_3(~((vec2<i32>(-4931i, var_1.b.a.x) << (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))) << (vec2<u32>(_wgslsmith_add_u32(39989u, 1u), 1u) % vec2<u32>(32u))));
    return (var_2.a.x >= _wgslsmith_dot_vec4_i32(min(vec4<i32>(-32306i, -76623i, u_input.b.x, -50211i), ~vec4<i32>(-1i, -1i, 2147483647i, u_input.b.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.a.x, u_input.b.x, var_1.b.a.x, var_2.a.x) << (vec4<u32>(107869u, 84666u, var_2.c, 4294967295u) % vec4<u32>(32u)), vec4<i32>(30590i, var_1.b.a.x, 0i, var_1.b.a.x) ^ vec4<i32>(-35879i, u_input.b.x, 0i, -1i), firstTrailingBit(vec4<i32>(u_input.b.x, var_2.a.x, var_2.a.x, -4101i))))) & (all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), true)) & true);
}

fn func_1() -> vec3<i32> {
    let var_0 = Struct_1(~firstTrailingBit(u_input.b), u_input.a.x, u_input.a.x, 1264f, vec3<u32>(u_input.a.x, ~u_input.a.x, 77550u));
    let var_1 = ~(~(firstLeadingBit(vec4<u32>(var_0.b, 0u, 0u, 42003u)) ^ (~vec4<u32>(0u, 1u, 11857u, u_input.a.x) | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, var_0.c, 1u), vec4<u32>(0u, 13690u, 22854u, 76907u)))));
    let var_2 = (_wgslsmith_div_vec2_u32(~vec2<u32>(var_0.c, var_1.x), ~vec2<u32>(var_1.x, var_1.x)) << (_wgslsmith_sub_vec2_u32(firstTrailingBit(firstTrailingBit(u_input.a.xz)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(58167u, 11832u), vec2<u32>(31684u, var_1.x), vec2<u32>(1u, 4294967295u))) % vec2<u32>(32u))) ^ ~(~_wgslsmith_div_vec2_u32(~u_input.a.yz, firstTrailingBit(vec2<u32>(u_input.a.x, 0u))));
    let var_3 = func_2();
    let var_4 = select(select(!vec4<bool>(true, true, false | var_3, -2147483647i < var_0.a.x), !select(vec4<bool>(true, true, false, true), !vec4<bool>(false, true, var_3, true), var_3), var_3), vec4<bool>(var_3, any(vec3<bool>(all(vec4<bool>(false, false, true, true)), true, true)), true, var_3), !select(!(!vec4<bool>(var_3, false, false, false)), select(vec4<bool>(false, var_3, false, true), vec4<bool>(var_3, var_3, true, var_3), vec4<bool>(false, var_3, var_3, var_3)), !all(vec4<bool>(false, var_3, var_3, false))));
    return ~min(-max(abs(vec3<i32>(27572i, var_0.a.x, 28143i)), vec3<i32>(var_0.a.x, 53086i, -47613i)), abs(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.x, u_input.b.x, u_input.b.x), vec3<i32>(41248i, -1i, u_input.b.x)), vec3<i32>(1i, -11745i, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_1(u_input.b, 1u, min(firstLeadingBit(abs(_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(4294967295u, u_input.a.x)))), u_input.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1436f + -1516f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1960f, 588f))))))), vec3<u32>(93976u, ~31056u, u_input.a.x));
    var_0 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), ~(-2147483647i), 67065i) << (vec3<u32>(0u, 4294967295u >> (1u % 32u), var_1.c) % vec3<u32>(32u)), reverseBits(vec3<i32>(1i, -var_1.a.x, select(u_input.b.x, var_0.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(vec3<i32>(i32(-1i) * -2147483647i, ~(-44626i), _wgslsmith_dot_vec2_i32(var_1.a, vec2<i32>(-20806i, var_0.x))))), ~(~firstLeadingBit(var_1.a)), var_1.d);
}

