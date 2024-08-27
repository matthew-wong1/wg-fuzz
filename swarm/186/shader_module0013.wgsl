struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(i32(-2147483648), -20016i, -6330i, 48605i, 1i, 2492i, 13297i, 1i, -22768i, -29352i, 0i, 31069i, 0i, -12636i, 1i, 54300i, -5580i, 51644i, -1i, 0i, -1i, 2147483647i, -12894i, i32(-2147483648), -19580i, -38293i, -4333i, -9367i, 2147483647i);

var<private> global1: Struct_5;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global0 = array<i32, 29>();
    var var_0 = any(select(!select(select(vec4<bool>(true, global1.c, global1.c, global1.c), vec4<bool>(false, global1.c, global1.c, global1.c), true), vec4<bool>(global1.c, global1.c, global1.c, true), !global1.c), vec4<bool>(select(select(false, true, global1.c), global1.c, true), true, true, global1.c), global1.c));
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    return global1.c;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_4(~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(89789u, u_input.d.x, arg_2.c, arg_1.a.x), reverseBits(vec4<u32>(global1.a.x, 39085u, 96847u, 4294967295u)))));
    let var_1 = Struct_5(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.a.x, 17405u) << (~vec2<u32>(arg_2.c, 59301u) % vec2<u32>(32u)), ~reverseBits(arg_1.a)) & vec2<u32>(select(u_input.d.x, _wgslsmith_sub_u32(64628u, arg_1.a.x), arg_1.c), 71486u), arg_1.b, u_input.d.x < (_wgslsmith_div_u32(arg_1.a.x, 4294967295u) << (9009u % 32u)));
    global0 = array<i32, 29>();
    var var_2 = Struct_5(~(~vec2<u32>(38140u << (var_0.a % 32u), 60598u)), Struct_3(((var_1.b.a & global1.b.a) << (~var_1.a % vec2<u32>(32u))) ^ _wgslsmith_sub_vec2_i32(~vec2<i32>(global1.b.a.x, 16378i), _wgslsmith_clamp_vec2_i32(arg_1.b.a, vec2<i32>(-65840i, global0[_wgslsmith_index_u32(u_input.d.x, 29u)]), u_input.e.yy))), false & all(arg_0));
    global1 = var_1;
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 35035i, -15945i, 6079i), countOneBits(vec4<i32>(var_1.b.a.x, 43003i, u_input.a.x, global0[_wgslsmith_index_u32(1u, 29u)]))), u_input.a), _wgslsmith_sub_i32(0i, 24402i));
}

