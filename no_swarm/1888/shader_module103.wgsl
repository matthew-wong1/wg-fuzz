struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

var<private> global1: vec3<f32> = vec3<f32>(1000f, -620f, 141f);

var<private> global2: Struct_2 = Struct_2(vec4<f32>(1000f, -258f, 744f, -990f), false);

var<private> global3: vec4<f32> = vec4<f32>(-1000f, -1611f, -448f, 1054f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_mod_u32(28112u, reverseBits(43604u >> (_wgslsmith_dot_vec2_u32(max(arg_1, arg_1), vec2<u32>(0u, arg_1.x)) % 32u)));
    let var_1 = global0[_wgslsmith_index_u32(~21475u, 20u)];
    global0 = array<Struct_2, 20>();
    let var_2 = 1000f >= _wgslsmith_f_op_f32(sign(global2.a.x));
    global3 = global2.a;
    return i32(-1i) * -10614i;
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> u32 {
    var var_0 = vec4<i32>(-6727i, u_input.a.x, 2147483647i, arg_1);
    var_0 = ~(~_wgslsmith_add_vec4_i32(~(vec4<i32>(18176i, var_0.x, u_input.a.x, 1i) ^ vec4<i32>(-2147483647i, -1i, u_input.a.x, var_0.x)), vec4<i32>(-var_0.x, _wgslsmith_sub_i32(arg_1, -482i), -arg_1, max(arg_1, -13640i))));
    let var_1 = global0[_wgslsmith_index_u32(max(1u, 76502u), 20u)];
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(-var_1.a), arg_0.b);
    var var_2 = true;
    return _wgslsmith_add_u32(~_wgslsmith_add_u32(~_wgslsmith_div_u32(12182u, 9365u), 1u), ~(~0u));
}

fn func_2() -> vec4<i32> {
    global0 = array<Struct_2, 20>();
    var var_0 = func_3(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(select(1u, 4294967295u, false), _wgslsmith_clamp_u32(1u, 78347u, 66101u)), 1203u) >> ((_wgslsmith_mod_u32(firstTrailingBit(23114u), ~0u) >> (4294967295u % 32u)) % 32u), 20u)], ~_wgslsmith_mod_i32(max(1i, 19295i << (1u % 32u)), ~u_input.a.x));
    var var_1 = ~max(abs(vec3<i32>(~2147483647i, _wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(-5210i, 4939i)), -28967i ^ u_input.a.x)), vec3<i32>(-34143i, -48686i, u_input.a.x));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(select(~1u, abs(abs(_wgslsmith_clamp_u32(1u, 1u, 4294967295u))), any(select(!vec4<bool>(global2.b, global2.b, false, global2.b), select(vec4<bool>(global2.b, global2.b, global2.b, false), vec4<bool>(global2.b, false, true, global2.b), vec4<bool>(global2.b, global2.b, true, false)), true))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), max(select(vec3<u32>(12171u, 49650u, 1u), vec3<u32>(1u, 23512u, 49636u), vec3<bool>(global2.b, global2.b, global2.b)), abs(vec3<u32>(1u, 10684u, 12557u))))), 20u)];
    global0 = array<Struct_2, 20>();
    return vec4<i32>(-(~u_input.a.x), -abs(_wgslsmith_dot_vec2_i32(u_input.a.zz, var_1.xx)) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(-19053i, 2147483647i, 35099i, var_1.x), firstLeadingBit(vec4<i32>(-2147483647i, 6566i, -22400i, u_input.a.x))), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, u_input.a.x, -24519i, u_input.a.x), ~vec4<i32>(2147483647i, 11690i, var_1.x, -1i))), u_input.a.x, select(u_input.a.x, -(~(-2147483647i)), select(true, all(vec2<bool>(var_2.b, false)), any(vec2<bool>(false, global2.b)))) >> (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(firstTrailingBit(~(~1u)), _wgslsmith_add_u32(~firstLeadingBit(4294967295u) & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec4<u32>(0u, 0u, 51285u, 14446u))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(0u, 1u), 4294967295u), ~(~vec2<u32>(1u, 20951u)))));
    var var_1 = ~_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, func_1(-259f, vec2<u32>(17003u, 4294967295u), Struct_1(vec4<f32>(global3.x, global2.a.x, global1.x, global1.x)), -1232f), _wgslsmith_mod_i32(-59815i, 13345i)), select(vec4<i32>(-2309i, 17409i, -2147483647i, u_input.a.x), firstTrailingBit(func_2()), select(select(vec4<bool>(global2.b, global2.b, true, true), vec4<bool>(false, global2.b, global2.b, true), vec4<bool>(global2.b, global2.b, false, global2.b)), !vec4<bool>(global2.b, global2.b, false, global2.b), true)));
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 20u)];
    global0 = array<Struct_2, 20>();
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(global2.a.x, 1000f))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(163f * global1.x)), 1238f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.a.x, global1.x, 1672f, var_2.a.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.a.x, 934f, global1.x, -1695f)))))), global2.b);
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(16970u, _wgslsmith_sub_u32(_wgslsmith_div_u32(~1u, ~0u), firstTrailingBit(1u)), ~96430u), 20u)];
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.a) - var_3.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.x)) - _wgslsmith_f_op_f32(global1.x + var_3.a.x))))));
}

