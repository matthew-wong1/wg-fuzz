struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(1i, 0i, 45638i, -1i, 63901i, -1i, 0i, 1i, 2147483647i, -8705i, i32(-2147483648), 1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    return Struct_1(-(~_wgslsmith_add_vec3_i32(~vec3<i32>(2147483647i, -8801i, -2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], u_input.c, -2147483647i))), ~4294967295u);
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_add_i32(global0[_wgslsmith_index_u32(abs(26831u), 12u)], 1778i);
    let var_1 = _wgslsmith_mod_u32(~(~countOneBits(u_input.a)), 0u);
    let var_2 = vec4<bool>(true, true, true, true);
    var var_3 = Struct_2(~min(abs(reverseBits(vec3<u32>(var_1, 0u, u_input.b))), abs(reverseBits(vec3<u32>(0u, u_input.b, 96831u)))), 42865u, true);
    var var_4 = Struct_2(abs(~(var_3.a << (var_3.a % vec3<u32>(32u)))), var_3.a.x << (~46626u % 32u), var_3.c);
    return arg_0;
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: f32, arg_3: bool) -> f32 {
    let var_0 = Struct_3(Struct_2(vec3<u32>(u_input.b, 0u, countOneBits(~u_input.a)), u_input.b, true));
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    var var_1 = -2147483647i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(232f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-189f + arg_2) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1295f, -969f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(reverseBits(max(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, 25591i, global0[_wgslsmith_index_u32(u_input.b, 12u)]), firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(1u, 12u)], 0i, -1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 24185i, global0[_wgslsmith_index_u32(u_input.a, 12u)]), vec3<i32>(56787i, u_input.c, global0[_wgslsmith_index_u32(u_input.a, 12u)]))), vec3<i32>(-26691i, global0[_wgslsmith_index_u32(3225u, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)]))), ~(~_wgslsmith_sub_u32(~u_input.b, 4294967295u)));
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(-1i, var_0.a.x, 69641i)), _wgslsmith_sub_vec3_i32(var_0.a, select(vec3<i32>(0i, 0i, var_0.a.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(21614i, var_0.a.x, -2147483647i), var_0.a, var_0.a), true)), reverseBits(vec3<i32>(abs(var_0.a.x), ~56141i, global0[_wgslsmith_index_u32(0u, 12u)] >> (52564u % 32u)))), firstLeadingBit(var_0.b));
    var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1009f + _wgslsmith_f_op_f32(min(-653f, _wgslsmith_f_op_f32(-851f * -451f))))));
    let var_2 = Struct_1(-(vec3<i32>(func_2(-36145i), var_1.a.x, global0[_wgslsmith_index_u32(u_input.b & 21754u, 12u)]) << ((_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_0.b, var_0.b), vec3<u32>(var_1.b, var_1.b, u_input.b), vec3<u32>(u_input.a, 79u, 2076u)) ^ vec3<u32>(var_0.b, 19337u, 4294967295u)) % vec3<u32>(32u))), 0u);
    var_0 = func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(u_input.c, vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1501f + 202f)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1082f, -873f)), -588f, true))))));
    var var_3 = Struct_3(Struct_2(~abs(~vec3<u32>(var_1.b, u_input.a, var_2.b)), 4012u, (-1i & global0[_wgslsmith_index_u32(var_1.b, 12u)]) < ~_wgslsmith_mod_i32(61910i, var_2.a.x)));
    var_3 = Struct_3(Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(11814u, 15141u, var_1.b, var_1.b), vec4<u32>(0u, 24504u, u_input.b, var_0.b)), abs(vec4<u32>(4294967295u, var_3.a.b, var_1.b, u_input.a))), var_1.b, var_0.b), ~_wgslsmith_clamp_u32(var_3.a.b, var_3.a.b, var_2.b) << (_wgslsmith_mod_u32(~var_1.b, var_0.b | 0u) % 32u), false));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(u_input.c, func_1(630f).a.x));
}

