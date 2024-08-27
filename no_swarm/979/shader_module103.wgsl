struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<f32>(-138f, 1585f, -1397f), false, 4294967295u, true, vec4<i32>(1i, 0i, 0i, -18336i)), Struct_1(vec3<f32>(-777f, -429f, -798f), true, 22855u, false, vec4<i32>(0i, 1i, 1i, i32(-2147483648))), Struct_1(vec3<f32>(-1000f, -1211f, -2643f), false, 74597u, true, vec4<i32>(45355i, -3989i, 8424i, 1i)), Struct_1(vec3<f32>(840f, -1235f, 1000f), true, 42912u, true, vec4<i32>(i32(-2147483648), 1i, -1i, -23658i)), Struct_1(vec3<f32>(329f, -1000f, 585f), false, 1u, true, vec4<i32>(-1i, 0i, 0i, 0i)), Struct_1(vec3<f32>(-1000f, 1924f, 2182f), false, 4294967295u, true, vec4<i32>(2147483647i, 2147483647i, 0i, i32(-2147483648))), Struct_1(vec3<f32>(577f, 517f, 1434f), true, 18409u, true, vec4<i32>(-1i, 1i, 28679i, 15675i)), Struct_1(vec3<f32>(285f, -1232f, 702f), false, 17570u, true, vec4<i32>(-1i, 16227i, -3254i, 229i)), Struct_1(vec3<f32>(593f, 921f, 1191f), true, 6040u, true, vec4<i32>(26219i, 2147483647i, -23205i, 17069i)), Struct_1(vec3<f32>(311f, -443f, 1317f), true, 1u, false, vec4<i32>(31383i, 2147483647i, 4312i, -62800i)), Struct_1(vec3<f32>(-399f, -958f, -904f), true, 53352u, false, vec4<i32>(-1i, i32(-2147483648), 1i, 2147483647i)), Struct_1(vec3<f32>(310f, -747f, 518f), true, 37572u, true, vec4<i32>(1i, 0i, 0i, -1i)), Struct_1(vec3<f32>(1985f, -393f, 1000f), true, 4294967295u, true, vec4<i32>(2147483647i, -8962i, 0i, -18915i)), Struct_1(vec3<f32>(1096f, 1476f, 864f), false, 31151u, true, vec4<i32>(-1i, -1i, 2147483647i, 1i)));

