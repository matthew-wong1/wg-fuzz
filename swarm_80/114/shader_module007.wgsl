struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1.b.x >> (_wgslsmith_mult_u32(1u, 25616u) % 32u);
    let var_1 = -vec3<i32>(33783i, -_wgslsmith_sub_i32(50194i, ~19370i), -2147483647i);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_0.a, -962f, _wgslsmith_f_op_f32(f32(-1f) * -175f))), _wgslsmith_div_vec4_f32(vec4<f32>(248f, arg_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -394f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, 1000f, arg_1.a) - vec4<f32>(374f, arg_1.a, -899f, 1317f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.a, -1167f, arg_0.a, 1030f)))))));
    var_2 = vec4<f32>(var_2.x, arg_1.a, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a)) - var_2.x), -247f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a))) + 472f);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    var var_0 = firstTrailingBit(firstTrailingBit(vec4<u32>(21727u, ~(~1u), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(23956u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, 48021u, 4294967295u))), _wgslsmith_mod_u32(countOneBits(32103u), ~1u))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(649f)) - _wgslsmith_f_op_f32(-arg_1.a))), arg_2.c.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_1.a, 125f, true)), _wgslsmith_f_op_f32(-arg_1.a)))), _wgslsmith_f_op_f32(-118f - arg_2.b.a)))));
    var var_2 = Struct_1(arg_2.d.a, arg_2.b.b, arg_1.d, any(!(!(!arg_0.wy))));
    let var_3 = ~var_0.x;
    var_1 = _wgslsmith_div_f32(var_2.a, 149f);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.c.a)) + arg_1.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.b.a - -1128f), _wgslsmith_f_op_f32(trunc(arg_2.d.a)))))), _wgslsmith_f_op_f32(f32(-1f) * -1610f))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: vec2<u32>) -> vec3<f32> {
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-161f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(Struct_1(arg_0, vec4<i32>(arg_1, u_input.b, 1672i, u_input.b), false, false), Struct_1(arg_0, vec4<i32>(-34995i, 28082i, u_input.b, 1i), true, true)))))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-272f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_f_op_f32(max(-752f, arg_0)), ~vec4<i32>(u_input.b, arg_1, 0i, 1i), false, true), Struct_2(true, Struct_1(arg_0, vec4<i32>(-2147483647i, u_input.a.x, -2147483647i, 0i), true, false), Struct_1(-961f, vec4<i32>(-1i, -20519i, 1i, u_input.b), true, false), Struct_1(560f, vec4<i32>(1i, -2147483647i, arg_1, 2147483647i), true, false), Struct_1(-1084f, vec4<i32>(-2147483647i, 1i, -1i, arg_1), true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(196f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1275f, 585f)))))), -9677i, select(_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), firstTrailingBit(17293u), true), ~(~vec2<u32>(1u, 1u))));
    let var_1 = vec2<bool>(_wgslsmith_div_f32(var_0.x, var_0.x) == _wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_f_op_f32(-var_0.x), abs(vec4<i32>(u_input.b, 1i, u_input.a.x, -2147483647i)), true, any(vec3<bool>(true, false, false))), Struct_1(-254f, vec4<i32>(u_input.a.x, 10494i, u_input.b, u_input.a.x), true, true))), false);
    let var_2 = Struct_2(all(vec3<bool>(true, var_1.x | true, var_1.x)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1403f), select(select(vec4<i32>(-73162i, 2147483647i, u_input.a.x, u_input.a.x) & vec4<i32>(25587i, u_input.b, u_input.a.x, 0i), vec4<i32>(-24940i, u_input.a.x, u_input.a.x, 39430i), !vec4<bool>(true, true, var_1.x, var_1.x)), countOneBits(~vec4<i32>(-2147483647i, u_input.a.x, 0i, u_input.b)), true), true, all(vec3<bool>(any(var_1), !var_1.x, false))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_0.x)))), countOneBits(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(u_input.b, u_input.b, u_input.a.x, u_input.b)), vec4<i32>(u_input.b, -44457i, 19769i, u_input.b))), u_input.a.x <= abs(min(59063i, u_input.a.x)), var_1.x), Struct_1(var_0.x, vec4<i32>(_wgslsmith_add_i32(u_input.b, u_input.a.x) >> (1u % 32u), -2660i, firstTrailingBit(u_input.b), _wgslsmith_mod_i32(u_input.a.x << (56819u % 32u), 1i)), true, true), Struct_1(_wgslsmith_f_op_f32(-var_0.x), vec4<i32>(u_input.b, -u_input.a.x, 1i, -u_input.a.x) << (min(~vec4<u32>(4294967295u, 4294967295u, 50706u, 58189u), select(vec4<u32>(0u, 0u, 104786u, 3644u), vec4<u32>(18183u, 25118u, 1u, 78952u), var_1.x)) % vec4<u32>(32u)), var_1.x, any(!(!vec3<bool>(true, var_1.x, false)))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(1159f + 1099f))), -1621f)), _wgslsmith_f_op_f32(-var_2.e.a))), vec4<i32>(var_2.d.b.x, ~(-1i), u_input.b, _wgslsmith_dot_vec2_i32(min(vec2<i32>(55934i, var_2.d.b.x), firstTrailingBit(var_2.d.b.xw)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_2.b.b.x, u_input.a.x), reverseBits(vec2<i32>(2147483647i, -1i))))), !select(true, all(var_1), true) != true, all(select(select(vec3<bool>(false, var_1.x, var_1.x), select(vec3<bool>(var_1.x, true, false), vec3<bool>(var_2.d.d, false, var_1.x), true), !var_1.x), select(vec3<bool>(var_1.x, var_2.d.d, true), select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, var_2.b.d, true), vec3<bool>(true, var_1.x, false)), !vec3<bool>(true, var_1.x, true)), true)));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_3.a - var_3.a), -581f, _wgslsmith_f_op_f32(round(1427f))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, 152f, var_3.a), vec3<f32>(896f, var_0.x, 622f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(677f, var_0.x, -1564f)))))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(min(var_0.x, -706f)), -var_2.c.b.x, 1u, reverseBits(vec2<u32>(49424u, 64735u)))).x, _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(-305f - 810f), 0i, 0u, min(vec2<u32>(4294967295u, 1u), vec2<u32>(116053u, 5624u)))).x, _wgslsmith_f_op_f32(-2876f - _wgslsmith_f_op_f32(var_0.x + var_2.d.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -1380f, 1000f), vec3<f32>(643f, 291f, var_0.x)) * vec3<f32>(-451f, 1000f, -350f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.e.a, var_0.x, var_3.a))))))));
    var var_4 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(38192u, 59810u) | select(vec2<u32>(57510u, 4294967295u), vec2<u32>(20601u, 44365u), var_2.a), vec2<u32>(56642u, _wgslsmith_mod_u32(0u, 4294967295u))), countOneBits(~_wgslsmith_add_u32(45441u, 10464u)), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(112479u, 4294967295u), 12003u << (1u % 32u)), 13228u);
    let var_5 = vec4<i32>(-_wgslsmith_mult_i32(min(u_input.a.x, -1i), 2147483647i) >> (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_4.xy ^ var_4.zw, vec2<u32>(var_4.x, var_4.x)), ~(var_4.x ^ var_4.x)) % 32u), ~u_input.b, u_input.a.x, ~(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x, var_2.b.b.x), ~78543i) | abs(26560i << (var_4.x % 32u))));
    var var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_i32(-vec3<i32>(var_3.b.x, var_5.x, -1i), max(-var_5.wzy, var_3.b.zxw)), ~_wgslsmith_dot_vec2_u32(reverseBits(countOneBits(var_4.zy)), _wgslsmith_div_vec2_u32(abs(var_4.xx), vec2<u32>(var_4.x, var_4.x))), var_4.x, _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, max(-var_5.x, u_input.b >> (58141u % 32u)), _wgslsmith_sub_i32(20456i, u_input.b) >> (~1u % 32u), abs(var_6.b.b.x)), reverseBits(vec4<i32>(u_input.b, -43314i, ~2147483647i, var_2.c.b.x >> (var_4.x % 32u))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~var_6.e.b, vec4<i32>(-12435i, 0i, var_3.b.x, -47209i)), var_5)), var_3.a);
}

