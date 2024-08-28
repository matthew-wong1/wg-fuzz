struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<f32>;

var<private> global2: vec4<f32>;

var<private> global3: i32 = -974i;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec2<f32>) -> vec3<i32> {
    let var_0 = Struct_1(arg_0.a.xz);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + -797f))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -814f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d.b), _wgslsmith_f_op_f32(ceil(698f))))));
    var var_2 = arg_0.c;
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.x, global1.x), _wgslsmith_f_op_f32(var_2.b - 1139f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), -622f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-518f, 431f) * _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.wxy)))))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(907f, -1984f)))), _wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -846f) * _wgslsmith_f_op_f32(global1.x + -466f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x * arg_2.x)))))));
    global0 = false;
    return -_wgslsmith_clamp_vec3_i32(vec3<i32>(~1i, abs(i32(-1i) * -1i), arg_0.d.c), countOneBits(-vec3<i32>(-35866i, var_2.c, -2147483647i)), -(~vec3<i32>(u_input.b, 18321i, -1i)) | (abs(vec3<i32>(1i, -8200i, -40707i)) >> (~vec3<u32>(1u, arg_0.d.d, var_2.d) % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: f32, arg_3: i32) -> vec3<bool> {
    return vec3<bool>(arg_0.a.x, true, all(vec4<bool>(any(select(vec4<bool>(true, arg_0.b, true, false), vec4<bool>(arg_0.d.a, false, false, arg_0.b), false)), arg_0.b, arg_0.a.x, !any(vec4<bool>(true, false, arg_0.b, arg_0.d.a)))));
}

fn func_2() -> vec2<f32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.x, global2.x)))) * _wgslsmith_f_op_f32(global2.x * global2.x)) < global1.x;
    var var_0 = Struct_1(vec2<bool>(false, true));
    var var_1 = Struct_3(func_4(Struct_3(!vec3<bool>(false, var_0.a.x, true), u_input.b < _wgslsmith_div_i32(u_input.b, -76635i), Struct_2(var_0.a.x, _wgslsmith_f_op_f32(global2.x * global1.x), u_input.b, u_input.a.x ^ u_input.a.x), Struct_2(all(var_0.a), global2.x, u_input.b >> (u_input.a.x % 32u), 5610u)), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-49341i, -4846i, 0i) << (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<i32>(u_input.b, 2147483647i, u_input.b))), func_3(Struct_3(vec3<bool>(false, var_0.a.x, true), false, Struct_2(true, -1463f, u_input.b, 85033u), Struct_2(var_0.a.x, -1423f, 1i, u_input.a.x)), select(var_0.a, vec2<bool>(var_0.a.x, false), vec2<bool>(var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.x, global2.x), vec2<f32>(-530f, global2.x))))), global2.x, min(max(u_input.b ^ -2147483647i, u_input.b | 37411i), u_input.b)), !var_0.a.x, Struct_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_div_i32(~u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, 1918i, -2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.b, 1i)) << (~u_input.a.x % 32u)), 25426u), Struct_2(true, global1.x, func_3(Struct_3(vec3<bool>(var_0.a.x, false, true), true, Struct_2(var_0.a.x, -653f, 2147483647i, u_input.a.x), Struct_2(false, global2.x, 2147483647i, 15586u)), !(!vec2<bool>(var_0.a.x, var_0.a.x)), global2.xy).x, 4294967295u));
    var var_2 = Struct_1(!select(!select(vec2<bool>(false, true), vec2<bool>(var_0.a.x, true), var_1.d.a), var_1.a.xx, (false && var_0.a.x) & false));
    let var_3 = true;
    return _wgslsmith_f_op_vec2_f32(min(global2.xy, vec2<f32>(_wgslsmith_f_op_f32(542f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.d.b)) - _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-970f - _wgslsmith_f_op_f32(var_1.d.b + 1792f)) + global2.x))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: i32) -> vec3<u32> {
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a.x, 0i, -2147483647i | arg_2.x, firstTrailingBit(arg_2.x) | 42861i), _wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, abs(arg_1.a.x), arg_0.a.x << (55588u % 32u), _wgslsmith_add_i32(2147483647i, -4161i)), ~_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_3, arg_1.a.x, 1i, -22061i), vec4<i32>(35484i, arg_2.x, arg_1.a.x, arg_3)), vec4<i32>(u_input.b, arg_0.a.x, arg_1.a.x, 0i))));
    global0 = true;
    global1 = _wgslsmith_f_op_vec2_f32(func_2());
    let var_1 = Struct_3(vec3<bool>(-710f > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-860f - global2.x))), !any(vec2<bool>(true, true)), any(vec2<bool>(false, select(false, true, false)))), true, Struct_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) - _wgslsmith_f_op_f32(select(-670f, _wgslsmith_f_op_f32(-global2.x), true))), arg_1.a.x, u_input.a.x), Struct_2(true | any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), -797f)))), var_0.x, 24353u));
    global3 = arg_1.a.x;
    return u_input.a;
}

