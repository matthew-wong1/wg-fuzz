struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<i32>;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, true, true), vec3<f32>(-1000f, 136f, -806f));

var<private> global3: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec3<i32>) -> i32 {
    var var_0 = firstLeadingBit(-vec4<i32>(reverseBits(-43009i), -11331i, 45682i >> (u_input.b.x % 32u), global1.x) ^ (_wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.a, u_input.a, -21352i, -15574i), vec4<i32>(u_input.a, u_input.a, u_input.a, -28494i), vec4<bool>(true, global2.a.x, arg_1, true)), reverseBits(vec4<i32>(u_input.a, -14814i, u_input.a, global1.x)), abs(vec4<i32>(34084i, arg_2.x, u_input.a, global1.x))) ^ _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(15381i, arg_2.x, u_input.a, -1i), vec4<i32>(global1.x, 33394i, global1.x, 4510i)), ~vec4<i32>(34767i, 20707i, u_input.a, u_input.a))));
    global0 = 4294967295u;
    global0 = 51961u;
    var var_1 = vec2<i32>(2147483647i, _wgslsmith_mod_i32(63786i, firstTrailingBit(-38916i) << (abs(31244u) % 32u)));
    global1 = ~(-var_0.xz);
    return _wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec3_i32(var_0.wyy | arg_2, arg_2)) | _wgslsmith_clamp_i32(~abs(global1.x >> (u_input.c % 32u)), 1i, _wgslsmith_mult_i32(~16167i, _wgslsmith_dot_vec2_i32(vec2<i32>(-41974i, var_1.x), var_0.yy << (vec2<u32>(22710u, 0u) % vec2<u32>(32u)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(!(!global2.a), _wgslsmith_div_vec3_f32(arg_1.b, _wgslsmith_f_op_vec3_f32(-arg_1.b)));
    var var_1 = vec3<f32>(-1274f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(517f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1294f + -745f) - global2.b.x)) + _wgslsmith_f_op_f32(-arg_1.b.x)), 1332f);
    let var_2 = -func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -103f) * var_0.b.x)), arg_1.a.x, vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(1i, -8319i, u_input.a)));
    global1 = -vec2<i32>(~(-49155i >> (u_input.c % 32u)), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(16224i, u_input.a, -66813i, global1.x)), vec4<i32>(u_input.a, u_input.a, 46287i, u_input.a))) << (vec2<u32>(firstLeadingBit(select(4294967295u, 31822u, false) >> (u_input.c % 32u)), ~(~86529u)) % vec2<u32>(32u));
    return !(!select(!select(vec4<bool>(var_0.a.x, true, true, arg_1.a.x), vec4<bool>(true, global2.a.x, var_0.a.x, true), vec4<bool>(global2.a.x, false, true, false)), !select(vec4<bool>(false, true, global2.a.x, true), vec4<bool>(var_0.a.x, false, false, true), vec4<bool>(true, global2.a.x, false, arg_1.a.x)), true));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = !select(arg_0.yzy, arg_3.a, true);
    var var_1 = abs(vec2<i32>(firstTrailingBit(-68763i), u_input.a | (-34454i >> (0u % 32u))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1249f, global2.b.x)))) * _wgslsmith_div_f32(global2.b.x, arg_3.b.x)), -200f, global2.b.x);
    let var_3 = arg_3;
    var var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global2.b, global2.b, func_2(arg_3.b, Struct_1(vec3<bool>(arg_0.x, var_0.x, arg_3.a.x), vec3<f32>(821f, var_3.b.x, arg_3.b.x))).xww))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 383f, var_2.x) * var_2) - global2.b)), vec3<bool>(all(select(vec3<bool>(false, var_0.x, arg_0.x), arg_0.wyy, !arg_2)), false, true)));
    return Struct_1(!(!select(!arg_0.ywx, !vec3<bool>(var_0.x, arg_3.a.x, true), all(vec3<bool>(true, true, false)))), _wgslsmith_f_op_vec3_f32(arg_3.b + _wgslsmith_f_op_vec3_f32(-var_2)));
}

