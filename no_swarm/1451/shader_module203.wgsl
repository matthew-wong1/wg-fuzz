struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1265f, -760f));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-572f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -656f) + _wgslsmith_div_f32(-1160f, 652f)))), 1097f));
    let var_1 = !vec2<bool>(!(any(vec4<bool>(true, false, true, false)) == true), _wgslsmith_sub_i32(-63691i | u_input.b.x, u_input.b.x) != (_wgslsmith_mod_i32(2147483647i, u_input.b.x) >> (abs(38181u) % 32u)));
    global0 = array<Struct_2, 1>();
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u) >> (((vec4<u32>(1u, 1u, 1u, 1u) << (select(vec4<u32>(1u, 1u, 1u, 31244u), vec4<u32>(4294967295u, 4294967295u, 12973u, 1u), var_1.x) % vec4<u32>(32u))) >> (abs(vec4<u32>(1u, 68967u, 21992u, 19390u)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(26663u, ~(~abs(0u)), select(_wgslsmith_div_u32(max(48698u, 4294967295u), ~1u), 60680u, var_1.x), abs(_wgslsmith_sub_u32(min(44587u, 41016u), 1u))));
    return -vec2<i32>(~(_wgslsmith_clamp_i32(u_input.a, u_input.a, 39730i) << (~2719u % 32u)), -u_input.a);
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: bool, arg_3: u32) -> u32 {
    var var_0 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_3, 4294967295u, 60942u), vec4<u32>(arg_3, 46573u, 4294967295u, 1u)), ~8963u, reverseBits(~0u)), max(firstLeadingBit(~vec4<u32>(arg_3, 4294967295u, arg_3, arg_3)), select(vec4<u32>(38756u, 0u, 0u, arg_3), _wgslsmith_mod_vec4_u32(vec4<u32>(22309u, 21646u, 44207u, 4294967295u), vec4<u32>(arg_3, 0u, arg_3, arg_3)), !vec4<bool>(true, true, true, arg_0)))), ~vec3<u32>(1u, ~(~7344u), arg_3), Struct_1(arg_3 ^ arg_3, u_input.b, -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.a, arg_1.x), u_input.b) | abs(select(vec3<i32>(arg_1.x, 32803i, arg_1.x), vec3<i32>(-5586i, 815i, -4016i), true))), abs(_wgslsmith_add_u32(arg_3, ~arg_3)));
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(abs(var_0.b.yz), var_0.b.yy & var_0.b.xy), select(~var_0.b.zy, vec2<u32>(1u, var_0.a), true)), arg_3), 1u)];
    return min(~(~1u), 0u);
}

fn func_2() -> u32 {
    let var_0 = Struct_2(~(~1u), vec3<u32>(~1u, firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_mult_u32(52007u, 0u), 1u)), ~firstLeadingBit(1u)), Struct_1(abs(62733u), vec3<i32>(min(-38027i, -u_input.a), firstLeadingBit(-u_input.b.x), -u_input.a), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, u_input.b), ~vec3<i32>(u_input.b.x, 0i, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.b.x), vec3<i32>(u_input.a, 62119i, -1i)))), _wgslsmith_div_u32(func_4(false, func_3(), true, 1u), _wgslsmith_sub_u32(26632u, 6197u)) | min(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 0u)), 0u));
    let var_1 = vec3<bool>(var_0.c.c.x == -1i, false, 4294967295u > ~func_4(true, ~var_0.c.c.zz, any(vec2<bool>(true, true)), max(0u, 28753u)));
    global0 = array<Struct_2, 1>();
    global0 = array<Struct_2, 1>();
    var var_2 = Struct_1(_wgslsmith_div_u32(var_0.b.x, ~(~0u)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-9835i, var_0.c.c.x), (vec2<i32>(41101i, var_0.c.b.x) | vec2<i32>(u_input.b.x, u_input.b.x)) << (vec2<u32>(var_0.c.a, 9192u) % vec2<u32>(32u))), 1i, var_0.c.b.x), ~firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, var_0.c.c.x), u_input.b, vec3<i32>(0i, u_input.a, var_0.c.b.x))) ^ _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(1i, 0i, 1i)));
    return _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(var_2.a, 21805u))), abs(var_0.b.xy));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = select(true, true && any(vec2<bool>(true, all(vec4<bool>(false, false, true, false)))), !(countOneBits(38043u) >= _wgslsmith_dot_vec4_u32(vec4<u32>(30778u, 1u, 4294967295u, 5908u), vec4<u32>(22360u, 50950u, 33169u, 1u))) && false);
    let var_1 = _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, 87451u, 0u, 52566u)), vec4<u32>(_wgslsmith_div_u32(~376u, ~9162u), 897u, firstLeadingBit(func_2()), ~4294967295u)));
    global0 = array<Struct_2, 1>();
    var var_2 = true;
    global0 = array<Struct_2, 1>();
    return global0[_wgslsmith_index_u32(firstTrailingBit(var_1.x), 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~40129u, ~24486u);
    var_0 = ~vec2<u32>(_wgslsmith_sub_u32(var_0.x, ~(var_0.x | 4294967295u)), ~(~1u) << (_wgslsmith_div_u32(0u, var_0.x) % 32u));
    let var_1 = u_input.b;
    var var_2 = true;
    global0 = array<Struct_2, 1>();
    var var_3 = false;
    let var_4 = func_1(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(853f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-213f, 1118f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(878f)))), 426f), var_1.x << (min(0u, var_4.c.a) % 32u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(943f, 545f, -891f)))))))), -17625i, 4979u);
}

