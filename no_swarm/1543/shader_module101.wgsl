struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, false, true, true, true, true, true, true, true, true, true, false, true, false, true, false, false, false, false, false, true, false, false, true, true, true, false, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_3(firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.a), reverseBits(vec2<i32>(-2147483647i, -41430i))), vec2<i32>(0i, _wgslsmith_add_i32(arg_2.b, 9293i)))), (select(vec3<i32>(u_input.a, -21722i, 9223i), vec3<i32>(arg_1.b, u_input.a, arg_1.b), true) >> (~arg_1.c.b % vec3<u32>(32u))) ^ -vec3<i32>(arg_2.b, abs(61513i), ~(-7050i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.d.x), 625f)))), arg_1.c.a.x);
    let var_1 = arg_2.c.b.x;
    var_0 = Struct_3(-(~(~0i)), _wgslsmith_div_vec3_i32(select(_wgslsmith_sub_vec3_i32(var_0.b, var_0.b >> (vec3<u32>(0u, 944u, 25031u) % vec3<u32>(32u))), select(-var_0.b, var_0.b, !vec3<bool>(global0[_wgslsmith_index_u32(3950u, 29u)], arg_2.c.e, false)), any(select(vec4<bool>(arg_2.c.e, false, false, global0[_wgslsmith_index_u32(var_1, 29u)]), vec4<bool>(arg_2.c.e, arg_2.c.e, arg_2.c.e, arg_2.c.e), false))), ~var_0.b), 1311f, 694f);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1817f - -464f), arg_2.d.x) - _wgslsmith_f_op_f32(ceil(-1198f))), 1215f)), 831f, _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2081f + 347f), _wgslsmith_f_op_f32(f32(-1f) * -566f), arg_1.c.d)))), var_0.c);
    var var_3 = arg_1.c.b;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: f32) -> i32 {
    let var_0 = abs(~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.d, 45013u, 0u), vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 55722u, u_input.c.x, u_input.c.x), vec4<u32>(4294967295u, u_input.d, 6262u, 34379u))) >> (vec4<u32>(u_input.b | ~1u, u_input.d, u_input.b, ~(~22289u)) % vec4<u32>(32u)));
    let var_1 = var_0;
    global0 = array<bool, 29>();
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(f32(-1f) * -1453f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(611f - -1294f), _wgslsmith_f_op_f32(step(973f, arg_0.x))), arg_1.a)), arg_2), ~abs(var_1.xxw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(623f, arg_2, arg_2, -471f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 307f, 376f, arg_2), vec4<f32>(arg_1.a, 717f, arg_0.x, arg_2), false)))))), !(!global0[_wgslsmith_index_u32(80406u, 29u)]), false);
    var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_3(~vec4<u32>(1u, 0u, 2242u, 1u) << (vec4<u32>(49677u, 4294967295u, 0u, var_0.x) % vec4<u32>(32u)), Struct_2(~vec2<u32>(var_1.x, var_1.x), u_input.a, Struct_1(var_2.c, var_0.zwy, arg_0, global0[_wgslsmith_index_u32(var_2.b.x, 29u)], false), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(456f, arg_2, arg_0.x)))), Struct_2(vec2<u32>(1u, 1u), u_input.a >> (var_1.x % 32u), Struct_1(vec4<f32>(1129f, arg_2, 1962f, -1260f), var_1.wwx, arg_0, var_2.d, false), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1140f, -986f, arg_0.x), var_2.c.zyy, vec3<bool>(true, false, false)))))), 1821f, _wgslsmith_f_op_f32(f32(-1f) * -409f), -1895f), var_2.b & (vec3<u32>(var_0.x << (61238u % 32u), abs(4294967295u), abs(u_input.d)) | ~(~var_1.zzx)), var_2.c, false, true);
    return 2147483647i;
}

