struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec2<bool> {
    let var_0 = global0[_wgslsmith_index_u32(~53817u, 6u)];
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    return select(select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, false, true)), -1i < arg_0.e), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true)))), vec2<bool>(true, any(vec2<bool>(any(vec2<bool>(true, false)), all(vec2<bool>(true, false))))), vec2<bool>(true, true));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: Struct_2) -> u32 {
    let var_0 = arg_0;
    global0 = array<Struct_1, 6>();
    let var_1 = select(!(!vec2<bool>(true, select(false, true, false))), select(!select(func_3(arg_3, arg_3.c.b.x), vec2<bool>(true, true), vec2<bool>(true, true)), func_3(Struct_2(Struct_1(93870u, vec4<f32>(var_0.c.b.x, 787f, var_0.c.b.x, -261f)), Struct_1(arg_0.c.a, arg_0.c.b), Struct_1(7272u, arg_3.d.b), arg_3.c, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-357f + 742f))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, false, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), vec2<bool>(select(false, true, true), all(vec3<bool>(true, false, true))))), vec2<bool>(false, all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(false, false), false))));
    let var_2 = Struct_1(~select(~(var_0.b.a >> (u_input.a.x % 32u)), firstTrailingBit(1u), !var_1.x), arg_0.d.b);
    global0 = array<Struct_1, 6>();
    return arg_3.c.a;
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(u_input.c.x, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], Struct_1(u_input.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-299f, -276f, -372f, 1000f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-378f, 1313f, 1735f, 1237f) - vec4<f32>(-592f, -196f, 1560f, -1760f)), vec4<f32>(-1089f, -2036f, -1000f, -774f))))), global0[_wgslsmith_index_u32(~(~func_2(Struct_2(Struct_1(u_input.c.x, vec4<f32>(160f, 1000f, -1000f, -402f)), Struct_1(0u, vec4<f32>(168f, 760f, -674f, -525f)), Struct_1(29655u, vec4<f32>(-829f, 196f, 610f, 854f)), global0[_wgslsmith_index_u32(9735u, 6u)], u_input.b.x), vec3<i32>(34461i, u_input.b.x, u_input.b.x), u_input.b.zz, Struct_2(global0[_wgslsmith_index_u32(u_input.c.x, 6u)], Struct_1(4294967295u, vec4<f32>(-355f, 243f, 439f, -1146f)), global0[_wgslsmith_index_u32(u_input.c.x, 6u)], Struct_1(4294967295u, vec4<f32>(228f, 1620f, -1971f, -799f)), 0i)) ^ 0u), 6u)], -35934i);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.b.zx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(991f, -1551f)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1001f, var_0.b.b.x) - vec2<f32>(var_0.d.b.x, -271f)))))), _wgslsmith_div_f32(var_0.a.b.x, var_0.c.b.x) >= _wgslsmith_f_op_f32(-1248f + var_0.d.b.x)));
    let var_2 = !select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), vec3<bool>(true, all(vec3<bool>(false, true, true)), all(vec4<bool>(false, false, false, false))), !any(vec2<bool>(true, false))), !vec3<bool>(true, select(true, false, true), true), true);
    let var_3 = all(select(select(!(!vec4<bool>(var_2.x, false, false, var_2.x)), !vec4<bool>(var_2.x, true, var_2.x, var_2.x), true), !(!select(vec4<bool>(false, var_2.x, var_2.x, false), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(true, true, var_2.x, var_2.x))), any(!select(vec4<bool>(false, true, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, true, var_2.x), var_2.x))));
    global0 = array<Struct_1, 6>();
    return StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(var_0.e, -1i), ~(var_0.e ^ ~var_0.e), u_input.b.x), abs(u_input.c.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b.x) + -1000f)), _wgslsmith_f_op_f32(abs(-406f)), _wgslsmith_f_op_f32(floor(-1184f))), ~vec2<i32>(26386i >> (1u % 32u), _wgslsmith_dot_vec4_i32(-u_input.b, abs(u_input.b))), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

