struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<vec2<i32>, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: f32) -> vec3<i32> {
    var var_0 = vec3<f32>(1929f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -426f) * _wgslsmith_f_op_f32(-1478f + _wgslsmith_f_op_f32(abs(arg_2)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-152f * arg_2))) * -101f))));
    global0 = array<Struct_1, 24>();
    var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-arg_2)), arg_2, _wgslsmith_f_op_f32(-1105f + 727f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1371f, arg_2))) * arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1978f - _wgslsmith_f_op_f32(step(1646f, arg_2))) + _wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -571f))))), arg_1.zwx));
    var var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_0.x, arg_0.x), ~vec3<u32>(57952u, arg_0.x, arg_0.x)), _wgslsmith_div_vec3_u32(~vec3<u32>(0u, 1u, arg_0.x), vec3<u32>(arg_0.x, arg_0.x, arg_0.x) >> (vec3<u32>(arg_0.x, arg_0.x, arg_0.x) % vec3<u32>(32u))))), abs(~1i ^ u_input.b.x), true, global0[_wgslsmith_index_u32(arg_0.x, 24u)]);
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(1366f, 524f)), -1108f, arg_2) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(495f, var_0.x, -757f) + vec3<f32>(1510f, var_0.x, arg_2))))))));
    return firstLeadingBit(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a << (var_1.d.a % 32u), u_input.b.x, 2147483647i), abs(vec3<i32>(76364i, var_1.b, var_1.b))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(arg_0.a), min(-arg_1.b, ~2147483647i), !any(select(vec2<bool>(true, true), !vec2<bool>(false, arg_1.c), vec2<bool>(true, true))), arg_1.d);
    let var_1 = var_0.b;
    global1 = array<vec2<i32>, 19>();
    global1 = array<vec2<i32>, 19>();
    global1 = array<vec2<i32>, 19>();
    return abs(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b.zzz, ~func_3(vec2<u32>(arg_1.a.a, arg_0.a), vec4<bool>(var_0.c, arg_1.c, var_0.c, false), -516f)), vec3<i32>(~51653i, u_input.a, countOneBits(_wgslsmith_div_i32(var_0.b, 0i)))));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: vec4<bool>) -> bool {
    global1 = array<vec2<i32>, 19>();
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(0u, 24u)], -471i, true || (arg_2.x || false), global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, ~75242u))), 24u)]);
    global0 = array<Struct_1, 24>();
    global1 = array<vec2<i32>, 19>();
    let var_1 = Struct_2(Struct_1(var_0.a.a), _wgslsmith_dot_vec4_i32(-u_input.b, u_input.b), any(arg_2), var_0.a);
    return var_1.d.a < (max(~var_0.d.a, ~(~0u)) << (1u % 32u));
}

fn func_1() -> Struct_1 {
    var var_0 = !vec3<bool>(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(264f - 1944f) + _wgslsmith_f_op_f32(-1312f + -2221f)), select(u_input.b.zyw, func_2(Struct_1(1u), Struct_2(global0[_wgslsmith_index_u32(0u, 24u)], -34194i, false, Struct_1(1u))), true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, true)))), !all(vec2<bool>(false, true)), !(_wgslsmith_mod_u32(4294967295u, 70968u) < _wgslsmith_clamp_u32(4294967295u, 1u, 4294967295u)));
    var var_1 = ~abs(_wgslsmith_mult_u32(countOneBits(~0u), 19744u));
    var var_2 = -1000f;
    var_0 = !vec3<bool>(!var_0.x, var_0.x, true);
    var_1 = 129392u;
    return global0[_wgslsmith_index_u32(~(~93123u), 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-205f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2033f) * _wgslsmith_f_op_f32(490f - 809f)) + -718f)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(920f, -1029f)), _wgslsmith_f_op_f32(select(-1039f, -1000f, false))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -367f))));
    var var_2 = Struct_2(func_1(), u_input.b.x, select(true, all(vec2<bool>(u_input.a >= 2147483647i, func_4(-1118f, vec3<i32>(u_input.a, 2147483647i, -36104i), vec4<bool>(false, true, false, true)))), any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), Struct_1(~(~_wgslsmith_add_u32(15560u, 0u))));
    let var_3 = Struct_2(func_1(), u_input.a, !any(select(vec4<bool>(var_2.c, var_2.c, true, var_2.c), vec4<bool>(false, var_2.c, false, var_2.c), false)) || !var_2.c, func_1());
    let var_4 = var_3;
    global0 = array<Struct_1, 24>();
    let var_5 = var_4.a.a;
    var var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-285f, 246f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-928f - 1000f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(949f, 508f, -704f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(559f, -276f, 578f) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(112f, -711f, -667f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(280f, 2322f, 927f) + vec3<f32>(484f, -1000f, -386f))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-746f, 404f, 1306f)))))));
    global0 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_4.d.a, max(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_5, var_3.d.a, 4294967295u, 4294967295u), vec4<u32>(var_5, var_2.a.a, var_4.d.a, 4294967295u)), reverseBits(1u)), ~max(var_3.d.a, var_4.a.a)), ~var_4.a.a, 21292u), vec3<u32>(min(var_2.d.a, var_3.a.a), 1u >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(var_5, var_5), vec2<u32>(0u, var_5)) % 32u), ~var_3.a.a), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_6.xz))));
}

