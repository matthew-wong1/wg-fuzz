struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<u32>(102922u, 4294967295u, 8573u, 4294967295u), 14056u, vec4<bool>(false, true, true, false)), Struct_2(vec4<u32>(67805u, 4294967295u, 873u, 4294967295u), 94144u, vec4<bool>(true, true, false, false)), Struct_2(vec4<u32>(15609u, 0u, 1u, 41817u), 0u, vec4<bool>(true, true, true, true)), Struct_2(vec4<u32>(31054u, 58666u, 0u, 0u), 4294967295u, vec4<bool>(true, true, true, true)), Struct_2(vec4<u32>(50511u, 1u, 1u, 45568u), 2991u, vec4<bool>(false, true, false, true)), Struct_2(vec4<u32>(4294967295u, 0u, 1u, 37848u), 4864u, vec4<bool>(true, false, true, false)), Struct_2(vec4<u32>(1u, 68232u, 1u, 0u), 4294967295u, vec4<bool>(true, false, true, true)), Struct_2(vec4<u32>(16759u, 0u, 0u, 1u), 1u, vec4<bool>(false, false, true, true)), Struct_2(vec4<u32>(1u, 131108u, 0u, 6862u), 4294967295u, vec4<bool>(false, true, true, false)), Struct_2(vec4<u32>(4294967295u, 6552u, 29185u, 4294967295u), 21564u, vec4<bool>(false, true, false, true)), Struct_2(vec4<u32>(24081u, 24125u, 99193u, 1u), 4294967295u, vec4<bool>(false, false, false, true)), Struct_2(vec4<u32>(28877u, 17243u, 26376u, 31779u), 4294967295u, vec4<bool>(true, true, true, false)), Struct_2(vec4<u32>(17323u, 15530u, 51520u, 72477u), 4294967295u, vec4<bool>(true, false, true, true)), Struct_2(vec4<u32>(9270u, 23955u, 56262u, 1u), 43230u, vec4<bool>(false, false, false, true)), Struct_2(vec4<u32>(13083u, 0u, 4294967295u, 0u), 10818u, vec4<bool>(false, false, false, false)), Struct_2(vec4<u32>(0u, 4294967295u, 41182u, 0u), 0u, vec4<bool>(false, true, true, true)), Struct_2(vec4<u32>(28120u, 44171u, 4294967295u, 4294967295u), 4294967295u, vec4<bool>(true, false, true, false)), Struct_2(vec4<u32>(4294967295u, 18395u, 63938u, 4294967295u), 62865u, vec4<bool>(true, true, false, true)), Struct_2(vec4<u32>(0u, 37175u, 0u, 64546u), 1u, vec4<bool>(true, false, true, false)), Struct_2(vec4<u32>(43508u, 23468u, 21833u, 26089u), 0u, vec4<bool>(true, true, false, true)), Struct_2(vec4<u32>(1u, 0u, 27924u, 72119u), 4294967295u, vec4<bool>(true, true, false, true)), Struct_2(vec4<u32>(0u, 1u, 1u, 34753u), 21992u, vec4<bool>(false, true, false, false)), Struct_2(vec4<u32>(55277u, 105194u, 4294967295u, 1u), 65681u, vec4<bool>(true, true, true, false)), Struct_2(vec4<u32>(69794u, 0u, 1263u, 85011u), 37893u, vec4<bool>(true, true, true, true)), Struct_2(vec4<u32>(42978u, 1u, 0u, 53139u), 38886u, vec4<bool>(false, true, false, true)), Struct_2(vec4<u32>(191u, 79230u, 4294967295u, 69203u), 4294967295u, vec4<bool>(false, true, true, false)));

var<private> global2: vec2<i32>;

var<private> global3: array<vec3<bool>, 26>;

