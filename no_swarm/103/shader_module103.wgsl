struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: vec3<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> vec2<i32> {
    global0 = array<Struct_2, 22>();
    let var_0 = global0[_wgslsmith_index_u32(1u, 22u)];
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d.x, ~31962i), ~var_0.d);
    var var_2 = !(!((var_0.b.d && false) && true)) && false;
    global0 = array<Struct_2, 22>();
    return countOneBits(_wgslsmith_mod_vec2_i32(var_1, vec2<i32>(104i, var_0.d.x)));
}

fn func_1(arg_0: Struct_1) -> Struct_5 {
    let var_0 = select(!(!vec2<bool>(true, !arg_0.d)), !vec2<bool>(arg_0.d, any(!vec2<bool>(arg_0.d, arg_0.d))), !(!vec2<bool>(false, false != arg_0.d)));
    let var_1 = ~reverseBits(vec3<u32>(61103u, ~u_input.b.x, 1u) & (~u_input.c.yyx ^ u_input.c.yxz));
    var var_2 = vec2<f32>(1f, _wgslsmith_f_op_f32(-arg_0.a));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.c << (u_input.c % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(~(u_input.c | u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.e, 0u, 65678u, u_input.c.x), u_input.c))) >> (var_1.x % 32u), 22u)];
    var var_4 = ~vec2<u32>(~(~0u) | (~u_input.b.x | 1u), arg_0.e);
    return Struct_5(Struct_1(var_2.x, _wgslsmith_f_op_f32(var_3.a * -1621f), abs(func_2()), all(vec2<bool>(true, var_3.c.b > 1531f)), max(arg_0.e, var_1.x)));
}

fn func_3() -> i32 {
    let var_0 = ~vec2<u32>(select(abs(u_input.c.x ^ 28910u), u_input.c.x, (u_input.d.x != -32945i) | any(vec3<bool>(false, true, false))), (~u_input.c.x | 4294967295u) | 1u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1350f))), 1025f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1323f, var_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)))))));
    global0 = array<Struct_2, 22>();
    return max(_wgslsmith_mod_i32(u_input.d.x, min(func_1(func_1(Struct_1(var_1, 156f, vec2<i32>(u_input.a.x, -1451i), true, var_0.x)).a).a.c.x, u_input.d.x)), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 22>();
    let var_0 = Struct_1(364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-483f, -1005f, true)) - _wgslsmith_f_op_f32(378f + 1106f)))), _wgslsmith_add_vec2_i32(u_input.a.xz, _wgslsmith_add_vec2_i32(-u_input.d, vec2<i32>(0i, abs(u_input.a.x)))), any(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true)) || any(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(~43007u, 50021u), select(~u_input.b, select(u_input.b, u_input.b, true), true)) >> (u_input.b.x % 32u));
    global0 = array<Struct_2, 22>();
    let var_1 = func_1(var_0);
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_i32(36775i, 59478i)), firstTrailingBit(-func_3()), var_0.c.x, u_input.b);
}

