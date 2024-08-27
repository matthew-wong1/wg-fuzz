struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(true, false, false, true)));

var<private> global2: f32 = 1071f;

var<private> global3: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(29965i, 0i), vec2<i32>(-53705i, 27905i), vec2<i32>(-1i, -1i));

var<private> global4: Struct_1 = Struct_1(vec4<i32>(14899i, i32(-2147483648), 0i, 13893i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>) -> StorageBuffer {
    var var_0 = Struct_4(0u != _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, _wgslsmith_mod_u32(u_input.a, u_input.a), 81184u), vec3<u32>(u_input.a, 6038u, abs(u_input.c))));
    var var_1 = abs(firstTrailingBit(abs(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b, 4294967295u, u_input.a), vec3<u32>(0u, 32907u, 27180u), false), vec3<u32>(u_input.b, u_input.c, 16043u)))));
    var var_2 = Struct_2(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, arg_1.x), vec4<bool>(true, global0.x, true, false), global0.x), vec4<bool>(false, var_0.a, arg_1.x, true)), select(!select(vec4<bool>(false, global0.x, false, arg_1.x), vec4<bool>(true, arg_1.x, true, global0.x), arg_1.x), select(vec4<bool>(global0.x, arg_1.x, arg_1.x, global0.x), !vec4<bool>(global0.x, arg_1.x, global0.x, false), true), !(!vec4<bool>(global0.x, true, false, true))), var_0.a));
    let var_3 = 31261i;
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(53359u, u_input.b), 22u)];
    return StorageBuffer(~(~(-1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(false, !global0.x, !global0.x);
    var_0 = vec3<bool>(false, !any(!(!vec4<bool>(global0.x, true, false, true))), true);
    let x = u_input.a;
    s_output = func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(global4.a.x, 39917i), vec2<i32>(-1i) * -select(vec2<i32>(global4.a.x, 2147483647i), vec2<i32>(global4.a.x, 9292i), var_0.x)), global0.yy);
}

