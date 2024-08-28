struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: bool,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<u32> {
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_2.a + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(min(418f, -638f)), _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(-global1.b.x)), global1.a))), _wgslsmith_f_op_vec2_f32(-global1.b), true, _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(1u, arg_2.e.x), max(u_input.d.x, 43592u), abs(87296u), 1u), reverseBits(vec4<u32>(arg_2.d, u_input.c, u_input.c, global1.e.x)) >> (firstLeadingBit(vec4<u32>(1u, arg_2.d, 40311u, arg_2.e.x)) % vec4<u32>(32u))), arg_2.e);
    var var_0 = Struct_1(vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(535f)) * _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-110f + arg_2.b.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -112f), _wgslsmith_f_op_f32(trunc(global1.b.x))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(round(-783f)), arg_2.b.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(global1.a.zz, global1.b)))))), true, 26391u, select(vec2<u32>(arg_2.d, countOneBits(abs(global1.d))), abs(global1.e), vec2<bool>(arg_0, false)));
    let var_1 = true;
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-285f, -1244f)) + _wgslsmith_f_op_f32(exp2(var_0.b.x))), arg_2.a.x, _wgslsmith_div_f32(var_0.a.x, _wgslsmith_div_f32(613f, -827f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(floor(global1.a.x))) * _wgslsmith_f_op_vec2_f32(-global1.a.zy)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.b.x, _wgslsmith_f_op_f32(trunc(var_0.b.x)))))), all(!select(vec2<bool>(arg_2.c, var_0.c), vec2<bool>(false, true), vec2<bool>(false, false))) & true, ~(firstLeadingBit(firstTrailingBit(0u)) | _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_2.d, 7926u), global1.e.x)), vec2<u32>(select(4605u, _wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, 4294967295u), 1u), false), 25452u));
    var var_2 = !vec3<bool>(true, global1.c, !arg_2.c);
    return u_input.d.xxw & u_input.d.zxw;
}

fn func_2() -> f32 {
    let var_0 = func_3(true, countOneBits(-_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(-3192i, 3207i, -99337i))), Struct_1(global1.a, global1.b, true, 20547u, abs(global1.e)));
    let var_1 = abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-(~56537i), i32(-1i) * -2147483647i), vec2<i32>(-1i) * -abs(vec2<i32>(-2147483647i, -2147483647i))));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.b.x, 1000f)) * _wgslsmith_div_vec3_f32(vec3<f32>(global1.a.x, global1.b.x, 1032f), vec3<f32>(global1.b.x, global1.a.x, global1.a.x)))))), vec2<f32>(-421f, global1.b.x), (u_input.c < ~var_0.x) | any(vec3<bool>(!global1.c, global1.c, global1.b.x >= 1588f)), u_input.a, u_input.d.xy);
    var var_2 = false;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, 868f, _wgslsmith_div_f32(global1.b.x, -636f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global1.b))))), global1.c, ~_wgslsmith_sub_u32(var_0.x & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.x), var_0.xz), global1.d), select(vec2<u32>(_wgslsmith_mod_u32(u_input.d.x, 23535u), _wgslsmith_add_u32(0u, var_0.x)), select(firstTrailingBit(var_0.xy), global1.e, vec2<bool>(false, false)), global1.c) ^ _wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(global1.e.x, global1.d), var_0.zy), firstTrailingBit(u_input.d.wx) & (var_0.xx >> (var_0.zz % vec2<u32>(32u)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(209f, global1.b.x)) - global1.b.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<bool>, arg_3: vec4<bool>) -> Struct_1 {
    global0 = ~(func_3(arg_2.x | true, vec3<i32>(2147483647i, -2147483647i, -7351i) & reverseBits(vec3<i32>(-2147483647i, arg_1, 1i)), Struct_1(_wgslsmith_div_vec3_f32(global1.a, global1.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-350f, -1000f)), u_input.c == 42714u, ~50548u, ~vec2<u32>(1u, 60734u))).x | u_input.d.x);
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-647f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1135f - arg_0.x), 946f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - 661f), _wgslsmith_f_op_f32(-1000f - arg_0.x), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, arg_0.x, -312f) - global1.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(781f, 1291f), _wgslsmith_f_op_vec2_f32(-global1.a.yy))) * vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.b.x, 2234f))), _wgslsmith_f_op_f32(-global1.a.x))), false, ~u_input.a, vec2<u32>(firstLeadingBit(~global1.e.x), 1u));
    var var_1 = !select(arg_2.zw, select(select(!arg_3.yy, arg_2.yw, !arg_2.x), arg_2.zz, vec2<bool>(true, true)), var_0.c);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), arg_0.x), global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x))) + global1.a), vec2<f32>(-1977f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global1.b.x))))), true, global1.e.x, ~_wgslsmith_add_vec2_u32(~(~u_input.b.yy), ~(vec2<u32>(1372u, u_input.c) | vec2<u32>(var_0.d, 6698u))));
    let var_2 = Struct_1(global1.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global1.b))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -1000f))))))), any(arg_2.zw), 0u, _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(global1.e >> (global1.e % vec2<u32>(32u)), select(u_input.b.ww, var_0.e, vec2<bool>(arg_3.x, false))) >> (_wgslsmith_mult_vec2_u32(~var_0.e, var_0.e) % vec2<u32>(32u)), u_input.d.wx << (vec2<u32>(_wgslsmith_dot_vec2_u32(var_0.e, var_0.e), select(4294967295u, u_input.c, false)) % vec2<u32>(32u))));
    return Struct_1(vec3<f32>(global1.b.x, -2281f, var_0.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(100f, 708f) - global1.b))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.b.x, global1.b.x))))))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_0), vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(arg_0.x + 546f))))), true, ~func_3(all(!vec2<bool>(var_0.c, arg_2.x)), _wgslsmith_div_vec3_i32(vec3<i32>(-22563i, -539i, arg_1), ~vec3<i32>(arg_1, arg_1, arg_1)), var_2).x, ~_wgslsmith_mod_vec2_u32(u_input.d.yy, vec2<u32>(_wgslsmith_clamp_u32(85099u, var_0.e.x, global1.d), ~4475u)));
}

