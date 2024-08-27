struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(23234u, 3577u, 0u, 4960u, 4294967295u, 73118u, 67068u, 106283u, 9401u, 27802u, 0u, 0u, 24914u, 35045u, 13387u, 21349u, 4294967295u, 6919u, 6936u, 38913u);

var<private> global1: array<vec2<i32>, 26>;

var<private> global2: array<Struct_1, 18>;

var<private> global3: array<Struct_1, 4>;

var<private> global4: array<vec3<i32>, 32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<i32>) -> f32 {
    var var_0 = !(any(vec2<bool>(false, true)) || true);
    global3 = array<Struct_1, 4>();
    global4 = array<vec3<i32>, 32>();
    global0 = array<u32, 20>();
    var var_1 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x * -1420f))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(vec3<f32>(arg_0.a.x, arg_0.c.x, _wgslsmith_div_f32(-611f, arg_0.a.x)), arg_1.d, vec2<f32>(_wgslsmith_f_op_f32(func_3(1i, arg_1.c, vec4<i32>(1i, 1i, 1i, 1i))), _wgslsmith_f_op_f32(918f * _wgslsmith_f_op_f32(floor(arg_1.c.x)))), firstLeadingBit(abs(vec3<u32>(36748u, 0u, 0u))) << (arg_0.b % vec3<u32>(32u)), ~_wgslsmith_dot_vec4_u32(select(~vec4<u32>(arg_0.e, global0[_wgslsmith_index_u32(u_input.b, 20u)], u_input.b, 4444u), ~vec4<u32>(arg_0.d.x, 8667u, 7598u, arg_0.e), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true)), max(~vec4<u32>(1u, 0u, arg_1.b.x, 0u), vec4<u32>(1u, 73091u, arg_0.d.x, 4294967295u))));
    global1 = array<vec2<i32>, 26>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -652f), _wgslsmith_f_op_f32(f32(-1f) * -1387f))), _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(886f * -755f)))));
    global3 = array<Struct_1, 4>();
    let var_2 = !select(vec2<bool>(any(vec3<bool>(false, true, false)) | true, false), vec2<bool>(true || all(vec4<bool>(false, true, true, false)), any(vec2<bool>(false, true))), vec2<bool>(true, !all(vec3<bool>(false, false, false))));
    return ~var_0.b;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = firstTrailingBit(_wgslsmith_add_i32(1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -13372i, -2147483647i, 0i), vec4<i32>(2147483647i, 0i, 2147483647i, 2147483647i)) ^ _wgslsmith_add_i32(0i, -44225i), -(~(-654i)), _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(reverseBits(arg_2.e), 26u)], global1[_wgslsmith_index_u32(1u, 26u)]))));
    global3 = array<Struct_1, 4>();
    global1 = array<vec2<i32>, 26>();
    global2 = array<Struct_1, 18>();
    global4 = array<vec3<i32>, 32>();
    return -1i;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(~(-2147483647i), 1i, func_4(firstLeadingBit(vec4<u32>(0u, 1u, u_input.a, 1u)) | _wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(41330u, 20u)], 404u, 37901u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 20u)], 5600u, 0u, global0[_wgslsmith_index_u32(u_input.a, 20u)])), vec2<f32>(arg_1.x, arg_1.x), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-941f, -823f, arg_1.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(49969u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], 55724u), vec3<u32>(global0[_wgslsmith_index_u32(0u, 20u)], 4294967295u, u_input.a)), _wgslsmith_f_op_vec2_f32(min(arg_1, arg_1)), func_2(global2[_wgslsmith_index_u32(7416u, 18u)], Struct_1(vec3<f32>(-1350f, arg_0, arg_0), vec3<u32>(u_input.a, u_input.a, 4294967295u), arg_1, vec3<u32>(u_input.a, 4294967295u, 90934u), 0u)), 27045u))), vec3<i32>(_wgslsmith_div_i32(~abs(-1i), _wgslsmith_div_i32(1i, func_4(vec4<u32>(global0[_wgslsmith_index_u32(1u, 20u)], 20085u, 1u, 22921u), vec2<f32>(699f, -684f), global3[_wgslsmith_index_u32(7729u, 4u)]))), countOneBits(reverseBits(~(-1i))), 1i));
    global4 = array<vec3<i32>, 32>();
    global2 = array<Struct_1, 18>();
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), ~vec2<u32>(1u, global0[_wgslsmith_index_u32(u_input.b, 20u)]))), vec2<u32>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(4293u, 20u)], 64295u, u_input.a)), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 20u)], 1u, u_input.b) & vec3<u32>(u_input.b, 0u, 24157u)), 20u)], 4294967295u)), 4u)];
    let var_2 = _wgslsmith_add_i32(2147483647i | ~var_0.x, max(firstLeadingBit(~var_0.x), _wgslsmith_div_i32(min(48003i, var_0.x), func_4(vec4<u32>(u_input.b, 0u, var_1.e, 4294967295u), var_1.c, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.d.x, 20u)], 18u)]))) << (u_input.a % 32u));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(223f + _wgslsmith_f_op_f32(round(-1467f))) - -897f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_1(813f, vec2<f32>(_wgslsmith_f_op_f32(-1635f - _wgslsmith_f_op_f32(ceil(-346f))), -786f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1536f, 311f)), 1215f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(197f * -1547f)))));
    var var_1 = select(~(~abs(vec3<u32>(global0[_wgslsmith_index_u32(20879u, 20u)], 4294967295u, u_input.b))), vec3<u32>(57818u, _wgslsmith_dot_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(10549u, 20u)], global0[_wgslsmith_index_u32(83978u, 20u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56067u, 20u)], 20u)], u_input.b, u_input.b), vec3<u32>(64944u, 1u, u_input.a)), vec3<u32>(1133u, u_input.b, 41749u), vec3<bool>(false, true, false)), vec3<u32>(~1u, min(18054u, 56151u), 16183u & global0[_wgslsmith_index_u32(1u, 20u)])), firstTrailingBit(~1u) & ~(~global0[_wgslsmith_index_u32(33334u, 20u)])), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), vec3<bool>(true, true, false)), vec3<bool>(_wgslsmith_f_op_f32(exp2(var_0.x)) < -432f, false, any(vec4<bool>(true, true, true, true))), vec3<bool>(false, true, all(vec4<bool>(true, true, true, true)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1727f, -1825f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -1526f)), false)))))), ~min(reverseBits(abs(vec3<u32>(41496u, 27575u, global0[_wgslsmith_index_u32(1u, 20u)]))), vec3<u32>(var_1.x, ~u_input.b, _wgslsmith_sub_u32(0u, 0u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(995f, -289f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1067f, var_0.x) + vec2<f32>(-1000f, var_0.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(273f, var_0.x)))), vec3<u32>(~(~40141u), ~u_input.a, 33922u), var_1.x);
    global4 = array<vec3<i32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec4_i32(-(~vec4<i32>(-9149i, 2147483647i, -12425i, 1i)), ~vec4<i32>(-14655i, 31743i, -23415i, -10644i)), 55157u);
}

