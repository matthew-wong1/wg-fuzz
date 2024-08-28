struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
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

var<private> global0: u32;

var<private> global1: f32 = -819f;

var<private> global2: array<u32, 1> = array<u32, 1>(1u);

var<private> global3: vec4<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1203f + -720f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-389f * 673f)))));
    var var_0 = u_input.b.xx;
    var var_1 = u_input.a;
    let var_2 = Struct_1(~(_wgslsmith_div_i32(u_input.b.x, u_input.d.x << (u_input.a % 32u)) ^ -1i), 0i);
    global0 = 3665u;
    global1 = _wgslsmith_f_op_f32(-848f + -930f);
    var_1 = select(abs(4294967295u), firstLeadingBit(9100u & (1u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 71187u), vec2<u32>(2629u, global2[_wgslsmith_index_u32(28779u, 1u)])))), !any(!select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, true, global3.x), global3.zxx)));
    let var_3 = -959f;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_u32(~vec3<u32>(16212u, 0u, 41136u), vec3<u32>(~u_input.a, 1u, _wgslsmith_clamp_u32(9919u, 1u, u_input.a))));
}

