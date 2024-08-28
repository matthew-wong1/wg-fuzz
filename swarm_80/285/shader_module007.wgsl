struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(21814u, 0u);

var<private> global1: Struct_2;

var<private> global2: Struct_3 = Struct_3(Struct_2(false), Struct_2(false));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<u32> {
    return min(_wgslsmith_mod_vec4_u32(select(~vec4<u32>(arg_2.x, global0.x, 4294967295u, global0.x), vec4<u32>(global0.x, arg_2.x, 4294967295u, arg_2.x), !vec4<bool>(arg_0, true, false, global1.a)), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(0u, 18453u, global0.x, global0.x)), vec4<u32>(4294967295u, 28825u, arg_2.x, 0u))) | ((~vec4<u32>(global0.x, global0.x, 74430u, 0u) ^ (vec4<u32>(0u, 35354u, arg_2.x, global0.x) >> (vec4<u32>(1u, arg_2.x, 4294967295u, 4294967295u) % vec4<u32>(32u)))) ^ (select(vec4<u32>(57850u, 0u, 24956u, 103328u), vec4<u32>(3048u, global0.x, 1u, global0.x), vec4<bool>(true, false, arg_0, arg_0)) | vec4<u32>(2864u, 4294967295u, global0.x, arg_2.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, ~1u, arg_2.x, 4294967295u), vec4<u32>(arg_2.x, 36008u | _wgslsmith_sub_u32(57450u, global0.x), abs(firstTrailingBit(arg_2.x)), arg_2.x)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = u_input.a.x;
    let var_1 = arg_0.b;
    global1 = global2.b;
    global0 = firstLeadingBit(arg_1);
    var var_2 = func_3(global2.a.a, Struct_3(global2.a, global2.b), ~(~arg_1), arg_0);
    return Struct_2(var_0 <= select(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-16178i, 0i) << (arg_1 % vec2<u32>(32u)), -vec2<i32>(-1i, u_input.a.x)), !select(false, global1.a, true)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_2) -> f32 {
    global1 = arg_0.a;
    let var_0 = Struct_1(arg_2.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(305f * -279f), _wgslsmith_f_op_f32(452f * -807f)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f)))))));
    let var_1 = u_input.a.x;
    let var_2 = var_0;
    var var_3 = ~vec2<i32>(max(var_1, reverseBits(~var_1)), 55054i);
    return -140f;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = vec2<bool>((u_input.a.x & firstTrailingBit(i32(-1i) * -21939i)) >= ~u_input.a.x, false);
    let var_1 = 1i;
    let var_2 = ~global0.x;
    global0 = reverseBits(~abs(vec2<u32>(21352u, 0u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, 926f) - vec3<f32>(1000f, arg_0.b.x, arg_0.b.x)))))) * vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(arg_0.a), func_2(Struct_1(false, vec2<f32>(arg_0.b.x, arg_0.b.x)), vec2<u32>(var_2, 1u))), vec2<u32>(~var_2, reverseBits(19862u)), func_2(Struct_1(global1.a, arg_0.b), func_3(global1.a, Struct_3(global2.b, Struct_2(false)), vec2<u32>(27989u, var_2), arg_0).yz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b.x)))), 817f));
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~firstLeadingBit(~vec3<u32>(global0.x, global0.x, 87636u))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(global1.a, vec2<f32>(-1749f, 1f)))), -1867f);
    var var_2 = Struct_4(Struct_3(Struct_2(true), Struct_2(global2.a.a)), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1, var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(646f, _wgslsmith_f_op_f32(f32(-1f) * -866f)) + var_1), -451f), global2.b, ~firstTrailingBit(firstTrailingBit(4607u)) >= var_0.x, Struct_1(all(select(vec4<bool>(global1.a, false, true, false), select(vec4<bool>(global2.b.a, true, true, false), vec4<bool>(true, global2.b.a, global2.b.a, true), false), true)), vec2<f32>(-676f, -1588f)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1)), var_1))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1636f, 116f))) * var_2.b.wz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_2.b.yz, vec2<f32>(var_1, 1000f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -1026f))))));
    let var_4 = ~(~vec2<u32>(global0.x, ~0u));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.zx, min(17334u, 0u), -297f);
}

