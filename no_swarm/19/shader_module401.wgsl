struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 2147483647i, 36955i);

var<private> global1: vec2<f32> = vec2<f32>(989f, 586f);

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), 1i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(2147483647i, false);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x));
    global0 = vec3<i32>(-1i) * -u_input.d.xyw;
    var var_2 = Struct_2(~vec2<i32>(~(i32(-1i) * -3134i), global0.x));
    var var_3 = u_input.e.zy;
    return Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(global0.x, 2147483647i), ~var_2.a.x, ~u_input.d.x), u_input.d.ywx & u_input.d.www) & 2147483647i, false);
}

fn func_1() -> vec3<bool> {
    let var_0 = func_2();
    var var_1 = false;
    var_1 = all(select(!select(select(vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(false, var_0.b, true)), !vec3<bool>(true, var_0.b, false), !var_0.b), !select(vec3<bool>(var_0.b, true, true), select(vec3<bool>(false, var_0.b, true), vec3<bool>(var_0.b, false, false), vec3<bool>(var_0.b, false, var_0.b)), var_0.b), !(!vec3<bool>(var_0.b, var_0.b, var_0.b))));
    global1 = vec2<f32>(-348f, _wgslsmith_f_op_f32(-global1.x));
    let var_2 = _wgslsmith_sub_u32(~(reverseBits(1u) | u_input.b.x), u_input.e.x) ^ 0u;
    return !vec3<bool>(any(select(select(vec4<bool>(true, var_0.b, true, true), vec4<bool>(false, false, true, var_0.b), var_0.b), vec4<bool>(false, var_0.b, var_0.b, var_0.b), all(vec3<bool>(var_0.b, true, var_0.b)))), all(!vec4<bool>(false, var_0.b, var_0.b, var_0.b)) | true, var_0.b);
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = ~(~abs(~vec3<u32>(u_input.b.x, u_input.e.x, u_input.b.x) ^ reverseBits(vec3<u32>(37870u, u_input.b.x, u_input.b.x))));
    return countOneBits(global0.zz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)))));
    let var_1 = select(u_input.e.zz, vec2<u32>(u_input.c, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 48817u, u_input.c, 0u), vec4<u32>(u_input.c, u_input.b.x, 4294967295u, u_input.e.x)), vec4<u32>(60806u, 81234u, 1u, 3243u) & vec4<u32>(13094u, 4294967295u, 48625u, u_input.b.x)) & 26923u), false);
    let var_2 = select(!(!vec3<bool>(!var_0.x, all(var_0), select(false, var_0.x, var_0.x))), select(vec3<bool>(any(func_1()), var_0.x, false), !vec3<bool>(true, !var_0.x, var_0.x), vec3<bool>(var_0.x, func_2().b, select(false, var_0.x, !var_0.x))), vec3<bool>(all(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !var_0, true)), var_0.x || false, var_0.x));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -531f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global1.x))))))), _wgslsmith_f_op_f32(max(-2407f, global1.x)));
    var var_3 = Struct_2(func_3(Struct_2(u_input.d.wx & u_input.d.yz)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec3<i32>(u_input.a, global0.x, var_3.a.x)) & vec3<i32>(22078i & _wgslsmith_div_i32(0i, u_input.a), 0i << (~var_1.x % 32u), -global2.x), vec2<u32>(14754u, 0u), var_1.x, u_input.c);
}

