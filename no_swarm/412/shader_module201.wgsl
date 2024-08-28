struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: u32,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> f32 {
    var var_0 = Struct_2(arg_1, _wgslsmith_f_op_vec4_f32(arg_0.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(974f, -2628f, -672f, 158f)))))), arg_0.c);
    var var_1 = firstTrailingBit(~abs(~32388u));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2142f + arg_0.b.x))) != _wgslsmith_f_op_f32(-arg_0.b.x), vec2<i32>(var_0.c, 1i), u_input.d);
    let var_3 = Struct_2(any(!(!(!vec2<bool>(var_0.a, arg_0.a)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-234f - arg_0.b.x) + _wgslsmith_f_op_f32(1319f - var_0.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + 1574f), var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -490f)), 1i);
    var_0 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0.c, ~(-2469i)), abs(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.c, arg_0.c, -1i), vec3<i32>(var_2.b.x, var_2.b.x, arg_0.c)))) <= ~(arg_0.c | _wgslsmith_sub_i32(0i, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-227f, -929f, -1000f, -107f) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -584f), _wgslsmith_f_op_f32(trunc(arg_0.b.x)), _wgslsmith_div_f32(arg_0.b.x, 2079f), arg_0.b.x))), _wgslsmith_add_i32(abs(1i), _wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-16131i, arg_0.c, u_input.e.x, 8092i), vec4<i32>(1609i, 2147483647i, arg_0.c, var_2.b.x)), _wgslsmith_sub_vec4_i32(~vec4<i32>(var_2.b.x, var_3.c, u_input.e.x, arg_0.c), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, var_0.c, var_3.c, arg_0.c), vec4<i32>(1i, -1i, 0i, var_0.c))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    var var_0 = Struct_2((countOneBits(firstTrailingBit(1u)) == ~0u) & (false != arg_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(121f, -1034f, _wgslsmith_f_op_f32(-464f - -1007f), _wgslsmith_f_op_f32(trunc(-937f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(361f, _wgslsmith_f_op_f32(1258f + -1449f), _wgslsmith_f_op_f32(func_3(Struct_2(true, vec4<f32>(108f, 1608f, 2030f, -178f), arg_0.b.x), false)), -657f))), arg_0.b.x);
    var var_1 = reverseBits(-1i);
    let var_2 = Struct_1(!any(select(vec3<bool>(arg_0.a, arg_0.a, false), select(vec3<bool>(arg_0.a, var_0.a, arg_0.a), vec3<bool>(false, false, true), false), arg_0.a)), abs(_wgslsmith_sub_vec2_i32(~vec2<i32>(arg_0.b.x, 37021i), -_wgslsmith_clamp_vec2_i32(u_input.e, vec2<i32>(arg_1.x, arg_0.b.x), vec2<i32>(u_input.a.x, arg_0.b.x)))), vec3<u32>(_wgslsmith_mult_u32(max(arg_0.c.x << (u_input.b % 32u), 4294967295u), _wgslsmith_sub_u32(abs(4294967295u), arg_0.c.x)), u_input.d.x, abs(reverseBits(~u_input.d.x))));
    var_1 = _wgslsmith_div_i32(~var_2.b.x | -_wgslsmith_add_i32(-318i, arg_0.b.x), var_2.b.x);
    var var_3 = var_0.b.x;
    return var_0.b.x;
}

fn func_1(arg_0: vec2<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1206f, -991f, -757f))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-2156f, -1080f)), _wgslsmith_f_op_f32(func_2(Struct_1(true, u_input.e, vec3<u32>(12656u, 0u, 8934u)), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 4222i))), _wgslsmith_f_op_f32(f32(-1f) * -489f)), vec3<f32>(1200f, _wgslsmith_f_op_f32(abs(712f)), -1949f))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1011f))) * _wgslsmith_f_op_f32(round(1113f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1433f))))), 2367f));
    let var_1 = ~vec4<i32>((-u_input.e.x >> (_wgslsmith_div_u32(u_input.c.x, u_input.b) % 32u)) >> (u_input.b % 32u), ~u_input.e.x, -1i, u_input.a.x);
    var var_2 = true;
    var_2 = false;
    let var_3 = var_1.x | -30308i;
    return vec4<i32>(var_1.x >> (firstTrailingBit(1u) % 32u), select(~(~reverseBits(var_3)), var_3, true), u_input.a.x, ~max(-_wgslsmith_dot_vec2_i32(var_1.xx, u_input.e), ~var_1.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: vec4<i32>) -> vec3<u32> {
    return ~(arg_0.c >> (~vec3<u32>(_wgslsmith_clamp_u32(arg_0.c.x, arg_0.c.x, u_input.d.x), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 57106u, arg_0.c.x, 0u), vec4<u32>(4294967295u, 31190u, arg_0.c.x, u_input.b))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, u_input.a, ~(func_4(Struct_1(true, vec2<i32>(0i, 1i), vec3<u32>(636u, u_input.b, 40229u)), vec2<i32>(u_input.e.x, u_input.a.x), func_1(vec2<bool>(true, true)), ~vec4<i32>(1i, 6341i, u_input.a.x, 0i)) >> (vec3<u32>(39369u, u_input.c.x, ~u_input.d.x) % vec3<u32>(32u))));
    let var_1 = Struct_2(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1702f * -1026f) + 458f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(Struct_1(var_0.a, u_input.e, vec3<u32>(u_input.c.x, 10833u, 1u)), vec4<i32>(u_input.e.x, var_0.b.x, -1i, u_input.e.x))))), 646f, -361f)), _wgslsmith_add_i32(var_0.b.x >> (~(~29844u) % 32u), var_0.b.x));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1147f))));
    let var_3 = any(!(!(!select(vec2<bool>(var_0.a, var_1.a), vec2<bool>(false, true), vec2<bool>(false, true)))));
    let var_4 = -(~(~_wgslsmith_add_i32(1i, 1i)));
    let var_5 = !(!select(select(vec4<bool>(var_0.a, var_1.a, var_0.a, var_3), vec4<bool>(var_3, false, var_3, false), !vec4<bool>(var_0.a, false, var_3, var_1.a)), select(select(vec4<bool>(var_0.a, var_1.a, var_0.a, false), vec4<bool>(var_3, true, var_1.a, var_0.a), vec4<bool>(true, true, true, var_1.a)), select(vec4<bool>(false, var_3, var_1.a, var_1.a), vec4<bool>(var_1.a, true, var_3, var_3), vec4<bool>(true, var_1.a, true, false)), var_1.a), select(vec4<bool>(false, false, var_1.a, var_3), select(vec4<bool>(var_1.a, true, var_1.a, false), vec4<bool>(false, false, var_3, true), true), !vec4<bool>(true, var_3, true, var_3))));
    var var_6 = vec2<bool>(any(!select(select(vec3<bool>(false, var_5.x, false), var_5.zwx, var_0.a), select(var_5.xyy, var_5.zwy, true), select(vec3<bool>(true, var_0.a, var_3), var_5.wwz, var_5.yww))), true);
    let var_7 = var_0;
    var_6 = var_5.yz;
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1475f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(var_5.x, var_1.b, var_0.b.x), true)) - _wgslsmith_f_op_f32(2047f + var_1.b.x)), var_3)), var_1.b.x), 22511i, _wgslsmith_div_i32(1i, var_0.b.x), u_input.b);
}

