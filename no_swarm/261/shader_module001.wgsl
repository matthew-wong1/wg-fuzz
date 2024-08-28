struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_dot_vec2_u32(arg_0.xy, select(arg_0.xx, vec2<u32>(_wgslsmith_div_u32(arg_0.x, arg_0.x), 1u), !any(vec4<bool>(false, true, false, true))) << ((arg_0.yx >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return select(select(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(true, false)), true)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), 1u < _wgslsmith_div_u32(1u, arg_0.x)), vec2<bool>(true, !(69223i == arg_2.x))), vec2<bool>(select(true, arg_0.x >= arg_0.x, arg_1.x <= 2147483647i), ~min(arg_0.x, arg_0.x) >= 4294967295u), !(!vec2<bool>(all(vec2<bool>(false, true)), all(vec4<bool>(true, false, false, false)))));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = func_3(_wgslsmith_sub_vec3_u32(~(vec3<u32>(u_input.b, 7402u, u_input.b) & ~vec3<u32>(u_input.c.x, 13000u, u_input.b)), ~(~vec3<u32>(u_input.c.x, 1u, u_input.b)) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.b), vec2<u32>(u_input.b, u_input.b)), ~u_input.c.x, u_input.b) % vec3<u32>(32u))), u_input.d, ~_wgslsmith_add_vec4_i32(~(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), -vec4<i32>(-1i, u_input.a, 2147483647i, u_input.a)), countOneBits(_wgslsmith_add_i32(u_input.a, _wgslsmith_mult_i32(0i, -1i)) | _wgslsmith_sub_i32(u_input.a, 42599i)));
    let var_1 = vec4<bool>(var_0.x, !arg_2.a.x, false | all(select(!vec2<bool>(arg_2.a.x, true), select(arg_2.a.yx, vec2<bool>(arg_2.a.x, false), false), all(vec3<bool>(arg_2.a.x, var_0.x, arg_2.a.x)))), !(true || (true & all(vec2<bool>(arg_2.a.x, false)))));
    return Struct_2(arg_2, true, firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(88500i, u_input.a) | max(u_input.d.x, -24617i), 2147483647i)));
}

fn func_4(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(-457f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -798f));
    var_0 = 1042f;
    var_0 = _wgslsmith_f_op_f32(sign(-1050f));
    var var_1 = -(~2147483647i);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(180f * 1320f))))) - _wgslsmith_f_op_f32(select(-1000f, -847f, arg_0.b == (arg_0.b & true))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(arg_1);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1711f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -929f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1279f)) * 1374f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1644f)) * -2496f)))), -1000f, 1000f);
    let var_2 = _wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_div_f32(473f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(var_1.x - 404f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -938f))), Struct_1(vec3<bool>(arg_1.x, var_0.a.x, arg_1.x)))));
    var var_3 = vec2<i32>(arg_2.x, u_input.a);
    var var_4 = _wgslsmith_div_u32(~(~(~u_input.b)), firstLeadingBit(~_wgslsmith_sub_u32(~arg_0.x, select(u_input.b, 0u, false))));
    return func_2(var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(var_0, true, arg_2.xx))))))), var_0).a;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> u32 {
    let var_0 = func_2(-1483f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_0))), Struct_1(!(!(!arg_2.zwz))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1333f, arg_0, -424f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-542f, arg_0, arg_0))), arg_1.a.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, arg_0, arg_0), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, 2278f, arg_0), vec3<f32>(arg_0, arg_0, -106f))))), arg_2.yzw)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-768f, arg_0, 1193f) - vec3<f32>(-672f, -133f, arg_0))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -430f, 361f) * vec3<f32>(-1260f, arg_0, 1000f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, 406f, -531f), vec3<f32>(arg_0, -1000f, arg_0), vec3<bool>(false, var_0.a.a.x, arg_1.a.x)))))), all(select(!vec4<bool>(arg_1.a.x, true, arg_1.a.x, var_0.a.a.x), arg_2, arg_2))));
    let var_2 = Struct_1(arg_1.a);
    var var_3 = func_2(-878f, 1762f, arg_1);
    let var_4 = _wgslsmith_f_op_f32(-arg_0);
    return u_input.b;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = true;
    let var_1 = arg_1;
    var var_2 = _wgslsmith_sub_i32(~(-34692i), 33321i);
    var_2 = firstLeadingBit(firstLeadingBit(u_input.d.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(485f + -843f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(479f))))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    let var_1 = 0u;
    var_0 = ~_wgslsmith_div_u32(u_input.b, func_6(func_5(1000f, func_1(vec2<u32>(var_1, u_input.c.x), vec3<bool>(false, true, false), vec4<i32>(-51039i, 11564i, u_input.d.x, u_input.a)), vec4<bool>(true, true, true, true), abs(1u)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1033f), 1f, Struct_1(vec3<bool>(false, false, true))).a, Struct_1(vec3<bool>(false, false, false)), func_1(_wgslsmith_mult_vec2_u32(u_input.c, vec2<u32>(39320u, u_input.c.x)), vec3<bool>(true, false, false), select(vec4<i32>(u_input.a, 16786i, u_input.d.x, -1i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 55926i), vec4<bool>(false, false, true, true)))));
    var var_2 = abs(select(~u_input.d, ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -34527i, 45322i, 3920i), vec4<i32>(u_input.d.x, 0i, -1i, u_input.a)), firstTrailingBit(0i), i32(-1i) * -50330i), all(func_2(-715f, _wgslsmith_f_op_f32(-983f + -942f), Struct_1(vec3<bool>(true, true, false))).a.a)));
    var var_3 = Struct_2(func_2(1331f, 1142f, Struct_1(vec3<bool>(true, true, true))).a, true, vec2<i32>(var_2.x, ~select(0i, 0i, false) & (_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, 0i), vec2<i32>(u_input.a, u_input.a)) << (var_1 % 32u))));
    let var_4 = ~u_input.d.xz;
    var var_5 = var_3.a;
    let var_6 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(480f, -708f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(920f - 2199f), _wgslsmith_f_op_f32(floor(465f)), !var_5.a.x))))), _wgslsmith_f_op_f32(-1739f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-403f - -1335f)) - _wgslsmith_f_op_f32(abs(939f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -2982f)))) - -422f), _wgslsmith_f_op_f32(f32(-1f) * -661f));
    var var_7 = reverseBits(var_1);
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

