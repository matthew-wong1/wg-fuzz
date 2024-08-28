struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 15>;

var<private> global2: array<i32, 9>;

var<private> global3: i32 = 2147483647i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(201f)), _wgslsmith_f_op_f32(-259f - 1818f), _wgslsmith_div_f32(310f, 376f))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1184f, -859f))), 1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-608f, 1000f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(139f, -1689f, 1000f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1270f, 450f, 1090f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1082f, -185f, -439f), vec3<f32>(523f, -340f, 1086f)))))));
    global2 = array<i32, 9>();
    let var_1 = Struct_3(-countOneBits(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(28029u, global1[_wgslsmith_index_u32(51482u, 15u)]), 9u)] >> (4294967295u % 32u)), Struct_1(0u, vec4<u32>(0u, global0.c.x, ~_wgslsmith_dot_vec2_u32(global0.c, global0.b.b.zz), 18029u)), global0.b);
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2421f, -188f, var_0.x, var_0.x))))) * vec4<f32>(-297f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2323f) + var_0.x), var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * var_0.x)))))));
    return 205f;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    let var_0 = 0i;
    var var_1 = _wgslsmith_div_f32(1000f, 1000f);
    var var_2 = countOneBits(~(-select(0i, -6461i, true)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-755f)), _wgslsmith_f_op_f32(f32(-1f) * -371f), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(abs(-741f))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(125f, 1548f, false))), -962f, _wgslsmith_f_op_f32(max(-699f, _wgslsmith_f_op_f32(ceil(1470f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-405f)) + _wgslsmith_f_op_f32(f32(-1f) * -975f)))));
    global1 = array<u32, 15>();
    return Struct_2(arg_2.b, arg_2.b, ~firstLeadingBit(arg_1.b.zy));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>) -> vec2<u32> {
    let var_0 = func_2(arg_1.xy, Struct_1(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~arg_0.c.x, 15u)], ~arg_0.c.x), arg_0.b.b), Struct_3(-_wgslsmith_mult_i32(-13347i, ~global2[_wgslsmith_index_u32(4294967295u, 9u)]), arg_0.a, Struct_1(global0.b.a, global0.a.b)));
    var var_1 = -42292i;
    global0 = var_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f * -1622f));
    var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), 958f)));
    return vec2<u32>(~(~54779u), _wgslsmith_mult_u32(1u, reverseBits(~global1[_wgslsmith_index_u32(var_0.c.x, 15u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    global1 = array<u32, 15>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))) - -316f));
    global0 = Struct_2(global0.b, global0.a, ~_wgslsmith_sub_vec2_u32(global0.a.b.xz, _wgslsmith_add_vec2_u32(vec2<u32>(global0.b.b.x, global1[_wgslsmith_index_u32(9158u, 15u)]), func_1(Struct_2(global0.b, global0.b, vec2<u32>(0u, global0.b.a)), vec3<i32>(2147483647i, u_input.a.x, 5467i)))));
    global2 = array<i32, 9>();
    var_0 = global0.a;
    var var_2 = func_2(vec2<i32>(~_wgslsmith_clamp_i32(u_input.a.x, global2[_wgslsmith_index_u32(global0.c.x, 9u)], 5392i) | 16500i, reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(var_0.b), _wgslsmith_clamp_vec4_u32(var_0.b, var_0.b, vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.b.a, 15u)], 15u)], global0.b.a, var_0.a, var_0.a))), 9u)])), func_2(-_wgslsmith_mult_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(var_0.b.x, 9u)], u_input.a.x) | vec2<i32>(u_input.a.x, -1i), vec2<i32>(global2[_wgslsmith_index_u32(24996u, 9u)], -47294i)), global0.b, Struct_3(countOneBits(-20778i), Struct_1(var_0.a << (var_0.b.x % 32u), _wgslsmith_sub_vec4_u32(global0.b.b, var_0.b)), global0.b)).a, Struct_3(_wgslsmith_div_i32(_wgslsmith_mult_i32(27576i, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 6790u), 9u)]), _wgslsmith_div_i32(1i, firstLeadingBit(-1i))), global0.b, Struct_1(global0.c.x, ~var_0.b)));
    let var_3 = func_2(vec2<i32>(firstTrailingBit(-1i), _wgslsmith_div_i32(~(-global2[_wgslsmith_index_u32(1u, 9u)]), 33657i)), var_2.a, Struct_3(-2147483647i, func_2(u_input.a ^ (u_input.a & vec2<i32>(u_input.a.x, -2147483647i)), global0.b, Struct_3(-2147483647i, global0.a, global0.b)).b, var_2.a)).a;
    let var_4 = _wgslsmith_mod_u32(~func_2(vec2<i32>(~u_input.a.x, -20383i), global0.a, Struct_3(3853i, var_3, Struct_1(1u, global0.a.b))).a.b.x, 63228u);
    let x = u_input.a;
    s_output = StorageBuffer(-594f);
}

