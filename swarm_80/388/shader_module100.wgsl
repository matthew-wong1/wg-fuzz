struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec2<u32>) -> vec4<bool> {
    var var_0 = false;
    return vec4<bool>(all(!global1.xyw), !any(select(!vec4<bool>(true, global1.x, true, global1.x), !vec4<bool>(false, global1.x, true, true), arg_0.x > 0u)), all(select(global1.xx, select(!vec2<bool>(global1.x, true), global1.yz, !global1.x), vec2<bool>(true, global1.x))), true);
}

fn func_3() -> i32 {
    let var_0 = ~_wgslsmith_add_u32(28717u, _wgslsmith_div_u32(~u_input.c, global0.b.a.x)) <= abs(~(~global0.b.a.x) >> (4294967295u % 32u));
    global0 = Struct_3(3028f, global0.b);
    let var_1 = 296f;
    var var_2 = _wgslsmith_f_op_f32(max(var_1, 1579f));
    global1 = func_1(global0.b.a.yy);
    return u_input.d;
}

fn func_2() -> bool {
    let var_0 = vec3<i32>(u_input.d, ~(-_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.d, u_input.d), 0i >> (global0.b.a.x % 32u))), ~(-func_3()));
    var var_1 = vec3<u32>(max(~u_input.b.x, ~1u), 1u, _wgslsmith_add_u32(1u, 1u));
    global1 = vec4<bool>(global1.x, select(false == func_1(_wgslsmith_div_vec2_u32(var_1.zy, global0.b.a.xz)).x, !any(select(vec4<bool>(false, false, false, global1.x), vec4<bool>(false, global1.x, false, false), true)), all(!select(vec4<bool>(true, true, false, false), vec4<bool>(global1.x, false, true, global1.x), global1.x))), select(~(~1u) >= u_input.e.x, false, true), all(select(!func_1(vec2<u32>(1u, u_input.b.x)).zyx, global1.zyw, global1.zzx)));
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a, global0.a, true || global1.x)) - _wgslsmith_f_op_f32(-global0.a))), global0.b);
    let var_2 = Struct_4(Struct_2(_wgslsmith_add_u32(1u, ~u_input.e.x)), !(!func_1(~vec2<u32>(global0.b.a.x, 38290u))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(!func_1(~(~global0.b.a.yw)), !vec4<bool>(global1.x, global1.x, (u_input.e.x < 4294967295u) & global1.x, !global1.x), true);
    global1 = !(!(!func_1(vec2<u32>(u_input.b.x, 0u))));
    var var_0 = !all(!vec4<bool>(true, global1.x, true, u_input.a.x < u_input.a.x));
    var_0 = any(select(select(!select(global1.wxy, vec3<bool>(global1.x, global1.x, false), true), global1.zzw, select(!global1.zwx, vec3<bool>(true, true, true), func_2())), !global1.wwz, false));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-global0.a), global0.b);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(972f, var_1.a)))) - var_1.a);
    let var_3 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(-9407i ^ -var_3, var_3);
}

