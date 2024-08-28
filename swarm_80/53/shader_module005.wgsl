struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(0u, vec2<f32>(-829f, -479f), vec3<u32>(0u, 4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u), 4294967295u), Struct_1(0u, vec2<f32>(-1000f, 428f), vec3<u32>(1u, 25014u, 4294967295u), vec2<u32>(27856u, 107640u), 0u), Struct_1(47431u, vec2<f32>(-1070f, -126f), vec3<u32>(4294967295u, 1u, 1u), vec2<u32>(7575u, 12521u), 14098u), Struct_1(0u, vec2<f32>(-1342f, 1946f), vec3<u32>(154u, 0u, 0u), vec2<u32>(99317u, 36910u), 77658u), Struct_1(1u, vec2<f32>(814f, 133f), vec3<u32>(29103u, 4294967295u, 1u), vec2<u32>(68784u, 67241u), 20837u), Struct_1(1u, vec2<f32>(1091f, -428f), vec3<u32>(4294967295u, 32048u, 0u), vec2<u32>(4294967295u, 17393u), 97617u), Struct_1(36254u, vec2<f32>(229f, -380f), vec3<u32>(4294967295u, 1u, 4294967295u), vec2<u32>(4294967295u, 0u), 14232u), Struct_1(71683u, vec2<f32>(-2139f, 383f), vec3<u32>(4294967295u, 0u, 0u), vec2<u32>(1u, 3183u), 0u), Struct_1(43272u, vec2<f32>(198f, 587f), vec3<u32>(4294967295u, 1u, 0u), vec2<u32>(10231u, 26522u), 0u), Struct_1(0u, vec2<f32>(1384f, -167f), vec3<u32>(0u, 0u, 4294967295u), vec2<u32>(4294967295u, 0u), 31173u), Struct_1(4294967295u, vec2<f32>(-1000f, -946f), vec3<u32>(4294967295u, 0u, 1u), vec2<u32>(13151u, 4294967295u), 13616u), Struct_1(23609u, vec2<f32>(-494f, 948f), vec3<u32>(64005u, 4294967295u, 1u), vec2<u32>(20799u, 4294967295u), 1u), Struct_1(1u, vec2<f32>(1903f, -1372f), vec3<u32>(4294967295u, 4294967295u, 1u), vec2<u32>(23225u, 1304u), 30091u));

