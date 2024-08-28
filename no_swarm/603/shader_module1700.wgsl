struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27>;

var<private> global1: array<Struct_3, 24>;

var<private> global2: bool = false;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec4<bool>) -> f32 {
    global1 = array<Struct_3, 24>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1624f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(766f, 1298f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(920f + 1027f) * _wgslsmith_f_op_f32(f32(-1f) * -805f))))), -904f);
    global2 = !(_wgslsmith_div_u32(~14664u, select(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), abs(u_input.c), arg_1.x == u_input.a.x)) > 4294967295u);
    let var_1 = ~min(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(u_input.e.x, 47376i, -2147483647i) << (u_input.b % vec3<u32>(32u))), -1306i), arg_1.xy);
    global2 = !any(!(!(!arg_2.yz)));
    return _wgslsmith_f_op_f32(ceil(var_0.x));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = !select(vec4<bool>(arg_0.x, false, !arg_0.x && all(vec4<bool>(false, false, arg_0.x, arg_0.x)), arg_0.x), !(!select(vec4<bool>(false, arg_0.x, true, false), vec4<bool>(arg_0.x, true, true, false), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false));
    let var_1 = 1f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_1(false, u_input.b.x, vec4<bool>(true, var_0.x, true, arg_0.x))), u_input.e, vec4<bool>(true, false, false, arg_0.x)))))))));
    var_0 = select(select(select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(arg_0.x, var_1, var_0.x, true)), var_1), select(!vec4<bool>(var_0.x, false, false, true), select(vec4<bool>(false, var_1, var_0.x, false), vec4<bool>(var_0.x, false, false, var_1), vec4<bool>(false, arg_0.x, arg_0.x, false)), true), all(select(vec4<bool>(false, var_0.x, var_1, false), vec4<bool>(var_0.x, true, false, arg_0.x), var_0.x))), vec4<bool>(true & var_0.x, _wgslsmith_div_i32(-7666i, 2147483647i) != u_input.a.x, false, true), vec4<bool>(var_0.x, var_0.x, arg_0.x, true)), vec4<bool>(true, any(vec4<bool>(!var_0.x, true, all(vec2<bool>(false, var_0.x)), var_0.x)), var_0.x, true), ((true | any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_1))) | true) || (~_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(arg_1, u_input.a.x)) < -u_input.a.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1144f), 396f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-756f, -1867f), vec2<f32>(535f, 561f))), vec2<f32>(-858f, 270f), select(var_0.wx, vec2<bool>(false, true), var_1))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(661f, _wgslsmith_f_op_f32(f32(-1f) * -588f))))));
    var var_3 = _wgslsmith_mult_vec2_u32(u_input.b.yy >> (firstTrailingBit(~vec2<u32>(4294967295u, 0u) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(5387u, u_input.c), vec2<u32>(22947u, 52707u), u_input.b.xz) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.b >> (abs(u_input.b) % vec3<u32>(32u)), select(u_input.b, ~u_input.b, var_0.zyy)), _wgslsmith_mult_u32(~1u << (firstTrailingBit(u_input.c) % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, 4294967295u, u_input.c), vec4<u32>(u_input.b.x, u_input.d, 1u, 25627u)), ~u_input.c))));
    return Struct_1(any(!(!(!vec4<bool>(true, var_0.x, false, var_0.x)))), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.c, var_3.x), var_3.x), vec4<bool>(var_1, any(vec2<bool>(any(vec4<bool>(true, false, var_1, true)), var_0.x)), select(true, arg_0.x, !any(var_0.zww)), var_1));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(vec3<f32>(1297f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1575f, -253f)) * _wgslsmith_f_op_f32(f32(-1f) * -576f)), 541f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(612f, -561f)))), func_2(vec3<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false))), !any(vec3<bool>(false, true, false)), true), u_input.a.x), Struct_2(vec2<u32>(firstLeadingBit(u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d, u_input.c), vec3<u32>(1u, u_input.b.x, 9666u) ^ u_input.b)), -160f), Struct_2(u_input.b.zz, 1000f));
    var var_1 = 0i;
    var var_2 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.a), var_0.a, !var_0.b.a)), vec3<f32>(850f, -1000f, -623f), var_0.b.c.x)), var_0.a), var_0.b, var_0.c, Struct_2(var_0.d.a, -1000f));
    let var_3 = 26121u;
    let var_4 = _wgslsmith_f_op_f32(990f + _wgslsmith_f_op_f32(floor(var_2.c.b)));
    return func_2(select(select(func_2(vec3<bool>(false, var_0.b.a, true), -u_input.a.x).c.xyz, select(var_2.b.c.xyz, var_0.b.c.wzw, !var_2.b.c.yyy), any(select(vec2<bool>(var_0.b.c.x, var_2.b.a), var_0.b.c.yy, var_0.b.c.ww))), !var_0.b.c.ywx, var_0.c.a.x < _wgslsmith_clamp_u32(53363u, ~u_input.b.x, 0u)), u_input.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = u_input.e.x;
    let var_2 = Struct_4(func_1());
    let var_3 = !vec3<bool>(var_2.a.c.x, false, !all(var_2.a.c) | ((var_1 >= 42277i) | true));
    var_0 = ~u_input.b.x;
    var var_4 = func_2(!var_2.a.c.xxz, (~u_input.e.x & ~var_1) << (var_2.a.b % 32u));
    let var_5 = !func_1().c;
    var var_6 = ~max(firstTrailingBit(_wgslsmith_clamp_i32(var_1, 2147483647i, u_input.e.x) << (~u_input.b.x % 32u)), -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.e.xx, u_input.e.zz), u_input.a.x & 2147483647i));
    let var_7 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, countOneBits(_wgslsmith_div_i32(-79243i, ~22191i << (max(49688u, var_2.a.b) % 32u))), _wgslsmith_div_f32(-926f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-784f, -880f)) - _wgslsmith_f_op_f32(1076f + -775f)), -1116f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(434f, 254f, -1090f, -1225f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1367f, 107f, 182f, 880f), vec4<f32>(-448f, -1323f, 229f, 1338f), false))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(330f, 176f, -344f, 1000f) * vec4<f32>(-543f, 2058f, -1000f, -1438f)))))))));
}

