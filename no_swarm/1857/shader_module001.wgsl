struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.a, ~u_input.a)), ~vec2<u32>(~54741u, 6822u));
    var_0 = _wgslsmith_sub_vec2_u32(~abs(vec2<u32>(~u_input.a, ~48165u)), vec2<u32>(var_0.x, _wgslsmith_mod_u32(4294967295u, var_0.x >> (~u_input.a % 32u))));
    global0 = Struct_2(global0.b, Struct_1(arg_0.a));
    var var_1 = Struct_4(!all(select(!arg_1, !arg_1, vec3<bool>(false, arg_1.x, arg_0.a.x))), all(vec2<bool>(all(select(vec4<bool>(arg_1.x, global0.b.a.x, true, arg_0.a.x), vec4<bool>(false, global1.a.x, global0.b.a.x, global1.a.x), vec4<bool>(global0.a.a.x, arg_0.a.x, false, global0.a.a.x))), any(vec4<bool>(arg_0.a.x, arg_1.x, arg_0.a.x, global0.a.a.x)))), vec3<f32>(1f, 1f, 1f), Struct_2(Struct_1(select(!global1.a, select(arg_0.a, vec2<bool>(global0.b.a.x, arg_0.a.x), vec2<bool>(false, global1.a.x)), true)), global0.a), countOneBits(firstLeadingBit(_wgslsmith_sub_i32(~u_input.b.x, -37005i << (u_input.a % 32u)))));
    let var_2 = 1i;
    return min(_wgslsmith_clamp_i32(-u_input.b.x, -var_1.e, var_2) & var_1.e, var_2) < ~0i;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    var var_0 = global0.b;
    return arg_0;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_4(global0.a.a.x, arg_0.a.x, vec3<f32>(_wgslsmith_f_op_f32(trunc(-478f)), -1006f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1149f + -2455f), 281f)), _wgslsmith_f_op_f32(abs(-655f)), Struct_2(global0.a, global0.b), select(vec2<bool>(true, arg_1.x), vec2<bool>(global0.a.a.x, arg_1.x), func_3(Struct_1(arg_1.wy), arg_1.zww))))), Struct_2(global0.a, Struct_1(vec2<bool>(true, global0.a.a.x))), u_input.b.x);
    var var_1 = abs(~(~vec4<u32>(u_input.a, _wgslsmith_div_u32(0u, 9603u), u_input.a, 0u & u_input.a)));
    var var_2 = u_input.a;
    var var_3 = global1.a.x;
    let var_4 = -295f;
    return var_0.d.b;
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> vec3<u32> {
    global0 = Struct_2(arg_1.d.a, global0.b);
    global1 = func_2(Struct_1(!select(!global1.a, !arg_1.d.b.a, true)), vec4<bool>(false, true, false, !global1.a.x));
    var var_0 = -54068i;
    var var_1 = _wgslsmith_sub_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(u_input.a, 0u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 1u))) | ((vec2<u32>(u_input.a, 1u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) ^ (vec2<u32>(49331u, 0u) ^ vec2<u32>(u_input.a, 163047u)))), ~(~(~(~vec2<u32>(u_input.a, 4294967295u)))));
    var_0 = 1i;
    return vec3<u32>(~(~(~select(0u, var_1.x, global1.a.x))), firstTrailingBit(countOneBits(~var_1.x)), _wgslsmith_add_u32(u_input.a, ~(~0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, ~29549u, 34918u), abs(vec3<u32>(84642u, 0u, u_input.a)) | vec3<u32>(u_input.a, 6331u, 29174u), func_1(true, Struct_4(false, true, vec3<f32>(-852f, 1000f, -427f), Struct_2(global0.b, global0.b), u_input.b.x))), reverseBits(max(~vec3<u32>(75227u, 44161u, u_input.a), ~vec3<u32>(u_input.a, 70000u, u_input.a))), func_3(Struct_1(vec2<bool>(false, true)), select(!vec3<bool>(false, global1.a.x, false), select(vec3<bool>(global0.a.a.x, global1.a.x, false), vec3<bool>(true, global0.a.a.x, false), vec3<bool>(false, false, global1.a.x)), true))));
    global1 = func_2(global0.a, select(select(select(select(vec4<bool>(global0.b.a.x, global0.b.a.x, global0.b.a.x, global0.b.a.x), vec4<bool>(true, global0.a.a.x, global0.b.a.x, global1.a.x), vec4<bool>(false, global1.a.x, true, true)), vec4<bool>(false, false, global0.b.a.x, true), global1.a.x), vec4<bool>(global0.a.a.x, true, false, global0.a.a.x), !(!vec4<bool>(false, false, global0.a.a.x, global1.a.x))), !select(select(vec4<bool>(global1.a.x, true, global1.a.x, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), !vec4<bool>(false, global0.b.a.x, false, true), global1.a.x), true));
    var var_1 = global1.a.x;
    let var_2 = Struct_2(Struct_1(global1.a), Struct_1(select(func_2(global0.b, select(vec4<bool>(global0.b.a.x, true, false, global1.a.x), vec4<bool>(true, global1.a.x, global1.a.x, true), vec4<bool>(false, global1.a.x, global1.a.x, true))).a, select(vec2<bool>(true, true), !vec2<bool>(global0.a.a.x, true), global1.a), -59838i >= u_input.b.x)));
    let var_3 = Struct_4(func_3(Struct_1(vec2<bool>(false, true)), !(!(!vec3<bool>(true, global1.a.x, false)))), true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-344f, -1717f, -213f), vec3<f32>(690f, 352f, -1197f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-387f, 168f, 658f)), vec3<f32>(-1642f, 563f, 413f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(188f, -419f, 395f) + vec3<f32>(-1000f, 642f, -520f)))), false)), var_2, -43860i);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e, ~abs(var_0.x));
}