var<private> global3: array<vec3<f32>, 14>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    global1 = global2[_wgslsmith_index_u32(~reverseBits(26362u), 13u)];
    global1 = Struct_1(u_input.a, vec2<f32>(_wgslsmith_f_op_f32(-global1.b.x), global1.b.x), _wgslsmith_mod_vec3_u32(~(~(~vec3<u32>(u_input.a, global1.e, global1.a))), ~vec3<u32>(abs(50393u), firstLeadingBit(33671u), _wgslsmith_mod_u32(u_input.a, 0u))), ~(~_wgslsmith_clamp_vec2_u32(global1.d >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), ~global1.d, global1.d)), _wgslsmith_mod_u32(countOneBits(43158u), global1.a >> (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global1.d, vec2<u32>(global1.c.x, 10160u)), global1.c.xz ^ vec2<u32>(4294967295u, 0u)) % 32u)));
    let var_0 = 1195f;
    global1 = Struct_1(global1.e, vec2<f32>(-681f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -662f))), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.x, 1u, 0u, u_input.a), vec4<u32>(69330u, u_input.a, 0u, 1u)), ~u_input.a), global1.d), 4294967295u), global1.c.xy, select(global1.d.x, ~4294967295u, _wgslsmith_f_op_f32(-var_0) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(197f, var_0))));
    global3 = array<vec3<f32>, 14>();
    return select(_wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(38300i, -23086i)) << (_wgslsmith_mod_u32(82322u, u_input.a) % 32u), -1i), -1i | _wgslsmith_clamp_i32(-1204i, 0i, ~26966i), ~(-(~(-1i)))), 1i, any(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec3_i32(~(-vec3<i32>(1i, 1i, 1i)), vec3<i32>(abs(func_3()), -(~1i), -2147483647i));
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -var_0.x, 17104i), firstLeadingBit(_wgslsmith_clamp_vec3_i32(~vec3<i32>(var_0.x, 0i, var_0.x), min(vec3<i32>(26823i, 2147483647i, 917i), vec3<i32>(-1i, 67235i, var_0.x)), vec3<i32>(-1i, 44929i, var_0.x)) << (select(vec3<u32>(6277u, global1.e, arg_1.d.x), ~vec3<u32>(u_input.a, 1u, 1u), true) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_div_i32(~(~var_1.x), _wgslsmith_div_i32(2147483647i, var_1.x)), select(-31211i, func_3(), all(!vec4<bool>(false, arg_2.x, false, false)))) | 2147483647i;
    let var_3 = -1126f;
    var var_4 = Struct_1(select(~(~1u >> (arg_1.d.x % 32u)), _wgslsmith_dot_vec2_u32(arg_1.c.zz, countOneBits(vec2<u32>(arg_1.d.x, global1.e))), select(!(global1.a > 4294967295u), !any(arg_2), !arg_2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-397f, _wgslsmith_f_op_f32(max(arg_0, arg_1.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, 1146f))), vec2<bool>(true, arg_2.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2415f, arg_0)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global1.b, vec2<f32>(global1.b.x, arg_1.b.x)))))), global1.c, vec2<u32>(51496u, global1.e), abs(0u << ((~21347u >> (arg_1.e % 32u)) % 32u)));
    return global2[_wgslsmith_index_u32(~4294967295u, 13u)];
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    global1 = Struct_1(4294967295u << (u_input.a % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b)), vec3<u32>(global1.c.x, 1u, ~(~_wgslsmith_dot_vec2_u32(global1.d, global1.c.yx))), ~vec2<u32>(firstTrailingBit(u_input.a | 13171u), select(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, 0u, 9324u, 29451u), vec4<u32>(global1.e, 1u, u_input.a, u_input.a)), true)), ~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(50846u, 61259u, global1.a), ~global1.c)));
    let var_0 = 0i;
    global0 = 13191u;
    let var_1 = func_2(-1512f, Struct_1(~_wgslsmith_mult_u32(835u, ~global1.c.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, global1.b.x))))), reverseBits(vec3<u32>(1u, u_input.a << (1u % 32u), u_input.a ^ 4294967295u)), countOneBits(global1.c.zz), ~1u), !(!(!(!vec4<bool>(arg_0.x, arg_0.x, true, false)))));
    global2 = array<Struct_1, 13>();
    return 648f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1747f * _wgslsmith_f_op_f32(func_1(vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<bool>(false, false, true))) * global1.b.x), _wgslsmith_f_op_f32(-global1.b.x))));
    global3 = array<vec3<f32>, 14>();
    var var_1 = ~vec2<u32>(global1.d.x, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), global2[_wgslsmith_index_u32(~u_input.a, 13u)], select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false))).d.x);
    let var_2 = vec4<bool>(select(all(vec4<bool>(true, any(vec4<bool>(true, true, true, false)), false, select(true, true, true))), any(vec4<bool>(true, true, true, true)), false), true, false, true);
    global1 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -152f), func_2(var_0.x, Struct_1(_wgslsmith_dot_vec2_u32(~global1.d, vec2<u32>(global1.d.x, global1.c.x)), _wgslsmith_f_op_vec2_f32(max(global1.b, vec2<f32>(global1.b.x, -1000f))), vec3<u32>(u_input.a, ~global1.a, 41993u), reverseBits(reverseBits(vec2<u32>(43369u, u_input.a))), 9945u << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_1.x, u_input.a, global1.a), vec4<u32>(1u, global1.c.x, u_input.a, 4294967295u)) % 32u)), var_2), select(select(var_2, select(vec4<bool>(var_2.x, var_2.x, false, false), !vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), true), var_2), select(select(select(var_2, vec4<bool>(false, var_2.x, false, true), var_2), vec4<bool>(true, true, false, false), var_2), var_2, vec4<bool>(true, var_2.x, var_2.x, true)), !var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<i32>(1i, firstLeadingBit(27489i), ~19464i) | -(vec3<i32>(37589i, -28063i, 0i) << (vec3<u32>(107275u, var_1.x, 5231u) % vec3<u32>(32u)))), vec4<u32>(~reverseBits(63187u) | var_1.x, reverseBits(~firstLeadingBit(66880u)), select(~11206u, global1.d.x, false), u_input.a << ((var_1.x ^ 1u) % 32u)), 297f, -_wgslsmith_add_i32(i32(-1i) * -16480i, 1i));
}

