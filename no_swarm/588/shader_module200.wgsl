struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: Struct_1;

var<private> global2: f32 = -504f;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-500f, global1.d, -223f, global1.b))), global1.a), _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(exp2(global1.b))), global1.c, 1541f);
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -232f), -1499f);
    global1 = Struct_1(vec4<f32>(var_0.a.x, var_0.d, _wgslsmith_f_op_f32(global1.b * global1.b), var_0.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)) * _wgslsmith_f_op_f32(global1.a.x * var_0.b)))), !var_0.c, -840f);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, -1618f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.x * 553f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d * -309f)))));
    global2 = _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(f32(-1f) * -1354f));
    return 1f;
}

fn func_2() -> vec2<u32> {
    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), global1.a.x)), global1.c, -659f);
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) - _wgslsmith_f_op_vec4_f32(global1.a + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.d, -1000f, global1.b, -1120f), global1.a) * vec4<f32>(global1.b, -1802f, global1.b, -424f)))), global1.b, vec2<bool>(false || global1.c.x, global1.c.x), 1445f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d - 1983f), _wgslsmith_f_op_f32(sign(global1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.b))), global1.b, _wgslsmith_div_f32(var_0.b, _wgslsmith_div_f32(var_0.b, global1.b))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, var_0.d, global1.a.x, global1.a.x) - vec4<f32>(var_0.a.x, global1.d, global1.d, var_0.a.x)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(427f, -289f, var_0.a.x, 1405f)))), global1.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.d))), var_0.a.x)), select(global1.c, vec2<bool>(89007u <= u_input.e, !all(vec3<bool>(global1.c.x, global1.c.x, false))), vec2<bool>(u_input.d <= _wgslsmith_sub_u32(u_input.e, u_input.e), all(!vec3<bool>(true, var_0.c.x, global1.c.x)))), -1297f);
    var var_2 = var_0;
    var var_3 = _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(1i, -17813i)) | -13063i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -24142i ^ u_input.b.x), _wgslsmith_sub_vec2_i32(countOneBits(u_input.a.wx), _wgslsmith_sub_vec2_i32(vec2<i32>(-40052i, 31143i), u_input.a.zw)))));
    return countOneBits(select(~vec2<u32>(48692u, reverseBits(u_input.e)), vec2<u32>(u_input.d, u_input.e), var_0.c.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(1674f - _wgslsmith_div_f32(global1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2))) - -128f)));
    global1 = arg_0;
    var var_1 = global1.a.zz;
    global2 = var_0;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, 2777f) * _wgslsmith_f_op_f32(abs(var_1.x)))));
    return arg_2;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_clamp_u32(countOneBits(52856u), 65825u, 9993u);
    var var_1 = u_input.c;
    let var_2 = Struct_1(_wgslsmith_div_vec4_f32(global1.a, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.b), -996f, _wgslsmith_f_op_f32(1036f - global1.b), 321f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1260f, global1.b, -1000f, global1.a.x)))))), _wgslsmith_f_op_f32(-global1.a.x), select(vec2<bool>(true, false), global1.c, !select(!global1.c, !global1.c, global1.c)), _wgslsmith_f_op_f32(f32(-1f) * -2087f));
    let var_3 = _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-340f, var_2.b, var_2.a.x, -599f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(2474f, -245f, 563f, global1.b) * vec4<f32>(1723f, 907f, var_2.d, var_2.b))) + _wgslsmith_f_op_vec4_f32(var_2.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1416f, var_2.a.x, var_2.b, global1.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1740f - var_2.a.x) - global1.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-767f, 847f), _wgslsmith_f_op_f32(min(global1.a.x, var_2.a.x)), false))), vec2<bool>(false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(423f + 101f), _wgslsmith_f_op_f32(1000f + -735f))))), select(vec2<u32>(0u ^ var_0, _wgslsmith_add_u32(u_input.d, 0u)), _wgslsmith_mod_vec2_u32(func_2(), vec2<u32>(0u, var_0) << (vec2<u32>(0u, 37646u) % vec2<u32>(32u))), select(vec2<bool>(true, true), select(var_2.c, vec2<bool>(true, false), var_2.c.x), !global1.c.x)) | (max(~vec2<u32>(0u, var_0), vec2<u32>(5657u, var_0)) | _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 20602u), vec2<u32>(u_input.e, 44344u))), 126f, vec4<bool>(false, -u_input.b.x != u_input.a.x, global1.c.x, all(global1.c))));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -1179f);
    return _wgslsmith_div_u32(var_0, ~var_0);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: u32) -> Struct_1 {
    global0 = arg_0.x;
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1570f, arg_0.x, arg_0.x, global1.a.x))), _wgslsmith_f_op_vec4_f32(-global1.a), arg_2 <= 4294967295u)), global1.a, global1.c.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, -1142f, global1.d, 226f) * _wgslsmith_f_op_vec4_f32(sign(global1.a))))))), global1.d, global1.c, 932f);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -630f);
    return var_0;
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> vec3<u32> {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global1.b, -1043f)))) + -516f));
    let var_0 = arg_0.d;
    let var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(20024u, _wgslsmith_add_u32(~u_input.d ^ 1u, _wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(0u, 1u)))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(28675u, u_input.d), reverseBits(vec2<u32>(0u, 23026u))) >> (vec2<u32>(25098u, reverseBits(countOneBits(79586u))) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-func_5(arg_0.a.yx, vec2<f32>(var_0, 1574f), u_input.e).a.zw), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d), 1276f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(956f, arg_0.b) * vec2<f32>(arg_0.a.x, -1000f))), arg_0.a.yy))));
    global0 = -1147f;
    return _wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, _wgslsmith_mult_u32(u_input.d, var_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(66797u, 12239u, var_1.x), vec3<u32>(0u, var_1.x, 1u))), (vec3<u32>(u_input.d, var_1.x, var_1.x) ^ vec3<u32>(3283u, var_1.x, var_1.x)) & ~vec3<u32>(0u, u_input.d, u_input.e)), vec3<u32>(~abs(u_input.e ^ 0u), 25511u, _wgslsmith_dot_vec2_u32(var_1, vec2<u32>(33800u, ~u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -515f;
    var var_0 = vec3<u32>(u_input.e, ~_wgslsmith_add_u32(u_input.e & 0u, 4294967295u), 60591u) | (func_6(func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global1.a.x) + vec2<f32>(1847f, 1295f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1992f, 861f)), func_1()), u_input.c) << (~(~(~vec3<u32>(u_input.d, 1u, u_input.d))) % vec3<u32>(32u)));
    global2 = 337f;
    var var_1 = 0i;
    var var_2 = firstLeadingBit(~vec4<u32>(~0u, ~var_0.x, firstLeadingBit(4294967295u), u_input.e) << (~(~vec4<u32>(1u, u_input.d, 4294967295u, u_input.d)) % vec4<u32>(32u)));
    var_2 = ~(firstLeadingBit(~vec4<u32>(var_2.x, var_2.x, 22509u, 50220u) << (~vec4<u32>(4294967295u, 1u, var_0.x, u_input.e) % vec4<u32>(32u))) << ((vec4<u32>(30606u, _wgslsmith_dot_vec2_u32(vec2<u32>(33367u, 0u), var_2.zx), 4294967295u, 4294967295u << (var_2.x % 32u)) & _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_2.x, var_0.x, 4294967295u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(43053u, var_0.x, var_2.x, 21302u), vec4<u32>(u_input.d, var_0.x, var_2.x, u_input.d)), vec4<u32>(4294967295u, 36426u, var_0.x, 1u))) % vec4<u32>(32u)));
    let var_3 = global1.a;
    var_2 = _wgslsmith_mod_vec4_u32(select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.e, var_0.x, u_input.d), vec4<u32>(var_2.x, var_0.x, 6149u, var_0.x), ~vec4<u32>(var_0.x, var_2.x, 4294967295u, var_2.x)), vec4<u32>(reverseBits(var_0.x) & ~u_input.e, _wgslsmith_dot_vec3_u32(var_2.ywy & var_2.xzz, vec3<u32>(61968u, 22593u, 39843u)), 11411u, 4294967295u), select(!vec4<bool>(global1.c.x, global1.c.x, global1.c.x, true), !select(vec4<bool>(true, global1.c.x, true, true), vec4<bool>(global1.c.x, false, global1.c.x, false), global1.c.x), true)), countOneBits(abs(~vec4<u32>(u_input.d, var_2.x, 1u, var_2.x))) ^ select(min(vec4<u32>(67058u, 73828u, u_input.d, u_input.e) & vec4<u32>(66428u, 9070u, u_input.d, var_2.x), _wgslsmith_sub_vec4_u32(vec4<u32>(79737u, 0u, var_2.x, var_0.x), vec4<u32>(u_input.d, 81893u, var_0.x, 9754u))), vec4<u32>(var_2.x, u_input.e, var_0.x, 4294967295u) << (vec4<u32>(24373u, var_0.x, u_input.e, 0u) % vec4<u32>(32u)), !select(vec4<bool>(global1.c.x, false, global1.c.x, true), vec4<bool>(false, true, global1.c.x, global1.c.x), vec4<bool>(global1.c.x, global1.c.x, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(u_input.a, vec4<i32>(u_input.b.x, -21474i, -29024i, 3262i) >> (~vec4<u32>(var_0.x, 4294967295u, 1u, var_0.x) % vec4<u32>(32u)), global1.c.x)), global1.a.wwy, _wgslsmith_f_op_vec3_f32(-global1.a.zyz), u_input.b.x);
}

