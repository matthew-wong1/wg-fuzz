struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 1u, 0u);

var<private> global1: vec2<i32>;

var<private> global2: Struct_1;

var<private> global3: array<vec4<f32>, 27>;

var<private> global4: array<vec4<i32>, 8>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global4 = array<vec4<i32>, 8>();
    let var_0 = 41788u;
    var var_1 = select(vec2<bool>(select(true, false, all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)))), true), vec2<bool>(var_0 != _wgslsmith_div_u32(global0.x, 4294967295u), true), all(vec2<bool>(true, true)) & any(vec2<bool>(all(vec3<bool>(false, true, false)), global2.b.x == 12047i)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global2.c)), -159f)));
    global3 = array<vec4<f32>, 27>();
    return _wgslsmith_f_op_f32(1019f - global2.c);
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = firstLeadingBit(~firstLeadingBit(global0.xz));
    global3 = array<vec4<f32>, 27>();
    global4 = array<vec4<i32>, 8>();
    let var_1 = any(select(vec4<bool>(any(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), true, global2.c == _wgslsmith_f_op_f32(func_3()), true), vec4<bool>(any(vec2<bool>(arg_0.x, arg_0.x)), false, arg_0.x, false), arg_0.x));
    let var_2 = 1i;
    return Struct_1(reverseBits(var_0.x), -(~(-min(u_input.b.yxw, global2.b))), _wgslsmith_f_op_f32(global2.c - global2.c));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> i32 {
    var var_0 = func_2(!select(vec2<bool>(true, true), vec2<bool>(true, global1.x <= -2147483647i), vec2<bool>(0i <= global1.x, true)));
    global4 = array<vec4<i32>, 8>();
    global0 = vec3<u32>(1u, global0.x, global2.a);
    var_0 = arg_0;
    global3 = array<vec4<f32>, 27>();
    return ~(-1i);
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: i32) -> StorageBuffer {
    global4 = array<vec4<i32>, 8>();
    var var_0 = ~abs(global2.a);
    var var_1 = min(arg_0 ^ arg_0, min(max(_wgslsmith_sub_vec2_u32(arg_0, ~global0.xz), firstTrailingBit(global0.xz)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, global2.a), vec2<u32>(4294967295u, global2.a)) << (vec2<u32>(0u, global2.a) % vec2<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(trunc(global2.c));
    let var_3 = ~(~(_wgslsmith_div_vec4_u32(vec4<u32>(global2.a, 8592u, 1u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(38732u, arg_0.x, global2.a, global0.x), vec4<u32>(var_1.x, 22223u, 1u, global2.a))) << (max(vec4<u32>(global0.x, global2.a, arg_0.x, 41670u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1528u, 37006u, var_1.x, 8260u), vec4<u32>(global2.a, global2.a, var_1.x, 4294967295u), vec4<u32>(global2.a, arg_0.x, var_1.x, 1u))) % vec4<u32>(32u))));
    return StorageBuffer(global4[_wgslsmith_index_u32(func_2(!vec2<bool>(select(false, false, false), arg_1 <= arg_2)).a, 8u)], _wgslsmith_sub_u32(~690u, global0.x), var_3.xxx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -9728i;
    global0 = ~vec3<u32>(5172u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(global0.x, ~80558u), abs(23826u) ^ global2.a), _wgslsmith_sub_u32(_wgslsmith_div_u32(countOneBits(40082u), 72481u), global2.a));
    global4 = array<vec4<i32>, 8>();
    var var_1 = true;
    let var_2 = u_input.d;
    var var_3 = ~22167i;
    global0 = ~(~vec3<u32>(1u, min(global0.x, global0.x) & _wgslsmith_div_u32(4294967295u, global0.x), ~_wgslsmith_clamp_u32(42949u, global0.x, 4294967295u)));
    global3 = array<vec4<f32>, 27>();
    let x = u_input.a;
    s_output = func_4(min(_wgslsmith_add_vec2_u32(global0.yy, ~_wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, 0u), vec2<u32>(global0.x, global0.x))), select(firstTrailingBit(vec2<u32>(0u, 35423u)), global0.yy, vec2<bool>(true, true))), func_1(Struct_1(global2.a & 0u, u_input.b.xzy, -796f), global0.x), 2147483647i);
}

