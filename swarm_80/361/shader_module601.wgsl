struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32>;

var<private> global1: Struct_1;

var<private> global2: array<f32, 24>;

var<private> global3: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(-303f, -173f, 118f, 2107f), vec4<f32>(-165f, 520f, 627f, -557f), vec4<f32>(-777f, 1206f, -765f, -1000f), vec4<f32>(1366f, 305f, -2413f, -846f), vec4<f32>(-1403f, -167f, 1103f, -1588f), vec4<f32>(-366f, -1340f, -613f, 953f), vec4<f32>(240f, -1000f, -272f, -1000f), vec4<f32>(-195f, 523f, 931f, -920f), vec4<f32>(271f, 321f, 930f, -1000f), vec4<f32>(-260f, 160f, 338f, 1041f), vec4<f32>(879f, 1266f, -828f, 874f), vec4<f32>(1089f, 241f, -443f, 162f), vec4<f32>(982f, 2167f, 1006f, -152f), vec4<f32>(587f, -155f, -590f, 880f), vec4<f32>(622f, -556f, 1460f, 2294f), vec4<f32>(380f, 468f, 129f, 1000f));

var<private> global4: array<vec3<i32>, 3>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn func_1() -> Struct_1 {
    global2 = array<f32, 24>();
    let var_0 = -_wgslsmith_div_i32(-2147483647i, 1i);
    let var_1 = vec2<u32>(firstTrailingBit(13613u), _wgslsmith_div_u32(u_input.c.x, u_input.c.x));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(u_input.c), u_input.c), 24u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u | u_input.c.x, 24u)]))), -206f, -422f), _wgslsmith_f_op_f32(-global1.b));
    let var_3 = abs(u_input.c.xyy);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-992f, -281f), var_2.b, 489f)), -352f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 24>();
    global3 = array<vec4<f32>, 16>();
    let var_0 = ~global0[_wgslsmith_index_u32(reverseBits(0u), 32u)];
    var var_1 = vec2<u32>(~13199u, u_input.c.x);
    let var_2 = false;
    let var_3 = func_1();
    let var_4 = Struct_1(var_3.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1().a.x), global2[_wgslsmith_index_u32(~(7316u | u_input.c.x), 24u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, _wgslsmith_mult_u32(108205u, 21434u), var_4.a.x);
}

