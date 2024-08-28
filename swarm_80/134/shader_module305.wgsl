struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8>;

var<private> global1: array<vec2<bool>, 20>;

var<private> global2: Struct_1;

var<private> global3: vec2<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2() -> Struct_1 {
    global1 = array<vec2<bool>, 20>();
    let var_0 = -1000f;
    return Struct_1((-2147483647i | max(firstTrailingBit(u_input.b.x), u_input.b.x >> (u_input.d.x % 32u))) >> (1u % 32u), 22612i);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = arg_1;
    global0 = array<vec3<bool>, 8>();
    global1 = array<vec2<bool>, 20>();
    var_1 = arg_1;
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: f32) -> bool {
    return !((any(select(vec2<bool>(false, true), global1[_wgslsmith_index_u32(u_input.d.x, 20u)], global1[_wgslsmith_index_u32(global3.x, 20u)])) | true) || true);
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<bool>(func_4(func_3(u_input.b.zy, func_2()), func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1141f, -1393f, 508f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-499f * -428f) - _wgslsmith_f_op_f32(f32(-1f) * -245f))) || any(vec2<bool>(false, true)), !(26474i <= min(u_input.c, u_input.b.x << (global3.x % 32u))));
    global0 = array<vec3<bool>, 8>();
    global1 = array<vec2<bool>, 20>();
    global0 = array<vec3<bool>, 8>();
    global2 = Struct_1(31293i, countOneBits(global2.a));
    return Struct_1(u_input.c, ~1i);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = !all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), true));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 8>();
    let var_0 = func_5(u_input.a.wxy, func_1(), func_2(), u_input.e.x);
    global2 = var_0;
    var var_1 = _wgslsmith_add_vec3_u32(select(reverseBits(vec3<u32>(~u_input.a.x, u_input.e.x, firstTrailingBit(25520u))), _wgslsmith_sub_vec3_u32(~firstLeadingBit(vec3<u32>(0u, 126259u, global3.x)), abs(vec3<u32>(global3.x, 28719u, 29421u))), true || (~u_input.d.x <= _wgslsmith_dot_vec2_u32(vec2<u32>(93750u, 2342u), vec2<u32>(1u, u_input.e.x)))), select(vec3<u32>(_wgslsmith_clamp_u32(firstTrailingBit(0u), u_input.a.x, 1u), _wgslsmith_clamp_u32(u_input.d.x, ~1795u, 4294967295u), global3.x), vec3<u32>(~u_input.d.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e.x, 4294967295u), vec2<u32>(global3.x, u_input.d.x)), u_input.d.zz), 49603u), global0[_wgslsmith_index_u32(global3.x, 8u)]));
    global0 = array<vec3<bool>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(-(firstLeadingBit(vec4<i32>(global2.a, 42794i, 75609i, u_input.c)) << (~u_input.e % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(global3.x, countOneBits(56701u), 1u, var_1.x), ~(~vec4<u32>(29331u, 1u, 31235u, 1u))) % vec4<u32>(32u)), countOneBits(vec4<i32>(-38767i, ~(i32(-1i) * -1i), 1i, global2.a)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2009f, -626f, 1287f)) * vec3<f32>(-1668f, _wgslsmith_f_op_f32(round(-1086f)), -1219f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1183f, -541f, -224f) + vec3<f32>(946f, 732f, 1000f)))))), vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
}

