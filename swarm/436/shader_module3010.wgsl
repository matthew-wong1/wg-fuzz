struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<Struct_1, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec3<f32>) -> vec4<f32> {
    global2 = array<Struct_1, 9>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(arg_3, arg_3)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3), vec3<f32>(arg_3.x, 568f, arg_3.x)), vec3<f32>(arg_3.x, arg_1.b, arg_3.x)), select(select(!vec3<bool>(false, arg_1.a.x, arg_1.d.x), select(vec3<bool>(arg_1.a.x, false, true), vec3<bool>(arg_1.d.x, false, arg_1.d.x), arg_1.a.x), select(vec3<bool>(arg_1.a.x, false, false), vec3<bool>(true, false, arg_1.a.x), arg_1.a.x)), vec3<bool>(!arg_1.a.x, arg_1.d.x, any(vec4<bool>(false, false, arg_1.a.x, false))), vec3<bool>(all(vec2<bool>(arg_1.a.x, true)), arg_1.d.x, u_input.e <= u_input.c.x)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-arg_1.c), arg_1.b), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-346f, arg_1.b, arg_3.x))), all(vec4<bool>(arg_1.a.x, arg_1.d.x, arg_1.a.x, true)))), _wgslsmith_f_op_vec3_f32(-arg_3)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1787f, _wgslsmith_f_op_f32(-arg_3.x), 1389f), vec3<f32>(_wgslsmith_f_op_f32(-587f - 124f), arg_1.b, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-826f * arg_3.x))))));
    let var_1 = ~50844i;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -429f))))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.b))))));
    return vec4<f32>(_wgslsmith_f_op_f32(arg_3.x * -209f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1708f * _wgslsmith_div_f32(arg_1.b, arg_3.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.x)) * arg_1.c), _wgslsmith_f_op_f32(-arg_1.c));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(arg_1.c + arg_1.b);
    global1 = array<Struct_1, 17>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(_wgslsmith_clamp_u32(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 35878u, 8115u), vec3<u32>(0u, u_input.c.x, u_input.b)), ~1u), ~u_input.b, 35031u), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(max(4294967295u, u_input.a), _wgslsmith_add_u32(1u, u_input.b), true), ~u_input.c.x, ~0u), 9u)], firstTrailingBit(u_input.c.yzy), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-894f, arg_0.c, arg_0.b)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, -387f, arg_0.b)), !(!arg_1.a.x))))) - vec4<f32>(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b)))), _wgslsmith_f_op_f32(ceil(700f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.c, arg_1.c)) - _wgslsmith_f_op_f32(-arg_1.c)), arg_0.b))));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(var_1.xz, var_1.yz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b, -1335f), vec2<f32>(arg_0.c, var_1.x)) * vec2<f32>(1323f, var_1.x)))))));
    global2 = array<Struct_1, 9>();
    return Struct_1(vec2<bool>(!(_wgslsmith_sub_u32(29679u, u_input.c.x) < u_input.b), arg_1.a.x), -963f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1876f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, arg_1.b))))), vec2<bool>(!arg_0.d.x, select(-global0.x < (-14640i ^ global0.x), arg_0.d.x, -global0.x <= -global0.x)));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = Struct_1(!func_2(arg_1, Struct_1(!arg_1.d, _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(1660f - -1247f), !arg_1.a)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-130f - 305f)), arg_1.c)) - arg_1.b), _wgslsmith_f_op_f32(-arg_1.c), select(vec2<bool>(true, any(select(vec3<bool>(arg_1.a.x, arg_0, true), vec3<bool>(false, arg_0, true), arg_0))), !func_2(Struct_1(vec2<bool>(arg_1.a.x, false), arg_1.c, arg_1.c, arg_1.a), arg_1).d, func_2(func_2(global2[_wgslsmith_index_u32(u_input.b, 9u)], Struct_1(vec2<bool>(false, arg_0), arg_1.c, arg_1.b, vec2<bool>(true, arg_1.a.x))), Struct_1(!arg_1.a, _wgslsmith_f_op_f32(arg_1.b * -732f), arg_1.c, arg_1.d)).d));
    var var_1 = func_2(Struct_1(vec2<bool>(var_0.a.x, true), _wgslsmith_f_op_f32(floor(var_0.b)), arg_1.c, var_0.a), global2[_wgslsmith_index_u32(reverseBits(u_input.b), 9u)]);
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_clamp_u32(u_input.e, _wgslsmith_add_u32(108981u, 31403u), 11527u)), ~u_input.c.zz)), 9u)];
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.b, -289f, arg_1.b), vec3<f32>(var_1.c, -112f, var_2.c), vec3<bool>(arg_1.d.x, false, true)))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, func_2(global2[_wgslsmith_index_u32(u_input.e, 9u)], func_2(Struct_1(vec2<bool>(false, arg_1.a.x), 601f, 559f, vec2<bool>(arg_1.a.x, var_1.d.x)), arg_1)).c, arg_1.c) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -317f), _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(932f - 824f) + _wgslsmith_f_op_f32(abs(333f))))));
    var var_4 = -min(global0.x, -11022i) << (u_input.a % 32u);
    return vec2<i32>(-4848i, _wgslsmith_mod_i32(~(_wgslsmith_add_i32(u_input.d, global0.x) | -global0.x), ~1i));
}

