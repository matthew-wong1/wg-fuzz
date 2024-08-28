struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(u_input.c | ~_wgslsmith_mod_i32(~(-2147483647i), u_input.a.x), u_input.b.x);
    let var_1 = -175f;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(ceil(-169f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-905f, _wgslsmith_f_op_f32(step(var_1, -1378f)))) * _wgslsmith_f_op_f32(f32(-1f) * -532f))));
    let var_3 = ~abs(min(~vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u)));
    let var_4 = select(countOneBits(reverseBits(u_input.b)), -u_input.b, true);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(369f - 1000f)) + -544f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1)))))), !(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(f32(-1f) * -413f)) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, var_1) - -242f))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(564f, 312f)) * _wgslsmith_f_op_f32(abs(-195f))), 417f, 1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-1f)))));
    let var_1 = arg_1;
    let var_2 = u_input.b.x;
    var var_3 = arg_1;
    var_3 = arg_2;
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = select(!arg_2.yz, select(arg_2.zz, vec2<bool>(arg_2.x, !(u_input.a.x > -2147483647i)), !any(select(vec4<bool>(true, true, arg_2.x, arg_2.x), vec4<bool>(true, true, arg_2.x, arg_2.x), vec4<bool>(true, true, arg_2.x, true)))), arg_2.yx);
    var var_1 = _wgslsmith_mod_vec2_i32(-vec2<i32>(1i, select(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-49132i, arg_3.b, arg_0.a), u_input.b), all(vec2<bool>(false, arg_2.x)))), -vec2<i32>(-u_input.b.x & arg_3.b, 1i));
    var var_2 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_mod_i32(~2147483647i, 22509i << (arg_1.x % 32u)), ~u_input.a.x | 14661i, 0i, 1i);
    let var_3 = all(select(arg_2, select(vec3<bool>(false, select(arg_2.x, var_0.x, var_0.x), true), vec3<bool>(false, var_2.x > u_input.b.x, false), select(vec3<bool>(var_0.x, arg_2.x, var_0.x), vec3<bool>(true, true, true), all(vec3<bool>(true, var_0.x, var_0.x)))), select(arg_2, select(arg_2, !arg_2, true), var_0.x)));
    var_2 = vec4<i32>(1836i, u_input.a.x, ~_wgslsmith_add_i32(arg_3.a & func_2(arg_3, arg_0, arg_0).b, 0i), _wgslsmith_dot_vec2_i32(firstTrailingBit(var_2.yx << (arg_1.xy % vec2<u32>(32u))) >> (arg_1.yz % vec2<u32>(32u)), vec2<i32>(0i, firstLeadingBit(_wgslsmith_mult_i32(20314i, u_input.a.x)))));
    return _wgslsmith_f_op_f32(func_3());
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(func_4(func_2(arg_0, Struct_1(50087i, _wgslsmith_sub_i32(6125i, max(15799i, -1i))), arg_0), vec3<u32>(0u, abs(~(1u >> (1u % 32u))), _wgslsmith_clamp_u32(0u, ~(16673u << (0u % 32u)), ~43246u)), select(vec3<bool>(any(vec2<bool>(true, true)), true, select(true, true, select(true, false, false))), vec3<bool>(true, true, true), ~_wgslsmith_dot_vec4_i32(vec4<i32>(10257i, 18109i, -1i, arg_2.x), vec4<i32>(-1i, arg_3.a, -29297i, -2147483647i)) != arg_0.b), arg_1));
    var var_1 = ~reverseBits(select(vec2<i32>(-arg_1.b, arg_3.a), ~arg_2.zx, true));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1498f, -980f, _wgslsmith_f_op_f32(f32(-1f) * -880f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-990f)))))));
    let var_3 = arg_2.zy;
    var_1 = _wgslsmith_mult_vec2_i32(arg_2.xz, countOneBits(vec2<i32>(min(35973i, var_3.x), _wgslsmith_mod_i32(arg_0.b, arg_3.a)) & ~arg_2.xy));
    return countOneBits(~var_1.x ^ arg_1.b);
}

