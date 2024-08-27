struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: array<u32, 26>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = Struct_1(!select(vec2<bool>(true, -3244i >= arg_0.x), arg_1.a, arg_1.b), arg_2.b);
    global1 = array<u32, 26>();
    var var_1 = -914f;
    var var_2 = ~1i;
    let var_3 = ~global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, ~max(global0[_wgslsmith_index_u32(countOneBits(0u), 23u)], u_input.a), ~4294967295u), 26u)], 23u)];
    return arg_2.b.x;
}

fn func_2() -> Struct_1 {
    global1 = array<u32, 26>();
    let var_0 = Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(select(false, false, false), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), false), true), vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), true)), !(!vec2<bool>(true, func_3(vec4<i32>(2147483647i, 39030i, 40642i, -13732i), Struct_1(vec2<bool>(true, true), vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false), vec2<bool>(true, false))))));
    global1 = array<u32, 26>();
    global1 = array<u32, 26>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2091f)));
    return var_0;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> bool {
    let var_0 = Struct_1(vec2<bool>(func_3(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -10034i, -1i, -23960i), vec4<i32>(-2147483647i, -2147483647i, -15775i, 69413i))), Struct_1(arg_0.yx, arg_0.xz), func_2()), true), vec2<bool>(true, true));
    let var_1 = func_2();
    let var_2 = abs(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(countOneBits(global1[_wgslsmith_index_u32(arg_3.x, 26u)]), 1u), u_input.a), _wgslsmith_div_u32(~u_input.a, u_input.a | global0[_wgslsmith_index_u32(26088u, 23u)])));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(round(arg_1.x)))))) * arg_1);
    var var_4 = func_2();
    return false;
}

fn func_1() -> Struct_1 {
    global1 = array<u32, 26>();
    let var_0 = vec4<f32>(2628f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -291f))), 1060f, _wgslsmith_f_op_f32(min(794f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(702f - -449f)))))));
    global0 = array<u32, 23>();
    global1 = array<u32, 26>();
    global1 = array<u32, 26>();
    return Struct_1(vec2<bool>(true, true), select(!vec2<bool>(true, any(vec2<bool>(false, false))), vec2<bool>(true, true), func_4(vec3<bool>(all(vec2<bool>(true, false)), true, all(vec4<bool>(false, true, true, true))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), var_0.wx), func_2(), firstTrailingBit(vec2<u32>(0u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 26u)], 23u)]) << (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 26u)], 0u) % vec2<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = var_0.b.x;
    var var_2 = Struct_1(!(!(!vec2<bool>(var_0.b.x, var_0.b.x))), !var_0.a);
    var_0 = Struct_1(var_2.b, func_1().b);
    let var_3 = vec3<bool>(true, true, true);
    var var_4 = countOneBits(_wgslsmith_mult_vec3_u32(select(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], global1[_wgslsmith_index_u32(29907u, 26u)]), vec3<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 26u)], 23u)]), var_3), select(vec3<u32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 23u)], u_input.a, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 23u)]) | vec3<u32>(27065u, u_input.a, 38636u), ~vec3<u32>(34472u, global1[_wgslsmith_index_u32(1u, 26u)], 62674u), true)) >> (_wgslsmith_mult_vec3_u32(select(countOneBits(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 26u)], global1[_wgslsmith_index_u32(39430u, 26u)], 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(u_input.a, 0u, 4294967295u)), !var_2.b.x), firstLeadingBit(select(vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 23u)], 26u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 26u)], 16270u), vec3<bool>(true, false, true)))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, ~4294967295u, 1i, var_4.zy);
}

