struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global1: array<i32, 7>;

var<private> global2: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    global2 = any(arg_2.b.yzy);
    global0 = array<vec2<bool>, 12>();
    let var_0 = vec4<u32>(~reverseBits(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(36289u, u_input.a.x, 1u, u_input.a.x), u_input.a), _wgslsmith_div_u32(45316u, u_input.a.x))), u_input.a.x, ~u_input.a.x, u_input.a.x);
    global1 = array<i32, 7>();
    let var_1 = Struct_1(arg_0.x, vec4<bool>(false, !any(!vec2<bool>(arg_0.x, false)), arg_1.a, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.c.x, 1526f, arg_1.c.x, 207f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(872f, arg_1.c.x, arg_3.x, -920f), vec4<f32>(688f, arg_3.x, arg_3.x, arg_2.c.x))))))));
    return _wgslsmith_f_op_f32(exp2(arg_3.x)) != 2142f;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global1 = array<i32, 7>();
    return Struct_1(_wgslsmith_f_op_f32(select(-704f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -453f))), all(vec3<bool>(true, true, false)))) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(326f, 303f)))), !vec4<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false)), func_3(vec4<bool>(true, true, true, true), Struct_1(true, vec4<bool>(false, false, true, true), vec4<f32>(702f, -427f, -463f, 821f)), Struct_1(false, vec4<bool>(true, false, true, false), vec4<f32>(153f, 2466f, 2773f, 1301f)), vec3<f32>(-510f, -1870f, -1867f)), !select(false, false, false), true), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(480f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-859f, -326f)) * _wgslsmith_f_op_f32(-738f + -270f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1100f)), 1324f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1000f, -469f)), -600f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -278f)) - _wgslsmith_div_f32(-1131f, _wgslsmith_f_op_f32(sign(-117f))))));
}

fn func_1() -> i32 {
    var var_0 = func_2(u_input.a.zzw);
    global0 = array<vec2<bool>, 12>();
    let var_1 = reverseBits(max(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, _wgslsmith_div_i32(-14021i, 2147483647i)), vec2<i32>(4274i, -10165i)), select(_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.b, global1[_wgslsmith_index_u32(1u, 7u)]), _wgslsmith_add_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(22620u, 7u)], 25057i), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 0i)), vec2<i32>(global1[_wgslsmith_index_u32(85316u, 7u)], -47397i) >> (u_input.a.wx % vec2<u32>(32u))), vec2<i32>(global1[_wgslsmith_index_u32(6547u, 7u)], -12386i) | abs(vec2<i32>(-29632i, -66398i)), !var_0.b.xw)));
    var var_2 = !(!global0[_wgslsmith_index_u32(~max(u_input.a.x, u_input.a.x), 12u)]);
    global2 = (_wgslsmith_div_i32(_wgslsmith_sub_i32(countOneBits(u_input.c), _wgslsmith_div_i32(20660i, global1[_wgslsmith_index_u32(u_input.a.x, 7u)])), 1i) << (_wgslsmith_dot_vec3_u32(u_input.a.www, vec3<u32>(u_input.a.x, 53492u, u_input.a.x)) % 32u)) < _wgslsmith_dot_vec3_i32(~firstLeadingBit(~vec3<i32>(15178i, -16630i, u_input.b)), ~(vec3<i32>(0i, var_1.x, -53809i) ^ (vec3<i32>(0i, -8728i, 70770i) | vec3<i32>(var_1.x, 2147483647i, 2147483647i))));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(func_1(), -u_input.b, (i32(-1i) * -2147483647i) >> ((_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a.xyw, vec3<u32>(u_input.a.x, u_input.a.x, 0u)), abs(1u)) | u_input.a.x) % 32u), u_input.c);
    var var_1 = func_2(select(select(u_input.a.xyx, u_input.a.yzy >> (_wgslsmith_mult_vec3_u32(u_input.a.wyx, u_input.a.zwz) % vec3<u32>(32u)), vec3<bool>(true, select(false, true, false), true)), u_input.a.yww, vec3<bool>(true, true, true)));
    let var_2 = Struct_1(any(vec2<bool>(global1[_wgslsmith_index_u32(countOneBits(u_input.a.x), 7u)] <= 1i, select(func_2(u_input.a.yxz).b.x, var_1.b.x, true))), select(!func_2(_wgslsmith_add_vec3_u32(u_input.a.wwz, u_input.a.wzw)).b, select(vec4<bool>(true, var_1.a, true, var_1.a), func_2(firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, 0u))).b, true), var_1.b.x), _wgslsmith_f_op_vec4_f32(-var_1.c));
    var_1 = func_2(u_input.a.xzx);
    var var_3 = func_2(_wgslsmith_clamp_vec3_u32(u_input.a.zxx, ~_wgslsmith_mod_vec3_u32(u_input.a.xyy, u_input.a.yxx), _wgslsmith_clamp_vec3_u32(~max(vec3<u32>(4294967295u, 60803u, 1u), u_input.a.xww), max(u_input.a.zzy, u_input.a.wwz | vec3<u32>(u_input.a.x, u_input.a.x, 0u)), u_input.a.wzz)));
    var_3 = func_2(vec3<u32>(~firstTrailingBit(1u) & (~24099u | u_input.a.x), (~u_input.a.x << (u_input.a.x % 32u)) >> (u_input.a.x % 32u), ~(~u_input.a.x) << (_wgslsmith_div_u32(_wgslsmith_mod_u32(3452u, u_input.a.x), _wgslsmith_clamp_u32(43294u, 1u, 1u)) % 32u)));
    global2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, u_input.a.x), ~u_input.a.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a.xxy, vec3<u32>(4294967295u, 0u, u_input.a.x) << (_wgslsmith_mult_vec3_u32(u_input.a.ywy, vec3<u32>(70770u, u_input.a.x, 4294967295u)) % vec3<u32>(32u))), u_input.a.zzx), ~abs(_wgslsmith_sub_u32(48496u, u_input.a.x)), abs(u_input.a));
}

