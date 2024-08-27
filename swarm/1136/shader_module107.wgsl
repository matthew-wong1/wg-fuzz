struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(4294967295u, 60061u, 25094u, 38253u, 1u, 17333u, 1u, 31378u, 31392u, 38939u, 11519u, 0u, 9489u, 82739u, 2212u, 9153u, 17307u);

var<private> global1: Struct_1 = Struct_1(4294967295u, vec2<u32>(18732u, 1u));

var<private> global2: vec2<u32>;

var<private> global3: Struct_1 = Struct_1(0u, vec2<u32>(4294967295u, 12891u));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(783f - _wgslsmith_f_op_f32(ceil(-636f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2879f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(842f * -716f)))))));
    var var_1 = vec3<i32>(~countOneBits(-_wgslsmith_sub_i32(u_input.e.x, u_input.e.x)), ~max(u_input.a, 2147483647i), u_input.a);
    let var_2 = arg_1;
    global2 = vec2<u32>(1u, global0[_wgslsmith_index_u32(~(~29720u), 17u)]);
    var_1 = ~(~u_input.e.zyy);
    return 1u >> (global0[_wgslsmith_index_u32(u_input.d.x, 17u)] % 32u);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(global3.a, u_input.c.yy);
    var var_1 = Struct_2(Struct_1(63311u, vec2<u32>(~0u, 1u)), countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(46342u, global1.b.x, 97470u) << (vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 17u)], 0u, 35697u) % vec3<u32>(32u)), vec3<u32>(107882u, 27525u, 4294967295u) | u_input.c.wzz, firstTrailingBit(u_input.d.xxw)) | vec3<u32>(_wgslsmith_mult_u32(11838u, var_0.a), global2.x, ~37555u)), vec2<bool>(true, !any(select(vec2<bool>(false, true), vec2<bool>(false, true), false))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1000f * -232f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1364f * 1145f) - _wgslsmith_f_op_f32(max(1988f, 543f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-438f, -396f) - vec2<f32>(-473f, -1513f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-714f, 184f)), vec2<bool>(true, false)))), any(vec2<bool>(all(vec2<bool>(true, true)), true)))), reverseBits(abs(_wgslsmith_mod_u32(global2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(11231u, global1.a, 4294967295u), u_input.c.wzy)))));
    var var_2 = true;
    let var_3 = Struct_2(var_1.a, u_input.c.wyw, select(select(!vec2<bool>(var_1.c.x, false), select(var_1.c, vec2<bool>(false, true), select(var_1.c, var_1.c, var_1.c.x)), var_1.c.x), vec2<bool>(any(select(vec2<bool>(true, var_1.c.x), var_1.c, var_1.c)), any(vec4<bool>(var_1.c.x, var_1.c.x, true, var_1.c.x))), !var_1.c), _wgslsmith_f_op_vec2_f32(ceil(var_1.d)), global1.a);
    var_2 = var_3.c.x;
    return _wgslsmith_clamp_u32(~global3.b.x, 0u, 1u);
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: bool) -> bool {
    global0 = array<u32, 17>();
    global1 = Struct_1(((_wgslsmith_div_u32(global1.b.x, global1.b.x) | global0[_wgslsmith_index_u32(102712u, 17u)]) | _wgslsmith_div_u32(global3.b.x, func_2(true, Struct_1(11469u, global3.b)))) ^ func_3(), global1.b);
    var var_0 = !vec2<bool>(true, !arg_3);
    global2 = u_input.d.zx;
    var_0 = select(vec2<bool>(select(arg_2.x >= -188f, any(vec2<bool>(false, arg_3)), select(arg_3, true, var_0.x)), !arg_3), select(vec2<bool>(any(select(vec2<bool>(arg_3, var_0.x), vec2<bool>(true, arg_3), var_0.x)), ~global3.b.x > global3.b.x), vec2<bool>(true, true), vec2<bool>(var_0.x, true)), !(!vec2<bool>(true || arg_3, true)));
    return arg_3;
}