fn func_1(arg_0: u32, arg_1: bool) -> f32 {
    let var_0 = func_4(select(vec4<bool>(!arg_1 && (global2.b.x <= global2.b.x), arg_1 || true, (global2.a.x && arg_1) & true, !(!global2.a.x)), select(vec4<bool>(!arg_1, -1i > u_input.a, global2.a.x & arg_1, global2.a.x), !(!vec4<bool>(arg_1, true, true, false)), false), select(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(global2.b.x, global2.b.x, global2.b.x), global2.b), Struct_1(vec3<bool>(arg_1, true, false), vec3<f32>(global2.b.x, global2.b.x, 1645f))), select(!vec4<bool>(false, arg_1, global2.a.x, false), select(vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(global2.a.x, global2.a.x, true, false), vec4<bool>(false, arg_1, true, global2.a.x)), vec4<bool>(true, global2.a.x, true, true)), false)), vec3<i32>(-25448i | global1.x, _wgslsmith_div_i32(-min(1i, -13095i), -u_input.a << (90349u % 32u)), _wgslsmith_add_i32(global1.x, 0i)), select(select(global3[_wgslsmith_index_u32(~u_input.b.x, 25u)], !global3[_wgslsmith_index_u32(arg_0 ^ 0u, 25u)], !vec3<bool>(arg_1, false, true)), vec3<bool>(any(select(global2.a.xx, vec2<bool>(false, arg_1), global2.a.x)), any(!vec4<bool>(true, arg_1, arg_1, arg_1)), true), !vec3<bool>(global2.a.x, global2.a.x, u_input.c != 7965u)), Struct_1(global3[_wgslsmith_index_u32(0u, 25u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.x, -1098f, -409f)))), _wgslsmith_f_op_vec3_f32(global2.b * global2.b))));
    var var_1 = _wgslsmith_dot_vec3_u32(max(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 24884u, arg_0, 0u), vec4<u32>(107458u, u_input.b.x, arg_0, 15867u)) >> (~u_input.c % 32u), _wgslsmith_mult_u32(~u_input.b.x, 1u), 1u), ~(~vec3<u32>(u_input.c, 3263u, 1159u) << (vec3<u32>(23869u, 4294967295u, u_input.c) % vec3<u32>(32u)))), abs(~vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), u_input.c ^ arg_0, _wgslsmith_div_u32(u_input.c, arg_0))));
    global3 = array<vec3<bool>, 25>();
    let var_2 = !var_0.a.zy;
    var var_3 = Struct_1(!global2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global2.b.x, global2.b.x), var_0.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-904f)))))));
    return _wgslsmith_f_op_f32(var_0.b.x + -125f);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec2<i32>) -> Struct_1 {
    global3 = array<vec3<bool>, 25>();
    let var_0 = firstLeadingBit(((~vec4<u32>(u_input.c, u_input.c, u_input.b.x, u_input.c) << (select(vec4<u32>(25542u, u_input.c, u_input.c, u_input.b.x), vec4<u32>(u_input.c, 4294967295u, u_input.b.x, 69108u), vec4<bool>(false, arg_2.x, false, arg_0.a.x)) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_u32(abs(vec4<u32>(34604u, u_input.c, u_input.b.x, u_input.b.x)), vec4<u32>(0u, 6667u, 8902u, 4294967295u))) & (vec4<u32>(u_input.c, 10827u, ~u_input.b.x, ~u_input.b.x) << ((_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, u_input.c), vec4<u32>(0u, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, 69720u, u_input.c, u_input.b.x)) << (countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.c)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_mult_vec4_u32(var_0, ~min(var_0, var_0 & _wgslsmith_mult_vec4_u32(var_0, var_0)));
    let var_2 = arg_0;
    let var_3 = arg_0;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -692f)));
    var var_1 = func_5(Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.b.x, -2916f, global2.b.x), global2.b, !vec3<bool>(global2.a.x, false, global2.a.x))))), Struct_1(global3[_wgslsmith_index_u32(abs(u_input.c) >> (u_input.b.x % 32u), 25u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.x, 1000f, 734f)))), select(select(global2.a, vec3<bool>(false || global2.a.x, !global2.a.x, false), _wgslsmith_f_op_f32(func_1(4294967295u, global2.a.x)) >= _wgslsmith_f_op_f32(-945f + 286f)), select(select(!global2.a, !vec3<bool>(true, global2.a.x, global2.a.x), true), select(select(vec3<bool>(false, global2.a.x, global2.a.x), vec3<bool>(true, true, global2.a.x), true), select(global2.a, vec3<bool>(true, false, false), vec3<bool>(global2.a.x, global2.a.x, true)), func_4(vec4<bool>(global2.a.x, false, global2.a.x, false), vec3<i32>(-2147483647i, global1.x, 1i), vec3<bool>(false, global2.a.x, global2.a.x), Struct_1(global2.a, vec3<f32>(1000f, 572f, global2.b.x))).a), true), global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(abs(u_input.c), ~u_input.b.x), 25u)]), abs(firstTrailingBit(vec2<i32>(u_input.a, _wgslsmith_mod_i32(0i, 2147483647i)))));
    var var_2 = func_4(vec4<bool>(false, func_5(func_5(Struct_1(vec3<bool>(global2.a.x, global2.a.x, global2.a.x), global2.b), Struct_1(vec3<bool>(true, global2.a.x, var_1.a.x), global2.b), vec3<bool>(false, true, global2.a.x), abs(vec2<i32>(u_input.a, u_input.a))), Struct_1(func_4(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), vec3<i32>(-3659i, global1.x, -100726i), global3[_wgslsmith_index_u32(u_input.c, 25u)], Struct_1(vec3<bool>(true, false, global2.a.x), vec3<f32>(-1000f, var_1.b.x, var_0))).a, _wgslsmith_div_vec3_f32(var_1.b, vec3<f32>(var_0, 522f, -206f))), func_2(_wgslsmith_f_op_vec3_f32(abs(global2.b)), func_4(vec4<bool>(global2.a.x, false, var_1.a.x, true), vec3<i32>(global1.x, u_input.a, -4982i), global3[_wgslsmith_index_u32(1u, 25u)], Struct_1(global3[_wgslsmith_index_u32(4294967295u, 25u)], global2.b))).xyx, min(select(vec2<i32>(20908i, u_input.a), vec2<i32>(1i, u_input.a), vec2<bool>(true, global2.a.x)), abs(vec2<i32>(global1.x, u_input.a)))).a.x, !(u_input.b.x <= 13971u) | all(select(var_1.a, global3[_wgslsmith_index_u32(u_input.b.x, 25u)], global2.a)), global1.x < 1i), vec3<i32>(-(select(global1.x, -12346i, true) | ~2147483647i), global1.x >> (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(19948u, u_input.b.x), vec2<u32>(u_input.c, 1u)), vec2<u32>(u_input.c, u_input.c)) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(56992i, global1.x, 0i, global1.x) | -vec4<i32>(global1.x, global1.x, -33216i, u_input.a), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(global1.x, u_input.a, 15501i, global1.x)), -vec4<i32>(global1.x, 22930i, global1.x, u_input.a)))), func_2(_wgslsmith_f_op_vec3_f32(sign(var_1.b)), func_5(func_4(func_2(global2.b, Struct_1(vec3<bool>(var_1.a.x, true, global2.a.x), vec3<f32>(global2.b.x, 878f, var_1.b.x))), vec3<i32>(u_input.a, u_input.a, global1.x), select(global3[_wgslsmith_index_u32(1u, 25u)], vec3<bool>(false, global2.a.x, true), global2.a), func_4(vec4<bool>(false, true, global2.a.x, false), vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<bool>(true, true, true), Struct_1(vec3<bool>(global2.a.x, false, true), vec3<f32>(-939f, var_0, -1559f)))), Struct_1(global3[_wgslsmith_index_u32(u_input.b.x & u_input.b.x, 25u)], _wgslsmith_f_op_vec3_f32(-var_1.b)), func_2(vec3<f32>(var_0, -592f, 350f), func_5(Struct_1(global3[_wgslsmith_index_u32(u_input.b.x, 25u)], var_1.b), Struct_1(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<f32>(var_0, -449f, var_1.b.x)), vec3<bool>(var_1.a.x, global2.a.x, var_1.a.x), vec2<i32>(global1.x, -2147483647i))).yxy, min(-vec2<i32>(global1.x, u_input.a), ~vec2<i32>(-1i, global1.x)))).yzy, func_4(func_2(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(sign(var_0)), 1424f), Struct_1(vec3<bool>(true, global2.a.x, var_1.a.x), var_1.b)), countOneBits(abs(~vec3<i32>(1i, 2147483647i, global1.x))), !(!vec3<bool>(false, var_1.a.x, var_1.a.x)), Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2623f, var_0, 827f), global2.b)))));
    var_2 = Struct_1(func_5(Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(func_4(vec4<bool>(var_1.a.x, true, global2.a.x, var_1.a.x), vec3<i32>(-1i, u_input.a, u_input.a), global2.a, Struct_1(vec3<bool>(global2.a.x, true, true), vec3<f32>(721f, -830f, var_1.b.x))).b + var_2.b)), Struct_1(var_2.a, _wgslsmith_f_op_vec3_f32(global2.b - var_2.b)), vec3<bool>(any(var_2.a.xy), var_2.a.x, !var_2.a.x), ~(max(vec2<i32>(global1.x, 0i), vec2<i32>(global1.x, -34716i)) | -vec2<i32>(21671i, 62249i))).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_1.b))));
    global0 = u_input.c ^ u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(var_2.b.zy)));
}

