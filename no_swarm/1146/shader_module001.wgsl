struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> i32 {
    global0 = firstTrailingBit(~u_input.a.x);
    var var_0 = vec3<u32>(_wgslsmith_div_u32(~116037u | _wgslsmith_sub_u32(29975u, arg_1), 4294967295u), arg_1, ~(~43216u)) ^ (~select(vec3<u32>(arg_1, 52098u, 0u), vec3<u32>(0u, 61385u, 6629u), vec3<bool>(false, true, true)) | ~(~vec3<u32>(arg_1, arg_1, 16410u)));
    global0 = firstTrailingBit(u_input.b.x);
    let var_1 = Struct_1(vec4<bool>(false, false, true, any(vec2<bool>(true, true))), select(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, true), !vec4<bool>(true, false, select(true, false, true), true)));
    let var_2 = u_input.b;
    return _wgslsmith_dot_vec4_i32(firstLeadingBit(var_2), -_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, -43106i, var_2.x, var_2.x), var_2), _wgslsmith_mult_i32(u_input.a.x, 2147483647i), _wgslsmith_add_i32(var_2.x, u_input.b.x), ~2147483647i), abs(-vec4<i32>(-8193i, var_2.x, 22815i, u_input.c)), var_2 >> (~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u))));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> vec2<bool> {
    global0 = func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, -1073f, _wgslsmith_f_op_f32(max(arg_0.x, 1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 127f, 402f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_div_f32(arg_0.x, arg_0.x)), -1652f, 1092f)), 4294967295u);
    var var_0 = Struct_1(vec4<bool>(true, arg_1, false, any(vec2<bool>(true, true))), !select(select(vec4<bool>(arg_1, true, false, false), vec4<bool>(true, true, true, true), arg_1), vec4<bool>(!arg_1, false, true, !arg_1), any(vec3<bool>(arg_1, arg_1, arg_1))));
    let var_1 = abs(~_wgslsmith_div_vec4_i32(vec4<i32>(-u_input.c, u_input.a.x, countOneBits(u_input.c), ~u_input.a.x), u_input.b));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, 1481f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2868f, 1834f, arg_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 175f, 2065f) - vec3<f32>(-736f, -179f, 513f))), !any(var_0.a.yzx))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(-1081f, arg_0.x), arg_0.x, _wgslsmith_f_op_f32(1000f - arg_0.x))))) * vec3<f32>(arg_0.x, 704f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - 1228f)));
    var_0 = Struct_1(!select(select(var_0.a, vec4<bool>(false, true, false, true), !arg_1), select(select(var_0.b, vec4<bool>(true, var_0.a.x, arg_1, var_0.a.x), true), select(vec4<bool>(var_0.a.x, arg_1, arg_1, true), vec4<bool>(false, false, true, arg_1), vec4<bool>(var_0.a.x, var_0.a.x, true, arg_1)), vec4<bool>(arg_1, true, var_0.b.x, true)), arg_1), select(select(vec4<bool>(any(var_0.b.yx), true, select(var_0.a.x, false, var_0.b.x), all(vec4<bool>(true, arg_1, var_0.b.x, true))), vec4<bool>(true, false, select(arg_1, var_0.a.x, false), true), var_0.b), vec4<bool>(!arg_1, !arg_1, !arg_1, arg_1), !select(vec4<bool>(var_0.b.x, var_0.a.x, false, true), var_0.a, vec4<bool>(arg_1, false, true, var_0.a.x))));
    return var_0.a.ww;
}

