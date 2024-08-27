struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: Struct_3,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(1i, 55425i, 0i, -6132i), vec4<i32>(2147483647i, 0i, 0i, 0i), vec4<i32>(0i, -2314i, -22018i, 44589i), vec4<i32>(i32(-2147483648), 2147483647i, 62229i, 1i), vec4<i32>(0i, 1i, -7290i, 29178i), vec4<i32>(30338i, 39289i, -41538i, 32904i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 1i), vec4<i32>(27018i, 38922i, 75247i, 28878i), vec4<i32>(2147483647i, 23539i, 53042i, 0i), vec4<i32>(1i, 1i, -33575i, -44644i), vec4<i32>(-24246i, 1i, 21250i, -52816i), vec4<i32>(15655i, 1i, 2147483647i, 1i), vec4<i32>(14061i, 6774i, 4855i, 13102i), vec4<i32>(1i, -1i, i32(-2147483648), -60026i), vec4<i32>(-23765i, 2147483647i, -59644i, 1i), vec4<i32>(0i, 2147483647i, i32(-2147483648), 31427i), vec4<i32>(2147483647i, 0i, 2147483647i, 43590i), vec4<i32>(2147483647i, -41734i, 1i, -47149i), vec4<i32>(1i, i32(-2147483648), -1811i, -16503i), vec4<i32>(0i, 11831i, -1i, -18129i), vec4<i32>(-1i, i32(-2147483648), -1i, -62416i), vec4<i32>(-14906i, 1i, -301i, -1i), vec4<i32>(i32(-2147483648), 812i, 8632i, 2312i), vec4<i32>(-40350i, 0i, 29783i, i32(-2147483648)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> vec2<bool> {
    global0 = array<vec4<i32>, 24>();
    global0 = array<vec4<i32>, 24>();
    let var_0 = Struct_2((all(vec3<bool>(false, true, true)) || true) == true, u_input.b, u_input.b, vec2<u32>(u_input.a, u_input.a));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1155f * arg_0)));
    let var_2 = all(vec2<bool>(all(select(!vec4<bool>(true, false, false, var_0.a), select(vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(true, false, false, var_0.a), true), vec4<bool>(var_0.a, true, var_0.a, true))), all(select(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, var_0.a), vec2<bool>(true, true)), select(vec2<bool>(var_0.a, true), vec2<bool>(true, var_0.a), false), all(vec3<bool>(false, var_0.a, true))))));
    return !select(vec2<bool>(true, var_0.a), !(!select(vec2<bool>(var_0.a, true), vec2<bool>(false, false), false)), select(vec2<bool>(false, all(vec3<bool>(false, true, var_0.a))), select(!vec2<bool>(var_2, false), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_2, true), vec2<bool>(true, var_0.a)), select(vec2<bool>(false, var_2), vec2<bool>(var_0.a, false), var_0.a)), all(vec2<bool>(true, true))));
}

