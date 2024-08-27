struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(1u, 14599u), vec2<u32>(40027u, 1u), vec2<u32>(1u, 13326u), vec2<u32>(0u, 25321u), vec2<u32>(1u, 0u), vec2<u32>(4794u, 0u), vec2<u32>(18869u, 76649u), vec2<u32>(0u, 6923u), vec2<u32>(34243u, 4294967295u), vec2<u32>(30173u, 4294967295u), vec2<u32>(28324u, 54000u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(50568u, 1u), vec2<u32>(45553u, 1u), vec2<u32>(0u, 1u), vec2<u32>(0u, 8431u), vec2<u32>(4294967295u, 38841u), vec2<u32>(0u, 21004u), vec2<u32>(55641u, 20152u), vec2<u32>(31890u, 16718u), vec2<u32>(41321u, 32442u), vec2<u32>(0u, 11758u), vec2<u32>(21905u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 86984u), vec2<u32>(4294967295u, 1u), vec2<u32>(68984u, 61666u), vec2<u32>(1u, 97985u), vec2<u32>(20104u, 0u));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> vec2<u32> {
    global0 = array<vec2<u32>, 31>();
    global0 = array<vec2<u32>, 31>();
    global0 = array<vec2<u32>, 31>();
    let var_0 = 0i;
    var var_1 = 25209u;
    return vec2<u32>(u_input.a, u_input.b);
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = Struct_5(select(!vec3<bool>(any(vec2<bool>(arg_0, false)), true | arg_0, all(vec4<bool>(false, arg_0, arg_0, arg_0))), select(select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, false, arg_0), true), !vec3<bool>(false, arg_0, true), !vec3<bool>(true, false, arg_0)), vec3<bool>(true, all(vec4<bool>(arg_0, arg_0, true, false)), arg_0), vec3<bool>(false || arg_0, u_input.b >= 4294967295u, true)), true | any(!vec3<bool>(false, arg_0, false))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1185f, 262f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-583f, -765f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -786f), -1267f), _wgslsmith_f_op_f32(select(-795f, -499f, arg_0))))), Struct_1(_wgslsmith_sub_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 11345u, 66781u, 1931u), vec4<u32>(u_input.a, 604u, 4294967295u, u_input.b), vec4<u32>(68711u, 52762u, u_input.a, 1u)), min(vec4<u32>(u_input.a, u_input.a, u_input.b, 35424u), vec4<u32>(23651u, u_input.a, u_input.b, 13213u)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0))), vec4<u32>(max(44797u, 39621u), firstTrailingBit(0u), 20109u, firstLeadingBit(4294967295u)))));
    var var_1 = !vec2<bool>(true, var_0.a.x);
    var var_2 = vec4<u32>(~(~(~8641u)), max(var_0.c.a.x, max(~(~0u), ~(~u_input.b))), ~77698u, abs(func_1(u_input.b, Struct_3(Struct_2(vec2<u32>(1u, u_input.a), global0[_wgslsmith_index_u32(var_0.c.a.x, 31u)], var_0.a, false, var_0.c), var_0.b.x, var_0.c.a.yww, u_input.c)).x & ~select(4294967295u, var_0.c.a.x, false)));
    global0 = array<vec2<u32>, 31>();
    let var_3 = _wgslsmith_mult_i32(-11468i, -(2147483647i ^ u_input.c.x));
    return false;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: u32) -> u32 {
    let var_0 = Struct_2(~global0[_wgslsmith_index_u32(8705u, 31u)], ~_wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(~(~arg_3), 31u)], vec2<u32>(4294967295u, 0u)), select(vec3<bool>(true, func_3(false) & any(vec3<bool>(true, true, false)), true), select(vec3<bool>(all(vec4<bool>(true, true, true, false)), true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), true, Struct_1(~select(vec4<u32>(22207u, u_input.a, u_input.b, u_input.a), firstTrailingBit(vec4<u32>(arg_3, u_input.b, arg_3, 96238u)), vec4<bool>(true, true, true, true))));
    return ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, 84551u, u_input.b), var_0.e.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(84517u, u_input.b, var_0.a.x, arg_3), var_0.e.a, var_0.e.a)) | 4294967295u, var_0.b.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(min(1u, arg_3), 8670u), 66716u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 31>();
    let var_0 = Struct_1(vec4<u32>(u_input.b, u_input.b, _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a), func_1(0u, Struct_3(Struct_2(vec2<u32>(u_input.b, 36724u), vec2<u32>(1u, u_input.a), vec3<bool>(false, true, false), false, Struct_1(vec4<u32>(1u, 18220u, 0u, 0u))), 1610f, vec3<u32>(0u, 27037u, 60262u), u_input.c)))), ~min(_wgslsmith_add_u32(u_input.a, 42348u), 4771u | u_input.b)));
    var var_1 = any(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true));
    let var_2 = vec2<u32>(u_input.b, ~func_2(vec3<f32>(-476f, -1001f, -2355f), _wgslsmith_clamp_vec4_i32(vec4<i32>(-34452i, u_input.c.x, 26069i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, 20269i, 15517i), vec4<i32>(u_input.c.x, -1646i, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1044f, 284f))), u_input.b) & u_input.b);
    var_1 = !(!all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, true, true), var_0.a.x > var_0.a.x)));
    var var_3 = firstLeadingBit(~(-1i));
    var var_4 = min(var_0.a.x, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -994f) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2269f), _wgslsmith_f_op_f32(sign(-488f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2465f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(245f)), _wgslsmith_f_op_f32(round(-948f))))));
}

