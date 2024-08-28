struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11>;

var<private> global1: Struct_1;

var<private> global2: vec3<bool>;

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>) -> bool {
    var var_0 = !vec3<bool>(_wgslsmith_dot_vec3_i32(u_input.a | vec3<i32>(u_input.b, u_input.a.x, 42030i), reverseBits(u_input.d.xyw)) < _wgslsmith_add_i32(u_input.d.x, 2147483647i), ~_wgslsmith_mod_i32(-24304i, -2147483647i) < _wgslsmith_sub_i32(4516i, u_input.d.x), select(true, all(global2.xy) | true, -2998f != global1.e));
    global3 = arg_0;
    global2 = select(!vec3<bool>(true, global2.x, all(!arg_0)), global0[_wgslsmith_index_u32(select(u_input.c, max(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, 0u), vec4<u32>(29459u, u_input.c, u_input.c, 8923u)), 62994u), ~u_input.c), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-46348i, 1010i, u_input.b)) < 0i), 11u)], select(!select(select(vec3<bool>(true, global2.x, global1.a), vec3<bool>(true, true, global2.x), arg_0.wzz), !vec3<bool>(false, arg_0.x, false), !vec3<bool>(arg_0.x, global1.d.x, arg_0.x)), !global0[_wgslsmith_index_u32(26963u, 11u)], true));
    var var_1 = vec4<i32>(abs(u_input.d.x), -64374i, 0i << (_wgslsmith_mod_u32(u_input.c, ~(~20745u)) % 32u), u_input.d.x);
    var var_2 = Struct_2(Struct_1(!(!global2.x), _wgslsmith_f_op_f32(select(257f, global1.b, true)), global1.b, !select(!vec2<bool>(global2.x, false), vec2<bool>(true, arg_0.x), var_0.zx), _wgslsmith_f_op_f32(select(1291f, -1000f, true))), reverseBits(-u_input.a.x));
    return any(!(!(!(!arg_0))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> vec3<bool> {
    global3 = vec4<bool>(arg_1.a.d.x, all(select(vec3<bool>(func_3(vec4<bool>(arg_1.a.d.x, arg_0.a.d.x, global2.x, arg_1.a.a), vec2<f32>(global1.e, global1.c)), arg_0.a.a, true), select(!global3.xzw, !vec3<bool>(true, arg_1.a.a, true), !global2.x), global0[_wgslsmith_index_u32(0u, 11u)])), func_3(vec4<bool>(!global3.x, select(global2.x, true, global3.x), global1.d.x, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1440f, -1938f)))) && true, global2.x);
    return vec3<bool>(!global2.x, select(!(!all(vec2<bool>(global3.x, global3.x))), true, select(true, all(vec4<bool>(true, global3.x, true, arg_0.a.d.x)), all(vec4<bool>(arg_0.a.d.x, global2.x, global3.x, global3.x)))), false);
}

fn func_1() -> u32 {
    global2 = select(select(vec3<bool>(false, true, true), select(select(func_2(Struct_2(Struct_1(global3.x, 1000f, 198f, global1.d, -1284f), u_input.d.x), Struct_2(Struct_1(true, global1.c, 1000f, vec2<bool>(false, true), -665f), u_input.a.x)), select(global0[_wgslsmith_index_u32(1u, 11u)], vec3<bool>(false, false, true), true), false), global3.xzx, all(!global3.xy)), select(global0[_wgslsmith_index_u32(u_input.c, 11u)], select(vec3<bool>(false, global1.a, global1.a), vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(u_input.c, 11u)]), false)), select(global3.wzz, global3.zzz, global0[_wgslsmith_index_u32(u_input.c, 11u)]), !vec3<bool>(!(!global1.a), true & all(vec4<bool>(global3.x, global2.x, false, global3.x)), false));
    let var_0 = _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.d.x, 59730i), -(~abs(u_input.d.x)));
    var var_1 = _wgslsmith_dot_vec2_u32(firstLeadingBit(~abs(vec2<u32>(u_input.c, 1u))), ~countOneBits(vec2<u32>(abs(19556u), u_input.c)));
    let var_2 = firstLeadingBit(min(_wgslsmith_mult_vec2_u32(~(vec2<u32>(0u, u_input.c) | vec2<u32>(10843u, u_input.c)), vec2<u32>(1u, u_input.c)), abs(max(vec2<u32>(u_input.c, 106830u) ^ vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(u_input.c, 48840u)))));
    let var_3 = Struct_2(Struct_1(!(global3.x || false), _wgslsmith_f_op_f32(round(global1.b)), global1.b, select(global2.yx, func_2(Struct_2(Struct_1(true, 774f, global1.b, global1.d, -414f), var_0), Struct_2(Struct_1(global2.x, global1.c, global1.b, vec2<bool>(false, global3.x), -1027f), var_0)).yx, !(!global3.wz)), _wgslsmith_f_op_f32(min(global1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(floor(1000f)))))), _wgslsmith_sub_i32(select(_wgslsmith_mod_i32(_wgslsmith_div_i32(37895i, var_0), u_input.a.x), 1i, any(select(vec4<bool>(global3.x, false, global1.d.x, false), vec4<bool>(true, true, true, false), vec4<bool>(global1.d.x, global1.d.x, true, global2.x)))), -18407i));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~reverseBits(reverseBits(_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(u_input.c, 0u)), ~vec2<u32>(u_input.c, u_input.c))));
    var var_1 = _wgslsmith_f_op_f32(trunc(617f));
    var var_2 = _wgslsmith_div_u32((_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 0u, u_input.c), 1u) | 2828u) >> (func_1() % 32u), u_input.c);
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + -870f)) - -2444f)));
    global1 = Struct_1(false, global1.e, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(355f, _wgslsmith_div_f32(global1.e, global1.c)))))), vec2<bool>(global2.x, false), global1.b);
    var_1 = global1.e;
    let x = u_input.a;
    s_output = StorageBuffer(-((select(u_input.a.yz, vec2<i32>(u_input.b, u_input.d.x), vec2<bool>(false, false)) << (~vec2<u32>(100438u, u_input.c) % vec2<u32>(32u))) >> (~_wgslsmith_mult_vec2_u32(var_0, vec2<u32>(27196u, 0u)) % vec2<u32>(32u))), ~select(~_wgslsmith_add_vec4_u32(vec4<u32>(72284u, 3806u, var_0.x, 0u), vec4<u32>(u_input.c, u_input.c, 4294967295u, var_0.x)), reverseBits(vec4<u32>(u_input.c, 73070u, var_0.x, 4294967295u)), !(global1.a & global2.x)), vec4<i32>(_wgslsmith_sub_i32(u_input.b, -(-1i >> (var_0.x % 32u))), abs(u_input.b), u_input.d.x, ~(u_input.a.x >> (88602u % 32u)) ^ firstTrailingBit(-u_input.b)), select(vec2<u32>(_wgslsmith_add_u32(4294967295u, ~var_0.x), ~_wgslsmith_add_u32(u_input.c, 4059u)), var_0, false), _wgslsmith_div_u32(56099u, 1u & ~firstTrailingBit(1u)));
}

