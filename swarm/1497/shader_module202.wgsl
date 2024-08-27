struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_1, 10>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global1 = array<Struct_1, 10>();
    var var_0 = true;
    var var_1 = u_input.b;
    global0 = 48984u;
    return Struct_2(firstTrailingBit(u_input.b >> ((u_input.b & ~u_input.b) % vec4<u32>(32u))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c, arg_0.c, _wgslsmith_f_op_f32(abs(1385f)), 701f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.c, arg_0.c, arg_0.e, arg_0.c))))))), arg_0, arg_0, 29604u ^ var_1.x);
}

fn func_3() -> Struct_1 {
    global0 = reverseBits(~u_input.b.x);
    var var_0 = ~_wgslsmith_sub_i32(-1i | u_input.a, ~(-2147483647i));
    var var_1 = func_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(u_input.d.x), u_input.d.x), ~u_input.d.ww ^ ~u_input.d.yx), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(326f - 542f) * -1000f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(3116f)), _wgslsmith_f_op_f32(1277f - 374f)))), vec3<i32>(u_input.d.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.e.x, u_input.b.x), vec3<u32>(4294967295u, 51643u, u_input.e.x)) % 32u), u_input.d.x, 9708i), -406f));
    var_1 = Struct_2(vec4<u32>(abs(82214u), ~1u, 4294967295u, var_1.d.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_1.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b))), _wgslsmith_f_op_vec4_f32(var_1.b - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.e, 816f, -1000f, -1000f), vec4<f32>(-112f, 220f, 2158f, 760f)), vec4<f32>(442f, -228f, var_1.d.c, 671f)))), vec4<bool>(all(vec2<bool>(true, false)), false, false, any(vec4<bool>(true, false, false, false))))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, ~firstLeadingBit(~var_1.d.b)), 10u)], global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(_wgslsmith_mult_u32(78512u, 0u), 1u)), 10u)], var_1.a.x);
    var var_2 = ~var_1.c.d.x;
    return func_2(global1[_wgslsmith_index_u32(u_input.e.x, 10u)]).d;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = 0u;
    var var_0 = func_3();
    let var_1 = Struct_2(vec4<u32>(46360u, 1593u, max(1u, firstTrailingBit(31285u)), _wgslsmith_div_u32(arg_2.b, 1u)), arg_0.b, arg_2, Struct_1(arg_1.d.x, ~firstTrailingBit(~arg_1.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(194f, 1521f)) - _wgslsmith_f_op_f32(arg_3.c * 2214f)))), min(vec3<i32>(arg_2.d.x, u_input.d.x, 2147483647i), func_2(Struct_1(1502i, 52467u, arg_0.d.c, u_input.d.zzz, -1146f)).d.d) >> ((~vec3<u32>(arg_2.b, 0u, arg_0.d.b) << (~u_input.b.wwy % vec3<u32>(32u))) % vec3<u32>(32u)), -979f), _wgslsmith_mult_u32(arg_2.b >> (~(~arg_1.b) % 32u), 1u));
    var_0 = var_1.d;
    var_0 = var_1.c;
    return _wgslsmith_dot_vec4_u32(max(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, 42284u, arg_1.b, 20375u)), ~u_input.b), vec4<u32>(_wgslsmith_sub_u32(~arg_3.b, arg_3.b), 0u, arg_1.b, 0u)), ~(~abs(~vec4<u32>(arg_1.b, 0u, 4294967295u, 1u))));
}

fn func_1() -> vec4<f32> {
    global0 = 29808u;
    var var_0 = u_input.b.x >> (max(func_4(func_2(Struct_1(u_input.a, u_input.c.x, 1000f, vec3<i32>(u_input.d.x, -2147483647i, u_input.d.x), -1000f)), Struct_1(u_input.d.x, u_input.e.x, _wgslsmith_div_f32(1799f, 1422f), vec3<i32>(-1i, -7061i, u_input.d.x) | vec3<i32>(-5291i, u_input.d.x, -1i), -1502f), func_3(), global1[_wgslsmith_index_u32(func_2(Struct_1(-2147483647i, u_input.b.x, -131f, vec3<i32>(u_input.a, u_input.d.x, -45511i), 392f)).a.x, 10u)]), ~u_input.c.x) % 32u);
    let var_1 = u_input.c.x | u_input.b.x;
    var_0 = ~60929u;
    let var_2 = select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true))), select(vec4<bool>(all(vec4<bool>(false, true, true, true)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), false)), true, true), select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(select(true, true, true), true, all(vec3<bool>(true, true, true)), u_input.a > u_input.d.x), vec4<bool>(true, u_input.d.x != 1i, true, 1u != var_1)), vec4<bool>(all(vec2<bool>(false, true)), true || (u_input.c.x < 22751u), func_3().b == var_1, _wgslsmith_div_u32(var_1, 115671u) >= _wgslsmith_dot_vec2_u32(u_input.e.xz, vec2<u32>(30687u, 44666u)))), true);
    return vec4<f32>(1898f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-189f, _wgslsmith_f_op_f32(round(-687f)))))), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(690f, 317f))))))), 1257f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<u32>(reverseBits(u_input.e.x), u_input.c.x, u_input.c.x, u_input.e.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_1()), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -668f), _wgslsmith_f_op_f32(f32(-1f) * -488f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1232f, 730f))), 1f, -1000f))), global1[_wgslsmith_index_u32(~u_input.c.x ^ 4294967295u, 10u)], func_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(1u), u_input.e.x), 10u)]).c, _wgslsmith_mod_u32(u_input.b.x, select(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.e.x, 4294967295u), u_input.e >> (u_input.b.zyy % vec3<u32>(32u))), true)));
    global0 = var_0.a.x;
    global1 = array<Struct_1, 10>();
    var var_1 = abs(abs(~(firstLeadingBit(u_input.b) ^ vec4<u32>(4294967295u, 1u, 4294967295u, 6526u))));
    let var_2 = _wgslsmith_sub_vec2_u32(reverseBits(var_1.zz | select(~var_0.a.zy, var_1.yz, 10104i != u_input.d.x)), vec2<u32>(83888u, var_1.x));
    var var_3 = func_2(Struct_1(firstTrailingBit(_wgslsmith_dot_vec2_i32(select(u_input.d.zw, vec2<i32>(2147483647i, 1i), true), ~vec2<i32>(var_0.c.d.x, var_0.d.d.x))), 56882u >> (~var_1.x % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_1()).x)), _wgslsmith_div_f32(var_0.c.c, -1452f)), vec3<i32>(-1i) * -(~var_0.d.d), _wgslsmith_f_op_f32(500f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-262f, 864f)))));
    global1 = array<Struct_1, 10>();
    var var_4 = func_3();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1897f)) - _wgslsmith_f_op_f32(round(var_0.b.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1959f)) - var_3.d.e)), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-var_3.b.x)));
}

