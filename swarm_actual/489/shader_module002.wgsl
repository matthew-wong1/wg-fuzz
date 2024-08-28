struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<i32>, 4>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: u32, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = arg_1;
    let var_1 = arg_1;
    let var_2 = var_0;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1731f))), 1088f, var_1.a.a.b.x);
    var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 369f), _wgslsmith_div_f32(var_0.c.a.b.x, 117f)), 1f, 1f), var_0.c.a.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(109f, var_0.a.a.b.x, var_0.a.a.b.x) + vec3<f32>(1132f, 1954f, 2136f)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_3.x, 745f, var_3.x), _wgslsmith_f_op_vec3_f32(-arg_3.a.b)))));
    return ~firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(u_input.a, ~var_1.b.x), select(arg_1.b.x, min(-2147483647i, -2345i), !arg_0), -1i));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_3) -> f32 {
    global0 = arg_2;
    global1 = array<vec2<i32>, 4>();
    let var_0 = vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(max(-655f, -2168f)));
    let var_1 = select(select(vec4<bool>(~arg_0.x != ~0u, _wgslsmith_mult_i32(1i, -25890i) == arg_2.b.x, !all(vec3<bool>(false, true, true)), false), vec4<bool>(true, true, true, select(all(vec3<bool>(false, false, false)), true, false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true)), select(!select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), true), vec4<bool>(true, true, false, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), vec4<bool>(!any(vec2<bool>(true, true)), false, true, true));
    let var_2 = select(!(!(!vec3<bool>(var_1.x, true, false))), select(vec3<bool>(!(var_0.x >= -710f), var_1.x, !(var_1.x == false)), !(!select(vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.zzy, var_1.yzz)), var_1.yzz), !(arg_1 != (global0.b.x >> (~arg_0.x % 32u))));
    return -1111f;
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = -abs(_wgslsmith_clamp_i32(-13562i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global0.b.x, 1i, u_input.a), vec4<i32>(-46991i, 3029i, global0.b.x, 1i)), ~global0.b.x), countOneBits(i32(-1i) * -2147483647i)));
    global0 = Struct_3(-278f, global1[_wgslsmith_index_u32(31482u, 4u)]);
    let var_1 = Struct_1(all(vec4<bool>(true, true, true, true)) && true, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(370f, -455f, -538f)))))));
    var var_2 = min(-var_0, -_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(var_0, u_input.b, 2147483647i, u_input.a)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_0, -14609i, 0i), vec4<i32>(0i, 0i, global0.b.x, 25946i)), -vec4<i32>(var_0, var_0, 23495i, -119741i))));
    var var_3 = Struct_4(Struct_2(var_1), firstTrailingBit(func_2(u_input.a <= u_input.a, Struct_4(Struct_2(var_1), vec3<i32>(11843i, -10065i, -2147483647i), Struct_2(var_1), var_1.b.x), ~0u, Struct_2(var_1))) ^ vec3<i32>(-func_2(var_1.a, Struct_4(Struct_2(Struct_1(false, vec3<f32>(global0.a, arg_0, var_1.b.x))), vec3<i32>(var_0, var_0, var_0), Struct_2(var_1), -1000f), 21225u, Struct_2(Struct_1(var_1.a, vec3<f32>(var_1.b.x, 1000f, var_1.b.x)))).x, ~_wgslsmith_div_i32(global0.b.x, -2147483647i), 13355i), Struct_2(var_1), arg_0);
    return Struct_3(_wgslsmith_f_op_f32(func_3(select(vec3<u32>(4294967295u, _wgslsmith_div_u32(124376u, 18536u), 1u), vec3<u32>(~0u, 0u << (0u % 32u), 1u), vec3<bool>(var_3.d >= arg_0, var_1.a, var_1.a)), 22426i, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b.x)) + _wgslsmith_f_op_f32(f32(-1f) * -918f)), var_3.b.xx | _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, var_3.b.x), vec2<i32>(-2147483647i, 51665i))))), vec2<i32>(countOneBits(abs(-5464i & var_3.b.x)), -var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 4>();
    global0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(-global0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(global0.b), select(select(vec4<u32>(~20385u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 26840u, 0u, 24167u), vec4<u32>(1841u, 0u, 0u, 59619u)), _wgslsmith_mod_u32(72591u, 103447u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 3632u), vec3<u32>(25267u, 4294967295u, 0u)), select(79066u, 75006u, false), 3935u, 1u), true), ~vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true, true, true, true)), vec2<u32>(42518u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(47716u, 69231u)), ~vec2<u32>(101684u, 1u) << (select(vec2<u32>(16109u, 39944u), vec2<u32>(61031u, 4294967295u), false) % vec2<u32>(32u)))));
}