fn func_5(arg_0: i32) -> bool {
    var var_0 = func_2(func_2(Struct_1(~(-26950i), -1i), Struct_1(u_input.c, -2147483647i >> (_wgslsmith_mult_u32(1u, 1u) % 32u)), Struct_1(0i, -624i)), Struct_1(1i, arg_0), Struct_1(u_input.a.x, -9877i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(672f, 1283f));
    var var_2 = 4294967295u;
    var var_3 = var_0.b;
    let var_4 = ~reverseBits(~(~(~vec4<u32>(10853u, 1u, 0u, 39189u))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(Struct_1(2147483647i, ~u_input.b.x), Struct_1(u_input.b.x, _wgslsmith_add_i32(i32(-1i) * -24691i, u_input.b.x)), u_input.b, Struct_1(-2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -7227i, u_input.b.x, 1i), vec4<i32>(-14416i, u_input.b.x, u_input.a.x, u_input.c)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -308f) - vec2<f32>(-1773f, -139f))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1102f, -1325f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-667f, 2176f) * vec2<f32>(2039f, -139f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1622f, -396f), vec2<f32>(520f, -323f)) * vec2<f32>(-161f, 908f))))));
    let var_2 = true & var_0;
    var var_3 = 1i;
    var_3 = _wgslsmith_div_i32(2147483647i, _wgslsmith_mult_i32(u_input.a.x ^ max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.b.x), vec2<i32>(u_input.a.x, 0i)), u_input.a.x), u_input.b.x));
    let var_4 = reverseBits(~(-1i));
    var var_5 = _wgslsmith_mult_u32(~0u, (min(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(24120u, 25010u, 1u, 29227u), vec4<u32>(15920u, 34043u, 40987u, 0u))) << (~4221u % 32u)) << (~1u % 32u));
    var var_6 = func_2(func_2(Struct_1(_wgslsmith_add_i32(-6858i, min(1i, 5453i)), -28477i), func_2(func_2(Struct_1(var_4, -61446i), Struct_1(8313i, -2331i), func_2(Struct_1(-24654i, var_4), Struct_1(u_input.c, u_input.b.x), Struct_1(32020i, u_input.c))), Struct_1(var_4, u_input.a.x), func_2(func_2(Struct_1(var_4, u_input.c), Struct_1(var_4, -2147483647i), Struct_1(-2341i, u_input.a.x)), func_2(Struct_1(30050i, u_input.b.x), Struct_1(u_input.a.x, -1i), Struct_1(var_4, 2147483647i)), Struct_1(var_4, 1i))), Struct_1(func_2(Struct_1(-25218i, 23967i), Struct_1(u_input.c, var_4), Struct_1(var_4, u_input.c)).b, -u_input.a.x)), func_2(func_2(Struct_1(_wgslsmith_div_i32(u_input.b.x, u_input.a.x), ~22136i), func_2(func_2(Struct_1(2147483647i, -15899i), Struct_1(-2147483647i, -1i), Struct_1(u_input.b.x, -2147483647i)), func_2(Struct_1(var_4, var_4), Struct_1(var_4, var_4), Struct_1(var_4, 2147483647i)), func_2(Struct_1(var_4, -55909i), Struct_1(u_input.a.x, u_input.a.x), Struct_1(32231i, -32052i))), Struct_1(~(-56508i), u_input.b.x << (4294967295u % 32u))), Struct_1(11587i, ~(-1i)), func_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -34170i, var_4, u_input.b.x), vec4<i32>(-2147483647i, var_4, var_4, 2147483647i)), u_input.b.x), Struct_1(~2147483647i, ~var_4), Struct_1(_wgslsmith_clamp_i32(49966i, 2147483647i, -14238i), abs(var_4)))), func_2(Struct_1(-max(var_4, -29299i), var_4), Struct_1(_wgslsmith_sub_i32(1i, 1i), 1i), Struct_1(u_input.b.x, abs(countOneBits(2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(u_input.b.yz, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_6.a, var_4, 0i), u_input.b), firstTrailingBit(var_4)) << (~vec2<u32>(46247u, 10378u) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(vec2<u32>(53434u, 0u), vec2<u32>(_wgslsmith_mult_u32(select(0u, 10914u, true), ~14531u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1514u, 47934u, 0u, 81226u), vec4<u32>(0u, 50451u, 52989u, 1u)))), firstLeadingBit(max(firstLeadingBit(vec4<i32>(-1i, var_6.a, var_6.b, var_4)) | vec4<i32>(u_input.b.x, -2147483647i, var_6.b, 8583i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_6.a), vec2<i32>(u_input.c, -2147483647i)), u_input.b.x & var_4, 2147483647i, u_input.b.x))), _wgslsmith_sub_u32(select(1u, 1u, var_0), _wgslsmith_dot_vec3_u32(max(select(vec3<u32>(80824u, 15639u, 50827u), vec3<u32>(4294967295u, 18635u, 1u), var_2), vec3<u32>(1u, 1u, 1u)), vec3<u32>(49501u, ~13716u, 1u))));
}

