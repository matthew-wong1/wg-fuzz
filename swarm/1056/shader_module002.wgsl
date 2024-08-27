struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<bool>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: Struct_2,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<bool>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-924f, 187f, -1110f, -288f), vec4<f32>(502f, 136f, -427f, 128f))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(426f, -1144f, -321f, 276f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-416f, 1000f, 1344f, 213f) + vec4<f32>(127f, -666f, 1003f, 647f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1066f, 1671f, 1117f, -316f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-571f, -2602f, -1038f, -1000f) - vec4<f32>(-433f, 1842f, 1969f, -386f)))))));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-746f, arg_3.e.x, arg_2.x, arg_3.e.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -537f, 1000f, arg_2.x) * vec4<f32>(arg_3.e.x, arg_2.x, arg_3.e.x, arg_2.x)))) * _wgslsmith_f_op_vec4_f32(func_2(!select(arg_1, arg_1, vec4<bool>(arg_3.d.c.x, arg_3.d.c.x, arg_3.d.c.x, arg_3.d.c.x))))));
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    var_0 = vec4<f32>(-1192f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -186f)), var_0.x, var_0.x);
    var var_1 = arg_3.d.e.x;
    return min(_wgslsmith_mod_u32(arg_3.c, ~_wgslsmith_div_u32(43938u, 4294967295u)) & ~u_input.b, ~(~arg_3.d.b));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_4) -> bool {
    var var_0 = _wgslsmith_clamp_u32(57263u, abs(1u), 51433u);
    var_0 = arg_2.d.e.x;
    let var_1 = ~reverseBits(_wgslsmith_mod_u32(arg_2.a.x, 0u | u_input.b));
    global0 = array<Struct_2, 26>();
    let var_2 = !any(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, arg_2.d.c.x, true, true), vec4<bool>(false, arg_2.b.c.x, false, true)), select(vec4<bool>(arg_2.b.c.x, true, arg_1.x, arg_3.a), vec4<bool>(arg_3.a, true, true, false), false), !arg_2.b.c.x));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(!all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true)), -1i);
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    var var_1 = Struct_2(reverseBits(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(u_input.b, u_input.b, 41937u, 4294967295u)), vec4<u32>(u_input.b, func_1(Struct_4(var_0.a, -21409i), vec4<bool>(true, true, var_0.a, var_0.a), vec2<f32>(-656f, 964f), Struct_2(vec4<u32>(u_input.b, 2108u, 4294967295u, 24483u), Struct_1(4294967295u, u_input.b, vec2<bool>(true, false), vec3<i32>(var_0.b, 70955i, u_input.d), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), 1u, Struct_1(u_input.b, 1u, vec2<bool>(true, true), vec3<i32>(u_input.c, var_0.b, 12187i), vec4<u32>(4294967295u, 9816u, u_input.b, u_input.b)), vec2<f32>(1322f, 1074f))), 1u, ~u_input.b), select(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 17664u, u_input.b, u_input.b), !vec4<bool>(true, true, var_0.a, false)))), Struct_1(u_input.b, ~u_input.b, select(vec2<bool>(func_3(vec3<i32>(27592i, -1i, -2147483647i), vec3<bool>(false, var_0.a, var_0.a), global0[_wgslsmith_index_u32(14318u, 26u)], Struct_4(var_0.a, u_input.d)), var_0.a), vec2<bool>(52981i <= var_0.b, select(var_0.a, var_0.a, var_0.a)), var_0.a), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(7094i, var_0.b, -21940i)), reverseBits(vec3<i32>(u_input.d, -1i, u_input.c))), countOneBits(abs(vec4<u32>(4294967295u, u_input.b, u_input.b, 0u)))), ~3636u, Struct_1(_wgslsmith_mod_u32(1u, u_input.b), ~u_input.b, vec2<bool>(var_0.a, (var_0.a || false) & func_3(vec3<i32>(var_0.b, 2147483647i, u_input.a), vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(20819u, 26u)], Struct_4(false, u_input.c))), vec3<i32>(-select(u_input.c, var_0.b, false), 1i, ~21954i), (vec4<u32>(u_input.b, 0u, u_input.b, 0u) & min(vec4<u32>(4294967295u, 0u, 56121u, 0u), vec4<u32>(1u, u_input.b, u_input.b, 0u))) << (~vec4<u32>(83504u, 0u, 48566u, 1u) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-170f, 156f) + vec2<f32>(1f, 1f)));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-254f)), _wgslsmith_f_op_f32(-var_1.e.x)));
    global0 = array<Struct_2, 26>();
    var var_3 = !(select(true, true, true) && func_3(max(vec3<i32>(-2147483647i, u_input.a, 60151i), vec3<i32>(-2147483647i, 8197i, var_0.b)), vec3<bool>(var_0.a, var_1.d.c.x, false), Struct_2(vec4<u32>(u_input.b, u_input.b, var_1.d.b, var_1.d.a), var_1.b, 0u, var_1.b, var_1.e), Struct_4(var_1.d.c.x, 1i))) | (var_1.e.x >= -545f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.d & vec3<i32>(var_0.b >> (_wgslsmith_add_u32(0u, var_1.a.x) % 32u), -(~var_1.b.d.x), ~var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(!select(vec4<bool>(var_0.a, true, var_0.a, var_0.a), vec4<bool>(var_0.a, false, var_0.a, var_1.b.c.x), vec4<bool>(false, var_0.a, var_1.b.c.x, false)))).x - var_1.e.x), ~countOneBits(var_1.a.wy));
}

