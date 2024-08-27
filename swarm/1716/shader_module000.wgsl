struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(432f, 200f, 935f));

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(-773f, vec2<bool>(false, false), 219f, vec2<bool>(false, false), vec2<u32>(19438u, 4294967295u)), Struct_1(-594f, vec2<bool>(false, false), 519f, vec2<bool>(false, false), vec2<u32>(4294967295u, 18281u)), Struct_1(1983f, vec2<bool>(false, false), -1032f, vec2<bool>(false, false), vec2<u32>(47483u, 4294967295u)), Struct_1(466f, vec2<bool>(true, true), 1026f, vec2<bool>(true, true), vec2<u32>(4294967295u, 4294967295u)), Struct_1(1043f, vec2<bool>(true, false), -158f, vec2<bool>(true, true), vec2<u32>(4294967295u, 0u)), Struct_1(826f, vec2<bool>(false, false), 1871f, vec2<bool>(true, false), vec2<u32>(0u, 0u)), Struct_1(208f, vec2<bool>(false, false), 1441f, vec2<bool>(false, false), vec2<u32>(31181u, 1u)), Struct_1(-1553f, vec2<bool>(true, false), 1000f, vec2<bool>(false, true), vec2<u32>(0u, 1u)), Struct_1(-1375f, vec2<bool>(true, true), -1223f, vec2<bool>(false, true), vec2<u32>(1u, 0u)), Struct_1(-1177f, vec2<bool>(false, true), -550f, vec2<bool>(false, true), vec2<u32>(53900u, 0u)), Struct_1(-464f, vec2<bool>(true, false), -1003f, vec2<bool>(true, true), vec2<u32>(6848u, 26140u)), Struct_1(-1326f, vec2<bool>(true, false), 1433f, vec2<bool>(false, false), vec2<u32>(52235u, 0u)), Struct_1(878f, vec2<bool>(false, true), -721f, vec2<bool>(false, true), vec2<u32>(60852u, 21564u)), Struct_1(501f, vec2<bool>(true, true), -1781f, vec2<bool>(true, true), vec2<u32>(0u, 4219u)));

var<private> global2: array<vec3<f32>, 4>;

var<private> global3: Struct_1;

