struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
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

var<private> global0: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(147f, Struct_2(Struct_1(vec3<i32>(1436i, 1i, -19898i))), vec4<i32>(-52535i, 5616i, 1i, -22024i), Struct_1(vec3<i32>(0i, -40506i, -40075i)), Struct_2(Struct_1(vec3<i32>(1i, i32(-2147483648), -15979i)))), Struct_4(-2071f, Struct_2(Struct_1(vec3<i32>(11529i, -1i, 0i))), vec4<i32>(-1i, -30979i, i32(-2147483648), 0i), Struct_1(vec3<i32>(8865i, i32(-2147483648), -22079i)), Struct_2(Struct_1(vec3<i32>(0i, -1i, 2147483647i)))), Struct_4(820f, Struct_2(Struct_1(vec3<i32>(28071i, i32(-2147483648), -23485i))), vec4<i32>(402i, -30515i, 0i, -1695i), Struct_1(vec3<i32>(-6959i, i32(-2147483648), -14466i)), Struct_2(Struct_1(vec3<i32>(-1i, -29767i, 29468i)))), Struct_4(2060f, Struct_2(Struct_1(vec3<i32>(-3899i, 12i, -1i))), vec4<i32>(1i, i32(-2147483648), 2147483647i, -54207i), Struct_1(vec3<i32>(i32(-2147483648), -8331i, 1i)), Struct_2(Struct_1(vec3<i32>(-9329i, 53308i, -14645i)))), Struct_4(876f, Struct_2(Struct_1(vec3<i32>(-1i, 4659i, 0i))), vec4<i32>(0i, 0i, -10324i, -1i), Struct_1(vec3<i32>(7980i, 21117i, 2147483647i)), Struct_2(Struct_1(vec3<i32>(1i, -20580i, 17070i)))), Struct_4(1500f, Struct_2(Struct_1(vec3<i32>(2147483647i, -21365i, 12333i))), vec4<i32>(0i, 2147483647i, -21458i, -14649i), Struct_1(vec3<i32>(-16868i, 20230i, 0i)), Struct_2(Struct_1(vec3<i32>(16668i, 0i, 2147483647i)))), Struct_4(581f, Struct_2(Struct_1(vec3<i32>(21840i, i32(-2147483648), 21460i))), vec4<i32>(0i, i32(-2147483648), 0i, 29415i), Struct_1(vec3<i32>(-26382i, 2147483647i, -4502i)), Struct_2(Struct_1(vec3<i32>(1i, -1457i, i32(-2147483648))))), Struct_4(683f, Struct_2(Struct_1(vec3<i32>(35070i, 40894i, i32(-2147483648)))), vec4<i32>(1i, 0i, -1i, i32(-2147483648)), Struct_1(vec3<i32>(1i, 11587i, 1i)), Struct_2(Struct_1(vec3<i32>(29814i, -29024i, 24338i)))));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = vec2<u32>(1u, ~(~u_input.b.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(1751f + 1280f), -1304f, _wgslsmith_f_op_f32(-1061f * -1000f)))) - vec3<f32>(-1222f, _wgslsmith_f_op_f32(round(636f)), -842f)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-353f, 256f, -428f) + vec3<f32>(226f, -569f, 2002f))))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))) + 536f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1552f)), 1074f);
    global0 = array<Struct_4, 8>();
    var var_2 = ~_wgslsmith_mult_i32(firstTrailingBit(0i), _wgslsmith_div_i32(arg_0.a.x, 2147483647i));
    return ~min(4294967295u, ~(~(~u_input.b.x)));
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_4, 8>();
    var var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, ~0i, countOneBits(23811i), 0i), vec4<i32>(42821i, -59189i, 0i, 1i)), u_input.d.x);
    let var_1 = !select(vec2<bool>(!(u_input.d.x < u_input.d.x), false), vec2<bool>(true, true), true);
    var var_2 = ~abs(countOneBits(-u_input.d.x));
    let var_3 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~39282u, 0u, u_input.c.x), vec3<u32>(_wgslsmith_sub_u32(reverseBits(0u), u_input.c.x), _wgslsmith_sub_u32(~27704u, min(u_input.c.x, 4294967295u)), u_input.c.x)), func_3(Struct_1(vec3<i32>(~u_input.d.x, _wgslsmith_mod_i32(u_input.d.x, u_input.d.x), 0i))), u_input.a.x);
    return Struct_3(Struct_2(Struct_1(vec3<i32>(firstLeadingBit(u_input.d.x), u_input.d.x, u_input.d.x))), Struct_2(Struct_1(countOneBits(vec3<i32>(-1i, u_input.d.x, 2147483647i)))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1034f, 386f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(513f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(709f - 1698f)))), Struct_1(countOneBits(firstLeadingBit(~vec3<i32>(u_input.d.x, 2147483647i, u_input.d.x)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: u32, arg_3: vec4<i32>) -> f32 {
    let var_0 = func_2();
    var var_1 = ~_wgslsmith_add_vec4_u32(~(abs(vec4<u32>(arg_0.x, u_input.c.x, 1u, u_input.c.x)) | vec4<u32>(0u, arg_0.x, arg_0.x, arg_0.x)), vec4<u32>(1u, ~arg_0.x, _wgslsmith_mod_u32(78059u, abs(arg_2)), arg_2));
    let var_2 = arg_2;
    var var_3 = ~(-15236i);
    var_1 = _wgslsmith_mod_vec4_u32(abs(vec4<u32>(var_2, 0u, 0u, var_2)), vec4<u32>(0u, ~_wgslsmith_sub_u32(arg_0.x, 62162u), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c, arg_0.xz), var_1.zy), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 38976u, var_2, var_1.x), vec4<u32>(var_2, 1u, 1u, u_input.a.x)), reverseBits(12151u))) ^ vec4<u32>(~48640u, u_input.b.x, 4294967295u, u_input.a.x));
    return _wgslsmith_f_op_f32(step(var_0.c.x, var_0.c.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = arg_1.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(198f, 166f, -463f) - vec3<f32>(-639f, 1960f, arg_0.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, -112f) - vec3<f32>(-731f, arg_1.c.x, arg_1.c.x)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.x, -1303f)), _wgslsmith_f_op_f32(select(arg_1.c.x, arg_0.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(934f, 1926f, 1585f), vec3<f32>(-718f, arg_1.c.x, arg_0.x))))));
    var var_2 = Struct_2(arg_1.b.a);
    global0 = array<Struct_4, 8>();
    var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, arg_1.c.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, arg_1.c.x, var_1.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-933f, arg_0.x, arg_1.c.x) + vec3<f32>(arg_1.c.x, 1443f, var_1.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, var_1.x, 1407f)))))));
    return Struct_2(Struct_1(var_0.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(2147483647i);
    global0 = array<Struct_4, 8>();
    global0 = array<Struct_4, 8>();
    var var_1 = func_4(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(544f - -2028f), _wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.a.x, 1u, 28944u), -51028i, 10574u, vec4<i32>(-2147483647i, -12872i, 5581i, 5548i))))), _wgslsmith_f_op_f32(1133f * _wgslsmith_f_op_f32(f32(-1f) * -882f)), ~u_input.c.x < u_input.a.x)), func_2().c.x), Struct_3(func_2().a, Struct_2(func_2().a.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(103f, 152f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-104f, 237f)))), func_2().a.a));
    var var_2 = var_0;
    global0 = array<Struct_4, 8>();
    var var_3 = func_2().b.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, u_input.c.x, 4294967295u) ^ vec4<u32>(78110u, u_input.a.x, u_input.b.x, u_input.c.x), _wgslsmith_sub_vec4_u32(vec4<u32>(80162u, 24715u, 46601u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 11941u, 1u))), abs(_wgslsmith_dot_vec2_u32(u_input.b, u_input.a)), u_input.b.x)));
}

