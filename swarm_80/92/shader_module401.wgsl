struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 24>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<i32>) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(~firstTrailingBit(0u) & 1u) << (~0u % 32u), 24u)];
    let var_1 = reverseBits(var_0.b);
    global1 = array<Struct_1, 24>();
    global1 = array<Struct_1, 24>();
    global1 = array<Struct_1, 24>();
    return var_0.a.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1286f, 1859f, arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x * 296f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) - arg_1))));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(-var_0.x)))));
    let var_1 = select(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(81163u), _wgslsmith_sub_u32(4294967295u, 0u), ~6742u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 35492u), vec2<u32>(117887u, 17275u))), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(0u, 0u, 1u, 17292u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 27206u, 57879u), vec4<u32>(4294967295u, 22157u, 4294967295u, 0u), vec4<u32>(0u, 1u, 0u, 1u)))), ~(~min(vec4<u32>(0u, 40291u, 0u, 17654u), vec4<u32>(0u, 104850u, 1u, 4294967295u)))), min(~vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 24484u, 0u), vec4<u32>(4094u, 4294967295u, 47356u, 0u)), 55109u, _wgslsmith_dot_vec2_u32(vec2<u32>(92772u, 0u), vec2<u32>(4294967295u, 1u))), ~vec4<u32>(1u, 1u, 1u, 1u)), vec4<bool>(true, any(select(select(vec4<bool>(false, false, arg_0.a.x, arg_0.a.x), vec4<bool>(false, true, arg_0.a.x, false), arg_0.a.x), !vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_0.a.x), select(vec4<bool>(false, arg_0.a.x, true, arg_0.a.x), vec4<bool>(false, arg_0.a.x, arg_0.a.x, true), true))), false, (arg_0.a.x & arg_0.a.x) & any(select(vec4<bool>(arg_0.a.x, false, true, false), vec4<bool>(arg_0.a.x, false, false, arg_0.a.x), vec4<bool>(arg_0.a.x, false, arg_0.a.x, false)))));
    var var_2 = arg_0;
    var var_3 = arg_0;
    return u_input.a.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = -firstTrailingBit(abs(~arg_3.b.x));
    var var_1 = arg_2;
    var var_2 = ~(~(func_3(Struct_1(arg_3.a, vec4<i32>(u_input.a.x, var_1.b.x, -39811i, 0i)), vec4<f32>(arg_1, 547f, 992f, 1362f)) << (1u % 32u)) << (1u % 32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 286f, arg_1) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_1)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), -1116f)));
    let var_4 = ~arg_3.b.x;
    return StorageBuffer(1u, -min(abs(~u_input.a.zy), _wgslsmith_clamp_vec2_i32(arg_3.b.yz, countOneBits(vec2<i32>(7477i, 25207i)), _wgslsmith_div_vec2_i32(vec2<i32>(arg_2.b.x, arg_3.b.x), vec2<i32>(0i, -41781i)))), vec4<i32>(min(select(-2147483647i, 2147483647i & var_4, !arg_3.a.x), _wgslsmith_add_i32(~21008i, -u_input.a.x)), ~(~(-2147483647i)), var_1.b.x, (u_input.a.x | _wgslsmith_mult_i32(var_4, 25437i)) | -8482i), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~1u, select(~0u, ~4294967295u, var_1.a.x), 75933u, min(~9735u, 35642u << (1u % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 24>();
    var var_0 = false;
    let var_1 = Struct_1(vec2<bool>(true, true), abs(u_input.a));
    let var_2 = Struct_1(var_1.a, vec4<i32>(u_input.b, -var_1.b.x, -13268i, u_input.b ^ abs(-27041i)));
    global1 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-972f, -1193f, _wgslsmith_f_op_f32(209f * -291f))))), -406f, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 61634u, 1u)), 24u)], Struct_1(select(var_2.a, select(var_2.a, var_1.a, true), func_1(-vec3<i32>(var_2.b.x, 7856i, var_2.b.x))), var_1.b));
}

