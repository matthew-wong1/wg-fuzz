struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = !vec3<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(all(vec2<bool>(false, true)), true, u_input.a != u_input.c.x, true)), any(vec4<bool>(true, true, true, true)) | true);
    var_0 = !select(!(!select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, var_0.x, true))), select(select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, true, var_0.x), true), vec3<bool>(true, false, u_input.c.x == u_input.c.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), var_0.x == true)), !(!vec3<bool>(var_0.x, var_0.x, var_0.x)));
    var_0 = !vec3<bool>(var_0.x, var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-817f * 800f))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1393f, -337f)))));
    var var_1 = min(vec4<u32>(~firstTrailingBit(1u), 53306u, abs(0u), ~_wgslsmith_mod_u32(4294967295u, ~40233u)), abs(vec4<u32>(1u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 63842u, 30872u), vec3<u32>(43543u, 0u, 4294967295u)), ~82395u), ~_wgslsmith_mod_u32(1u, 4294967295u), ~(~4294967295u))));
    var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~max(vec4<u32>(0u, 36482u, 22092u, 13324u), vec4<u32>(var_1.x, 43283u, var_1.x, var_1.x)), select(vec4<u32>(var_1.x, var_1.x, var_1.x, 4294967295u), vec4<u32>(100237u, var_1.x, 0u, 68202u), var_0.x) << (firstLeadingBit(vec4<u32>(var_1.x, 15354u, var_1.x, 4602u)) % vec4<u32>(32u))) >> (~reverseBits(firstLeadingBit(vec4<u32>(var_1.x, 0u, var_1.x, var_1.x))) % vec4<u32>(32u)), vec4<u32>(var_1.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, ~var_1.x), 0u), _wgslsmith_mod_u32(var_1.x, ~4294967295u) | 11178u, ~min(~4294967295u, ~var_1.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(101f, 702f), _wgslsmith_f_op_f32(-609f * -1496f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1566f)) - -1913f)))) * _wgslsmith_f_op_f32(sign(-1000f)));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<u32>) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(391f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-840f, -922f)), 142f), -289f);
    var var_1 = arg_2;
    var_1 = Struct_3(Struct_1(_wgslsmith_mod_vec2_u32(~(~arg_3), _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_3.x, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.a.a.x, 40727u), arg_1.b.a)))), var_1.b, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -27399i), -var_1.c.yx), 0i, _wgslsmith_dot_vec2_i32(~u_input.c, _wgslsmith_div_vec2_i32(arg_1.a.xx, u_input.c))) << (vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 14591u, arg_3.x), vec3<u32>(0u, 25281u, 0u)), arg_2.a.a.x, ~arg_2.a.a.x) % vec3<u32>(32u)), arg_2.d || var_1.d);
    var_1 = arg_2;
    var_1 = arg_2;
    return _wgslsmith_mod_u32(68349u, arg_1.b.a.x);
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = 0u;
    let var_1 = ~vec4<i32>(max(-1i, _wgslsmith_dot_vec2_i32(u_input.c ^ vec2<i32>(0i, -23310i), vec2<i32>(u_input.a, u_input.b.x))), i32(-1i) * -(~u_input.c.x), i32(-1i) * -(~u_input.b.x), -21742i);
    var var_2 = _wgslsmith_clamp_vec4_u32(select(select(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 43354u, 4294967295u, 11730u), vec4<u32>(24837u, 12074u, 4294967295u, 16561u)), vec4<bool>(select(false, true, false), true, all(vec3<bool>(true, true, false)), true)), ~vec4<u32>(1u, 1u, 1u, 1u), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, ~1u, reverseBits(61748u), 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(5885u), ~1u, func_2(var_1.x, Struct_2(vec4<i32>(12251i, -2147483647i, 75109i, -37605i), Struct_1(vec2<u32>(0u, 0u))), Struct_3(Struct_1(vec2<u32>(1u, 10934u)), Struct_1(vec2<u32>(0u, 4294967295u)), vec3<i32>(42232i, -2147483647i, u_input.a), false), vec2<u32>(4294967295u, 9302u)), 7990u), vec4<u32>(1u, _wgslsmith_add_u32(1u, 1u), ~22611u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 11517u, 4294967295u), vec3<u32>(28754u, 1u, 1u))))), select(~(~vec4<u32>(4294967295u, 0u, 0u, 24685u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, 2237u, 118593u), vec4<u32>(0u, 1u, 0u, 25016u)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false), true)) | ~vec4<u32>(1u, 1u, 1u, 1u));
    var_2 = vec4<u32>(7115u, ~var_2.x, 4294967295u, var_2.x);
    let var_3 = -53253i;
    return Struct_2(vec4<i32>(-2743i, ~var_1.x, ~(i32(-1i) * -1i), ~select(~(-18734i), _wgslsmith_sub_i32(var_1.x, 34137i), true)), Struct_1(~(~vec2<u32>(var_2.x, var_2.x) & vec2<u32>(var_2.x, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-1000f);
    let var_1 = -101468i;
    let var_2 = select(~(~_wgslsmith_div_vec3_u32(vec3<u32>(41565u, 53331u, 4294967295u) ^ vec3<u32>(1u, 0u, var_0.b.a.x), vec3<u32>(1u, var_0.b.a.x, var_0.b.a.x) & vec3<u32>(4294967295u, 1u, 4294967295u))), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.a.x, 30165u, var_0.b.a.x), ~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(34312u, 3933u, 4220u), vec3<u32>(69626u, var_0.b.a.x, 57741u)))), vec3<bool>(true, true, true));
    let var_3 = all(vec2<bool>(true, true));
    let var_4 = ~(~(~firstTrailingBit(abs(vec4<u32>(18672u, 54833u, var_0.b.a.x, 25566u)))));
    var var_5 = any(select(vec2<bool>(10715u <= var_0.b.a.x, all(vec4<bool>(false, var_3, var_3, var_3))), vec2<bool>(var_3, any(vec2<bool>(var_3, var_3))), true)) & (_wgslsmith_add_i32(var_1, ~0i) >= var_0.a.x);
    var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1f, 1f), -1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-481f, _wgslsmith_f_op_f32(floor(266f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(372f * 151f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-343f, 1998f, -381f, 500f) + vec4<f32>(-299f, -436f, 599f, -1000f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1701f, -655f, -1054f, -1000f))), !vec4<bool>(var_3, var_3, var_3, var_3))))))));
}

