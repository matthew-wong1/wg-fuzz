struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32;

var<private> global2: u32;

var<private> global3: array<vec2<f32>, 27>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    var var_0 = select(-(firstTrailingBit(25066i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.b, u_input.b)) % 32u)), -(select(u_input.c, u_input.a.x, true) << (u_input.b % 32u)), !any(vec3<bool>(false, true, false))) >= u_input.c;
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(517f, _wgslsmith_div_f32(1016f, -1505f)), -2380f)), global3[_wgslsmith_index_u32(select(~4294967295u, (1u ^ ~u_input.b) >> (reverseBits(u_input.b) % 32u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1059f, 1000f) - _wgslsmith_f_op_f32(select(-106f, -543f, true))) > 956f), 27u)]));
    var_0 = 1u > _wgslsmith_mod_u32(~u_input.b >> (~abs(u_input.b) % 32u), ~u_input.b);
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-599f, var_1.x, -649f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-983f, 982f, 1478f) - vec3<f32>(-745f, var_1.x, -1079f)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, 613f))), var_1.x, _wgslsmith_div_f32(1239f, _wgslsmith_f_op_f32(-var_1.x))))));
    global3 = array<vec2<f32>, 27>();
    return !all(vec4<bool>(false, true, true, true));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool) -> u32 {
    let var_0 = (firstTrailingBit(5992u) == 0u) || false;
    let var_1 = _wgslsmith_dot_vec2_u32(max(_wgslsmith_sub_vec2_u32(firstTrailingBit(~vec2<u32>(43312u, 1u)), firstTrailingBit(~vec2<u32>(u_input.b, u_input.b))), _wgslsmith_clamp_vec2_u32(select(max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.b, u_input.b), var_0), vec2<u32>(u_input.b, u_input.b), firstTrailingBit(vec2<u32>(54672u, u_input.b) & vec2<u32>(u_input.b, u_input.b)))), ~(~abs(vec2<u32>(0u, u_input.b))));
    var var_2 = 2450f;
    global2 = min(~0u, ~1u);
    let var_3 = Struct_1(!vec3<bool>(all(select(vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(arg_1, true, var_0, true))), all(select(vec4<bool>(arg_1, arg_1, var_0, false), vec4<bool>(true, false, true, arg_1), false)), arg_1), !vec4<bool>((true && var_0) == true, true, false, all(!vec2<bool>(var_0, true))));
    return var_1;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<bool> {
    global2 = abs(u_input.b);
    global3 = array<vec2<f32>, 27>();
    global2 = 158231u;
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(func_4(vec2<i32>(arg_0.x, u_input.a.x) >> (~vec2<u32>(1u, u_input.b) % vec2<u32>(32u)), !func_3()), u_input.b), _wgslsmith_sub_u32((~u_input.b << (0u % 32u)) | ~firstTrailingBit(4294967295u), 32460u));
    global3 = array<vec2<f32>, 27>();
    return !(!vec3<bool>(false, arg_2.b.x, arg_2.a.x));
}

fn func_1(arg_0: Struct_1) -> bool {
    global0 = _wgslsmith_f_op_f32(step(-400f, -619f));
    let var_0 = arg_0.a.x & !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1631f) + _wgslsmith_f_op_f32(step(805f, -907f))) >= _wgslsmith_f_op_f32(-215f * 1000f));
    var var_1 = Struct_1(select(!arg_0.b.wzw, !(!func_2(u_input.a.xy, global3[_wgslsmith_index_u32(u_input.b, 27u)], arg_0)), arg_0.b.xwx), arg_0.b);
    var var_2 = arg_0;
    let var_3 = ~u_input.a.zy;
    return !all(func_2(vec2<i32>(22691i, u_input.a.x) | u_input.a.xy, global3[_wgslsmith_index_u32(4294967295u << (_wgslsmith_dot_vec2_u32(vec2<u32>(46127u, 4294967295u), vec2<u32>(u_input.b, 9756u)) % 32u), 27u)], Struct_1(var_1.a, !var_1.b)).yz);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 27>();
    let var_0 = Struct_1(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), select(vec4<bool>(true, true, true, false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, func_1(Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, true, false, false))), all(vec3<bool>(true, true, true)), !all(vec2<bool>(false, false)))));
    let var_1 = Struct_1(vec3<bool>(var_0.b.x == any(vec4<bool>(true, false, var_0.b.x, var_0.a.x)), var_0.b.x, var_0.b.x), select(var_0.b, var_0.b, var_0.b));
    let var_2 = _wgslsmith_mult_i32(6400i, u_input.a.x);
    var var_3 = ~(~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.b, 0u, 0u, 56236u)), firstLeadingBit(~vec4<u32>(90668u, 38472u, 0u, u_input.b)), vec4<u32>(1u, 3666u, 47635u, u_input.b & u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(-1i) * -reverseBits(vec4<i32>(29199i, u_input.a.x, -22850i, -2147483647i)), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, ~vec3<i32>(5109i, 26500i, 16604i)), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, -u_input.a.x), 0i, select(0i, 1i, true))));
}

