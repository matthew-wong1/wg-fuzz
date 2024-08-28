struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    global1 = Struct_3(firstLeadingBit(vec3<u32>(~_wgslsmith_sub_u32(13109u, global1.a.x), ~(~global1.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, global0.b.x, global1.a.x), vec4<u32>(0u, u_input.c, global0.b.x, global0.b.x)))), global1.b);
    var var_0 = all(select(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), select(true, true, global0.d.x != -2574f))));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1000f))));
    let var_2 = true;
    var var_3 = Struct_1(-7903i, vec2<u32>(1u, _wgslsmith_sub_u32(4294967295u, min(u_input.c ^ 10852u, 10994u))), global0.d, global0.d);
    return countOneBits(7851i);
}

fn func_2() -> Struct_1 {
    var var_0 = global0.a;
    let var_1 = firstTrailingBit(firstLeadingBit(u_input.b));
    var var_2 = max(func_3(), 8055i);
    let var_3 = ~(~select(vec4<u32>(1u, 77100u, ~global1.a.x, u_input.c), vec4<u32>(~global0.b.x, global0.b.x, global0.b.x & 29166u, ~u_input.c), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)));
    var var_4 = ~(global1.a.x & ~u_input.c);
    return Struct_1((u_input.d.x << (global0.b.x % 32u)) & u_input.d.x, global1.a.zx, _wgslsmith_div_vec2_f32(vec2<f32>(global0.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.d.x * 738f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c.x))), 545f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.d.x)), _wgslsmith_f_op_f32(ceil(global0.c.x))))), _wgslsmith_f_op_vec2_f32(-global0.d))));
}

fn func_1() -> Struct_3 {
    var var_0 = func_2();
    return Struct_3(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c, ~global1.a.x, _wgslsmith_add_u32(global1.a.x, global1.a.x)), _wgslsmith_clamp_vec3_u32(global1.a, ~_wgslsmith_div_vec3_u32(global1.a, global1.a), global1.a)), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(0u, ~(~min(global1.a.x & 3227u, global1.a.x)), u_input.c);
    global1 = func_1();
    global1 = func_1();
    global1 = Struct_3(global1.a, -global1.b);
    var var_1 = Struct_2(func_2());
    var var_2 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(false, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(false, true, true)), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), false))), vec2<bool>(true, all(vec2<bool>(true, true))), all(vec3<bool>(true, true, true)));
    var_1 = Struct_2(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~(~47988u), func_2().b.x ^ (global0.b.x | global0.b.x)), 69862u, ~(~select(global1.a, vec3<u32>(4294967295u, var_1.a.b.x, global1.a.x), var_2.x) ^ _wgslsmith_add_vec3_u32(global1.a, vec3<u32>(var_1.a.b.x, 58209u, 0u) ^ global1.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-589f * 875f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x * global0.c.x)))), countOneBits(firstLeadingBit(~vec2<i32>(global0.a, u_input.d.x) >> (var_1.a.b % vec2<u32>(32u)))));
}

