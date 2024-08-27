struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(20107i, 2147483647i);

var<private> global1: f32;

var<private> global2: array<i32, 32> = array<i32, 32>(-19772i, 2147483647i, 18968i, 3049i, -34131i, 38771i, 38412i, -71837i, 5584i, 45753i, -21476i, 2147483647i, -27469i, 17282i, -1i, -1i, 1i, 0i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 2147483647i, -1i, -1i, 3606i, 2147483647i, 19384i, 8771i, 35672i, -11999i, i32(-2147483648), 21370i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_2 {
    global2 = array<i32, 32>();
    let var_0 = all(vec4<bool>(true & (arg_0.a.x < 368f), true, true, false)) & (!(-15411i <= -global2[_wgslsmith_index_u32(0u, 32u)]) && (!(arg_0.a.x != arg_0.a.x) & all(vec2<bool>(true, true))));
    var var_1 = countOneBits(vec4<i32>(~(-_wgslsmith_clamp_i32(-6856i, -1i, global2[_wgslsmith_index_u32(arg_0.b, 32u)])), -global0.b, u_input.a.x, 2147483647i));
    var var_2 = Struct_1(-(~u_input.b), -1i);
    var var_3 = arg_0;
    return arg_0;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1051f, 1125f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(164f, 132f)))), 9139u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(571f))))), var_0.a.x, true)));
    global1 = func_2(var_0, select(select(~vec2<u32>(51162u, 42255u), max(vec2<u32>(4294967295u, var_0.b), vec2<u32>(0u, var_0.b)), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), vec2<u32>(0u, ~0u), vec2<bool>(global2[_wgslsmith_index_u32(1u, 32u)] >= arg_3.b, true)) | vec2<u32>(~arg_0 & (arg_0 & 4294967295u), 33254u)).a.x;
    var var_2 = ~func_2(var_0, ~vec2<u32>(0u, _wgslsmith_mod_u32(var_0.b, 87365u))).b;
    let var_3 = func_2(func_2(Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.x, 1000f), var_0.a)), ~select(arg_0, 35936u, true)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_0.b), vec2<u32>(0u | arg_0, 1u))), vec2<u32>(abs(~45460u), arg_0));
    return 0u;
}

fn func_1(arg_0: u32) -> u32 {
    global1 = -773f;
    global2 = array<i32, 32>();
    var var_0 = func_2(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-625f, -1586f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(479f, 559f)))), arg_0), vec2<u32>(max(26406u, 38859u), 80457u));
    var var_1 = func_2(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 1091f)), var_0.a) * vec2<f32>(968f, -1311f)), _wgslsmith_mod_u32(arg_0, 19949u)), abs(vec2<u32>(func_3(~var_0.b, Struct_1(global2[_wgslsmith_index_u32(arg_0, 32u)], 2147483647i), 0i, Struct_1(global0.b, global0.b)), firstLeadingBit(var_0.b))));
    global1 = var_0.a.x;
    return ~(max(_wgslsmith_dot_vec4_u32(vec4<u32>(28446u, 33319u, arg_0, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.b, arg_0, var_0.b, var_1.b), vec4<u32>(4294967295u, var_1.b, 4294967295u, var_0.b))), 1u) << (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1338f * -1660f), 273f, _wgslsmith_f_op_f32(ceil(213f))), vec3<f32>(276f, _wgslsmith_f_op_f32(sign(-101f)), _wgslsmith_f_op_f32(f32(-1f) * -1073f)))));
    var var_1 = abs(~vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(42609u, 19427u), _wgslsmith_div_u32(1u, 9415u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 7888u, 4294967295u), vec3<u32>(2666u, 84816u, 30711u)), 67585u ^ func_1(1u)));
    global1 = -2364f;
    var_1 = _wgslsmith_add_vec3_u32(firstTrailingBit(~(~countOneBits(vec3<u32>(0u, var_1.x, 4294967295u)))), ~(~vec3<u32>(~var_1.x, var_1.x, ~var_1.x)));
    var var_2 = select(false, select(false, true, !select(true, false, all(vec4<bool>(false, false, false, true)))), true);
    var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 29336u, firstLeadingBit(1u)), abs(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(4294967295u, var_1.x, var_1.x) << (vec3<u32>(44618u, 0u, 1u) % vec3<u32>(32u))), vec3<u32>(1u ^ var_1.x, 7659u, select(0u, 20629u, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))))));
}