var<private> global4: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2936f - 468f)), 1f)));
    global3 = array<vec3<bool>, 26>();
    global4 = array<vec3<bool>, 32>();
    return select(countOneBits(select(-(vec4<i32>(17905i, arg_0.a.x, 56120i, arg_0.a.x) >> (vec4<u32>(41439u, 14024u, u_input.b, 43775u) % vec4<u32>(32u))), vec4<i32>(36i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, 24870i, 1i, arg_0.a.x), vec4<i32>(0i, 42845i, 1i, global2.x)), -12162i, 2147483647i), false)), -abs(~_wgslsmith_mult_vec4_i32(vec4<i32>(global2.x, global2.x, arg_0.a.x, 29575i), vec4<i32>(-2147483647i, global2.x, global2.x, 1i))), arg_1.a);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<u32>) -> vec3<f32> {
    let var_0 = false || (all(global4[_wgslsmith_index_u32(3901u, 32u)]) != true);
    global4 = array<vec3<bool>, 32>();
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.b), 26u)];
    global3 = array<vec3<bool>, 26>();
    global1 = array<Struct_2, 26>();
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-485f, 1202f) * 189f))), _wgslsmith_div_f32(-1012f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1118f)))));
}

fn func_2(arg_0: f32) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_clamp_vec3_i32((vec3<i32>(2147483647i, 4274i, -24263i) >> (min(vec3<u32>(62212u, 14523u, u_input.b), vec3<u32>(u_input.a, u_input.b, 56614u)) % vec3<u32>(32u))) >> (countOneBits(firstTrailingBit(vec3<u32>(u_input.b, 4294967295u, 19250u))) % vec3<u32>(32u)), vec3<i32>(countOneBits(6680i), 1i, -1i), abs(vec3<i32>(abs(-34264i), _wgslsmith_mod_i32(global2.x, global2.x), -39860i))));
    global0 = array<Struct_3, 25>();
    let var_1 = _wgslsmith_f_op_vec3_f32(func_4(-firstLeadingBit(-func_3(var_0, global0[_wgslsmith_index_u32(33494u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 26u)])), ~abs(vec3<u32>(u_input.b, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a, u_input.a, u_input.c), vec4<u32>(1u, 0u, u_input.a, 1u))))));
    let var_2 = ~_wgslsmith_mod_vec3_u32(max(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 16557u, u_input.a), vec3<u32>(u_input.b, 17315u, 0u)), vec3<u32>(u_input.a, 35520u, u_input.a) << (vec3<u32>(u_input.c, 26946u, u_input.b) % vec3<u32>(32u))), vec3<u32>(1u, _wgslsmith_mod_u32(u_input.a, u_input.a), 4294967295u)), abs(~(~vec3<u32>(0u, u_input.b, 12096u))));
    global3 = array<vec3<bool>, 26>();
    return vec4<u32>(var_2.x, var_2.x, select(_wgslsmith_dot_vec3_u32(~var_2, ~vec3<u32>(var_2.x, 1u, 4294967295u)), firstTrailingBit(~u_input.a), true), 68230u);
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: i32, arg_3: vec4<bool>) -> vec2<i32> {
    let var_0 = Struct_2(~(~vec4<u32>(4294967295u, u_input.a, arg_1, 79487u) << ((vec4<u32>(u_input.a, 0u, arg_1, 4294967295u) >> (vec4<u32>(0u, 1u, 0u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))) | firstTrailingBit(func_2(-805f)), 4294967295u, !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, arg_0.a.x, arg_0.a.x, true), vec4<bool>(arg_3.x, arg_0.a.x, false, arg_3.x), vec4<bool>(true, true, arg_0.a.x, true)), arg_3, all(vec3<bool>(arg_3.x, true, arg_3.x))), arg_0.a.x));
    let var_1 = !vec3<bool>(!(!(!arg_0.a.x)), !arg_0.a.x, all(!vec2<bool>(var_0.c.x, arg_0.a.x)));
    var var_2 = !vec4<bool>(true, true, !(_wgslsmith_f_op_f32(floor(931f)) <= _wgslsmith_f_op_f32(f32(-1f) * -721f)), select(var_0.c.x, !any(var_0.c), any(select(arg_0.a.wzx, var_0.c.zwx, var_0.c.x))));
    global0 = array<Struct_3, 25>();
    global0 = array<Struct_3, 25>();
    return _wgslsmith_clamp_vec2_i32(vec2<i32>(-21281i, global2.x), _wgslsmith_mod_vec2_i32(-(vec2<i32>(10264i, global2.x) & vec2<i32>(arg_2, -2147483647i)), vec2<i32>(2147483647i >> (arg_1 % 32u), ~0i)), min(-vec2<i32>(arg_2, global2.x) >> (var_0.a.xw % vec2<u32>(32u)), -vec2<i32>(0i, 80992i))) & vec2<i32>(15534i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(-vec2<i32>(~global2.x, global2.x) ^ vec2<i32>(max(~0i, 1i), abs(global2.x)), firstTrailingBit(func_1(global0[_wgslsmith_index_u32(u_input.b, 25u)], u_input.c, _wgslsmith_mult_i32(global2.x, 1i), vec4<bool>(true, true, true, true))), true);
    global1 = array<Struct_2, 26>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~func_2(-1392f).x, ~abs(1u), ~u_input.a), ~(~vec3<u32>(9509u, 0u, 35566u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(86193u, u_input.a, 47227u), vec3<u32>(1u, 0u, u_input.b)))), ~vec3<u32>(max(~13111u, func_2(298f).x), 93298u, select(~51432u, reverseBits(1u), any(vec2<bool>(true, false))))), 25u)];
    let var_2 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(~107477u, _wgslsmith_div_u32(u_input.a, u_input.b), ~u_input.c, 79576u), _wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 29362u, 4294967295u, 4294967295u), vec4<u32>(86740u, u_input.c, u_input.a, 83136u)), abs(~vec4<u32>(u_input.c, 9722u, u_input.a, u_input.b)))), vec4<u32>(4294967295u, abs(101494u), ~_wgslsmith_div_u32(min(1u, 48611u), ~34734u), _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, ~u_input.a), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(10570u, 0u), vec2<u32>(u_input.a, u_input.a))))));
    var var_3 = _wgslsmith_clamp_i32((var_0.x ^ 0i) << (reverseBits(var_2.x) % 32u), -2147483647i, reverseBits(var_0.x));
    global1 = array<Struct_2, 26>();
    let var_4 = Struct_1(select(-_wgslsmith_sub_vec3_i32(vec3<i32>(26085i, var_0.x, global2.x), vec3<i32>(2717i, global2.x, var_0.x)), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, -15913i, 45789i), firstLeadingBit(vec3<i32>(global2.x, 2147483647i, 77173i))), vec3<i32>(var_0.x & var_0.x, _wgslsmith_div_i32(-11539i, 11292i), 1i)), true));
    let var_5 = Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 35215u, u_input.c, var_2.x), vec4<u32>(64118u << (1u % 32u), ~u_input.c, u_input.c, _wgslsmith_mod_u32(u_input.a ^ u_input.b, 4294967295u))), var_2.x, select(vec4<bool>(true, any(!var_1.a.yy), false, var_1.a.x), !vec4<bool>(var_1.a.x, false, true, true), any(vec4<bool>(true, all(vec3<bool>(var_1.a.x, true, false)), any(var_1.a.ww), var_1.a.x | var_1.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-713f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-257f)))), _wgslsmith_f_op_f32(f32(-1f) * -118f), _wgslsmith_f_op_f32(select(-635f, _wgslsmith_div_f32(1143f, -1385f), var_1.a.x))))), _wgslsmith_sub_vec2_u32(var_5.a.wz, vec2<u32>(u_input.a, ~min(u_input.b, 40140u))));
}

