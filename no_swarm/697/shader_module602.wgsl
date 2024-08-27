struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(20579u, 9076u), vec2<u32>(67341u, 72863u), vec2<u32>(118u, 42938u), vec2<u32>(44178u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(67830u, 73477u));

var<private> global2: array<vec4<i32>, 30>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec2<u32> {
    global0 = 4294967295u;
    var var_0 = Struct_2(arg_1, _wgslsmith_f_op_f32(-arg_1.c.x), arg_1, !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false))));
    global0 = min(arg_1.b, var_0.a.b);
    var var_1 = var_0.a.b;
    let var_2 = vec2<u32>(var_0.a.a.x, _wgslsmith_div_u32(~_wgslsmith_sub_u32(26682u, arg_1.a.x) & ~4294967295u, u_input.a));
    return vec2<u32>(4294967295u, (var_2.x >> (~firstTrailingBit(u_input.b.x) % 32u)) << (23417u % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    global1 = array<vec2<u32>, 6>();
    global1 = array<vec2<u32>, 6>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(arg_0.c, arg_2.c))), vec3<f32>(469f, _wgslsmith_f_op_f32(trunc(arg_1.c.x)), _wgslsmith_f_op_f32(ceil(661f)))))));
    var var_1 = Struct_2(Struct_1(min(func_3(arg_0.c.x, arg_2) << (_wgslsmith_mult_vec2_u32(u_input.b.yz, global1[_wgslsmith_index_u32(4294967295u, 6u)]) % vec2<u32>(32u)), ~abs(u_input.b.xy)), 22353u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_1.c.x, arg_1.c.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_2.c)))), _wgslsmith_add_i32(61894i, countOneBits(1i ^ arg_2.d))), 1255f, Struct_1(vec2<u32>(arg_2.a.x, 43748u), ~_wgslsmith_div_u32(~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.x, 4294967295u, arg_1.b, arg_2.b), u_input.b)), vec3<f32>(452f, -1457f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-589f, arg_1.c.x))), i32(-1i) * -2147483647i), vec3<bool>(select(any(vec4<bool>(true, true, false, true)), !all(vec2<bool>(false, true)), all(vec2<bool>(true, true))), all(vec2<bool>(true, true)), true));
    let var_2 = Struct_2(arg_2, var_1.c.c.x, arg_0, vec3<bool>(false, var_1.a.b == arg_2.a.x, ~u_input.c < _wgslsmith_dot_vec4_i32(select(global2[_wgslsmith_index_u32(1u, 30u)], vec4<i32>(31290i, arg_1.d, u_input.c, 1i), vec4<bool>(false, var_1.d.x, var_1.d.x, false)), vec4<i32>(-17366i, 9030i, 26045i, var_1.a.d) | global2[_wgslsmith_index_u32(22813u, 30u)])));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.c.x), _wgslsmith_f_op_f32(f32(-1f) * -355f), var_0.x)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = -1000f;
    var_0 = arg_1.x;
    let var_1 = _wgslsmith_div_i32(~(-50434i), ~arg_2.d);
    let var_2 = vec3<bool>(true, !arg_0.x, arg_0.x);
    let var_3 = arg_2;
    return Struct_1(vec2<u32>(~(u_input.b.x ^ 107241u), 44866u) << (~(~vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)), ~1u, _wgslsmith_f_op_vec3_f32(func_4(Struct_1(func_3(1265f, Struct_1(var_3.a, arg_2.b, arg_2.c, var_1)), ~1u, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -335f), -251f, _wgslsmith_f_op_f32(var_3.c.x * 2055f)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -28014i, var_3.d), vec3<i32>(-1i, var_1, arg_2.d))), Struct_1(arg_2.a | var_3.a, 4294967295u, _wgslsmith_f_op_vec3_f32(abs(arg_2.c)), max(_wgslsmith_add_i32(var_3.d, -1i), _wgslsmith_mult_i32(arg_2.d, var_3.d))), Struct_1(var_3.a >> (firstTrailingBit(var_3.a) % vec2<u32>(32u)), var_3.a.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_2.c, arg_2.c)), vec3<f32>(-495f, 785f, 1000f)), firstLeadingBit(i32(-1i) * -2147483647i)))), -2147483647i);
}

fn func_1() -> u32 {
    var var_0 = func_2(!(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1119f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1124f, -640f))))), Struct_1(~vec2<u32>(~1u, firstTrailingBit(54956u)), 5008u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1718f, -1370f, -759f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(746f, 1918f, 1012f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-809f, 2815f, -104f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1063f, 516f, -321f)))), abs(1i)));
    global2 = array<vec4<i32>, 30>();
    let var_1 = _wgslsmith_add_u32(37672u, u_input.a);
    global0 = 7608u;
    var var_2 = max(abs(vec4<i32>(min(u_input.d, 1i), countOneBits(0i), 10200i, 4865i)), global2[_wgslsmith_index_u32(23474u, 30u)]) & vec4<i32>(func_2(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.yz + var_0.c.xx) + _wgslsmith_f_op_vec2_f32(vec2<f32>(289f, var_0.c.x) * var_0.c.xz)), func_2(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false), _wgslsmith_div_vec2_f32(var_0.c.yx, vec2<f32>(var_0.c.x, var_0.c.x)), func_2(vec4<bool>(false, false, false, true), var_0.c.xy, Struct_1(var_0.a, u_input.a, vec3<f32>(var_0.c.x, -574f, var_0.c.x), var_0.d)))).d, _wgslsmith_clamp_i32(1i, 12965i, 24154i), 0i, -2147483647i);
    return countOneBits(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~u_input.b.zx >> (u_input.b.yx % vec2<u32>(32u)), ~countOneBits(func_1()), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1866f, -916f, 683f)) + vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(749f, -418f, 940f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-833f, 802f, -131f) - vec3<f32>(413f, -1816f, 1000f))), vec3<bool>(false, true, true))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1008f) - 2427f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-899f))), _wgslsmith_f_op_f32(sign(1436f)))), min(_wgslsmith_mod_i32(0i, 12158i), -func_2(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2066f, 183f)), Struct_1(global1[_wgslsmith_index_u32(15844u, 6u)], u_input.b.x, vec3<f32>(-360f, 1000f, 1066f), -22141i)).d));
    global1 = array<vec2<u32>, 6>();
    var var_1 = vec2<u32>(1u, 31753u);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2705f, var_0.c.x), _wgslsmith_f_op_vec2_f32(-var_0.c.zz)))) * var_0.c.zz) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x), _wgslsmith_f_op_f32(sign(var_0.c.x))) - var_0.c.zx), _wgslsmith_f_op_vec2_f32(var_0.c.yy + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.xy + var_0.c.zy) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-676f, -2644f) * vec2<f32>(var_0.c.x, var_0.c.x))))));
    var var_3 = abs(_wgslsmith_add_vec2_i32(-(~abs(vec2<i32>(var_0.d, 1i))), vec2<i32>(-1i) * -select(vec2<i32>(-80694i, 16670i), vec2<i32>(u_input.d, 1i), vec2<bool>(true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(1f, -reverseBits(select(min(vec3<i32>(0i, 2147483647i, var_0.d), vec3<i32>(-88848i, var_0.d, var_0.d)), vec3<i32>(5736i, -12998i, -19039i), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))), global2[_wgslsmith_index_u32(0u, 30u)] ^ min(vec4<i32>(-2147483647i, var_3.x, ~(-6490i), abs(-2147483647i)), vec4<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -2147483647i), vec2<i32>(var_3.x, -4362i)), -1i, ~17087i)));
}

