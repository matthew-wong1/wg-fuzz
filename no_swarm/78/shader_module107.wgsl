struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 30708u, arg_0, global0.x), vec4<u32>(u_input.a.x, 13819u, u_input.a.x, 1u)), u_input.a.x), ~abs(0u), arg_0 | 4294967295u)));
    global0 = u_input.a;
    var_0 = Struct_2(_wgslsmith_dot_vec4_u32(~select(abs(vec4<u32>(arg_0, 4294967295u, 1524u, var_0.a)), max(vec4<u32>(0u, u_input.a.x, u_input.a.x, arg_0), vec4<u32>(global0.x, 4294967295u, 0u, global0.x)), false), _wgslsmith_div_vec4_u32(~vec4<u32>(global0.x, 4294967295u, 21668u, global0.x) & vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_0, arg_0, 4294967295u, arg_0), ~vec4<u32>(arg_0, 4294967295u, 4294967295u, 1u)))));
    var_0 = Struct_2(global0.x);
    var var_1 = Struct_2(firstLeadingBit(firstTrailingBit(max(arg_0, 4294967295u))));
    return Struct_2(global0.x);
}

fn func_3(arg_0: bool, arg_1: i32) -> vec2<bool> {
    var var_0 = Struct_1(~select(vec3<i32>(arg_1, arg_1, ~(-10517i)), countOneBits(vec3<i32>(arg_1, 13630i, -17183i)) & ~vec3<i32>(arg_1, arg_1, arg_1), _wgslsmith_mod_u32(1u, global0.x) == 1u), _wgslsmith_f_op_f32(step(-1205f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -908f))))), _wgslsmith_div_u32(_wgslsmith_mod_u32(1u << (~global0.x % 32u), min(~4294967295u, max(29217u, u_input.a.x))), 1u), select(vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(47711i, 17634i), vec2<i32>(-5243i, 2147483647i)) < ~15647i, arg_0), !(!(!vec2<bool>(true, arg_0))), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(arg_0, !arg_0))), ~(vec2<i32>(1i, 1i & arg_1) << (min(vec2<u32>(global0.x, u_input.a.x), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global0.x), vec2<u32>(1u, u_input.a.x))) % vec2<u32>(32u))));
    let var_1 = ~(~countOneBits(select(4294967295u, 0u, true))) & ~select(_wgslsmith_dot_vec4_u32(vec4<u32>(2346u, u_input.a.x, global0.x, u_input.a.x), ~vec4<u32>(u_input.a.x, var_0.c, 62935u, 4294967295u)), global0.x | _wgslsmith_add_u32(1u, 11490u), var_0.d.x);
    let var_2 = Struct_1(~_wgslsmith_mult_vec3_i32(~countOneBits(var_0.a), vec3<i32>(i32(-1i) * -2147483647i, ~var_0.e.x, 0i)), _wgslsmith_f_op_f32(trunc(var_0.b)), ~global0.x, !var_0.d, select(vec2<i32>(_wgslsmith_sub_i32(arg_1, var_0.e.x) | -2147483647i, ~0i), abs(abs(vec2<i32>(21071i, 2147483647i) >> (global0.xz % vec2<u32>(32u)))), select(var_0.d, vec2<bool>(true, any(vec3<bool>(true, false, arg_0))), var_0.d.x)));
    var var_3 = _wgslsmith_f_op_f32(var_0.b * -1000f);
    let var_4 = var_2.a.x;
    return vec2<bool>(((_wgslsmith_dot_vec4_i32(vec4<i32>(-39964i, 0i, arg_1, 2147483647i), vec4<i32>(1i, var_4, -2147483647i, var_4)) <= -arg_1) && false) & var_0.d.x, var_2.d.x);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<u32>) -> u32 {
    let var_0 = min(arg_1.e, countOneBits(abs(arg_1.e << (~u_input.a.xz % vec2<u32>(32u)))));
    var var_1 = -2147483647i;
    let var_2 = arg_1;
    var_1 = arg_1.e.x;
    global0 = _wgslsmith_add_vec3_u32(~arg_3.wzw, arg_3.wzx);
    return _wgslsmith_sub_u32(arg_1.c, 1u);
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = global0.xy;
    let var_1 = func_2(u_input.a.x);
    global0 = vec3<u32>(global0.x | func_4(true, Struct_1(vec3<i32>(1i, 1i, 1i), -1710f, 1u << (u_input.a.x % 32u), func_3(true, -1i), max(vec2<i32>(-27611i, -2147483647i), vec2<i32>(-12121i, 0i))), Struct_2(~u_input.a.x), vec4<u32>(var_0.x, global0.x, arg_0.a, var_1.a) | (vec4<u32>(var_0.x, u_input.a.x, 0u, 4294967295u) | vec4<u32>(var_1.a, global0.x, global0.x, 8605u))), ~min(firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x, var_1.a)), _wgslsmith_mod_u32(var_0.x, _wgslsmith_mult_u32(arg_0.a, var_0.x))), 62782u);
    var var_2 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true)), true, all(vec3<bool>(false, true, false))), all(vec3<bool>(true, true, true))), vec4<bool>(all(vec3<bool>(true, true, true)), all(vec4<bool>(false, true, false, false)), !select(false, true, true), func_3(false, 0i << (var_1.a % 32u)).x), select(true, !func_3(false, -2147483647i).x, true));
    let var_3 = vec2<u32>(min(arg_0.a, u_input.a.x) >> (func_4(var_2.x | false, Struct_1(firstLeadingBit(vec3<i32>(31287i, 0i, 1i)), _wgslsmith_f_op_f32(min(571f, 1203f)), firstTrailingBit(4294967295u), !var_2.wx, select(vec2<i32>(-15213i, 2147483647i), vec2<i32>(58091i, 0i), vec2<bool>(true, var_2.x))), func_2(73196u), vec4<u32>(_wgslsmith_clamp_u32(var_1.a, 44431u, var_1.a), var_0.x, u_input.a.x & 4294967295u, _wgslsmith_div_u32(1u, u_input.a.x))) % 32u), 1u | _wgslsmith_mod_u32(~1u, _wgslsmith_mod_u32(0u, _wgslsmith_div_u32(var_1.a, u_input.a.x))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -471f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * -288f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), any(vec2<bool>(false, true)))), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), true);
    var var_1 = ~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, global0.x, u_input.a.x, 8591u) << (vec4<u32>(1u, 31611u, u_input.a.x, 0u) % vec4<u32>(32u)), ~(vec4<u32>(global0.x, u_input.a.x, 4294967295u, 1u) << (vec4<u32>(0u, u_input.a.x, global0.x, 55657u) % vec4<u32>(32u)))));
    global0 = _wgslsmith_sub_vec3_u32(var_1.xyx, ~vec3<u32>(~global0.x, 29203u, u_input.a.x));
    let var_2 = Struct_2(~u_input.a.x | ~0u);
    let var_3 = global0.x;
    var var_4 = true;
    global0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-646f * _wgslsmith_f_op_f32(floor(396f))) - 1432f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_2)) * _wgslsmith_f_op_f32(func_1(var_2)))), 566f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1985f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -353f))))));
}