fn func_2(arg_0: Struct_5) -> vec4<f32> {
    global1 = arg_0;
    var var_0 = Struct_1(273f, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.a.wzw, vec3<i32>(-1i) * -vec3<i32>(global0[_wgslsmith_index_u32(arg_0.a.x, 29u)], -2147483647i, arg_0.b.a.x)), firstLeadingBit(~arg_0.b.a.x) >> (~(~18376u) % 32u)), 4294967295u, ~global1.b.a.x);
    let var_1 = -vec4<i32>(arg_0.b.a.x, _wgslsmith_dot_vec3_i32(u_input.a.zzz, _wgslsmith_mod_vec3_i32(abs(u_input.a.wzx), vec3<i32>(17016i, -20060i, -49106i))), func_4(vec2<bool>(464f >= var_0.a, false), Struct_5(reverseBits(vec2<u32>(global1.a.x, arg_0.a.x)), arg_0.b, func_3()), Struct_1(_wgslsmith_f_op_f32(var_0.a + -824f), _wgslsmith_mod_i32(1i, var_0.b), _wgslsmith_mod_u32(u_input.d.x, 4294967295u), abs(67733i))), ~select(var_0.d, -22670i >> (global1.a.x % 32u), false));
    var var_2 = vec4<f32>(229f, _wgslsmith_f_op_f32(var_0.a - var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), var_0.a);
    var var_3 = -2147483647i;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, -306f, -562f))))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), var_0.a, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(step(-1361f, var_0.a))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: vec4<i32>) -> vec4<f32> {
    var var_0 = Struct_4(global1.a.x);
    let var_1 = Struct_4(countOneBits(var_0.a));
    global0 = array<i32, 29>();
    global1 = Struct_5(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.a.x, 57839u) & vec2<u32>(32903u, 4294967295u), ~vec2<u32>(var_0.a, 1u)) << (global1.a % vec2<u32>(32u))), global1.b, false);
    var var_2 = vec3<i32>(-_wgslsmith_dot_vec2_i32(-arg_3.zz & _wgslsmith_div_vec2_i32(vec2<i32>(25796i, -9659i), arg_3.xy), firstTrailingBit(countOneBits(arg_3.xy))), i32(-1i) * -global0[_wgslsmith_index_u32(~var_0.a, 29u)], -19931i);
    return vec4<f32>(_wgslsmith_f_op_f32(min(1131f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_1.x))))), _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, !any(select(vec3<bool>(arg_2.x, global1.c, arg_2.x), vec3<bool>(global1.c, false, arg_2.x), global1.c)))), 1203f);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec2<i32>) -> vec4<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_5(global1.a, Struct_3(u_input.e.wz), arg_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-969f, 1632f) + vec2<f32>(793f, -1011f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-980f, -671f))), select(!vec2<bool>(arg_0, true), vec2<bool>(true, true), any(vec2<bool>(arg_0, arg_0))), vec4<i32>(~u_input.c, global0[_wgslsmith_index_u32(~19734u, 29u)], i32(-1i) * -11772i, _wgslsmith_mod_i32(u_input.b, 12985i))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-895f, -580f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-210f - -675f) + _wgslsmith_f_op_f32(-512f + -1104f))), -global0[_wgslsmith_index_u32(4294967295u, 29u)], global1.a.x, global1.b.a.x), any(select(select(select(vec3<bool>(global1.c, true, arg_0), vec3<bool>(global1.c, global1.c, arg_0), false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, arg_0), false), vec3<bool>(false, true, true)), vec3<bool>(false, true, any(vec3<bool>(false, false, true))), global1.c)), _wgslsmith_f_op_f32(f32(-1f) * -891f));
    var var_1 = select(select(vec4<bool>(all(select(vec4<bool>(true, false, global1.c, false), vec4<bool>(var_0.c, arg_0, false, false), vec4<bool>(false, global1.c, arg_0, false))), true, arg_0, any(vec2<bool>(false, false))), !vec4<bool>(arg_0, any(vec3<bool>(true, global1.c, var_0.c)), true, global1.c), select(select(vec4<bool>(var_0.c, arg_0, false, arg_0), vec4<bool>(true, false, true, global1.c), select(vec4<bool>(arg_0, arg_0, arg_0, var_0.c), vec4<bool>(false, arg_0, true, global1.c), true)), select(vec4<bool>(true, arg_0, false, arg_0), !vec4<bool>(false, true, true, global1.c), select(vec4<bool>(global1.c, false, global1.c, arg_0), vec4<bool>(false, global1.c, false, false), vec4<bool>(true, false, false, global1.c))), var_0.c)), vec4<bool>(select(true, all(vec2<bool>(var_0.c, false)), ~global1.b.a.x < 1i), !(global1.a.x > _wgslsmith_mult_u32(arg_1, 70439u)), all(vec2<bool>(true, true)), all(vec3<bool>(all(vec3<bool>(true, true, true)), var_0.c & true, arg_0))), !select(!select(vec4<bool>(var_0.c, var_0.c, var_0.c, false), vec4<bool>(false, false, true, false), var_0.c), vec4<bool>(!global1.c, false, any(vec3<bool>(var_0.c, false, true)), true), (arg_0 | var_0.c) || func_3()));
    var_1 = select(select(vec4<bool>(any(vec2<bool>(true, true)), !any(vec4<bool>(false, var_0.c, var_1.x, true)), (var_0.d < var_0.b.a) == all(var_1.wyw), _wgslsmith_dot_vec4_i32(u_input.e, u_input.e) >= global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(46581u, global1.a.x), 29u)]), !vec4<bool>(var_0.c, true, arg_0, var_0.a.x == var_0.a.x), select(vec4<bool>(false, arg_0, arg_1 >= 58448u, any(vec4<bool>(false, var_1.x, true, false))), vec4<bool>(!var_1.x, any(vec4<bool>(global1.c, false, global1.c, true)), true, true), any(vec2<bool>(false, false)) | true)), select(vec4<bool>(false, !arg_0, var_1.x || global1.c, false), vec4<bool>(true, (var_0.b.c | global1.a.x) == _wgslsmith_mult_u32(u_input.d.x, arg_1), any(vec2<bool>(true, true)), !(!global1.c)), vec4<bool>(all(select(vec2<bool>(true, true), var_1.zw, var_1.x)), true, global1.c, var_1.x)), !(!vec4<bool>(true, any(vec4<bool>(true, true, var_1.x, var_1.x)), 963f < var_0.a.x, true)));
    var var_2 = ~max(~(~vec4<u32>(arg_1, var_0.b.c, 51497u, global1.a.x)), firstLeadingBit(~reverseBits(vec4<u32>(global1.a.x, var_0.b.c, 1u, global1.a.x))));
    let var_3 = -_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.e.yy, vec2<i32>(global1.b.a.x, 1i), arg_2), ~vec2<i32>(-arg_2.x, u_input.b));
    return select(vec4<bool>(arg_2.x > (func_4(vec2<bool>(global1.c, var_0.c), Struct_5(vec2<u32>(22376u, global1.a.x), Struct_3(vec2<i32>(u_input.b, -9987i)), true), var_0.b) ^ -1i), func_3(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d + 311f) * var_0.d) <= var_0.a.x, arg_0 & true), select(vec4<bool>(var_1.x, any(var_1.xwx) && any(vec4<bool>(true, false, var_1.x, global1.c)), var_0.c, !arg_0), select(vec4<bool>(func_3(), true, true, arg_0), !(!vec4<bool>(arg_0, true, false, true)), select(select(vec4<bool>(false, var_0.c, true, false), vec4<bool>(arg_0, var_1.x, var_1.x, true), arg_0), !vec4<bool>(false, var_0.c, true, var_0.c), select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(arg_0, var_1.x, var_0.c, var_0.c), vec4<bool>(var_1.x, global1.c, true, arg_0)))), select(select(select(vec4<bool>(false, arg_0, true, true), vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(arg_0, var_1.x, true, true)), select(vec4<bool>(true, false, true, arg_0), vec4<bool>(global1.c, arg_0, var_0.c, global1.c), global1.c), !vec4<bool>(false, false, var_0.c, var_1.x)), select(!vec4<bool>(var_0.c, global1.c, var_1.x, global1.c), !vec4<bool>(global1.c, true, true, global1.c), !var_0.c), true)), true | any(vec4<bool>(true, any(var_1.xyw), global1.c, global1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_5(~vec2<u32>(firstTrailingBit(2049u), global1.a.x), Struct_3(vec2<i32>(u_input.e.x, 23504i)), true);
    var var_0 = vec4<i32>(u_input.b, u_input.e.x, u_input.a.x, global1.b.a.x ^ 2147483647i);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1980f, -1643f, _wgslsmith_div_f32(-997f, -668f), -2133f) - vec4<f32>(-1834f, _wgslsmith_f_op_f32(-514f + -2306f), _wgslsmith_f_op_f32(-1030f - 1013f), -758f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(349f + -1137f)), var_0.x, u_input.d.x, -(~3700i)), all(select(!(!vec4<bool>(global1.c, global1.c, false, false)), !func_1(global1.c, u_input.d.x, vec2<i32>(30628i, -1i)), true)), 397f);
    var var_2 = !(!vec2<bool>(_wgslsmith_f_op_f32(-902f * var_1.a.x) < -1000f, true));
    global0 = array<i32, 29>();
    var var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(970f * _wgslsmith_f_op_f32(exp2(var_1.b.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.d, var_1.d, false)))), var_1.d, _wgslsmith_f_op_f32(select(var_1.d, -1261f, false)), -990f), var_1.b, var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.d)), _wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1027f - -160f))));
    let var_4 = (firstLeadingBit(select(vec3<u32>(var_1.b.c, global1.a.x, 4294967295u), vec3<u32>(1u, u_input.d.x, 62367u), vec3<bool>(global1.c, true, var_3.c))) & vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(28397u, 14220u, 29832u), vec3<u32>(u_input.d.x, var_3.b.c, 25844u), vec3<u32>(var_1.b.c, 4294967295u, 30026u)), ~vec3<u32>(30023u, 4294967295u, var_3.b.c)), firstTrailingBit(global1.a.x), global1.a.x)) | firstTrailingBit(vec3<u32>(20998u, ~abs(36915u), var_1.b.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_3.b.b >> (_wgslsmith_div_u32(~global1.a.x, ~u_input.d.x) % 32u), reverseBits(1i)), _wgslsmith_clamp_i32(~(_wgslsmith_sub_i32(var_1.b.d, global0[_wgslsmith_index_u32(var_3.b.c, 29u)]) << (u_input.d.x % 32u)), countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.e, u_input.a), min(u_input.e, u_input.a))), -(_wgslsmith_clamp_i32(u_input.a.x, var_1.b.b, global1.b.a.x) << (~var_1.b.c % 32u))), ~(~u_input.d.x), 0i);
}

