struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21>;

var<private> global1: array<Struct_2, 14>;

var<private> global2: array<i32, 2> = array<i32, 2>(2147483647i, 0i);

var<private> global3: array<Struct_1, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<f32>) -> f32 {
    global0 = array<vec4<bool>, 21>();
    let var_0 = global3[_wgslsmith_index_u32(arg_0, 12u)];
    var var_1 = !vec2<bool>(any(vec4<bool>(true, true, any(vec2<bool>(true, false)), true)), false);
    var_1 = !select(vec2<bool>(true, false), select(!select(vec2<bool>(true, true), vec2<bool>(true, var_1.x), vec2<bool>(false, var_1.x)), select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, var_1.x), vec2<bool>(false, var_1.x)), !vec2<bool>(var_1.x, false), !vec2<bool>(false, var_1.x)), true), all(!(!vec2<bool>(var_1.x, false))));
    let var_2 = -1289f;
    return arg_2.x;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> u32 {
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~arg_0.d.xx, arg_1.xx), 12u)], arg_0.e, -arg_0.c, vec3<u32>(arg_1.x, min(39898u, (arg_0.d.x ^ arg_1.x) & firstLeadingBit(arg_0.d.x)), select(select(max(u_input.b, u_input.d.x), _wgslsmith_clamp_u32(arg_0.d.x, arg_1.x, arg_1.x), any(vec2<bool>(false, false))), arg_0.d.x, all(vec3<bool>(true, true, true)))), Struct_1(arg_0.a.a, reverseBits(-10373i | -arg_0.c.x)));
    global3 = array<Struct_1, 12>();
    var var_1 = Struct_3(890f, select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), true), vec3<bool>(all(vec4<bool>(false, false, false, true)), false, false), vec3<bool>(true, true, true)), 1u);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -527f);
    var var_3 = !var_1.b.xx;
    return reverseBits(var_1.c);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(arg_0, func_3(global1[_wgslsmith_index_u32(1u, 14u)], vec4<u32>(25335u, 1u, 0u, u_input.d.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-546f, -616f, -143f), vec3<f32>(-332f, -1498f, -806f), vec3<bool>(true, false, true))))))))));
    var var_1 = global3[_wgslsmith_index_u32(arg_0, 12u)];
    let var_2 = Struct_1(vec2<f32>(var_1.a.x, -2900f), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(100727u, arg_0), 2u)]);
    var_0 = -2366f;
    var var_3 = ~arg_0;
    return Struct_1(_wgslsmith_f_op_vec2_f32(ceil(var_1.a)), u_input.a.x);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global1 = array<Struct_2, 14>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-247f)))) + _wgslsmith_f_op_f32(arg_0.b.a.x * -1000f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a.a.x), -562f, true)))))));
    var var_1 = arg_0.b.a.x;
    let var_2 = firstLeadingBit(_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(14855u, u_input.d.x, 0u, 4294967295u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(arg_0.d.x), _wgslsmith_mod_u32(12680u, arg_0.d.x), arg_0.d.x, 4294967295u), ~vec4<u32>(62247u, 0u, 3755u, 4294967295u), select(vec4<u32>(0u, 39106u, 75357u, 4294967295u) & vec4<u32>(arg_0.d.x, 4294967295u, 4294967295u, arg_0.d.x), ~vec4<u32>(arg_0.d.x, u_input.b, 76680u, arg_0.d.x), true))));
    global2 = array<i32, 2>();
    return Struct_2(func_2(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~var_2, _wgslsmith_clamp_u32(arg_0.d.x, arg_0.d.x, var_2)), 61579u)), global3[_wgslsmith_index_u32(~(arg_0.d.x | _wgslsmith_add_u32(1u, var_2 & 9020u)), 12u)], ~arg_0.c, ~max(select(arg_0.d, vec3<u32>(1u, 48161u, 23244u), true) ^ abs(u_input.d), min(vec3<u32>(27821u, arg_0.d.x, arg_0.d.x), arg_0.d) & u_input.d), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(1782f, -1000f)), -839f), global2[_wgslsmith_index_u32(1u, 2u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -247f;
    var var_1 = global1[_wgslsmith_index_u32(countOneBits(~(~0u)), 14u)];
    var var_2 = -1070f;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(244f, 269f)), ~(-_wgslsmith_div_i32(-2147483647i, -1i) ^ countOneBits(global2[_wgslsmith_index_u32(~30850u, 2u)])));
    var var_4 = 2147483647i;
    let var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.e.a.x + var_0))), -463f), 1f, _wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1096f)) - _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_u32(u_input.b, 2884u), select(1u, 14311u, true), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(404f, -1750f, var_3.a.x))))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1283f, -1250f, -749f)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(811f, var_0, var_3.a.x, var_0))))), vec4<f32>(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(f32(-1f) * -652f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x + -257f)), 614f, -771f), any(vec3<bool>(true, true, true)))));
    var_1 = func_4(Struct_2(func_2(~_wgslsmith_div_u32(32536u, var_1.d.x)), var_1.b, -max(vec3<i32>(0i, 2147483647i, -1i), _wgslsmith_div_vec3_i32(var_1.c, vec3<i32>(global2[_wgslsmith_index_u32(69185u, 2u)], var_1.a.b, global2[_wgslsmith_index_u32(4294967295u, 2u)]))), var_1.d, global3[_wgslsmith_index_u32(4221u, 12u)]));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.x) + var_5.x);
    var_1 = global1[_wgslsmith_index_u32(u_input.d.x, 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, var_1.e.b);
}

