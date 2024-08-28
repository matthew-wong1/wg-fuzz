struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-1714f, -2254f), vec2<f32>(-542f, -452f), vec2<f32>(152f, 1551f));

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(26170u), Struct_1(1u), Struct_1(22733u), Struct_1(15052u), Struct_1(61955u), Struct_1(51735u), Struct_1(66164u), Struct_1(4294967295u), Struct_1(0u), Struct_1(11177u), Struct_1(24436u), Struct_1(4294967295u), Struct_1(34521u), Struct_1(11132u));

var<private> global3: vec2<u32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(min(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a, arg_0.a, global3.x), ~vec3<u32>(global0.x, arg_2.a, global0.x)), 38706u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 21400u), vec2<u32>(global3.x, arg_2.a) & global0.xz)));
    return _wgslsmith_mult_u32(global3.x, abs(0u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 3>();
    var var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~55668u, ~1u, abs(global0.x)), vec4<u32>(_wgslsmith_sub_u32(u_input.d, 0u), 1u, ~u_input.d, 31574u)), global0.x, func_1(Struct_1(global0.x), u_input.b.x, global2[_wgslsmith_index_u32(u_input.d, 14u)]), ~(~_wgslsmith_div_u32(global3.x, global3.x))) << (~(~vec4<u32>(u_input.d, 4294967295u, global0.x, u_input.d) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 1u, global3.x, 0u), vec4<u32>(global3.x, 0u, global3.x, u_input.d)) % vec4<u32>(32u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(u_input.b | vec4<i32>(u_input.a, -1i, _wgslsmith_mod_i32(-23956i, u_input.a), max(u_input.b.x, 2147483647i)), u_input.b), -u_input.e, ~var_0.xyy, -_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(-38926i, -1i, 2147483647i, 28454i) >> (~vec4<u32>(11309u, 18844u, 15132u, var_0.x) % vec4<u32>(32u))));
}

