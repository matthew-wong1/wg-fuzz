struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<bool>, arg_3: bool) -> bool {
    var var_0 = vec3<bool>(arg_3, arg_2.x | all(arg_2), arg_2.x);
    global0 = _wgslsmith_add_i32(~((i32(-1i) * -2147483647i) >> (_wgslsmith_sub_u32(u_input.d.x, u_input.a) % 32u)), 1i) | 1i;
    var var_1 = Struct_1(select(~_wgslsmith_mod_vec2_u32(vec2<u32>(39813u, u_input.c), ~arg_0), min(vec2<u32>(0u, 1u), _wgslsmith_sub_vec2_u32(arg_0, u_input.e) & (vec2<u32>(1u, 1697u) << (u_input.d % vec2<u32>(32u)))), arg_3), ~u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - arg_1)), arg_0.x & 4294967295u);
    let var_2 = 55669u;
    let var_3 = ~vec4<i32>(1i, 1i, 1i, 1i);
    return !all(var_0.zy);
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(abs(vec2<u32>(u_input.e.x, ~u_input.c)), countOneBits(vec3<u32>(4294967295u, 19399u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b))), arg_1.x, ~u_input.a), !any(!vec4<bool>(false, true, arg_0, arg_0)));
    var_0 = Struct_2(Struct_1(u_input.d, var_0.a.b, arg_1.x, u_input.e.x), !var_0.b);
    return vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(var_0.a.b.zz, _wgslsmith_mult_vec2_u32(vec2<u32>(firstLeadingBit(5837u), min(var_0.a.a.x, 1417u)), countOneBits(u_input.e))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, 43751u) << (~vec2<u32>(u_input.b.x, 2956u) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(u_input.e.x, u_input.d.x)) & ~var_0.a.a), firstLeadingBit(vec2<u32>(_wgslsmith_sub_u32(0u, var_0.a.d), u_input.c))));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = Struct_3(Struct_2(Struct_1(vec2<u32>(max(23278u, u_input.c), arg_0), func_3(true, vec4<f32>(-1325f, 865f, 1000f, -387f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-658f + -295f))), arg_0), !all(vec4<bool>(false, false, true, true))), abs(~(1u << (~u_input.c % 32u))));
    let var_1 = -636f;
    global0 = countOneBits(_wgslsmith_div_i32(0i, _wgslsmith_sub_i32(_wgslsmith_div_i32(firstLeadingBit(1i), 1i), -2147483647i)));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), -222f), -713f)), -1000f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 1052f) * vec2<f32>(var_0.a.a.c, var_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 994f) * vec2<f32>(var_1, 161f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-224f, var_1)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1107f, -229f))))))));
    var_2 = vec2<f32>(var_1, 992f);
    return var_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(func_1(abs(~vec2<u32>(1u, u_input.e.x)), _wgslsmith_f_op_f32(step(-620f, _wgslsmith_f_op_f32(abs(1447f)))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), true), true, true, false), !vec4<bool>(func_2(abs(4294967295u)), !func_2(u_input.c), false, true), select(vec4<bool>(any(vec4<bool>(false, false, false, true)) || true, select(true, true, true), any(vec3<bool>(true, false, false)) & true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false)), vec4<bool>(true, true, true, true)));
    var var_1 = Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(select(u_input.d, vec2<u32>(u_input.d.x, 0u), true), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), vec2<u32>(u_input.d.x, 18572u))), u_input.c) & vec2<u32>(u_input.e.x, ~(~4294967295u)), min(vec3<u32>(u_input.e.x ^ u_input.b.x, u_input.a | u_input.d.x, u_input.b.x), vec3<u32>(1189u, 1u, min(4294967295u, u_input.b.x))) & u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1375f * -1046f) - 942f), 0u);
    let var_2 = var_0.xzw;
    var var_3 = 293f;
    let var_4 = u_input.b.x;
    var var_5 = ~(-2147483647i) & _wgslsmith_mod_i32(_wgslsmith_mod_i32(~(-2147483647i >> (var_1.b.x % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 10135i), vec2<i32>(-47559i, -2147483647i)) ^ -1i), ~0i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(vec4<u32>(var_4, 1u, 6354u, u_input.d.x) >> (vec4<u32>(1u, u_input.b.x, 88179u, u_input.e.x) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.c)) - -854f))), _wgslsmith_mod_vec3_i32(-firstTrailingBit(vec3<i32>(44686i, -2147483647i, -31897i) << (vec3<u32>(var_1.a.x, var_4, 44705u) % vec3<u32>(32u))), ~select(vec3<i32>(1i, 1i, 1i), min(vec3<i32>(-2147483647i, -6576i, 2147483647i), vec3<i32>(2147483647i, -12737i, 2147483647i)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(264f + _wgslsmith_f_op_f32(-var_1.c))));
}

