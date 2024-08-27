struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(60104u, u_input.a, u_input.a), vec3<u32>(120154u, u_input.a, 63107u)), 1u, ~u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 42848u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(8627u, 4294967295u, 11585u)))), abs(_wgslsmith_add_vec3_u32(select(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, u_input.a, 0u), false), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, 29388u), vec3<u32>(3495u, u_input.a, 8933u))))) & countOneBits(~reverseBits(~vec3<u32>(u_input.a, 1u, 51981u)));
    let var_2 = Struct_4(arg_1.x, abs(select(_wgslsmith_mult_vec2_u32(~vec2<u32>(17854u, u_input.a), var_1.xx), max(vec2<u32>(u_input.a, u_input.a), var_1.xz), true)), -2147483647i);
    let var_3 = Struct_1(_wgslsmith_div_vec4_i32(-_wgslsmith_div_vec4_i32(-vec4<i32>(8931i, var_2.c, 2147483647i, var_2.c), firstLeadingBit(vec4<i32>(1i, var_2.c, var_2.c, var_2.c))), _wgslsmith_div_vec4_i32(vec4<i32>(var_2.c, var_2.c, var_2.c << (var_2.b.x % 32u), var_2.c), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, var_2.c, -57214i, -2147483647i), vec4<i32>(-34314i, 21037i, -23133i, var_2.c), vec4<i32>(var_2.c, var_2.c, -3941i, 20498i)), firstTrailingBit(vec4<i32>(0i, var_2.c, 12813i, -23463i))))), vec4<u32>(u_input.a, ~u_input.a, 5954u, 59127u), ~_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.c, var_2.c), vec2<i32>(-1i) * -vec2<i32>(52036i, var_2.c)));
    let var_4 = Struct_2(~_wgslsmith_mod_vec3_i32(-_wgslsmith_add_vec3_i32(var_3.a.xzx, vec3<i32>(-1i, var_2.c, 2147483647i)), var_3.a.zxx), -20338i, vec4<u32>(~var_3.b.x, var_3.b.x, 0u & abs(_wgslsmith_sub_u32(var_2.b.x, u_input.a)), ~abs(~69816u)), var_3, var_3.b);
    return select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(!(!arg_0 || true), arg_0, !(-455f < _wgslsmith_f_op_f32(-var_2.a))), arg_0);
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(253f, 1279f))));
    let var_1 = ~34866u;
    var var_2 = i32(-1i) * -(~(-(~(-29563i))));
    return 26685i;
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(Struct_2(~abs(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 21907i, -2147483647i), vec3<i32>(-2147483647i, -1i, 10443i))), func_4(u_input.a & 0u, func_3(false, vec2<f32>(121f, -393f)), 0u) >> (u_input.a % 32u), ~countOneBits(vec4<u32>(55344u, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, 47043u, u_input.a) % vec4<u32>(32u))), Struct_1(select(select(vec4<i32>(0i, -13066i, -2147483647i, 57391i), vec4<i32>(-1i, -1i, -1i, 1i), vec4<bool>(false, true, false, false)), abs(vec4<i32>(-34975i, 0i, 1i, 1i)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false))), min(firstTrailingBit(vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), vec4<u32>(u_input.a, 1u, u_input.a, 47985u)), ~vec2<i32>(-71722i, -36502i) >> (reverseBits(vec2<u32>(0u, u_input.a)) % vec2<u32>(32u))), vec4<u32>(_wgslsmith_clamp_u32(9597u, u_input.a, 0u), countOneBits(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 9084u, 1u), vec3<u32>(0u, u_input.a, 0u)), 1u) << (abs(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 56590u)) % vec4<u32>(32u))), Struct_2(~abs(vec3<i32>(1i, 1i, 1i)), _wgslsmith_dot_vec4_i32(min(firstLeadingBit(vec4<i32>(66795i, -34976i, 0i, -2147483647i)), -vec4<i32>(-2147483647i, -57618i, -27405i, -24071i)), -countOneBits(vec4<i32>(-1i, -1i, 24033i, 8692i))), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 90115u, 56872u, 17724u), ~vec4<u32>(u_input.a, 0u, u_input.a, 15588u), abs(vec4<u32>(u_input.a, 13414u, 0u, 68849u))), Struct_1(vec4<i32>(1i, 1i, -2147483647i, countOneBits(1i)), ~(~vec4<u32>(4294967295u, u_input.a, 35776u, 0u)), vec2<i32>(_wgslsmith_div_i32(2147483647i, 3157i), ~20363i)), ~vec4<u32>(1u, 4294967295u, u_input.a, max(17773u, u_input.a))));
    let var_1 = var_0.a;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-725f, _wgslsmith_f_op_f32(sign(618f)))))))), ~(~min(_wgslsmith_mod_vec2_u32(var_1.c.xw, var_1.d.b.wx), var_0.a.d.b.xw)), -var_1.b >> (1u % 32u));
    let var_3 = any(!select(vec4<bool>(any(vec4<bool>(false, true, true, false)), true, var_0.a.d.c.x < 23618i, true), vec4<bool>(true, true, true, true), true));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1066f - var_2.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(max(var_2.a, 647f)))))) + var_2.a);
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(exp2(var_2.a)))))), var_2.b >> (~_wgslsmith_add_vec2_u32(reverseBits(var_0.b.d.b.wx), vec2<u32>(var_2.b.x, var_1.e.x)) % vec2<u32>(32u)), ~(firstTrailingBit(-22107i) & (firstTrailingBit(1i) >> (var_2.b.x % 32u))));
}