fn func_5(arg_0: vec2<i32>) -> bool {
    global1 = array<Struct_1, 17>();
    let var_0 = u_input.d;
    var var_1 = global0.x;
    global2 = array<Struct_1, 9>();
    global0 = vec2<i32>(-1i, 22263i);
    return any(vec3<bool>(~(u_input.c.x & 40033u) < ~u_input.c.x, !all(func_2(Struct_1(vec2<bool>(true, false), -539f, -1297f, vec2<bool>(true, false)), global1[_wgslsmith_index_u32(u_input.e, 17u)]).d), false & all(vec3<bool>(false, true, true))));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = -max(1i, 13653i);
    global1 = array<Struct_1, 17>();
    return Struct_1(select(arg_0.wy, select(!select(arg_0.wy, vec2<bool>(true, true), arg_0.yz), vec2<bool>(true || arg_0.x, false), arg_0.wz), func_5(func_4(arg_0.x, func_2(global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(63204u, 9u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -481f) - -941f), -244f, arg_0.wz);
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: i32) -> vec3<bool> {
    global1 = array<Struct_1, 17>();
    var var_0 = Struct_1(!vec2<bool>(true, arg_1.d.x), _wgslsmith_f_op_f32(abs(-1034f)), -541f, arg_1.d);
    global0 = vec2<i32>(abs(-1i), -global0.x);
    global0 = -vec2<i32>(_wgslsmith_clamp_i32(-45286i, abs(3895i), 1i), ~arg_3) << (arg_2.zx % vec2<u32>(32u));
    var var_1 = func_1(!select(!select(vec4<bool>(var_0.a.x, arg_1.a.x, false, var_0.a.x), vec4<bool>(var_0.d.x, false, arg_1.a.x, true), arg_1.d.x), select(vec4<bool>(true, var_0.a.x, false, false), !vec4<bool>(var_0.a.x, true, false, true), select(vec4<bool>(var_0.a.x, arg_1.d.x, true, var_0.a.x), vec4<bool>(var_0.d.x, false, arg_1.d.x, var_0.d.x), vec4<bool>(var_0.a.x, true, true, false))), !select(vec4<bool>(arg_1.a.x, var_0.d.x, var_0.d.x, false), vec4<bool>(var_0.a.x, false, false, arg_1.a.x), vec4<bool>(true, var_0.a.x, var_0.a.x, false))), u_input.d);
    return select(select(vec3<bool>(any(vec2<bool>(true, arg_1.d.x)) && !var_1.d.x, any(vec3<bool>(true, true, var_0.d.x)), var_0.d.x), vec3<bool>(all(!vec2<bool>(arg_1.d.x, false)), ~58478u >= ~u_input.b, true), func_5(vec2<i32>(u_input.d, arg_3 ^ u_input.d))), !(!select(select(vec3<bool>(var_1.a.x, var_0.d.x, var_0.a.x), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(var_1.a.x, true, var_1.a.x), vec3<bool>(arg_1.a.x, var_0.a.x, false), arg_1.a.x))), vec3<bool>(arg_1.a.x, true, false || (countOneBits(arg_3) != -4307i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 17>();
    global2 = array<Struct_1, 9>();
    global1 = array<Struct_1, 17>();
    global0 = select(vec2<i32>(0i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, global0.x), vec2<i32>(u_input.d, -33750i)), 1i)), vec2<i32>(-2147483647i << (u_input.c.x % 32u), u_input.d), any(!func_6(_wgslsmith_f_op_f32(f32(-1f) * -710f), func_1(vec4<bool>(false, false, true, false), -33143i), vec3<u32>(1u, 59708u, u_input.c.x), i32(-1i) * -1i)));
    let var_0 = ~vec4<u32>(4294967295u, _wgslsmith_sub_u32(~abs(u_input.c.x), 74463u), u_input.a, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~4294967295u, ~4294967295u, u_input.b), 4294967295u, u_input.e));
    var var_1 = -min(global0.x, -1i);
    global1 = array<Struct_1, 17>();
    let var_2 = func_2(global1[_wgslsmith_index_u32(~var_0.x, 17u)], func_2(func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), _wgslsmith_div_i32(global0.x, global0.x) >> (_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(4294967295u, 1u, 52691u, 4294967295u)) % 32u)), global2[_wgslsmith_index_u32(var_0.x, 9u)]));
    let var_3 = !var_2.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(var_2, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.c.x ^ 4294967295u, ~_wgslsmith_mult_u32(27017u, u_input.b)), 17u)]).c, vec3<u32>(~_wgslsmith_div_u32(~24763u, _wgslsmith_div_u32(28888u, u_input.c.x)), 56488u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 3567u, 15215u) << (max(u_input.c.xxw, var_0.wzw) % vec3<u32>(32u)), reverseBits(vec3<u32>(0u, 1u, u_input.c.x)))));
}

