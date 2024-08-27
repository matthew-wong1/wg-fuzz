struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: f32) -> f32 {
    global0 = array<Struct_4, 15>();
    let var_0 = _wgslsmith_clamp_i32(max(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(1i, -1i)) << (arg_1.a.a.c.x % 32u), 2147483647i), u_input.b), firstLeadingBit(-1i), i32(-1i) * -firstTrailingBit(1i));
    global0 = array<Struct_4, 15>();
    let var_1 = _wgslsmith_mod_u32(~(~(~0u & ~arg_0.x)), arg_1.b.e);
    global0 = array<Struct_4, 15>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -801f), -1519f);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(func_3(arg_0, Struct_5(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~u_input.a, arg_1.x), 15u)], Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(208f, -514f, 1668f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(151f, -499f), vec2<f32>(490f, 1504f))) - vec2<f32>(-733f, 652f)), arg_0.yx, -702f, arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-906f, 535f, false)) * _wgslsmith_f_op_f32(abs(788f)))))));
    let var_1 = all(!vec3<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)), false, true));
    global0 = array<Struct_4, 15>();
    let var_2 = vec3<bool>(true, !var_1, all(!(!vec4<bool>(var_1, var_1, true, var_1))));
    global0 = array<Struct_4, 15>();
    return Struct_5(global0[_wgslsmith_index_u32(arg_0.x, 15u)], Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, 243f, var_0), vec3<f32>(-1263f, -183f, var_0)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, var_0, 835f), vec3<f32>(var_0, var_0, -2512f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, var_0))))), vec2<u32>(arg_1.x, _wgslsmith_mod_u32(~1u, _wgslsmith_sub_u32(30247u, arg_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), var_0), arg_1.x));
}