fn func_4(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = u_input.e.wy;
    let var_1 = firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global1.b, global3.b), u_input.c.wz >> (firstLeadingBit(global1.b) % vec2<u32>(32u))), select(_wgslsmith_add_u32(85106u, global2.x), max(u_input.d.x, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(global1.b.x, u_input.c.x, 1u, 1u))), all(select(arg_0.xyy, vec3<bool>(arg_0.x, true, true), false))), ~_wgslsmith_dot_vec2_u32(~global1.b, _wgslsmith_sub_vec2_u32(global3.b, vec2<u32>(35425u, global2.x))), firstTrailingBit(global0[_wgslsmith_index_u32(1u, 17u)])));
    global2 = vec2<u32>(abs(0u), global0[_wgslsmith_index_u32(global2.x, 17u)]);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2518f + 345f)))) * 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1493f - _wgslsmith_f_op_f32(-1f))));
    let var_3 = Struct_1(~var_1.x, firstTrailingBit(vec2<u32>(1u, global0[_wgslsmith_index_u32(~(~7415u), 17u)])));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(vec4<bool>(true, true, true, false), !vec4<bool>(select(true, false, true), true, func_1(u_input.a, u_input.e.wzz, vec2<f32>(831f, 355f), true), true), select(vec4<bool>(true, u_input.e.x == 2147483647i, true, all(vec3<bool>(false, true, false))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, false, false), true), vec4<bool>(true, false, all(vec4<bool>(false, true, true, false)), false))));
    let var_1 = true;
    global0 = array<u32, 17>();
    let var_2 = 196f;
    let var_3 = func_4(select(vec4<bool>(true, -u_input.a >= (i32(-1i) * -1i), true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(false, true, false, var_1)))), select(vec4<bool>(var_1 || true, true, var_1, true), !vec4<bool>(true, true, var_1, var_1), select(select(vec4<bool>(true, false, true, true), vec4<bool>(var_1, var_1, var_1, false), true), select(vec4<bool>(false, false, false, var_1), vec4<bool>(false, var_1, var_1, false), false), vec4<bool>(var_1, var_1, var_1, var_1))), !var_1));
    var var_4 = -vec2<i32>(-1i, -29705i & countOneBits(u_input.a));
    let var_5 = func_4(select(select(!(!vec4<bool>(true, true, var_1, var_1)), select(!vec4<bool>(var_1, true, var_1, false), select(vec4<bool>(true, var_1, var_1, false), vec4<bool>(true, var_1, var_1, var_1), var_1), !vec4<bool>(var_1, var_1, false, var_1)), true), select(select(select(vec4<bool>(var_1, false, var_1, false), vec4<bool>(true, var_1, true, var_1), vec4<bool>(var_1, var_1, false, false)), select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, var_1, var_1, var_1), true), var_1), select(vec4<bool>(true, var_1, false, false), select(vec4<bool>(var_1, false, false, var_1), vec4<bool>(var_1, false, false, var_1), var_1), select(vec4<bool>(true, var_1, false, true), vec4<bool>(false, false, false, var_1), true)), select(select(vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(true, var_1, var_1, var_1), var_1), !vec4<bool>(var_1, var_1, var_1, var_1), !var_1)), true));
    let var_6 = Struct_2(func_4(vec4<bool>(false, false, var_1, !all(vec3<bool>(var_1, var_1, true)))), countOneBits(abs((vec3<u32>(var_3.a, 4294967295u, global3.b.x) | vec3<u32>(100733u, global3.a, 0u)) ^ ~u_input.d.zyw)), select(vec2<bool>((var_1 || var_1) || var_1, !any(vec3<bool>(var_1, var_1, true))), !(!(!vec2<bool>(true, var_1))), any(!select(vec3<bool>(false, var_1, false), vec3<bool>(var_1, false, var_1), var_1))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-227f, var_2) + vec2<f32>(var_2, 764f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(869f, 1323f)))))), var_5.b.x | (4294967295u >> (~abs(global1.b.x) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(global0[_wgslsmith_index_u32(global1.b.x, 17u)]));
}

