struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 175f;

var<private> global1: array<bool, 22> = array<bool, 22>(false, true, false, true, true, false, true, true, false, false, true, false, false, true, true, true, true, false, true, false, false, true);

var<private> global2: array<bool, 4> = array<bool, 4>(false, true, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<f32>, arg_3: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_dot_vec2_u32(firstLeadingBit(arg_0.a.zy) & _wgslsmith_mult_vec2_u32(arg_0.a.yx, arg_0.a.yz), max(~(~vec2<u32>(35820u, 1302u)), min(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b.x, arg_1), _wgslsmith_sub_vec2_u32(arg_0.a.xy, vec2<u32>(1u, u_input.b.x))), vec2<u32>(38252u, _wgslsmith_mult_u32(24280u, u_input.c)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1183f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_2.x, -1000f)), arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))) - _wgslsmith_f_op_f32(round(arg_2.x))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_2.x))))), _wgslsmith_f_op_f32(round(-192f))) - arg_2.x);
    let var_3 = select(vec4<bool>(~(-33168i) < ~reverseBits(u_input.a.x), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(min(arg_0.a, u_input.b), u_input.b | vec3<u32>(68430u, 1u, var_0)), 4u)], global2[_wgslsmith_index_u32(arg_1, 4u)], !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.c, 0u), min(vec4<u32>(arg_0.a.x, 4294967295u, 4294967295u, arg_0.a.x), vec4<u32>(40491u, arg_1, 0u, arg_1))), 22u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x << (_wgslsmith_clamp_u32(1u | arg_0.a.x, 4627u, 4294967295u) % 32u), 4u)], global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(22249u, 63151u), 4u)], !all(vec4<bool>(global2[_wgslsmith_index_u32(arg_0.a.x, 4u)], true, global1[_wgslsmith_index_u32(arg_0.a.x, 22u)], true)), any(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(2938u, 4u)], true))), select(vec4<bool>(!any(vec3<bool>(true, global2[_wgslsmith_index_u32(14146u, 4u)], false)), global2[_wgslsmith_index_u32(min(arg_0.a.x, var_0), 4u)] & false, all(!vec2<bool>(false, global1[_wgslsmith_index_u32(arg_0.a.x, 22u)])), _wgslsmith_f_op_f32(arg_2.x - arg_2.x) == arg_2.x), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 4u)], true, false), vec4<bool>(true, false, global2[_wgslsmith_index_u32(arg_0.a.x, 4u)], false)), vec4<bool>(!global2[_wgslsmith_index_u32(abs(22492u), 4u)], false, select(arg_0.a.x <= 4294967295u, any(vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(u_input.c, 4u)])), 1551f >= arg_2.x), true)));
    return -24994i;
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = vec2<bool>(false, arg_2.a);
    var_0 = !select(vec2<bool>(true, true), !vec2<bool>(!global1[_wgslsmith_index_u32(u_input.b.x, 22u)], false & arg_2.a), true);
    var var_1 = vec4<u32>(_wgslsmith_div_u32(abs(firstTrailingBit(arg_2.d)), (arg_2.d | max(1u, arg_2.d)) ^ reverseBits(u_input.e.x)), min(arg_2.d, (~1u ^ ~arg_1.x) >> ((~arg_2.d | ~20190u) % 32u)), firstLeadingBit(~(~arg_1.x)), arg_1.x << (_wgslsmith_sub_u32(~u_input.b.x, ~(~0u)) % 32u));
    var var_2 = Struct_2(arg_1);
    var var_3 = Struct_2(vec3<u32>(arg_1.x << (_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(u_input.b.x, 4294967295u, arg_2.c)) % 32u), 9365u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, u_input.b.x), _wgslsmith_add_u32(var_2.a.x, var_1.x)) >> (_wgslsmith_add_u32(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 45589u, var_1.x), u_input.e)) % 32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-301f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(2015f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1437f)), _wgslsmith_f_op_f32(min(arg_2.b, arg_2.b))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1565f + _wgslsmith_f_op_f32(arg_2.b + 452f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(993f, arg_2.b))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>) -> f32 {
    var var_0 = u_input.a.xyy;
    var var_1 = select(!select(vec2<bool>(all(vec3<bool>(true, true, global1[_wgslsmith_index_u32(arg_1.x, 22u)])), true), select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 22u)]), global2[_wgslsmith_index_u32(arg_1.x, 4u)]), select(vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(arg_1.x, 22u)], true), vec2<bool>(true, true)), vec2<bool>(true, true)), !select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec2<bool>(false, false), global2[_wgslsmith_index_u32(arg_1.x, 4u)])), vec2<bool>(((true && global2[_wgslsmith_index_u32(4294967295u, 4u)]) & (1u < arg_1.x)) == global2[_wgslsmith_index_u32(0u, 4u)], !(arg_1.x == abs(u_input.b.x))), vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -197f) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1082f + 1861f), _wgslsmith_f_op_f32(-129f - -105f))), !global1[_wgslsmith_index_u32(u_input.e.x | _wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(0u, 83865u, 4294967295u)), 22u)]));
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(524f + _wgslsmith_f_op_f32(func_4(func_3(Struct_2(u_input.b), arg_1.x, vec2<f32>(-911f, 1707f), var_0.yx) << (4294967295u % 32u), ~_wgslsmith_mod_vec3_u32(u_input.e, u_input.e), Struct_1(true, -253f, ~0u, arg_1.x))))));
    var_1 = select(vec2<bool>(true, var_1.x), vec2<bool>(true, any(vec4<bool>(arg_0.x >= arg_0.x, all(vec3<bool>(true, var_2, true)), false, all(vec4<bool>(var_1.x, var_2, true, var_2))))), !(!(!vec2<bool>(var_1.x, true))));
    return -1000f;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> i32 {
    global2 = array<bool, 4>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1147f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<i32>(2147483647i, arg_2), u_input.b.yy))), -145f)));
    var var_1 = Struct_2(abs(u_input.e));
    let var_2 = !vec4<bool>(!any(!vec2<bool>(arg_0.a, global2[_wgslsmith_index_u32(4294967295u, 4u)])), !global1[_wgslsmith_index_u32(u_input.b.x, 22u)] && true, !(!(global1[_wgslsmith_index_u32(4294967295u, 22u)] == arg_0.a)), select(true, !(u_input.b.x != arg_0.c), (u_input.a.x & 1i) < _wgslsmith_mult_i32(-24914i, arg_2)));
    let var_3 = Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(max(arg_0.d, 26401u), ~arg_0.c, 4294967295u, u_input.b.x), select(reverseBits(vec4<u32>(4294967295u, 4294967295u, 0u, 16650u)), firstLeadingBit(vec4<u32>(0u, var_1.a.x, 2232u, 4294967295u)), true)), ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, u_input.b.x), 4294967295u, u_input.e.x), 4294967295u));
    return abs(_wgslsmith_clamp_i32(-abs(u_input.a.x), u_input.a.x, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 22>();
    let var_0 = _wgslsmith_mult_i32(~1i, func_1(Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x >> (u_input.c % 32u), u_input.c), 4u)], 1000f, max(_wgslsmith_dot_vec4_u32(vec4<u32>(58200u, 79222u, 0u, 1u), vec4<u32>(0u, u_input.c, 62351u, u_input.c)), u_input.c), max(66434u, _wgslsmith_div_u32(u_input.b.x, 30877u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(737f + -757f))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.d, u_input.d, 2147483647i, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.d, 2147483647i)), ~(i32(-1i) * -1331i))));
    let var_1 = ~countOneBits(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(74167u, u_input.c), firstLeadingBit(u_input.b.yy)), firstTrailingBit(vec2<u32>(89207u, 3938u) ^ u_input.e.yx)));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-303f - -196f) * _wgslsmith_div_f32(1558f, 1000f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec2_i32(u_input.a.zz, u_input.a.zx), vec2<u32>(u_input.e.x, 1u))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(468f, 664f)), _wgslsmith_div_vec2_f32(vec2<f32>(137f, 410f), vec2<f32>(-585f, 1354f)))))), !(!select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(var_1.x, 22u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], false), true), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 22u)]), !vec2<bool>(global2[_wgslsmith_index_u32(1u, 4u)], true)))));
    var var_3 = Struct_1(true, var_2.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_1, abs(u_input.e.yx), reverseBits(vec2<u32>(u_input.e.x, var_1.x))) >> ((min(var_1, vec2<u32>(u_input.b.x, 1065u)) >> (_wgslsmith_clamp_vec2_u32(u_input.b.yy, u_input.e.yz, u_input.e.zx) % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.b.xx), var_1.x << (31807u % 32u));
    let var_4 = ~(func_1(Struct_1(all(vec3<bool>(global1[_wgslsmith_index_u32(1u, 22u)], false, false)), 751f, 0u, 0u), var_3.b, firstLeadingBit(i32(-1i) * -24274i)) | (-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0), u_input.a.ww) ^ _wgslsmith_sub_i32(2147483647i, 1i)));
    global2 = array<bool, 4>();
    let var_5 = !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, var_3.a), vec2<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 4u)], global2[_wgslsmith_index_u32(var_3.c, 4u)]), vec2<bool>(global2[_wgslsmith_index_u32(var_3.d, 4u)], global2[_wgslsmith_index_u32(var_1.x, 4u)])), vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 22u)], var_3.a)), !(0u < u_input.c)));
    let var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(922f, var_2.x, -659f, 1000f)))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.b, _wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(step(1000f, var_3.b)), var_2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(8932i, _wgslsmith_div_i32(-func_3(Struct_2(vec3<u32>(77733u, var_3.c, u_input.e.x)), var_3.d, var_6.xx, vec2<i32>(2147483647i, -5094i)), -_wgslsmith_add_i32(1i, -5789i))), var_6, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_6.xzx) - vec3<f32>(var_3.b, var_3.b, -1544f))), var_6.xwx));
}