var<private> global2: Struct_2 = Struct_2(0i, -1560f, Struct_1(vec3<f32>(2050f, 804f, 886f), true, 25653u, false, vec4<i32>(i32(-2147483648), 13792i, 21630i, i32(-2147483648))));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x), 21u)];
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), ~u_input.c.x), 14u)];
    global2 = Struct_2(select(~(~(-var_0.e.x)), u_input.b, true), _wgslsmith_f_op_f32(abs(global2.c.a.x)), global1[_wgslsmith_index_u32(~abs(~var_1.c), 14u)]);
    let var_2 = Struct_2(u_input.d, _wgslsmith_f_op_f32(f32(-1f) * -2431f), Struct_1(global2.c.a, true, _wgslsmith_clamp_u32(~41317u, 17463u, 42929u), var_0.e.x >= abs(u_input.d), ~reverseBits(global2.c.e)));
    global2 = var_2;
    return 208f;
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_2(global2.c.e.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b, global2.b) + _wgslsmith_f_op_f32(global2.c.a.x - global2.c.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(891f)) * _wgslsmith_f_op_f32(abs(-1778f)))))), global1[_wgslsmith_index_u32(global2.c.c, 14u)]);
    var var_1 = var_0;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3140f + 315f) + global2.c.a.x)), _wgslsmith_f_op_f32(round(global2.b)), global2.b);
    let var_3 = Struct_1(global2.c.a, global2.c.b, ~abs(reverseBits(firstTrailingBit(28035u))), _wgslsmith_f_op_f32(-var_2.x) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a.x)), _wgslsmith_mod_vec4_i32(min(~abs(vec4<i32>(u_input.d, u_input.b, var_1.c.e.x, 20462i)), ~(~vec4<i32>(u_input.d, global2.a, 1i, 1i))), var_0.c.e));
    global1 = array<Struct_1, 14>();
    return vec4<u32>(~min(1u, abs(abs(19070u))), 44658u, 33210u, _wgslsmith_mult_u32(u_input.c.x, var_0.c.c));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    global2 = Struct_2(-_wgslsmith_add_i32(-83530i, abs(2147483647i)), 1000f, global2.c);
    var var_0 = global1[_wgslsmith_index_u32(arg_1.c, 14u)];
    global0 = array<Struct_1, 21>();
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.zz))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 1218f))))))), _wgslsmith_f_op_vec2_f32(global2.c.a.zy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zz))), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec4<bool>(true, var_0.b, var_0.d, arg_1.b))))));
    var var_2 = Struct_2(global2.c.e.x, 249f, Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0.a, vec3<f32>(123f, -1834f, 1000f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(417f, 241f, 631f)))))), ~_wgslsmith_mod_u32(global2.c.c, arg_1.c) > (global2.c.c ^ u_input.c.x), func_3().x ^ 74422u, global2.c.d, ~vec4<i32>(select(arg_1.e.x, 0i, false), global2.a, 0i >> (u_input.a % 32u), firstLeadingBit(global2.a))));
    return all(!vec4<bool>(true, all(vec2<bool>(true, global2.c.b)), false, any(select(vec2<bool>(true, var_0.b), vec2<bool>(var_2.c.d, false), vec2<bool>(global2.c.d, arg_1.b)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: bool, arg_3: i32) -> i32 {
    global0 = array<Struct_1, 21>();
    let var_0 = true & func_4(_wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(-704f, _wgslsmith_f_op_f32(step(arg_0.x, -657f)), _wgslsmith_f_op_f32(func_2(global2.c.b)))), Struct_1(global2.c.a, any(select(vec3<bool>(global2.c.d, arg_2, false), vec3<bool>(true, global2.c.b, arg_2), global2.c.d)), ~(~u_input.a), true, (vec4<i32>(arg_3, u_input.b, 0i, global2.a) & vec4<i32>(-2147483647i, arg_3, -2147483647i, -31220i)) << (func_3() % vec4<u32>(32u))));
    global1 = array<Struct_1, 14>();
    var var_1 = 0u;
    global1 = array<Struct_1, 14>();
    return global2.c.e.x;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> f32 {
    global2 = Struct_2(arg_1, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -104f)))), global0[_wgslsmith_index_u32(1u, 21u)]);
    let var_0 = Struct_2(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(55814i, global2.a), vec2<i32>(-1i, global2.a)), 476f, Struct_1(arg_0.a, _wgslsmith_f_op_f32(1127f - _wgslsmith_f_op_f32(global2.b * arg_0.a.x)) != _wgslsmith_div_f32(_wgslsmith_div_f32(global2.c.a.x, -987f), global2.b), 0u, true, firstLeadingBit(firstLeadingBit(-arg_0.e))));
    var var_1 = ~vec4<u32>(~(~61708u), 2155u, 4294967295u, _wgslsmith_add_u32(u_input.a, u_input.a) ^ _wgslsmith_mod_u32(u_input.c.x, 4294967295u)) >> (abs(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 4650u), u_input.c), _wgslsmith_mult_vec2_u32(u_input.c, vec2<u32>(6237u, u_input.a))), global2.c.c, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.c.c, 23694u, global2.c.c) >> (vec3<u32>(0u, u_input.a, 107701u) % vec3<u32>(32u)), vec3<u32>(global2.c.c, 0u, 0u)), _wgslsmith_add_u32(max(arg_0.c, global2.c.c), ~41587u))) % vec4<u32>(32u));
    global2 = var_0;
    let var_2 = _wgslsmith_mult_i32(var_0.a, arg_0.e.x);
    return 2479f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_i32(-(~(-global2.c.e.yw & min(global2.c.e.xx, vec2<i32>(1678i, -1112i)))), global2.c.e.wx);
    global0 = array<Struct_1, 21>();
    let var_1 = _wgslsmith_f_op_f32(func_5(Struct_1(_wgslsmith_f_op_vec3_f32(global2.c.a - vec3<f32>(global2.c.a.x, _wgslsmith_f_op_f32(exp2(global2.b)), 1000f)), true, ~4294967295u, !(firstTrailingBit(var_0.x) < func_1(global2.c.a, 19196u, global2.c.d, 1i)), global2.c.e), _wgslsmith_sub_i32(~_wgslsmith_mod_i32(u_input.e, -31695i), -2147483647i)));
    global2 = Struct_2(firstLeadingBit(select(0i, ~(1i & u_input.b), global2.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.c.a.x))), Struct_1(_wgslsmith_div_vec3_f32(global2.c.a, global2.c.a), false, 35047u, !global2.c.b, global2.c.e));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(global2.c.a - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, 792f, -759f)), _wgslsmith_f_op_vec3_f32(sign(global2.c.a))))), global2.c.b, u_input.a, true, -min(firstLeadingBit(vec4<i32>(u_input.d, u_input.b, 0i, -2147483647i)), vec4<i32>(1i, var_0.x, var_0.x, u_input.d)));
    var var_3 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1252f, -1414f, 316f, _wgslsmith_f_op_f32(func_2(false)))));
    let var_4 = var_3.zxz;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(-2147483647i, var_2.e.x));
}