fn func_4(arg_0: bool, arg_1: Struct_5) -> Struct_3 {
    global0 = array<Struct_4, 15>();
    global0 = array<Struct_4, 15>();
    var var_0 = -(-_wgslsmith_mod_vec4_i32(abs(vec4<i32>(3674i, u_input.b, -36286i, -3436i)), vec4<i32>(29977i, 1i, u_input.b, u_input.b)) >> ((_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.b.e, arg_1.a.a.c.x, 54371u, 69365u), _wgslsmith_div_vec4_u32(vec4<u32>(39252u, 4723u, 12221u, 1u), vec4<u32>(u_input.a, 6425u, u_input.a, 9660u))) >> ((firstTrailingBit(vec4<u32>(arg_1.a.a.e, u_input.a, arg_1.b.c.x, arg_1.a.a.e)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a, u_input.a), vec4<u32>(arg_1.a.a.c.x, u_input.a, 0u, arg_1.a.a.c.x)) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var_0 = -_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, 0i, -_wgslsmith_div_i32(1836i, -14290i), 35766i), _wgslsmith_mod_vec4_i32(~abs(vec4<i32>(-1i, -49737i, var_0.x, 14178i)), -min(vec4<i32>(-1i, var_0.x, 0i, 1i), vec4<i32>(367i, 6848i, -2147483647i, u_input.b))));
    var var_1 = Struct_4(arg_1.b);
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a.a.b * arg_1.b.b))))), Struct_2(!arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(584f + -262f) + func_2(vec4<u32>(arg_1.b.e, arg_1.b.c.x, 4294967295u, 1u), vec2<u32>(u_input.a, arg_1.b.e)).b.d), arg_1.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a.x + -687f) + _wgslsmith_f_op_f32(-344f + var_1.a.d)))));
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    let var_0 = max(vec2<i32>(min(u_input.b, -1i), select(u_input.b, u_input.b, true)) | (vec2<i32>(4861i, 33640i) ^ (vec2<i32>(u_input.b, u_input.b) | vec2<i32>(u_input.b, u_input.b))), (vec2<i32>(7819i, -10195i) << (_wgslsmith_mod_vec2_u32(arg_0.a.c, arg_0.a.c) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_i32(abs(vec2<i32>(1i, u_input.b)), select(vec2<i32>(1i, u_input.b), vec2<i32>(-2147483647i, u_input.b), vec2<bool>(true, false)))) >> (vec2<u32>(select(30063u, _wgslsmith_dot_vec2_u32(arg_0.a.c, ~vec2<u32>(67305u, 0u)), false), arg_0.a.c.x) % vec2<u32>(32u));
    var var_1 = func_4(any(!vec3<bool>(all(vec2<bool>(false, true)), all(vec4<bool>(true, false, true, true)), true)), func_2(~vec4<u32>(arg_0.a.e, 4294967295u, u_input.a, arg_0.a.c.x), select(_wgslsmith_sub_vec2_u32(vec2<u32>(22292u, arg_0.a.c.x), _wgslsmith_sub_vec2_u32(arg_0.a.c, vec2<u32>(1u, u_input.a))), arg_0.a.c, vec2<bool>(all(vec3<bool>(true, false, true)), true))));
    global0 = array<Struct_4, 15>();
    var_1 = func_4(false, Struct_5(func_2(select(~vec4<u32>(u_input.a, arg_0.a.c.x, u_input.a, 31113u), ~vec4<u32>(arg_0.a.c.x, 0u, 4294967295u, 0u), !var_1.b.a), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, arg_0.a.e), vec2<u32>(u_input.a, 32018u))).a, func_2(select(~vec4<u32>(4294967295u, arg_0.a.e, 14535u, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 85164u, u_input.a), vec4<u32>(arg_0.a.e, arg_0.a.e, 1u, arg_0.a.e)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, var_1.b.a, var_1.b.a, var_1.b.a), false)), vec2<u32>(u_input.a, 4294967295u)).b));
    return func_2(~(~_wgslsmith_add_vec4_u32(~vec4<u32>(35569u, arg_0.a.e, arg_0.a.e, arg_0.a.c.x), vec4<u32>(arg_0.a.c.x, 4294967295u, 1u, 4294967295u) >> (vec4<u32>(0u, 1u, 0u, 3068u) % vec4<u32>(32u)))), vec2<u32>(max(select(0u, 1u, false), func_2(~vec4<u32>(1u, arg_0.a.c.x, 56980u, arg_0.a.c.x), select(vec2<u32>(4294967295u, arg_0.a.c.x), vec2<u32>(u_input.a, 35701u), false)).a.a.c.x), _wgslsmith_mod_u32(u_input.a, ~4294967295u) & ~(~u_input.a))).a.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: u32) -> Struct_2 {
    let var_0 = _wgslsmith_mult_i32(abs(u_input.b), 22452i >> (max(61220u, _wgslsmith_mod_u32(u_input.a << (arg_3 % 32u), ~arg_0.e)) % 32u));
    return Struct_2((all(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_2.x)) && false) || arg_2.x);
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: u32) -> f32 {
    let var_0 = arg_2;
    var var_1 = max(~(~(~vec3<u32>(0u, 4294967295u, var_0) & ~vec3<u32>(0u, arg_2, 4294967295u))), ~(~(~(~vec3<u32>(1u, u_input.a, arg_2)))));
    var var_2 = true;
    var_1 = _wgslsmith_div_vec3_u32(~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(var_1.x, var_0, 1u), ~vec3<u32>(var_0, var_1.x, arg_2))), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_2 & 1u, 1u), max(vec3<u32>(0u, var_0, 0u) >> (vec3<u32>(29333u, 0u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(arg_2, arg_2, 1u))), abs(countOneBits(~vec3<u32>(10854u, var_1.x, var_1.x)))));
    let var_3 = 4294967295u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(215f + -1400f)), _wgslsmith_f_op_f32(-835f + -726f))))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, -134f)), _wgslsmith_f_op_f32(f32(-1f) * -726f)) + _wgslsmith_f_op_f32(func_1(Struct_4(Struct_1(vec3<f32>(-2073f, 1041f, -754f), vec2<f32>(842f, -501f), vec2<u32>(var_3, 0u), -590f, 13247u))).a.x - _wgslsmith_f_op_f32(400f * 905f))), func_4(true, func_2(_wgslsmith_div_vec4_u32(vec4<u32>(var_0, u_input.a, 0u, 4294967295u), vec4<u32>(1u, 4587u, u_input.a, var_1.x)), var_1.xz)).c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 15>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(283f, 220f) + 1475f) + _wgslsmith_f_op_f32(f32(-1f) * -307f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-719f, _wgslsmith_f_op_f32(210f + -832f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1390f), _wgslsmith_div_f32(-550f, 497f))))) + _wgslsmith_f_op_f32(func_6(func_5(func_1(global0[_wgslsmith_index_u32(u_input.a, 15u)]), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), 1u), true, 3039u))));
    var var_1 = true;
    global0 = array<Struct_4, 15>();
    let var_2 = Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, reverseBits(u_input.a), 4294967295u) | _wgslsmith_sub_u32(u_input.a, 0u), 15u)], func_1(Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) - vec3<f32>(-229f, -227f, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), _wgslsmith_mult_vec2_u32(vec2<u32>(45430u, 24386u), vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 55113u), vec3<u32>(u_input.a, 0u, u_input.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.c.x, ~(~select(u_input.b, -2147483647i, true) ^ ~u_input.b), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(~vec4<u32>(var_2.b.c.x, 0u, 5165u, var_2.a.a.c.x), func_2(vec4<u32>(u_input.a, var_2.b.c.x, var_2.a.a.e, 4294967295u), var_2.a.a.c), var_2.a.a.b.x)))), var_2.b.b.x, func_2(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_2.b.c.x, 16889u, 51157u), vec4<u32>(2284u, 4294967295u, var_2.a.a.c.x, u_input.a)), reverseBits(vec4<u32>(1u, 23310u, 4322u, 1u))), ~_wgslsmith_clamp_vec2_u32(var_2.b.c, var_2.b.c, vec2<u32>(0u, 0u))).a.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -233f)));
}

