struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 0u, 18109u, 4294967295u);

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec3<u32>(1u, 1u, 4294967295u), Struct_1(vec4<f32>(-1667f, -2396f, -1264f, 1091f)), Struct_1(vec4<f32>(-316f, 164f, 2023f, -356f))), Struct_2(vec3<u32>(4294967295u, 36001u, 1u), Struct_1(vec4<f32>(284f, -510f, 667f, 1300f)), Struct_1(vec4<f32>(-876f, 457f, -1237f, -411f))));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_2, 2>();
    let var_0 = global0.xwz;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(1u, 2u)];
    var var_1 = var_0.b.a.xxz;
    let var_2 = Struct_2(~(vec3<u32>(0u, global0.x | global0.x, 30982u) << (var_0.a % vec3<u32>(32u))), func_1(), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 1948f, -1613f, -210f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-269f, 231f, 553f, global1.a.x)))));
    var var_3 = var_0.b;
    global0 = max(~(~(vec4<u32>(var_2.a.x, var_0.a.x, 1u, global0.x) | min(vec4<u32>(33918u, 4294967295u, 4294967295u, var_0.a.x), vec4<u32>(27693u, global0.x, 1u, 1u)))), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(62479u, var_0.a.x), ~vec2<u32>(37313u, var_0.a.x)), _wgslsmith_mod_u32(~0u, ~global0.x)), select(29877u, 53571u, true) >> (_wgslsmith_sub_u32(countOneBits(var_2.a.x), var_0.a.x) % 32u), countOneBits(~(~1u)), 4294967295u));
    let var_4 = vec2<i32>(0i, max(u_input.a, i32(-1i) * -u_input.a) | (i32(-1i) * -1i));
    global2 = array<Struct_2, 2>();
    var_3 = func_1();
    var var_5 = -507f;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, -52446i), u_input.b) >> (global0.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.x, 50103u, var_0.a.x, 1u), vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), 1u), var_2.a.x), vec2<u32>(global0.x, ~global0.x)));
}

