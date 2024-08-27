struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(95939u, 35728u);

var<private> global1: array<Struct_3, 23>;

var<private> global2: array<Struct_5, 6> = array<Struct_5, 6>(Struct_5(false, 28049u, vec4<f32>(956f, -1283f, 665f, -424f), vec2<f32>(-826f, -953f), 720f), Struct_5(true, 26361u, vec4<f32>(1000f, 690f, -1000f, 572f), vec2<f32>(-1286f, 523f), -1000f), Struct_5(false, 1u, vec4<f32>(-1061f, -2036f, -1812f, 1000f), vec2<f32>(-125f, -410f), 707f), Struct_5(false, 4294967295u, vec4<f32>(-433f, -514f, 604f, -620f), vec2<f32>(-2322f, 620f), -102f), Struct_5(true, 1u, vec4<f32>(-1842f, 928f, -334f, -154f), vec2<f32>(1294f, -414f), -1122f), Struct_5(true, 4294967295u, vec4<f32>(1919f, 2180f, 1360f, 1352f), vec2<f32>(-634f, -1372f), -350f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-544f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(829f)) - _wgslsmith_div_f32(-696f, 1022f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1013f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -549f)))));
    let var_1 = var_0.x;
    let var_2 = global1[_wgslsmith_index_u32(arg_1.x, 23u)];
    var var_3 = 0i;
    global2 = array<Struct_5, 6>();
    return 16617u;
}

fn func_2() -> i32 {
    let var_0 = Struct_2(vec3<u32>(~(firstTrailingBit(66341u) ^ u_input.a.x), u_input.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.a, firstTrailingBit(u_input.a)), _wgslsmith_sub_u32(u_input.a.x ^ 10646u, abs(u_input.a.x)))), -176f, Struct_1(_wgslsmith_sub_vec2_u32(~select(u_input.a.yy, vec2<u32>(25957u, 1u), vec2<bool>(false, true)), vec2<u32>(_wgslsmith_add_u32(u_input.a.x, 63230u), ~62379u)), vec3<u32>(3086u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, global0.x, 34114u, global0.x), vec4<u32>(global0.x, 18158u, 22620u, global0.x) ^ vec4<u32>(1u, 110464u, 38285u, 0u)), ~func_3(Struct_1(vec2<u32>(global0.x, u_input.a.x), vec3<u32>(24552u, global0.x, u_input.a.x)), u_input.a.yy))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1117f, -619f))), -597f)), -815f), Struct_1(~firstTrailingBit(~u_input.a.yy), ~vec3<u32>(global0.x, _wgslsmith_mod_u32(33612u, 3828u), ~global0.x)));
    global0 = var_0.a.xy;
    let var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b * var_0.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(771f - 266f) * _wgslsmith_f_op_f32(var_0.d - 395f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(108f - -1000f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-180f, -2194f, var_0.b), vec3<f32>(622f, -1620f, var_0.b)))))));
    var var_2 = u_input.b.yw;
    let var_3 = -372f;
    return 2147483647i;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-745f, 1f)))), 1499f);
    global2 = array<Struct_5, 6>();
    var var_1 = Struct_1(vec2<u32>(31487u, u_input.a.x | ~0u), ~(min(u_input.a.xwx, vec3<u32>(1u, u_input.a.x, 49448u)) << (vec3<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_0, u_input.a.x, u_input.a.x), u_input.a), ~u_input.a.x) % vec3<u32>(32u))));
    global2 = array<Struct_5, 6>();
    var var_2 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(abs(func_2()), max(-1i, u_input.b.x), -(~(-18641i))), u_input.b.zxy);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, ~global0.x), select(vec2<u32>(~4294967295u, ~1u), u_input.a.yz | vec2<u32>(0u, global0.x), vec2<bool>(67385u <= global0.x, func_1(15851u, vec4<f32>(984f, -1585f, -136f, 1000f), u_input.a.zy))));
    global2 = array<Struct_5, 6>();
    var var_0 = global2[_wgslsmith_index_u32(max(countOneBits(_wgslsmith_sub_u32(u_input.a.x, 1u)), u_input.a.x), 6u)];
    var var_1 = Struct_2(u_input.a.wyw, _wgslsmith_f_op_f32(var_0.d.x + var_0.c.x), Struct_1(firstLeadingBit(u_input.a.yz), u_input.a.zxy), _wgslsmith_f_op_f32(-var_0.e), Struct_1(select(~u_input.a.yw, u_input.a.ww, true), min(_wgslsmith_mult_vec3_u32(vec3<u32>(37799u, var_0.b, u_input.a.x), u_input.a.wwy) << (_wgslsmith_add_vec3_u32(u_input.a.yyz, vec3<u32>(var_0.b, 4294967295u, 1u)) % vec3<u32>(32u)), ~u_input.a.xxw)));
    global2 = array<Struct_5, 6>();
    let var_2 = vec4<bool>(~(_wgslsmith_sub_u32(4294967295u, 0u) & func_3(var_1.c, vec2<u32>(4294967295u, var_0.b))) < max(~43014u, global0.x), func_1(abs(~u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-722f, var_1.b, -140f, 284f))), select(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), ~var_1.e.b.zy), ~vec2<u32>(1u, 67887u), var_0.e < _wgslsmith_f_op_f32(trunc(var_1.b)))), var_0.a, false);
    global1 = array<Struct_3, 23>();
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~((13717u << (var_0.b % 32u)) | _wgslsmith_mult_u32(global0.x, 4294967295u)), ~0u, firstLeadingBit(92930u)) & ~(~(25751u << (_wgslsmith_sub_u32(0u, var_0.b) % 32u))), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1675f)))), _wgslsmith_sub_i32(50449i, u_input.b.x), global0.x, u_input.b.x);
}

