struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> u32 {
    return 8849u;
}

fn func_2(arg_0: Struct_2) -> f32 {
    global1 = 1i;
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(156f + 604f), _wgslsmith_f_op_f32(-global0.a.x), -531f), _wgslsmith_f_op_vec3_f32(-global0.a.wwy))) + arg_0.a.c);
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(414f - _wgslsmith_f_op_f32(f32(-1f) * -479f)), _wgslsmith_f_op_f32(min(-1000f, var_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.c.x), _wgslsmith_div_f32(arg_0.a.c.x, 158f))), arg_0.a.c.x)), abs(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(49270u, arg_0.a.a, 4294967295u, 4294967295u), vec4<u32>(arg_0.a.a, arg_0.a.a, 0u, arg_0.a.a)), vec4<u32>(arg_0.a.a, func_3(), _wgslsmith_mult_u32(0u, global0.b), 29320u))), -(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(-15041i, global0.d, global0.d, arg_0.a.b), vec4<i32>(2147483647i, arg_0.a.b, global0.d, -1i)), vec4<i32>(-37482i, u_input.b.x, arg_0.a.b, 58390i)) << (select(min(vec4<u32>(1077u, 1u, 0u, arg_0.a.a), vec4<u32>(15718u, global0.b, global0.b, global0.b)), vec4<u32>(52386u, 3536u, 1u, global0.b), arg_0.b) % vec4<u32>(32u))), firstLeadingBit(-23049i));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.x * global0.a.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-1090f, _wgslsmith_f_op_f32(-arg_0.a.c.x), any(vec2<bool>(arg_0.a.d, arg_0.a.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(2655f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(374f + var_0.x))), _wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-841f))), true))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-311f, -1931f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(995f, -1745f) * arg_0.a.c.x)), var_0.x);
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.c.x - -1009f))), arg_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -540f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(arg_0.a, 9511i, vec3<f32>(global0.a.x, arg_0.c.x, global0.a.x), arg_0.d), false))))))), _wgslsmith_f_op_f32(global0.a.x - arg_0.c.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(37950u ^ global0.b, 2840u, _wgslsmith_mult_u32(arg_0.a, 78446u), ~arg_0.a), vec4<u32>(0u, ~0u, 1u, ~global0.b)) ^ ~firstTrailingBit(arg_0.a), u_input.a, _wgslsmith_clamp_i32(~2348i, 2147483647i, global0.d));
    let var_1 = _wgslsmith_f_op_f32(step(2240f, -477f));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, var_1, arg_0.c.x, global0.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2126f, var_0.a.x, arg_0.c.x, var_0.a.x) + global0.a))), global0.a)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~global0.b, max(1u, var_0.b), firstTrailingBit(global0.b)), ~(vec3<u32>(arg_0.a, 21531u, 7994u) | vec3<u32>(7396u, global0.b, global0.b))), ~vec3<u32>(4294967295u, global0.b, 0u)), global0.c, var_0.c.x);
    var var_2 = Struct_2(arg_0, true);
    let var_3 = vec3<u32>(select(~abs(_wgslsmith_mult_u32(arg_0.a, 27435u)), global0.b ^ 10095u, !(global0.c.x <= -15451i)), firstTrailingBit(~(_wgslsmith_mult_u32(arg_0.a, 26752u) >> (_wgslsmith_clamp_u32(26437u, global0.b, 46966u) % 32u))), 1u ^ ~_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(59499u, 77871u, 18738u), vec3<u32>(0u, 298u, 33951u))));
    return _wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a.c.x, -144f) + _wgslsmith_div_f32(var_2.a.c.x, -682f))), _wgslsmith_f_op_f32(trunc(-1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global0.a.yyw);
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(step(1041f, var_0.x)), _wgslsmith_div_f32(global0.a.x, -478f))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-247f * -501f), _wgslsmith_f_op_f32(step(597f, _wgslsmith_f_op_f32(f32(-1f) * -423f)))), vec2<f32>(_wgslsmith_f_op_f32(1f + global0.a.x), var_0.x), vec2<bool>(-2258f > _wgslsmith_f_op_f32(func_1(Struct_1(16784u, global0.d, global0.a.xyz, false))), true)))));
    let var_2 = Struct_3(global0.a, 10335u ^ abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, 4294967295u, 4294967295u, 1u), vec4<u32>(1u, 1u, global0.b, 0u) | vec4<u32>(global0.b, 83249u, 4294967295u, global0.b))), max(u_input.a, abs(~global0.c)), -(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(global0.c, vec4<i32>(u_input.a.x, u_input.a.x, 1i, -25716i)), select(vec4<i32>(32274i, u_input.b.x, global0.d, 45291i), vec4<i32>(u_input.b.x, 0i, u_input.b.x, global0.c.x), vec4<bool>(true, false, false, false))) & -25810i));
    var var_3 = firstLeadingBit(1u);
    global0 = var_2;
    var var_4 = Struct_2(Struct_1(global0.b, ~11441i, global0.a.zyw, 1060f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(858f)))), true);
    global1 = ~0i;
    let var_5 = _wgslsmith_f_op_f32(sign(-1750f));
    var_3 = ~var_4.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_sub_vec2_i32(var_2.c.yw, global0.c.wx), vec2<i32>(1i, abs(_wgslsmith_mod_i32(var_2.d, var_2.c.x))), !select(select(vec2<bool>(true, true), vec2<bool>(var_4.b, false), true), vec2<bool>(true, true), false)), _wgslsmith_div_f32(1248f, _wgslsmith_div_f32(328f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1550f * var_5))))), _wgslsmith_f_op_vec2_f32(abs(var_2.a.wx)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(global0.b, _wgslsmith_clamp_u32(global0.b, 5873u, 1u)) ^ 0u, 1u, var_2.b));
}

