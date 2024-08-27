struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_3,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-1473f), Struct_1(-614f), Struct_1(1000f), Struct_1(-816f), Struct_1(1584f), Struct_1(-424f), Struct_1(-1185f), Struct_1(-1799f), Struct_1(-232f), Struct_1(-1250f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    var var_0 = !(!all(!(!arg_0)));
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(u_input.c, 10u)], Struct_2(~1u, -1603f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1147f, 493f))), vec3<i32>(_wgslsmith_mod_i32(~u_input.a, u_input.a), 1i, -36274i), global0[_wgslsmith_index_u32(~(~reverseBits(u_input.b)), 10u)]), abs(~(_wgslsmith_div_u32(1007u, u_input.d) << (_wgslsmith_mult_u32(51053u, 0u) % 32u))), Struct_1(732f), vec2<f32>(221f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(623f)))))));
    var var_2 = Struct_4(var_1.b, var_1, var_1, !(!vec4<bool>(var_1.b.b, all(arg_0.yx), var_1.b.b | arg_0.x, false)));
    global0 = array<Struct_1, 10>();
    var_2 = Struct_4(Struct_2(var_2.c.b.a, true, ~vec3<i32>(-14268i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(-2147483647i, -4100i)), -2147483647i), global0[_wgslsmith_index_u32(~u_input.e.x, 10u)]), var_2.c, Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.b.b.d.a)))), var_2.c.b, _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.a, 4294967295u, 65978u, var_2.b.b.a), vec4<u32>(30022u, 1u, var_2.b.c, var_2.a.a), vec4<u32>(104792u, u_input.c, var_2.b.b.a, 4294967295u)), vec4<u32>(15066u, var_1.b.a, 1u, 0u) ^ ~vec4<u32>(var_2.c.c, var_1.b.a, var_1.b.a, 8946u)), var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.c.e + var_1.e) + _wgslsmith_div_vec2_f32(var_2.c.e, var_2.b.e)) + var_2.b.e)), !var_2.d);
    return _wgslsmith_f_op_f32(select(var_2.c.e.x, var_2.a.d.a, countOneBits(~_wgslsmith_sub_u32(u_input.e.x, 1u)) >= ~var_1.c));
}

fn func_3(arg_0: f32, arg_1: f32) -> vec2<f32> {
    global0 = array<Struct_1, 10>();
    let var_0 = arg_0;
    let var_1 = Struct_3(Struct_1(var_0), Struct_2(1u, !(1i >= u_input.a), vec3<i32>(-abs(u_input.a), firstLeadingBit(~u_input.a), -u_input.a), Struct_1(1029f)), ~(~(~_wgslsmith_mult_u32(13880u, 1u))), Struct_1(319f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(358f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - 1517f))));
    global0 = array<Struct_1, 10>();
    var var_2 = var_1.b;
    return var_1.e;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool) -> Struct_4 {
    global0 = array<Struct_1, 10>();
    let var_0 = Struct_1(1711f);
    let var_1 = select(vec2<bool>(any(select(vec4<bool>(false, arg_2, arg_1.b, false), select(vec4<bool>(true, false, arg_2, true), vec4<bool>(arg_2, false, arg_2, false), arg_2), true)), true), select(!vec2<bool>(false, !arg_2), select(!(!vec2<bool>(arg_1.b, true)), select(select(vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(arg_1.b, true), vec2<bool>(false, false)), !vec2<bool>(arg_1.b, false), !vec2<bool>(arg_2, true)), vec2<bool>(false, false)), select(select(!vec2<bool>(true, arg_1.b), !vec2<bool>(arg_2, arg_1.b), arg_1.b & arg_1.b), select(vec2<bool>(false, false), !vec2<bool>(arg_2, true), arg_1.b), _wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(exp2(var_0.a)))), !any(select(!vec4<bool>(true, true, false, arg_2), select(vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(arg_2, false, false, false), vec4<bool>(arg_1.b, false, false, true)), select(vec4<bool>(arg_2, true, arg_2, true), vec4<bool>(arg_1.b, false, arg_1.b, false), arg_2))));
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    return Struct_4(arg_1, Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1206f, arg_0.x) - _wgslsmith_f_op_f32(var_0.a * arg_0.x))), Struct_2(u_input.c, var_1.x, -arg_1.c, var_0), ~arg_1.a, Struct_1(-378f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.a, var_0.a)))))), Struct_3(Struct_1(-1378f), arg_1, ~_wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(1u, u_input.e.x, 1u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, u_input.d, u_input.c), vec4<u32>(_wgslsmith_add_u32(33048u, arg_1.a), 1u, u_input.c, u_input.e.x)), 10u)], _wgslsmith_f_op_vec2_f32(arg_0 - arg_0)), vec4<bool>(arg_2, var_1.x, select(u_input.a != u_input.a, true, any(vec4<bool>(var_1.x, var_1.x, arg_1.b, arg_2))) | (~55692u > ~u_input.d), true && arg_1.b));
}

