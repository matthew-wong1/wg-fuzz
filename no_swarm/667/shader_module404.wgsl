struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = 446f;
    let var_1 = Struct_2(Struct_1(true, u_input.d.yy));
    return Struct_2(Struct_1(false, ~(~vec2<u32>(12852u, 0u))));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = select(~(_wgslsmith_sub_u32(u_input.d.x, 29010u) >> (_wgslsmith_sub_u32(u_input.a, 1u) % 32u)) | u_input.c, ~(86396u >> (~(0u >> (u_input.c % 32u)) % 32u)), any(vec4<bool>(false, !any(vec3<bool>(false, true, true)), !(0u < arg_1.x), true)));
    var_0 = 3380u;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -121f) + arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(931f, -606f) * _wgslsmith_div_f32(arg_0, -739f))), arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-486f, -350f)));
    return func_2(vec3<i32>(-1i, u_input.b, 0i)).a;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> vec2<bool> {
    let var_0 = func_2(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, 1i), -abs(1i), _wgslsmith_div_i32(57981i, u_input.b)));
    var var_1 = reverseBits(-(~reverseBits(vec2<i32>(-34526i, u_input.b))));
    var var_2 = func_3(-1000f, u_input.d);
    let var_3 = func_2((vec3<i32>(-1i) * -abs(vec3<i32>(14236i, -2147483647i, -76624i))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(~u_input.a, ~var_0.a.b.x, ~4101u), _wgslsmith_mod_vec3_u32(u_input.d, u_input.d) & ~vec3<u32>(24149u, 22175u, u_input.d.x)) % vec3<u32>(32u)));
    var var_4 = Struct_2(func_3(arg_1.x, u_input.d));
    return !(!vec2<bool>(false, var_4.a.a));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>) -> f32 {
    var var_0 = -u_input.b;
    let var_1 = ~firstTrailingBit(~vec3<u32>(abs(1u), reverseBits(4294967295u), ~u_input.c));
    var_0 = 11003i;
    let var_2 = vec3<bool>(false, arg_0.x, true);
    var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.b >> (var_1.x % 32u), ~u_input.b, i32(-1i) * -32511i), u_input.b | abs(u_input.b), -14837i) & -max(-vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-4190i, -46918i, 0i)), vec3<i32>(u_input.b, select(min(~u_input.b, 13966i), 2147483647i, !all(vec3<bool>(false, true, false))), -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, u_input.b), u_input.b, _wgslsmith_clamp_i32(6632i, 48868i, -2147483647i))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1262f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2414f, 823f) - _wgslsmith_f_op_f32(-268f - 1328f)))) + 1f);
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = ~(~(~(~reverseBits(33434u))));
    var var_1 = Struct_2(Struct_1(true, firstTrailingBit(select(vec2<u32>(85471u, 0u), arg_3.a.b, vec2<bool>(arg_3.a.a, true))) ^ u_input.d.xx));
    var_0 = min(u_input.d.x, var_1.a.b.x ^ func_2(reverseBits(max(vec3<i32>(14376i, 45336i, 19365i), vec3<i32>(-43550i, arg_0, 0i)))).a.b.x);
    var_1 = func_2(select(vec3<i32>(_wgslsmith_mod_i32(arg_0, u_input.b), ~(~0i), u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-29403i, -2147483647i, -2147483647i), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.b, -35057i), vec3<i32>(u_input.b, u_input.b, arg_0)), max(vec3<i32>(arg_0, arg_0, -1856i), vec3<i32>(u_input.b, arg_0, u_input.b))), -vec3<i32>(-41064i, 25187i, u_input.b)), (_wgslsmith_f_op_f32(func_4(vec2<bool>(true, var_1.a.a), vec3<bool>(arg_3.a.a, true, arg_2.x))) > _wgslsmith_f_op_f32(-367f - arg_1.x)) & (2147483647i > (arg_0 ^ 2147483647i))));
    let var_2 = func_2(~_wgslsmith_mult_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_0, -2147483647i), vec3<i32>(arg_0, -2011i, u_input.b)), ~vec3<i32>(arg_0, 2147483647i, -2147483647i) ^ (vec3<i32>(arg_0, 52548i, -4550i) & vec3<i32>(1i, 1i, u_input.b)))).a;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(countOneBits(~(~u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -509f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -520f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(291f, -1271f)))), _wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_f_op_f32(-2104f * 621f), _wgslsmith_div_vec3_f32(vec3<f32>(-1310f, -1478f, -806f), vec3<f32>(-445f, -422f, 255f))), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1419f)), vec2<bool>(true, true), func_2(vec3<i32>(u_input.b, ~countOneBits(-2147483647i), -2147483647i)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(324f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-126f, -1000f, false))))) <= _wgslsmith_f_op_f32(func_4(vec2<bool>(false, var_0.a), !select(vec3<bool>(var_0.a, false, false), vec3<bool>(false, var_0.a, true), vec3<bool>(true, false, var_0.a)))), vec2<u32>(~func_5(i32(-1i) * -9332i, vec4<f32>(-1145f, 1648f, -246f, 1759f), vec2<bool>(var_0.a, true), func_2(vec3<i32>(u_input.b, u_input.b, u_input.b))).b.x, 0u >> (var_0.b.x % 32u)));
    var var_1 = select(vec3<bool>(!func_2(vec3<i32>(u_input.b, u_input.b, 1i)).a.a | all(select(vec2<bool>(false, var_0.a), vec2<bool>(false, true), vec2<bool>(false, false))), !var_0.a, func_5(u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(100f, 116f, -2012f, -1000f), vec4<f32>(-1000f, -1000f, 694f, 329f), true))), func_1(_wgslsmith_f_op_f32(f32(-1f) * -249f), vec3<f32>(-108f, -519f, 1000f)), func_2(vec3<i32>(u_input.b, -1i, u_input.b))).a), select(select(!(!vec3<bool>(var_0.a, var_0.a, false)), !vec3<bool>(false, var_0.a, false), vec3<bool>(u_input.b < 23230i, true, true)), vec3<bool>(func_3(306f, vec3<u32>(var_0.b.x, 0u, 21002u)).a, true, var_0.a), all(vec2<bool>(false, all(vec2<bool>(true, true))))), !vec3<bool>(false, var_0.a & false, all(!vec2<bool>(var_0.a, var_0.a))));
    let var_2 = func_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-354f, _wgslsmith_f_op_f32(-521f - -1157f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1077f, -1089f) - _wgslsmith_div_f32(163f, 1316f))), func_5(-(~(-2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2684f, 1342f, 280f, 734f) * vec4<f32>(-1000f, -1932f, 206f, 1571f))), !(!var_1.xx), Struct_2(func_5(u_input.b, vec4<f32>(269f, 302f, -633f, -376f), var_1.yz, Struct_2(Struct_1(var_1.x, u_input.d.yz))))).a)), ~vec3<u32>(var_0.b.x, ~1u, 51893u));
    let var_3 = ~(vec2<u32>(var_0.b.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(35346u, u_input.c), vec2<u32>(0u, 1u))) >> (func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -153f)), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(0u, u_input.a, 21875u)), ~u_input.d)).b % vec2<u32>(32u)));
    let var_4 = func_5(45912i, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(400f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1057f * -326f), _wgslsmith_div_f32(-1841f, -481f))), _wgslsmith_f_op_f32(-1817f * _wgslsmith_f_op_f32(round(-757f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1121f, _wgslsmith_div_f32(2125f, -371f), 385f, _wgslsmith_f_op_f32(func_4(vec2<bool>(var_1.x, true), vec3<bool>(false, true, var_2.a))))))), vec2<bool>(true, false), Struct_2(func_5(u_input.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-859f, 797f, 1336f, 379f), vec4<f32>(-643f, 700f, 519f, 961f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -586f, -1000f, 1935f) - vec4<f32>(-1446f, 256f, -669f, 472f))), vec2<bool>(any(vec3<bool>(var_1.x, true, false)), var_2.a), func_2(~vec3<i32>(u_input.b, u_input.b, 5795i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -793f), _wgslsmith_f_op_f32(round(-975f)), _wgslsmith_f_op_f32(floor(287f))) - vec3<f32>(879f, 2044f, _wgslsmith_f_op_f32(ceil(625f)))))), abs(firstTrailingBit(abs(u_input.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -318f), vec2<f32>(-150f, 1293f)))))) * vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(2628f)), _wgslsmith_f_op_f32(f32(-1f) * -143f), any(vec3<bool>(var_0.a, false, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-597f, -1014f), _wgslsmith_f_op_f32(func_4(vec2<bool>(var_2.a, var_1.x), vec3<bool>(false, false, var_1.x))))))));
}

