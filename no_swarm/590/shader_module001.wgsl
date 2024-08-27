struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(712f, -734f, 276f), vec3<f32>(1256f, 1587f, 377f), vec3<f32>(267f, 602f, 191f), vec3<f32>(-627f, 1319f, 619f), vec3<f32>(-489f, 773f, -1000f), vec3<f32>(1891f, 1504f, 460f), vec3<f32>(176f, -2192f, 239f), vec3<f32>(-1220f, 898f, 804f), vec3<f32>(258f, -1786f, 404f));

var<private> global1: array<u32, 26>;

var<private> global2: Struct_3 = Struct_3(Struct_1(false, vec2<bool>(true, true)));

var<private> global3: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false));

var<private> global4: vec2<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec2<u32>) -> u32 {
    return ~(~(~countOneBits(25063u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 26>();
    global0 = array<vec3<f32>, 9>();
    global3 = array<vec4<bool>, 26>();
    global4 = global2.a.b;
    global3 = array<vec4<bool>, 26>();
    let var_0 = -16206i & u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(477f + -1213f) + _wgslsmith_div_f32(-1773f, -418f))), -1115f), u_input.d.yz, global1[_wgslsmith_index_u32(func_1(global0[_wgslsmith_index_u32(u_input.d.x, 9u)], Struct_4(Struct_2(min(u_input.c, 0i)), ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.b, 26u)], global1[_wgslsmith_index_u32(u_input.d.x, 26u)]), _wgslsmith_clamp_i32(var_0, var_0, u_input.a.x), ~_wgslsmith_clamp_i32(var_0, -1i, 2147483647i)), vec2<u32>(~(~1u), ~global1[_wgslsmith_index_u32(30269u, 26u)] & 62231u)), 26u)], 963f);
}

