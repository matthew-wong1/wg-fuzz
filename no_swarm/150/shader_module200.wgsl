struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: Struct_3,
    d: vec2<f32>,
    e: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

var<private> global2: bool = true;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = select(select(vec4<bool>(any(select(global0.a.b.wy, vec2<bool>(true, global0.b.b.x), false)), any(global0.e.b), false, global0.d), !(!vec4<bool>(global0.b.b.x, false, global0.e.b.x, true)), all(!select(vec4<bool>(global0.e.b.x, false, false, false), global0.e.b, global0.b.b))), select(!vec4<bool>(all(vec3<bool>(false, true, global0.a.b.x)), true, true, !arg_0), select(!global0.b.b, select(global0.b.b, global0.b.b, true), true), !(!select(global0.a.b, global0.e.b, global0.e.b.x))), true);
    var_0 = select(select(!vec4<bool>(!arg_0, global0.e.b.x, any(vec3<bool>(false, false, var_0.x)), any(var_0.xxz)), !(!(!vec4<bool>(global0.e.b.x, arg_0, false, global0.a.b.x))), global0.b.b), select(!vec4<bool>(true, false, var_0.x, !global0.a.b.x), !vec4<bool>(arg_0, true, !var_0.x, false), select(!(!vec4<bool>(global0.a.b.x, true, global0.e.b.x, false)), global0.a.b, select(select(vec4<bool>(false, var_0.x, true, var_0.x), global0.b.b, var_0.x), vec4<bool>(global0.a.b.x, var_0.x, false, global0.b.b.x), global0.a.b.x))), select(vec4<bool>(any(!vec2<bool>(true, var_0.x)), any(select(vec3<bool>(global0.b.b.x, arg_0, arg_0), vec3<bool>(false, arg_0, false), arg_0)), true, false), vec4<bool>(global0.d, global0.c >= _wgslsmith_f_op_f32(max(global0.c, global0.c)), true, 1i != (-1i ^ u_input.a)), !var_0.x));
    var var_1 = ~4294967295u;
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(-global0.c))))), global0.a);
    var_1 = 14192u;
    return _wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(22674u, 1u, 4294967295u), vec3<u32>(35369u, 0u, 0u)), 1u), ~_wgslsmith_mult_u32(4294967295u, 0u)), 18106u), reverseBits(~vec3<u32>(1u, 1u, 1u)));
}

fn func_2() -> Struct_1 {
    global1 = firstTrailingBit(20650u);
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.c, global0.c, 1561f, global0.c))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-990f, global0.c, -425f, 1084f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, global0.c, -2556f, -1753f) + vec4<f32>(global0.c, global0.c, 470f, -489f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1431f, 359f, -561f, global0.c))))))));
    global1 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~(~(~1u)), ~(~_wgslsmith_add_u32(1348u, 37965u))), firstLeadingBit(vec3<u32>(17973u, func_3(global0.a.b.x), firstLeadingBit(38075u)) | _wgslsmith_div_vec3_u32(max(vec3<u32>(50448u, 4294967295u, 0u), vec3<u32>(54431u, 4294967295u, 49727u)), vec3<u32>(82775u, 119546u, 4294967295u))));
    let var_1 = -1176f;
    global2 = global0.b.b.x;
    return Struct_1(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.b.x, -1i, 1i), global0.e.a, ~(vec4<i32>(global0.a.a.x, -29906i, 13815i, global0.a.a.x) << (vec4<u32>(4294967295u, 120813u, 1u, 1u) % vec4<u32>(32u)))), vec4<bool>(true, ((-2147483647i & global0.b.a.x) <= (global0.a.a.x << (1u % 32u))) && (_wgslsmith_f_op_f32(step(var_0.x, -933f)) <= _wgslsmith_f_op_f32(abs(var_1))), false, global0.e.b.x));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(arg_1.b.x * global0.c);
    global0 = Struct_2(global0.e, Struct_1(~max(u_input.b, vec4<i32>(-29974i, global0.b.a.x, u_input.a, u_input.a)), global0.e.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(f32(-1f) * -160f)) - 446f))), global0.b.b.x, func_2());
    var var_1 = func_2();
    var_1 = Struct_1(_wgslsmith_sub_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, global0.e.a.x, global0.b.a.x, global0.e.a.x) ^ u_input.b, var_1.a, _wgslsmith_add_vec4_i32(vec4<i32>(var_1.a.x, global0.e.a.x, -2147483647i, 1i), vec4<i32>(global0.b.a.x, var_1.a.x, var_1.a.x, var_1.a.x)))), ~select(-var_1.a, vec4<i32>(u_input.b.x, global0.e.a.x, 1i, -12167i) << (vec4<u32>(arg_1.a, arg_1.e, arg_1.a, arg_1.e) % vec4<u32>(32u)), all(vec3<bool>(true, var_1.b.x, true)))), vec4<bool>(true, true, !(_wgslsmith_f_op_f32(trunc(1167f)) > _wgslsmith_f_op_f32(-arg_1.b.x)), false));
    global2 = false;
    return _wgslsmith_sub_u32(~1u, 1u);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: u32, arg_3: Struct_1) -> Struct_5 {
    var var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_1.a, arg_1.e), firstTrailingBit(~(vec3<u32>(arg_1.a, 1u, 38401u) >> (vec3<u32>(arg_2, arg_0.a, arg_1.a) % vec3<u32>(32u)))) ^ vec3<u32>(~arg_2, 50783u, arg_1.a));
    global1 = ~var_0.x & arg_2;
    var var_1 = _wgslsmith_add_i32(-1i, abs(~_wgslsmith_dot_vec2_i32(~global0.e.a.xz, vec2<i32>(-29411i, 45886i))));
    global1 = 54587u;
    var var_2 = _wgslsmith_f_op_f32(round(-1257f));
    return Struct_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(380f, arg_0.d.x) + -221f), _wgslsmith_f_op_f32(f32(-1f) * -497f))))), Struct_1(global0.b.a, func_2().b));
}

