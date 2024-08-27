struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false));

var<private> global2: i32 = i32(-2147483648);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: i32) -> bool {
    let var_0 = !(!global0.xz);
    let var_1 = vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 51561u), countOneBits(vec2<u32>(55848u, 27137u))), ~reverseBits(_wgslsmith_add_u32(~41981u, abs(22594u))));
    global0 = !(!select(!(!vec3<bool>(global0.x, false, false)), select(vec3<bool>(false, var_0.x, global0.x), select(vec3<bool>(false, true, global0.x), vec3<bool>(false, false, false), false), vec3<bool>(var_0.x, global0.x, var_0.x)), any(select(vec2<bool>(false, var_0.x), var_0, global0.x))));
    var var_2 = Struct_1(~max(_wgslsmith_mult_i32(-14923i, _wgslsmith_clamp_i32(arg_0.x, arg_2, arg_2)), ~(~u_input.c.x)), global1[_wgslsmith_index_u32(var_1.x, 13u)], _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -878f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, 607f)) - 1f), arg_1), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(1754f * arg_1)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(928f, arg_1, 1033f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, 1073f, arg_1))))), ~u_input.a != reverseBits(arg_2)))), var_0, _wgslsmith_sub_i32(~firstLeadingBit(abs(-3838i)), -10250i));
    var var_3 = Struct_2(vec4<bool>(19189u != ~(0u & var_1.x), !(!var_0.x) | true, !var_2.d.x, !(!(global0.x | true))), -17113i);
    return false;
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    let var_0 = Struct_3(Struct_2(select(vec4<bool>(true, global0.x, true != global0.x, global0.x != global0.x), vec4<bool>(true, true, func_3(u_input.c.yx, arg_0.x, -1i), true), select(vec4<bool>(global0.x, true, true, global0.x), select(global1[_wgslsmith_index_u32(109568u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], global0.x), vec4<bool>(true, global0.x, global0.x, true))), u_input.d), Struct_2(!(!vec4<bool>(global0.x, true, true, true)), _wgslsmith_clamp_i32(~(-30281i), _wgslsmith_mod_i32(u_input.b, u_input.a), -3266i) & -6192i), global0.x);
    let var_1 = firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(1u, 1u, 41994u) ^ _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 63948u), vec2<u32>(0u, 4294967295u), global0.yx), vec2<u32>(4294967295u, 1u)), reverseBits(~1u), _wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 49383u, 32440u, 29863u), vec4<u32>(1u, 35378u, 11715u, 0u))), ~vec4<u32>(24488u, 4294967295u, 1u, 6342u))));
    global2 = var_0.b.b;
    var var_2 = var_0.b;
    let var_3 = var_0.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -285f)));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global1 = array<vec4<bool>, 13>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, 286f)))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-arg_0.c.x)), arg_0.c.x));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(exp2(arg_0.c.x)), var_0.x, 1f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2134f) - _wgslsmith_f_op_f32(-var_0.x)), var_0.x, 618f, -1949f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1005f, var_0.x, -701f, arg_0.c.x) + vec4<f32>(-1613f, var_0.x, arg_0.c.x, 797f)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-336f, arg_0.c.x, var_0.x, var_1.x)))))));
    global0 = arg_0.b.zww;
    return Struct_2(!(!vec4<bool>(true, true, global0.x, false != global0.x)), _wgslsmith_mod_i32(-arg_0.a, -1876i));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> vec4<bool> {
    global0 = vec3<bool>(true & any(vec4<bool>(true, true, arg_0.x, all(global1[_wgslsmith_index_u32(1u, 13u)]))), (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u))) != ~(~1u)) & all(!select(vec4<bool>(true, arg_2.a.x, arg_2.a.x, true), global1[_wgslsmith_index_u32(0u, 13u)], global0.x)), false);
    global1 = array<vec4<bool>, 13>();
    var var_0 = func_4(Struct_1(_wgslsmith_div_i32(~(-2147483647i), arg_1.b >> (_wgslsmith_clamp_u32(12893u, 4294967295u, 1u) % 32u)), select(select(vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(min(0u, 4294967295u), 13u)], true), !select(vec4<bool>(global0.x, true, global0.x, false), arg_2.a, false), select(global1[_wgslsmith_index_u32(~15426u, 13u)], select(vec4<bool>(true, arg_1.a.x, false, false), arg_2.a, vec4<bool>(arg_1.a.x, false, global0.x, arg_2.a.x)), vec4<bool>(global0.x, false, arg_1.a.x, true))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1049f - arg_3) + _wgslsmith_f_op_f32(max(526f, -187f))), _wgslsmith_f_op_f32(func_2(vec2<f32>(450f, arg_3))), 1053f), vec2<bool>(select(any(vec3<bool>(true, false, false)), any(arg_2.a), arg_0.x | arg_0.x), arg_1.a.x), -_wgslsmith_add_i32(0i, arg_2.b)));
    global1 = array<vec4<bool>, 13>();
    global0 = select(select(select(select(arg_0.zyz, arg_0.yyy, arg_2.a.wxx), select(arg_1.a.zwy, arg_2.a.yww, vec3<bool>(global0.x, true, true)), !arg_2.a.zwx), !vec3<bool>(arg_1.a.x, global0.x, var_0.a.x), arg_1.a.ywz), arg_1.a.xyy, arg_2.a.wzy);
    return !select(arg_2.a, select(select(select(global1[_wgslsmith_index_u32(4294967295u, 13u)], vec4<bool>(false, arg_2.a.x, false, arg_2.a.x), arg_1.a.x), vec4<bool>(arg_2.a.x, true, arg_0.x, arg_1.a.x), arg_0.x), select(vec4<bool>(true, var_0.a.x, var_0.a.x, false), vec4<bool>(arg_0.x, false, arg_0.x, false), arg_2.a), var_0.a), var_0.a);
}

