struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(1153f, -781f));

var<private> global1: array<vec3<u32>, 21>;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-158f, -399f));

var<private> global3: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = false;
    let var_1 = arg_0;
    global1 = array<vec3<u32>, 21>();
    let var_2 = ~(~1u) >= (u_input.d.x | 23390u);
    var var_3 = var_1;
    return vec4<u32>(firstLeadingBit(~(1u >> ((u_input.e & u_input.e) % 32u))), u_input.e, ~0u, firstTrailingBit(u_input.e));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec4<u32>(u_input.d.x, ~u_input.e, 0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.e, 89439u, u_input.e, 112547u), u_input.d) >> (~vec4<u32>(10088u, u_input.d.x, u_input.d.x, u_input.e) % vec4<u32>(32u)), ~func_2(Struct_1(global0.a))), ~abs(~u_input.e)));
    var var_1 = vec3<bool>(true, false, true);
    global3 = arg_0;
    return arg_0;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<u32>) -> vec2<bool> {
    let var_0 = countOneBits(-2147483647i);
    return select(vec2<bool>(true, true), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !all(vec2<bool>(true, true))), !vec2<bool>(false != any(vec4<bool>(true, false, false, true)), _wgslsmith_div_f32(global0.a.x, 1049f) <= global3.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -430f;
    let var_1 = Struct_1(global3.a);
    let var_2 = func_1(var_1);
    var var_3 = vec3<bool>(select(true, u_input.e >= u_input.d.x, true), 1508f >= global2.a.x, all(!func_3(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 60715u), u_input.d.wy), vec4<u32>(u_input.d.x, 51955u, 28189u, u_input.d.x))));
    global2 = Struct_1(var_2.a);
    var var_4 = 18962u;
    var_4 = ((u_input.d.x | u_input.e) & 20723u) & max(~_wgslsmith_div_u32(_wgslsmith_add_u32(33193u, 38499u), reverseBits(11256u)), min(10477u, firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d))));
    let var_5 = func_1(var_1);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 21u)]));
}

