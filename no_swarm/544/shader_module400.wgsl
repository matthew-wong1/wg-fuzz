struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 9>();
    let var_0 = Struct_1(~u_input.e, u_input.b.x, _wgslsmith_div_u32(~u_input.b.x, u_input.e), 10521u);
    let var_1 = vec3<i32>(-1i, -(i32(-1i) * -23069i), 1i);
    let var_2 = global0[_wgslsmith_index_u32(var_0.b, 9u)];
    var var_3 = var_0;
    return Struct_1(var_0.a, 51805u, var_0.c, var_3.c);
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    global0 = array<Struct_1, 9>();
    var var_0 = Struct_1(1u, countOneBits(select(12734u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_0.x, u_input.e), arg_0.yzy, u_input.b), vec3<u32>(u_input.b.x, 1u, 1u)), any(vec2<bool>(false, false)) && any(vec4<bool>(true, true, false, true)))), 40156u, 4294967295u);
    var_0 = global0[_wgslsmith_index_u32(var_0.d, 9u)];
    global0 = array<Struct_1, 9>();
    var var_1 = ~(i32(-1i) * -2147483647i);
    return arg_0.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = arg_3;
    let var_1 = Struct_1(reverseBits(u_input.b.x), func_3(vec4<u32>(min(~arg_1.c, arg_3.d), 4294967295u, max(u_input.b.x, ~1u), _wgslsmith_div_u32(~15538u, firstLeadingBit(var_0.d)))), ~12434u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(8634u, arg_3.c, 0u, 64481u), min(vec4<u32>(6317u, arg_1.a, 16356u, arg_1.b), vec4<u32>(4294967295u, 56088u, 0u, u_input.b.x))) >> (vec4<u32>(_wgslsmith_div_u32(60030u, arg_1.a), ~var_0.a, abs(4294967295u), u_input.e) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_3.a, arg_1.d, u_input.e), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a, arg_3.d, arg_3.b, 40124u), vec4<u32>(8020u, 48982u, 54912u, var_0.a))), ~(~vec4<u32>(var_0.b, 4294967295u, u_input.b.x, 4294967295u)))));
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    let var_2 = ~_wgslsmith_mult_u32(arg_3.a, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(19154u, 1344u, 4294967295u), vec3<u32>(0u, u_input.b.x, u_input.e)) & 30093u));
    return ~vec4<u32>(arg_1.a, 4294967295u, var_1.d, 10946u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    var var_0 = func_1();
    var var_1 = func_1();
    var_0 = Struct_1(~_wgslsmith_clamp_u32(var_0.d, ~4294967295u ^ var_0.b, func_1().d), _wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1404u, var_0.a, var_1.a), ~vec4<u32>(110925u, var_1.d, 26641u, var_1.d), func_2(u_input.d, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], vec2<f32>(423f, 994f), global0[_wgslsmith_index_u32(u_input.e, 9u)]))), countOneBits(vec4<u32>(~u_input.b.x, ~35201u, _wgslsmith_add_u32(59515u, var_0.d), ~var_0.c))), _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_sub_u32(37215u, var_0.c)), _wgslsmith_clamp_u32(u_input.e, u_input.e, var_1.d)) & u_input.b.x, _wgslsmith_mod_u32(~(~_wgslsmith_sub_u32(0u, u_input.e)), reverseBits(var_1.d)));
    var var_2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_1.b, ~1u), _wgslsmith_f_op_f32(901f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-191f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1083f, -598f)))), _wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.a, u_input.e), u_input.b.zy) >> (vec2<u32>(_wgslsmith_clamp_u32(~64887u, ~32654u, 70017u << (var_1.b % 32u)), var_1.a) % vec2<u32>(32u)));
}

