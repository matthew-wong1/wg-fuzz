struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_5;

var<private> global2: bool = true;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1997f))) - -454f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) * -310f) * global1.b.x)));
    global2 = !all(vec2<bool>(true, true));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1724f - -302f), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.b.x, global1.b.x)) - _wgslsmith_f_op_f32(round(global1.b.x)))), global1.b.x));
    var var_2 = any(vec2<bool>(true, all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true))) && !all(vec2<bool>(true, true))));
    var var_3 = Struct_2(~(-(~arg_2.b)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(global1.a, 4294967295u, 978u)), 19785u, _wgslsmith_add_u32(global1.a, 4294967295u), ~global1.c.a), global1.b.yz);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global1.b))))), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(round(var_0)), 1611f));
}

fn func_2(arg_0: f32) -> Struct_5 {
    return Struct_5(firstTrailingBit(_wgslsmith_mod_u32(1u, firstTrailingBit(~1u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1618f, 1771f, global1.b.x) - global1.b))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(21729i, -1121i), Struct_1(0u, global1.c.b), Struct_1(global0.x, vec2<i32>(-1i, 30785i)))), vec3<f32>(-764f, -1942f, arg_0)))) * global1.b), global1.c);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3) -> u32 {
    global1 = arg_0;
    global2 = true;
    global0 = ~_wgslsmith_sub_vec3_u32(~select(select(vec3<u32>(arg_0.a, 1456u, 1u), vec3<u32>(global0.x, arg_0.c.a, global1.c.a), vec3<bool>(true, false, true)), vec3<u32>(16540u, 0u, global0.x) ^ vec3<u32>(arg_0.c.a, 18276u, arg_0.a), vec3<bool>(true, false, true)), ~vec3<u32>(1u, max(global1.a, 77167u), global1.c.a & 94895u));
    global1 = func_2(-501f);
    global1 = Struct_5(1u, global1.b, arg_0.c);
    return _wgslsmith_div_u32(select(_wgslsmith_dot_vec2_u32(global0.zz, ~max(vec2<u32>(global0.x, 32485u), global0.zy)), arg_0.a, true), global1.a);
}

fn func_1(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = any(vec2<bool>(true, global1.b.x > 1000f));
    global0 = _wgslsmith_div_vec3_u32(~(~(max(vec3<u32>(global1.c.a, 13078u, global1.c.a), vec3<u32>(global0.x, 111706u, 65289u)) | ~vec3<u32>(12502u, 4294967295u, 0u))), vec3<u32>(_wgslsmith_sub_u32(56770u, ~abs(global1.a)), ~23926u, ~select(global1.a, 1u, true)));
    let var_1 = ~(~func_4(func_2(_wgslsmith_f_op_f32(arg_0.x + global1.b.x)), Struct_3(~u_input.b.x)));
    var_0 = !all(vec4<bool>(true, true, true, true));
    global0 = vec3<u32>(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, global1.c.a, 0u, 16668u)), select(vec4<u32>(var_1, 0u, 4294967295u, var_1), vec4<u32>(137839u, 33788u, global0.x, global0.x), vec4<bool>(true, true, true, true))), ~global1.c.a, countOneBits(var_1));
    return Struct_3(countOneBits(u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global1.c.b, ~_wgslsmith_div_vec4_u32(~vec4<u32>(global0.x, 0u, global0.x, 1u), abs(vec4<u32>(4294967295u, global0.x, global0.x, 0u))) << (vec4<u32>(global1.c.a, min(abs(global1.c.a), global1.a), 1u, global1.c.a) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(floor(global1.b.x)), global1.b.x));
    var var_1 = global1.c;
    var var_2 = i32(-1i) * -global1.c.b.x;
    var var_3 = select(!select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), !(-121f < global1.b.x)), vec2<bool>(true, true), false);
    var_3 = !(!vec2<bool>(abs(var_0.a.x) < _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.x, 0i), vec2<i32>(var_1.b.x, var_1.b.x)), select(var_3.x, var_3.x, true) && select(false, false, true)));
    var var_4 = func_1(global1.b);
    global0 = vec3<u32>(1u, _wgslsmith_add_u32(69565u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(16687u, 0u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.a, var_1.a), var_0.b.xz, vec2<u32>(4294967295u, 0u)))) ^ (58967u << (abs(_wgslsmith_div_u32(97049u, var_0.b.x)) % 32u)), 64620u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x - 261f) + _wgslsmith_f_op_f32(round(global1.b.x)))))), vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-321f)), _wgslsmith_f_op_f32(-881f - _wgslsmith_f_op_f32(-global1.b.x)), var_3.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c.x, -212f, true))), var_0.c.x), -1391f));
}

