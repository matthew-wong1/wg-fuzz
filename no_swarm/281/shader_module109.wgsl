struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_2;

var<private> global2: u32;

var<private> global3: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    global3 = ~max(_wgslsmith_add_u32(max(13430u, max(1u, 0u)), u_input.d), ~4294967295u);
    let var_0 = abs(vec4<i32>(-2147483647i, i32(-1i) * -4379i, max(2147483647i, global1.b.x), u_input.c.x));
    global1 = Struct_2(((_wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.x, -9823i, 84250i, 1i), var_0) == 0i) == global0.x) & true, var_0.wzz, Struct_1(_wgslsmith_div_u32(abs(global1.c.a), 0u), _wgslsmith_f_op_f32(global1.c.b + _wgslsmith_f_op_f32(-global1.c.b)), select(vec3<bool>(any(global1.c.c.xx), true, true), global1.c.c, all(!global1.c.c))));
    global1 = Struct_2(select(global0.x, true, !(global0.x & any(vec2<bool>(global1.a, true)))), vec3<i32>(1i | global1.b.x, 9139i << (1u % 32u), ~(-2147483647i >> (reverseBits(global1.c.a) % 32u))), Struct_1(~firstTrailingBit(~u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.b + _wgslsmith_f_op_f32(min(global1.c.b, 438f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.c.b)))), !(!select(global1.c.c, global1.c.c, true))));
    global0 = vec3<bool>(false, ~4294967295u <= _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 57199u, global1.c.a), max(vec3<u32>(4294967295u, 6368u, 53661u), vec3<u32>(global1.c.a, u_input.b, 0u))), ~abs(3490u), _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.c.a, global1.c.a, global1.c.a, global1.c.a), ~vec4<u32>(86930u, 7032u, 4294967295u, 57094u))), true);
    return any(!select(select(global1.c.c.xx, global0.yz, any(vec4<bool>(true, false, global1.c.c.x, false))), select(global1.c.c.zy, vec2<bool>(global0.x, global0.x), global0.x), select(select(global0.yx, global1.c.c.xx, true), select(global0.xz, global0.zx, vec2<bool>(true, false)), global0.yx)));
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> Struct_3 {
    var var_0 = Struct_1(global1.c.a << (1u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-691f, -1004f, select(true, true, arg_0))) + global1.c.b), select(vec3<bool>(false | func_3(), global0.x, global1.a), !global1.c.c, !select(global1.c.c, !vec3<bool>(global1.c.c.x, global1.c.c.x, global0.x), vec3<bool>(false, true, true))));
    global2 = ~var_0.a;
    let var_1 = -(~select(vec2<i32>(19548i, 1i) >> (arg_1.a % vec2<u32>(32u)), min(u_input.c.yw, global1.b.yx), select(vec2<bool>(var_0.c.x, global1.c.c.x), vec2<bool>(true, false), true)) | u_input.c.yw);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global1.c.b, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(abs(1557f)))))))), -351f);
    var_0 = Struct_1(_wgslsmith_mod_u32(1u, var_0.a), var_0.b, select(select(select(global1.c.c, vec3<bool>(arg_0, false, arg_0), false), vec3<bool>(arg_0 & global0.x, true, any(vec3<bool>(global0.x, false, global1.a))), false), var_0.c, var_0.c));
    return arg_1;
}

fn func_1(arg_0: i32) -> bool {
    global2 = 4294967295u;
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.c.b))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -990f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global1.c.b, global1.c.b)), _wgslsmith_f_op_f32(global1.c.b + 151f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * global1.c.b), global1.c.b)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.c.b, -326f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.c.b - -654f))))));
    global3 = max(4294967295u ^ u_input.b, u_input.d);
    var var_1 = func_2(true, Struct_3(vec2<u32>(1u, ~_wgslsmith_div_u32(1u, 28176u))));
    var var_2 = Struct_1(_wgslsmith_sub_u32(max(global1.c.a, ~_wgslsmith_mod_u32(64584u, u_input.b)), ~0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-222f - 2235f))), vec3<bool>(false, true, true));
    return select(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(global1.c.c.x, all(global1.c.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1681f + _wgslsmith_f_op_f32(exp2(global1.c.b))) - _wgslsmith_f_op_f32(-var_2.b)) <= global1.c.b, true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global1.c.a;
    var var_0 = global0.xx;
    var_0 = !select(select(global1.c.c.yy, !global0.yy, (39674u > global1.c.a) || func_1(global1.b.x)), global1.c.c.zz, select(!(!global1.c.c.zy), global0.zy, global0.yy));
    var var_1 = global1.c.a;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-125f - global1.c.b), _wgslsmith_f_op_f32(f32(-1f) * -221f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.b)))), _wgslsmith_f_op_f32(-global1.c.b)));
    let var_3 = !(!all(select(vec3<bool>(global0.x, true, false), global1.c.c, global1.c.c))) | true;
    var var_4 = ~_wgslsmith_add_vec3_u32(vec3<u32>(~u_input.a, 77441u, ~global1.c.a) ^ _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, u_input.b, global1.c.a), ~vec3<u32>(global1.c.a, 4294967295u, global1.c.a), ~vec3<u32>(u_input.d, global1.c.a, global1.c.a)), reverseBits(abs(vec3<u32>(global1.c.a, 0u, global1.c.a))));
    var_1 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(33849u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.c.b, 630f, global1.c.b, -489f), vec4<f32>(-543f, 768f, 211f, global1.c.b), global1.a))))), global1.c.b);
}

