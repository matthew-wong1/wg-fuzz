struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(true);

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true));

var<private> global4: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_2) -> bool {
    return select(arg_0.b.a, true, true);
}

fn func_3() -> vec4<bool> {
    var var_0 = global0.a;
    let var_1 = Struct_1(true);
    let var_2 = Struct_2(Struct_1(!any(vec4<bool>(global4.x, var_1.a, global0.a, var_1.a))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b.x, u_input.a.x), 24u)]);
    global0 = var_2.a;
    var var_3 = -(~firstLeadingBit(~(-54963i)));
    return !vec4<bool>(var_2.a.a, any(vec3<bool>(any(vec2<bool>(true, var_2.a.a)), global4.x & true, var_2.a.a | false)), all(select(!vec2<bool>(global0.a, false), !vec2<bool>(false, var_2.b.a), all(vec3<bool>(global0.a, var_2.b.a, var_1.a)))), !global0.a);
}

fn func_2() -> bool {
    global3 = array<Struct_1, 24>();
    let var_0 = select(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, global0.a, false), !select(vec4<bool>(false, global0.a, false, global1.a), vec4<bool>(true, false, true, true), vec4<bool>(true, global0.a, global1.a, global1.a))), select(!(!vec4<bool>(true, true, global4.x, false)), select(select(vec4<bool>(true, true, false, global4.x), vec4<bool>(false, global1.a, true, global1.a), true), vec4<bool>(global0.a, true, true, false), any(vec4<bool>(true, true, false, global4.x))), false), func_3()), select(!(!(!vec4<bool>(global1.a, false, true, false))), vec4<bool>(87815u >= u_input.b.x, true, true, true), false), global1.a);
    global0 = Struct_1(func_1(Struct_2(global3[_wgslsmith_index_u32(u_input.a.x, 24u)], global3[_wgslsmith_index_u32(u_input.a.x ^ u_input.a.x, 24u)])));
    var var_1 = Struct_2(global3[_wgslsmith_index_u32(u_input.b.x, 24u)], global3[_wgslsmith_index_u32(0u, 24u)]);
    var var_2 = -1231f;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, global4.x | !func_1(Struct_2(global3[_wgslsmith_index_u32(u_input.b.x, 24u)], Struct_1(global4.x))), !func_2(), false);
    var var_1 = max(vec2<i32>(~(i32(-1i) * -12334i), _wgslsmith_dot_vec3_i32(vec3<i32>(~1i, ~12076i, 1i), -(~vec3<i32>(1i, 63679i, 48105i)))), ~vec2<i32>(-28531i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 45006i), vec2<i32>(-45817i, 54070i))));
    let var_2 = vec2<bool>(true, !var_0.x);
    var var_3 = all(!vec4<bool>(!any(vec2<bool>(global1.a, global1.a)), u_input.a.x <= 1u, true, all(!var_2)));
    global4 = !(!select(!vec2<bool>(global4.x, true), !vec2<bool>(var_2.x, global4.x), var_0.wz));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~u_input.b.x, ~max(u_input.a.x, 67133u) << ((~u_input.b.x ^ 4294967295u) % 32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1633f, 847f, -1285f) * vec3<f32>(-739f, 198f, 691f)))), var_0.x)), ~(~select(-vec2<i32>(var_1.x, var_1.x), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, -2147483647i), vec2<i32>(var_1.x, 50535i)), true)), reverseBits(var_1.x));
}

