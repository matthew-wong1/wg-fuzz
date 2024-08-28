struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<bool>;

var<private> global2: vec2<bool>;

var<private> global3: array<i32, 14>;

var<private> global4: array<Struct_2, 20>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: bool) -> vec4<u32> {
    return vec4<u32>(~1u, 4294967295u, arg_0.x, min(~(~arg_0.x) >> (arg_0.x % 32u), arg_0.x));
}

fn func_3() -> vec4<u32> {
    global4 = array<Struct_2, 20>();
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-216f, _wgslsmith_f_op_f32(f32(-1f) * -496f))), _wgslsmith_f_op_f32(-791f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(366f)) * -692f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -116f)))))));
    var var_1 = Struct_1(vec3<bool>(global2.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(-47447i, -1i, 1i), vec3<i32>(-16294i, global3[_wgslsmith_index_u32(69768u, 14u)], global3[_wgslsmith_index_u32(120915u, 14u)])) < global3[_wgslsmith_index_u32(1u, 14u)], false), !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(549f, 923f)))) <= 580f), select(u_input.c.yy, u_input.a, global1.yx), select(vec4<bool>(all(select(vec3<bool>(true, global2.x, false), vec3<bool>(global2.x, global1.x, false), vec3<bool>(true, global1.x, true))), global2.x, !all(vec2<bool>(global1.x, true)), true), !(!(!vec4<bool>(global2.x, true, true, global2.x))), !global2.x == global2.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(175f, _wgslsmith_f_op_f32(ceil(-947f)))));
    var var_3 = true;
    return ~firstLeadingBit(~vec4<u32>(1u, 1u, 1u, 1u));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_mod_i32(u_input.a.x, select(-u_input.b.x, global3[_wgslsmith_index_u32(func_3().x, 14u)], any(select(select(global1.yx, vec2<bool>(true, global1.x), vec2<bool>(true, true)), vec2<bool>(global1.x, false), false))));
    global1 = vec3<bool>(all(!select(select(vec3<bool>(false, false, global1.x), vec3<bool>(false, arg_0, global2.x), arg_0), !vec3<bool>(global2.x, true, global1.x), !vec3<bool>(false, true, arg_0))), !(arg_2 > 1374f), u_input.c.x != 45748i);
    var_0 = global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(~14415u, func_3().x), ~0u)), 14u)];
    let var_1 = global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_3.x, 0u, arg_1, 0u), ~vec4<u32>(arg_3.x, arg_3.x, arg_3.x, 1u)) | select(func_2(vec2<u32>(26434u, 1u), u_input.b.x, global2.x), vec4<u32>(0u, arg_3.x, 16692u, arg_3.x), true), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, ~87807u, _wgslsmith_sub_u32(4294967295u, 4294967295u), _wgslsmith_mult_u32(arg_1, 1u)), vec4<u32>(arg_3.x ^ arg_1, 0u, arg_3.x << (2993u % 32u), _wgslsmith_add_u32(arg_3.x, arg_1)))), 20u)];
    let var_2 = Struct_2(Struct_1(var_1.a.a, all(vec3<bool>(!var_1.a.d.x, -332f > arg_2, any(var_1.a.a.yx))), -u_input.a, !var_1.a.d));
    return Struct_2(var_1.a);
}

fn func_1() -> bool {
    var var_0 = vec2<u32>(1u, _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(41417u, 25899u, 4294967295u, 24517u), _wgslsmith_clamp_vec4_u32(vec4<u32>(34716u, 55034u, 2666u, 42336u), vec4<u32>(5112u, 0u, 27276u, 1u), vec4<u32>(4294967295u, 35094u, 39835u, 93888u))), 4324u));
    var var_1 = func_4(any(vec4<bool>(all(select(vec3<bool>(true, global1.x, true), vec3<bool>(true, false, global2.x), global2.x)), true, false || global2.x, !(global1.x & global2.x))), _wgslsmith_mod_u32(~var_0.x, var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1757f, -120f), 123f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1684f)), 1f))), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 17594u, var_0.x, var_0.x), vec4<u32>(var_0.x, 4294967295u, 102355u, var_0.x)), ~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<u32>(var_0.x, var_0.x, 1907u, 20265u) << (func_2(vec2<u32>(4294967295u, var_0.x), global3[_wgslsmith_index_u32(var_0.x, 14u)], global1.x) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(~vec4<u32>(43332u, 1u, 1u, var_0.x), func_3())));
    var var_2 = Struct_2(var_1.a);
    let var_3 = -24426i;
    var var_4 = func_4(true, _wgslsmith_dot_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x)), vec3<u32>(var_0.x, var_0.x, var_0.x), var_1.a.a), vec3<u32>(~var_0.x, _wgslsmith_sub_u32(var_0.x, var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 515u, var_0.x, 0u), vec4<u32>(1u, 4294967295u, var_0.x, 1u)))) | var_0.x, _wgslsmith_f_op_f32(sign(-346f)), func_3()).a.a;
    return all(!(!select(vec3<bool>(true, true, true), !vec3<bool>(var_2.a.b, true, false), func_4(false, 13859u, 1281f, vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)).a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(1u, 20u)];
    var var_1 = ~u_input.c;
    global2 = vec2<bool>(all(!var_0.a.a.xz), true);
    var var_2 = select(!var_0.a.a.xz, var_0.a.a.zx, !select(vec2<bool>(!global2.x, true), select(!vec2<bool>(var_0.a.a.x, true), global1.yx, vec2<bool>(false, false)), vec2<bool>(false, func_1())));
    var var_3 = u_input.a;
    var var_4 = _wgslsmith_clamp_u32(1u, ~func_2(~_wgslsmith_clamp_vec2_u32(vec2<u32>(66543u, 4045u), vec2<u32>(1u, 3980u), vec2<u32>(1u, 1u)), -1i, (global1.x && false) & false).x, ~(~(~(~1236u))));
    var_4 = _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(1u, 58615u, 1u, 0u)), vec4<u32>(19991u, 46902u, 4294967295u, 17490u))), ~vec4<u32>(1u, 1u, 1u, 1u)) >> (~4294967295u % 32u);
    let var_5 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-vec2<i32>(5753i & var_5.c.x, 22786i)), vec4<u32>(4294967295u, ~1u, ~(~firstLeadingBit(39406u)), ~1u), func_3().x);
}

