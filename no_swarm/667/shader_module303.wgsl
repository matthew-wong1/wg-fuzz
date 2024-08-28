struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: array<f32, 3> = array<f32, 3>(1616f, 487f, 1000f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32) -> bool {
    let var_0 = arg_1;
    var var_1 = false;
    let var_2 = Struct_3(Struct_1(u_input.a, _wgslsmith_div_u32(48849u << (u_input.a % 32u), ~1u) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.d.x, 0u, var_0.d.x), ~vec3<u32>(4294967295u, var_0.d.x, u_input.a)) % 32u)), Struct_1(var_0.d.x, firstLeadingBit(arg_2 >> (arg_2 % 32u))));
    let var_3 = Struct_4(~(~arg_1.d));
    global0 = array<i32, 4>();
    return false;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> Struct_2 {
    global0 = array<i32, 4>();
    let var_0 = min(-1i, 51896i);
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 3u)]))))));
    var var_2 = !(!(!((4294967295u > u_input.a) != func_3(vec2<bool>(true, true), Struct_2(vec4<bool>(false, true, true, true), vec2<i32>(global0[_wgslsmith_index_u32(68394u, 4u)], -28059i), 4596i, vec2<u32>(u_input.a, u_input.a)), u_input.a))));
    let var_3 = Struct_2(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, any(vec3<bool>(false, true, true)), true, true), (-1i > global0[_wgslsmith_index_u32(u_input.a, 4u)]) || all(vec2<bool>(true, true))), ~(-(vec2<i32>(-1246i, global0[_wgslsmith_index_u32(u_input.a, 4u)]) << (vec2<u32>(u_input.a, 13034u) % vec2<u32>(32u))) | vec2<i32>(~2147483647i, -28876i & global0[_wgslsmith_index_u32(65053u, 4u)])), -_wgslsmith_mult_i32(var_0, var_0), reverseBits(~(~vec2<u32>(u_input.a, 103532u))));
    return var_3;
}

fn func_1() -> Struct_2 {
    global1 = array<f32, 3>();
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    global1 = array<f32, 3>();
    let var_0 = Struct_3(Struct_1(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 1104u, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, 4294967295u), vec4<u32>(u_input.a, 0u, 27775u, u_input.a))) & 47228u), Struct_1(~(~62159u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), max(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(71116u, u_input.a, 0u, 7337u)) & max(vec4<u32>(4946u, u_input.a, u_input.a, 1u), vec4<u32>(1u, u_input.a, 0u, 1u)))));
    return func_2(vec4<f32>(-913f, -1203f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.a.b, 3u)]))), -915f), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, var_0.a.a), 3u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(65555u, var_0.b.a, 0u, u_input.a)), firstLeadingBit(vec4<u32>(1u, 17042u, 485u, var_0.b.a))), 3u)] * _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(~10722u, 3u)]))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<u32>) -> vec3<i32> {
    let var_0 = arg_0.d.x ^ _wgslsmith_clamp_u32(arg_2.x, 4294967295u, arg_1.a.x);
    let var_1 = select(vec2<bool>(!any(select(vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_0.a, vec4<bool>(true, arg_0.a.x, true, arg_0.a.x))), true), func_1().a.yz, any(func_1().a));
    let var_2 = Struct_1(~45452u >> (min(0u, arg_2.x) % 32u), 1u);
    let var_3 = true;
    var var_4 = 14777u;
    return _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(func_1().b.x, min(-817i, -45374i), reverseBits(-2147483647i)), firstLeadingBit(vec3<i32>(2147483647i, arg_0.b.x, global0[_wgslsmith_index_u32(16921u, 4u)]))), -(~select(vec3<i32>(arg_0.b.x, arg_0.b.x, 17050i), vec3<i32>(96825i, global0[_wgslsmith_index_u32(u_input.a, 4u)], arg_0.b.x), vec3<bool>(true, false, true)))) | vec3<i32>(-2147483647i, arg_0.c, ~_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.d.x, 4294967295u), 4u)], -10655i ^ global0[_wgslsmith_index_u32(arg_0.d.x, 4u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), Struct_4(vec2<u32>(0u, u_input.a)), vec4<u32>(_wgslsmith_sub_u32(0u >> (_wgslsmith_sub_u32(u_input.a, u_input.a) % 32u), u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(4294967295u, 1u), _wgslsmith_mult_u32(u_input.a, u_input.a), _wgslsmith_div_u32(u_input.a, u_input.a), 0u), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 13527u)), 56598u, _wgslsmith_mult_u32(u_input.a, 4294967295u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-908f)) * 520f);
    global0 = array<i32, 4>();
    var var_2 = 0i;
    let var_3 = vec4<bool>(1u <= u_input.a, true, true, !(!all(vec2<bool>(false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, firstTrailingBit(reverseBits(u_input.a) << (~reverseBits(u_input.a) % 32u)), 1303f);
}