var<private> global4: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -650f) + _wgslsmith_f_op_f32(trunc(global3.a))))))), vec2<bool>(!(!global3.d.x) | !all(vec3<bool>(arg_0.b.x, arg_0.b.x, global3.b.x)), global3.b.x), global3.c, vec2<bool>(arg_0.d.x, true), vec2<u32>(max(global3.e.x, 0u), global3.e.x));
    global2 = array<vec3<f32>, 4>();
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(~countOneBits(arg_0.e.x), _wgslsmith_mult_u32(3469u, 0u)) & select(max(arg_0.e, _wgslsmith_sub_vec2_u32(vec2<u32>(29232u, 17808u), arg_0.e)), global3.e, true), var_0.e);
    var_1 = ~firstTrailingBit(_wgslsmith_mult_vec2_u32(arg_0.e, ~vec2<u32>(32142u, 1u)));
    let var_2 = -1000f;
    return abs(countOneBits(abs(_wgslsmith_div_u32(14394u, var_0.e.x >> (0u % 32u)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<bool>) -> bool {
    global2 = array<vec3<f32>, 4>();
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.e.x, ~func_3(Struct_1(-636f, arg_1.yx, _wgslsmith_f_op_f32(1062f + global3.a), select(vec2<bool>(true, true), vec2<bool>(arg_0.b.x, arg_1.x), arg_2.x), ~vec2<u32>(global3.e.x, arg_0.e.x)), u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(~(~28747u), ~4294967295u, arg_0.e.x ^ 1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(25685u, 1u, arg_0.e.x), vec3<u32>(4294967295u, 0u, 21872u)), ~global3.e.x, global3.e.x)), _wgslsmith_add_vec4_u32(~(~vec4<u32>(global3.e.x, 28649u, 154554u, 9483u)), vec4<u32>(1u, arg_0.e.x, global3.e.x, global3.e.x) | (vec4<u32>(global3.e.x, global3.e.x, 1u, 2789u) >> (vec4<u32>(arg_0.e.x, arg_0.e.x, 53510u, arg_0.e.x) % vec4<u32>(32u)))))), 14u)];
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(global3.a, global3.c)), !(!arg_0.d), _wgslsmith_div_f32(arg_0.c, -829f), arg_0.d, vec2<u32>(1u, arg_0.e.x) & select(vec2<u32>(global3.e.x | 0u, ~arg_0.e.x), ~arg_0.e, !(!arg_0.d)));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(249f + var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + -601f)))))));
    global4 = array<vec3<bool>, 29>();
    return all(!vec3<bool>(any(vec4<bool>(false, false, false, arg_1.x)), false, arg_0.d.x));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = !func_2(global1[_wgslsmith_index_u32(global3.e.x, 14u)], vec3<bool>(global3.b.x, all(vec2<bool>(global3.b.x, global3.d.x)), global3.e.x >= _wgslsmith_div_u32(arg_1.e.x, 4294967295u)), arg_1.d);
    let var_1 = -17309i;
    global1 = array<Struct_1, 14>();
    let var_2 = global1[_wgslsmith_index_u32(global3.e.x, 14u)];
    let var_3 = global1[_wgslsmith_index_u32(~(~(~12050u)), 14u)];
    return vec4<bool>(!var_0, (~(~var_2.e.x) << (11095u % 32u)) != var_3.e.x, !((!arg_1.d.x != any(vec4<bool>(false, true, global3.b.x, arg_1.d.x))) & !func_2(Struct_1(1529f, arg_1.d, var_3.c, var_3.d, vec2<u32>(39611u, 67660u)), global4[_wgslsmith_index_u32(var_3.e.x, 29u)], var_2.d)), true);
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<bool>, arg_3: vec2<i32>) -> u32 {
    global0 = array<vec3<f32>, 1>();
    let var_0 = ~(-vec3<i32>(~arg_3.x, arg_3.x, u_input.a)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -arg_3.x, -(arg_3.x ^ 1i), -12947i), ~(~_wgslsmith_sub_vec3_i32(vec3<i32>(arg_3.x, u_input.a, u_input.a), vec3<i32>(2699i, 6816i, 28574i))));
    let var_1 = u_input.a;
    var var_2 = countOneBits(vec2<u32>(global3.e.x, 1u));
    var var_3 = vec4<bool>(arg_2.x, true, arg_0.x, !(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-192f + -1000f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1379f, global3.a, arg_0.x)))));
    return reverseBits(~(~_wgslsmith_div_u32(~var_2.x, 19792u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 4>();
    global1 = array<Struct_1, 14>();
    var var_0 = _wgslsmith_add_u32(global3.e.x, max(_wgslsmith_mod_u32(global3.e.x, ~1u), select(~(~global3.e.x), 4294967295u, false)));
    let var_1 = global1[_wgslsmith_index_u32(~1u, 14u)];
    let var_2 = vec4<u32>(global3.e.x | abs(_wgslsmith_mult_u32(~var_1.e.x, _wgslsmith_mult_u32(var_1.e.x, 28706u))), global3.e.x, func_4(vec2<bool>(905f <= _wgslsmith_f_op_f32(-962f - global3.c), !(var_1.b.x && global3.d.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c * global3.a) + _wgslsmith_f_op_f32(step(921f, global3.c))))), select(vec4<bool>(1u >= global3.e.x, !global3.d.x, any(global3.d), all(vec2<bool>(true, false))), vec4<bool>(true, true, var_1.b.x, 2147483647i > u_input.a), func_1(_wgslsmith_f_op_f32(trunc(var_1.a)), Struct_1(1178f, vec2<bool>(var_1.b.x, var_1.d.x), var_1.c, vec2<bool>(global3.b.x, false), vec2<u32>(4294967295u, var_1.e.x)))), -(~(-vec2<i32>(u_input.a, -1i)))), 1u);
    global4 = array<vec3<bool>, 29>();
    var var_3 = vec3<bool>(any(global4[_wgslsmith_index_u32(var_2.x, 29u)]), !var_1.b.x, global3.b.x != true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c + 440f) * var_1.a))), abs(56747u), vec4<i32>(-1i, firstTrailingBit(min(_wgslsmith_mult_i32(-1i, u_input.a), u_input.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(23717i, _wgslsmith_add_i32(u_input.a, u_input.a)), ~vec2<i32>(-5123i, u_input.a) << (~vec2<u32>(global3.e.x, global3.e.x) % vec2<u32>(32u))), _wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-11594i, u_input.a, u_input.a, u_input.a)), -vec4<i32>(u_input.a, 13006i, u_input.a, u_input.a)))), vec2<i32>(u_input.a >> (9871u % 32u), i32(-1i) * -2147483647i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(621f, global3.c)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-695f, 363f) * vec2<f32>(-190f, global3.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(298f, 516f), vec2<f32>(var_1.a, global3.c), global3.d.x))))));
}

