struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_4;

var<private> global2: vec4<u32>;

var<private> global3: array<i32, 27>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec3<i32> {
    let var_0 = Struct_1(true);
    var var_1 = arg_1.c.yw;
    let var_2 = arg_1.a;
    var_1 = global1.c.c.yz;
    var var_3 = Struct_2(arg_1.a, global1.c.c << (max(vec4<u32>(~14740u, 4294967295u, global1.c.c.x, var_1.x | arg_0), select(vec4<u32>(0u, 21689u, arg_1.c.x, global1.c.c.x), _wgslsmith_mod_vec4_u32(arg_1.c, global1.c.c), any(vec4<bool>(var_0.a, true, true, var_0.a)))) % vec4<u32>(32u)));
    return ~vec3<i32>(-_wgslsmith_add_i32(arg_1.b.x, _wgslsmith_div_i32(-17204i, global3[_wgslsmith_index_u32(50172u, 27u)])), -_wgslsmith_mod_i32(min(u_input.a, arg_1.b.x), global1.c.b.x), -14707i);
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = firstLeadingBit(vec4<u32>(arg_0.c.x, _wgslsmith_mult_u32(1u, global1.c.c.x), global2.x, 63270u));
    var var_1 = Struct_1(!(arg_0.a.a | false));
    var var_2 = ~_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(1i, global1.c.b.x, abs(arg_0.b.x), min(0i, arg_0.b.x))), _wgslsmith_div_vec4_i32(select(vec4<i32>(global1.c.b.x, global3[_wgslsmith_index_u32(global2.x, 27u)], u_input.b.x, -10752i) << (vec4<u32>(1u, 32648u, var_0.x, global1.b) % vec4<u32>(32u)), global1.c.b, true), vec4<i32>(-17219i, select(arg_0.b.x, 1i, false), abs(-41425i), global1.c.b.x)));
    let var_3 = 1i;
    var_2 = vec4<i32>(~var_3, 2147483647i, -8184i, _wgslsmith_dot_vec3_i32(select(~var_2.zzz ^ vec3<i32>(12058i, global3[_wgslsmith_index_u32(arg_0.c.x, 27u)], 23271i), select(u_input.b.wxx << (global1.c.c.wzz % vec3<u32>(32u)), arg_0.b.zwx | arg_0.b.xxy, all(vec2<bool>(false, var_1.a))), vec3<bool>(true, select(var_1.a, var_1.a, true), true)), func_3(_wgslsmith_sub_u32(select(4007u, global2.x, arg_0.a.a), 27778u << (global2.x % 32u)), arg_0)));
    return Struct_1(any(!vec2<bool>(!global1.a.a, global1.c.d)));
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: f32) -> Struct_4 {
    let var_0 = ~0u;
    let var_1 = Struct_1(!(true == !(!arg_1.c.a.a)));
    var var_2 = 17563u;
    global2 = vec4<u32>(17302u, global1.c.c.x, min(var_0, ~_wgslsmith_clamp_u32(~1u, arg_1.b >> (arg_1.b % 32u), abs(var_0))), global2.x);
    var_2 = 38997u;
    return Struct_4(func_2(Struct_3(var_1, -_wgslsmith_mult_vec4_i32(global1.c.b, vec4<i32>(global1.c.b.x, -32488i, u_input.a, global3[_wgslsmith_index_u32(global2.x, 27u)])), ~(~arg_1.c.c), all(vec2<bool>(true, true)))), global2.x, arg_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_4) -> u32 {
    var var_0 = 37904u;
    var var_1 = 4294967295u;
    global2 = vec4<u32>(_wgslsmith_dot_vec2_u32(global1.c.c.zx, arg_2.c.c.yw), ~(~0u << (_wgslsmith_dot_vec3_u32(arg_2.c.c.wzw, arg_2.c.c.yxw) % 32u)), firstLeadingBit(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(global1.c.c.x, global1.b), ~arg_2.c.c.x)), reverseBits(55733u ^ firstLeadingBit(arg_2.b)));
    let var_2 = Struct_3(arg_0, ~u_input.b, ~(~global1.c.c ^ _wgslsmith_clamp_vec4_u32(~arg_2.c.c, vec4<u32>(arg_2.c.c.x, arg_2.b, 32767u, 4294967295u), ~vec4<u32>(global2.x, global1.c.c.x, global1.c.c.x, arg_2.c.c.x))), !(!all(select(vec3<bool>(false, arg_0.a, arg_2.a.a), vec3<bool>(arg_2.a.a, true, false), vec3<bool>(global1.a.a, false, false)))));
    var var_3 = ~countOneBits(4294967295u);
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(func_4(global1.a, ~u_input.a, func_1(0i, Struct_4(Struct_1(global1.a.a), 6722u, Struct_3(Struct_1(false), vec4<i32>(global1.c.b.x, global3[_wgslsmith_index_u32(global1.b, 27u)], -2147483647i, -39724i), vec4<u32>(global2.x, 1u, global2.x, 82845u), true)), _wgslsmith_div_f32(-569f, 428f))), 4294967295u), func_4(global1.c.a, global3[_wgslsmith_index_u32(select(~global2.x, ~0u, any(vec4<bool>(false, global1.c.d, global1.a.a, false))), 27u)], func_1(select(~(-91341i), global1.c.b.x, any(vec3<bool>(global1.a.a, global1.a.a, false))), Struct_4(Struct_1(true), ~global2.x, func_1(u_input.a, Struct_4(Struct_1(false), global2.x, global1.c), 663f).c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(232f + -1232f), 331f))));
    let var_1 = !(!select(vec3<bool>(func_2(Struct_3(Struct_1(true), global1.c.b, vec4<u32>(23973u, 0u, 1u, 51907u), global1.c.a.a)).a, true, global1.a.a), select(!vec3<bool>(global1.a.a, global1.c.d, global1.a.a), !vec3<bool>(global1.c.a.a, global1.c.a.a, false), select(vec3<bool>(true, false, global1.a.a), vec3<bool>(global1.c.d, global1.c.a.a, global1.a.a), vec3<bool>(false, global1.a.a, global1.a.a))), select(!vec3<bool>(false, true, global1.a.a), select(vec3<bool>(global1.a.a, global1.c.d, global1.a.a), vec3<bool>(true, global1.c.d, global1.c.d), false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.xyw, _wgslsmith_mult_vec4_u32(select(~vec4<u32>(var_0.x, 1897u, global1.c.c.x, global2.x), ~global1.c.c, select(vec4<bool>(false, global1.a.a, var_1.x, true), vec4<bool>(global1.a.a, false, global1.a.a, global1.a.a), global1.a.a | false)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(6218u, global2.x, global2.x, 39957u)), vec4<u32>(global1.c.c.x, _wgslsmith_sub_u32(4294967295u, global2.x), _wgslsmith_add_u32(0u, 4294967295u), var_0.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(430f + -984f), _wgslsmith_f_op_f32(f32(-1f) * -1033f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-742f, 452f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(949f)) * _wgslsmith_f_op_f32(trunc(853f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-399f + -1221f))))), _wgslsmith_f_op_f32(-1f), global1.c.b.xyz);
}