fn func_1() -> vec3<bool> {
    let var_0 = func_2();
    let var_1 = Struct_2(-vec3<i32>(~1i, -10576i, var_0.c), _wgslsmith_div_i32(select(0i, var_0.c, false), func_4(_wgslsmith_mod_u32(37767u, 1u), vec3<bool>(true, false, false), 3178u)) << (30329u % 32u), ~(~min(vec4<u32>(u_input.a, u_input.a, var_0.b.x, 6321u), vec4<u32>(u_input.a, u_input.a, 11578u, 4294967295u))), Struct_1(~vec4<i32>(~(-1i), _wgslsmith_div_i32(var_0.c, -21093i), 1i, i32(-1i) * -11731i), ~(~(~vec4<u32>(4294967295u, 4294967295u, 64495u, 0u))), -(-vec2<i32>(-15930i, var_0.c) << (vec2<u32>(var_0.b.x, var_0.b.x) % vec2<u32>(32u)))), firstLeadingBit(~(~(~vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)))));
    var var_2 = var_0.a;
    let var_3 = vec2<bool>(select(all(vec3<bool>(true, true, true)), var_1.b < ~38017i, !all(vec4<bool>(false, false, false, false))), false);
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -702f, var_0.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 112f, var_0.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(301f, var_0.a, -122f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -459f, 1026f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-201f, var_0.a, -621f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, var_0.a, -882f), vec3<f32>(var_0.a, 519f, -822f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1356f, var_0.a, 1693f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2325f, -1561f, var_0.a) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a, 144f, var_0.a)))))));
    return !vec3<bool>(!(!(var_3.x && true)), (1591f <= _wgslsmith_f_op_f32(-1941f + var_0.a)) && true, var_3.x);
}

