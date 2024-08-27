struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: i32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(true, false, true, true, false, true, false, false, false, false, true, false, true, false, true, false);

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false));

var<private> global3: vec4<i32> = vec4<i32>(38886i, 2147483647i, 2147483647i, 53969i);

var<private> global4: Struct_3;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(select(global4.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1073f), !global1.a));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-948f, arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(196f, arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1077f + 267f) * _wgslsmith_f_op_f32(func_3(vec4<bool>(global4.a, true, global4.a, false), vec3<bool>(global1.a, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global4.a), 0i, Struct_3(global1.a, vec2<f32>(arg_0.x, global4.b.x), 0i))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.x, 1934f, global4.b.x, global4.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 261f, 1308f, -518f) * arg_0))))), _wgslsmith_f_op_vec4_f32(-arg_0)));
    var var_1 = Struct_2(5984i, abs(_wgslsmith_dot_vec3_i32(firstTrailingBit(global3.xwz), vec3<i32>(global4.c, -111194i << (u_input.a.x % 32u), 0i))), Struct_1(-_wgslsmith_clamp_i32(43672i, global3.x, u_input.b.x) < select(2147483647i, global3.x, false)), vec3<bool>(global4.a, true, global4.a), 1i <= abs(u_input.c.x));
    let var_2 = !(!var_1.d);
    return Struct_1(false || !(_wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(-var_0.x)));
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    global3 = vec4<i32>(abs(global4.c), global3.x << (_wgslsmith_dot_vec2_u32(u_input.a.xz, _wgslsmith_mod_vec2_u32(u_input.a.yz ^ vec2<u32>(u_input.a.x, 11376u), u_input.a.wy)) % 32u), max(i32(-1i) * -(global4.c | -26757i), _wgslsmith_mult_i32(min(-2147483647i, ~global4.c), firstTrailingBit(-global4.c))), -abs(1i));
    var var_0 = Struct_5(global4.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global4.b.x, -744f, false)), _wgslsmith_div_f32(global4.b.x, global4.b.x)))))));
    var_0 = Struct_5(global4.b, _wgslsmith_f_op_f32(global4.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global4.b.x)))))));
    let var_1 = 1u;
    let var_2 = Struct_5(global4.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1158f) - _wgslsmith_f_op_f32(max(-463f, _wgslsmith_f_op_f32(global4.b.x - global4.b.x))))));
    return vec3<bool>(true, global0[_wgslsmith_index_u32((_wgslsmith_mod_u32(~4294967295u, _wgslsmith_add_u32(55762u, u_input.a.x)) & 18837u) ^ max(firstTrailingBit(var_1), ~select(0u, 7254u, false)), 16u)], true);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: f32) -> Struct_1 {
    global4 = Struct_3(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-965f, -1394f) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-689f))), 708f)), global3.x);
    global3 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global4.c, global4.c << (0u % 32u), global3.x << (_wgslsmith_dot_vec3_u32(u_input.a.wzx, u_input.a.xxx) % 32u), -2147483647i >> (select(4294967295u, u_input.a.x, true) % 32u)), ~(-vec4<i32>(0i, 34220i, global4.c, 0i))), -2147483647i, countOneBits(global4.c), 0i);
    var var_0 = func_2(_wgslsmith_div_vec4_f32(vec4<f32>(391f, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2, global4.b.x), -1258f), arg_2, -1389f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -899f), arg_1.x, -1314f, _wgslsmith_f_op_f32(-arg_2))))), abs(~vec4<u32>(reverseBits(28549u), u_input.a.x >> (u_input.a.x % 32u), ~78664u, firstLeadingBit(u_input.a.x))), u_input.a);
    let var_1 = ~u_input.b;
    global0 = array<bool, 16>();
    return Struct_1(!arg_0.x);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = arg_0;
    let var_0 = arg_0;
    global2 = array<vec4<bool>, 11>();
    global1 = func_5(!func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.x, global4.b.x, global4.b.x, global4.b.x)), vec4<u32>(4294967295u, 16160u, 15003u, 1u), u_input.a)), vec3<f32>(global4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2429f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(853f + global4.b.x)), -322f, _wgslsmith_f_op_f32(ceil(-1289f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.x + -507f) - _wgslsmith_f_op_f32(-175f + global4.b.x)))));
    let var_1 = var_0;
    return func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(324f, _wgslsmith_f_op_f32(-global4.b.x), -1356f, _wgslsmith_f_op_f32(global4.b.x - global4.b.x)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-373f, global4.b.x, 102f, 727f) + vec4<f32>(-590f, 1000f, 407f, global4.b.x)), vec4<f32>(-553f, global4.b.x, 1000f, 1286f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1467f, -515f, 445f, 2342f) - vec4<f32>(740f, 269f, -1963f, 768f))))))), _wgslsmith_div_vec4_u32(u_input.a, u_input.a), vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.wxw, u_input.a.zxy), vec3<u32>(u_input.a.x, 0u, u_input.a.x)), reverseBits(19810u), _wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x << (4294967295u % 32u), u_input.a.x)) & vec4<u32>(_wgslsmith_div_u32(~55830u, u_input.a.x), _wgslsmith_div_u32(76777u, u_input.a.x) & min(0u, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x) | vec2<u32>(0u, u_input.a.x), ~u_input.a.yw), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(!(true || global1.a)));
    let var_1 = _wgslsmith_f_op_f32(trunc(global4.b.x));
    global4 = Struct_3(var_0.a != global0[_wgslsmith_index_u32(~3957u, 16u)], global4.b, 10076i);
    var var_2 = Struct_2(_wgslsmith_mod_i32(u_input.c.x, firstTrailingBit(global4.c)) << (max(max(max(4294967295u, u_input.a.x), 4294967295u), u_input.a.x) % 32u), -2147483647i | abs(global4.c), Struct_1(true), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, 1858u, u_input.a.x), 16u)], all(vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 16u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 16u)])), 740f != var_1, !global0[_wgslsmith_index_u32(u_input.a.x, 16u)])), global1.a), true);
    var var_3 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(reverseBits(~vec4<u32>(1u, 0u, 30557u, 1u))), select(~select(_wgslsmith_add_vec2_i32(global3.wy, vec2<i32>(43579i, -48841i)), u_input.c.wy & vec2<i32>(0i, var_2.b), u_input.a.x < 0u), u_input.c.xz, !select(select(vec2<bool>(var_2.e, true), var_2.d.xz, var_2.d.zz), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]), true & global4.a)), _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], vec3<bool>(var_0.a, func_4(func_5(var_2.d, vec3<f32>(var_1, -471f, global4.b.x), global4.b.x)).x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xx) < u_input.a.x), _wgslsmith_div_i32(var_2.b, ~(i32(-1i) * -1i)), Struct_3(global4.a, _wgslsmith_f_op_vec2_f32(min(global4.b, _wgslsmith_f_op_vec2_f32(exp2(global4.b)))), countOneBits(abs(2147483647i))))), 4294967295u);
}

