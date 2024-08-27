struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

var<private> global1: array<i32, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true && any(vec4<bool>(false, false, false, true))), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), true))), _wgslsmith_mult_i32(1i, reverseBits(u_input.d)), all(vec2<bool>(true, true)) | !all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), vec3<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1009f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1188f))), true, !all(select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
    global1 = array<i32, 11>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-629f, -297f, 1717f))))));
    let var_2 = vec2<u32>(u_input.a, u_input.b);
    var var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~11214i << (var_2.x % 32u), -2147483647i, global0[_wgslsmith_index_u32(~0u, 22u)], _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(var_0.b, 25724i, 1i), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(0u, 11u)]) & max(global0[_wgslsmith_index_u32(var_2.x, 22u)], 141i))), abs(vec4<i32>(reverseBits(27757i), 0i, i32(-1i) * -global1[_wgslsmith_index_u32(37613u, 11u)], 2147483647i)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(18742i, global0[_wgslsmith_index_u32(1u, 22u)], 1i, 2147483647i), vec4<i32>(u_input.d, -1i, -4454i, -1i)), vec4<i32>(u_input.d << (60067u % 32u), ~(-44965i), u_input.e.x, 43924i), select(!vec4<bool>(var_0.c, var_0.d.x, var_0.a.x, var_0.a.x), !vec4<bool>(var_0.a.x, var_0.c, true, true), vec4<bool>(true, var_0.c, false, var_0.a.x))) | _wgslsmith_mod_vec4_i32(countOneBits(reverseBits(vec4<i32>(global1[_wgslsmith_index_u32(var_2.x, 11u)], u_input.c.x, 2147483647i, -1i))), -select(vec4<i32>(1i, global1[_wgslsmith_index_u32(var_2.x, 11u)], u_input.e.x, 0i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], global1[_wgslsmith_index_u32(30430u, 11u)], u_input.e.x, global0[_wgslsmith_index_u32(var_2.x, 22u)]), vec4<bool>(var_0.d.x, var_0.a.x, true, var_0.d.x))));
    return var_0.d.yz;
}

fn func_2() -> bool {
    let var_0 = Struct_1(!select(func_3(), vec2<bool>(true, any(vec3<bool>(true, false, false))), vec2<bool>(any(vec4<bool>(true, false, true, true)), all(vec4<bool>(true, true, true, true)))), -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(global1[_wgslsmith_index_u32(37666u, 11u)], 1548i), -vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)])), firstTrailingBit(-vec2<i32>(u_input.c.x, u_input.d))), !(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), reverseBits(vec2<u32>(50201u, u_input.a))) < 57374u), select(vec3<bool>(any(vec3<bool>(true, true, false)), any(vec2<bool>(true, false)), true), !vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.b, 11u)] < -1i), vec3<bool>(true, all(vec4<bool>(false, true, false, true)) || true, false)));
    let var_1 = !vec2<bool>(true, !any(!vec4<bool>(true, var_0.a.x, var_0.c, var_0.d.x)));
    global0 = array<i32, 22>();
    global1 = array<i32, 11>();
    let var_2 = -223f;
    return var_0.a.x;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec2<bool>(arg_0.c, !func_2());
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1397f)))), 635f, 879f, _wgslsmith_f_op_f32(max(-595f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-252f)) + 1f)))));
    var var_2 = Struct_1(var_0, reverseBits(arg_0.b), !any(select(select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(true, false, arg_0.c, arg_0.a.x), vec4<bool>(arg_0.d.x, arg_0.a.x, true, true)), !vec4<bool>(false, arg_0.c, true, var_0.x), select(vec4<bool>(var_0.x, false, arg_0.d.x, true), vec4<bool>(false, var_0.x, arg_0.d.x, true), false))), !vec3<bool>(_wgslsmith_f_op_f32(var_1.x - -363f) >= _wgslsmith_f_op_f32(-var_1.x), var_1.x >= _wgslsmith_f_op_f32(f32(-1f) * -2385f), all(!arg_0.a)));
    global0 = array<i32, 22>();
    let var_3 = Struct_1(!(!vec2<bool>(var_2.c, var_0.x)), -arg_0.b, var_1.x == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1.x)))), !select(select(!arg_0.d, select(vec3<bool>(arg_0.d.x, true, var_0.x), arg_0.d, var_2.d.x), !var_2.d), select(vec3<bool>(var_2.a.x, false, true), vec3<bool>(true, true, var_2.d.x), select(vec3<bool>(arg_0.a.x, var_0.x, true), var_2.d, var_2.d)), vec3<bool>(false, !arg_0.d.x, any(vec3<bool>(false, false, true)))));
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = vec2<bool>(true, any(func_1(Struct_1(vec2<bool>(false, arg_0.c), _wgslsmith_sub_i32(20513i, 2147483647i), !arg_0.a.x, arg_3.d)).d));
    global0 = array<i32, 22>();
    let var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_f32(min(-813f, -1872f));
    global1 = array<i32, 11>();
    return ~(~max(~arg_2.x, ~(~arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 22>();
    global1 = array<i32, 11>();
    global0 = array<i32, 22>();
    var var_0 = vec2<bool>(-34033i < global1[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(u_input.a, 1u, 4294967295u) >> (11003u % 32u)), 11u)], false);
    var var_1 = -182f;
    var_0 = !(!(!vec2<bool>(false | var_0.x, any(vec2<bool>(false, var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~u_input.b, _wgslsmith_add_u32(u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(954f, _wgslsmith_f_op_f32(sign(-655f)))))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.b) ^ select(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(u_input.a, u_input.a, 0u), var_0.x), vec3<u32>(u_input.b, ~52331u, 15161u)), 3528u, func_4(func_1(Struct_1(vec2<bool>(true, var_0.x), global0[_wgslsmith_index_u32(u_input.a, 22u)], true, vec3<bool>(false, var_0.x, false))), -_wgslsmith_mod_i32(1i, global1[_wgslsmith_index_u32(u_input.b, 11u)]), ~vec4<u32>(0u, 0u, 0u, 67641u), Struct_1(!vec2<bool>(true, var_0.x), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.b, 22u)], -1i, u_input.e.x), !var_0.x, select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, var_0.x, var_0.x), true)))));
}

