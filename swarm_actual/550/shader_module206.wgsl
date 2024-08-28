struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(1i, 44935i, 40113i, 21573i), vec4<i32>(25240i, -38283i, -22073i, 58690i), vec4<i32>(58236i, 0i, -1i, -31761i), vec4<i32>(2147483647i, -24084i, 2147483647i, 7268i), vec4<i32>(16100i, -46843i, 0i, 2147483647i), vec4<i32>(-1i, 1i, 0i, 2147483647i), vec4<i32>(-1i, -42602i, 34001i, 2147483647i), vec4<i32>(2173i, 1505i, -53478i, 8215i), vec4<i32>(104540i, 0i, 0i, 27294i), vec4<i32>(0i, i32(-2147483648), 1i, 2147483647i), vec4<i32>(1i, 2147483647i, 64410i, 0i), vec4<i32>(2705i, -5391i, 0i, 29792i), vec4<i32>(-23299i, 0i, -50954i, 21979i), vec4<i32>(55458i, 1i, 2495i, 636i), vec4<i32>(-1i, 6561i, 1846i, 28521i), vec4<i32>(-1i, 2147483647i, -1i, 60450i), vec4<i32>(-11307i, 0i, i32(-2147483648), 1i), vec4<i32>(13904i, -77656i, -8960i, 0i), vec4<i32>(-1646i, -1i, -28222i, 13500i), vec4<i32>(-19894i, 0i, -1i, 1i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: vec4<u32>) -> f32 {
    global0 = array<vec4<i32>, 20>();
    let var_0 = vec4<f32>(1000f, arg_0, arg_1.b.a, arg_1.b.a);
    global0 = array<vec4<i32>, 20>();
    var var_1 = vec4<i32>(-select(max(2147483647i, arg_1.c.x) & firstTrailingBit(arg_1.c.x), min(~(-2147483647i), 1i), false | all(vec2<bool>(true, arg_1.b.b.a))), reverseBits(-1i), 23200i, arg_1.d.x);
    var var_2 = ~11823u;
    return _wgslsmith_f_op_f32(arg_1.b.a - _wgslsmith_f_op_f32(-arg_1.b.a));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>) -> i32 {
    var var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(615f + 720f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(arg_0.x * 960f), Struct_4(u_input.b, Struct_2(arg_0.x, Struct_1(false, true), 52254u), vec4<i32>(2147483647i, 416i, 17487i, 0i), vec2<i32>(-1i, -10226i)), vec3<u32>(u_input.b, 31434u, u_input.b) & vec3<u32>(u_input.a, 4294967295u, u_input.b), ~vec4<u32>(u_input.a, u_input.b, 4294967295u, 8794u))), all(arg_1))), arg_0.x), Struct_1(all(vec2<bool>(true, true)), !arg_1.x), _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, select(u_input.b, reverseBits(1u), false)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(7485u, u_input.a, 71429u, u_input.a), vec4<u32>(0u, 0u, 2609u, 0u))));
    var var_1 = all(arg_1);
    var var_2 = Struct_1(!(!(0u >= u_input.b)) && var_0.b.a, arg_1.x);
    let var_3 = Struct_1(false, -659f == arg_0.x);
    var_1 = !var_3.a;
    return firstTrailingBit(_wgslsmith_dot_vec4_i32(-firstTrailingBit(-global0[_wgslsmith_index_u32(u_input.a, 20u)]), -abs(-vec4<i32>(-2147483647i, -8684i, -1i, 2147483647i))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>) -> bool {
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-230f, -294f, 2665f, 212f) + vec4<f32>(-1506f, -978f, -1000f, 1102f)), !vec4<bool>(false, arg_1.x, arg_0.x, true)) << (u_input.b % 32u), 1i), -17259i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(20119i, 2147483647i ^ firstTrailingBit(1i)), ~16439i), ~(~(-23755i)));
    global0 = array<vec4<i32>, 20>();
    let var_1 = var_0.x;
    var_0 = _wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(u_input.a, 20u)] | vec4<i32>(var_0.x, 1i, 2147483647i, var_0.x), -abs(_wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(u_input.b, 20u)], min(global0[_wgslsmith_index_u32(20696u, 20u)], vec4<i32>(1i, var_0.x, -1i, var_0.x)), countOneBits(global0[_wgslsmith_index_u32(70101u, 20u)]))), firstTrailingBit(_wgslsmith_mult_vec4_i32(-(vec4<i32>(var_0.x, var_0.x, 2147483647i, var_0.x) ^ vec4<i32>(var_0.x, -29692i, 0i, var_0.x)), vec4<i32>(var_0.x, -6363i, ~(-51260i), ~var_0.x))));
    global0 = array<vec4<i32>, 20>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 20>();
    var var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1382f, 356f)) - _wgslsmith_f_op_f32(max(-942f, 247f))), _wgslsmith_f_op_f32(round(-855f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -118f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2254f - -1000f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1149f * 1000f)) >= _wgslsmith_f_op_f32(-1059f - _wgslsmith_f_op_f32(ceil(-1384f))), (true | func_1(vec2<bool>(true, true), vec3<bool>(false, false, true))) || (true | any(vec2<bool>(false, true)))), ~u_input.a);
    let var_1 = Struct_2(1878f, Struct_1(!(!all(vec2<bool>(var_0.b.b, true))), var_0.b.b), select(firstLeadingBit(65113u), ~3284u, var_0.b.b));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -614f)), var_1.a);
    let var_3 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstLeadingBit(~var_1.c)));
}

