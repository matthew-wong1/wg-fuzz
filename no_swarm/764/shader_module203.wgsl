struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: vec3<u32>) -> u32 {
    global0 = arg_0;
    let var_0 = -_wgslsmith_div_vec3_i32(vec3<i32>(-firstTrailingBit(arg_1), arg_1, arg_1), max(min(vec3<i32>(arg_1, -1i, 0i), vec3<i32>(-16987i, arg_1, arg_1)), vec3<i32>(arg_1, 0i, arg_1)) | ~abs(vec3<i32>(arg_1, -3424i, 26189i)));
    global0 = Struct_2(all(select(!(!vec3<bool>(false, false, arg_0.a)), select(select(vec3<bool>(false, arg_0.a, true), vec3<bool>(false, false, arg_0.a), arg_2.a), !vec3<bool>(arg_0.a, true, true), select(vec3<bool>(true, arg_2.a, false), vec3<bool>(arg_0.a, global0.a, arg_2.a), vec3<bool>(true, true, arg_2.a))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(479f, global0.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, -336f)), true))))));
    return 1u;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec3<i32>) -> u32 {
    let var_0 = select(select(!select(!vec4<bool>(global0.a, true, arg_1, global0.a), select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(arg_1, true, global0.a, arg_1), vec4<bool>(true, arg_1, true, false)), all(vec2<bool>(arg_1, arg_1))), select(vec4<bool>(true, true, true, !global0.a), !vec4<bool>(false, global0.a, false, false), select(vec4<bool>(true, true, arg_1, false), select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(true, false, global0.a, global0.a), arg_1), select(vec4<bool>(arg_1, true, global0.a, arg_1), vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(false, false, false, false)))), true), vec4<bool>(arg_1, !any(!vec4<bool>(arg_1, true, false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1024f - global0.b.x) + global0.b.x) <= 854f, arg_1), select(vec4<bool>(global0.a != false, any(vec2<bool>(arg_1, arg_1)), -673f != _wgslsmith_f_op_f32(step(global0.b.x, 928f)), all(!vec3<bool>(arg_1, false, arg_1))), vec4<bool>(_wgslsmith_mult_u32(u_input.a, u_input.b) <= (92487u << (0u % 32u)), all(!vec3<bool>(true, global0.a, false)), false != global0.a, any(!vec2<bool>(global0.a, false))), select(vec4<bool>(all(vec2<bool>(arg_1, false)), global0.a, true, false), select(select(vec4<bool>(false, false, global0.a, true), vec4<bool>(true, true, true, arg_1), false), select(vec4<bool>(true, global0.a, global0.a, arg_1), vec4<bool>(arg_1, true, false, global0.a), vec4<bool>(false, arg_1, arg_1, true)), arg_1), !vec4<bool>(true, true, arg_1, true))));
    global0 = Struct_2(all(!select(select(var_0, vec4<bool>(true, true, false, false), var_0), vec4<bool>(false, true, false, var_0.x), select(vec4<bool>(global0.a, true, false, var_0.x), vec4<bool>(var_0.x, arg_1, var_0.x, false), false))), vec2<f32>(global0.b.x, global0.b.x));
    let var_1 = -(~(~arg_2.x)) != (~_wgslsmith_mult_i32(arg_2.x, _wgslsmith_div_i32(17328i, arg_2.x)) | -23288i);
    global0 = Struct_2(false, global0.b);
    var var_2 = Struct_1(~vec2<i32>(select(_wgslsmith_mult_i32(arg_2.x, arg_2.x), reverseBits(arg_2.x), var_1), abs(arg_2.x ^ arg_2.x)), _wgslsmith_add_i32(arg_2.x, _wgslsmith_add_i32(arg_2.x, _wgslsmith_add_i32(_wgslsmith_div_i32(1i, arg_2.x), _wgslsmith_div_i32(-1i, 15056i)))));
    return 47794u;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(global0.b - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, -556f)), global0.b, any(vec4<bool>(false, false, global0.a, global0.a)))), global0.b, global0.a)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b.x, global0.b.x)) + global0.b.x), _wgslsmith_f_op_f32(exp2(global0.b.x)), _wgslsmith_mult_i32(arg_0, 38774i) == (arg_0 << (arg_2 % 32u)))) + var_0.x), 1589f);
    let var_2 = func_4(_wgslsmith_clamp_u32(0u, ~(~0u), 34797u) & ~func_3(Struct_2(true, global0.b), arg_1.b, Struct_2(global0.a, vec2<f32>(var_0.x, 1000f)), vec3<u32>(63182u, u_input.d, 0u)), !global0.a, -(~vec3<i32>(~4822i, i32(-1i) * -2147483647i, -2147483647i)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * global0.b.x) + -894f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-137f * 1000f))));
    let var_4 = !select(!vec2<bool>(true, !global0.a), select(!vec2<bool>(global0.a, global0.a), vec2<bool>(-1368f > global0.b.x, true), vec2<bool>(true, 7603u <= arg_2)), any(select(vec2<bool>(true, true), !vec2<bool>(false, global0.a), false)));
    return Struct_2(var_4.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, global0.b.x) - _wgslsmith_f_op_vec2_f32(-var_0))));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global0 = arg_0;
    global0 = Struct_2(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 940f)))));
    var var_0 = Struct_1(select(firstLeadingBit(firstLeadingBit(reverseBits(vec2<i32>(-1i, 94i)))), vec2<i32>(1i, 1i), func_2(-9257i, Struct_1(~vec2<i32>(2147483647i, -10901i), _wgslsmith_mult_i32(0i, 0i)), u_input.a).a), -1i);
    let var_1 = Struct_1(vec2<i32>(-2147483647i, -(-var_0.a.x ^ (-14501i << (u_input.a % 32u)))), -42382i);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1009f);
    return func_2(firstLeadingBit(0i), var_1, 1u);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: bool) -> Struct_2 {
    global0 = Struct_2(true, _wgslsmith_f_op_vec2_f32(-arg_0.b));
    global0 = func_5(func_2(i32(-1i) * -1834i, Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, arg_1.x), -arg_1.yy), _wgslsmith_sub_i32(arg_1.x, arg_1.x)), u_input.b));
    var var_0 = Struct_1(-firstLeadingBit(~vec2<i32>(2147483647i, arg_1.x)), -2147483647i);
    var var_1 = Struct_1(vec2<i32>(~var_0.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(arg_1.x, arg_1.x, var_0.a.x), vec3<i32>(22205i, -2147483647i, arg_1.x) ^ arg_1), select(firstLeadingBit(arg_1), arg_1, arg_2))), reverseBits(var_0.a.x));
    var var_2 = global0.a;
    return Struct_2(arg_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, _wgslsmith_div_f32(global0.b.x, 283f))));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<u32>) -> Struct_2 {
    global0 = Struct_2(func_2(-firstLeadingBit(1i), Struct_1(arg_1.yz, reverseBits(-48165i)), ~85349u).a || !(global0.b.x != _wgslsmith_f_op_f32(-761f + arg_0.b.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 312f), global0.b, false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(func_5(Struct_2(true, vec2<f32>(global0.b.x, global0.b.x))).b)) * _wgslsmith_f_op_vec2_f32(arg_0.b * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-659f, global0.b.x), global0.b, vec2<bool>(false, true)))))));
    let var_0 = select(abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_2.x, 43560u, 0u, u_input.a), select(~vec4<u32>(65511u, u_input.b, arg_2.x, u_input.d), select(vec4<u32>(4294967295u, 0u, 68902u, 97984u), vec4<u32>(u_input.c.x, 16865u, 14712u, arg_2.x), arg_0.a), vec4<bool>(true, false, false, true)))), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(arg_2.x, 4294967295u, ~0u, arg_2.x)), ~min(vec4<u32>(arg_2.x, 75769u, 1863u, u_input.b), vec4<u32>(arg_2.x, 30273u, u_input.c.x, 9800u)) & vec4<u32>(~4294967295u, 1u, arg_2.x, reverseBits(21363u))), vec4<bool>(-350f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), arg_0.a, false, !global0.a));
    global0 = func_2(max(10226i, 2777i), Struct_1(firstTrailingBit(countOneBits(vec2<i32>(-53405i, arg_1.x)) >> ((vec2<u32>(20019u, 4294967295u) ^ var_0.zy) % vec2<u32>(32u))), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1.x, arg_1.x), arg_1.xx >> (reverseBits(vec2<u32>(1u, 1u)) % vec2<u32>(32u)))), var_0.x);
    var var_1 = vec4<i32>(~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-1i, 2147483647i, 22212i, arg_1.x)), _wgslsmith_div_vec4_i32(arg_1, vec4<i32>(0i, arg_1.x, arg_1.x, arg_1.x))), arg_1.x << (var_0.x % 32u), -2147483647i, 6247i) << (vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.d, var_0.x)), min(reverseBits(u_input.c), ~arg_2)), u_input.c.x, _wgslsmith_dot_vec3_u32(var_0.zwx, select(~var_0.yyw, _wgslsmith_add_vec3_u32(var_0.yzy, vec3<u32>(u_input.b, var_0.x, 1u)), !vec3<bool>(arg_0.a, global0.a, false))), arg_2.x) % vec4<u32>(32u));
    let var_2 = Struct_2(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1077f, arg_0.b.x)) + vec2<f32>(global0.b.x, 306f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-585f, global0.b.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, -615f)))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(select(arg_0.b.x, global0.b.x, global0.a)), global0.b.x)))));
    return Struct_2(true, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_0.b - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-677f, 658f) * var_2.b)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b) + vec2<f32>(arg_0.b.x, -1271f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_1(Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b * global0.b) - global0.b)), vec3<i32>(-1i, ~(-31712i), min(~2147483647i, _wgslsmith_div_i32(12607i, -4910i))), global0.b.x > global0.b.x), vec4<i32>(1i, 1i, 1i, 1i), vec2<u32>(38203u, ~u_input.c.x));
    var var_0 = 0u;
    let var_1 = min(vec4<u32>(u_input.a, u_input.a, 22192u, firstLeadingBit(u_input.c.x)), select(_wgslsmith_div_vec4_u32(vec4<u32>(max(44472u, u_input.a), select(0u, u_input.b, true), abs(64637u), 1u), ~vec4<u32>(u_input.d, 59678u, u_input.a, 18442u)), vec4<u32>(reverseBits(12520u), ~_wgslsmith_div_u32(u_input.c.x, 14889u), _wgslsmith_add_u32(u_input.b, 25726u), abs(1u)), global0.a));
    var_0 = 1u;
    let var_2 = var_1.xyy;
    var_0 = 78199u;
    var_0 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~2147483647i));
}

