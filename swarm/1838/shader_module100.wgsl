struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: f32 = -652f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: i32) -> u32 {
    var var_0 = (~(~global0.a.x) << (1u % 32u)) != (_wgslsmith_sub_u32(1u, ~global1.a.x) ^ 77448u);
    let var_1 = Struct_1(global1.a, !any(vec2<bool>(true, true)), abs(vec3<i32>(_wgslsmith_mod_i32(-global0.c.x, 0i), abs(global1.c.x), global0.c.x)), _wgslsmith_f_op_vec3_f32(floor(arg_2.xww)));
    let var_2 = ~vec4<i32>(abs(1924i), -11921i, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.x, 0i, -36287i, -22146i), _wgslsmith_div_vec4_i32(vec4<i32>(arg_3, global1.c.x, var_1.c.x, -18265i), vec4<i32>(-14784i, global0.c.x, -14742i, var_1.c.x)))), global0.c.x);
    let var_3 = -global0.c.x;
    var var_4 = ~_wgslsmith_mod_u32(2086u, ~abs(~global0.a.x));
    return countOneBits(0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    var var_0 = !arg_2.b;
    global0 = Struct_1(~(~vec2<u32>(~23247u, global1.a.x)), !(!global1.b), -vec3<i32>(global0.c.x >> (arg_0.a.x % 32u), global1.c.x, arg_0.c.x >> (func_3(879f, vec4<f32>(579f, -995f, arg_0.d.x, global1.d.x), vec4<f32>(1303f, 901f, 722f, arg_2.d.x), global1.c.x) % 32u)), _wgslsmith_f_op_vec3_f32(exp2(arg_0.d)));
    var var_1 = ~vec2<u32>(~countOneBits(0u), select(countOneBits(20010u), ~arg_2.a.x, false));
    var var_2 = vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(403f, 476f), _wgslsmith_f_op_f32(select(1208f, 105f, false))))) - _wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(max(arg_2.d.x, arg_0.d.x)))), 396f);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(trunc(1251f)), var_2.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -1151f);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> vec3<i32> {
    global0 = arg_1;
    var var_0 = global0.d.x;
    let var_1 = !arg_2.zyw;
    var_0 = _wgslsmith_f_op_f32(min(arg_1.d.x, _wgslsmith_f_op_f32(select(2412f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_1, arg_2, arg_0, select(var_1, vec3<bool>(true, arg_2.x, arg_2.x), arg_2.zwx))) * -2437f), arg_1.b))));
    let var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(~vec3<u32>(arg_1.a.x, 15942u, arg_0.a.x) << (vec3<u32>(arg_0.a.x, arg_1.a.x, 11892u) % vec3<u32>(32u))), countOneBits(~vec3<u32>(global0.a.x, 64579u, global0.a.x))), vec3<u32>(abs(arg_0.a.x), countOneBits(~_wgslsmith_dot_vec2_u32(global0.a, vec2<u32>(global1.a.x, arg_0.a.x))), 4294967295u));
    return vec3<i32>(_wgslsmith_add_i32(global1.c.x & 1i, 1i), -7917i, min(firstLeadingBit(i32(-1i) * -1i), _wgslsmith_clamp_i32(arg_1.c.x, -_wgslsmith_add_i32(global1.c.x, -4871i), _wgslsmith_mod_i32(firstTrailingBit(arg_1.c.x), ~arg_0.c.x))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> Struct_1 {
    global1 = Struct_1(arg_0.a, any(select(vec3<bool>(arg_2, arg_2 & true, true), vec3<bool>(true, true, global0.c.x <= 2147483647i), vec3<bool>(true, true, true))), ~(~(max(vec3<i32>(arg_0.c.x, -41948i, u_input.a.x), vec3<i32>(global1.c.x, global1.c.x, -1i)) & ~vec3<i32>(10281i, 1i, 30673i))), global0.d);
    let var_0 = Struct_1(~(~global1.a), true, global1.c, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -245f), _wgslsmith_f_op_f32(floor(arg_0.d.x)), _wgslsmith_f_op_f32(step(global1.d.x, _wgslsmith_f_op_f32(-arg_0.d.x)))));
    var var_1 = Struct_1(global0.a, all(!(!vec4<bool>(arg_0.b, false, true, false))) && global0.b, global1.c, vec3<f32>(_wgslsmith_f_op_f32(ceil(-945f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -313f))) * _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(abs(global0.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x * -1476f), _wgslsmith_f_op_f32(trunc(238f))))));
    global2 = -1000f;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-661f * -1000f) - _wgslsmith_f_op_f32(global0.d.x * -954f)), var_1.d.x), _wgslsmith_f_op_f32(-859f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec2<u32>(var_0.a.x, 1u), false, vec3<i32>(var_1.c.x, 1i, 2147483647i), vec3<f32>(937f, 1230f, global1.d.x)), vec4<bool>(true, true, false, arg_2), arg_0, vec3<bool>(true, true, global1.b))))), !(true && var_1.b))) + _wgslsmith_div_f32(_wgslsmith_div_f32(252f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) - _wgslsmith_f_op_f32(round(var_1.d.x)))), global1.d.x));
    return Struct_1(global1.a, ((_wgslsmith_mult_i32(25005i, 7964i) << (max(global1.a.x, arg_0.a.x) % 32u)) & 22247i) < ~global0.c.x, -max(vec3<i32>(~(-2147483647i), 2147483647i, 1i), ~var_0.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.d.x, 1552f, 764f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, 240f, var_0.d.x)), var_0.b))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.d.x)));
    global1 = Struct_1(vec2<u32>(global0.a.x, global1.a.x & 32474u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) + _wgslsmith_f_op_f32(trunc(-405f))) + _wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(-global1.d.x))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1802f))) + -579f), vec3<i32>(_wgslsmith_mod_i32(global1.c.x ^ 6153i, ~global0.c.x), 0i, -3353i) & select(vec3<i32>(~2147483647i, -2147483647i, global1.c.x), abs(~global0.c), (global1.a.x >> (global0.a.x % 32u)) != _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, global1.a.x, 0u), vec3<u32>(23312u, 1u, 1u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.d) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1277f, -720f, global0.d.x)) + global1.d)));
    let var_0 = ~(-1i);
    global0 = func_4(Struct_1(global1.a, true, func_1(Struct_1(global0.a, global1.b, _wgslsmith_sub_vec3_i32(vec3<i32>(var_0, -2147483647i, -18404i), vec3<i32>(global0.c.x, var_0, u_input.a.x)), vec3<f32>(372f, 2346f, 1606f)), Struct_1(vec2<u32>(0u, 125490u), global0.b, global0.c, vec3<f32>(global0.d.x, global1.d.x, global0.d.x)), !vec4<bool>(global0.b, false, global1.b, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(630f, -1004f, global0.d.x) + global1.d))) - _wgslsmith_f_op_vec3_f32(-global1.d))), global0.b || true, any(!(!select(vec4<bool>(global0.b, true, false, global1.b), vec4<bool>(global1.b, global1.b, global0.b, true), false))));
    global1 = Struct_1(~func_4(func_4(func_4(Struct_1(vec2<u32>(global0.a.x, global0.a.x), false, vec3<i32>(u_input.a.x, -1i, global0.c.x), global0.d), false, false), any(vec2<bool>(global1.b, global1.b)), global1.b), !(!global0.b), global0.b).a, global0.b, -vec3<i32>(-7187i, _wgslsmith_sub_i32(u_input.a.x | -6216i, ~global1.c.x), -_wgslsmith_clamp_i32(51469i, -303i, u_input.a.x)), global1.d);
    global1 = Struct_1(select(~vec2<u32>(14043u, min(6309u, global1.a.x)), global1.a, vec2<bool>(global1.b & all(vec2<bool>(global0.b, false)), true)), !global0.b, global1.c, global1.d);
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(max(~56706u, ~select(_wgslsmith_mult_u32(global1.a.x, global0.a.x), ~global0.a.x, 29510u <= global0.a.x)), ~vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, global0.a.x, global0.a.x), vec3<u32>(global0.a.x, 1u, global1.a.x)), ~(global1.a.x & global1.a.x), _wgslsmith_mod_u32(max(0u, 46138u), global1.a.x)));
}

