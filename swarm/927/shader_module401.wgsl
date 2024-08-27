struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_2, 21>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> vec2<bool> {
    global1 = array<Struct_2, 21>();
    var var_0 = Struct_2(_wgslsmith_mult_i32(-1i, abs(max(global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, arg_0.a, 14542i), vec4<i32>(global0.x, -31891i, global0.x, arg_0.a))))));
    var_0 = global1[_wgslsmith_index_u32(abs(firstTrailingBit(18159u)), 21u)];
    var_0 = Struct_2(-13047i);
    var var_1 = -abs(countOneBits(vec2<i32>(-arg_0.a, ~global0.x)));
    return vec2<bool>(true, true);
}

fn func_2(arg_0: bool) -> vec4<u32> {
    var var_0 = Struct_1(any(func_3(Struct_2(firstLeadingBit(global0.x)), Struct_1(select(arg_0, true, false)), arg_0)));
    var_0 = Struct_1(all(!vec4<bool>(any(vec4<bool>(true, false, false, false)), true, true, false)));
    var var_1 = _wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_mod_i32(~38870i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global0.x, 11063i), vec3<i32>(5094i, 0i, global0.x))), global0.x), _wgslsmith_div_vec2_i32(-_wgslsmith_mod_vec2_i32(abs(vec2<i32>(7882i, 44425i)), vec2<i32>(global0.x, 49296i) & vec2<i32>(83395i, global0.x)), firstLeadingBit(vec2<i32>(global0.x, global0.x) << ((vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(u_input.a, 16048u)) % vec2<u32>(32u)))));
    var var_2 = Struct_1(var_0.a);
    let var_3 = true;
    return _wgslsmith_mod_vec4_u32(~select(vec4<u32>(u_input.a | 4294967295u, u_input.a, ~u_input.a, 90467u >> (u_input.a % 32u)), ~abs(vec4<u32>(u_input.a, u_input.a, 39020u, u_input.a)), vec4<bool>(false, false, true, any(vec2<bool>(var_3, true)))), min(max(abs(vec4<u32>(u_input.a, 4294967295u, u_input.a, 27604u) << (vec4<u32>(u_input.a, 0u, u_input.a, 25184u) % vec4<u32>(32u))), vec4<u32>(abs(u_input.a), min(u_input.a, u_input.a), firstLeadingBit(22262u), _wgslsmith_mult_u32(2896u, 20298u))), ~(~firstLeadingBit(vec4<u32>(u_input.a, 18296u, 1u, 4961u)))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> vec2<i32> {
    var var_0 = select(abs(func_2(all(select(vec3<bool>(false, arg_1.x, arg_1.x), arg_1.zww, false)))), min(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, 0u), u_input.a), 1u, u_input.a, u_input.a), ~(~max(vec4<u32>(u_input.a, 38513u, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)))), !(arg_0 & arg_0));
    var_0 = ~vec4<u32>(0u, 73798u, ~var_0.x, ~(~(~82154u)));
    let var_1 = false;
    var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a << (u_input.a % 32u), firstLeadingBit(u_input.a), ~_wgslsmith_add_u32(0u, 7568u), var_0.x), select(~(~select(vec4<u32>(1u, u_input.a, var_0.x, 1u), vec4<u32>(u_input.a, 1u, 4294967295u, 6605u), arg_1.x)), vec4<u32>(~var_0.x, var_0.x, abs(var_0.x), 7513u), 32561u >= (u_input.a | _wgslsmith_mult_u32(var_0.x, 1u))));
    var_0 = select(max(_wgslsmith_clamp_vec4_u32(~func_2(arg_0), ~vec4<u32>(25355u, var_0.x, 0u, var_0.x), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 59450u, 15001u, 6833u), vec4<u32>(u_input.a, u_input.a, 4294967295u, 8732u))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, 1u, 0u), vec4<u32>(35998u, 36341u, u_input.a, 60975u)), firstLeadingBit(vec4<u32>(var_0.x, var_0.x, var_0.x, 60021u))), reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, var_0.x), vec4<u32>(u_input.a, 0u, 1u, var_0.x))))), ~vec4<u32>(u_input.a, _wgslsmith_mod_u32(~4294967295u, u_input.a), ~_wgslsmith_dot_vec3_u32(var_0.zxz, vec3<u32>(0u, 0u, var_0.x)), firstTrailingBit(var_0.x)), any(select(vec2<bool>(select(false, false, false), var_1 | false), select(arg_1.yy, !arg_1.yw, arg_1.ww), select(arg_1.xx, vec2<bool>(arg_0, var_1), var_1))));
    return vec2<i32>(-global0.x, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(vec3<u32>(~countOneBits(4294967295u), u_input.a, ~(~4294967295u)), vec3<u32>(~40415u, (select(14569u, 1u, true) ^ u_input.a) << (~(~u_input.a) % 32u), countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(1597u, u_input.a, u_input.a), vec3<u32>(u_input.a, 59612u, 0u)))));
    let var_1 = func_1(any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)))), vec4<bool>(false && !any(vec2<bool>(false, true)), true, true, global0.x <= -(~(-33047i))));
    let var_2 = (_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-459f - 535f)), -615f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(882f)) * _wgslsmith_div_f32(1051f, -1673f)))) && true;
    var var_3 = Struct_1(func_3(global1[_wgslsmith_index_u32(33546u, 21u)], Struct_1(!any(vec4<bool>(false, var_2, var_2, false))), true).x);
    let var_4 = !vec3<bool>(false, (true | (var_3.a && true)) & all(select(vec4<bool>(true, var_2, var_3.a, false), vec4<bool>(true, false, var_3.a, var_2), vec4<bool>(var_2, true, false, true))), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(~1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -343f, _wgslsmith_f_op_f32(229f + -1316f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 726f, -821f)))))), ~_wgslsmith_add_u32(~(~var_0.x), ~(~var_0.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-552f + 924f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1160f - 975f), -2640f, var_2)), _wgslsmith_f_op_f32(-272f + _wgslsmith_f_op_f32(1000f - 1072f)), 1728f))), ~(func_2(var_4.x).x | firstTrailingBit(var_0.x << (u_input.a % 32u))));
}

