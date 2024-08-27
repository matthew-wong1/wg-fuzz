struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(4294967295u, 0u, 0u, 1748u, 78089u, 8553u, 0u, 101011u, 1u, 65167u, 46092u, 4294967295u, 4294967295u, 10535u, 4294967295u, 4294967295u, 1087u, 4294967295u, 34815u, 0u, 29304u, 4294967295u, 0u, 46419u, 1u, 4294967295u, 4294967295u, 12463u, 38804u, 1u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> i32 {
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    var var_0 = 29516i;
    let var_1 = -(~(i32(-1i) * -(~arg_1)));
    let var_2 = -1161f;
    return -(~(-25151i));
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(808f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-338f, arg_0.a))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1917f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(203f + arg_0.a))))), _wgslsmith_f_op_f32(abs(-955f)), -898f);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-247f - var_0.x)) + -452f)))));
    var var_2 = Struct_1(vec2<u32>(firstLeadingBit(71414u), 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0))), firstTrailingBit(abs(u_input.a.x | (3179u >> (0u % 32u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2701f)) - 1757f))));
    return _wgslsmith_f_op_f32(1607f + 1046f);
}

fn func_2() -> Struct_1 {
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    let var_0 = ~firstLeadingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 59310u, global0[_wgslsmith_index_u32(28672u, 30u)]), ~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 22790u)));
    var var_1 = 65881u;
    global0 = array<u32, 30>();
    return Struct_1(firstLeadingBit(var_0.xy), vec4<f32>(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(963f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(1000f), u_input.b)) - -1000f)), -1015f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(122f), u_input.b))))), global0[_wgslsmith_index_u32(84493u, 30u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<u32>(~(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31394u, 30u)], 30u)], 30u)], 30u)]) | u_input.a.x), u_input.a.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(282f, -1000f, 1407f, 338f))))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1675f, 936f), _wgslsmith_f_op_f32(f32(-1f) * -1759f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1003f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1071f) - _wgslsmith_f_op_f32(max(-415f, -1195f))), 1f), true)), global0[_wgslsmith_index_u32(~4294967295u, 30u)], _wgslsmith_f_op_f32(step(926f, _wgslsmith_f_op_f32(-675f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(120f)) - _wgslsmith_f_op_f32(select(1563f, -943f, false)))))));
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    let var_1 = ~0u;
    let var_2 = vec2<i32>(-u_input.b, ~(-func_1(var_0, u_input.b, u_input.b))) & ~vec2<i32>(0i, u_input.b);
    var var_3 = Struct_3(Struct_2(func_2(), reverseBits(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, 1i, 2147483647i, -1i), vec4<i32>(var_2.x, var_2.x, u_input.b, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -43664i, u_input.b, 1i), vec4<i32>(12091i, var_2.x, 0i, var_2.x), vec4<i32>(-2147483647i, u_input.b, var_2.x, -1i)))), var_0, !(true | any(vec2<bool>(false, true)))), false, var_0.b.yx, Struct_1(vec2<u32>(~var_0.c, _wgslsmith_mod_u32(0u, var_0.c)) << (~countOneBits(vec2<u32>(0u, 8334u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(var_0.b + vec4<f32>(_wgslsmith_f_op_f32(var_0.d * var_0.d), _wgslsmith_f_op_f32(var_0.d + -299f), var_0.d, -1850f)), 28361u, var_0.d));
    let var_4 = ~var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(25323u, var_1, var_0.a.x, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 30u)], 38544u, 0u, 1u)))), min(vec4<u32>(23793u, var_1, select(1u >> (u_input.a.x % 32u), u_input.a.x << (global0[_wgslsmith_index_u32(32814u, 30u)] % 32u), false), ~1u), min(abs(vec4<u32>(3439u, global0[_wgslsmith_index_u32(40563u, 30u)], var_3.a.a.c, var_0.a.x)) | ~vec4<u32>(1u, 82839u, global0[_wgslsmith_index_u32(1u, 30u)], var_0.c), ~vec4<u32>(1u, 15908u, 32787u, var_0.a.x) | (vec4<u32>(var_3.d.a.x, var_3.d.c, var_3.a.c.c, var_1) >> (vec4<u32>(var_3.a.a.a.x, 0u, var_3.d.c, var_0.a.x) % vec4<u32>(32u))))), -411f);
}

