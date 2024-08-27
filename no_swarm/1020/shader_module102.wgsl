struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<f32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(824f)))))), firstLeadingBit(select(u_input.b.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(22737u, u_input.b.x), u_input.b), any(vec4<bool>(true, true, false, true)) && true)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-332f, 128f))));
    var var_1 = Struct_1(var_0.a, var_0.b, vec2<f32>(-424f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(636f + _wgslsmith_f_op_f32(var_0.c.x * 920f)) + _wgslsmith_f_op_f32(exp2(var_0.a)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c.x))), ~(~u_input.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1362f + var_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a, var_1.c.x)) - _wgslsmith_f_op_f32(min(2089f, -1269f))))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1196f, -698f)), var_2.c.x)), var_2.c.x, 668f);
    var var_4 = 1576f;
    return true;
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = select(1i, ~(~arg_0), false);
    let var_1 = func_3(_wgslsmith_sub_i32(-(49042i & arg_1) << (0u % 32u), -arg_1));
    let var_2 = Struct_1(682f, _wgslsmith_div_u32(u_input.b.x, 0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-592f, -154f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-379f, -963f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-835f, 740f)))));
    let var_3 = var_2;
    let var_4 = -1i;
    return var_2;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_u32((~vec4<u32>(0u, 23494u, u_input.b.x, u_input.b.x) & _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 91357u, 58766u, arg_0.b), vec4<u32>(42774u, u_input.b.x, 48119u, arg_0.b), firstTrailingBit(vec4<u32>(u_input.b.x, 40868u, 5399u, u_input.b.x)))) | vec4<u32>(reverseBits(reverseBits(arg_0.b)), reverseBits(_wgslsmith_sub_u32(u_input.b.x, 38935u)), 19758u, reverseBits(~arg_0.b)), select(min(vec4<u32>(27654u, ~28562u, 1u, ~0u), ~(~vec4<u32>(arg_0.b, 17293u, arg_0.b, arg_0.b))), abs(firstTrailingBit(countOneBits(vec4<u32>(0u, arg_0.b, 12339u, 25549u)))), !vec4<bool>(u_input.a <= u_input.a, 24902u < u_input.b.x, true, u_input.b.x >= u_input.b.x)));
    var_0 = abs(_wgslsmith_div_vec4_u32(abs(select(~vec4<u32>(1u, arg_0.b, 22379u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b, 39522u, 1u, u_input.b.x), vec4<u32>(7466u, arg_0.b, var_0.x, arg_0.b)), vec4<bool>(true, true, false, false))), vec4<u32>(var_0.x, reverseBits(countOneBits(u_input.b.x)), abs(reverseBits(arg_0.b)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(43692u, 0u, var_0.x, 15391u), vec4<u32>(u_input.b.x, arg_0.b, var_0.x, arg_0.b)), u_input.b.x | 32011u))));
    var_0 = vec4<u32>(1u, 0u, ~71256u, ~37485u);
    var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(max(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(34130u, 0u, var_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, 0u), u_input.b)), 54653u), u_input.b.x | var_0.x, var_0.x, _wgslsmith_div_u32(_wgslsmith_div_u32(arg_0.b, 93502u), ~(~21545u))), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 7727u));
    var_0 = ~_wgslsmith_mult_vec4_u32(~(~abs(vec4<u32>(1u, 33904u, var_0.x, 67157u))), vec4<u32>(reverseBits(~var_0.x), 64539u, var_0.x, 19715u));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = -1i;
    let var_1 = arg_2.b;
    var var_2 = func_4(func_2(_wgslsmith_dot_vec3_i32(-vec3<i32>(36734i, -24877i, 21502i) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 29988u, 1u), vec3<u32>(u_input.b.x, 34599u, 7915u)) % vec3<u32>(32u)), vec3<i32>(var_0, -2147483647i, 0i) << (~vec3<u32>(0u, 34077u, var_1) % vec3<u32>(32u))), var_0));
    var_2 = arg_0;
    var var_3 = func_4(arg_2);
    return var_3.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(834f * 1813f)) + -334f) * _wgslsmith_f_op_f32(func_1(Struct_1(-1000f, ~u_input.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(425f, 161f) - vec2<f32>(-163f, -227f))), abs(vec2<i32>(-1i, -1i)) ^ countOneBits(vec2<i32>(u_input.a, 2147483647i)), Struct_1(_wgslsmith_f_op_f32(1000f - 407f), ~0u, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-266f, 276f)))), 0i))), -960f);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, 85188i), vec3<i32>(1i, u_input.a, -55917i)) >> (_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(4294967295u, u_input.b.x, 4294967295u)), vec3<u32>(u_input.b.x, 0u, u_input.b.x)) % vec3<u32>(32u))), -(select(~vec3<i32>(u_input.a, -2947i, -1i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, -35875i), vec3<i32>(u_input.a, u_input.a, -650i)), vec3<bool>(true, true, true)) >> ((_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), vec3<u32>(0u, 44959u, 1u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(8459u, u_input.b.x, u_input.b.x), vec3<u32>(1u, u_input.b.x, u_input.b.x))) % vec3<u32>(32u))), max(vec4<i32>(u_input.a, reverseBits(-48809i), 1i >> (1u % 32u), u_input.a) | vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 30234i), vec2<i32>(-2217i, -27865i)), u_input.a, u_input.a, u_input.a), -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1501f, -269f, -239f, 841f) * vec4<f32>(-168f, -879f, 791f, -311f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -218f, 1015f, 405f) + vec4<f32>(-1235f, -596f, -1392f, -1788f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(335f, 367f, 277f, -1000f)))))));
}