fn func_1() -> u32 {
    var var_0 = func_4(vec2<f32>(-856f, _wgslsmith_f_op_f32(func_2())), -_wgslsmith_sub_i32(abs(abs(-2147483647i)), countOneBits(countOneBits(0i))), select(select(select(select(vec4<bool>(global1.c, false, global1.c, false), vec4<bool>(false, false, global1.c, false), vec4<bool>(true, true, global1.c, global1.c)), vec4<bool>(false, global1.c, false, global1.c), global1.c), select(vec4<bool>(true, global1.c, global1.c, global1.c), !vec4<bool>(global1.c, global1.c, global1.c, global1.c), vec4<bool>(global1.c, global1.c, true, true)), vec4<bool>(true, true, true, any(vec2<bool>(global1.c, global1.c)))), vec4<bool>(global1.c, !(!global1.c), !(!global1.c), !global1.c), !vec4<bool>(global1.c, true, false, global1.c)), vec4<bool>(global1.a.x <= _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-403f + 481f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(984f)) - -2519f), !global1.c, !all(vec4<bool>(true, global1.c, true, false))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -246f), global1.a.x, 384f)), _wgslsmith_f_op_vec2_f32(select(var_0.b, var_0.a.xy, !any(!vec4<bool>(false, var_0.c, global1.c, var_0.c)))), global1.c, 47327u, select(vec2<u32>(u_input.a, ~(~u_input.a)), vec2<u32>(_wgslsmith_sub_u32(u_input.a, global1.e.x), _wgslsmith_div_u32(firstLeadingBit(u_input.d.x), var_0.d)), select(true, true, func_4(vec2<f32>(361f, 453f), -23069i, vec4<bool>(false, var_0.c, true, true), vec4<bool>(false, var_0.c, false, false)).c) & true));
    var var_2 = u_input.c;
    let var_3 = vec3<u32>(_wgslsmith_mult_u32(func_3(true, -(~vec3<i32>(-1i, 11188i, -15307i)), var_1).x, _wgslsmith_mod_u32(1u, _wgslsmith_div_u32(reverseBits(1u), 1u))), ~_wgslsmith_dot_vec4_u32(~(~u_input.b), min(~vec4<u32>(53061u, 0u, var_1.e.x, var_1.e.x), u_input.b)), ~0u & ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(7361u, var_1.d, global1.e.x, global1.d), vec4<u32>(u_input.c, var_1.e.x, 4294967295u, var_1.d), var_1.c), u_input.d & u_input.d));
    let var_4 = var_1;
    return _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(max(var_4.e ^ var_1.e, ~vec2<u32>(var_1.e.x, 1u)), abs(vec2<u32>(4294967295u, 4294967295u))), var_0.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    global0 = func_1();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-global1.b.x))), global1.a.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1586f, 1000f)))))))), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global1.a.zy - global1.b), _wgslsmith_f_op_vec2_f32(-global1.a.yy)))), select(var_0, -73625i, _wgslsmith_sub_u32(global1.d, 110331u) <= u_input.b.x), select(vec4<bool>(!global1.c, global1.c, true, true), !vec4<bool>(global1.c, false, true, global1.c), true), !(!select(vec4<bool>(global1.c, false, global1.c, true), vec4<bool>(true, global1.c, true, false), global1.c))).c, u_input.a, vec2<u32>(countOneBits(_wgslsmith_div_u32(16340u, 13904u)), 1u));
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, ~global1.e.x), func_3(all(select(select(vec4<bool>(var_1.c, var_1.c, global1.c, true), vec4<bool>(false, true, var_1.c, var_1.c), vec4<bool>(global1.c, true, var_1.c, false)), vec4<bool>(var_1.c, global1.c, global1.c, global1.c), false)), vec3<i32>(var_0, var_0, ~(-var_0)), func_4(func_4(vec2<f32>(-2172f, 665f), 0i, vec4<bool>(true, global1.c, var_1.c, true), select(vec4<bool>(var_1.c, var_1.c, false, false), vec4<bool>(global1.c, true, var_1.c, var_1.c), true)).b, ~var_0, vec4<bool>(22165u <= u_input.d.x, true, !var_1.c, !var_1.c), select(vec4<bool>(var_1.c, true, true, var_1.c), vec4<bool>(global1.c, false, global1.c, global1.c), 1920f < global1.b.x))).zz);
    let var_3 = -441f;
    var_2 = vec2<u32>(global1.e.x, ~(_wgslsmith_mult_u32(var_2.x, 1u) | select(~58401u, 4294967295u, all(vec4<bool>(true, var_1.c, global1.c, false)))));
    let var_4 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, -1803f) * vec2<f32>(var_1.a.x, var_3)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, -346f))))), -16111i, vec4<bool>(false, var_1.c, true, all(!vec2<bool>(var_1.c, false))), !vec4<bool>(~u_input.c > 1u, true, _wgslsmith_f_op_f32(-372f - global1.b.x) > 753f, global1.c));
    let var_5 = !vec2<bool>(var_1.c, global1.c);
    var var_6 = !all(vec2<bool>(func_4(var_1.a.xx, 1i, select(vec4<bool>(true, var_5.x, false, false), vec4<bool>(true, false, var_4.c, var_4.c), true), !vec4<bool>(false, global1.c, false, false)).c, select(true, true, global1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x);
}

