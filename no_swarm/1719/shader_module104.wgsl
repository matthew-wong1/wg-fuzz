struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: vec4<u32>;

var<private> global2: array<u32, 6> = array<u32, 6>(68881u, 4294967295u, 1u, 0u, 43785u, 24779u);

var<private> global3: Struct_5 = Struct_5(false);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> vec3<f32> {
    let var_0 = ~vec4<u32>(u_input.d.x, ~0u, 1u, _wgslsmith_add_u32(0u, countOneBits(~21832u)));
    var var_1 = -u_input.a;
    let var_2 = Struct_3(false, var_0.zy);
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(715f, 1489f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2010f * 274f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(369f * -522f), _wgslsmith_f_op_f32(round(1111f)))))), vec3<f32>(_wgslsmith_f_op_f32(min(934f, 461f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-811f - -1661f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1168f)))), -194f))));
    let var_4 = -4167i;
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-498f + _wgslsmith_f_op_f32(min(1831f, var_3.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_f_op_f32(abs(664f)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_4) -> f32 {
    var var_0 = arg_0.e.x;
    var var_1 = ~(~(-min(arg_1.x, arg_0.e.x))) << (max(u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.d.xwy, u_input.d.ywx)) % 32u);
    var var_2 = max(_wgslsmith_add_i32(reverseBits(u_input.a), arg_0.e.x), arg_0.e.x);
    global1 = ~u_input.d ^ ~vec4<u32>(firstTrailingBit(abs(86419u)), (global1.x | 0u) & ~global1.x, 26682u, abs(_wgslsmith_div_u32(40700u, arg_0.b)));
    global0 = array<Struct_1, 1>();
    return _wgslsmith_f_op_vec3_f32(func_1()).x;
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(~(~(~_wgslsmith_mod_u32(4294967295u, global2[_wgslsmith_index_u32(u_input.d.x, 6u)]))), 1u)], max(-vec2<i32>(2147483647i, -25321i), abs(vec2<i32>(0i, 0i))), true, Struct_4(_wgslsmith_f_op_f32(-179f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1345f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(119f * -400f), 850f, _wgslsmith_f_op_f32(abs(1666f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-271f, 180f, 1000f) - vec3<f32>(316f, 658f, 274f))))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1207f), _wgslsmith_f_op_f32(1301f - _wgslsmith_f_op_f32(-725f + -218f)), _wgslsmith_f_op_f32(func_2()))));
    var var_1 = Struct_1(global3.a, 0u, _wgslsmith_f_op_f32(f32(-1f) * -150f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-1242f * -1114f)))), -(~vec3<i32>(50114i | u_input.a, 2147483647i, 7952i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 205f, -655f) * var_1.d)) * var_1.d)), ~vec2<i32>(_wgslsmith_mult_i32(u_input.a >> (u_input.d.x % 32u), reverseBits(-2147483647i)), var_1.e.x), ~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 1i), var_1.e.zx), _wgslsmith_div_vec2_i32(var_1.e.yy, var_1.e.yz)), u_input.a));
}

