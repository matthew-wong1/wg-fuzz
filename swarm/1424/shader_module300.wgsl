struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(vec2<i32>(43372i, -535i), Struct_1(vec4<f32>(235f, 991f, 1000f, -768f), vec3<i32>(59364i, 0i, -24729i), true, vec3<bool>(true, false, false)), Struct_2(false), Struct_1(vec4<f32>(498f, -725f, -1251f, 168f), vec3<i32>(-10463i, i32(-2147483648), 1i), false, vec3<bool>(true, false, true)), 1u), Struct_1(vec4<f32>(1679f, -726f, 208f, 1553f), vec3<i32>(-1i, 2147483647i, -56899i), false, vec3<bool>(false, true, false)), Struct_1(vec4<f32>(2168f, 265f, 175f, -2052f), vec3<i32>(-7347i, 4367i, 5274i), false, vec3<bool>(false, false, true)));

var<private> global1: array<Struct_3, 21>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: f32) -> StorageBuffer {
    return StorageBuffer(firstTrailingBit(global0.b.b.x), abs(0u), global0.a.b.a.x, vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.d.xw, u_input.d.xy), u_input.e.x) << (u_input.e.x % 32u), global0.a.e), u_input.a.x >> (select(select(~global0.a.e, 22435u, true), 0u, arg_0.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.d.x;
    let var_1 = abs(~vec4<u32>(var_0, ~_wgslsmith_mod_u32(1u, u_input.d.x), ~_wgslsmith_div_u32(20520u, 4294967295u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, var_0), 4294967295u)));
    var var_2 = _wgslsmith_mod_vec3_i32(abs(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, u_input.b, -2147483647i)), u_input.a.wwy);
    let x = u_input.a;
    s_output = func_1(!(!global0.c.d), ~var_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1077f * global0.b.a.x))));
}