fn func_5(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: f32) -> vec4<i32> {
    global2 = !(((_wgslsmith_sub_i32(arg_1.x, arg_0.b.a.x) & -36094i) <= _wgslsmith_mod_i32(select(arg_0.b.a.x, 9866i, arg_0.b.b.x), 1i)) || any(!func_2().b.zwx));
    global2 = true;
    var var_0 = Struct_5(_wgslsmith_f_op_f32(ceil(-111f)), Struct_1(-global0.b.a, !(!func_2().b)));
    var_0 = func_4(Struct_4(~56534u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1505f, 112f) * vec2<f32>(var_0.a, var_0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 764f)), global0.e.b.zz))), Struct_3(global0.e.b.x, vec2<bool>(all(global0.e.b.yw), true), var_0.b.b.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-377f, global0.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2, 241f)))), vec2<bool>(false, false))), ~min(_wgslsmith_div_u32(20032u, 1u), ~1u)), Struct_4(1u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.c, -253f), vec2<f32>(247f, -1331f))))), Struct_3(arg_0.b.b.x, var_0.b.b.wz, false), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -473f), -1000f), _wgslsmith_f_op_f32(f32(-1f) * -790f)), ~select(1u, 4294967295u, false)), 55291u, Struct_1(var_0.b.a << (vec4<u32>(1u, ~4294967295u, 1u, ~1u) % vec4<u32>(32u)), func_4(Struct_4(~36088u, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a, var_0.a), vec2<f32>(arg_0.a, arg_0.a))), Struct_3(false, vec2<bool>(true, true), arg_0.b.b.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, -907f), vec2<f32>(-384f, var_0.a), true)), ~4294967295u), Struct_4(func_1(Struct_3(var_0.b.b.x, vec2<bool>(var_0.b.b.x, false), arg_0.b.b.x), Struct_4(43036u, vec2<f32>(arg_2, var_0.a), Struct_3(true, var_0.b.b.yy, arg_0.b.b.x), vec2<f32>(var_0.a, 380f), 0u)), vec2<f32>(199f, arg_2), Struct_3(false, var_0.b.b.xy, global0.e.b.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-229f, -1872f))), 1u), 1u, arg_0.b).b.b));
    global1 = abs(~firstTrailingBit(1u));
    return reverseBits(min(-arg_0.b.a, var_0.b.a & ~vec4<i32>(-1i, 1i, -6678i, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    let var_1 = abs(~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 80464u, 100455u)), max(~vec3<u32>(4294967295u, 16849u, 0u), vec3<u32>(1u, 1u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1769f * 300f)))), func_5(func_4(Struct_4(func_1(Struct_3(false, global0.a.b.yz, false), Struct_4(var_1.x, vec2<f32>(-282f, global0.c), Struct_3(true, global0.a.b.zw, false), vec2<f32>(global0.c, 280f), 4294967295u)), vec2<f32>(-262f, -334f), Struct_3(true, vec2<bool>(global0.a.b.x, true), true), vec2<f32>(global0.c, 702f), ~var_1.x), Struct_4(var_1.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-648f, global0.c), vec2<f32>(global0.c, 1209f), global0.a.b.zw)), Struct_3(global0.d, global0.e.b.yw, false), vec2<f32>(-424f, global0.c), select(0u, var_1.x, global0.b.b.x)), 23419u, Struct_1(vec4<i32>(u_input.b.x, -1i, u_input.b.x, -2147483647i), func_2().b)), countOneBits(u_input.b.yww), global0.c), _wgslsmith_dot_vec3_u32(vec3<u32>(33399u, _wgslsmith_div_u32(~var_1.x, ~4294967295u), var_1.x), var_1), var_1.x);
}

