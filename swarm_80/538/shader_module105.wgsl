struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(39312i));

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_2, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<bool>) -> f32 {
    var var_0 = countOneBits(~u_input.a.zzw);
    var var_1 = 417f;
    global2 = array<Struct_2, 18>();
    var_0 = u_input.a.xww;
    let var_2 = arg_1.x;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-499f)))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: i32) -> f32 {
    let var_0 = arg_0.x && !(true != any(!arg_0));
    global2 = array<Struct_2, 18>();
    let var_1 = _wgslsmith_dot_vec4_i32(arg_2, abs(abs(arg_2)));
    let var_2 = u_input.a | select(u_input.a, u_input.a, ~(~var_1) < -var_1);
    var var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 1u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(1364f * _wgslsmith_f_op_f32(max(548f, 853f)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32) -> vec3<bool> {
    global1 = 1u;
    var var_0 = vec4<i32>(-27621i, 39358i, _wgslsmith_dot_vec2_i32(~(-vec2<i32>(2147483647i, 17513i)), vec2<i32>(max(0i, reverseBits(37056i)), ~0i & _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, -1i), vec3<i32>(0i, 10466i, 19879i)))), countOneBits(~_wgslsmith_mod_i32(1i, -1i)) | _wgslsmith_mult_i32(~1i, countOneBits(0i << (arg_0.x % 32u))));
    var var_1 = !(!(u_input.a.x > ~2703u)) || (arg_1 != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-arg_1)) - 810f));
    var_1 = !(!(u_input.a.x >= 0u));
    global1 = ~max(u_input.a.x, 28911u);
    return select(vec3<bool>(true, false, false), select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !(true | any(vec3<bool>(false, true, true)))), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))) || select(true, !(arg_1 != arg_1), !(arg_1 > arg_1)));
}

fn func_2(arg_0: u32, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_div_f32(-309f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(411f, 1000f)))))));
    global2 = array<Struct_2, 18>();
    var var_1 = select(!func_4(~u_input.a, _wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true), Struct_3(1u, 15922u, Struct_2(vec2<u32>(arg_0, arg_0), global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 1u, Struct_1(23065i), Struct_1(6702i))), select(vec4<i32>(-14529i, 26706i, 2147483647i, -50372i), vec4<i32>(32344i, 1i, 1445i, -1i), false), _wgslsmith_dot_vec2_i32(vec2<i32>(-22648i, 17500i), vec2<i32>(-64537i, 2147483647i))))), func_4(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -752f)), func_4(u_input.a, 1197f));
    var var_2 = u_input.a.wzw ^ u_input.a.ywx;
    var_1 = vec3<bool>(func_4(vec4<u32>(u_input.a.x, ~arg_1, _wgslsmith_dot_vec3_u32(u_input.a.zxy, vec3<u32>(4294967295u, arg_1, 0u)), var_2.x), _wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec3_i32(vec3<i32>(-36536i, -21972i, -2147483647i), vec3<i32>(-13349i, 34514i, 6729i)), vec3<bool>(var_1.x, false, true)))).x && var_1.x, true, !var_1.x);
    return _wgslsmith_f_op_f32(exp2(var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(33685i >> (~firstLeadingBit(u_input.a.x) % 32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1672f, -821f)) - -654f), _wgslsmith_f_op_f32(trunc(1f))))));
    global0 = array<Struct_1, 1>();
    var var_2 = Struct_1(0i);
    let var_3 = !select(!vec4<bool>(true, all(vec3<bool>(true, false, false)), true, true), vec4<bool>(any(vec4<bool>(false, false, false, false)) != all(vec2<bool>(true, true)), all(vec4<bool>(false, true, true, true)) | any(vec3<bool>(false, false, false)), false, _wgslsmith_f_op_f32(func_1(vec3<i32>(23891i, var_2.a, -51296i), vec3<bool>(false, false, true))) == _wgslsmith_f_op_f32(func_2(u_input.a.x, 4294967295u))), !(4294967295u > u_input.a.x));
    let var_4 = Struct_2(~countOneBits(countOneBits(vec2<u32>(0u, 99358u))) | abs(u_input.a.wz), Struct_1(_wgslsmith_mult_i32(2147483647i | _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(var_2.a, var_2.a)), var_2.a)), (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 31964u, u_input.a.x, 25022u), vec4<u32>(32049u, u_input.a.x, u_input.a.x, 44997u)), _wgslsmith_div_u32(0u, u_input.a.x)) & _wgslsmith_clamp_u32(~1u, abs(u_input.a.x), ~26503u)) & (~(~4294967295u) >> (_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(11416u, 1u, 23058u, u_input.a.x)), u_input.a) % 32u)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x >> (0u % 32u), _wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.zw), min(4294967295u, 0u)))), 1u)], Struct_1(var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1374f, 611f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1, -1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) - vec2<f32>(1056f, 1145f))) * vec2<f32>(_wgslsmith_div_f32(-1000f, var_1), _wgslsmith_f_op_f32(197f + var_1))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, _wgslsmith_f_op_f32(round(var_1))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 521f) * vec2<f32>(-552f, var_1)))), u_input.a.yyw, var_1);
}