fn func_5(arg_0: vec3<bool>) -> i32 {
    let var_0 = arg_0.yz;
    let var_1 = Struct_3(Struct_2(~vec3<i32>(_wgslsmith_add_i32(1i, 0i), firstLeadingBit(-6357i), -25343i >> (u_input.a % 32u)), 0i, _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, 1u, 1u), vec4<u32>(1u, 67333u, u_input.a, 73287u)), ~vec4<u32>(1u, u_input.a, u_input.a, 4294967295u)), abs(vec4<u32>(118862u, u_input.a, 45331u, 1u)) & countOneBits(vec4<u32>(1u, u_input.a, 40679u, u_input.a))), Struct_1(vec4<i32>(~(-15220i), countOneBits(2147483647i), 1i, 24805i), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 12945u, u_input.a, u_input.a) & vec4<u32>(u_input.a, 1u, u_input.a, 1u), vec4<u32>(u_input.a, 11277u, 5795u, 27786u)), vec2<i32>(1261i, 2773i)), max(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a, 34471u, u_input.a), min(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(4565u, u_input.a, u_input.a, u_input.a))), abs(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))))), Struct_2(vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, -1i, 1i), vec4<i32>(1i, 0i, -14300i, 1623i)), 33074i, -func_4(70863u, vec3<bool>(var_0.x, true, arg_0.x), u_input.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), abs(vec4<i32>(1i, 1i, 1i, 1i))), vec4<u32>(1u, 1u, 5095u, 1u), Struct_1(vec4<i32>(_wgslsmith_div_i32(-4833i, -58312i), _wgslsmith_sub_i32(-23102i, -10867i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2309i, -18279i, -6071i), vec4<i32>(-52233i, 1i, 14700i, 1i)), ~(-5185i)), ~(vec4<u32>(10769u, u_input.a, 4294967295u, 54786u) << (vec4<u32>(0u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))), vec2<i32>(1i, 1i)), vec4<u32>(countOneBits(_wgslsmith_mod_u32(u_input.a, 63903u)), ~(~u_input.a), 0u, _wgslsmith_mult_u32(u_input.a, u_input.a))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -588f);
    var var_3 = var_1.a;
    var_3 = Struct_2(var_1.b.d.a.yzw, select(var_3.b, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.a.a, vec3<i32>(var_3.d.c.x, -20477i, 64594i)), countOneBits(vec3<i32>(var_3.d.a.x, var_3.a.x, var_1.a.b))) & max(~3659i, _wgslsmith_dot_vec2_i32(var_1.a.a.yx, vec2<i32>(0i, var_3.b))), !arg_0.x), _wgslsmith_mult_vec4_u32(var_3.e >> (vec4<u32>(_wgslsmith_mod_u32(71133u, var_3.d.b.x), var_1.b.c.x, 1u, u_input.a & var_1.a.c.x) % vec4<u32>(32u)), vec4<u32>(18162u, var_1.a.c.x, 4294967295u, 4294967295u)), Struct_1(firstLeadingBit(vec4<i32>(select(1i, -2147483647i, arg_0.x), 0i, 8659i, 2147483647i)), var_1.a.c, ~firstTrailingBit(vec2<i32>(-1i, 41918i))), ~(~vec4<u32>(29196u, var_3.d.b.x >> (var_1.b.d.b.x % 32u), ~var_1.a.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.e.x, 4882u), vec2<u32>(1u, 30267u)))));
    return var_3.d.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 452f;
    let var_1 = -1i | func_5(func_1());
    var var_2 = true;
    var_2 = all(vec2<bool>(true, true));
    var_2 = any(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), func_3(true, vec2<f32>(-598f, var_0)).x)));
    let var_3 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(9583u, u_input.a)), u_input.a) | _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(22327u, 3926u), ~vec2<u32>(u_input.a, u_input.a)), abs(~(~vec2<u32>(13719u, 24301u)))), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(0u, u_input.a), u_input.a << (u_input.a % 32u)), vec2<u32>(u_input.a, u_input.a << (u_input.a % 32u))), ~(reverseBits(vec2<u32>(0u, u_input.a)) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))));
    let var_4 = (i32(-1i) * -22809i) > min(-var_1, 1i);
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-864f, _wgslsmith_f_op_f32(1000f * var_0), _wgslsmith_f_op_f32(max(func_2().a, 1000f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(var_0, var_0)), var_0, _wgslsmith_f_op_f32(ceil(var_0))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, var_0, 236f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 607f, var_0)))));
    var_5 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, var_0, -882f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.x, -243f, -736f) * vec3<f32>(-287f, -706f, 790f)))), !select(vec3<bool>(false, false, true), vec3<bool>(var_4, var_4, var_4), false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, var_5.x))))), 221f)), vec4<i32>(~var_1, (reverseBits(var_1) ^ -14281i) << (~(84009u | var_3.x) % 32u), i32(-1i) * -26512i, var_1 ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, 25003i, var_1, var_1), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1, 0i, var_1, var_1), vec4<i32>(var_1, 43873i, 766i, var_1)))), -(vec4<i32>(_wgslsmith_mult_i32(1i, -2147483647i), -21106i, ~var_1, 20980i) >> (min(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.x, var_3.x, u_input.a, 0u), vec4<u32>(var_3.x, 0u, var_3.x, 1u)), vec4<u32>(var_3.x, 1u, u_input.a, var_3.x)) % vec4<u32>(32u))));
}

