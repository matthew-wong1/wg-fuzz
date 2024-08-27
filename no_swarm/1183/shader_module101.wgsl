struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    var var_0 = Struct_2(vec4<i32>(_wgslsmith_mult_i32(37561i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -14440i, 3262i), vec3<i32>(u_input.b, u_input.b, 29944i)), ~(-64756i))), (~u_input.b >> (max(u_input.a, u_input.a) % 32u)) | u_input.b, max(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(-1i, u_input.b)) & u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -30490i, 1i), -vec3<i32>(0i, 40846i, u_input.b))), u_input.b));
    var var_1 = Struct_2(vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b, 0i, u_input.b, -1i)), var_0.a) ^ -var_0.a.x, 4878i, var_0.a.x));
    var_0 = Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -17510i, -2147483647i, 1i >> (countOneBits(u_input.a) % 32u), abs(-u_input.b)), select(firstTrailingBit(var_1.a) | vec4<i32>(42305i, u_input.b, var_0.a.x, var_1.a.x), ~var_1.a, any(vec3<bool>(true, false, false)))));
    let var_2 = true;
    var var_3 = select(select(vec2<bool>(false, select(any(vec4<bool>(false, false, var_2, false)), var_2 == true, any(vec2<bool>(true, var_2)))), select(select(vec2<bool>(var_2, true), vec2<bool>(var_2, false), false), select(vec2<bool>(true, true), select(vec2<bool>(false, var_2), vec2<bool>(true, var_2), false), !vec2<bool>(var_2, true)), vec2<bool>(var_2 != var_2, all(vec2<bool>(var_2, var_2)))), !all(!vec4<bool>(false, false, var_2, true))), vec2<bool>(var_2, true), false);
    return select(!vec3<bool>(all(!vec2<bool>(var_2, var_2)), !all(vec4<bool>(true, var_3.x, true, var_3.x)), var_3.x), vec3<bool>(var_3.x, all(select(select(vec4<bool>(false, true, var_3.x, true), vec4<bool>(false, var_2, var_3.x, var_2), false), !vec4<bool>(var_2, var_3.x, var_3.x, true), select(vec4<bool>(true, var_2, false, var_3.x), vec4<bool>(true, true, var_2, var_2), vec4<bool>(var_2, false, var_3.x, var_3.x)))), false), var_3.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: i32) -> Struct_2 {
    var var_0 = vec2<u32>(_wgslsmith_add_u32(~(~arg_0.x), 17397u), _wgslsmith_mod_u32(~4294967295u, ~u_input.a));
    let var_1 = Struct_1(select(!func_3(arg_1.x), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), true), ~arg_3 >= select(arg_3, arg_2.x, true)), _wgslsmith_f_op_f32(arg_1.x + 1f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(398f, -1799f)))), _wgslsmith_f_op_vec3_f32(arg_1.yzx + arg_1.yww), !(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))) & true), -1418f, firstTrailingBit(max(~(~var_0.x), arg_0.x)));
    var var_2 = Struct_2(arg_2);
    return Struct_2(-select(-var_2.a, vec4<i32>(var_2.a.x, 2147483647i, -24470i, 1i), vec4<bool>(var_1.a.x, false, var_1.c, var_1.c)) >> ((arg_0 << (_wgslsmith_mod_vec4_u32(~arg_0, ~vec4<u32>(var_0.x, 54413u, u_input.a, var_0.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    var var_0 = (arg_0.a.wxy << (~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.e, u_input.a, arg_1.e), firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 4294967295u))) % vec3<u32>(32u))) ^ arg_2.a.yxw;
    var_0 = arg_2.a.wzw;
    var var_1 = max(arg_2.a.xyy, func_2(vec4<u32>(arg_1.e | arg_1.e, 1u, ~u_input.a, 1u) >> (vec4<u32>(reverseBits(36299u), 1u, _wgslsmith_add_u32(1u, u_input.a), _wgslsmith_mod_u32(4294967295u, arg_1.e)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d, arg_1.b.x, arg_1.b.x, 1002f) + vec4<f32>(1000f, arg_1.d, 1143f, arg_1.b.x)), vec4<f32>(arg_1.d, -789f, arg_1.d, 1779f)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b.x, 110f, 936f, arg_1.d), vec4<f32>(901f, arg_1.d, arg_1.d, -1598f), arg_1.a.x))))), ~_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a.x, arg_0.a.x, arg_2.a.x, -21570i), vec4<i32>(arg_2.a.x, 10725i, 2147483647i, 1i), arg_2.a), arg_0.a), i32(-1i) * -44456i).a.yxy);
    let var_2 = ~_wgslsmith_sub_u32(firstTrailingBit(arg_1.e), u_input.a);
    let var_3 = _wgslsmith_sub_vec3_u32(~(min(~vec3<u32>(arg_1.e, 1u, 4294967295u), select(vec3<u32>(var_2, var_2, 1u), vec3<u32>(4294967295u, 0u, 1u), vec3<bool>(true, arg_1.c, false))) & abs(firstTrailingBit(vec3<u32>(arg_1.e, 15936u, arg_1.e)))), ~(~(~(vec3<u32>(4294967295u, 1u, 0u) << (vec3<u32>(var_2, var_2, arg_1.e) % vec3<u32>(32u))))));
    return _wgslsmith_mult_i32(2147483647i, var_1.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>) -> vec3<bool> {
    let var_0 = Struct_2(-reverseBits(-vec4<i32>(-1i, 1i, arg_1.x, arg_1.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-402f - 870f)) > _wgslsmith_f_op_f32(select(-945f, 1f, !all(vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1427f)));
    let var_3 = vec3<f32>(var_2, var_2, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1801f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(613f + var_2))))));
    var var_4 = -vec4<i32>(arg_1.x, u_input.b, func_4(func_2(~vec4<u32>(21176u, u_input.a, 0u, 21820u), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_3.x, -539f, var_3.x) * vec4<f32>(var_3.x, var_2, -1118f, var_3.x)), min(vec4<i32>(arg_1.x, u_input.b, arg_1.x, arg_0.x), var_0.a), 1i), Struct_1(vec3<bool>(false, false, true), _wgslsmith_f_op_vec3_f32(-var_3), true, _wgslsmith_f_op_f32(max(var_3.x, var_2)), ~0u), Struct_2(reverseBits(vec4<i32>(u_input.b, -1i, var_0.a.x, 26823i)))), abs(i32(-1i) * -30232i));
    return func_3(_wgslsmith_f_op_f32(round(-1522f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), vec2<bool>(false, true), all(!(!func_1(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(2147483647i, 15660i, u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(vec3<u32>(u_input.a, u_input.a, 33819u), ~vec3<u32>(u_input.a, 1u, u_input.a))));
}

