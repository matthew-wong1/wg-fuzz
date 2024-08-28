struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(true, true, false, true, false, false, true, true, true, false);

var<private> global1: Struct_1 = Struct_1(1871f, vec2<bool>(true, true));

var<private> global2: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3.b.x;
    let var_1 = vec3<bool>(false, false, global1.a <= arg_0.x);
    let var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.a), arg_0.x), _wgslsmith_f_op_f32(1000f + -1119f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.a + arg_0.x))), arg_3.a, !all(vec4<bool>(var_0, true, arg_3.b.x, global1.b.x)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(147f + 1284f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)))))));
    let var_3 = 1470f;
    var var_4 = ~0i;
    return arg_3;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: bool, arg_3: vec4<u32>) -> i32 {
    global2 = abs(0u);
    global1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(638f, 277f, global1.a), vec3<f32>(global1.a, global1.a, global1.a))) + _wgslsmith_div_vec3_f32(vec3<f32>(global1.a, -980f, global1.a), vec3<f32>(global1.a, global1.a, global1.a)))))), u_input.a, max(firstLeadingBit(1u), ~(~1u)), func_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1997f, -445f, -503f), vec3<f32>(552f, global1.a, global1.a), vec3<bool>(global1.b.x, arg_1.x, true))) - _wgslsmith_div_vec3_f32(vec3<f32>(global1.a, -147f, -727f), vec3<f32>(global1.a, global1.a, global1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, global1.a))))), abs(firstLeadingBit(u_input.a)), ~u_input.c, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, global1.a, -944f) - vec3<f32>(global1.a, global1.a, -249f))), -_wgslsmith_mult_i32(47460i, u_input.a), arg_3.x, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(599f, global1.a, global1.a)), 1i, arg_3.x, func_1(vec3<f32>(-1193f, -1771f, 586f), -1i, arg_3.x, Struct_1(global1.a, vec2<bool>(arg_2, arg_0.x)))))));
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(980f, 795f, global1.a)))), _wgslsmith_mult_i32(~abs(u_input.a ^ u_input.a), _wgslsmith_mod_i32(40658i ^ select(33970i, 0i, true), u_input.a)), countOneBits(~1u), Struct_1(global1.a, arg_0.yy));
    let var_1 = var_0;
    let var_2 = ~_wgslsmith_mult_u32(0u, arg_3.x) | _wgslsmith_div_u32(min(u_input.b.x, u_input.b.x), u_input.b.x);
    return u_input.a;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    global1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(205f, 349f, arg_0) - vec3<f32>(846f, arg_0, -897f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1474f, arg_2.a, -1241f)))))))), max(~func_3(vec4<bool>(false, false, arg_2.b.x, global1.b.x), vec4<bool>(global1.b.x, true, arg_2.b.x, true), global1.b.x, vec4<u32>(4294967295u, u_input.c, 73776u, u_input.b.x) ^ vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.c)), arg_1.x), 11230u, func_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-550f, arg_0, arg_2.a), vec3<f32>(-1037f, arg_0, global1.a))) * vec3<f32>(arg_2.a, arg_0, -314f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1245f, -1080f, 355f))))), arg_1.x << (u_input.c % 32u), firstLeadingBit(abs(~7959u)), arg_2));
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-161f, 933f, -126f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 369f, global1.a) * vec3<f32>(-1134f, 489f, global1.a))))))), -1i, firstLeadingBit(select(_wgslsmith_mod_u32(4294967295u, ~61889u), ~u_input.b.x, !arg_2.b.x)), arg_2);
    let var_1 = arg_2;
    global2 = 0u;
    let var_2 = abs(select(u_input.b, ~_wgslsmith_sub_vec2_u32(~u_input.b, ~u_input.b), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, global1.a, -1243f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a, -1224f, 755f), vec3<f32>(514f, -167f, var_1.a)))), ~(-2147483647i), abs(u_input.b.x), arg_2).b.x));
    return 125493u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = countOneBits(vec3<u32>(39169u, _wgslsmith_dot_vec2_u32(select(u_input.b, vec2<u32>(4294967295u, 4294967295u) | u_input.b, false & global0[_wgslsmith_index_u32(var_0, 10u)]), u_input.b), 134121u));
    var var_2 = firstTrailingBit(~abs(vec4<u32>(u_input.b.x & 38473u, var_1.x, u_input.c, ~31586u)));
    global2 = 51108u;
    var var_3 = select(!select(!vec3<bool>(false, global1.b.x, true), vec3<bool>(false, 4294967295u <= var_2.x, any(global1.b)), !global0[_wgslsmith_index_u32(4294967295u, 10u)] & (true & global0[_wgslsmith_index_u32(31158u, 10u)])), !vec3<bool>(false, global0[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_f32(min(176f, global1.a)), vec3<i32>(-1i, u_input.a, 17106i), func_1(vec3<f32>(1674f, global1.a, global1.a), u_input.a, 4294967295u, Struct_1(276f, global1.b))), 10u)], true), !((i32(-1i) * -u_input.a) >= u_input.a));
    let var_4 = u_input.a;
    var var_5 = ~(~u_input.b);
    var var_6 = countOneBits(max(var_2.zxy, var_1));
    let x = u_input.a;
    s_output = StorageBuffer(min(~var_1, ~firstTrailingBit(vec3<u32>(1u, var_1.x, 0u))), _wgslsmith_mult_vec3_u32(var_2.zzx, vec3<u32>(var_6.x, abs(var_5.x), abs(abs(var_1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-global1.a), 1429f, _wgslsmith_f_op_f32(trunc(1142f)))))));
}

