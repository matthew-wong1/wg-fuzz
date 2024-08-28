struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32 = 8606i;

var<private> global2: array<i32, 8> = array<i32, 8>(1i, 35524i, -5490i, 1i, 1i, 14530i, 0i, -12949i);

var<private> global3: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    global1 = 0i;
    return all(!(!(!(!vec3<bool>(false, arg_0.x, true)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = !vec4<bool>(true, true, any(vec4<bool>(true, true, func_2(vec2<bool>(true, false), Struct_1(4294967295u, arg_1.x), vec4<u32>(u_input.d.x, arg_0.a.x, 1u, u_input.d.x)), func_2(vec2<bool>(true, true), arg_0.b, vec4<u32>(4294967295u, 4294967295u, u_input.b, 0u)))), any(vec4<bool>(true, true, true, true)));
    var var_1 = -37964i;
    let var_2 = Struct_1(~u_input.b, max(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(6361i, 18248i, 17833i, arg_0.b.b), u_input.c), arg_1.x), u_input.c.x & -arg_1.x) >> (~u_input.b % 32u));
    global2 = array<i32, 8>();
    let var_3 = arg_0.b;
    return Struct_1(var_2.a, arg_1.x);
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = func_1(Struct_2(~(~(~u_input.d)), arg_0), vec2<i32>(-44707i, 0i));
    var var_1 = Struct_2(u_input.d, arg_0);
    global2 = array<i32, 8>();
    global2 = array<i32, 8>();
    var_0 = func_1(Struct_2(~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(var_1.a.x, arg_0.a, 0u, var_1.a.x)), vec4<u32>(arg_0.a, 0u, 66739u, 0u)), func_1(Struct_2(_wgslsmith_add_vec4_u32(var_1.a, vec4<u32>(4294967295u, u_input.d.x, 4294967295u, var_1.a.x)), func_1(Struct_2(vec4<u32>(0u, var_0.a, 7650u, 35105u), Struct_1(var_0.a, var_1.b.b)), vec2<i32>(-40601i, global2[_wgslsmith_index_u32(var_1.a.x, 8u)]))), _wgslsmith_add_vec2_i32(vec2<i32>(-36338i, -21268i), vec2<i32>(global2[_wgslsmith_index_u32(var_0.a, 8u)], arg_0.b)) << (countOneBits(u_input.d.yw) % vec2<u32>(32u)))), abs(vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, abs(global2[_wgslsmith_index_u32(4294967295u, 8u)])))));
    return ~(~abs(vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 10299i, u_input.c.x, 50039i), vec4<i32>(0i, -25537i, -1i, global2[_wgslsmith_index_u32(0u, 8u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(max(17610u, ~_wgslsmith_mult_u32(u_input.d.x, 8062u)), u_input.d.x, 1u), abs(vec3<u32>(~(~u_input.d.x), _wgslsmith_mod_u32(54103u, u_input.b | u_input.b), u_input.b))), 8u)];
    let var_1 = Struct_1(firstTrailingBit(u_input.d.x), 1i);
    var var_2 = func_3(func_1(Struct_2(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, u_input.b, var_1.a), vec4<u32>(76457u, 58751u, 36195u, var_1.a)), Struct_1(~var_1.a, reverseBits(-31479i))), ~vec2<i32>(var_1.b << (0u % 32u), global2[_wgslsmith_index_u32(4294967295u, 8u)] & 14355i)));
    let var_3 = Struct_2(_wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, select(~vec4<u32>(u_input.d.x, var_1.a, u_input.b, var_1.a), vec4<u32>(4294967295u ^ var_1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, var_1.a, 31221u, u_input.d.x), vec4<u32>(351u, 42410u, 1u, u_input.d.x)), 35767u, var_1.a ^ 4294967295u), _wgslsmith_f_op_f32(sign(490f)) > -1255f)), var_1);
    var var_4 = Struct_2(var_3.a, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(i32(-1i) * -2147483647i), func_3(func_1(var_3, _wgslsmith_add_vec2_i32(select(vec2<i32>(var_2.x, global2[_wgslsmith_index_u32(62423u, 8u)]), u_input.c.yx, vec2<bool>(true, false)), ~vec2<i32>(var_2.x, 1i)))).x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(347f, 345f, -352f, 573f))) + vec4<f32>(_wgslsmith_f_op_f32(-1350f + -288f), -3453f, _wgslsmith_f_op_f32(max(-524f, -154f)), _wgslsmith_f_op_f32(-757f - 1295f))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-978f)), _wgslsmith_f_op_f32(select(-401f, 274f, true)), -686f, -221f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1329f, -1000f, -906f, -1000f) - vec4<f32>(-1124f, 1097f, 1532f, 1000f)), vec4<f32>(1f, 1f, 1f, 1f))))));
}