fn func_5(arg_0: Struct_1) -> i32 {
    var var_0 = -1147f;
    let var_1 = 1049f;
    global1 = array<vec4<bool>, 13>();
    let var_2 = Struct_2(!global1[_wgslsmith_index_u32(1u, 13u)], u_input.a);
    var var_3 = arg_0;
    return _wgslsmith_dot_vec2_i32(max(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_3.e, u_input.b), 17375i, _wgslsmith_mod_i32(u_input.d, var_2.b)), i32(-1i) * -2147483647i), vec2<i32>(~_wgslsmith_sub_i32(arg_0.a, 3295i), _wgslsmith_div_i32(_wgslsmith_div_i32(var_3.e, u_input.c.x), -arg_0.a))), select(max(u_input.c.xy, select(u_input.c.xx, select(vec2<i32>(0i, u_input.c.x), vec2<i32>(arg_0.e, arg_0.a), vec2<bool>(true, false)), global0.x)), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.c.zy, vec2<i32>(var_2.b, 2147483647i)) | _wgslsmith_div_vec2_i32(u_input.c.zz, vec2<i32>(var_2.b, u_input.a)), vec2<i32>(21566i, arg_0.e)), !global0.zy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!(!(all(global0.yz) | any(vec4<bool>(global0.x, false, global0.x, false)))), !(!(!all(vec4<bool>(true, global0.x, true, false)))), false);
    global1 = array<vec4<bool>, 13>();
    let var_1 = 1u;
    let var_2 = 131f;
    global1 = array<vec4<bool>, 13>();
    let var_3 = Struct_1(_wgslsmith_add_i32(min(_wgslsmith_sub_i32(u_input.d, u_input.b | u_input.d), -18022i ^ u_input.c.x), 0i), vec4<bool>(false, false, any(select(vec4<bool>(var_0.x, true, global0.x, true), global1[_wgslsmith_index_u32(25486u, 13u)], all(vec2<bool>(global0.x, true)))), global0.x), vec3<f32>(_wgslsmith_f_op_f32(639f - 199f), _wgslsmith_f_op_f32(trunc(-420f)), _wgslsmith_f_op_f32(-var_2)), vec2<bool>(global0.x, (true & !global0.x) || var_0.x), _wgslsmith_mod_i32(func_5(Struct_1(~2147483647i, func_1(vec4<bool>(global0.x, true, global0.x, var_0.x), Struct_2(vec4<bool>(false, false, false, true), 2159i), Struct_2(vec4<bool>(global0.x, true, var_0.x, global0.x), 1i), var_2), _wgslsmith_f_op_vec3_f32(vec3<f32>(135f, -1324f, 138f) * vec3<f32>(-115f, var_2, 128f)), global0.yz, 1i)), _wgslsmith_sub_i32(u_input.d, _wgslsmith_dot_vec3_i32(~vec3<i32>(387i, u_input.d, -2147483647i), vec3<i32>(1i, -26603i, u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_1, ~4294967295u, var_1), ~var_3.e, abs(select(_wgslsmith_add_i32(reverseBits(10306i), -10461i), _wgslsmith_sub_i32(u_input.d, select(var_3.a, var_3.e, false)), global0.x)), vec2<f32>(_wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1169f + var_3.c.x))), var_3.c.x));
}

