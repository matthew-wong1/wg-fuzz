struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec2<f32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: array<i32, 6> = array<i32, 6>(35383i, -15575i, 2147483647i, 41489i, 422i, -65409i);

var<private> global2: array<Struct_2, 22>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> f32 {
    var var_0 = any(select(arg_1.a.wyy, arg_1.a.yww, arg_1.a.wwy));
    let var_1 = -reverseBits(u_input.a.yzz);
    global2 = array<Struct_2, 22>();
    let var_2 = (vec2<u32>(33274u, ~u_input.c.x) ^ _wgslsmith_div_vec2_u32(~u_input.c.wx, ~(~vec2<u32>(arg_1.d.x, arg_1.d.x)))) & u_input.c.zy;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + 942f));
    return _wgslsmith_f_op_f32(arg_1.e - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-arg_0), arg_1.a.x | true)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_2) -> f32 {
    global0 = array<i32, 29>();
    var var_0 = vec2<bool>(false & (arg_2.e < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(arg_2.e, arg_2))))), ~abs(_wgslsmith_dot_vec3_u32(u_input.c.zxz, vec3<u32>(100831u, u_input.c.x, 4294967295u))) != 1u);
    return arg_2.e;
}

fn func_1() -> vec4<f32> {
    var var_0 = _wgslsmith_clamp_vec3_u32(u_input.c.xyx, vec3<u32>(_wgslsmith_mult_u32(u_input.d, u_input.d), ~u_input.c.x, 0u), u_input.c.xxz);
    let var_1 = firstTrailingBit(-(~u_input.a.x));
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    let var_2 = -13824i;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(436f)), _wgslsmith_div_f32(1000f, 233f), _wgslsmith_f_op_f32(554f * 1000f), _wgslsmith_f_op_f32(min(-1631f, -180f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-342f)), -1051f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(910f * 132f), _wgslsmith_f_op_f32(abs(535f)))), 674f, _wgslsmith_f_op_f32(sign(1f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, false, false), vec4<bool>(true, true, true, true), global2[_wgslsmith_index_u32(u_input.c.x, 22u)])), _wgslsmith_f_op_f32(-207f - -1569f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(988f, global2[_wgslsmith_index_u32(var_0.x, 22u)])))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -363f), Struct_2(vec4<bool>(false, true, true, true), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(514f, 1379f) - vec2<f32>(446f, 1750f)), vec2<u32>(u_input.d, u_input.d), -490f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1031f)) + _wgslsmith_f_op_f32(ceil(1164f))))), _wgslsmith_f_op_f32(trunc(467f))), true));
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = -abs(1i);
    var var_1 = vec3<bool>(!(!(_wgslsmith_f_op_f32(-arg_0.x) != 915f)), any(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(false, true, false, true), all(vec4<bool>(true, true, true, true)))), false);
    var var_2 = Struct_5(vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, i32(-1i) * -215i) << (((u_input.c.x >> (40529u % 32u)) << (1u % 32u)) % 32u), -2147483647i, reverseBits(~7204i)), min(var_0, u_input.a.x), Struct_4(global2[_wgslsmith_index_u32(26771u, 22u)], Struct_2(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), all(!vec4<bool>(var_1.x, true, false, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.x, -280f)))), vec2<u32>(select(0u, 5003u, false), u_input.d), _wgslsmith_div_f32(_wgslsmith_div_f32(196f, -816f), _wgslsmith_div_f32(arg_0.x, arg_0.x)))));
    var var_3 = Struct_3(var_2.c.b, firstLeadingBit(reverseBits(_wgslsmith_div_u32(u_input.d, var_2.c.b.d.x))) ^ firstTrailingBit(var_2.c.a.d.x | ~u_input.d), _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.b.x, 2147483647i, -global0[_wgslsmith_index_u32(var_2.c.a.d.x, 29u)]), vec3<i32>(-1i, u_input.b.x, var_0) | var_2.a) | var_0, min(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_2.c.b.d.x, 6u)]) & -u_input.a.wy, (u_input.b | vec2<i32>(var_2.a.x, 2147483647i)) & -vec2<i32>(global1[_wgslsmith_index_u32(1611u, 6u)], var_0)) >> (abs(vec2<u32>(~var_2.c.b.d.x, 0u)) % vec2<u32>(32u)), Struct_2(select(vec4<bool>(true, all(vec3<bool>(false, true, var_2.c.b.a.x)), select(true, true, var_1.x), !var_2.c.a.a.x), !select(var_2.c.b.a, var_2.c.b.a, vec4<bool>(var_1.x, var_2.c.a.b, var_2.c.a.a.x, true)), !(!var_2.c.a.a.x)), var_1.x, _wgslsmith_f_op_vec2_f32(-arg_0.wx), u_input.c.xx, _wgslsmith_f_op_f32(func_2(select(var_2.c.b.a.zxy, var_2.c.a.a.zzx, select(vec3<bool>(true, var_2.c.b.a.x, var_2.c.a.b), vec3<bool>(true, false, var_1.x), var_2.c.b.a.zyw)), select(vec4<bool>(var_2.c.a.a.x, var_2.c.a.a.x, var_2.c.a.a.x, var_2.c.b.a.x), select(vec4<bool>(var_2.c.b.b, var_1.x, false, var_2.c.a.a.x), var_2.c.a.a, var_2.c.a.a), select(vec4<bool>(false, false, var_1.x, false), vec4<bool>(false, var_1.x, false, false), var_1.x)), var_2.c.a))));
    global0 = array<i32, 29>();
    return Struct_1(-(~(_wgslsmith_dot_vec2_i32(var_3.d, var_3.d) | -global0[_wgslsmith_index_u32(71579u, 29u)])), vec4<u32>(0u, _wgslsmith_dot_vec3_u32(~u_input.c.xxw, u_input.c.ywx), _wgslsmith_dot_vec2_u32(var_2.c.a.d, ~reverseBits(vec2<u32>(var_3.a.d.x, 28066u))), 82492u | (firstTrailingBit(var_3.b) | 3944u)), max(vec2<i32>(~firstLeadingBit(1i), max(-1i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.xzy, u_input.c.xyx), 29u)])), vec2<i32>(u_input.b.x, var_3.d.x & select(-2147483647i, 15218i, false))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1293f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1000f, -589f, var_2.c.b.a.x)), -670f))), -206f));
}

