struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: bool,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(1u, 98556u), vec4<u32>(96645u, 0u, 4294967295u, 1u), true, -1160f, vec3<f32>(692f, 879f, -886f));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = vec3<i32>(-1i) * -vec3<i32>(-1i, ~min(-12524i, -16946i), -47561i);
    global1 = Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a.x, arg_0.b.x), _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(arg_0.a.x, 4294967295u)), _wgslsmith_mult_vec2_u32(global1.a, arg_0.b.zx)) ^ ~global1.b.zx, vec2<u32>(1u, ~(~4294967295u))), vec4<u32>(firstLeadingBit(0u), global1.a.x, u_input.a.x, 1u), all(!vec4<bool>(true, global1.c, arg_0.c, false)), _wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, global1.d, 643f) + global1.e)))))));
    global1 = arg_0;
    let var_1 = _wgslsmith_add_i32(0i, _wgslsmith_sub_i32(-var_0.x, 2147483647i));
    global1 = arg_0;
    return !(_wgslsmith_f_op_f32(max(909f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global1.e.x)))))) == _wgslsmith_div_f32(643f, arg_0.e.x));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec2<u32>(~u_input.a.x, _wgslsmith_add_u32(global1.a.x, global1.b.x)), global1.b, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.d))) * _wgslsmith_f_op_f32(-global1.d)), _wgslsmith_f_op_vec3_f32(global1.e * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global1.e)), vec3<f32>(-515f, global1.d, global1.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)), vec4<bool>(func_3(Struct_1(_wgslsmith_sub_vec2_u32(u_input.a, global1.b.wx), global1.b, all(vec4<bool>(false, global1.c, global1.c, false)), _wgslsmith_f_op_f32(step(-836f, global1.e.x)), _wgslsmith_f_op_vec3_f32(global1.e + global1.e))), global1.c, true, true), Struct_1(_wgslsmith_sub_vec2_u32(~(vec2<u32>(6827u, global1.a.x) >> (global1.b.wy % vec2<u32>(32u))), vec2<u32>(firstLeadingBit(u_input.a.x), u_input.a.x ^ 4294967295u)), select(~vec4<u32>(global1.b.x, u_input.a.x, 18682u, 81754u), _wgslsmith_add_vec4_u32(global1.b, vec4<u32>(17530u, 5426u, u_input.a.x, 70767u)) & abs(global1.b), global1.c), all(select(!vec4<bool>(false, global1.c, true, global1.c), vec4<bool>(false, false, true, false), global1.b.x >= u_input.a.x)), 167f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e.x) - global1.d), global1.d, global1.d)), abs(u_input.a.x));
    let var_1 = vec3<i32>(-2147483647i, 0i, _wgslsmith_clamp_i32(15115i, -3300i, _wgslsmith_dot_vec3_i32(~vec3<i32>(19058i, -2147483647i, 2147483647i), vec3<i32>(0i, -1i, 0i)))) | max(~(-vec3<i32>(1i, 1i, 1i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 0i, -2147483647i), vec4<i32>(-10882i, 12248i, 1i, 14239i)) & 1i, -_wgslsmith_clamp_i32(-4845i, -1i, 3209i), (i32(-1i) * -1010i) >> (var_0.a.a.x % 32u)));
    var var_2 = Struct_2(var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d, var_0.a.e.x)))) + -542f), !var_0.c, var_0.d, abs(u_input.a.x));
    var var_3 = Struct_2(Struct_1(vec2<u32>(~_wgslsmith_div_u32(u_input.a.x, 1u), min(112514u, 1u)), vec4<u32>(32168u, u_input.a.x, u_input.a.x, _wgslsmith_mult_u32(~var_2.a.b.x, u_input.a.x)), any(vec3<bool>(false, any(vec3<bool>(var_2.a.c, var_0.d.c, true)), any(vec2<bool>(var_2.d.c, global1.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.d.e.x, var_0.d.d))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(round(1269f)), _wgslsmith_f_op_f32(var_2.d.e.x - var_0.b), _wgslsmith_f_op_f32(-var_0.d.e.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_2.d.e.x)), _wgslsmith_f_op_f32(ceil(-616f)), global1.c)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(732f - var_2.d.d), _wgslsmith_f_op_f32(min(-591f, -197f))))), select(vec4<bool>(any(vec4<bool>(true, false, var_2.a.c, true)), var_2.d.c, !var_0.c.x, var_2.c.x), var_0.c, vec4<bool>(true, true, true || !global1.c, global1.a.x > global1.a.x)), Struct_1(firstLeadingBit(u_input.a), vec4<u32>(~_wgslsmith_div_u32(var_2.d.b.x, 1u), 1u, _wgslsmith_sub_u32(_wgslsmith_div_u32(58394u, var_0.d.a.x), _wgslsmith_clamp_u32(var_0.e, 16613u, 1u)), _wgslsmith_sub_u32(u_input.a.x, global1.b.x)), !all(select(var_0.c.xw, vec2<bool>(false, var_2.c.x), var_2.c.ww)), _wgslsmith_f_op_f32(var_2.d.e.x - _wgslsmith_f_op_f32(-global1.e.x)), var_2.a.e), u_input.a.x);
    var_3 = Struct_2(Struct_1(~min(vec2<u32>(40221u, u_input.a.x), vec2<u32>(36527u, var_0.a.b.x)) << (~global1.a % vec2<u32>(32u)), _wgslsmith_clamp_vec4_u32(~global1.b, vec4<u32>(var_2.a.b.x, var_0.d.a.x, 1u, var_3.d.a.x) ^ var_0.a.b, _wgslsmith_clamp_vec4_u32(max(vec4<u32>(4294967295u, 1u, var_3.a.a.x, global1.a.x), var_2.d.b), vec4<u32>(0u, u_input.a.x, 4294967295u, var_3.e), ~var_0.a.b)), select(!global1.c & true, func_3(var_3.d), var_2.c.x & var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(809f, var_0.a.d, -1068f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(226f, var_3.b, var_0.a.d)), !vec3<bool>(var_2.d.c, global1.c, false))))), var_2.b, var_3.c, var_3.d, reverseBits(_wgslsmith_mult_u32(4294967295u, var_0.d.b.x) << ((41864u ^ u_input.a.x) % 32u)) ^ ~firstLeadingBit(var_0.a.a.x << (var_2.e % 32u)));
    return var_0.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    global1 = Struct_1(firstTrailingBit(vec2<u32>(firstLeadingBit(1u), abs(firstTrailingBit(arg_2.b.x)))), global1.b, all(select(select(vec4<bool>(global1.c, arg_0.x, arg_2.c, false), vec4<bool>(arg_2.c, true, false, true), select(vec4<bool>(true, true, arg_2.c, global1.c), vec4<bool>(true, true, false, arg_2.c), vec4<bool>(true, true, true, true))), vec4<bool>(true, !global1.c, arg_2.c, 1846f == arg_2.e.x), arg_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -167f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.d, arg_2.d, 360f))) - _wgslsmith_f_op_vec3_f32(-arg_2.e)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.d, global1.d, 253f)))))));
    let var_0 = any(select(vec4<bool>(any(!arg_0), true, !(!arg_0.x), !(false && arg_2.c)), select(select(!vec4<bool>(arg_0.x, global1.c, arg_0.x, arg_0.x), !vec4<bool>(false, arg_2.c, global1.c, arg_0.x), vec4<bool>(arg_2.c, global1.c, true, false)), !(!vec4<bool>(false, false, true, arg_2.c)), !(!vec4<bool>(global1.c, true, arg_2.c, true))), select(vec4<bool>(!arg_0.x, !arg_0.x, true, func_3(arg_2)), !(!vec4<bool>(false, false, global1.c, false)), func_3(arg_2) == (arg_1.x > 13470i))));
    let var_1 = select(vec2<bool>(true, true), !vec2<bool>(global1.c, true), arg_0);
    let var_2 = Struct_2(arg_2, _wgslsmith_f_op_f32(-global1.d), vec4<bool>(true, select(all(!arg_0), true, false), any(!vec4<bool>(arg_2.c, arg_0.x, true, var_1.x)) | any(select(vec3<bool>(arg_0.x, false, false), vec3<bool>(false, false, global1.c), false)), all(!var_1)), arg_2, 4294967295u);
    let var_3 = ~(~vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-33145i, -15864i, 2147483647i), vec3<i32>(arg_1.x, arg_1.x, arg_1.x))), -2147483647i, 0i, -arg_1.x));
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>) -> vec2<f32> {
    var var_0 = Struct_2(func_4(!(!select(vec2<bool>(true, false), vec2<bool>(global1.c, global1.c), true)), arg_1.zz, Struct_1(~select(vec2<u32>(global1.b.x, u_input.a.x), vec2<u32>(global1.a.x, global1.a.x), true), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(global1.b, arg_0.b), ~vec4<u32>(arg_0.a.x, 1u, global1.b.x, 111470u)), any(vec4<bool>(true, global1.c, true, global1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(726f + arg_0.d)), arg_0.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e.x - arg_0.e.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, global1.d)) + global1.e.x)) - _wgslsmith_f_op_f32(-global1.e.x)), select(select(vec4<bool>(global1.c, true, all(vec4<bool>(true, arg_0.c, true, arg_0.c)), all(vec3<bool>(arg_0.c, false, false))), vec4<bool>(global1.c, arg_0.c, arg_0.c, arg_0.c && global1.c), !select(vec4<bool>(true, true, global1.c, global1.c), vec4<bool>(true, false, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, true, false))), select(select(select(vec4<bool>(false, false, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, false, global1.c), vec4<bool>(global1.c, false, global1.c, true)), select(vec4<bool>(false, false, arg_0.c, global1.c), vec4<bool>(arg_0.c, true, true, arg_0.c), arg_0.c), !vec4<bool>(arg_0.c, true, false, true)), select(!vec4<bool>(false, arg_0.c, arg_0.c, true), !vec4<bool>(arg_0.c, global1.c, false, true), false), vec4<bool>(all(vec4<bool>(true, global1.c, global1.c, false)), all(vec3<bool>(true, arg_0.c, arg_0.c)), arg_0.c, true & global1.c)), true), Struct_1(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 13670u) >> (vec2<u32>(u_input.a.x, global1.b.x) % vec2<u32>(32u)), u_input.a)), ~arg_0.b, func_3(func_4(vec2<bool>(false, arg_0.c), ~arg_1.yx, arg_0)), arg_0.e.x, func_2().e), arg_0.b.x << (0u % 32u));
    global1 = func_4(var_0.c.wx, _wgslsmith_div_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), -min(~vec2<i32>(arg_1.x, arg_1.x), vec2<i32>(1i, arg_1.x))), func_2());
    let var_1 = global1.c;
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, arg_0.e.x)) * _wgslsmith_div_vec2_f32(var_0.d.e.yz, global1.e.yy)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b, 314f))), func_4(vec2<bool>(arg_0.c, var_0.c.x), arg_1.yz, Struct_1(vec2<u32>(29245u, 4294967295u), arg_0.b, var_0.c.x, 955f, vec3<f32>(-769f, global1.e.x, 1036f))).e.yx)), global1.e.xz))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = -2147483647i;
    let var_1 = Struct_1(~countOneBits(arg_0.d.a), arg_3.d.b, true, _wgslsmith_f_op_f32(global1.d - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a.d)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.e.x), global1.d, 1f));
    var var_2 = _wgslsmith_f_op_vec2_f32(func_5(func_4(select(!select(vec2<bool>(false, arg_3.d.c), arg_0.c.yw, vec2<bool>(arg_2.c, global1.c)), select(select(vec2<bool>(true, var_1.c), vec2<bool>(global1.c, arg_2.c), arg_3.c.zx), arg_3.c.xy, all(arg_0.c.xyw)), true), arg_1.wx, func_2()), vec3<i32>(~(-select(-2147483647i, arg_1.x, global1.c)), arg_1.x, arg_1.x)));
    global0 = false;
    global0 = global1.c;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_div_f32(var_2.x, 220f)), -1576f, 1087f, _wgslsmith_f_op_f32(max(arg_2.d, arg_0.d.d))))) * vec4<f32>(var_2.x, _wgslsmith_f_op_f32(round(-1000f)), arg_3.d.e.x, -392f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_add_vec3_i32(-vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(22392i, -1422i, 39558i), vec3<i32>(36745i, -10223i, 47742i)), 0i << (firstTrailingBit(global1.b.x) % 32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.x, -903f, global1.d, 1135f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1392f, 179f, global1.e.x, global1.e.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.e.x, 449f, global1.e.x, 476f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(global1.b.ww, global1.b, global1.c, global1.e.x, vec3<f32>(global1.d, global1.e.x, 329f)), global1.d, vec4<bool>(false, global1.c, true, global1.c), Struct_1(vec2<u32>(23643u, 18565u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, global1.b.x), false, global1.e.x, global1.e), 77007u), -vec4<i32>(var_0.x, 21880i, var_0.x, -50263i), Struct_1(vec2<u32>(1u, u_input.a.x), vec4<u32>(1u, 1u, u_input.a.x, global1.b.x), true, global1.d, global1.e), Struct_2(Struct_1(vec2<u32>(global1.a.x, 49214u), global1.b, global1.c, global1.d, vec3<f32>(global1.d, global1.e.x, global1.d)), global1.e.x, vec4<bool>(global1.c, true, global1.c, global1.c), Struct_1(global1.b.xz, vec4<u32>(global1.b.x, 4294967295u, 1u, u_input.a.x), true, global1.d, vec3<f32>(global1.d, global1.d, -785f)), global1.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(945f, global1.d, global1.d, global1.e.x) + vec4<f32>(global1.d, global1.e.x, global1.e.x, -983f)), _wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(global1.b.yw, global1.b, global1.c, global1.e.x, global1.e), -177f, vec4<bool>(true, global1.c, global1.c, global1.c), Struct_1(u_input.a, vec4<u32>(51501u, u_input.a.x, 1u, 17714u), true, global1.d, global1.e), 27984u), vec4<i32>(10452i, var_0.x, -2147483647i, var_0.x), Struct_1(global1.a, vec4<u32>(u_input.a.x, 12835u, global1.a.x, 29297u), global1.c, global1.e.x, global1.e), Struct_2(Struct_1(vec2<u32>(global1.b.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), global1.c, -1346f, vec3<f32>(-920f, global1.e.x, -1848f)), -897f, vec4<bool>(false, false, global1.c, false), Struct_1(vec2<u32>(1u, 1u), vec4<u32>(u_input.a.x, 38540u, 0u, global1.b.x), global1.c, -184f, vec3<f32>(global1.e.x, global1.d, global1.e.x)), 0u)))))), global1.c)));
    let var_2 = Struct_2(Struct_1(global1.a, vec4<u32>(global1.b.x, _wgslsmith_add_u32(~19687u, select(0u, 1u, global1.c)), u_input.a.x, countOneBits(0u)), 577f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_5(Struct_1(vec2<u32>(101770u, global1.a.x), global1.b, true, 1882f, global1.e), vec3<i32>(0i, var_0.x, var_0.x))).x), _wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec2_f32(func_5(Struct_1(vec2<u32>(110126u, 28218u), global1.b, false, global1.e.x, global1.e), vec3<i32>(-2147483647i, -24365i, var_0.x))).x, _wgslsmith_f_op_f32(sign(var_1.x)), global1.d))), var_1.x, select(!select(!vec4<bool>(global1.c, global1.c, global1.c, false), !vec4<bool>(global1.c, true, true, false), true), select(vec4<bool>(global1.c, false, false, any(vec3<bool>(false, global1.c, false))), vec4<bool>(-18120i <= var_0.x, !global1.c, true, global1.c), !select(vec4<bool>(global1.c, true, false, false), vec4<bool>(global1.c, global1.c, global1.c, global1.c), global1.c)), vec4<bool>(any(vec2<bool>(false, true)), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x) >= 41817u, global1.c, func_2().c)), func_2(), 23324u ^ global1.b.x);
    let var_3 = var_2.c.wwy;
    var var_4 = select(!(!vec2<bool>(all(vec4<bool>(true, var_3.x, var_2.c.x, var_3.x)), var_1.x > var_2.b)), !(!var_2.c.wz), vec2<bool>(var_3.x, !((0u ^ global1.b.x) >= var_2.d.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_0.xx, -(vec2<i32>(-7236i, -2147483647i) << (countOneBits(global1.b.yy) % vec2<u32>(32u))), var_3.x));
}

