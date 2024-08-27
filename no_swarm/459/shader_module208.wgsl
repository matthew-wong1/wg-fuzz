struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(0i, -30178i), vec2<i32>(17534i, -26574i), vec2<i32>(655i, 1i), vec2<i32>(12088i, 20964i), vec2<i32>(i32(-2147483648), -1347i), vec2<i32>(1i, 30412i), vec2<i32>(-45641i, -17318i), vec2<i32>(-28388i, -4715i), vec2<i32>(69690i, 0i), vec2<i32>(-1i, 22064i), vec2<i32>(5153i, -53155i), vec2<i32>(-5732i, -38280i), vec2<i32>(24758i, 2147483647i), vec2<i32>(-9332i, 1i), vec2<i32>(11682i, -15767i), vec2<i32>(i32(-2147483648), -10729i), vec2<i32>(2147483647i, -5192i), vec2<i32>(2147483647i, -4228i), vec2<i32>(54490i, -32076i), vec2<i32>(i32(-2147483648), -22480i));

var<private> global1: array<Struct_2, 8>;

var<private> global2: array<vec2<bool>, 30>;

var<private> global3: array<u32, 14> = array<u32, 14>(12892u, 4294967295u, 85586u, 4294967295u, 0u, 5365u, 7453u, 54601u, 13088u, 4294967295u, 1u, 41304u, 42301u, 1u);

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    global1 = array<Struct_2, 8>();
    var var_0 = Struct_3(arg_1.a.x);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(2475f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(ceil(-216f))))))));
    var var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(~((vec4<u32>(83422u, 16089u, 1u, 33618u) | vec4<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 14u)], 4294967295u, global4.b, 6909u)) | _wgslsmith_mod_vec4_u32(vec4<u32>(1842u, 4294967295u, global3[_wgslsmith_index_u32(1u, 14u)], 0u), vec4<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 14u)], 4294967295u, u_input.a.x, 13389u))), vec4<u32>(min(global4.b, 1u), ~u_input.a.x, ~20992u, 31679u)), _wgslsmith_div_u32(4294967295u, ~1u) ^ global4.b);
    let var_3 = Struct_3(var_0.a);
    return max(-_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], countOneBits(vec2<i32>(-1i, global4.a.c))), -2147483647i);
}