fn func_4(arg_0: bool, arg_1: vec4<i32>) -> f32 {
    global0 = array<bool, 29>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-520f)))));
    let var_1 = _wgslsmith_f_op_f32(round(1064f));
    var var_2 = vec2<f32>(var_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -667f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -907f), _wgslsmith_f_op_f32(-var_0.a)))), var_0.a)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2312f, var_1, -271f, var_1) - vec4<f32>(var_0.a, 145f, -1898f, var_2.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1039f, -257f, -894f, -1090f) * vec4<f32>(var_0.a, var_1, var_1, -640f)))))), _wgslsmith_sub_vec3_u32(select(~vec3<u32>(4294967295u, u_input.c.x, u_input.b), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 1u, u_input.d), vec3<u32>(u_input.b, 46168u, u_input.d), vec3<u32>(u_input.b, u_input.b, 14948u)), select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c.x, 29u)]), vec3<bool>(arg_0, false, true), global0[_wgslsmith_index_u32(~0u, 29u)])), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(u_input.b, 4294967295u, u_input.c.x), vec3<u32>(0u, u_input.d, u_input.c.x)) | max(vec3<u32>(62819u, 492u, 31360u), vec3<u32>(4294967295u, 1u, u_input.c.x)), ~(vec3<u32>(1u, 4294967295u, 9180u) ^ vec3<u32>(u_input.b, 34354u, 4294967295u)), vec3<u32>(_wgslsmith_clamp_u32(1u, u_input.d, u_input.b), ~u_input.c.x, u_input.d & u_input.b))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-271f)), var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-508f, _wgslsmith_f_op_f32(min(var_0.a, var_0.a)), global0[_wgslsmith_index_u32(u_input.c.x, 29u)])) * _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(sign(var_0.a))), (any(select(vec4<bool>(true, false, arg_0, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 29u)], true, arg_0, global0[_wgslsmith_index_u32(u_input.c.x, 29u)]), true)) && arg_0) || !all(vec2<bool>(true, true)), !any(vec4<bool>(any(vec2<bool>(true, arg_0)), u_input.c.x > 0u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, 77325u), 29u)], arg_0)));
    return _wgslsmith_f_op_f32(-var_3.c.x);
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> Struct_4 {
    global0 = array<bool, 29>();
    global0 = array<bool, 29>();
    let var_0 = _wgslsmith_div_f32(arg_0.c.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(~(~4294967295u), 29u)], vec4<i32>(func_2(vec4<f32>(199f, 957f, arg_0.d.x, 868f), Struct_4(-375f), 1000f), i32(-1i) * -13768i, -arg_0.b, -1i))))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(1607f + _wgslsmith_f_op_f32(-arg_0.c.a.x)));
    var var_2 = select(!(!vec3<bool>(-1392f == var_1.a, any(vec4<bool>(true, arg_0.c.d, true, false)), true)), vec3<bool>(false, (u_input.d & arg_1) > u_input.c.x, select(any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 29u)], arg_0.c.e)), true, _wgslsmith_f_op_f32(var_1.a - 1373f) >= 105f)), !select(vec3<bool>(arg_0.c.d, !arg_0.c.e, !arg_0.c.d), !vec3<bool>(false, arg_0.c.d, false), select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 29u)], false), vec3<bool>(global0[_wgslsmith_index_u32(17892u, 29u)], true, global0[_wgslsmith_index_u32(1u, 29u)]), arg_0.c.e), vec3<bool>(false, arg_0.c.e, false), true)));
    return Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<f32> {
    var var_0 = Struct_2(countOneBits(vec2<u32>(arg_1.b.x, _wgslsmith_add_u32(arg_1.b.x, arg_1.b.x))), -1i | _wgslsmith_div_i32(func_2(arg_1.a, func_1(Struct_2(vec2<u32>(u_input.d, arg_1.b.x), u_input.a, Struct_1(vec4<f32>(-467f, 915f, -246f, -875f), vec3<u32>(44790u, 0u, u_input.d), vec4<f32>(984f, arg_0.a, 491f, -505f), global0[_wgslsmith_index_u32(4294967295u, 29u)], arg_1.e), vec3<f32>(724f, 289f, -1000f)), 4294967295u), _wgslsmith_f_op_f32(arg_1.a.x * -1636f)), _wgslsmith_add_i32(~1i, _wgslsmith_clamp_i32(52173i, -1i, u_input.a))), arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(193f, arg_2.x, arg_1.a.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2 - arg_1.c.wxy) - arg_1.c.ywz)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.c.x, 945f, 213f)))))));
    var var_1 = Struct_4(arg_2.x);
    var_0 = Struct_2(~vec2<u32>(~u_input.d, 0u), 2147483647i, Struct_1(var_0.c.a, firstTrailingBit(var_0.c.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.c.c, vec4<f32>(-645f, -593f, var_0.c.c.x, var_0.d.x)) * var_0.c.c), true, true), var_0.d);
    let var_2 = 0i;
    let var_3 = Struct_2(var_0.c.b.yy, abs(-2147483647i), Struct_1(arg_1.a, ~abs(firstLeadingBit(vec3<u32>(arg_1.b.x, arg_1.b.x, var_0.c.b.x))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.a.x), _wgslsmith_f_op_f32(var_1.a * arg_0.a), var_1.a, -705f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c.c) + var_0.c.a)), true, true), _wgslsmith_f_op_vec3_f32(-var_0.c.c.ywy));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.c.c + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(800f, -927f, -760f, var_3.d.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_3.c.c, var_3.c.c) * var_3.c.c), var_0.c.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 29>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-763f, -1658f, -638f, -655f) - vec4<f32>(106f, -1000f, -898f, -851f))) * _wgslsmith_f_op_vec4_f32(func_5(func_1(Struct_2(u_input.c, 25848i, Struct_1(vec4<f32>(360f, 1157f, -700f, 1139f), vec3<u32>(u_input.d, u_input.d, u_input.c.x), vec4<f32>(-1000f, 989f, 968f, -1000f), false, global0[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<f32>(-753f, -112f, -1594f)), u_input.b), Struct_1(vec4<f32>(-1000f, 1023f, 370f, 1202f), vec3<u32>(u_input.d, 30920u, 45u), vec4<f32>(-1000f, 868f, 880f, 173f), true, global0[_wgslsmith_index_u32(4294967295u, 29u)]), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(402f, 850f, 2896f))))))), ~vec3<u32>(u_input.c.x, u_input.d, countOneBits(0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1056f, -1073f, 240f, 1281f) + vec4<f32>(-1000f, 1537f, 1000f, 213f))))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -885f), _wgslsmith_f_op_f32(abs(522f)), _wgslsmith_f_op_f32(round(169f)), _wgslsmith_f_op_f32(f32(-1f) * -722f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2117f), _wgslsmith_f_op_f32(768f * 847f), -857f, -1000f)))), true, all(select(!(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(u_input.b, 29u)], false)), vec3<bool>(true, true, true), !(!global0[_wgslsmith_index_u32(4391u, 29u)]))));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.x)), _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(trunc(var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(503f + -331f), _wgslsmith_f_op_f32(var_0.a.x + -1085f)))), -1252f), _wgslsmith_f_op_vec4_f32(var_0.c * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), -423f), 1f, -435f, var_0.a.x))));
    var var_2 = -(~45842i);
    var_2 = -2147483647i;
    var var_3 = -_wgslsmith_mod_i32(-2147483647i, u_input.a);
    let var_4 = -_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 2147483647i), min(firstLeadingBit(vec2<i32>(u_input.a, u_input.a)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -27850i), vec2<i32>(u_input.a, -2147483647i), vec2<i32>(-14059i, u_input.a)))) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(firstTrailingBit(~(-2147483647i)), -54242i), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 7034i), vec2<i32>(u_input.a, u_input.a) >> (u_input.c % vec2<u32>(32u))), ~(~34133i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a) | vec2<i32>(u_input.a, u_input.a), vec2<i32>(_wgslsmith_mult_i32(u_input.a, 51i), ~u_input.a), reverseBits(abs(vec2<i32>(26086i, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, -1605f)), -(vec3<i32>(var_4.x, ~(-11103i), -var_4.x) >> (vec3<u32>(602u, u_input.b, _wgslsmith_mult_u32(u_input.b, var_0.b.x)) % vec3<u32>(32u))));
}

