struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(1i, i32(-2147483648), 2147483647i, -12195i, 0i, 1i, -1i, -15271i, 0i, i32(-2147483648), 1i, -1i, -1i, 2147483647i, 2147483647i, -48138i, -64724i);

var<private> global1: array<Struct_2, 16>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0;
    let var_1 = ~abs(abs(vec3<u32>(1u, 1u, 1u)));
    global1 = array<Struct_2, 16>();
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(var_1.x, 17u)], var_1.x, var_0, -(~(-vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], 22741i, u_input.a) | _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.a), vec3<i32>(46342i, global0[_wgslsmith_index_u32(var_1.x, 17u)], -23530i)))), _wgslsmith_dot_vec2_i32(arg_0.c, vec2<i32>(-(~arg_0.a), i32(-1i) * -1712i)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(-694f, -593f)) - -1190f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1247f, -825f)) * -343f), -1859f));
    return 119f;
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = array<i32, 17>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1641f) + -129f)))));
    global1 = array<Struct_2, 16>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.a, true, vec2<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 17u)])))), _wgslsmith_div_f32(1867f, -858f))), _wgslsmith_f_op_f32(round(-1267f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-938f, 550f))))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_1(0i, true, vec2<i32>(global0[_wgslsmith_index_u32(0u, 17u)], 2147483647i)))))), 636f, select(!all(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, true)), true))));
    let var_2 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-9652i >> (arg_0 % 32u), -6859i), -_wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(-99501i, 32041i))), -13290i);
    return Struct_2(countOneBits(_wgslsmith_sub_i32(_wgslsmith_mod_i32(reverseBits(var_2.x), -2947i), 1i)), ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, arg_0) >> (vec2<u32>(4294967295u, 95138u) % vec2<u32>(32u)), vec2<u32>(0u, arg_0)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(37245u, 56953u), vec2<u32>(63752u, arg_0))), Struct_1(u_input.a, 10451u > abs(arg_0), _wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -1i, 2147483647i), var_2)), _wgslsmith_sub_vec3_i32(vec3<i32>(-(-70209i << (arg_0 % 32u)), ~min(2147483647i, -1i), 23948i), _wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.a, u_input.a << (0u % 32u), firstTrailingBit(0i)), _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(-13848i, 40882i, 12744i)), select(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(var_2.x, -23065i, u_input.a), vec3<bool>(false, false, true)), -vec3<i32>(global0[_wgslsmith_index_u32(22206u, 17u)], 0i, u_input.a)))), max(1i, -(~52167i)));
}

fn func_1() -> u32 {
    var var_0 = func_2(_wgslsmith_div_u32(_wgslsmith_mod_u32(~(~19669u), ~abs(1u)), 1u));
    global0 = array<i32, 17>();
    var var_1 = func_2(10216u);
    var_1 = Struct_2(_wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.c.a, u_input.a), u_input.a), abs(-38611i)), -_wgslsmith_div_i32(func_2(var_1.b).d.x, u_input.a), 27000i), countOneBits(0u), Struct_1(var_0.a, 250f <= _wgslsmith_div_f32(-418f, _wgslsmith_f_op_f32(floor(1347f))), -max(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 8668i), vec2<i32>(28307i, global0[_wgslsmith_index_u32(var_1.b, 17u)])), var_1.d.xz)), var_1.d, -50598i);
    var_0 = global1[_wgslsmith_index_u32(var_0.b, 16u)];
    return ~(~select(64268u, ~select(17024u, var_0.b, var_0.c.b), var_0.c.b));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = !select(!vec2<bool>(true, func_2(4294967295u).c.b), select(select(vec2<bool>(true, arg_0.c.b), !vec2<bool>(true, arg_0.c.b), arg_0.c.b), !select(vec2<bool>(false, false), vec2<bool>(arg_0.c.b, true), false), any(vec3<bool>(false, arg_0.c.b, arg_0.c.b))), vec2<bool>((arg_0.c.b & arg_0.c.b) || false, false));
    var var_1 = countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(-7394i, 2147483647i, -14763i, arg_0.c.a), vec4<i32>(global0[_wgslsmith_index_u32(91088u, 17u)], u_input.a, u_input.a, -29806i)), -vec4<i32>(78895i, -u_input.a, global0[_wgslsmith_index_u32(arg_0.b, 17u)], arg_0.c.c.x)));
    global0 = array<i32, 17>();
    return arg_0.c;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(231f - _wgslsmith_f_op_f32(func_3(func_4(Struct_2(18949i, 35495u, Struct_1(2147483647i, true, vec2<i32>(-5662i, -2147483647i)), vec3<i32>(global0[_wgslsmith_index_u32(1u, 17u)], arg_0.a, arg_0.c.x), arg_0.a))))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1118f))));
    global0 = array<i32, 17>();
    global1 = array<Struct_2, 16>();
    return func_4(Struct_2(global0[_wgslsmith_index_u32(1u ^ ~func_1(), 17u)], 4294967295u, arg_0, -(-vec3<i32>(u_input.a, arg_0.a, u_input.a) ^ vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(60140u, 17u)], -2147483647i)), -global0[_wgslsmith_index_u32(36816u, 17u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 16>();
    global0 = array<i32, 17>();
    var var_0 = func_5(func_4(Struct_2(~u_input.a, func_1(), func_2(firstLeadingBit(25992u)).c, max(-vec3<i32>(2147483647i, -1145i, -12104i), vec3<i32>(-2147483647i, -1i, u_input.a)), abs(1i))));
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_add_u32(1u, 22754u) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(48954u, 1u), ~vec2<u32>(19286u, 31345u)) % 32u)), vec2<u32>(~1u, 10014u));
    global1 = array<Struct_2, 16>();
    var var_2 = !vec4<bool>(!(!select(var_0.b, true, var_0.b)), true, all(select(vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(true, var_0.b, false), select(vec3<bool>(false, var_0.b, true), vec3<bool>(var_0.b, true, true), vec3<bool>(true, false, true)))), -2147483647i < _wgslsmith_div_i32(_wgslsmith_div_i32(var_0.c.x, -1i), -u_input.a));
    let var_3 = vec2<bool>(func_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1, 38495u, 4651u) << (vec4<u32>(0u, var_1, var_1, var_1) % vec4<u32>(32u)), vec4<u32>(var_1, var_1, var_1, var_1) << (vec4<u32>(4294967295u, 25833u, var_1, var_1) % vec4<u32>(32u)))).c.b, any(vec4<bool>(var_2.x, any(var_2.ww), var_0.b, var_2.x)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-258f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -624f)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_f32(-var_4), vec2<f32>(var_4, var_4), func_1() & select(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1, var_1, var_1), vec4<u32>(var_1, var_1, var_1, 48501u)), 1u, func_2(~var_1).c.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_4, var_4, 1000f) - vec4<f32>(var_4, -478f, var_4, var_4)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, 1150f, 1390f, var_4) * vec4<f32>(var_4, 237f, var_4, var_4)), var_2.x)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, var_4, var_4, var_4)), vec4<f32>(-1363f, var_4, 1391f, var_4), !vec4<bool>(var_0.b, var_0.b, true, true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4, var_4, var_4, -1098f), vec4<f32>(var_4, 1181f, -783f, -1581f), true))))));
}

