struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 32>;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<i32>(0i, 2147483647i), vec3<f32>(-547f, 271f, -1000f), vec3<u32>(0u, 0u, 1u), i32(-2147483648), vec2<bool>(false, false)));

var<private> global2: f32;

var<private> global3: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(90701u, 0u));

var<private> global4: Struct_3;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = !all(vec2<bool>(true, true));
    var var_1 = ~(-(~firstTrailingBit(~vec4<i32>(-1i, -1i, -328i, u_input.c.x))));
    let var_2 = _wgslsmith_f_op_f32(-1f);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-809f * 1337f), _wgslsmith_f_op_f32(exp2(var_2)), _wgslsmith_f_op_f32(-var_2))))));
    var var_4 = var_1.x;
    return min(~u_input.a, _wgslsmith_mult_u32(~_wgslsmith_add_u32(u_input.a, 4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 56576u, 35689u), ~vec4<u32>(39796u, u_input.b.x, u_input.b.x, 41307u)))) & u_input.a;
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 1u)];
    var var_1 = ~_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.b.x, var_0.c.x, u_input.a, 33479u)), ~(~(vec4<u32>(0u, var_0.c.x, 40295u, var_0.c.x) ^ vec4<u32>(var_0.c.x, 1u, u_input.b.x, u_input.b.x))));
    var var_2 = abs(-vec3<i32>(0i, var_0.a.x, 17428i));
    var var_3 = ~vec4<u32>(u_input.b.x, 1u, func_3() | ~_wgslsmith_clamp_u32(1u, 26298u, 92952u), var_0.c.x);
    var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(16352u, ~(~0u) | var_1.x, 50507u, ~42775u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b.x, 60890u, ~1u), vec4<u32>(~(var_3.x | 957u), u_input.a, ~1u ^ ~var_3.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 0u, var_3.x), vec4<u32>(0u, 1u, u_input.a, u_input.a)))));
    return abs(-abs(select(-1i, global4.a, false) >> (max(var_0.c.x, 50963u) % 32u)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)));
    global4 = Struct_3(_wgslsmith_dot_vec3_i32(countOneBits(u_input.c), u_input.c) | 2147483647i);
    var var_0 = Struct_3(_wgslsmith_div_i32(-firstTrailingBit(~arg_0), ~firstTrailingBit(-30337i)));
    let var_1 = vec4<u32>(abs(select(26953u, arg_1.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, var_0.a), u_input.c) != ~var_0.a)), _wgslsmith_sub_u32(u_input.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(16835u, u_input.a, arg_2, arg_2), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2, 1u, u_input.b.x, 4294967295u), vec4<u32>(arg_1.c.x, u_input.a, 84337u, arg_2))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.c.x, 1u, 26119u, arg_1.c.x), vec4<u32>(0u, arg_1.c.x, 88611u, u_input.b.x)), abs(vec4<u32>(4294967295u, arg_2, arg_1.c.x, arg_1.c.x))))), _wgslsmith_sub_u32(~(1u ^ arg_1.c.x), arg_1.c.x) >> (abs(arg_1.c.x) % 32u), u_input.b.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.b.x)))))));
    return Struct_1(select(u_input.c.zx << (var_1.zx % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(62101i, abs(2147483647i))), select(!arg_1.e, !vec2<bool>(arg_3, true), select(vec2<bool>(false, false), arg_1.e, vec2<bool>(false, true)))), _wgslsmith_f_op_vec3_f32(step(arg_1.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(arg_1.b)))))), vec3<u32>(~(~0u), ~8285u, max(abs(4294967295u), countOneBits(17102u))) << (var_1.yxw % vec3<u32>(32u)), min(~(-2147483647i), ~_wgslsmith_mod_i32(max(-27179i, 38204i), abs(26214i))), vec2<bool>(arg_3, arg_1.b.x > -991f));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_2(-_wgslsmith_sub_vec4_i32(min(vec4<i32>(arg_2, arg_1, -1i, -2147483647i), vec4<i32>(2147483647i, -45255i, u_input.c.x, global4.a)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(arg_2, 1i, u_input.c.x, u_input.c.x), vec4<i32>(91601i, 37848i, 24097i, arg_2), vec4<bool>(false, true, false, false)), ~vec4<i32>(arg_1, u_input.c.x, 17958i, u_input.c.x))), abs(23308u ^ max(0u, ~u_input.b.x)), func_4(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 1799f) - vec3<f32>(arg_0, 1084f, 1756f)))), Struct_1(abs(u_input.c.yy >> (global3[_wgslsmith_index_u32(1u, 1u)] % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-183f, 2354f, -1625f)))), _wgslsmith_mult_vec3_u32(max(vec3<u32>(9506u, u_input.a, 1u), vec3<u32>(u_input.a, u_input.b.x, 0u)), reverseBits(vec3<u32>(1u, 4294967295u, 26540u))), firstLeadingBit(i32(-1i) * -2147483647i), vec2<bool>(true, true)), abs(0u), all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true))));
    let var_1 = select(!vec2<bool>(select(4294967295u, 7118u, var_0.c.e.x) > u_input.b.x, all(var_0.c.e)), func_4(_wgslsmith_dot_vec2_i32(var_0.a.xw, _wgslsmith_clamp_vec2_i32(var_0.c.a, countOneBits(vec2<i32>(arg_1, 35665i)), u_input.c.yy)), func_4(-15093i, var_0.c, 43091u, false), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(64176u, var_0.b), var_0.c.c.yy), max(var_0.c.c.yx, var_0.c.c.zx)), !(var_0.c.e.x || var_0.c.e.x)).e, select(all(!select(vec3<bool>(var_0.c.e.x, false, false), vec3<bool>(false, var_0.c.e.x, false), var_0.c.e.x)), var_0.c.e.x, true));
    var var_2 = var_0.b;
    var_0 = Struct_2(var_0.a, _wgslsmith_add_u32(select(~(~19752u), 0u, !all(vec4<bool>(var_0.c.e.x, var_1.x, true, var_0.c.e.x))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 4294967295u)), vec2<u32>(u_input.a, abs(10322u)))), Struct_1(u_input.c.yy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.c.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(500f, arg_0, -537f) * vec3<f32>(564f, arg_0, -877f)))), ~(~var_0.c.c), select(firstTrailingBit(~global4.a), _wgslsmith_clamp_i32(abs(var_0.a.x), max(1i, -1i), global4.a), true), var_0.c.e));
    var var_3 = !vec3<bool>(true, var_1.x, false);
    return func_4(var_0.c.a.x, Struct_1(vec2<i32>(_wgslsmith_clamp_i32(-39882i, global4.a, -24640i), -37245i) | vec2<i32>(var_0.a.x, -arg_1), _wgslsmith_f_op_vec3_f32(-func_4(~u_input.c.x, func_4(global4.a, Struct_1(vec2<i32>(global4.a, -26572i), vec3<f32>(1000f, arg_0, -730f), var_0.c.c, 56951i, vec2<bool>(true, var_0.c.e.x)), 1u, true), u_input.a, true).b), vec3<u32>(41312u, u_input.a, 4572u), reverseBits(global4.a << (u_input.b.x % 32u)) | 0i, select(vec2<bool>(any(vec4<bool>(false, var_3.x, var_1.x, false)), true), !var_0.c.e, var_3.x)), ~u_input.a, !select(var_1.x, true, !var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(0u, 1u)];
    var var_1 = func_1(782f, 2147483647i, _wgslsmith_add_i32(var_0.d, abs(-32914i)));
    let var_2 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b.x, -891f, var_1.b.x), _wgslsmith_f_op_vec3_f32(select(var_1.b, var_1.b, false)), !var_1.e.x))))), firstTrailingBit(vec3<u32>(1u << (max(var_0.c.x, 0u) % 32u), 120591u, func_3())), ~(u_input.c.x | u_input.c.x), func_4(func_1(_wgslsmith_f_op_f32(sign(var_1.b.x)), abs(-57393i), -var_0.a.x).d ^ _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-91849i, 14831i), var_0.a), max(u_input.c.x, -25934i)), Struct_1(countOneBits(vec2<i32>(var_1.a.x, u_input.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -952f, 766f)), vec3<u32>(var_1.c.x, 18019u, 1u), 0i, vec2<bool>(true, true)), 0u, !(!var_0.e.x) | !any(vec4<bool>(true, var_0.e.x, var_0.e.x, var_0.e.x))).e);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -203f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * -846f)))) >= 869f;
    let var_4 = vec4<i32>(_wgslsmith_div_i32(~var_1.d, -11357i), var_2.a.x, i32(-1i) * -var_2.d, var_2.d) ^ -vec4<i32>(1i, var_1.a.x, 28663i, abs(~var_0.a.x));
    let var_5 = var_1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(max(-(~var_4), var_4)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(var_1.c.x << (76718u % 32u), 32u)])) - global0[_wgslsmith_index_u32(var_0.c.x, 32u)]), var_0.b.x);
}

