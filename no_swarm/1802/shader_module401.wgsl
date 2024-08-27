struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: u32) -> vec2<bool> {
    var var_0 = Struct_3(Struct_2(arg_3, Struct_1(vec2<i32>(-1i >> (1u % 32u), firstLeadingBit(-1i)), vec2<bool>(select(arg_2.b.x, arg_2.b.x, false), true)), select(select(!vec3<bool>(true, arg_2.b.x, arg_2.b.x), !vec3<bool>(arg_2.b.x, arg_2.b.x, true), vec3<bool>(true, arg_2.b.x, false)), vec3<bool>(true, true, u_input.a <= 38703u), any(!arg_0)), !vec2<bool>(true, arg_2.b.x)), Struct_1(vec2<i32>(-1i, _wgslsmith_div_i32(~(-1i), reverseBits(u_input.c))), vec2<bool>(true & !arg_0.x, true || all(vec4<bool>(false, false, arg_0.x, false)))));
    var_0 = Struct_3(Struct_2(_wgslsmith_mod_u32(u_input.d, 0u), arg_2, !var_0.a.c, vec2<bool>(true, false)), Struct_1(vec2<i32>(var_0.a.b.a.x, ~(~0i)), select(select(arg_2.b, !vec2<bool>(arg_0.x, var_0.a.d.x), arg_0.x), !var_0.a.d, !select(arg_2.b, arg_0, false))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(-1018f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-836f, _wgslsmith_f_op_f32(f32(-1f) * -2036f)) - -164f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-814f * 1635f))))), 1196f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(529f - -524f)))))));
    let var_2 = Struct_1(countOneBits(_wgslsmith_mod_vec2_i32(min(var_0.a.b.a, u_input.b.wy), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -1i), _wgslsmith_sub_vec2_i32(arg_2.a, u_input.b.ww)))), vec2<bool>(arg_2.b.x, true));
    let var_3 = Struct_1(~(-var_2.a), !select(arg_2.b, vec2<bool>(true, true), true));
    return !var_0.b.b;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(Struct_2(~_wgslsmith_mod_u32(select(u_input.a, u_input.d, true), u_input.d >> (u_input.d % 32u)), Struct_1(_wgslsmith_mult_vec2_i32(firstLeadingBit(u_input.b.yy), u_input.b.yz), vec2<bool>(true, true)), vec3<bool>(all(vec4<bool>(true, true, false, true)), all(vec4<bool>(true, true, true, true)), true), func_3(vec2<bool>(any(vec4<bool>(true, false, true, false)), true), _wgslsmith_div_vec3_u32(vec3<u32>(20878u, u_input.a, 21911u) | vec3<u32>(u_input.d, 40708u, u_input.d), vec3<u32>(u_input.a, u_input.a, 39505u)), Struct_1(min(u_input.b.zw, vec2<i32>(-7004i, 1i)), vec2<bool>(true, true)), ~(~u_input.d))), Struct_1(vec2<i32>(~u_input.b.x, 48870i), vec2<bool>(true == all(vec3<bool>(false, false, true)), abs(15765u) != u_input.d)));
    let var_1 = countOneBits(countOneBits(~abs(firstLeadingBit(var_0.a.a))));
    var var_2 = func_3(vec2<bool>(true, true), ~countOneBits(~vec3<u32>(108633u, var_1, 52617u)), Struct_1(select(vec2<i32>(u_input.b.x, var_0.a.b.a.x), _wgslsmith_mod_vec2_i32(vec2<i32>(-10630i, -13420i), vec2<i32>(12913i, var_0.a.b.a.x)), true) & u_input.b.wx, select(select(select(var_0.a.b.b, vec2<bool>(false, true), var_0.b.b), !var_0.a.b.b, true), var_0.a.c.zy, !var_0.b.b)), ~(~(_wgslsmith_mult_u32(var_1, 4294967295u) | 50194u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-613f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -968f)))));
    var_2 = var_0.b.b;
    return var_0.a;
}

fn func_1() -> i32 {
    let var_0 = any(select(!vec4<bool>(true, any(vec2<bool>(true, true)), 11055i >= u_input.b.x, true), vec4<bool>(true, true, true, true), vec4<bool>(false, any(vec3<bool>(true, true, true)), true, false)));
    let var_1 = func_2();
    var var_2 = u_input.b;
    let var_3 = var_1.a;
    var var_4 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3, var_1.a, var_1.a, 0u), vec4<u32>(var_1.a, u_input.d, var_1.a, 0u)) >> (u_input.d % 32u), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(26535u, 15408u), vec2<u32>(var_3, 0u)))) | 37064u, var_1.b, !(!vec3<bool>(true, func_2().b.b.x, any(vec2<bool>(var_1.d.x, false)))), vec2<bool>(true, true));
    return _wgslsmith_add_i32(~(~var_1.b.a.x), _wgslsmith_add_i32(var_2.x, _wgslsmith_div_i32(37155i >> (var_4.a % 32u), _wgslsmith_div_i32(var_4.b.a.x, 2147483647i)) & -var_1.b.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(~_wgslsmith_div_i32(-2147483647i, u_input.c), ~(-u_input.c) >> (u_input.d % 32u)), -func_1() >> (u_input.d % 32u));
    let var_1 = func_2();
    let var_2 = Struct_1(firstTrailingBit(reverseBits(firstTrailingBit(var_1.b.a))), vec2<bool>(true, true));
    let var_3 = !var_1.b.b;
    let var_4 = any(var_1.c.xy);
    let x = u_input.a;
    s_output = StorageBuffer(((~vec4<u32>(u_input.a, 2048u, var_1.a, var_1.a) | (vec4<u32>(var_1.a, 86166u, u_input.d, 38067u) ^ vec4<u32>(var_1.a, 6403u, var_1.a, 4294967295u))) & vec4<u32>(~var_1.a, abs(30591u), ~var_1.a, 1u)) | reverseBits(select(countOneBits(vec4<u32>(u_input.d, var_1.a, var_1.a, var_1.a)), vec4<u32>(var_1.a, 0u, u_input.d, 1u) & vec4<u32>(4294967295u, var_1.a, u_input.d, var_1.a), !vec4<bool>(var_1.c.x, var_2.b.x, true, var_3.x))), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(391f * 1195f), _wgslsmith_div_f32(-477f, 444f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -723f))))), -21673i, select(u_input.b.ywy, abs(max(countOneBits(vec3<i32>(var_0.x, var_2.a.x, 0i)), u_input.b.yzw)), var_4));
}

