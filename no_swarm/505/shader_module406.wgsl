struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = Struct_1(i32(-1i) * -4847i);
    let var_1 = Struct_4(vec4<f32>(_wgslsmith_div_f32(-513f, -1466f), _wgslsmith_f_op_f32(-871f * 114f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-685f, -775f)), -629f)), _wgslsmith_f_op_f32(-898f + _wgslsmith_f_op_f32(max(-917f, 897f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-910f)) * -1163f), -982f))), -298f);
    let var_2 = Struct_1(var_0.a);
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(var_1.a.wyy));
    var var_4 = Struct_2(~vec4<i32>(-1i, firstLeadingBit(_wgslsmith_add_i32(-1i, u_input.c.x)), u_input.c.x, var_2.a >> (~arg_0 % 32u)), Struct_1(u_input.b.x), _wgslsmith_f_op_f32(var_3.x + 1f));
    return max(~_wgslsmith_div_i32(-1i, ~1i), -13238i);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = u_input.a.x;
    var var_1 = arg_1.a;
    let var_2 = true == !(_wgslsmith_sub_i32(-4752i, arg_0.x) <= arg_2.a);
    let var_3 = Struct_3(arg_2.a << (_wgslsmith_clamp_u32(abs(reverseBits(4294967295u)), ~44770u, 22176u) % 32u), Struct_2(~vec4<i32>(arg_0.x, 7367i, u_input.e.x, _wgslsmith_dot_vec3_i32(u_input.e, u_input.e)), Struct_1(1i), var_1.x), Struct_2(vec4<i32>(~0i, ~(-1i), abs(reverseBits(u_input.e.x)), countOneBits(1i)), Struct_1(func_3(max(16804u, 6620u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1798f))))));
    var var_4 = abs(firstTrailingBit(~(vec3<u32>(6667u, u_input.d.x, u_input.d.x) >> (vec3<u32>(var_0, u_input.d.x, 31275u) % vec3<u32>(32u))))) << (vec3<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(59417u, 0u, u_input.a.x) ^ vec3<u32>(20426u, 1u, var_0)), max(max(vec3<u32>(22220u, 46820u, u_input.a.x), vec3<u32>(u_input.a.x, var_0, var_0)), ~vec3<u32>(17426u, 0u, u_input.d.x))), u_input.a.x ^ var_0, u_input.a.x) % vec3<u32>(32u));
    return var_4.xy;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = u_input.d.x << (arg_0.x % 32u);
    var var_1 = Struct_3(u_input.e.x, Struct_2(firstTrailingBit(firstTrailingBit(-vec4<i32>(12750i, u_input.b.x, arg_2, 0i))), Struct_1(_wgslsmith_clamp_i32(u_input.c.x, -31721i, arg_2)), -1360f), Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, select(-46318i, -1i, true), i32(-1i) * -53071i), select(vec4<i32>(9486i, 30052i, u_input.b.x, 2147483647i) << (vec4<u32>(0u, u_input.a.x, var_0, 81890u) % vec4<u32>(32u)), min(vec4<i32>(u_input.c.x, -1i, -12387i, arg_2), vec4<i32>(-17330i, -17966i, 0i, 42428i)), vec4<bool>(true, true, true, true))), Struct_1(firstLeadingBit(arg_2)), _wgslsmith_f_op_f32(abs(-1000f))));
    let var_2 = !(arg_1.x > _wgslsmith_sub_u32(~1545u, _wgslsmith_add_u32(u_input.a.x, ~var_0)));
    var_1 = Struct_3(~var_1.c.a.x, var_1.c, Struct_2(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -2147483647i, var_1.b.a.x, 0i), ~vec4<i32>(var_1.b.b.a, var_1.a, 1i, 1i))), Struct_1(func_3(abs(1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-287f - -653f))) - 990f)));
    var_1 = Struct_3(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_1.c.a.yxw, _wgslsmith_div_vec3_i32(max(vec3<i32>(arg_2, var_1.c.a.x, arg_2), vec3<i32>(arg_2, u_input.c.x, 890i)), -u_input.e)), abs(~reverseBits(vec3<i32>(-23964i, 0i, 21173i)))), var_1.c, Struct_2(var_1.b.a << ((vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 4294967295u) << (abs(vec4<u32>(arg_0.x, 28250u, 4294967295u, 7247u)) % vec4<u32>(32u))) % vec4<u32>(32u)), var_1.c.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-797f - _wgslsmith_f_op_f32(var_1.c.c * var_1.b.c)), 577f))));
    return var_1.b.b;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32, arg_3: vec4<i32>) -> f32 {
    let var_0 = reverseBits(arg_3);
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-820f, -1477f, arg_2, arg_2), vec4<f32>(arg_2, 1850f, -393f, arg_2), false)) + vec4<f32>(arg_2, arg_2, arg_2, arg_2))))), _wgslsmith_f_op_f32(trunc(-1350f)));
    let var_2 = ~firstLeadingBit(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.a.x, 4677u, u_input.a.x), vec4<u32>(19066u, u_input.a.x, 35115u, u_input.a.x)), ~(~12288u), u_input.d.x));
    var var_3 = arg_0.zy;
    var var_4 = func_4(~(~var_2.zwz), select(vec2<u32>(var_2.x, 0u), ~_wgslsmith_add_vec2_u32(func_2(u_input.c, Struct_4(var_1.a, arg_2), Struct_1(var_3.x)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, var_2.x), u_input.d)), false), abs(~select(~(-52123i), reverseBits(1i), all(vec3<bool>(true, true, true)))));
    return -1187f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(true, ~1u <= u_input.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-853f + 335f), _wgslsmith_f_op_f32(func_1(u_input.e, Struct_1(u_input.c.x), -1263f, vec4<i32>(56317i, -1i, u_input.c.x, 0i))))) <= -465f), !vec3<bool>(!any(vec3<bool>(false, false, false)), all(vec3<bool>(false, false, false)), false), vec3<bool>(-38438i == u_input.b.x, any(vec3<bool>(true, true, true)), true));
    var_0 = vec3<bool>((select(u_input.c.x, firstTrailingBit(1i), false) | u_input.b.x) == ~29328i, true, true && any(select(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(false, false, var_0.x, var_0.x), var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), !vec4<bool>(var_0.x, true, false, var_0.x))));
    var_0 = !select(!(!vec3<bool>(true, var_0.x, true)), !(!(!vec3<bool>(true, var_0.x, true))), !all(vec2<bool>(false, true)));
    var var_1 = Struct_2(abs(vec4<i32>(-2147483647i, -_wgslsmith_mult_i32(u_input.e.x, u_input.b.x), abs(u_input.c.x), -u_input.b.x)), Struct_1(-2147483647i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-365f, _wgslsmith_div_f32(-379f, -800f)), -465f)))));
    var var_2 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) - _wgslsmith_f_op_f32(-731f + 581f)) - _wgslsmith_f_op_f32(-var_1.c))), ~vec2<u32>(~_wgslsmith_div_u32(u_input.d.x, 37182u), u_input.a.x), u_input.b);
}

