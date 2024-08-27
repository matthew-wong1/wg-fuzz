struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global1: array<bool, 17>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: f32, arg_3: vec3<i32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(select(arg_2, 1433f, global1[_wgslsmith_index_u32(~(~arg_1), 17u)])), _wgslsmith_div_f32(arg_2, arg_2), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2033f), _wgslsmith_f_op_f32(f32(-1f) * -1477f))), -553f))) - vec4<f32>(149f, _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2)))), -422f));
    let var_1 = vec3<f32>(-646f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-815f)) + var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1766f, _wgslsmith_f_op_f32(floor(var_0.x)), false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(856f * 1203f))))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + _wgslsmith_f_op_f32(step(-133f, -747f))), arg_2, global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(u_input.c.x, 4294967295u)), 17u)]))));
    var var_2 = u_input.d;
    let var_3 = ~(-var_2.wz);
    let var_4 = global1[_wgslsmith_index_u32(abs(0u), 17u)];
    return ~_wgslsmith_clamp_vec3_u32(u_input.c, _wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 1u, 48880u), u_input.c, vec3<u32>(arg_0.x, arg_0.x, arg_0.x)), max(vec3<u32>(arg_0.x, 1u, arg_1), firstTrailingBit(vec3<u32>(1u, u_input.c.x, 1u)))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, 1u, 953u), vec3<u32>(0u, 2320u, arg_0.x), vec3<u32>(18384u, 46085u, arg_0.x)) ^ u_input.c, u_input.c));
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<bool>(_wgslsmith_dot_vec3_u32(u_input.c, func_3(u_input.c.xx ^ u_input.c.xx, _wgslsmith_add_u32(0u, 68561u), -833f, vec3<i32>(49402i, u_input.b, 0i))) <= u_input.c.x, _wgslsmith_clamp_i32(u_input.b, _wgslsmith_mult_i32(~u_input.d.x, _wgslsmith_sub_i32(-1i, -2147483647i)), firstTrailingBit(u_input.a.x)) == _wgslsmith_sub_i32(abs(u_input.b & 8776i), _wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(u_input.b, u_input.b))), !(!(!global1[_wgslsmith_index_u32(u_input.c.x << (u_input.c.x % 32u), 17u)])), any(select(!select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], global1[_wgslsmith_index_u32(1u, 17u)], false, true), vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c.x, 17u)], false), vec4<bool>(global1[_wgslsmith_index_u32(1u, 17u)], true, false, global1[_wgslsmith_index_u32(4294967295u, 17u)])), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], global1[_wgslsmith_index_u32(u_input.c.x, 17u)], global1[_wgslsmith_index_u32(46834u, 17u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(52788u, 17u)], global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(u_input.c.x, 17u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(u_input.c.x, 17u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], global1[_wgslsmith_index_u32(u_input.c.x, 17u)], global1[_wgslsmith_index_u32(0u, 17u)], false), global1[_wgslsmith_index_u32(1700u, 17u)])), all(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.c.x, 17u)])))));
    global1 = array<bool, 17>();
    global1 = array<bool, 17>();
    var var_1 = !((!var_0.x | true) != any(var_0.wyz)) && any(!(!select(vec2<bool>(true, var_0.x), global0[_wgslsmith_index_u32(u_input.c.x, 8u)], true)));
    let var_2 = Struct_2(Struct_1(vec2<i32>(~u_input.b, _wgslsmith_mult_i32(i32(-1i) * -1719i, u_input.b)), -vec4<i32>(-4852i, reverseBits(u_input.d.x), -55274i, u_input.a.x), u_input.c.x));
    return var_2.a;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = u_input.c.xz;
    let var_1 = 914f;
    let var_2 = vec4<f32>(1f, 1f, 1f, 1f);
    global1 = array<bool, 17>();
    var var_3 = max(-arg_0.b.xyy, arg_0.b.zxw);
    return func_2();
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = Struct_3(vec3<bool>(!(!global1[_wgslsmith_index_u32(55789u, 17u)]), (_wgslsmith_f_op_f32(f32(-1f) * -750f) == _wgslsmith_f_op_f32(max(138f, arg_0))) | !global1[_wgslsmith_index_u32(arg_1.c, 17u)], _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 21891i, u_input.b, u_input.b), arg_1.b), -vec4<i32>(u_input.a.x, arg_1.a.x, -34523i, arg_1.b.x)) > func_2().a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(840f, arg_0, arg_0) - vec3<f32>(arg_0, arg_0, 1235f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 1633f) - vec3<f32>(-487f, -1000f, -198f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 609f))))));
    global0 = array<vec2<bool>, 8>();
    let var_1 = vec4<u32>(abs(49994u), arg_1.c, ~(~func_4(func_4(Struct_1(vec2<i32>(u_input.d.x, u_input.b), vec4<i32>(-421i, arg_1.a.x, -48104i, arg_1.b.x), u_input.c.x), 1274f), _wgslsmith_f_op_f32(max(arg_0, var_0.b.x))).c), arg_1.c);
    global0 = array<vec2<bool>, 8>();
    var_0 = Struct_3(vec3<bool>(select(true, global1[_wgslsmith_index_u32(u_input.c.x, 17u)] == all(var_0.a.yz), any(vec4<bool>(true, global1[_wgslsmith_index_u32(var_1.x, 17u)], var_0.a.x, false))), !select(global1[_wgslsmith_index_u32(31227u, 17u)] & var_0.a.x, true, global1[_wgslsmith_index_u32(var_1.x >> (arg_1.c % 32u), 17u)]), _wgslsmith_f_op_f32(-var_0.b.x) >= arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -658f, arg_0)));
    return Struct_3(!vec3<bool>(false, !(false & var_0.a.x), -1693f != _wgslsmith_f_op_f32(arg_0 + var_0.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.b)) * _wgslsmith_f_op_vec3_f32(abs(var_0.b)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(717f, -1205f, 507f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1099f, -308f, 602f)), var_0.a.x && true)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b * var_0.b) - var_0.b))));
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    var var_0 = u_input.c.x;
    global1 = array<bool, 17>();
    var_0 = u_input.c.x;
    var var_1 = func_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -912f))))))), func_4(func_2(), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(f32(-1f) * -397f), any(select(vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(39435u, 17u)], arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, true, false), global1[_wgslsmith_index_u32(4294967295u, 17u)]))))));
    var_1 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b.x, -1284f, arg_0.x && (arg_0.x || true))) + -122f), func_4(func_4(Struct_1(u_input.a, u_input.d, ~u_input.c.x), _wgslsmith_f_op_f32(f32(-1f) * -290f)), _wgslsmith_f_op_f32(round(var_1.b.x))));
    return ~max(firstLeadingBit(u_input.b), func_2().b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    var var_1 = u_input.d.wyx;
    var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(20143i, min(func_1(global0[_wgslsmith_index_u32(~var_0, 8u)]), 0i), 98302i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, firstTrailingBit(1i), u_input.d.x), vec3<i32>(_wgslsmith_add_i32(u_input.a.x, 37335i), -49409i, abs(-33414i))));
    var var_2 = min(firstLeadingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(6208u, u_input.c.x, var_0), u_input.c) >> (~(~u_input.c) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(24636u, 4294967295u, firstLeadingBit(~28717u)), (~u_input.c ^ (u_input.c ^ vec3<u32>(0u, 2052u, u_input.c.x))) ^ max(select(vec3<u32>(u_input.c.x, var_0, 48266u), vec3<u32>(4294967295u, var_0, 1u), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(71304u, 17u)], global1[_wgslsmith_index_u32(0u, 17u)])), reverseBits(vec3<u32>(68887u, 0u, var_0)))));
    var var_3 = ~firstTrailingBit(var_2.x);
    global1 = array<bool, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1528f))), -1123f, _wgslsmith_f_op_f32(floor(func_5(_wgslsmith_f_op_f32(f32(-1f) * -575f), Struct_1(vec2<i32>(-18626i, u_input.d.x), vec4<i32>(-1i, -2147483647i, var_1.x, 2147483647i), 1u)).b.x))), ~var_1.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-203f, _wgslsmith_div_f32(1162f, -104f), _wgslsmith_f_op_f32(step(1271f, 762f)), 1000f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f))))));
}