fn func_5(arg_0: Struct_1) -> vec2<i32> {
    global1 = array<i32, 6>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.d.x))));
    global1 = array<i32, 6>();
    global1 = array<i32, 6>();
    let var_1 = !vec3<bool>(any(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), all(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), false);
    return max(_wgslsmith_div_vec2_i32(vec2<i32>(max(-2147483647i, ~2595i), -36638i), u_input.a.zx), vec2<i32>(u_input.a.x, u_input.a.x));
}

fn func_6(arg_0: vec2<i32>) -> Struct_5 {
    global1 = array<i32, 6>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(812f)) - -756f);
    global2 = array<Struct_2, 22>();
    let var_1 = Struct_5(u_input.a.zwz, 33064i, Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(63328u, u_input.d) & ~vec2<u32>(8125u, 1u), ~u_input.c.zx | u_input.c.zw), 22u)], Struct_2(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), true), !any(vec3<bool>(false, false, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(623f, var_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(287f, var_0) - vec2<f32>(-1228f, -618f))), vec2<u32>(~u_input.d, u_input.c.x), _wgslsmith_f_op_f32(trunc(-278f)))));
    let var_2 = var_0;
    return Struct_5(abs(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -2147483647i, i32(-1i) * -61843i), -(var_1.a | vec3<i32>(var_1.a.x, arg_0.x, global0[_wgslsmith_index_u32(1u, 29u)])))), max(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.d, 6u)], var_1.b, arg_0.x), ~u_input.a)), (0i | (2147483647i | arg_0.x)) | firstTrailingBit(1i)), Struct_4(global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(~36881u, 22u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1282f + _wgslsmith_f_op_f32(round(-1489f)))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -377f);
    let var_1 = func_6(func_5(func_4(_wgslsmith_f_op_vec4_f32(func_1()))));
    let var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(~13548u, ~47645u), ~(~3771u)), vec2<u32>(u_input.c.x, 54363u)), var_1.c.b.d);
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    global1 = array<i32, 6>();
    global0 = array<i32, 29>();
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(abs(_wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(global1[_wgslsmith_index_u32(var_1.c.a.d.x, 6u)], -32873i))), ~vec2<i32>(18743i, 41979i)), countOneBits(abs(_wgslsmith_add_vec2_i32(u_input.a.yz, u_input.a.xz)))));
}

