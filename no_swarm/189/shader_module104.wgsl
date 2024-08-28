struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
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

var<private> global0: u32 = 64650u;

var<private> global1: Struct_2 = Struct_2(-36416i, vec3<i32>(-19017i, -1i, -10173i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> u32 {
    let var_0 = !all(select(vec4<bool>(any(vec3<bool>(true, true, true)), all(vec4<bool>(true, false, true, true)), all(vec3<bool>(false, true, true)), true), select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))), select(true, true, true)));
    var var_1 = Struct_1(_wgslsmith_mult_vec3_i32(select(min(global1.b, vec3<i32>(u_input.b.x, 21325i, u_input.a)), select(~vec3<i32>(global1.b.x, global1.b.x, 5419i), vec3<i32>(52040i, -34098i, -21810i), true), !select(vec3<bool>(var_0, true, var_0), vec3<bool>(true, var_0, var_0), vec3<bool>(false, false, var_0))), _wgslsmith_div_vec3_i32(~firstTrailingBit(vec3<i32>(u_input.a, u_input.b.x, u_input.b.x)), vec3<i32>(firstLeadingBit(-2147483647i), 0i >> (u_input.d % 32u), -1i))), u_input.e.yy >> (~u_input.e.zz % vec2<u32>(32u)), ~_wgslsmith_add_u32(~_wgslsmith_div_u32(u_input.d, u_input.e.x), ~_wgslsmith_mult_u32(u_input.d, u_input.c)));
    let var_2 = Struct_1(min(global1.b, _wgslsmith_mult_vec3_i32(vec3<i32>(reverseBits(var_1.a.x), -35311i, u_input.a << (0u % 32u)), vec3<i32>(2147483647i, 16221i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 9103i), u_input.b)))), u_input.e.xy, 4530u);
    var var_3 = vec2<f32>(933f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1448f, _wgslsmith_f_op_f32(round(-950f)), all(vec2<bool>(var_0, false)))) + _wgslsmith_f_op_f32(-1181f - _wgslsmith_f_op_f32(step(356f, 2612f))))));
    global0 = _wgslsmith_mult_u32(u_input.e.x, _wgslsmith_mod_u32(u_input.e.x ^ ~(~1u), 32611u));
    return 47738u;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>) -> vec4<bool> {
    global1 = Struct_2(~arg_0.a.x, arg_0.a);
    global0 = firstTrailingBit(func_3());
    var var_0 = arg_0.c;
    let var_1 = any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, true, false), true)));
    global1 = Struct_2(_wgslsmith_div_i32(global1.a, min(_wgslsmith_dot_vec4_i32(vec4<i32>(-16387i, global1.b.x, 7730i, -2147483647i) >> (u_input.e % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(global1.b.x, 889i, u_input.a, arg_0.a.x))), -_wgslsmith_sub_i32(global1.a, global1.b.x))), global1.b);
    return vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -319f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-442f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1866f)) <= _wgslsmith_f_op_f32(trunc(211f)), var_1 || var_1, var_1);
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = !select(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), func_2(arg_3, arg_1 >> (arg_3.c % 32u), ~u_input.e.xyy), !all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), false)));
    let var_1 = true;
    var var_2 = vec3<bool>(var_0.x, all(vec3<bool>(var_1, false, false)), true);
    var var_3 = Struct_2(arg_2.a.x, arg_3.a);
    global1 = Struct_2(arg_2.a.x, -vec3<i32>(i32(-1i) * -2147483647i, -var_3.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_3.b.x, 17151i, u_input.b.x, var_3.a), vec4<i32>(2147483647i, var_3.b.x, 1i, arg_3.a.x)), vec4<i32>(-1i, global1.b.x, arg_3.a.x, -1980i) & vec4<i32>(var_3.b.x, 5490i, -1i, var_3.b.x))));
    return select(vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-17516i, var_3.b.x) | global1.b.x, -1i, 2147483647i), _wgslsmith_sub_i32(7284i, ~countOneBits(-32513i))), firstLeadingBit(min(vec3<i32>(global1.b.x, 2147483647i, 2147483647i) >> (u_input.e.xww % vec3<u32>(32u)), vec3<i32>(1i, -6840i, arg_2.a.x))), false | !all(vec2<bool>(var_2.x, var_1)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<u32>) -> vec3<i32> {
    var var_0 = Struct_2(-(~_wgslsmith_div_i32(u_input.a, 1i)), min(-(~arg_1.b), ~(-vec3<i32>(-19545i, global1.a, arg_1.b.x))) & vec3<i32>(abs(~u_input.a), firstTrailingBit(-19304i), u_input.b.x));
    var_0 = arg_1;
    var var_1 = arg_3.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1435f)))), _wgslsmith_f_op_f32(f32(-1f) * -1156f), _wgslsmith_f_op_f32(-2415f * _wgslsmith_f_op_f32(floor(601f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(212f, -572f, 1000f))))) - vec3<f32>(_wgslsmith_f_op_f32(step(-304f, -757f)), _wgslsmith_f_op_f32(max(-656f, 253f)), _wgslsmith_f_op_f32(-1140f - -420f))))));
    let var_3 = vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.b.x | arg_2.a.x, _wgslsmith_mult_i32(arg_2.a.x, arg_1.a)), -var_0.b.yx), _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, u_input.a)) >> (~u_input.e.yy % vec2<u32>(32u)), vec2<i32>(var_0.b.x << (arg_2.b.x % 32u), 1i))), 1i, ~_wgslsmith_mult_i32(-(~arg_2.a.x), -41845i));
    return vec3<i32>(-2147483647i, u_input.b.x, -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_2(((-75197i | ~u_input.b.x) ^ global1.a) >> (~u_input.d % 32u), func_4(!vec3<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(false, true, true)), false), Struct_2(-_wgslsmith_mult_i32(28216i, -1001i), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1533f, 704f, -598f)), ~u_input.d, Struct_1(global1.b, vec2<u32>(u_input.c, 59434u), 1u), Struct_1(global1.b, vec2<u32>(u_input.d, u_input.e.x), u_input.c))), Struct_1(select(-vec3<i32>(-2147483647i, -62281i, global1.a), global1.b, vec3<bool>(true, false, false)), ~(~vec2<u32>(u_input.e.x, u_input.c)), ~55925u), u_input.e));
    var_0 = true;
    global1 = Struct_2(func_4(select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), func_2(Struct_1(vec3<i32>(14894i, u_input.b.x, -12415i), u_input.e.yy, 86381u), ~u_input.c, ~vec3<u32>(u_input.e.x, 1u, u_input.c)).wwz, func_2(Struct_1(vec3<i32>(-1i, 0i, var_1.b.x), u_input.e.yx, u_input.c), func_3(), vec3<u32>(1u, 76064u, u_input.d)).zwz), Struct_2(global1.a, _wgslsmith_mult_vec3_i32(global1.b, firstLeadingBit(vec3<i32>(-41709i, var_1.b.x, u_input.a)))), Struct_1(-abs(global1.b), vec2<u32>(u_input.d, u_input.c), _wgslsmith_clamp_u32(~u_input.e.x, u_input.c, u_input.d | 0u)), u_input.e).x, vec3<i32>(global1.a, _wgslsmith_dot_vec3_i32(global1.b, vec3<i32>(u_input.b.x, global1.b.x, var_1.b.x)), ~abs(global1.b.x)) ^ var_1.b);
    global0 = 0u;
    global0 = u_input.c;
    var_0 = true;
    let var_2 = u_input.d;
    let var_3 = Struct_2(global1.a, vec3<i32>(442i, -1i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-73858i, ~var_1.b.x), global1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.x);
}