fn func_5(arg_0: u32, arg_1: bool) -> bool {
    global1 = global2.zx;
    global1 = vec2<f32>(-478f, _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(trunc(-1931f))));
    let var_0 = u_input.b << (func_1(Struct_4(~vec2<i32>(1i, 1i)), Struct_4(vec2<i32>(abs(u_input.b), ~u_input.b)), vec3<i32>(27618i, countOneBits(u_input.b & u_input.b), _wgslsmith_mod_i32(max(-2147483647i, -34337i), countOneBits(-34905i))), max(-70662i, 22747i)).x % 32u);
    let var_1 = ~(~(-abs(reverseBits(vec2<i32>(var_0, -14470i)))));
    var var_2 = min(var_1, firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(-2633i, ~var_1.x, 11459i), var_1.x)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, 880f, 714f, -2256f), vec4<f32>(global2.x, global1.x, global2.x, global2.x))))))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -496f)))), -550f, func_5(_wgslsmith_dot_vec3_u32(func_1(Struct_4(vec2<i32>(1i, -1i)), Struct_4(vec2<i32>(u_input.b, 18175i)), vec3<i32>(u_input.b, 49250i, -1i), u_input.b), u_input.a), true))), global2.x);
    let var_0 = any(vec2<bool>(true, !(49224u > ~u_input.a.x)));
    let var_1 = Struct_4(vec2<i32>(~u_input.b >> (4294967295u % 32u), _wgslsmith_clamp_i32(-u_input.b, max(u_input.b, u_input.b), max(u_input.b, u_input.b))) >> (~vec2<u32>(~4698u, ~64609u) % vec2<u32>(32u)));
    var var_2 = select(select(!vec4<bool>(var_0, all(vec4<bool>(var_0, false, false, false)), true, true), select(vec4<bool>(true, any(vec2<bool>(var_0, var_0)), false, var_0), vec4<bool>(false, all(vec4<bool>(var_0, false, var_0, false)), true, var_0), select(vec4<bool>(var_0, true, false, var_0), vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, true, false, var_0))), vec4<bool>(_wgslsmith_f_op_f32(global2.x + 272f) >= _wgslsmith_f_op_f32(min(155f, global2.x)), true, !var_0, !var_0)), vec4<bool>(any(vec2<bool>(global2.x <= -122f, var_0)), !(!var_0), _wgslsmith_mult_u32(~u_input.a.x, ~u_input.a.x) > (abs(1u) >> (_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) % 32u)), select(false, var_0, true)), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(select(-countOneBits(firstLeadingBit(var_1.a.x)), _wgslsmith_dot_vec2_i32(abs(max(vec2<i32>(2867i, u_input.b), var_1.a)), var_1.a), any(!vec2<bool>(var_2.x, var_0))), u_input.a, u_input.a.zx);
}

