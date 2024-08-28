struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_4) -> Struct_3 {
    let var_0 = Struct_3(!arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - -526f)), global0.c);
    global0 = arg_3;
    return var_0;
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = Struct_4(true, select(select(global0.b, vec2<bool>(false, global0.a), !vec2<bool>(global0.a, false)), select(vec2<bool>(arg_0.a, global0.b.x), global0.b, vec2<bool>(u_input.c > 1u, arg_0.a)), vec2<bool>(false, true)), func_2(func_2(arg_0.c, vec3<u32>(u_input.b >> (u_input.b % 32u), u_input.b, 2810u), _wgslsmith_div_f32(742f, global0.c.a.x), Struct_4(!global0.b.x, !vec2<bool>(arg_0.a, arg_0.a), global0.c)).c, abs(vec3<u32>(1u, ~50493u, _wgslsmith_add_u32(u_input.b, 92981u))), _wgslsmith_f_op_f32(-global0.c.a.x), Struct_4(true, select(!global0.b, global0.b, arg_0.a || true), global0.c)).c);
    let var_1 = func_2(func_2(var_0.c, vec3<u32>(u_input.c, ~90354u, u_input.c), -1226f, Struct_4(false, vec2<bool>(true, global0.b.x), func_2(func_2(arg_0.c, vec3<u32>(110607u, 84168u, u_input.c), 144f, var_0).c, vec3<u32>(u_input.b, 0u, 1u), global0.c.a.x, var_0).c)).c, vec3<u32>(~4294967295u, ~abs(1u) >> (u_input.b % 32u), 21196u), arg_0.b, Struct_4(!var_0.a, select(select(vec2<bool>(arg_0.a, true), global0.b, true), vec2<bool>(u_input.a <= -23649i, global0.b.x & true), !(!global0.b.x)), var_0.c)).c;
    return vec2<bool>(any(vec4<bool>(false, global0.b.x, any(vec2<bool>(var_0.a, false)), any(select(vec4<bool>(global0.a, arg_0.a, true, arg_0.a), vec4<bool>(global0.b.x, true, false, global0.a), vec4<bool>(global0.a, true, false, true))))), var_0.b.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_4) -> bool {
    global0 = Struct_4(!global0.a, select(func_3(func_2(global0.c, ~vec3<u32>(0u, u_input.c, 60975u), -259f, Struct_4(true, vec2<bool>(false, global0.a), global0.c))), vec2<bool>(global0.a, !global0.a || !arg_2.a), vec2<bool>(arg_2.b.x, true)), arg_2.c);
    return _wgslsmith_f_op_f32(-global0.c.a.x) > _wgslsmith_f_op_f32(-func_2(Struct_1(func_2(Struct_1(arg_2.c.a), vec3<u32>(14809u, u_input.c, u_input.c), 2182f, Struct_4(true, vec2<bool>(true, false), global0.c)).c.a), vec3<u32>(u_input.c, 31872u, _wgslsmith_sub_u32(u_input.c, 39968u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x)), Struct_4(all(global0.b), global0.b, func_2(global0.c, vec3<u32>(u_input.c, 0u, 1u), global0.c.a.x, arg_2).c)).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(!any(vec4<bool>(true, true, func_1(vec2<i32>(33440i, 2147483647i), vec4<f32>(global0.c.a.x, global0.c.a.x, global0.c.a.x, global0.c.a.x), Struct_4(true, global0.b, global0.c)), any(vec3<bool>(global0.a, true, global0.b.x)))), !vec2<bool>(all(vec2<bool>(true, true)), -479f >= _wgslsmith_f_op_f32(sign(-620f))), global0.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -757f), _wgslsmith_f_op_f32(-global0.c.a.x))));
    let var_2 = Struct_4(1i <= u_input.a, vec2<bool>(true || func_1(vec2<i32>(u_input.a, 14696i) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), vec4<f32>(var_1.x, -818f, var_1.x, -471f), Struct_4(true, var_0.b, global0.c)), (_wgslsmith_f_op_f32(sign(-332f)) == -980f) || !global0.a), func_2(Struct_1(var_0.c.a), vec3<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b, 10341u, 4190u)), ~vec3<u32>(13406u, 44128u, u_input.b)), firstLeadingBit(u_input.c), ~6240u), var_1.x, Struct_4(false, func_3(Struct_3(false, global0.c.a.x, global0.c)), func_2(Struct_1(var_0.c.a), vec3<u32>(u_input.b, u_input.c, u_input.c), global0.c.a.x, Struct_4(true, var_0.b, var_0.c)).c)).c);
    var_1 = var_0.c.a.yy;
    let var_3 = var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(u_input.b, 1u), -925f);
}

