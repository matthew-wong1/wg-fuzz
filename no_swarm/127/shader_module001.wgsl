struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<bool>, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    global1 = array<vec2<bool>, 29>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -296f)) + 268f))) * -1706f);
    var_0 = _wgslsmith_f_op_f32(floor(1380f));
    var var_1 = ~abs(vec3<u32>(_wgslsmith_mod_u32(u_input.a, 60727u), 0u & u_input.a, ~1u)) | vec3<u32>(select(u_input.a, 29311u, true), ~(~abs(u_input.a)), 4294967295u);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1943f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -540f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(214f, 851f), _wgslsmith_f_op_f32(2561f * -1000f))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-572f)) * _wgslsmith_f_op_f32(select(-2150f, 1242f, false)))))));
    return -147f;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: i32) -> f32 {
    var var_0 = select(vec2<i32>(-_wgslsmith_mult_i32(arg_2, -43443i), 0i), vec2<i32>(1i, 0i) | ~_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(arg_0, -36093i)), true) ^ vec2<i32>(~_wgslsmith_div_i32(min(1i, -1i), -32777i), ~(-(i32(-1i) * -1i)));
    global1 = array<vec2<bool>, 29>();
    let var_1 = Struct_4(Struct_2(1785f, arg_2, _wgslsmith_add_vec2_u32(select(abs(vec2<u32>(86144u, u_input.a)), select(vec2<u32>(34856u, 56165u), vec2<u32>(u_input.a, u_input.a), global1[_wgslsmith_index_u32(u_input.a, 29u)]), false), abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 50317u), vec2<u32>(u_input.a, 0u)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-492f, arg_1, 443f, arg_1) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 688f, arg_1, -1087f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1181f, -2280f, arg_1, -1048f), vec4<f32>(arg_1, -215f, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(134f, arg_1, arg_1, 1000f))))), true))));
    let var_2 = _wgslsmith_f_op_vec4_f32(var_1.a.d * _wgslsmith_f_op_vec4_f32(abs(var_1.a.d)));
    let var_3 = vec4<f32>(_wgslsmith_div_f32(-1500f, arg_1), _wgslsmith_f_op_f32(f32(-1f) * -777f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(ceil(287f))))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a.d.x)))))));
    return -307f;
}

fn func_2(arg_0: vec4<i32>) -> vec2<u32> {
    let var_0 = arg_0.xx;
    let var_1 = 36345u;
    global1 = array<vec2<bool>, 29>();
    var var_2 = _wgslsmith_add_u32(10835u, 1u) < ~u_input.a;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(38196i, _wgslsmith_f_op_f32(func_3()), _wgslsmith_mult_i32(~(-2147483647i), var_0.x)))), -var_0.x, vec2<u32>(u_input.a & u_input.a, 0u), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(806f, -278f)))), _wgslsmith_div_f32(-166f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(328f)) + -803f)), 649f));
    return var_3.c;
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -794f))), -(~(-1i)), func_2(vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1112f, -1087f, 913f, -1091f))))));
    global1 = array<vec2<bool>, 29>();
    global0 = 1i;
    let var_1 = var_0.a;
    global0 = reverseBits(1i);
    return Struct_3(var_1.d.x);
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(524f, abs(30006i), ~vec2<u32>(_wgslsmith_div_u32(u_input.a, 66584u) << (u_input.a % 32u), _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, u_input.a), max(u_input.a, u_input.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, -722f, 770f, 737f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, -1170f, 841f, arg_0.a), _wgslsmith_div_vec4_f32(vec4<f32>(-537f, arg_0.a, arg_0.a, 1000f), vec4<f32>(arg_0.a, -433f, arg_0.a, 2136f))))));
    let var_1 = -abs(-2147483647i);
    let var_2 = min(_wgslsmith_sub_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(var_0.c, vec2<u32>(1u, 28376u))) << (_wgslsmith_add_vec2_u32(var_0.c ^ var_0.c, var_0.c | vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_clamp_u32(0u, func_2(vec4<i32>(var_1, var_0.b, 2147483647i, -12182i)).x, _wgslsmith_dot_vec3_u32(vec3<u32>(29446u, 14352u, var_0.c.x), vec3<u32>(var_0.c.x, 13112u, 1u))), ~var_0.c.x)), var_0.c);
    global1 = array<vec2<bool>, 29>();
    let var_3 = min(vec4<u32>(u_input.a, u_input.a, 53948u, var_2.x), _wgslsmith_mod_vec4_u32(vec4<u32>(3794u, var_0.c.x, 20266u, 30432u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 1u, var_2.x, u_input.a), vec4<u32>(var_0.c.x, 122013u, var_2.x, u_input.a)) % vec4<u32>(32u)), ~countOneBits(vec4<u32>(var_2.x, 43336u, 1u, 1u))) << (firstLeadingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, 25293u, 0u, var_2.x), vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), vec4<u32>(0u, var_2.x, var_2.x, var_0.c.x), select(vec4<u32>(1u, 58447u, 84586u, 68169u), vec4<u32>(var_0.c.x, var_0.c.x, 0u, 1u), false))) % vec4<u32>(32u)));
    return Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(_wgslsmith_f_op_f32(trunc(var_0.d.x)) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1529f, arg_0.a)), false), 0u > u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1());
    var var_1 = ~_wgslsmith_add_i32(firstTrailingBit(-2147483647i) ^ -1i, ~(-1i)) > (abs(min(-54184i, _wgslsmith_mod_i32(10906i, 45369i))) | _wgslsmith_sub_i32(select(-38221i, abs(1i), var_0.b.x), select(-2147483647i, -17122i, var_0.c) & 1i));
    global0 = -(~1i);
    global1 = array<vec2<bool>, 29>();
    global1 = array<vec2<bool>, 29>();
    global1 = array<vec2<bool>, 29>();
    global1 = array<vec2<bool>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_mod_i32(1i, ~(-2147483647i))), ~_wgslsmith_clamp_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.a, 0u, 0u)), ~(~vec3<u32>(u_input.a, 22561u, u_input.a)), vec3<u32>(select(64298u, u_input.a, var_0.b.x), ~u_input.a, u_input.a)));
}

