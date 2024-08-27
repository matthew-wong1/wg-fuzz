struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: array<i32, 1>;

var<private> global2: array<vec3<bool>, 24>;

var<private> global3: Struct_1 = Struct_1(1u, vec3<i32>(2147483647i, 14866i, -38348i), -880f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> vec3<u32> {
    global1 = array<i32, 1>();
    global3 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, global3.a), 0u), -min(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, global3.b.x, -2147483647i), vec3<i32>(14570i, global1[_wgslsmith_index_u32(u_input.a, 1u)], global3.b.x))), global3.b), global3.c);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -617f));
    var var_1 = !(!vec2<bool>(true || select(true, true, true), true));
    let var_2 = -(vec4<i32>(arg_0.x, -global3.b.x, abs(global3.b.x), global1[_wgslsmith_index_u32(reverseBits(0u), 1u)]) >> ((abs(vec4<u32>(u_input.a, arg_1, arg_1, 1u)) << (reverseBits(vec4<u32>(0u, global3.a, global3.a, arg_1)) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ abs(vec4<i32>(countOneBits(global1[_wgslsmith_index_u32(~global3.a, 1u)]), abs(_wgslsmith_dot_vec2_i32(global3.b.zy, arg_0)), firstTrailingBit(-global1[_wgslsmith_index_u32(30808u, 1u)]), countOneBits(1i)));
    return vec3<u32>(_wgslsmith_mult_u32(firstTrailingBit(global3.a), ~arg_1), countOneBits(0u), abs(~(~_wgslsmith_div_u32(6399u, u_input.a))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: i32) -> Struct_2 {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(10494u, 22941u, 8519u)) << (countOneBits(vec3<u32>(global3.a, 4294967295u, 1u)) % vec3<u32>(32u)), func_3(global3.b.xx & global3.b.xz, arg_0)), ~(~(global3.a >> (global3.a % 32u)))) << (firstLeadingBit(~vec2<u32>(arg_0, _wgslsmith_div_u32(1u, 29206u))) % vec2<u32>(32u));
    global3 = global0[_wgslsmith_index_u32(98218u, 5u)];
    global2 = array<vec3<bool>, 24>();
    var var_1 = _wgslsmith_clamp_vec3_u32(max(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(arg_0, 79445u, 4294967295u)), vec3<u32>(arg_0, u_input.a, 5069u) << (vec3<u32>(var_0.x, u_input.a, 43954u) % vec3<u32>(32u))), abs(vec3<u32>(1u, 0u, var_0.x))), vec3<u32>(u_input.a, ~(var_0.x >> (var_0.x % 32u)), ~46371u ^ _wgslsmith_mult_u32(u_input.b, 19655u))), ~reverseBits(~vec3<u32>(75227u, global3.a, 0u)), ~func_3(select(-vec2<i32>(arg_2, global3.b.x), vec2<i32>(0i, arg_2), -14935i >= global1[_wgslsmith_index_u32(u_input.a, 1u)]), ~var_0.x));
    global2 = array<vec3<bool>, 24>();
    return Struct_2(min(min(vec3<i32>(i32(-1i) * -61494i, ~1i, 25855i), firstTrailingBit(vec3<i32>(-2147483647i, -1591i, -53243i))), global3.b));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_2) -> bool {
    var var_0 = arg_0.x;
    var var_1 = !global2[_wgslsmith_index_u32(firstLeadingBit(abs(global3.a)), 24u)];
    var var_2 = global0[_wgslsmith_index_u32(37817u, 5u)];
    let var_3 = _wgslsmith_sub_i32(~_wgslsmith_mod_i32(~(-7604i), min(~global3.b.x, firstTrailingBit(global1[_wgslsmith_index_u32(u_input.b, 1u)]))), min(-10463i, max(firstLeadingBit(-arg_1.a.x), reverseBits(select(13029i, -2147483647i, true)))));
    var_2 = Struct_1(var_2.a, min(vec3<i32>(26802i, ~(-var_2.b.x), 0i), ~(vec3<i32>(13651i, 38550i, 66271i) | abs(vec3<i32>(1465i, arg_3.a.x, arg_1.a.x)))), _wgslsmith_f_op_f32(-global3.c));
    return false;
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: i32) -> Struct_2 {
    var var_0 = !global2[_wgslsmith_index_u32(~u_input.b, 24u)];
    var_0 = select(!global2[_wgslsmith_index_u32(global3.a, 24u)], vec3<bool>(!(!any(vec3<bool>(var_0.x, true, var_0.x))), var_0.x, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_1)) * _wgslsmith_f_op_vec4_f32(arg_1 - vec4<f32>(arg_0, global3.c, arg_1.x, -288f))), func_2(~21996u, global3.c, global3.b.x), vec2<u32>(~13320u, global3.a), Struct_2(global3.b))), var_0.x);
    let var_1 = global2[_wgslsmith_index_u32(global3.a, 24u)];
    global1 = array<i32, 1>();
    var var_2 = !(!select(vec4<bool>(var_1.x, var_0.x, all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !var_0.x), select(vec4<bool>(var_1.x, var_1.x, var_0.x, var_1.x), vec4<bool>(false, var_0.x, false, var_1.x), vec4<bool>(var_1.x, true, false, false)), 1u > global3.a));
    return Struct_2(vec3<i32>(arg_2, 5894i, ~(-11134i)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    global1 = array<i32, 1>();
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, global3.c)) - global3.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1759f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-479f)))), 1163f))));
    global1 = array<i32, 1>();
    let var_1 = _wgslsmith_sub_i32(abs(countOneBits(1i)), func_2(72691u, _wgslsmith_f_op_f32(-arg_2.c), -24297i).a.x);
    global1 = array<i32, 1>();
    return Struct_2(abs(arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(19788u, 30014u);
    let var_1 = func_5(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.c)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c, global3.c, 795f, 1261f)) - vec4<f32>(298f, -1730f, global3.c, global3.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global3.c, 716f, 946f, 425f), vec4<f32>(1423f, -2205f, -806f, global3.c)))), min(-1i, global3.b.x)), func_1(_wgslsmith_f_op_f32(step(-694f, -1200f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(192f, global3.c, -874f, global3.c))))), ~11362i), global0[_wgslsmith_index_u32(1u, 5u)], 49295u);
    var var_2 = var_1;
    var var_3 = !vec2<bool>(true, func_4(vec4<f32>(775f, 871f, 955f, global3.c), func_2(var_0.x, global3.c, global3.b.x), _wgslsmith_mod_vec2_u32(vec2<u32>(global3.a, 32313u), var_0), func_5(Struct_2(global3.b), var_1, Struct_1(var_0.x, vec3<i32>(global3.b.x, global1[_wgslsmith_index_u32(u_input.a, 1u)], 60854i), 2475f), 0u)) || true);
    global1 = array<i32, 1>();
    let var_4 = _wgslsmith_f_op_f32(-global3.c);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-54255i)), _wgslsmith_mod_vec3_u32((_wgslsmith_clamp_vec3_u32(vec3<u32>(64376u, 20796u, 430u), vec3<u32>(0u, 4294967295u, var_0.x), vec3<u32>(0u, 0u, 10230u)) ^ vec3<u32>(var_0.x, 4394u, 13300u)) << (~abs(vec3<u32>(var_0.x, 49213u, var_0.x)) % vec3<u32>(32u)), vec3<u32>(1u, global3.a ^ 4294967295u, var_0.x)), firstLeadingBit(~(~var_0.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.c, 1035f, global3.c, 1737f))), vec4<u32>(1u, u_input.b, firstTrailingBit(62957u), ~104764u & global3.a));
}

