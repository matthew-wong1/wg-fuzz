struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 28>;

var<private> global1: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 37621u), vec2<u32>(82819u, 28404u), vec2<u32>(4294967295u, 1u), vec2<u32>(3505u, 0u), vec2<u32>(56875u, 2633u), vec2<u32>(6422u, 4294967295u), vec2<u32>(4294967295u, 61790u), vec2<u32>(8407u, 16012u), vec2<u32>(8976u, 3612u), vec2<u32>(74372u, 0u), vec2<u32>(1293u, 1u), vec2<u32>(2415u, 54977u), vec2<u32>(43363u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 7761u), vec2<u32>(0u, 1u), vec2<u32>(34416u, 1u), vec2<u32>(0u, 1u), vec2<u32>(1u, 71005u), vec2<u32>(54159u, 0u), vec2<u32>(18859u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(2105u, 0u), vec2<u32>(1u, 56623u), vec2<u32>(0u, 1u), vec2<u32>(7593u, 0u), vec2<u32>(1u, 14706u), vec2<u32>(1u, 0u));

var<private> global2: array<Struct_1, 26>;

var<private> global3: vec2<u32>;

var<private> global4: f32 = -1373f;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = global2[_wgslsmith_index_u32(~(~4294967295u), 26u)];
    let var_2 = 78394u;
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(step(646f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -855f), -728f)))), 552f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(648f))), -843f, !all(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-795f, -451f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1470f)))))));
    global3 = global1[_wgslsmith_index_u32(23416u, 29u)];
    return Struct_1(var_0.a, _wgslsmith_add_u32(var_0.c, 155943u), 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> u32 {
    let var_0 = firstLeadingBit(min(-reverseBits(~vec4<i32>(36173i, -2147483647i, 2147483647i, u_input.b)), abs(firstTrailingBit(abs(vec4<i32>(u_input.b, -1i, 2147483647i, u_input.c.x))))));
    var var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(u_input.d, 0u, arg_0.c)), vec3<u32>(~(~26330u), 15160u, global3.x))), 26u)];
    global3 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(var_1.c), firstTrailingBit(~arg_0.b)), _wgslsmith_sub_vec2_u32(min(vec2<u32>(var_1.c, 1u), vec2<u32>(1u, 89441u)), vec2<u32>(_wgslsmith_mod_u32(u_input.d, 45618u), reverseBits(global3.x)))), 29u)];
    var var_2 = vec3<bool>(any(vec4<bool>(arg_0.a.x, all(!arg_1.a.xz), arg_2, (arg_3 | true) | false)), false, arg_1.a.x);
    global3 = select(abs(select(vec2<u32>(select(arg_1.b, u_input.d, true), ~arg_1.b), global1[_wgslsmith_index_u32(func_2(vec3<i32>(20855i, u_input.b, 2147483647i), Struct_1(var_1.a, global3.x, 56748u)).c, 29u)], true)), select(vec2<u32>(~(~u_input.d), ~firstTrailingBit(31448u)), ~abs(~global1[_wgslsmith_index_u32(4294967295u, 29u)]), false), !vec2<bool>(false, _wgslsmith_f_op_f32(trunc(-702f)) < _wgslsmith_f_op_f32(ceil(2245f))));
    return select(global3.x, u_input.d, !arg_1.a.x);
}

fn func_1() -> StorageBuffer {
    return StorageBuffer(-1000f, _wgslsmith_sub_u32(func_3(func_2(~vec3<i32>(40990i, 0i, u_input.a), Struct_1(vec4<bool>(true, true, false, false), 40031u, 54988u)), Struct_1(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false), ~global3.x, u_input.d), u_input.c.x <= (u_input.a >> (u_input.d % 32u)), true), _wgslsmith_mod_u32(_wgslsmith_mod_u32(~global3.x, u_input.d), u_input.d)), ~(firstTrailingBit(~vec3<u32>(21249u, 27289u, u_input.d)) | ~(vec3<u32>(global3.x, u_input.d, u_input.d) << (vec3<u32>(4294967295u, 0u, 0u) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

