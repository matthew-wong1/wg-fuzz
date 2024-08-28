struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(16230u, 4294967295u);

var<private> global1: vec4<f32> = vec4<f32>(-1598f, -712f, -1955f, 311f);

var<private> global2: vec4<u32>;

var<private> global3: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(8230u, 49290u, 1u, 1u), vec4<u32>(1u, 84388u, 19938u, 47375u), vec4<u32>(58506u, 1u, 15443u, 0u), vec4<u32>(38717u, 67212u, 1u, 6256u), vec4<u32>(6712u, 0u, 1814u, 0u), vec4<u32>(39462u, 21742u, 39840u, 78049u), vec4<u32>(109699u, 83888u, 1u, 0u));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = global2.zyy;
    return arg_0.b;
}

fn func_3(arg_0: vec4<bool>) -> vec4<bool> {
    global2 = vec4<u32>(~_wgslsmith_add_u32(func_1(Struct_2(global2.x, global0.x, Struct_1(1775f, vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), arg_0.zz, vec2<i32>(u_input.b, 1i)))), _wgslsmith_mod_u32(global2.x ^ u_input.a, ~global0.x)), abs(_wgslsmith_dot_vec3_u32(~(~global2.zyw), _wgslsmith_clamp_vec3_u32(~global2.yyz, ~vec3<u32>(global2.x, u_input.a, u_input.c), min(vec3<u32>(95196u, 1u, 80828u), vec3<u32>(4294967295u, 1u, global0.x))))), ~(~(~global2.x & reverseBits(32302u))), _wgslsmith_mult_u32(max(~(~17629u), u_input.a), countOneBits(global0.x)));
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(1u, global0.x), 12699u, abs(21004u), ~countOneBits(~59740u ^ _wgslsmith_add_u32(25417u, global2.x)));
    var var_1 = false && !all(!arg_0);
    let var_2 = Struct_3(global2.x);
    var var_3 = Struct_2(_wgslsmith_mod_u32(37870u, var_0.x) & ~(~(~global2.x)), abs(0u), Struct_1(_wgslsmith_f_op_f32(select(641f, global1.x, any(arg_0) || !arg_0.x)), select(select(select(arg_0, vec4<bool>(true, false, arg_0.x, false), arg_0), select(arg_0, arg_0, arg_0.x), arg_0.x), vec4<bool>(all(vec3<bool>(true, arg_0.x, false)), any(arg_0), 0u <= var_2.a, arg_0.x), false & arg_0.x), !select(vec2<bool>(true, true), select(arg_0.zx, arg_0.xz, arg_0.xx), !arg_0.x), vec2<i32>(-u_input.b, 2147483647i) >> (~abs(global2.zw) % vec2<u32>(32u))));
    return select(var_3.c.b, vec4<bool>(any(vec3<bool>(true, true, true)), false, true & !(global0.x > 16881u), select(true, false, false)), vec4<bool>(select(var_3.c.b.x, var_3.c.b.x, true), false, !select(any(vec2<bool>(var_3.c.b.x, var_3.c.b.x)), true, false), true));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> vec2<i32> {
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a, 1507f, global1.x, global1.x), vec4<f32>(arg_1.a, arg_1.a, global1.x, global1.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(global1.x - arg_1.a), _wgslsmith_f_op_f32(-979f * 1129f), 1025f, -287f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, 555f, 472f, arg_1.a))))));
    let var_0 = arg_1;
    let var_1 = ~_wgslsmith_div_u32(57063u, reverseBits(abs(_wgslsmith_sub_u32(global0.x, 11928u))));
    global0 = global2.zw;
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(439f, 1938f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1652f))), -382f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a, -555f), _wgslsmith_f_op_f32(sign(arg_1.a))), arg_1.a, _wgslsmith_f_op_f32(select(-695f, _wgslsmith_div_f32(global1.x, arg_1.a), false))))), !arg_1.b));
    return -vec2<i32>(-1i, -arg_1.d.x);
}

fn func_5(arg_0: Struct_2) -> vec2<u32> {
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.a, -1198f, 639f, 775f) + vec4<f32>(global1.x, global1.x, arg_0.c.a, -890f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(868f, arg_0.c.a, -2106f, -242f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(656f, arg_0.c.a, global1.x, arg_0.c.a) * vec4<f32>(global1.x, global1.x, -1080f, arg_0.c.a))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-478f, 492f, global1.x, global1.x), vec4<f32>(1570f, -1332f, global1.x, -290f), arg_0.c.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-317f, -1730f, global1.x, global1.x) - vec4<f32>(global1.x, global1.x, global1.x, -1600f))))));
    let var_0 = arg_0;
    var var_1 = !func_3(vec4<bool>(1i >= -u_input.b, arg_0.c.b.x, _wgslsmith_add_u32(global2.x, 57481u) >= 0u, arg_0.c.b.x));
    let var_2 = ~vec2<u32>(~_wgslsmith_clamp_u32(global2.x, u_input.a, _wgslsmith_sub_u32(4294967295u, global2.x)), max(arg_0.a, 1u));
    global1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a, -497f, -698f, -1249f)))));
    return _wgslsmith_mult_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(global2.ww, _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), abs(global2.xx)))), ~(vec2<u32>(~4294967295u, 88699u) | vec2<u32>(_wgslsmith_mod_u32(u_input.a, 0u), _wgslsmith_mult_u32(7494u, global0.x))));
}

fn func_2() -> StorageBuffer {
    global0 = func_5(Struct_2(~func_1(Struct_2(global0.x, 1u, Struct_1(-328f, vec4<bool>(false, false, false, true), vec2<bool>(false, true), vec2<i32>(-2147483647i, u_input.b)))), 0u, Struct_1(_wgslsmith_f_op_f32(-736f * global1.x), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), !select(vec2<bool>(false, true), vec2<bool>(false, false), false), func_4(u_input.b & u_input.b, Struct_1(global1.x, vec4<bool>(true, false, false, false), vec2<bool>(true, false), vec2<i32>(u_input.b, u_input.b)), func_3(vec4<bool>(true, false, true, true)), abs(4294967295u)))));
    let var_0 = Struct_3(global0.x);
    return StorageBuffer(~u_input.b, u_input.b, -vec3<i32>(~1i, -func_4(u_input.b, Struct_1(global1.x, vec4<bool>(false, false, true, false), vec2<bool>(true, true), vec2<i32>(-2147483647i, u_input.b)), vec4<bool>(true, false, false, false), global0.x).x, i32(-1i) * -u_input.b), firstLeadingBit(select(vec2<u32>(var_0.a, var_0.a), global2.ww, true) | ~select(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, global0.x), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false, false, ((0u >= u_input.a) || (~4294967295u >= global0.x)) || false);
    var var_1 = global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(global0.x, ~(~47714u))), 7u)] >> (vec4<u32>(~100211u, 20950u ^ func_1(Struct_2(67080u, 7428u, Struct_1(global1.x, vec4<bool>(var_0.x, var_0.x, true, true), var_0.xy, vec2<i32>(u_input.b, u_input.b)))), firstTrailingBit(global2.x), 1u) % vec4<u32>(32u));
    var var_2 = Struct_3(38909u);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -410f);
    var var_4 = _wgslsmith_f_op_vec2_f32(-global1.zw);
    var var_5 = -22971i;
    var var_6 = 0i;
    global1 = vec4<f32>(var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 1000f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 * -1554f), _wgslsmith_f_op_f32(f32(-1f) * -627f)))), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))));
    let x = u_input.a;
    s_output = func_2();
}

