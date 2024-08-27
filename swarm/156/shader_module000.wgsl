struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<u32> {
    let var_0 = u_input.c.yx;
    let var_1 = !vec4<bool>(true, global0.x, any(select(select(global0.xx, vec2<bool>(global0.x, false), global0.xz), select(global0.zz, global0.xy, vec2<bool>(true, false)), true)), global0.x);
    global0 = vec3<bool>(true, var_1.x, global0.x);
    var var_2 = Struct_1(u_input.b.x);
    var var_3 = Struct_1(_wgslsmith_sub_u32(4294967295u, 1u));
    return select(max(vec3<u32>(abs(1u), firstTrailingBit(var_2.a & 1u), max(83996u, ~77170u)), u_input.b ^ (~u_input.b << (abs(vec3<u32>(var_3.a, 1u, u_input.b.x)) % vec3<u32>(32u)))), u_input.b | max(_wgslsmith_sub_vec3_u32(~vec3<u32>(34944u, var_3.a, 4294967295u), vec3<u32>(var_2.a, var_3.a, u_input.b.x) >> (u_input.b % vec3<u32>(32u))), vec3<u32>(1u, _wgslsmith_div_u32(0u, 4294967295u), _wgslsmith_div_u32(var_3.a, 59012u))), !(!(all(var_1.yxz) | !var_1.x)));
}

fn func_2(arg_0: bool, arg_1: f32) -> bool {
    let var_0 = func_3() >> (vec3<u32>(4294967295u, max(u_input.b.x, reverseBits(~u_input.b.x)), ~u_input.b.x) % vec3<u32>(32u));
    var var_1 = -vec3<i32>(u_input.a.x, _wgslsmith_div_i32(35393i, ~firstLeadingBit(-18856i)), u_input.c.x);
    var var_2 = true;
    let var_3 = -12182i;
    let var_4 = max(~(4323u | ~u_input.b.x) ^ ~4294967295u, firstLeadingBit(abs(func_3().x)));
    return global0.x && (~2147483647i == (i32(-1i) * -(~u_input.a.x)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec3<f32>) -> bool {
    global0 = vec3<bool>(func_2(global0.x, -1203f), select(true, !global0.x & !any(global0.xy), false), !((true != !global0.x) & true));
    var var_0 = Struct_2(0i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.x, arg_2.x, _wgslsmith_f_op_f32(-261f * 881f), 436f)))), -448f, Struct_1(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b.x, 26930u, u_input.b.x, u_input.b.x)), reverseBits(vec4<u32>(26395u, u_input.b.x, 4294967295u, u_input.b.x)))));
    let var_1 = false;
    var var_2 = Struct_4(false & ((1i >= ~arg_1.x) & func_2(true, _wgslsmith_div_f32(1348f, arg_2.x))), ~71538u);
    var var_3 = ~var_0.d.a;
    return global0.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: vec3<i32>, arg_3: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_div_vec2_u32(~(~(~(~u_input.b.xz))), ~(vec2<u32>(u_input.b.x, arg_1) & select(min(vec2<u32>(arg_1, arg_1), u_input.b.xz), vec2<u32>(4294967295u, 23981u), any(global0.xy))));
    var var_1 = Struct_4(arg_0.x, var_0.x >> (1u % 32u));
    let var_2 = Struct_4(false, ~(~_wgslsmith_mod_u32(arg_1, u_input.b.x)));
    let var_3 = ~_wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.yz & vec2<u32>(~36579u, u_input.b.x));
    var_0 = u_input.b.zy;
    return 668f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1754f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -73681i;
    var_0 = _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a.yx), _wgslsmith_sub_vec2_i32(~vec2<i32>(-u_input.a.x, 9540i), -u_input.a.xz));
    let var_1 = vec3<bool>(false, !any(vec3<bool>(any(vec3<bool>(false, global0.x, true)), false, all(vec4<bool>(global0.x, false, global0.x, true)))), _wgslsmith_mult_i32(15547i, 1i) <= firstTrailingBit(_wgslsmith_add_i32(-2147483647i, 11492i)));
    var_0 = u_input.c.x;
    var var_2 = func_4(!vec4<bool>(any(!vec4<bool>(true, var_1.x, global0.x, false)), true, false, func_1(reverseBits(vec4<i32>(28889i, 2147483647i, 0i, u_input.c.x)), countOneBits(u_input.c), vec3<f32>(848f, 672f, -1000f))), u_input.b.x, -u_input.a, _wgslsmith_add_vec4_i32(u_input.c, ~u_input.c >> (~max(vec4<u32>(1u, u_input.b.x, 51974u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 65381u, u_input.b.x)) % vec4<u32>(32u))));
    var var_3 = Struct_3(Struct_2(-32130i, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, -740f, _wgslsmith_f_op_f32(max(-720f, 679f)), _wgslsmith_f_op_f32(1035f * -1780f)))), -629f, Struct_1(~u_input.b.x)), vec4<f32>(516f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1142f) + _wgslsmith_div_f32(1318f, -898f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1464f * -491f))), -830f), vec2<bool>(any(vec2<bool>(func_4(vec4<bool>(var_1.x, false, false, false), u_input.b.x, vec3<i32>(u_input.a.x, u_input.c.x, -1i), u_input.c), true)), any(var_1.xy)), Struct_2(-6218i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(698f, -1845f, 2123f, 561f)))), 1004f, Struct_1(~0u)));
    var var_4 = u_input.b;
    var_2 = !(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_3.a.b.x, _wgslsmith_f_op_f32(round(1222f))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-466f * var_3.a.b.x) + _wgslsmith_f_op_f32(select(-777f, -776f, true))) + _wgslsmith_f_op_f32(var_3.a.b.x * -1000f)));
    var_4 = vec3<u32>(8703u, ~(_wgslsmith_dot_vec2_u32(u_input.b.zz, select(vec2<u32>(35265u, var_4.x), var_4.xx, var_1.xz)) ^ ~countOneBits(4294967295u)), max(u_input.b.x, var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, u_input.b.x, 1145f, min(var_4.xx, vec2<u32>(u_input.b.x ^ u_input.b.x, countOneBits(_wgslsmith_mult_u32(4294967295u, var_4.x)))));
}

