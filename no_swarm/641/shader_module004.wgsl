struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(1542f), Struct_1(1000f), Struct_1(-952f), Struct_1(-568f), Struct_1(-487f), Struct_1(-1916f), Struct_1(1000f), Struct_1(268f), Struct_1(-2701f), Struct_1(2294f), Struct_1(142f), Struct_1(559f), Struct_1(886f), Struct_1(411f), Struct_1(-329f), Struct_1(-1000f), Struct_1(2266f), Struct_1(633f), Struct_1(-567f), Struct_1(613f), Struct_1(-460f), Struct_1(958f), Struct_1(1608f), Struct_1(1614f), Struct_1(-1147f), Struct_1(-1218f), Struct_1(1653f), Struct_1(-970f), Struct_1(-437f), Struct_1(363f), Struct_1(-336f), Struct_1(529f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> vec2<i32> {
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    let var_0 = vec4<f32>(arg_1.x, 902f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1426f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * arg_3.a)))));
    let var_1 = arg_0.a;
    return vec2<i32>(-7469i, u_input.a.x);
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = !(_wgslsmith_dot_vec2_i32(vec2<i32>(-35197i, _wgslsmith_mod_i32(2147483647i, -1i)), func_3(Struct_1(-490f), _wgslsmith_f_op_vec2_f32(select(arg_0, vec2<f32>(-144f, 1000f), vec2<bool>(false, true))), all(vec3<bool>(true, true, false)), global0[_wgslsmith_index_u32(u_input.d.x, 32u)])) != 13839i);
    var var_1 = !select(!vec2<bool>(arg_0.x < 854f, any(vec2<bool>(true, false))), !vec2<bool>(true, any(vec3<bool>(false, true, true))), select(vec2<bool>(true, all(vec4<bool>(true, false, true, false))), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), false));
    let var_2 = global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d, _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), ~u_input.d)), (~u_input.d >> (vec2<u32>(68806u, u_input.d.x) % vec2<u32>(32u))) | vec2<u32>(max(u_input.d.x, 12734u), 27114u & u_input.d.x))), 32u)];
    let var_3 = u_input.d.x;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) + var_2.a), var_2.a);
    return Struct_1(-1900f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    global0 = array<Struct_1, 32>();
    var var_0 = _wgslsmith_mod_vec3_i32(reverseBits(u_input.a << (vec3<u32>(u_input.d.x, 1u, _wgslsmith_div_u32(0u, 4294967295u)) % vec3<u32>(32u))), select(min(vec3<i32>(-17977i, u_input.a.x & u_input.a.x, u_input.e), vec3<i32>(_wgslsmith_mod_i32(u_input.e, u_input.b.x), -u_input.a.x, u_input.b.x | 11847i)), vec3<i32>(-1i, -11304i, abs(-1i)), !arg_3));
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1768f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-107f, _wgslsmith_f_op_f32(max(arg_2.a, arg_2.a)), true)))));
    return -212f;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    return abs(~(~u_input.d.x));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = ~vec3<u32>(countOneBits(~1u), max(27453u, u_input.d.x), _wgslsmith_mod_u32(1u, 1u));
    global0 = array<Struct_1, 32>();
    var var_1 = global0[_wgslsmith_index_u32(func_5(~(~u_input.d ^ ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, 5617u), vec2<u32>(var_0.x, 52607u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(499f * 1263f)), 523f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 947f) * -505f), _wgslsmith_f_op_f32(f32(-1f) * -425f)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(923f, 677f, 1371f, 718f), vec4<f32>(239f, -229f, 1210f, -1147f)))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-926f))), -126f)), _wgslsmith_f_op_f32(func_4(func_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -910f), _wgslsmith_f_op_f32(min(279f, -1875f)))), global0[_wgslsmith_index_u32(25228u, 32u)], Struct_1(1f), select(!(!vec3<bool>(false, arg_0, true)), select(select(vec3<bool>(false, arg_0, false), vec3<bool>(true, arg_0, true), arg_0), !vec3<bool>(false, false, arg_0), !arg_0), arg_0)))), 32u)];
    var var_2 = ~_wgslsmith_sub_i32(~u_input.b.x, _wgslsmith_dot_vec2_i32(-u_input.c, ~u_input.a.yy));
    let var_3 = 2461u;
    return _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(355f, var_1.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1329f, var_1.a), vec2<f32>(-1027f, 1726f), vec2<bool>(arg_0, arg_0)))))).a + _wgslsmith_f_op_f32(-339f * var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1397f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(u_input.d.x, 32u)], Struct_1(-1047f), Struct_1(2370f), vec3<bool>(true, false, true))))))));
    global0 = array<Struct_1, 32>();
    var var_1 = -(~((vec3<i32>(-1i) * -u_input.b.xzw) & u_input.a));
    var var_2 = all(vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), true, all(vec4<bool>(true, true, u_input.c.x > -78816i, true)), all(vec2<bool>(true, true))));
    let var_3 = u_input.d.x;
    var_2 = !(!(all(vec3<bool>(true, false, false)) | true));
    var var_4 = ~(-_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, 26952i, var_1.x, u_input.b.x), u_input.b), vec4<i32>(var_1.x, 2147483647i, var_1.x, -2147483647i) >> (vec4<u32>(u_input.d.x, 27209u, 37585u, 30777u) % vec4<u32>(32u))) << (~vec4<u32>(1u, func_5(u_input.d, vec4<f32>(-242f, -442f, 179f, 1000f), Struct_1(-849f), -794f), u_input.d.x & u_input.d.x, u_input.d.x) % vec4<u32>(32u)));
    let var_5 = vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(firstLeadingBit(u_input.d.x), ~u_input.d.x), ~_wgslsmith_mod_u32(0u, 4294967295u)), ~reverseBits(~(u_input.d.x << (0u % 32u))), var_3, abs(u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a, -1879f, var_0.a, 1524f), _wgslsmith_f_op_vec4_f32(vec4<f32>(967f, var_0.a, -1551f, var_0.a) * vec4<f32>(var_0.a, var_0.a, -1823f, var_0.a))))))), min(-_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, 91746i, 2147483647i, var_4.x), vec4<i32>(2147483647i, 12047i, u_input.c.x, -2147483647i)), u_input.b), vec4<i32>(reverseBits(select(var_1.x, u_input.a.x, false)), max(~var_1.x, -2606i), -43892i, -29685i)));
}

