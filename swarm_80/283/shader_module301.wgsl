struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-1000f, 955f, 1050f), vec3<f32>(-817f, 1797f, -469f), vec3<f32>(-1385f, 240f, -396f), vec3<f32>(-1508f, 155f, -1000f), vec3<f32>(489f, -531f, -192f), vec3<f32>(-167f, -844f, 186f), vec3<f32>(-999f, -169f, 369f), vec3<f32>(912f, -1271f, -896f));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 8>();
    global0 = array<vec3<f32>, 8>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(0u, 8u)]);
    var var_1 = ~(~_wgslsmith_mult_u32(~1u, _wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(70274u, 77255u), ~35633u)));
    var var_2 = 1u;
    var var_3 = !vec4<bool>(1449f != var_0.x, true, false, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(77367u, 4294967295u), ~vec2<u32>(1u, 0u)), 1u), 20381u), _wgslsmith_sub_i32(-u_input.c, 25165i), vec4<i32>(-u_input.c, -(~u_input.c), ~u_input.a, u_input.c), vec3<u32>(1389u, 1u, 4294967295u), vec3<i32>(_wgslsmith_mult_i32(u_input.c, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 7812i), vec2<i32>(u_input.c, -43727i)), select(vec2<i32>(u_input.b, 35606i), vec2<i32>(6968i, u_input.c), vec2<bool>(var_3.x, true)))), u_input.a, -2147483647i));
}

