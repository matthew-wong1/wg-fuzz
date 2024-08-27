struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 21895u);

var<private> global1: array<vec2<bool>, 9>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> u32 {
    global1 = array<vec2<bool>, 9>();
    var var_0 = ~global0.b;
    var_0 = countOneBits(_wgslsmith_div_u32(0u, ~countOneBits(~1u)));
    let var_1 = select(arg_1.x, -10537i, any(!(!vec4<bool>(false, false, arg_0, arg_0))));
    var_0 = ~global0.b;
    return global0.b;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_1(true, ~global0.b);
    let var_1 = _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(f32(-1f) * -363f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(336f, -580f)))))));
    var var_2 = Struct_1(true, _wgslsmith_sub_u32(_wgslsmith_mult_u32(~18909u, ~reverseBits(u_input.b.x)), u_input.b.x));
    let var_3 = Struct_1(var_0.a, ~19075u);
    var var_4 = vec3<bool>(var_0.a, !select(false, !(-52697i >= arg_1.x), any(select(global1[_wgslsmith_index_u32(var_3.b, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(var_2.b, 9u)]))), var_2.a);
    return Struct_1(false, var_3.b);
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(true, select(0u, 0u, global0.a) >> ((arg_0.b & global0.b) % 32u));
    global1 = array<vec2<bool>, 9>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -691f));
    let var_2 = ~abs(countOneBits(_wgslsmith_mult_vec2_i32(~vec2<i32>(14753i, 1i), firstTrailingBit(vec2<i32>(0i, -2147483647i)))));
    var_1 = 396f;
    return ~(~_wgslsmith_clamp_vec4_u32((vec4<u32>(87249u, 42381u, arg_0.b, 18433u) << (vec4<u32>(42657u, 4294967295u, 1u, 4294967295u) % vec4<u32>(32u))) >> ((vec4<u32>(1u, global0.b, var_0.b, arg_0.b) << (vec4<u32>(1u, u_input.d, 1u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), (vec4<u32>(0u, global0.b, global0.b, 57964u) << (vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, var_0.b) % vec4<u32>(32u))) & countOneBits(vec4<u32>(global0.b, 75705u, arg_0.b, u_input.b.x)), firstTrailingBit(vec4<u32>(global0.b, 0u, 36301u, 87525u) & vec4<u32>(4294967295u, 96375u, var_0.b, 86705u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mod_i32(~(-13504i), select(1i, -16348i, global0.a)), 1i)) | ~0i;
    var var_1 = Struct_1(any(select(vec3<bool>(global0.a & false, all(vec2<bool>(global0.a, false)), true), !(!vec3<bool>(global0.a, global0.a, false)), select(select(vec3<bool>(global0.a, global0.a, true), vec3<bool>(true, true, false), vec3<bool>(global0.a, true, global0.a)), !vec3<bool>(false, global0.a, global0.a), select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(false, true, global0.a), vec3<bool>(global0.a, global0.a, global0.a))))), u_input.d | countOneBits(u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(-830f * _wgslsmith_f_op_f32(996f - _wgslsmith_div_f32(-332f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -123f))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * -259f)), vec2<f32>(-766f, var_2), false != ((var_1.a & true) && true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, var_2), vec2<f32>(var_2, var_2))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-908f, -1958f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1061f, var_2))))))));
    global1 = array<vec2<bool>, 9>();
    var var_4 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(abs(~vec4<u32>(4294967295u, 56861u, 10723u, global0.b)), abs(~vec4<u32>(u_input.c.x, 4294967295u, 0u, global0.b))), vec4<u32>(~var_1.b, func_1(!var_1.a, vec2<i32>(-64811i, 1i)), ~4294967295u & var_1.b, u_input.d | ~var_1.b)), min(_wgslsmith_sub_vec4_u32(func_3(func_2(vec4<f32>(-428f, 3063f, 1060f, 597f), vec3<i32>(11i, -1i, -12656i), false)), vec4<u32>(global0.b ^ 0u, _wgslsmith_clamp_u32(var_1.b, global0.b, var_1.b), 1u, ~36035u)), vec4<u32>(22097u, select(var_1.b >> (var_1.b % 32u), _wgslsmith_mod_u32(var_1.b, 0u), true), min(min(4294967295u, 0u), 18989u), ~func_3(Struct_1(global0.a, global0.b)).x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1369f), var_3.x, 1000f) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -453f), var_2), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, 1000f, var_2) + vec3<f32>(-909f, var_3.x, 300f)), vec3<f32>(-485f, -219f, -2269f)))))), -(~(abs(25947i) << (~var_4.x % 32u))), var_3.x, abs(4294967295u), _wgslsmith_add_i32(i32(-1i) * -19690i, 0i));
}