fn func_1() -> f32 {
    var var_0 = false;
    let var_1 = all(select(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1250f, 1071f))), true), vec2<bool>(true, true), 2795i == _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -46390i), u_input.b.xy)));
    let var_2 = func_2(vec2<f32>(193f, 2347f), true);
    let var_3 = u_input.b.yw;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(207f, 691f, -1043f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1179f, 985f, -1800f)))))) - vec3<f32>(_wgslsmith_f_op_f32(-437f - _wgslsmith_f_op_f32(sign(-1754f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-493f)) + 117f)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-775f)))))));
    return _wgslsmith_f_op_f32(-205f * _wgslsmith_f_op_f32(select(var_4.x, _wgslsmith_f_op_f32(ceil(var_4.x)), var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(507f, -806f, -2110f, 766f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(405f, -649f, -976f, 1000f)))) * vec4<f32>(377f, 477f, 589f, _wgslsmith_f_op_f32(f32(-1f) * -410f))), vec4<f32>(907f, -847f, 159f, _wgslsmith_f_op_f32(func_1())), false));
    var var_1 = Struct_1(!select(vec4<bool>(true, true, false, var_0.x < 847f), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))), select(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, all(vec3<bool>(true, true, true)), true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true))), !all(vec3<bool>(false, false, false))));
    var var_2 = Struct_1(vec4<bool>(true, all(func_2(var_0.zx, false)), true, _wgslsmith_sub_i32(_wgslsmith_div_i32(15738i, u_input.c), _wgslsmith_div_i32(u_input.b.x, 1i)) == ~u_input.a.x), vec4<bool>(var_1.b.x, false, true, !(_wgslsmith_f_op_f32(var_0.x + var_0.x) != 1019f)));
    let var_3 = firstLeadingBit(min(min(countOneBits(u_input.a.zz & u_input.a.yz), _wgslsmith_clamp_vec2_i32(u_input.a.yz, vec2<i32>(1i, -38096i), u_input.a.zw)), u_input.b.yx));
    var var_4 = Struct_1(vec4<bool>(any(!(!var_2.b)), all(!var_1.a), false, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 692i, -30934i), vec3<i32>(var_3.x, u_input.c, u_input.a.x), u_input.a.xwz), u_input.a.zxz >> (vec3<u32>(16290u, 1u, 60113u) % vec3<u32>(32u))) > var_3.x), !vec4<bool>(_wgslsmith_div_f32(155f, var_0.x) != var_0.x, true, reverseBits(u_input.a.x) > u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(57762u, 1u, 2492u), vec3<u32>(0u, 0u, 19774u)) <= 1u));
    let var_5 = _wgslsmith_mod_i32(8740i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, abs(var_3.x), select(var_3.x, u_input.a.x, true)), vec3<i32>(1i, i32(-1i) * -1282i, var_3.x) << (vec3<u32>(~1u, ~1u, select(11481u, 30922u, true)) % vec3<u32>(32u))));
    var var_6 = -60165i;
    var var_7 = Struct_1(var_2.a, select(vec4<bool>(any(var_1.b.wxz), false, -309f > var_0.x, any(select(var_4.a.wx, vec2<bool>(var_2.a.x, var_1.a.x), var_4.a.wy))), var_4.b, select(select(vec4<bool>(var_2.a.x, false, var_2.a.x, var_4.b.x), var_4.b, true), select(vec4<bool>(false, var_4.b.x, false, var_4.b.x), select(vec4<bool>(false, var_1.b.x, var_4.b.x, var_4.a.x), vec4<bool>(true, var_1.a.x, var_2.a.x, var_2.a.x), vec4<bool>(true, true, var_2.b.x, var_2.b.x)), any(var_1.a.yyy)), !(!vec4<bool>(var_4.a.x, true, true, false)))));
    var_7 = Struct_1(vec4<bool>(false, false & any(var_2.a.wyw), true, all(!select(var_4.b.zyw, vec3<bool>(var_1.a.x, var_2.b.x, var_2.b.x), var_7.b.x))), vec4<bool>(true, var_2.a.x, any(!vec3<bool>(var_7.b.x, false, var_4.a.x)), select(true, true, select(true, var_7.b.x, var_4.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(38179i, 52104i, ~2147483647i), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(97755u, 4294967295u), ~vec2<u32>(19141u, 4294967295u)), ~_wgslsmith_sub_u32(107247u, 19903u), abs(50613u)) | 1u);
}

