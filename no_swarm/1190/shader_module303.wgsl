struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12>;

var<private> global1: array<f32, 20> = array<f32, 20>(1043f, 1298f, 809f, 857f, -1737f, 450f, 196f, 947f, 1000f, 1753f, -976f, -683f, -720f, 141f, -1032f, 1061f, 772f, 2066f, 734f, -2271f);

var<private> global2: u32;

var<private> global3: array<bool, 30> = array<bool, 30>(false, false, true, true, true, false, true, true, true, false, true, false, true, true, false, false, true, true, false, false, true, true, false, true, true, true, true, false, false, false);

var<private> global4: bool = false;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec3<f32> {
    global0 = array<vec3<i32>, 12>();
    global0 = array<vec3<i32>, 12>();
    var var_0 = Struct_1(u_input.c.zz);
    var var_1 = global3[_wgslsmith_index_u32(~11605u, 30u)];
    var var_2 = u_input.a;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-531f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1758f, 1046f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(var_0.a.x, 20u)])) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1165f)) + _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.c.x, 20u)]))))));
}

fn func_1() -> vec3<f32> {
    var var_0 = Struct_1(vec2<u32>(1u, _wgslsmith_div_u32(~23743u, abs(u_input.c.x))));
    let var_1 = -firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(360i), _wgslsmith_sub_i32(-33185i, u_input.b), -1i, -u_input.b), vec4<i32>(~(-2147483647i), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), -13111i, ~13909i), reverseBits(u_input.a)));
    let var_2 = Struct_1(reverseBits(abs(~var_0.a)));
    global4 = global3[_wgslsmith_index_u32(~0u, 30u)];
    global0 = array<vec3<i32>, 12>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 12>();
    let var_0 = Struct_1(~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(87715u, 141u, u_input.c.x), 13308u), 4294967295u));
    global2 = ~(_wgslsmith_add_u32(firstLeadingBit(abs(u_input.c.x)), 42743u | (var_0.a.x & var_0.a.x)) | var_0.a.x);
    let var_1 = global0[_wgslsmith_index_u32(countOneBits(abs(u_input.c.x) >> (1u % 32u)), 12u)];
    let var_2 = var_0;
    let var_3 = select(1u, max(u_input.c.x, var_0.a.x), global3[_wgslsmith_index_u32(countOneBits(0u), 30u)]);
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(1360f - 1000f), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(var_0.a.x, 20u)])), global1[_wgslsmith_index_u32(34693u, 20u)]))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(406f + -614f), global1[_wgslsmith_index_u32(~u_input.c.x, 20u)], global1[_wgslsmith_index_u32(var_3, 20u)]), _wgslsmith_f_op_vec3_f32(func_1()))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(22661i, 3729i, var_1.x) ^ u_input.a.zyw, -global0[_wgslsmith_index_u32(u_input.c.x, 12u)]), var_1.x), ~(~(~(-87733i))), var_1.x), u_input.c.xzx);
}