fn func_1(arg_0: vec2<bool>) -> Struct_4 {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(max(214f, -524f)))))), vec2<f32>(875f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1640f)))))), Struct_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(43929u, u_input.b, u_input.e.x) ^ select(vec3<u32>(1u, 1u, u_input.b), vec3<u32>(34600u, u_input.c, 47193u), arg_0.x), vec3<u32>(u_input.b ^ 1u, u_input.d, _wgslsmith_sub_u32(4484u, 0u))), arg_0.x, _wgslsmith_add_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), select(min(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(63873i, u_input.a, 2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 15934i, u_input.a), vec3<i32>(u_input.a, -37928i, u_input.a)), !vec3<bool>(arg_0.x, true, arg_0.x))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, 1107f), _wgslsmith_f_op_f32(2330f * 368f))))), arg_0.x);
    var var_1 = var_0.c.e;
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1036f)), _wgslsmith_f_op_f32(min(var_0.a.d.a, var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_0.d.xzz)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.d.a), var_0.c.b.d.a, var_0.b.e.x), vec3<bool>(select(true, any(vec4<bool>(var_0.c.b.b, true, arg_0.x, false)), any(select(vec3<bool>(false, false, false), var_0.d.xyy, arg_0.x))), !all(vec2<bool>(var_0.d.x, false)), arg_0.x)));
    var_1 = var_0.c.e;
    return func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(577f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1221f, -1612f)))), var_0.c.b, any(!(!vec3<bool>(false, arg_0.x, arg_0.x))));
}

fn func_5(arg_0: i32, arg_1: Struct_4) -> bool {
    var var_0 = arg_1.c;
    var_0 = func_1(select(func_1(!arg_1.d.xz).d.yw, vec2<bool>(var_0.b.b, true), vec2<bool>(arg_1.b.b.b, var_0.b.b))).b;
    let var_1 = ~arg_0;
    var var_2 = reverseBits(_wgslsmith_mod_vec4_u32(firstTrailingBit(min(~vec4<u32>(arg_1.c.b.a, 65122u, var_0.b.a, 5634u), vec4<u32>(1u, 1u, var_0.b.a, 0u))), min(~abs(vec4<u32>(arg_1.c.b.a, arg_1.c.c, u_input.e.x, 41121u)), ~(vec4<u32>(4294967295u, u_input.b, 26125u, u_input.b) << (vec4<u32>(35904u, var_0.b.a, u_input.c, 0u) % vec4<u32>(32u))))));
    let var_3 = ~_wgslsmith_clamp_i32(arg_1.a.c.x, -4590i, u_input.a);
    return -462f < _wgslsmith_f_op_f32(-389f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1243f, arg_1.c.d.a)), func_1(vec2<bool>(true, true)).b.e.x, var_0.b.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a & _wgslsmith_mult_i32(-u_input.a, ((u_input.a & -34273i) >> (countOneBits(u_input.b) % 32u)) >> (u_input.b % 32u));
    global0 = array<Struct_1, 10>();
    let var_1 = any(!vec4<bool>(false, true, !all(vec3<bool>(true, true, false)), func_5(countOneBits(u_input.a), func_1(vec2<bool>(true, false)))));
    global0 = array<Struct_1, 10>();
    var var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(1000f)), firstTrailingBit(func_4(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1434f, -1441f))), Struct_2(u_input.b & 78496u, false, vec3<i32>(-1i, -20894i, 0i), Struct_1(-1642f)), true).b.b.c.x));
}

