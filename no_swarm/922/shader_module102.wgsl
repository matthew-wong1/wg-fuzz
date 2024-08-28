struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 20>;

var<private> global2: f32 = -1000f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    let var_0 = !(_wgslsmith_div_u32(~(global0.a.x | global0.a.x), global0.a.x) < max(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global0.a.xx, global0.a.zx), global0.a.x), 4294967295u));
    var var_1 = vec2<f32>(1f, 1f);
    let var_2 = var_0;
    var var_3 = Struct_1(~vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global0.a.x, 0u), 1u), ~(~global0.a.x), global0.a.x, min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.a.x, 4294967295u), vec3<u32>(global0.a.x, global0.a.x, global0.a.x)), countOneBits(global0.a.x))));
    global0 = Struct_1(~(~abs(global0.a)));
    return _wgslsmith_mult_vec4_u32(~(~(~select(var_3.a, vec4<u32>(global0.a.x, 4294967295u, var_3.a.x, var_3.a.x), var_2))), global0.a);
}

fn func_2() -> Struct_1 {
    global1 = array<vec4<u32>, 20>();
    let var_0 = Struct_1(_wgslsmith_mod_vec4_u32(global0.a << ((global0.a >> (vec4<u32>(global0.a.x, 17361u, 13090u, global0.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), func_3()) ^ _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(global0.a.x, 36674u, global0.a.x, global0.a.x)), func_3()));
    let var_1 = vec4<u32>(~4294967295u, ~(~(~var_0.a.x)), ~max(~(~global0.a.x), 1u), 21704u);
    global2 = _wgslsmith_f_op_f32(sign(-777f));
    global1 = array<vec4<u32>, 20>();
    return var_0;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: vec2<i32>, arg_3: vec3<u32>) -> u32 {
    global2 = _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(507f * -211f));
    global1 = array<vec4<u32>, 20>();
    global1 = array<vec4<u32>, 20>();
    var var_0 = func_2();
    var var_1 = _wgslsmith_sub_vec3_u32(var_0.a.zxy, arg_3);
    return ~countOneBits(4294967295u);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec2<u32>) -> vec2<u32> {
    let var_0 = !(!select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, arg_2), vec3<bool>(true, arg_2, arg_2)), select(select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(true, arg_2, arg_2), false), select(vec3<bool>(true, true, arg_2), vec3<bool>(arg_2, arg_2, true), vec3<bool>(false, arg_2, false)), true & arg_2), arg_2));
    global0 = func_2();
    var var_1 = Struct_1(~max(_wgslsmith_mult_vec4_u32(vec4<u32>(41713u, arg_0, arg_0, 1u), arg_1.a), _wgslsmith_mult_vec4_u32(global0.a, firstLeadingBit(vec4<u32>(43438u, 37418u, 22769u, arg_3.x)))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -404f), _wgslsmith_f_op_f32(-1000f * 1000f), !var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1446f))))));
    let var_3 = _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(u_input.a, u_input.a, -23850i) >> (global0.a.x % 32u), u_input.a);
    return ~arg_1.a.xw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -661f) * -508f)));
    var var_1 = Struct_1(global0.a & ~_wgslsmith_mod_vec4_u32(vec4<u32>(39744u, global0.a.x, 1u, 1u), global1[_wgslsmith_index_u32(22917u, 20u)]));
    let var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.a.x, ~1u), _wgslsmith_mod_vec2_u32(firstTrailingBit(var_1.a.zz), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(var_1.a.x, var_1.a.x), var_1.a.yx, true), var_1.a.wx, vec2<u32>(1u, 4294967295u)))), func_4(_wgslsmith_div_u32(min(1u, global0.a.x), _wgslsmith_mod_u32(65667u, func_1(vec3<f32>(-719f, 282f, -1000f), 17317u, vec2<i32>(u_input.a, u_input.a), var_1.a.wzy))), func_2(), false, abs(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.a.wz, global0.a.wz), vec2<u32>(var_1.a.x, global0.a.x)))));
    var var_3 = func_2();
    let var_4 = func_2();
    global2 = -519f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1854f, -320f, 290f, -1532f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-468f, 1022f, -692f, -256f)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(302f, -1149f, 1158f, 1160f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(984f, 1000f, -1591f, 1000f) - vec4<f32>(-422f, -309f, 114f, 367f))), vec4<bool>(true, false, any(vec4<bool>(false, false, true, true)), true))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -632f) + 611f), -1062f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-207f)), _wgslsmith_f_op_f32(-158f - 1054f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2929f))))), ~(~(~(-vec4<i32>(2147483647i, u_input.a, 16905i, u_input.a)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(119f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(-1222f))))))), _wgslsmith_div_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-3949i, u_input.a, u_input.a, u_input.a) & vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, 10117i, u_input.a), vec4<i32>(u_input.a, u_input.a, 46362i, u_input.a) & vec4<i32>(u_input.a, -26624i, u_input.a, 25834i))), vec4<i32>(-1i) * -select(vec4<i32>(u_input.a, -43361i, -1i, 0i), vec4<i32>(u_input.a, -8283i, 1i, -22238i), true)));
}

