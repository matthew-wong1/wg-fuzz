struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec3<f32>(-234f, -1083f, -1514f), 55960u, 4294967295u, vec2<bool>(false, true)), Struct_3(vec3<f32>(-430f, 1240f, 2352f), 10364u, 9786u, vec2<bool>(true, true)), Struct_3(vec3<f32>(-612f, -194f, 122f), 86678u, 35489u, vec2<bool>(true, false)), Struct_3(vec3<f32>(-559f, 386f, -1000f), 4294967295u, 36378u, vec2<bool>(false, false)), Struct_3(vec3<f32>(-1800f, 265f, 1114f), 4294967295u, 4292u, vec2<bool>(false, true)), Struct_3(vec3<f32>(725f, -814f, -1025f), 1260u, 81815u, vec2<bool>(false, true)), Struct_3(vec3<f32>(-869f, 605f, -921f), 41529u, 11005u, vec2<bool>(false, false)));

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(23250u), Struct_1(1u)), Struct_2(Struct_1(9290u), Struct_1(4294967295u)), Struct_2(Struct_1(1676u), Struct_1(0u)), Struct_2(Struct_1(14541u), Struct_1(65377u)), Struct_2(Struct_1(1u), Struct_1(28582u)), Struct_2(Struct_1(4119u), Struct_1(0u)), Struct_2(Struct_1(4294967295u), Struct_1(1u)));

var<private> global2: Struct_1 = Struct_1(1u);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> vec3<f32> {
    return vec3<f32>(-924f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-916f * -583f) + 752f) - _wgslsmith_f_op_f32(1607f * -239f)), 473f, false)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(127f - 199f))))));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(848f, 922f, _wgslsmith_f_op_f32(533f * 900f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(661f, -251f, _wgslsmith_div_f32(-465f, 745f))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1047f)), 463f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1000f)))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec3<f32>) -> bool {
    global2 = arg_2.b;
    let var_0 = _wgslsmith_mult_vec2_u32(arg_0.wz, abs(vec2<u32>(u_input.c.x, arg_2.a.a)));
    global0 = array<Struct_3, 7>();
    global1 = array<Struct_2, 7>();
    global0 = array<Struct_3, 7>();
    return true;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec4<u32>) -> vec2<bool> {
    global0 = array<Struct_3, 7>();
    var var_0 = !all(select(vec2<bool>(false, true), vec2<bool>(true, false), select(arg_1.xy, arg_0.d, vec2<bool>(true, false)))) & func_4(select(~_wgslsmith_mod_vec4_u32(arg_2, arg_2), ~vec4<u32>(u_input.a, u_input.a, global2.a, arg_2.x), !vec4<bool>(true, arg_1.x, true, true)), !(!(!vec4<bool>(arg_1.x, true, false, arg_0.d.x))), Struct_2(Struct_1(0u), Struct_1(u_input.c.x)), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(1u))));
    var var_1 = Struct_1(arg_0.b);
    global2 = Struct_1(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(~u_input.c.yyx, vec3<u32>(16341u, arg_0.b, 18529u)), vec3<u32>(_wgslsmith_clamp_u32(max(global2.a, arg_0.b), _wgslsmith_mod_u32(arg_2.x, global2.a), _wgslsmith_dot_vec2_u32(u_input.c.yy, u_input.c.wz)), 44256u, min(max(arg_2.x, 1u), arg_0.b))));
    var_0 = all(vec4<bool>(arg_1.x, arg_1.x, !any(select(arg_0.d, vec2<bool>(arg_0.d.x, true), vec2<bool>(false, false))), (_wgslsmith_clamp_i32(-23365i, u_input.b, u_input.b) | 0i) > _wgslsmith_mult_i32(-u_input.b, u_input.d.x)));
    return arg_0.d;
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = -417f;
    var var_1 = Struct_1(abs(u_input.c.x) | 4294967295u);
    var_1 = Struct_1(~(1u ^ ~(1u | global2.a)));
    var_1 = Struct_1(41437u);
    var_1 = Struct_1(u_input.a);
    return Struct_1(4294967295u);
}

fn func_6(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_add_i32(-arg_0, _wgslsmith_div_i32(-2147483647i, _wgslsmith_mult_i32(abs(max(62613i, arg_1)), ~0i)));
    global1 = array<Struct_2, 7>();
    global0 = array<Struct_3, 7>();
    global2 = func_5(Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(265f, 1063f, 1213f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1245f, -682f, -668f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(236f, 894f, -599f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(938f, -370f, -904f))))), select(true, false, true))), ~(~_wgslsmith_add_u32(32270u, global2.a)), firstTrailingBit(1u) ^ arg_2.a, vec2<bool>(false, false)));
    global0 = array<Struct_3, 7>();
    return global0[_wgslsmith_index_u32(~(~arg_2.a), 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~26451u, 7u)];
    var var_1 = func_6(~31432i ^ u_input.d.x, u_input.d.x, func_5(Struct_3(_wgslsmith_f_op_vec3_f32(func_1()), ~_wgslsmith_div_u32(var_0.c, global2.a), ~4294967295u, func_2(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], !vec3<bool>(true, var_0.d.x, var_0.d.x), _wgslsmith_sub_vec4_u32(u_input.c, u_input.c)))));
    global2 = func_5(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(~(~33819u)), _wgslsmith_sub_u32(u_input.a, abs(max(u_input.c.x, 14708u)))), 7u)]);
    var var_2 = var_1.a.x;
    var_2 = -727f;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -526f), _wgslsmith_div_f32(335f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_6(1i, u_input.b, Struct_1(1u)).a.x) - 501f)));
    var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, 885f)))), _wgslsmith_f_op_f32(f32(-1f) * -1723f));
    var var_4 = Struct_1(~_wgslsmith_dot_vec3_u32(reverseBits(u_input.c.yxy), vec3<u32>(52141u, 0u, u_input.c.x)) | 1u);
    global2 = Struct_1(~(~(~(~0u))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * var_0.a.x) + _wgslsmith_f_op_f32(abs(var_3.x))))));
}

