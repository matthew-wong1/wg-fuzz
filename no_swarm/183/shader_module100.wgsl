struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<f32, 19> = array<f32, 19>(-199f, -126f, -754f, 390f, -116f, -1515f, 231f, -1033f, -278f, 188f, -1354f, 327f, -1000f, 377f, -2458f, -1541f, 1000f, 2868f, -827f);

var<private> global2: Struct_2 = Struct_2(vec2<i32>(6311i, 8240i));

var<private> global3: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(27643u, 1u, 4294967295u, 253u), vec4<u32>(4294967295u, 22948u, 4294967295u, 39310u), vec4<u32>(1u, 26620u, 73221u, 51369u), vec4<u32>(4294967295u, 1u, 19476u, 4294967295u), vec4<u32>(4294967295u, 8558u, 75981u, 45860u), vec4<u32>(4294967295u, 37630u, 4294967295u, 19901u), vec4<u32>(2460u, 13677u, 63519u, 51244u), vec4<u32>(0u, 49397u, 85130u, 4294967295u), vec4<u32>(21239u, 33907u, 1u, 21409u), vec4<u32>(55418u, 4294967295u, 0u, 1u), vec4<u32>(1u, 1u, 1u, 4294967295u));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = Struct_1(-17467i << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u << (u_input.c % 32u), u_input.c), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 55808u), vec2<u32>(u_input.a, 0u))) % 32u));
    var_0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_mult_i32(~var_0.a, i32(-1i) * -5888i), global2.a.x));
    let var_1 = _wgslsmith_div_f32(global0.x, global0.x);
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.c), vec3<u32>(1u, u_input.c, 1u)), 19u)] * -231f) - global0.x), _wgslsmith_f_op_f32(floor(-1000f)), -922f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1769f, -271f, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global0.x)))), global0.x) * vec3<f32>(714f, _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-1120f * 1310f)), global0.x)));
    let var_2 = global0.x;
    return _wgslsmith_dot_vec3_i32(-(vec3<i32>(-1i) * -(~vec3<i32>(var_0.a, 2147483647i, global2.a.x))), u_input.b.zxz);
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = Struct_2(-u_input.b.yw);
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -106f) + _wgslsmith_f_op_f32(-726f * global0.x)), -1686f, 223f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-108f, 383f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.c, 19u)], global0.x, global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)]))))), global2.a.x, global3[_wgslsmith_index_u32(~u_input.c, 11u)], 14566u, Struct_1(_wgslsmith_div_i32(2147483647i, ~(-18217i))));
    global3 = array<vec4<u32>, 11>();
    var var_2 = abs(~u_input.c);
    global2 = var_0;
    return -_wgslsmith_mod_i32(~(~func_3()), firstLeadingBit(-9189i) & _wgslsmith_mult_i32(1i << (u_input.a % 32u), _wgslsmith_mod_i32(-57955i, 1i)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_2) -> i32 {
    var var_0 = Struct_4(global2.a, true, Struct_3(vec3<i32>(1i, firstTrailingBit(0i), select(abs(2147483647i), -2147483647i, false)), 2147483647i, global0.x, max(arg_2.x & u_input.b.x, max(21849i, func_3()))));
    var var_1 = Struct_2(arg_2.wy);
    var_0 = Struct_4(var_0.c.a.yx << (_wgslsmith_sub_vec2_u32(select(vec2<u32>(0u, 0u), vec2<u32>(u_input.a, 1u) << (vec2<u32>(48162u, u_input.a) % vec2<u32>(32u)), !var_0.b), reverseBits(vec2<u32>(u_input.a, u_input.c)) >> ((vec2<u32>(u_input.a, u_input.c) << (vec2<u32>(62304u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)), !(-(i32(-1i) * -39503i) > ~_wgslsmith_add_i32(u_input.b.x, 44615i)), Struct_3(vec3<i32>(arg_3.a.x, abs(_wgslsmith_sub_i32(-2906i, 38073i)), -1i), _wgslsmith_mult_i32(global2.a.x, var_0.c.b), -1000f, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(arg_2.zzz, u_input.b.zxy), -arg_2.xzz) << (~1u % 32u)));
    let var_2 = Struct_1(12381i);
    let var_3 = arg_3;
    return var_0.a.x << ((0u | _wgslsmith_clamp_u32(4294967295u, max(u_input.c, abs(59665u)), ~(4220u ^ u_input.a))) % 32u);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_5) -> vec3<f32> {
    let var_0 = _wgslsmith_div_i32(func_4(any(vec3<bool>(true, true, true)), select(~(~u_input.b.x), 0i, global2.a.x <= -36107i), vec4<i32>(~abs(arg_2.e.a), _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.b.x, 1i), max(69222i, arg_2.e.a), func_2(arg_2.a.x)), 23442i, arg_2.b), Struct_2(-u_input.b.wx | min(global2.a, arg_1))), arg_1.x);
    let var_1 = Struct_5(arg_2.a, -2147483647i, (arg_2.c | vec4<u32>(arg_2.d, ~u_input.a, u_input.c, arg_2.d | u_input.a)) >> (_wgslsmith_sub_vec4_u32(arg_2.c, _wgslsmith_mult_vec4_u32(~global3[_wgslsmith_index_u32(1u, 11u)], ~vec4<u32>(1u, 1u, u_input.a, u_input.c))) % vec4<u32>(32u)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_2.c.yw, vec2<u32>(u_input.c, arg_2.d)), ~1u), ~_wgslsmith_dot_vec2_u32(arg_2.c.xw, max(arg_2.c.xw, arg_2.c.ww))), arg_2.e);
    let var_2 = ~vec3<i32>(-(i32(-1i) * -35059i), _wgslsmith_mult_i32(firstLeadingBit(32959i), _wgslsmith_div_i32(_wgslsmith_add_i32(-41426i, 2147483647i), func_3())), firstTrailingBit(i32(-1i) * -global2.a.x));
    global2 = Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, ~(~arg_2.b)), -reverseBits(-u_input.b.yy)));
    global3 = array<vec4<u32>, 11>();
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(arg_2.a.wxw))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 19>();
    let var_0 = -2147483647i;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_1(1049f, u_input.b.ww, Struct_5(vec4<f32>(2168f, -104f, 175f, global1[_wgslsmith_index_u32(240u, 19u)]), global2.a.x, global3[_wgslsmith_index_u32(1u, 11u)], 1u, Struct_1(u_input.b.x)))))))));
    var var_1 = u_input.a;
    global0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1[_wgslsmith_index_u32(1u, 19u)], global0.x, _wgslsmith_div_f32(1426f, global1[_wgslsmith_index_u32(0u, 19u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(25044u, 1u, ~12117u), global1[_wgslsmith_index_u32(max(~(~53958u), u_input.c), 19u)], vec2<u32>(~abs(u_input.a << (u_input.a % 32u)), min(u_input.a, u_input.c) ^ ~0u), vec3<u32>(u_input.a, select(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.c, u_input.c)), select(true, false, false)) | _wgslsmith_mod_u32(min(u_input.a, u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(6238u, u_input.a))), 4294967295u));
}

