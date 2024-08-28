struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>) -> vec4<f32> {
    let var_0 = Struct_2(arg_1.yz);
    let var_1 = !all(select(arg_1, !vec3<bool>(true, arg_1.x, arg_1.x), arg_1));
    var var_2 = !(!(!any(vec4<bool>(true, var_0.a.x, true, var_0.a.x))) & arg_1.x);
    let var_3 = select(vec3<u32>(_wgslsmith_add_u32(u_input.b, u_input.b), _wgslsmith_add_u32(~u_input.e.x, 1u), arg_0.x), select(vec3<u32>(3337u, max(u_input.e.x, 0u), 0u), firstLeadingBit(vec3<u32>(arg_0.x, 0u, u_input.b)), !(!vec3<bool>(false, var_0.a.x, true))), select(select(arg_1, select(vec3<bool>(false, arg_1.x, false), vec3<bool>(arg_1.x, var_1, arg_1.x), var_1), arg_1), arg_1, ~1u >= (1u & arg_0.x))) >> (_wgslsmith_mult_vec3_u32(abs(min(vec3<u32>(41914u, u_input.e.x, 0u), vec3<u32>(1u, u_input.e.x, arg_0.x))) << (min(vec3<u32>(u_input.b, u_input.b, u_input.e.x), ~vec3<u32>(arg_0.x, arg_0.x, u_input.b)) % vec3<u32>(32u)), vec3<u32>(~780u, arg_0.x, _wgslsmith_sub_u32(u_input.b, 1u))) % vec3<u32>(32u));
    var var_4 = _wgslsmith_sub_vec4_i32((_wgslsmith_mod_vec4_i32(-vec4<i32>(-28469i, u_input.a.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, u_input.a.x, u_input.a.x)) | -min(vec4<i32>(u_input.c.x, u_input.a.x, u_input.c.x, 52922i), vec4<i32>(u_input.c.x, 2147483647i, 1i, u_input.a.x))) ^ firstLeadingBit(vec4<i32>(-14221i, 0i, -29175i, u_input.c.x) >> (vec4<u32>(22274u, 4294967295u, u_input.d.x, 27838u) % vec4<u32>(32u))), vec4<i32>(max(~u_input.c.x, -u_input.c.x), ~_wgslsmith_add_i32(u_input.a.x, -2147483647i) ^ -83919i, u_input.c.x, 0i));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-305f, -1547f, 436f, global0.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -893f, -399f, global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 250f) + vec4<f32>(global0.x, 126f, -363f, global0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(207f, 1780f, global0.x, global0.x) + vec4<f32>(1630f, global0.x, global0.x, 1662f))), vec4<bool>(var_1, true, arg_1.x && true, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, 150f, -598f, -182f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -715f, global0.x, global0.x), vec4<f32>(global0.x, -348f, 1000f, global0.x), vec4<bool>(var_0.a.x, false, false, true))))))));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> i32 {
    var var_0 = false;
    var var_1 = global0.x;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<u32>(u_input.e.x, u_input.b), vec3<bool>(true, false, arg_1))) - vec4<f32>(-2425f, 1247f, global0.x, -1475f)), vec4<f32>(_wgslsmith_f_op_f32(ceil(135f)), _wgslsmith_f_op_f32(global0.x * global0.x), global0.x, _wgslsmith_f_op_f32(trunc(global0.x))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-355f, global0.x, global0.x, global0.x))))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + 272f))), 560f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) + _wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(global0.x - 287f)))) * vec4<f32>(global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), arg_1)))), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - 1000f)));
    let var_2 = arg_0;
    return -2147483647i;
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = u_input.e.x;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(687f, _wgslsmith_f_op_f32(f32(-1f) * -270f)))), _wgslsmith_f_op_vec4_f32(func_3(u_input.d, vec3<bool>(true, true, true))).x, _wgslsmith_f_op_f32(global0.x * 1000f), global0.x);
    let var_1 = all(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1699f * -558f)), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))));
    let var_2 = arg_0;
    let var_3 = u_input.e.x;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -592f), global0.x, global0.x) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -1963f, -3228f, _wgslsmith_f_op_f32(630f * global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1813f, global0.x, global0.x, -219f)))));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> vec4<f32> {
    var var_0 = abs(~max(_wgslsmith_add_u32(_wgslsmith_add_u32(0u, 1u), _wgslsmith_mult_u32(u_input.e.x, 0u)), ~(~arg_1.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_1(func_2(Struct_2(vec2<bool>(false, false)), true) << (arg_1.x % 32u), _wgslsmith_add_vec4_u32(vec4<u32>(16502u, 0u, u_input.d.x, u_input.d.x), vec4<u32>(0u, u_input.d.x, 4294967295u, u_input.e.x)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_1.x, 0u, 4294967295u), vec4<u32>(u_input.d.x, arg_1.x, u_input.e.x, 53378u)), ~u_input.d.x, -(vec2<i32>(-1i, u_input.c.x) >> (u_input.e % vec2<u32>(32u)))))));
    global0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1291f - var_1.x) - var_1.x), -1123f, global0.x, -147f))));
    var var_2 = _wgslsmith_add_i32(~(-u_input.c.x), -3241i);
    var var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(-14440i, 1i, _wgslsmith_clamp_i32(countOneBits(1i) ^ abs(u_input.c.x), ~arg_0, -u_input.c.x ^ -2147483647i), -2147483647i), vec4<i32>(-(i32(-1i) * -u_input.a.x), -_wgslsmith_mult_i32(-17165i, arg_0) << (~4294967295u % 32u), arg_0, u_input.a.x));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(~vec2<u32>(0u, 8741u), vec3<bool>(true, true, true))).x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.x)), var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -1254f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, false)) - _wgslsmith_f_op_f32(var_1.x - -2487f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -890f), -2817f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - -1207f) - _wgslsmith_f_op_f32(f32(-1f) * -438f)), _wgslsmith_div_f32(-282f, _wgslsmith_f_op_f32(max(global0.x, global0.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(-2147483647i, vec3<u32>(4294967295u, u_input.b, 4294967295u)))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, -397f, -652f)), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_1(0i, vec3<u32>(u_input.e.x, u_input.d.x, 27139u))).x, _wgslsmith_f_op_f32(sign(547f)), 544f, -372f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<u32>(u_input.b, 6230u), vec3<bool>(false, false, false))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, global0.x, -163f), vec4<f32>(global0.x, 914f, 369f, global0.x), false))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-963f, global0.x, -1084f, global0.x) - vec4<f32>(global0.x, -956f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, global0.x, global0.x, 1460f)))))))));
    let var_0 = !select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), global0.x > global0.x), select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, false)), all(vec4<bool>(true, true, true, true))), select(vec3<bool>(all(vec2<bool>(true, false)), true, false), vec3<bool>(true, true, all(vec4<bool>(true, true, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true)), vec3<bool>(true, true, true), true));
    let var_1 = Struct_2(select(select(var_0.xz, select(vec2<bool>(true, false), !var_0.xx, global0.x > global0.x), !(global0.x < global0.x)), vec2<bool>(true, var_0.x), (abs(1u) | ~u_input.b) >= firstLeadingBit(firstLeadingBit(61985u))));
    var var_2 = firstTrailingBit(firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(~u_input.a.x, u_input.a.x), max(-u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, 0i, 1i)), _wgslsmith_clamp_i32(1i, u_input.a.x, u_input.c.x) >> (~67035u % 32u), countOneBits(1i))));
    let var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(global0.x, global0.x), global0.x, -570f, global0.x)))));
}