fn func_4(arg_0: Struct_1) -> f32 {
    global0 = array<vec4<i32>, 24>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x - -1792f) + _wgslsmith_f_op_f32(125f - -1000f)))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_0.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -778f)));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(907f, arg_0.b.x, var_0.x, 326f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 1385f, arg_0.b.x, -1344f))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2435f, var_0.x, -931f, 1428f) + vec4<f32>(arg_0.b.x, arg_0.b.x, var_0.x, -512f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, var_0.x, arg_0.b.x, var_0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(941f, -742f, arg_0.b.x, var_0.x), vec4<f32>(2314f, arg_0.b.x, 857f, -682f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1000f, 475f, 1588f) + vec4<f32>(arg_0.b.x, var_0.x, var_0.x, arg_0.b.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -184f, arg_0.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 947f, arg_0.b.x, -984f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(512f, 615f, 1622f, arg_0.b.x))))) * vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.b.x, arg_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) * arg_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-222f * arg_0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.b.x)), arg_0.b.x))));
    global0 = array<vec4<i32>, 24>();
    var_0 = _wgslsmith_div_vec2_f32(arg_0.b, var_1.zx);
    return arg_0.b.x;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -100f) + -2331f))) - _wgslsmith_f_op_f32(func_4(Struct_1(func_3(_wgslsmith_f_op_f32(ceil(1139f))), vec2<f32>(-1815f, -663f)))));
    global0 = array<vec4<i32>, 24>();
    global0 = array<vec4<i32>, 24>();
    global0 = array<vec4<i32>, 24>();
    global0 = array<vec4<i32>, 24>();
    return u_input.a;
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(func_2(), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(65111u, 6215u) & vec2<u32>(1u, u_input.a)), abs(~u_input.a), ~(~71239u)), vec4<u32>(func_2(), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(16483u, u_input.a), vec2<u32>(u_input.a, 4294967295u), vec2<u32>(55892u, u_input.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(14413u, u_input.a), vec2<u32>(50500u, 25903u))), u_input.a, _wgslsmith_add_u32(u_input.a, ~u_input.a)), _wgslsmith_clamp_vec4_u32(select(abs(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), firstLeadingBit(vec4<u32>(u_input.a, 51883u, 55375u, 11750u)), select(true, false, true)), select(vec4<u32>(u_input.a, u_input.a, 97756u, u_input.a), vec4<u32>(4294967295u, u_input.a, 17909u, 0u), true) & (vec4<u32>(u_input.a, 1u, 3222u, 42640u) >> (vec4<u32>(u_input.a, 62031u, 4294967295u, u_input.a) % vec4<u32>(32u))), firstLeadingBit(vec4<u32>(7818u, 4294967295u, 35522u, u_input.a)))), vec4<u32>(6778u, ~12038u, ~0u, reverseBits(1u)));
    global0 = array<vec4<i32>, 24>();
    var var_1 = max(_wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(~0u, 24u)], vec4<i32>(u_input.b, 1i, 0i, ~(-13469i))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-47753i, 2147483647i, u_input.b, -32932i), ~firstTrailingBit(global0[_wgslsmith_index_u32(var_0.x, 24u)]), -vec4<i32>(-33713i, 2098i, u_input.b, -2147483647i))) | select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, ~var_0.x), 24u)] & global0[_wgslsmith_index_u32(~u_input.a, 24u)], global0[_wgslsmith_index_u32(var_0.x, 24u)] >> (firstTrailingBit(countOneBits(var_0)) % vec4<u32>(32u)), true);
    var var_2 = countOneBits(u_input.b);
    var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(-min(u_input.b >> (0u % 32u), var_1.x), var_1.x, reverseBits(var_1.x), 3845i), global0[_wgslsmith_index_u32(1u, 24u)]);
    return Struct_4(vec3<u32>(u_input.a, var_0.x, ~(~select(u_input.a, u_input.a, false))), select(vec2<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), true), vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), func_3(-206f), true), true)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -352f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1306f - -339f) - _wgslsmith_f_op_f32(2443f - 1338f))), _wgslsmith_f_op_f32(sign(2671f)), 859f), Struct_3(Struct_1(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true), _wgslsmith_f_op_vec2_f32(vec2<f32>(218f, 222f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(209f, 904f)))), Struct_2(true, var_1.x, -2147483647i, vec2<u32>(firstLeadingBit(0u), var_0.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(537f, -822f))), _wgslsmith_div_vec2_f32(vec2<f32>(-2209f, -803f), vec2<f32>(-1183f, -314f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = any(!var_0.d.a.a);
    let var_2 = _wgslsmith_sub_i32(var_0.d.b.b, select(-func_1().d.b.c, ~(-2147483647i), any(var_0.b)));
    var var_3 = vec4<i32>(u_input.b, var_2, var_2, reverseBits(-_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_2, var_2, -13793i), global0[_wgslsmith_index_u32(u_input.a, 24u)]), vec4<i32>(1i, 1i, 2147483647i, -2147483647i))));
    var_0 = func_1();
    global0 = array<vec4<i32>, 24>();
    let var_4 = all(!(!(!select(vec4<bool>(false, false, false, var_0.b.x), vec4<bool>(var_0.b.x, var_1, true, var_1), false))));
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(168f, -574f, -418f, -573f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.a.b.x, var_0.d.a.b.x, 528f, var_0.d.a.b.x), vec4<f32>(-871f, -1522f, var_0.c.x, -1244f)), any(var_0.b))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-594f, -220f, var_0.e.x, -407f), vec4<f32>(-300f, -1983f, var_0.c.x, var_0.d.a.b.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-705f, 623f, 202f, 452f), vec4<f32>(var_0.c.x, var_0.c.x, var_0.d.a.b.x, 385f)), all(vec3<bool>(false, var_5, true)))))), var_0.a.yz);
}