fn func_2(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: u32) -> Struct_2 {
    let var_0 = vec3<i32>(((arg_1.x | abs(arg_1.x)) & _wgslsmith_add_i32(func_3(true, global4.a), 1i)) ^ _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.a.a.c, global4.a.c, arg_1.x), arg_1.xxy, vec3<i32>(62040i, arg_0.a.a.b.x, global4.a.b.x)), arg_1.xyx), 2147483647i), _wgslsmith_clamp_i32(global4.a.c, abs(select(-arg_0.a.a.c, ~51756i, true)), arg_1.x), abs(countOneBits(firstTrailingBit(global4.a.b.x))));
    var var_1 = _wgslsmith_mod_u32(4294967295u, ~arg_0.a.b);
    global1 = array<Struct_2, 8>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.c, 705f)), arg_0.a.a.a), _wgslsmith_f_op_vec2_f32(-global4.a.a)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.a.a) - arg_0.a.a.a))), global4.a.b, -select(-global4.a.b.x & arg_0.a.a.c, firstLeadingBit(arg_0.a.a.b.x & 73422i), true));
    var var_3 = arg_0.b.x;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global4.a.a)))), arg_1.xy, -4743i), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u << (0u % 32u), abs(global3[_wgslsmith_index_u32(37231u, 14u)])) >> (_wgslsmith_div_vec2_u32(vec2<u32>(global4.b, 0u), max(vec2<u32>(arg_2, 0u), vec2<u32>(1u, arg_2))) % vec2<u32>(32u)), ~(~(~vec2<u32>(24326u, 13581u)))), -1000f);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> vec2<u32> {
    global4 = func_2(Struct_4(Struct_2(Struct_1(global4.a.a, ~vec2<i32>(2147483647i, 0i), i32(-1i) * -7198i), ~firstLeadingBit(0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1473f)) + _wgslsmith_f_op_f32(f32(-1f) * -124f))), !vec3<bool>(arg_1, arg_1, arg_1)), vec4<i32>(_wgslsmith_mod_i32(-global4.a.b.x, ~global4.a.c), firstLeadingBit(i32(-1i) * -65164i), ~(~global4.a.c), _wgslsmith_div_i32(abs(arg_0.x), -2147483647i)) >> (firstLeadingBit(~select(vec4<u32>(19910u, global3[_wgslsmith_index_u32(global4.b, 14u)], global3[_wgslsmith_index_u32(4294967295u, 14u)], global4.b), vec4<u32>(17416u, 1u, 0u, 20297u), arg_1)) % vec4<u32>(32u)), firstTrailingBit(~global4.b));
    global4 = Struct_2(global4.a, ~_wgslsmith_mod_u32(select(_wgslsmith_add_u32(108649u, global4.b), u_input.a.x, true), countOneBits(global3[_wgslsmith_index_u32(1u >> (0u % 32u), 14u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.a.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-580f))))) * 1776f));
    var var_0 = true;
    var var_1 = Struct_3(661f);
    var var_2 = vec3<bool>(!any(vec4<bool>(select(false, true, arg_1), arg_1, arg_1, true)), arg_1, !(19767i <= _wgslsmith_dot_vec4_i32(select(vec4<i32>(0i, arg_0.x, -1i, -1200i), vec4<i32>(1i, arg_0.x, arg_0.x, global4.a.b.x), arg_1), _wgslsmith_sub_vec4_i32(vec4<i32>(-18037i, -1i, global4.a.c, 31232i), vec4<i32>(arg_0.x, -1i, -17535i, 39638i)))));
    return vec2<u32>(u_input.a.x, _wgslsmith_add_u32(~(~_wgslsmith_mod_u32(41904u, 1u)), global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(18697u, u_input.a.x), 14u)] >> (countOneBits(global3[_wgslsmith_index_u32(reverseBits(global4.b), 14u)]) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_u32(~u_input.a.xz ^ vec2<u32>(4244u >> (~u_input.a.x % 32u), ~u_input.a.x), firstLeadingBit(_wgslsmith_div_vec2_u32(func_1(global0[_wgslsmith_index_u32(global4.b, 20u)], true), vec2<u32>(_wgslsmith_mod_u32(global4.b, 4294967295u), 1u & u_input.a.x))));
    var var_1 = global3[_wgslsmith_index_u32(countOneBits(~u_input.a.x), 14u)] != 10407u;
    let var_2 = 1000f;
    let var_3 = Struct_3(-163f);
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(730f))))));
    global4 = func_2(Struct_4(Struct_2(func_2(Struct_4(global1[_wgslsmith_index_u32(global4.b, 8u)], vec3<bool>(true, false, true)), vec4<i32>(global4.a.b.x, 40756i, -14289i, global4.a.b.x), 13590u).a, ~(~global4.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) + -204f)), vec3<bool>(true, true, select(true, true, 26189i != global4.a.b.x))), countOneBits(~(~(vec4<i32>(global4.a.c, global4.a.c, global4.a.c, global4.a.b.x) << (vec4<u32>(28621u, u_input.a.x, u_input.a.x, 0u) % vec4<u32>(32u))))), var_0.x);
    var var_5 = !any(vec3<bool>(true, any(vec2<bool>(false, false)), true));
    let var_6 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(global4.a.b.x, global4.a.c), global0[_wgslsmith_index_u32(~var_0.x, 20u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(1u, var_0.x), abs(vec4<u32>(var_0.x, firstLeadingBit(24611u), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(global4.b, 7574u, var_0.x)), var_0.x) << (vec4<u32>(global4.b, _wgslsmith_add_u32(global3[_wgslsmith_index_u32(1u, 14u)], var_0.x), 0u, ~global4.b) % vec4<u32>(32u))));
}

