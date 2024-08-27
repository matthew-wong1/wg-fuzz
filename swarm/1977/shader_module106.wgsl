struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(0i, vec4<i32>(-13665i, 2147483647i, -25403i, 9596i));

var<private> global2: array<Struct_1, 14>;

var<private> global3: array<f32, 7> = array<f32, 7>(794f, 322f, -1000f, 219f, 2157f, 1412f, -417f);

var<private> global4: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = reverseBits(max(u_input.b, u_input.a));
    return global2[_wgslsmith_index_u32(var_0, 14u)];
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<u32>) -> vec3<u32> {
    global3 = array<f32, 7>();
    global2 = array<Struct_1, 14>();
    global0 = 1u;
    var var_0 = vec3<u32>(~(~21253u), u_input.a, 22440u);
    let var_1 = Struct_1(~(-12493i << (~(~arg_3.x) % 32u)), vec4<i32>(global1.b.x, -67004i, global1.b.x, global1.a));
    return _wgslsmith_div_vec3_u32(abs(vec3<u32>(~abs(u_input.a), 69654u, ~(61804u >> (u_input.b % 32u)))), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 11255u, 0u) & vec3<u32>(arg_3.x, var_0.x, u_input.a), vec3<u32>(var_0.x, arg_3.x, var_0.x) | vec3<u32>(arg_3.x, 30330u, u_input.a)) & (vec3<u32>(50171u, var_0.x, arg_3.x) << (~vec3<u32>(4294967295u, u_input.a, 0u) % vec3<u32>(32u)))));
}

fn func_1() -> vec4<i32> {
    let var_0 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(4294967295u, u_input.b) | countOneBits(48406u), ~1u), vec2<u32>(_wgslsmith_mod_u32(~u_input.a, u_input.a), u_input.b));
    var var_1 = vec3<u32>(~max(var_0.x, var_0.x), ~var_0.x, _wgslsmith_sub_u32(~u_input.a, ~(~u_input.b))) << (vec3<u32>(u_input.b, u_input.b & reverseBits(34323u), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, u_input.a, 14341u), func_3(vec3<bool>(false, false, true), all(global4[_wgslsmith_index_u32(4294967295u, 14u)]), func_2(global2[_wgslsmith_index_u32(42962u, 14u)], global1.a, global2[_wgslsmith_index_u32(u_input.a, 14u)]), var_0 >> (vec2<u32>(48278u, var_0.x) % vec2<u32>(32u))))) % vec3<u32>(32u));
    let var_2 = func_2(global2[_wgslsmith_index_u32(1u, 14u)], -2147483647i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(26128u, 0u, var_1.x), 4081u, _wgslsmith_sub_u32(76095u, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_0.x, 0u, 0u), vec4<u32>(var_1.x, var_1.x, 12174u, var_0.x))) & (abs(vec4<u32>(16095u, var_0.x, var_1.x, 0u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, var_1.x, 4294967295u), vec4<u32>(2364u, var_0.x, 4294967295u, u_input.a), vec4<u32>(60647u, 3984u, 0u, 68024u))), ~vec4<u32>(countOneBits(var_0.x), ~var_0.x, u_input.a ^ 4294967295u, ~var_0.x)), 14u)]);
    var var_3 = true;
    var var_4 = global2[_wgslsmith_index_u32(0u, 14u)];
    return ~(~(~(vec4<i32>(global1.a, var_4.a, 56533i, 51765i) >> (vec4<u32>(16563u, var_0.x, 12991u, var_1.x) % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.b, 0u, 4294967295u), vec4<u32>(var_1.x, 5801u, var_1.x, 3493u), vec4<u32>(u_input.a, 0u, u_input.a, 0u)), ~vec4<u32>(59851u, 25820u, u_input.a, u_input.b)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_mod_vec4_i32(func_1(), firstTrailingBit(reverseBits(vec4<i32>(global1.a, -60468i, global1.b.x, 18695i)))));
    var var_1 = global2[_wgslsmith_index_u32(u_input.a, 14u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 7u)] + global3[_wgslsmith_index_u32(u_input.b, 7u)]))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 7u)]) * -131f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~1u, 7u)]))));
    var var_3 = func_2(func_2(Struct_1(_wgslsmith_add_i32(33125i, var_0.x >> (u_input.a % 32u)), global1.b), var_1.b.x, func_2(global2[_wgslsmith_index_u32(abs(~u_input.a), 14u)], var_1.b.x, Struct_1(-2147483647i, abs(global1.b)))), global1.b.x, Struct_1(-var_0.x, vec4<i32>(func_2(func_2(global2[_wgslsmith_index_u32(4294967295u, 14u)], 45505i, Struct_1(var_1.b.x, vec4<i32>(-36830i, var_0.x, -13626i, 7073i))), _wgslsmith_clamp_i32(1i, global1.b.x, global1.a), func_2(global2[_wgslsmith_index_u32(u_input.a, 14u)], global1.b.x, Struct_1(var_0.x, vec4<i32>(37255i, -40223i, var_0.x, global1.b.x)))).a, max(var_1.a, var_1.b.x), reverseBits(~1i), -7456i)));
    let var_4 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-firstLeadingBit(global1.b.x), -9278i), firstLeadingBit(min(var_1.a, -2147483647i)) | -_wgslsmith_add_i32(-1i, -57887i), var_3.a), _wgslsmith_clamp_vec4_i32(-vec4<i32>(~var_0.x, i32(-1i) * -14521i, var_3.a, _wgslsmith_mod_i32(-2147483647i, var_1.b.x)), var_1.b, vec4<i32>(firstTrailingBit(-16952i), ~var_0.x, global1.b.x, _wgslsmith_mod_i32(var_1.a, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(~min(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 15808u, 56713u, 1u), vec4<u32>(u_input.a, 1u, u_input.b, u_input.a)), _wgslsmith_mod_vec4_u32(~vec4<u32>(3098u, 4294967295u, u_input.a, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(53980u, 4294967295u, 21812u, 11912u), vec4<u32>(u_input.b, u_input.b, 48139u, 15540u), vec4<u32>(u_input.a, u_input.b, 27270u, 0u)))), reverseBits(u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - _wgslsmith_f_op_f32(var_2 * 1768f)) + _wgslsmith_f_op_f32(-2008f + -651f))), select(min(_wgslsmith_div_vec4_u32(vec4<u32>(31197u, 12642u, u_input.a, 77498u), vec4<u32>(6176u, 11643u, 1u, u_input.a)), vec4<u32>(1u, u_input.b, u_input.b, u_input.b) << (vec4<u32>(u_input.b, 4294967295u, 12033u, 20769u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 1u, u_input.b, 1u), vec4<u32>(0u, u_input.b, 13589u, u_input.b) ^ vec4<u32>(u_input.a, 28549u, u_input.a, 114522u)), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false)) << (~vec4<u32>(11543u, reverseBits(0u), 1u, ~26952u) % vec4<u32>(32u)));
}

