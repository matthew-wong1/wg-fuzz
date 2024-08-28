struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(85256i, true), true, Struct_1(-13402i, true), 508f, Struct_1(-1i, false)), Struct_2(Struct_1(0i, false), true, Struct_1(9943i, false), -514f, Struct_1(i32(-2147483648), false)), Struct_2(Struct_1(-29430i, false), false, Struct_1(-7810i, true), -1939f, Struct_1(2147483647i, true)), Struct_2(Struct_1(2147483647i, false), true, Struct_1(13373i, true), -395f, Struct_1(2147483647i, true)), Struct_2(Struct_1(15914i, true), false, Struct_1(-1i, false), -1000f, Struct_1(1i, true)), Struct_2(Struct_1(-1i, true), true, Struct_1(-24322i, false), 992f, Struct_1(17624i, false)), Struct_2(Struct_1(17158i, true), true, Struct_1(21162i, true), -202f, Struct_1(1i, false)), Struct_2(Struct_1(22848i, false), true, Struct_1(19084i, true), -2505f, Struct_1(-48191i, true)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: i32, arg_1: Struct_5, arg_2: Struct_4, arg_3: i32) -> f32 {
    global0 = array<Struct_2, 8>();
    var var_0 = 1671f;
    let var_1 = arg_1;
    var_0 = arg_1.a;
    let var_2 = 0u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-800f - -1493f)) + arg_1.b);
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    var var_0 = arg_0.b;
    var var_1 = arg_0.d;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1013f, _wgslsmith_f_op_f32(arg_0.d + arg_0.d), _wgslsmith_f_op_f32(max(1686f, arg_0.d)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.d, arg_0.d, arg_0.d))))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1081f, -1007f, 1049f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -257f, arg_0.d))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_4 {
    global0 = array<Struct_2, 8>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(0i, Struct_5(arg_0.x, 505f), Struct_4(vec4<u32>(0u, 0u, 0u, 0u), vec2<u32>(u_input.b.x, 1u), vec4<i32>(arg_2.a, 36624i, arg_2.a, u_input.a)), ~arg_2.a)), _wgslsmith_f_op_f32(step(1f, 2501f)), 1102f) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_0)))), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(arg_2.a ^ 2147483647i, true), arg_2.b, Struct_1(-13950i, arg_1.x && true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x))), arg_2))), select(select(!(!arg_1.ywy), vec3<bool>(all(arg_1.zz), false, arg_1.x), !(!arg_1.zwy)), !(!(!arg_1.yyx)), !arg_1.yww)));
    let var_1 = vec4<u32>(~firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 20397u, 0u), select(vec3<u32>(u_input.d.x, 60017u, u_input.b.x), vec3<u32>(38072u, u_input.b.x, u_input.b.x), vec3<bool>(arg_1.x, false, arg_2.b)))), ~u_input.d.x, 12612u, ~(~4294967295u) >> (countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(61416u, 4294967295u) | vec2<u32>(u_input.d.x, u_input.b.x), select(u_input.d.zx, u_input.d.xy, vec2<bool>(true, false)))) % 32u));
    global0 = array<Struct_2, 8>();
    let var_2 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x));
    return Struct_4(var_1, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.d.x, var_1.x, 1999u), countOneBits(37102u)) & _wgslsmith_div_vec2_u32(u_input.d.yy ^ vec2<u32>(var_1.x, u_input.b.x), u_input.b.zz & u_input.d.xz), vec2<u32>(~_wgslsmith_div_u32(22765u, var_1.x), _wgslsmith_div_u32(~u_input.d.x, u_input.d.x))), abs(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -1i, -1i), vec3<i32>(58352i, -15231i, 2147483647i)), vec3<i32>(u_input.c, -1i, -1i)), u_input.a | (arg_2.a >> (var_1.x % 32u)), ~u_input.c, countOneBits(arg_2.a) ^ min(u_input.a, -3702i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    var var_0 = vec4<bool>(u_input.c == ((i32(-1i) * -u_input.c) ^ _wgslsmith_mult_i32(select(u_input.c, -1i, true), 2147483647i)), true, true, true);
    let var_1 = func_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1427f), _wgslsmith_f_op_f32(step(932f, 1035f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1162f + -860f)), 618f), select(vec4<bool>(false, all(!vec4<bool>(false, false, false, var_0.x)), !any(var_0.zyy), any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), var_0.xw))), !(!select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, true, var_0.x, true))), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), !vec4<bool>(var_0.x, false, false, var_0.x)), vec4<bool>(var_0.x && var_0.x, var_0.x, !var_0.x, true && var_0.x), !select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), true))), Struct_1(11523i, any(!select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(false, false, true, true), false))));
    let var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1151f * 852f))), 1444f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(376f)), _wgslsmith_f_op_f32(227f + _wgslsmith_f_op_f32(func_2(u_input.a, Struct_5(346f, 473f), var_1, u_input.a)))), -1103f), _wgslsmith_add_i32(1i, ~((14869i << (var_1.a.x % 32u)) & ~(-60487i))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_2.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(210f, -148f, var_3, var_3), _wgslsmith_f_op_vec4_f32(-var_2.a), any(var_0.yxx))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_2.a, vec4<f32>(var_3, 1409f, 604f, 131f))))))));
    var var_5 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(var_4, var_4)), vec4<f32>(var_3, var_2.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(902f + var_2.a.x), _wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(var_2.a.x + -2958f))))), var_4));
    let var_6 = Struct_2(Struct_1(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x)) != _wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(sign(-1931f)))), any(vec4<bool>(var_0.x, var_0.x, any(vec2<bool>(var_0.x, false)), true)), Struct_1(var_2.b, true), var_5.x, Struct_1(reverseBits(-(-5871i >> (u_input.b.x % 32u))), var_5.x == var_2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer((var_1.b.x << ((5278u >> (var_1.b.x % 32u)) % 32u)) >> (u_input.d.x % 32u), abs(abs(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(var_1.a.wyz, vec3<u32>(var_1.b.x, u_input.b.x, 238u)), vec3<u32>(u_input.b.x, 1u, u_input.b.x)))));
}

