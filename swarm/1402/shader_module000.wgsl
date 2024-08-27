struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1121f, 2291f, -1243f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<bool>) -> vec2<u32> {
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(238f * arg_2.a)))), _wgslsmith_f_op_f32(arg_1.x * -1894f), global0.x), arg_1);
    let var_0 = Struct_2(firstTrailingBit(-(~(~vec4<i32>(1i, 8842i, -40484i, -4463i)))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(abs(0u), countOneBits(u_input.a.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), 4294967295u << (u_input.a.x % 32u), u_input.a.x), vec4<u32>((51499u | u_input.a.x) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 34070u, 85224u), vec3<u32>(1u, u_input.a.x, u_input.a.x)), 44816u, 7245u << (1u % 32u), min(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.a.x >> (0u % 32u)))), max(4317u, u_input.a.x), vec2<bool>(arg_0, !(any(vec3<bool>(false, true, false)) & all(vec4<bool>(false, arg_0, arg_0, true)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)) + arg_1.x)));
    global0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1257f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.e.a))))), global0.x)));
    var var_1 = select(true, (-var_0.a.x << (~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.a.x), u_input.a.xzw) % 32u)) >= (-var_0.a.x ^ _wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, var_0.a.x), -var_0.a.x)), true);
    let var_2 = Struct_2(-vec4<i32>(_wgslsmith_dot_vec2_i32(reverseBits(var_0.a.wz), -var_0.a.yx), abs(var_0.a.x), var_0.a.x, firstTrailingBit(countOneBits(var_0.a.x))), 1u, abs(countOneBits(var_0.c) ^ u_input.a.x), !select(arg_3, !select(vec2<bool>(arg_0, true), var_0.d, arg_0), !vec2<bool>(false, arg_3.x)), arg_2);
    return ~min(~(~(u_input.a.yz << (vec2<u32>(24249u, var_2.c) % vec2<u32>(32u)))), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.a.xxw, vec3<u32>(14320u, var_2.c, 4294967295u)), firstTrailingBit(u_input.a.x)), ~7996u));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: bool) -> vec3<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -220f)))), global0.x) * vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1672f * 112f)))), -407f));
    let var_0 = Struct_2(-vec4<i32>(~arg_2.x & (12836i & arg_2.x), min(arg_2.x, 1i), arg_2.x, ~arg_2.x), _wgslsmith_dot_vec2_u32(func_3(global0.x >= _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 2049f, global0.x)), Struct_1(-1224f), vec2<bool>(arg_3, arg_3)), (_wgslsmith_clamp_vec2_u32(u_input.a.xy, vec2<u32>(arg_0.x, u_input.a.x), u_input.a.xx) >> (vec2<u32>(u_input.a.x, arg_1.x) % vec2<u32>(32u))) << (u_input.a.yx % vec2<u32>(32u))), 71060u, vec2<bool>(!all(vec4<bool>(arg_3, arg_3, arg_3, false)), ~(-12760i) != (~arg_2.x & -arg_2.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    let var_1 = vec2<i32>(arg_2.x, _wgslsmith_dot_vec4_i32(countOneBits((vec4<i32>(var_0.a.x, 26235i, -2147483647i, -2147483647i) << (u_input.a % vec4<u32>(32u))) ^ -vec4<i32>(var_0.a.x, arg_2.x, -2147483647i, arg_2.x)), var_0.a));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.e.a, global0.x, 404f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-598f, 973f, global0.x), vec3<f32>(var_0.e.a, -767f, global0.x)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(462f, -1476f, 326f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, -1000f, 862f))), vec3<bool>(false, true, arg_3)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))), global0.x, global0.x));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(var_0.e.a, var_0.e.a)) - global0.x))), var_0.e.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1035f - var_0.e.a), _wgslsmith_f_op_f32(189f + var_0.e.a))));
    return vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0.e.a)), _wgslsmith_f_op_f32(exp2(global0.x)))), global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.a - global0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e.a), _wgslsmith_f_op_f32(-var_0.e.a)))));
}

fn func_1() -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 2071f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-783f, -339f)) * -1229f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)) * _wgslsmith_f_op_f32(step(1008f, 584f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(-895f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(u_input.a.wz, vec4<u32>(43832u, 4294967295u, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-338i, 1i, -6224i), vec3<i32>(-4766i, 2391i, 1i)), true)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -766f, 480f)) * vec3<f32>(global0.x, -1600f, -463f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, -890f, 224f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -2056f, -1851f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(320f, global0.x, global0.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 929f) - vec3<f32>(-829f, 626f, -619f))), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -532f, global0.x), vec3<f32>(global0.x, -1273f, 681f)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(global0.x, 1434f, global0.x)))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1235f, global0.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1000f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -624f), global0.x, global0.x), vec3<bool>(true, true, true)))));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(1053f - global0.x)) * vec3<f32>(-322f, _wgslsmith_f_op_f32(select(-811f, global0.x, true)), _wgslsmith_f_op_f32(global0.x * 1375f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(911f, global0.x, -465f) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, global0.x, 2174f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -2021f, _wgslsmith_f_op_f32(global0.x - global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 153f, 430f), vec3<f32>(-635f, -226f, global0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-709f, -849f, 2013f)))));
    global0 = vec3<f32>(1637f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x * 415f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + 884f), _wgslsmith_f_op_vec3_f32(func_1()).x))), 1538f), _wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(700f)) - _wgslsmith_f_op_f32(floor(global0.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, 458f, 1011f), vec3<f32>(global0.x, global0.x, -837f), vec3<bool>(false, false, true))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(global0.x, global0.x)), _wgslsmith_f_op_f32(-global0.x), 771f)), !select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), any(vec2<bool>(false, true)))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2419f, 2122f, 1387f))))))));
    let var_0 = !(!vec2<bool>(!(2154f < global0.x), true));
    let var_1 = Struct_2(vec4<i32>(1i, 1i, 1i, 1i), ~(~u_input.a.x), u_input.a.x, var_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1062f))));
    var var_2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-888f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1104f), _wgslsmith_f_op_f32(-256f * _wgslsmith_f_op_f32(var_1.e.a + global0.x)))), global0.xy);
}

