struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<bool, 13> = array<bool, 13>(true, true, false, false, true, false, false, false, true, false, false, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_2) -> bool {
    var var_0 = 4294967295u;
    var_0 = firstTrailingBit(0u);
    let var_1 = _wgslsmith_add_u32(~u_input.c, arg_2.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-302f, arg_0.b, arg_0.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_0.b, arg_0.b) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1016f, -752f, arg_0.b)))))));
    var var_3 = ~(select(~(~vec4<u32>(arg_2.x, 23995u, 0u, u_input.c)), ~vec4<u32>(u_input.b, 4294967295u, 14485u, 50660u), !select(vec4<bool>(global1[_wgslsmith_index_u32(arg_2.x, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], false, arg_0.a), vec4<bool>(global1[_wgslsmith_index_u32(35115u, 13u)], arg_0.a, true, global1[_wgslsmith_index_u32(4294967295u, 13u)]), true)) >> (~((vec4<u32>(1u, var_1, 95816u, 37888u) | vec4<u32>(1u, u_input.b, 4294967295u, 42591u)) << (vec4<u32>(59278u, 112193u, 4294967295u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return false;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-618f * 548f), arg_1))), -1408f);
    var var_1 = vec2<bool>(_wgslsmith_add_i32(-2147483647i, ~arg_2.x) < ~(u_input.a.x >> (88291u % 32u)), func_3(Struct_3(any(!vec3<bool>(false, global1[_wgslsmith_index_u32(10986u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)])), -1742f, abs(firstLeadingBit(u_input.a))), arg_2.x, arg_0.yw, Struct_2(-u_input.a.x)));
    var var_2 = select(vec2<bool>(true, true), select(select(vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x >> (1u % 32u), 13u)], false), vec2<bool>(true, var_1.x), true), vec2<bool>(arg_0.x < 0u, !func_3(Struct_3(var_1.x, arg_1, u_input.a), u_input.a.x, vec2<u32>(0u, arg_0.x), Struct_2(0i))), any(!(!vec3<bool>(global1[_wgslsmith_index_u32(arg_0.x, 13u)], var_1.x, global1[_wgslsmith_index_u32(84146u, 13u)])))), var_1.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(arg_1, 293f)), arg_1, _wgslsmith_f_op_f32(ceil(arg_1)), -1178f) + vec4<f32>(_wgslsmith_f_op_f32(-arg_1), 1000f, _wgslsmith_f_op_f32(ceil(1472f)), arg_1)) - vec4<f32>(arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -111f), -839f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_div_f32(1431f, _wgslsmith_f_op_f32(abs(arg_1))), 2124f)));
    var_2 = select(vec2<bool>(_wgslsmith_f_op_f32(-var_3.x) >= 205f, global1[_wgslsmith_index_u32(39949u, 13u)]), !select(!select(vec2<bool>(var_1.x, false), vec2<bool>(false, false), vec2<bool>(var_1.x, false)), !vec2<bool>(false, var_2.x), !var_2.x), select(!(!(!vec2<bool>(global1[_wgslsmith_index_u32(53248u, 13u)], var_2.x))), vec2<bool>(true, true), all(vec2<bool>(false, true))));
    return _wgslsmith_dot_vec4_u32(select(~arg_0, max(abs(arg_0), arg_0), false) >> (~arg_0 % vec4<u32>(32u)), countOneBits(arg_0));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(211f - arg_1.x), _wgslsmith_f_op_f32(191f * 267f), arg_1.x, _wgslsmith_f_op_f32(abs(arg_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1727f, -401f, arg_1.x, arg_1.x)))))), select(max(u_input.a.xzw, vec3<i32>(u_input.a.x, arg_2.a, u_input.a.x)) >> (~(vec3<u32>(arg_0.x, arg_0.x, 4294967295u) & vec3<u32>(arg_0.x, 19969u, arg_0.x)) % vec3<u32>(32u)), firstLeadingBit(-(vec3<i32>(u_input.a.x, -30058i, u_input.a.x) << (vec3<u32>(arg_0.x, u_input.c, u_input.b) % vec3<u32>(32u)))), vec3<bool>(any(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 13u)], global1[_wgslsmith_index_u32(u_input.c, 13u)]), vec2<bool>(false, false), global1[_wgslsmith_index_u32(70130u, 13u)])), !(arg_0.x != 32039u), !global1[_wgslsmith_index_u32(arg_0.x, 13u)])), false);
    global1 = array<bool, 13>();
    var var_1 = !all(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 13u)] && global1[_wgslsmith_index_u32(u_input.c, 13u)], true, var_0.c));
    let var_2 = _wgslsmith_mod_i32(25395i, _wgslsmith_dot_vec4_i32(abs(-firstTrailingBit(u_input.a)), u_input.a));
    var var_3 = Struct_3(!var_0.c, _wgslsmith_f_op_f32(232f - 706f), vec4<i32>(_wgslsmith_mult_i32(41965i << (~arg_0.x % 32u), var_0.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i | u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.zwy, var_0.b), arg_2.a), u_input.a.xxz), countOneBits(var_2), reverseBits(firstTrailingBit(abs(-10753i)))));
    return _wgslsmith_sub_u32(9140u, u_input.b | max(65934u, arg_0.x));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = vec4<u32>(~(u_input.b ^ countOneBits(select(u_input.b, 1u, false))), 15684u, 4294967295u, abs(func_4(vec2<u32>(~33138u, func_2(vec4<u32>(u_input.c, 32490u, 80003u, u_input.c), 689f, u_input.a.yxw)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2186f, -403f))))), Struct_1(-1i))));
    global0 = true || (_wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(u_input.a.x), arg_3.a, 1i, -arg_2), -u_input.a) >= _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_0, 48955i) | ~vec3<i32>(2147483647i, u_input.a.x, arg_2), u_input.a.wyy));
    var var_1 = select(arg_1, select(!arg_1, vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 13u)], !arg_1.x || global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.b), vec2<u32>(39511u, 4294967295u)), 13u)], all(vec3<bool>(true, false, arg_1.x)), all(select(vec2<bool>(false, arg_1.x), arg_1.yy, arg_1.zy))), vec4<bool>(any(arg_1.xz), global1[_wgslsmith_index_u32(u_input.c, 13u)], true, all(select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 13u)], false, arg_1.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 13u)], true, arg_1.x, global1[_wgslsmith_index_u32(4294967295u, 13u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(26524u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], arg_1.x))))), !select(arg_1, select(select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(62441u, 13u)]), arg_1, arg_1.x), select(arg_1, arg_1, global1[_wgslsmith_index_u32(u_input.b, 13u)]), arg_1.x || global1[_wgslsmith_index_u32(1u, 13u)]), true));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1722f) - _wgslsmith_f_op_f32(select(-1718f, -1072f, u_input.a.x >= 21422i))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1893f - -1135f) + _wgslsmith_f_op_f32(f32(-1f) * -706f))) + _wgslsmith_f_op_f32(-623f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-290f))))));
    var var_3 = firstLeadingBit(u_input.a.zwx) | ~u_input.a.zyz;
    return var_1.yy;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>) -> i32 {
    return (((_wgslsmith_dot_vec2_i32(u_input.a.xw, u_input.a.zz) ^ u_input.a.x) << (~0u % 32u)) & _wgslsmith_sub_i32(abs(abs(u_input.a.x)), arg_0.a)) | u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -687f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -198f) - -268f) - 1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1468f)), 1f)) + -812f));
    let var_0 = vec3<i32>(44693i, 8415i, _wgslsmith_div_i32(select(u_input.a.x >> (u_input.b % 32u), u_input.a.x, !global1[_wgslsmith_index_u32(~0u, 13u)]), func_5(Struct_2(_wgslsmith_div_i32(2147483647i, -33167i)), func_1(u_input.a.x, !vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(u_input.b, 13u)]), 0i, Struct_2(u_input.a.x)))));
    let var_1 = Struct_2(var_0.x);
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-141f, 372f, 799f, 125f))))))), vec3<i32>(~min(func_5(Struct_2(u_input.a.x), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 13u)])), 282i), -var_0.x, ~(u_input.a.x | firstTrailingBit(u_input.a.x))), global1[_wgslsmith_index_u32(~(~1u), 13u)]);
    var var_3 = 50308i;
    var var_4 = ~u_input.b;
    let var_5 = ~0u;
    var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-var_2.a), ~vec3<i32>(-1i, ~(-64908i), _wgslsmith_dot_vec3_i32(var_2.b, firstTrailingBit(var_0))), !(!func_1(~18516i, select(vec4<bool>(true, var_2.c, var_2.c, global1[_wgslsmith_index_u32(4294967295u, 13u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_5, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], var_2.c, false), false), 1i, var_1).x));
    var var_6 = var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(-_wgslsmith_clamp_i32(var_0.x, 2147483647i, var_2.b.x), ~var_0.x, ~(var_0.x << (var_5 % 32u)), var_0.x));
}

