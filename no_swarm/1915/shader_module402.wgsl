struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: bool,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
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

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 27902u, 1u, 39948u);

var<private> global1: Struct_1 = Struct_1(vec3<f32>(802f, -783f, 710f), vec2<u32>(35378u, 1u), false, vec3<f32>(-1000f, 1260f, -849f), 4294967295u);

var<private> global2: array<bool, 1> = array<bool, 1>(true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<f32>) -> vec4<bool> {
    global0 = _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.a, global0.x, ~u_input.d.x, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(12835u, 63846u, global0.x, global1.e), vec4<u32>(4351u, 0u, global0.x, 4294967295u)) & vec4<u32>(68560u, 26267u, global1.e, 41063u)), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.e, 0u), global0.xyx), u_input.d.x, abs(u_input.d.x), 1u)), ~vec4<u32>(abs(_wgslsmith_mult_u32(17926u, 0u)), firstLeadingBit(4294967295u), countOneBits(abs(4294967295u)), ~u_input.a | _wgslsmith_clamp_u32(global0.x, 1u, 12837u)));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1058f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global1.a.xx, global1.a.yy, global2[_wgslsmith_index_u32(global0.x, 1u)]))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-758f)), _wgslsmith_f_op_f32(global1.d.x - global1.a.x)))))) * global1.d.zz);
    let var_1 = abs(_wgslsmith_clamp_vec3_i32(~u_input.c.wxz >> (_wgslsmith_add_vec3_u32(vec3<u32>(0u, global1.b.x, 102167u), global0.wzy) % vec3<u32>(32u)), u_input.c.zwx, u_input.c.xxz | (vec3<i32>(2147483647i, u_input.b, u_input.b) ^ vec3<i32>(u_input.e.x, 1i, u_input.b))) ^ select(~(~u_input.e.zxx), abs(u_input.c.www << (global0.xww % vec3<u32>(32u))), !select(global1.c, true, global2[_wgslsmith_index_u32(30669u, 1u)])));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, arg_0.x, -294f)), _wgslsmith_div_vec2_u32(~(~(~vec2<u32>(4294967295u, global1.b.x))), _wgslsmith_clamp_vec2_u32(abs(_wgslsmith_sub_vec2_u32(global0.xw, global0.xx)), global0.zw, global0.yx)), ~global0.x >= ~(~(global1.b.x >> (global1.b.x % 32u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.d + vec3<f32>(var_0.x, global1.d.x, -1026f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-441f, -1066f, 486f), vec3<f32>(-275f, 1659f, var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global1.d, vec3<f32>(1000f, 318f, arg_0.x)))), !any(vec4<bool>(false, global1.c, true, true)))), arg_0.xxy), 25836u);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(534f * -123f) + -475f)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.x)), var_2.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(2338f)), arg_0.x), _wgslsmith_f_op_f32(-994f * global1.a.x)), any(select(vec2<bool>(false, var_2.c), select(vec2<bool>(true, var_2.c), vec2<bool>(false, true), global1.c), true)))), ~vec2<u32>(~u_input.d.x, ~21211u), (_wgslsmith_sub_u32(select(global0.x, 1u, true), ~global1.e) << (44093u % 32u)) < ((14799u ^ ~var_2.e) & var_2.e), _wgslsmith_f_op_vec3_f32(-global1.d), global1.e);
    return !(!(!vec4<bool>(!global1.c, global2[_wgslsmith_index_u32(~global0.x, 1u)], global1.c, all(vec2<bool>(global1.c, global1.c)))));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = arg_2.c;
    let var_1 = _wgslsmith_f_op_f32(-1f);
    let var_2 = !select(!vec4<bool>(true, true, arg_2.c, arg_2.c), func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(366f, 539f, -420f, -379f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1212f, 1000f, 170f, arg_1.x), vec4<f32>(global1.a.x, var_1, -890f, -336f))), true))), select(!(!vec4<bool>(global1.c, var_0, var_0, arg_2.c)), select(vec4<bool>(false, global1.c, true, false), select(vec4<bool>(true, global1.c, var_0, var_0), vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(u_input.a, 1u)]), vec4<bool>(global2[_wgslsmith_index_u32(arg_2.e, 1u)], global2[_wgslsmith_index_u32(global0.x, 1u)], false, true)), select(vec4<bool>(false, false, global1.c, global1.c), vec4<bool>(true, false, true, global1.c), vec4<bool>(arg_2.c, var_0, arg_2.c, global1.c))), -489f <= _wgslsmith_f_op_f32(-198f - arg_1.x)));
    var var_3 = global0.yxx;
    let var_4 = _wgslsmith_dot_vec2_u32(~(arg_2.b ^ _wgslsmith_mod_vec2_u32(global0.zw, global0.wx)), ~(var_3.zx >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.b.x, global0.x), vec2<u32>(0u, 52096u)) % vec2<u32>(32u))));
    return global0.xz;
}

fn func_1() -> vec4<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a.x))) + _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(round(global1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) * -1000f));
    global2 = array<bool, 1>();
    let var_1 = Struct_1(global1.d, _wgslsmith_sub_vec2_u32(func_2(-29934i, _wgslsmith_f_op_vec2_f32(-global1.d.xz), Struct_1(global1.a, vec2<u32>(global1.b.x, 6013u), global1.c, global1.d, 4294967295u)), vec2<u32>(1u, ~global1.e)) | (vec2<u32>(40122u, 4294967295u) >> (global0.yw % vec2<u32>(32u))), global1.c, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(global1.d)), _wgslsmith_f_op_vec3_f32(-global1.a)))), vec3<f32>(-723f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - global1.a.x) - 1f)))), countOneBits(global0.x));
    var var_2 = 18750i;
    var var_3 = 4294967295u;
    return ~_wgslsmith_mod_vec4_u32(vec4<u32>(~global0.x, countOneBits(global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(42919u, 384u, global0.x, 0u), vec4<u32>(1u, 0u, 1u, global1.e)), ~4294967295u) & abs(firstTrailingBit(vec4<u32>(0u, var_1.b.x, u_input.a, 42390u))), ~(~vec4<u32>(global1.e, 76283u, u_input.a, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    global0 = vec4<u32>(4294967295u, var_0 >> (global1.b.x % 32u), 1u, firstLeadingBit(~_wgslsmith_add_u32(108580u >> (u_input.a % 32u), var_0)));
    var var_1 = u_input.e;
    var_1 = u_input.c;
    global0 = ~func_1();
    let var_2 = var_1.xw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(global1.d.x - global1.d.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.x, 320f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.a.x, global1.a.x), vec2<f32>(global1.d.x, 783f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.x, -1000f) + global1.a.zz)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global1.a.yx)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, 1702f))))));
}

