struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> f32 {
    let var_0 = ~u_input.b.x;
    let var_1 = _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(~(~firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, var_0))), vec4<u32>(~u_input.b.x, 4294967295u, 1u, var_0)));
    let var_2 = select(!select(!(!vec4<bool>(arg_0.x, false, false, true)), select(vec4<bool>(false, false, false, arg_0.x), vec4<bool>(false, false, false, arg_0.x), vec4<bool>(true, false, false, true)), !(!vec4<bool>(false, arg_0.x, true, arg_0.x))), vec4<bool>(all(vec3<bool>(arg_1 > arg_1, !arg_0.x, arg_0.x & true)), true, true, !(_wgslsmith_div_f32(542f, arg_1) < _wgslsmith_f_op_f32(-arg_1))), !(!(!vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))));
    let var_3 = firstTrailingBit(-24833i >> (select(_wgslsmith_mult_u32(var_0 >> (71403u % 32u), 66727u), var_1 << (firstLeadingBit(u_input.b.x) % 32u), min(u_input.b.x, 4294967295u) > var_0) % 32u));
    var var_4 = ~(~(~abs(u_input.b.xx | vec2<u32>(var_1, 4294967295u))));
    return 298f;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = -1000f;
    var var_1 = Struct_2(Struct_1(-1273f, vec4<bool>(true, true, true, true)), u_input.a, Struct_1(_wgslsmith_f_op_f32(-160f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1389f)) * _wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), var_0)))), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), true)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), var_0)))), var_1.c.b), (i32(-1i) * -_wgslsmith_mult_i32(u_input.a, 7165i)) & abs(-1i), Struct_1(_wgslsmith_div_f32(-1901f, var_0), select(var_1.c.b, !select(vec4<bool>(var_1.a.b.x, false, var_1.c.b.x, false), vec4<bool>(true, false, true, var_1.a.b.x), var_1.a.b), -2147483647i != u_input.a)));
    var var_3 = ~vec4<u32>(~u_input.b.x, firstTrailingBit(u_input.b.x | (0u | arg_0)), ~1u, 70724u);
    var_1 = Struct_2(Struct_1(-1275f, vec4<bool>(true, all(vec2<bool>(var_1.c.b.x, var_2.c.b.x)), var_2.c.b.x, false)), 17721i, var_2.c);
    return var_2.a;
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: bool) -> Struct_3 {
    var var_0 = Struct_3(arg_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.b * arg_1.b)))), func_2(u_input.b.x), 0u);
    var_0 = arg_1;
    let var_1 = 27684u << ((~u_input.b.x | arg_1.d) % 32u);
    var_0 = arg_1;
    var_0 = Struct_3(Struct_1(-110f, !vec4<bool>(true, arg_1.c.b.x, false, false)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.a, arg_1.a.a, 1180f, 588f) - vec4<f32>(var_0.c.a, arg_1.c.a, -801f, 663f)) * vec4<f32>(1000f, var_0.c.a, 163f, 569f))), _wgslsmith_f_op_vec4_f32(-var_0.b)), Struct_1(var_0.c.a, vec4<bool>(arg_2, !(arg_1.d != var_1), any(!vec4<bool>(false, true, false, var_0.c.b.x)), !arg_2)), arg_1.d);
    return Struct_3(func_2(~var_1 | 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.b, vec4<f32>(1544f, var_0.c.a, -251f, arg_1.a.a)) - vec4<f32>(_wgslsmith_f_op_f32(arg_1.b.x + var_0.a.a), _wgslsmith_div_f32(arg_1.c.a, 616f), arg_1.b.x, _wgslsmith_f_op_f32(644f + -1224f)))), func_2(reverseBits(firstTrailingBit(arg_1.d) >> (abs(u_input.b.x) % 32u))), 0u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: i32) -> vec4<bool> {
    let var_0 = arg_0;
    let var_1 = select(2147483647i, select(select(_wgslsmith_dot_vec3_i32(vec3<i32>(1407i, 2147483647i, -4363i), vec3<i32>(arg_1.b, -17915i, u_input.a) | vec3<i32>(arg_1.b, arg_3, -1i)), arg_3, !(!arg_0.c.b.x)), 17343i, true), true);
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1070f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.c.a, var_0.c.a)) + -364f), func_1(u_input.a ^ 1i, var_0, arg_0.b.x != var_0.a.a).a.a)) - vec3<f32>(-1248f, arg_1.a.a, var_0.b.x));
    return arg_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-961f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-824f, -210f))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -407f), -650f)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(962f * var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -1254f)), false)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1000f) * vec2<f32>(-220f, -935f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(415f, var_0.x), vec2<f32>(var_0.x, 209f), false))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-118f, var_0.x)))))));
    var var_2 = Struct_1(var_1.x, !(!func_4(func_1(-53885i, Struct_3(Struct_1(var_1.x, vec4<bool>(true, true, false, true)), vec4<f32>(466f, 1299f, var_0.x, 277f), Struct_1(1000f, vec4<bool>(false, false, true, true)), 1u), true), Struct_2(Struct_1(var_0.x, vec4<bool>(false, true, false, true)), -1i, Struct_1(197f, vec4<bool>(true, false, true, true))), vec3<bool>(false, false, false), -32879i)));
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(ceil(-537f))))), _wgslsmith_div_f32(-1341f, _wgslsmith_f_op_f32(trunc(-827f)))), vec4<bool>((i32(-1i) * -u_input.a) == ~(-32540i << (u_input.b.x % 32u)), true, any(var_2.b.yy), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, -37348i, 0i), vec4<i32>(-2147483647i, -127i, u_input.a, u_input.a))) < max(-1i, abs(u_input.a))));
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_3.a))));
    let var_4 = _wgslsmith_add_u32(~_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x), ~(~0u), 76158u), firstLeadingBit(u_input.b.x));
    let var_5 = ~(~(~vec4<u32>(36888u, 0u, 64335u, 1u)) | ~(~vec4<u32>(var_4, u_input.b.x, var_4, 1u))) ^ firstTrailingBit(_wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(1u, 0u, 33131u, 36255u)), vec4<u32>(countOneBits(32164u), var_4 >> (var_4 % 32u), ~u_input.b.x, 23519u), vec4<u32>(~var_4, var_4, ~u_input.b.x, 1u)));
    var var_6 = _wgslsmith_f_op_f32(-1240f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1185f + var_2.a))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
}

