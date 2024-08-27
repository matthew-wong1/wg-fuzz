struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: vec4<i32> = vec4<i32>(902i, -22582i, -12420i, 48283i);

var<private> global2: f32 = -347f;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<f32>(407f, 511f), vec4<bool>(true, false, false, false), vec3<bool>(false, false, false), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<f32>(1161f, -1071f), vec4<bool>(true, true, false, false), vec3<bool>(false, true, false), vec2<u32>(100008u, 23923u)), Struct_1(vec2<f32>(-1815f, 728f), vec4<bool>(true, false, true, true), vec3<bool>(true, false, false), vec2<u32>(1u, 4294967295u)), Struct_1(vec2<f32>(680f, 934f), vec4<bool>(false, false, false, true), vec3<bool>(false, true, false), vec2<u32>(79625u, 4792u)), Struct_1(vec2<f32>(-214f, -1000f), vec4<bool>(true, false, false, true), vec3<bool>(false, false, true), vec2<u32>(1u, 23781u)));

var<private> global4: array<f32, 5> = array<f32, 5>(1000f, -467f, -1138f, 404f, 843f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<i32>) -> bool {
    global3 = array<Struct_1, 5>();
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(-1108f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(547f)), 772f))), vec4<bool>((select(true, true, false) && true) | !any(vec2<bool>(false, false)), true, true, !(0u <= arg_1.x) != (_wgslsmith_f_op_f32(f32(-1f) * -402f) > _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(33779u, 5u)])))), vec3<bool>(all(vec4<bool>(false, true, true, true)), all(vec4<bool>(all(vec2<bool>(false, false)), true, any(vec4<bool>(false, true, true, true)), false)), global4[_wgslsmith_index_u32(countOneBits(1u), 5u)] > 864f), vec2<u32>(4294967295u, 4294967295u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, var_0.d.x, 56355u), ~vec3<u32>(4294967295u, 1u, 55698u)), 8u)], _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(7067u, 5u)]))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_1, var_0.a.x) * vec3<f32>(-463f, var_0.a.x, var_1)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0[_wgslsmith_index_u32(31682u, 8u)], global4[_wgslsmith_index_u32(u_input.b.x, 5u)], -261f))), vec3<f32>(var_1, 758f, -1596f), var_0.b.wxw))))) + vec3<f32>(-826f, _wgslsmith_f_op_f32(sign(var_1)), -968f));
    global2 = var_1;
    return any(select(!select(var_0.c.yy, var_0.c.zz, false), select(select(var_0.b.yy, select(var_0.b.wx, var_0.b.xw, false), vec2<bool>(var_0.c.x, var_0.b.x)), vec2<bool>(false, all(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x))), var_0.b.wy), true));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2.a;
    global2 = arg_2.a.x;
    var var_1 = global3[_wgslsmith_index_u32(~firstLeadingBit(arg_2.d.x), 5u)];
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1491f, -1160f))), arg_2.a.x), vec4<bool>(true, arg_2.b.x, var_1.c.x, all(vec4<bool>(true, var_1.c.x, func_3(arg_0, vec4<u32>(u_input.b.x, var_1.d.x, 2525u, 0u), vec3<i32>(-1i, 2147483647i, arg_0)), !var_1.c.x))), vec3<bool>((false && var_1.c.x) || !(arg_0 == global1.x), (reverseBits(0u) > _wgslsmith_mod_u32(arg_2.d.x, arg_2.d.x)) | !all(vec4<bool>(false, false, var_1.c.x, var_1.b.x)), all(select(arg_2.b.yw, arg_2.b.xy, vec2<bool>(false, true)))), vec2<u32>(arg_2.d.x >> (0u % 32u), ~(~49274u)));
}

fn func_1(arg_0: f32, arg_1: u32) -> bool {
    var var_0 = func_2(~1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1033f))), global3[_wgslsmith_index_u32(0u, 5u)]);
    global2 = 313f;
    global4 = array<f32, 5>();
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.d.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(39882u, select(_wgslsmith_sub_u32(var_0.d.x, 32183u), 1u, var_0.b.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, arg_1), vec4<u32>(arg_1, 4294967295u, 4294967295u, var_0.d.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 49116u, arg_1, 1u), vec4<u32>(76734u, 79844u, arg_1, u_input.b.x))) & reverseBits(arg_1))), 5u)];
    var var_2 = global3[_wgslsmith_index_u32(1u, 5u)];
    return !var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 8>();
    var var_0 = all(vec2<bool>(!func_1(_wgslsmith_f_op_f32(-1564f - global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), any(vec2<bool>(false, false))));
    let var_1 = global3[_wgslsmith_index_u32(~0u, 5u)];
    let var_2 = ~(~select(~vec3<u32>(u_input.b.x, 1u, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b.x, 1u), vec3<u32>(var_1.d.x, u_input.b.x, 4294967295u)), var_1.b.xyy)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(~0u, _wgslsmith_mult_u32(1u, var_1.d.x), var_1.d.x), u_input.b, ~vec3<u32>(21951u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u));
    global4 = array<f32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(select(reverseBits(_wgslsmith_mult_u32(~20929u, _wgslsmith_clamp_u32(var_2.x, 110246u, u_input.b.x))), 1u, any(select(var_1.b, !var_1.b, select(vec4<bool>(false, false, true, true), var_1.b, false)))), min(-(vec3<i32>(u_input.a.x, -1i, -13637i) & global1.xzz), firstTrailingBit(u_input.a.zxw | global1.xzx) | select(u_input.a.zwy, vec3<i32>(global1.x, -4136i, 0i), 1u != var_1.d.x)), u_input.a.yy, countOneBits(firstTrailingBit(-10074i)), u_input.b.zy);
}

