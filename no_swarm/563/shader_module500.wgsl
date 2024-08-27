struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    global0 = vec3<bool>(global0.x, false, global0.x | false);
    var var_0 = select(!select(select(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, true, global0.x, false), false), vec4<bool>(false, global0.x, false, global0.x), true), !select(vec4<bool>(global0.x, true, true, false), vec4<bool>(global0.x, false, false, false), global0.x), vec4<bool>(true & global0.x, true, true, all(global0.xy))), select(vec4<bool>(global0.x, select(select(false, true, global0.x), global0.x, global0.x), 17701i == ~u_input.a.x, false), vec4<bool>(all(vec2<bool>(true, true)), !(!global0.x), global0.x, !global0.x), !vec4<bool>(all(vec3<bool>(global0.x, true, true)), global0.x | false, global0.x, true)), all(select(vec4<bool>(!global0.x, true, true, true), select(vec4<bool>(global0.x, true, true, global0.x), select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(global0.x, true, true, global0.x), false), !vec4<bool>(true, global0.x, global0.x, global0.x)), all(!vec4<bool>(false, false, true, global0.x)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -509f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -502f)), -1720f)), vec3<f32>(-113f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(392f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(572f - 571f))), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-988f))), _wgslsmith_f_op_f32(f32(-1f) * -887f))))));
    var var_2 = var_1.x;
    let var_3 = _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(26218u, firstTrailingBit(4294967295u), ~(~68983u)));
    return !var_0.yzw;
}

fn func_2(arg_0: i32) -> vec3<bool> {
    return vec3<bool>(!(!any(!vec3<bool>(global0.x, true, global0.x))), any(func_3()) | global0.x, true);
}

fn func_1() -> f32 {
    global0 = select(vec3<bool>(global0.x, true, global0.x), !func_2(firstLeadingBit(-18240i)), global0.x);
    var var_0 = true;
    var_0 = true;
    var var_1 = Struct_5(Struct_2(-(~(-u_input.a.x)), u_input.a.x), i32(-1i) * -_wgslsmith_mod_i32(-u_input.a.x, u_input.a.x));
    global0 = !select(vec3<bool>(any(!global0.xy), !(global0.x | true), true), vec3<bool>((u_input.a.x == 15363i) || global0.x, all(func_3().xy), true), vec3<bool>(!select(false, global0.x, global0.x), global0.x, !global0.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1764f, -586f)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-1f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-1196i, firstLeadingBit(-1i), countOneBits(~(~u_input.a.x << (52315u % 32u))), u_input.a.x << (~max(~57359u, 1u) % 32u));
    global0 = vec3<bool>(true, select(all(!global0.xx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-762f + 820f)) > _wgslsmith_f_op_f32(sign(477f)), true), global0.x || false);
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1177f, -319f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(872f, 1327f, true)) - _wgslsmith_f_op_f32(sign(702f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(587f * 1000f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(654f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1324f - 332f) - _wgslsmith_f_op_f32(-304f * -1453f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-497f, 618f) - -178f)))));
    let var_2 = 0u;
    let var_3 = 2147483647i;
    var var_4 = Struct_5(Struct_2(select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_0.x, -2147483647i), vec3<i32>(var_3, u_input.a.x, 20595i) ^ vec3<i32>(u_input.a.x, u_input.a.x, var_0.x)), -var_3, true), -_wgslsmith_add_i32(var_3, var_3)), var_0.x);
    let var_5 = _wgslsmith_div_i32(-_wgslsmith_add_i32(-var_3, var_4.b), _wgslsmith_add_i32(38216i, ~u_input.a.x ^ u_input.a.x));
    var var_6 = global0.x;
    let var_7 = -(var_0.wz >> (_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(var_2, var_2), vec2<u32>(var_2, 1u)), _wgslsmith_add_vec2_u32(~vec2<u32>(var_2, var_2), vec2<u32>(6197u, var_2))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1)) - var_1)), min(var_7.x, var_7.x), vec2<i32>(var_5, i32(-1i) * -var_4.a.b), ~(-_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -1i, var_0.x) >> (vec4<u32>(var_2, 1u, var_2, 4294967295u) % vec4<u32>(32u)), min(vec4<i32>(var_7.x, var_0.x, 1i, u_input.a.x), vec4<i32>(-62071i, var_0.x, -20720i, 86073i)))));
}

