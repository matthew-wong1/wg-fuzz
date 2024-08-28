struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: vec2<bool>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1219f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(940f + _wgslsmith_f_op_f32(-498f - _wgslsmith_f_op_f32(round(215f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1879f)), 757f))));
    var var_1 = Struct_5(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(u_input.a, u_input.a)) ^ vec2<u32>(firstLeadingBit(1u), u_input.a), vec2<u32>(abs(~u_input.a), ~(~u_input.a))), -select(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(-1i, arg_0)), _wgslsmith_add_i32(-10933i, 9636i)), arg_0 >> (~u_input.a % 32u), arg_1.a.x), !vec3<bool>(false, global1.x, all(!vec4<bool>(arg_1.a.x, arg_3.x, arg_2, true))));
    var var_2 = Struct_3(Struct_1(vec2<bool>(!(!arg_2), true)), select(!select(!arg_3, select(vec2<bool>(false, true), arg_3, true), true), !select(vec2<bool>(arg_1.a.x, true), vec2<bool>(false, var_1.c.x), select(arg_3.x, true, arg_2)), !select(select(vec2<bool>(var_1.c.x, false), vec2<bool>(true, global1.x), arg_3), select(var_1.c.yx, vec2<bool>(true, true), false), vec2<bool>(global1.x, arg_2))), Struct_2(arg_0), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(14075i, max(-var_1.b, 0i), var_1.b), -1i, ~arg_0));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-797f)) * _wgslsmith_f_op_f32(sign(-1204f))))));
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, _wgslsmith_f_op_f32(-var_3), -905f, 1289f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_3, -323f, 536f))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1780f, -357f, _wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(floor(var_3))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-896f, 793f, arg_1.a.x))))))), any(!select(select(var_1.c, var_1.c, global1.x), var_1.c, !arg_1.a.x))));
    return ~vec4<i32>(countOneBits(firstTrailingBit(var_1.b)), -1i, _wgslsmith_div_i32(18738i, arg_0 & -1i), abs(_wgslsmith_add_i32(arg_0, var_1.b))) << ((vec4<u32>(_wgslsmith_mod_u32(~var_1.a.x, 0u), u_input.a, firstLeadingBit(1u), var_1.a.x) << (vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(89648u, 28474u, 58441u), vec3<u32>(var_1.a.x, 4294967295u, u_input.a)), ~u_input.a, 6723u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    var var_0 = Struct_3(arg_2, arg_3.zz, arg_1.c, _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.d, -1i, -1i, -19805i) << (~vec4<u32>(1u, 18736u, arg_0, 0u) % vec4<u32>(32u)), -func_3(-31754i, Struct_1(arg_1.a.a), arg_3.x, arg_3.xz)) << (~arg_0 % 32u));
    global1 = select(select(!select(!vec2<bool>(arg_2.a.x, arg_1.b.x), select(vec2<bool>(false, var_0.a.a.x), vec2<bool>(var_0.b.x, false), vec2<bool>(arg_3.x, var_0.b.x)), arg_3.zx), arg_3.xx, global1.x), arg_2.a, all(!vec2<bool>(true, !arg_1.a.a.x)));
    var var_1 = arg_2.a;
    var_0 = arg_1;
    var var_2 = vec2<bool>(any(!vec4<bool>(global1.x && global1.x, false, select(global1.x, arg_3.x, arg_3.x), false)), var_0.b.x);
    return var_0.d;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>) -> i32 {
    var var_0 = false;
    var var_1 = ~reverseBits(vec4<u32>(u_input.a, 71971u, _wgslsmith_sub_u32(~u_input.a, u_input.a), _wgslsmith_mod_u32(select(4294967295u, 37729u, global1.x), 1u)));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(arg_1.wzx, vec3<i32>(~arg_1.x, arg_1.x, func_2(u_input.a, Struct_3(Struct_1(vec2<bool>(true, false)), arg_0, Struct_2(arg_1.x), -2147483647i), Struct_1(vec2<bool>(false, global1.x)), vec3<bool>(true, global1.x, true)))), arg_1.xyz), max(~(arg_1.x >> (u_input.a % 32u)), arg_1.x) << (var_1.x % 32u));
    var_0 = any(vec2<bool>(true, all(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))));
    global0 = array<Struct_1, 23>();
    return func_3(arg_1.x, Struct_1(arg_0), false, !arg_0).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(u_input.a, 4294967295u), u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(4294967295u, 11650u) >> (select(vec2<u32>(17534u, 4294967295u), vec2<u32>(80670u, 30841u), global1.x) % vec2<u32>(32u)))), _wgslsmith_div_i32(firstLeadingBit(func_1(select(vec2<bool>(true, false), vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x)), vec4<i32>(-1i, 2147483647i, 23949i, -2147483647i))), _wgslsmith_sub_i32(1i, 1i)), vec3<bool>(all(!select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(false, false, global1.x), true)), global1.x, true));
    global0 = array<Struct_1, 23>();
    let var_1 = _wgslsmith_mod_vec4_u32(min(~(~firstLeadingBit(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))), ~vec4<u32>(~4294967295u, u_input.a, var_0.a.x, abs(var_0.a.x))), firstTrailingBit(max(firstTrailingBit(abs(vec4<u32>(u_input.a, 19456u, var_0.a.x, 4294967295u))), vec4<u32>(~68216u, 7147u, ~u_input.a, u_input.a))));
    global0 = array<Struct_1, 23>();
    var var_2 = -(-vec2<i32>(_wgslsmith_div_i32(-1i, var_0.b), var_0.b) ^ ~vec2<i32>(~var_0.b, firstLeadingBit(-31274i)));
    var_2 = (min(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_2.x), vec2<i32>(var_0.b, var_0.b))), _wgslsmith_mod_vec2_i32(-vec2<i32>(var_0.b, -14589i), vec2<i32>(var_2.x, 2147483647i) ^ vec2<i32>(-1i, var_0.b))) & (_wgslsmith_sub_vec2_i32(~vec2<i32>(2127i, -1i), _wgslsmith_sub_vec2_i32(vec2<i32>(var_2.x, var_0.b), vec2<i32>(var_2.x, -7166i))) & -vec2<i32>(2147483647i, 2147483647i))) >> (_wgslsmith_add_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), ~var_1.yx), ~firstTrailingBit(firstTrailingBit(vec2<u32>(0u, 20816u)))) % vec2<u32>(32u));
    var var_3 = -783f;
    let var_4 = u_input.a;
    var var_5 = -vec3<i32>(0i, func_3(-28162i, global0[_wgslsmith_index_u32(u_input.a, 23u)], any(!vec4<bool>(true, true, false, global1.x)), var_0.c.zz).x, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -2147483647i, countOneBits(vec4<i32>((var_5.x >> (0u % 32u)) ^ (var_5.x >> (var_1.x % 32u)), var_2.x, var_0.b, func_3(var_2.x & -2147483647i, Struct_1(var_0.c.zx), any(vec2<bool>(global1.x, false)), !var_0.c.xx).x)), 1f);
}

