struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: Struct_2 = Struct_2(Struct_1(false, vec4<u32>(0u, 4294967295u, 36996u, 0u)));

var<private> global2: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global3: vec4<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    var var_0 = u_input.a;
    global1 = Struct_2(Struct_1(global1.a.a, ~global1.a.b >> (vec4<u32>(abs(global1.a.b.x), 2396u, max(103757u, u_input.c.x), global3.x) % vec4<u32>(32u))));
    let var_1 = u_input.a.x;
    let var_2 = 0u;
    global0 = array<vec2<bool>, 16>();
    return 1u;
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = global1.a;
    return 4294967295u;
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = true;
    let var_1 = Struct_3(vec2<f32>(1f, 1f), arg_0, global0[_wgslsmith_index_u32(global1.a.b.x, 16u)], !(!select(global2.wy, select(global0[_wgslsmith_index_u32(1u, 16u)], vec2<bool>(global1.a.a, global2.x), vec2<bool>(global2.x, arg_0.a.a)), false)), !vec4<bool>(all(select(vec3<bool>(global1.a.a, global2.x, global2.x), global2.zzw, true)), var_0, all(select(global2.xy, global2.yw, global2.yx)), true));
    var var_2 = global1.a;
    var var_3 = global1.a.b.yz;
    let var_4 = Struct_1(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.a.b.x, var_2.b.x), global3.yxx)) >= var_3.x, firstTrailingBit(var_1.b.a.b));
    return 38265u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 16>();
    var var_0 = vec3<u32>(func_1(global2.yxy), _wgslsmith_dot_vec4_u32(vec4<u32>(func_2(4294967295u), _wgslsmith_clamp_u32(1u, u_input.b.x, global3.x), global3.x, u_input.b.x >> (global3.x % 32u)), u_input.b) | global3.x, 1u | global1.a.b.x);
    global3 = global1.a.b;
    global3 = global1.a.b;
    global3 = vec4<u32>(func_2(1u), func_3(Struct_2(Struct_1(true, select(u_input.b, vec4<u32>(global1.a.b.x, 12603u, 82726u, 0u), vec4<bool>(false, false, true, false))))), global1.a.b.x, _wgslsmith_mult_u32(~_wgslsmith_add_u32(~34419u, 6567u), firstLeadingBit(abs(_wgslsmith_sub_u32(global1.a.b.x, global1.a.b.x)))));
    var var_1 = vec3<u32>(global3.x | ~(~66230u), u_input.c.x, countOneBits(func_3(Struct_2(global1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-491f, -103f))), vec4<u32>(global1.a.b.x, _wgslsmith_sub_u32(39574u, func_2(func_3(Struct_2(global1.a)))), func_2(1u >> (global1.a.b.x % 32u)) << (~_wgslsmith_add_u32(global3.x, 0u) % 32u), global1.a.b.x));
}

