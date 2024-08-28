struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(true, true, true, true), Struct_1(vec2<u32>(29075u, 36808u), vec3<u32>(1878u, 1u, 4294967295u), vec3<u32>(19767u, 4294967295u, 1u)), Struct_1(vec2<u32>(4294967295u, 1u), vec3<u32>(7130u, 0u, 0u), vec3<u32>(0u, 31039u, 0u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>) -> bool {
    global0 = Struct_3(select(vec4<bool>(!(arg_0.x <= 1376f), true, true, true & any(vec3<bool>(false, global0.a.x, arg_1.x))), vec4<bool>(true, true, true, true), all(select(vec2<bool>(true, arg_1.x), !vec2<bool>(global0.a.x, global0.a.x), !vec2<bool>(global0.a.x, true)))), Struct_1(u_input.d, max(global0.b.c, u_input.c), ~u_input.c), Struct_1(u_input.d, (_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.d.x, u_input.c.x), vec3<u32>(67005u, u_input.c.x, 4294967295u)) << (~global0.b.c % vec3<u32>(32u))) >> ((~global0.b.b | u_input.c) % vec3<u32>(32u)), (vec3<u32>(u_input.c.x, 37834u, 38069u) << (select(vec3<u32>(45040u, global0.c.a.x, global0.b.a.x), global0.c.c, vec3<bool>(arg_1.x, arg_1.x, global0.a.x)) % vec3<u32>(32u))) ^ countOneBits(select(global0.b.c, vec3<u32>(u_input.d.x, 1u, u_input.d.x), false))));
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(375f, arg_0.x), arg_0.x));
    var var_1 = Struct_3(!vec4<bool>(any(global0.a.yyy), !select(true, global0.a.x, true), true, true), Struct_1(vec2<u32>(u_input.d.x, min(65517u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.b.c.x, u_input.c.x, global0.b.b.x), vec4<u32>(u_input.d.x, global0.b.b.x, 0u, u_input.d.x)))), global0.b.b, ~_wgslsmith_mult_vec3_u32(u_input.c, reverseBits(vec3<u32>(4294967295u, 1u, 42469u)))), Struct_1(u_input.c.xz, vec3<u32>(~u_input.d.x, ~u_input.d.x, _wgslsmith_add_u32(4294967295u, _wgslsmith_add_u32(99744u, u_input.c.x))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, _wgslsmith_mod_u32(global0.b.b.x, 4294967295u), u_input.d.x), u_input.c, global0.b.b)));
    var var_2 = min(~max(-u_input.e, vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(-15913i, 0i));
    let var_3 = 1u;
    return true;
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    global0 = Struct_3(vec4<bool>(!all(select(vec3<bool>(global0.a.x, false, false), vec3<bool>(global0.a.x, false, global0.a.x), true)), arg_0.x != 61907u, !(true & any(global0.a.yyy)), !global0.a.x), global0.c, Struct_1(vec2<u32>(firstLeadingBit(u_input.c.x), arg_0.x & min(0u, arg_0.x)), firstLeadingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 79327u, 0u), global0.c.b), global0.b.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(61280u, global0.b.c.x), u_input.d.x, arg_0.x), u_input.c)));
    let var_0 = global0.a;
    global0 = Struct_3(global0.a, global0.c, global0.c);
    global0 = Struct_3(global0.a, global0.b, global0.b);
    let var_1 = Struct_2(vec2<bool>(!var_0.x, select(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2015f, -274f, 584f, 115f)), !var_0.wx), global0.a.x, var_0.x)), vec4<i32>(-44522i | u_input.a.x, _wgslsmith_add_i32(-2147483647i, abs(-2147483647i >> (arg_0.x % 32u))), 1i, min(u_input.e.x, 2539i)), global0.b);
    return Struct_3(select(!(!global0.a), global0.a, false), Struct_1(vec2<u32>(var_1.c.b.x, arg_0.x ^ 1u), u_input.c, ~_wgslsmith_div_vec3_u32(abs(u_input.c), vec3<u32>(arg_0.x, arg_0.x, 0u))), var_1.c);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> bool {
    global0 = func_2(arg_0);
    var var_0 = Struct_2(!vec2<bool>(global0.a.x, 18126i != u_input.a.x), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.e.x, u_input.a.x) ^ vec2<i32>(u_input.e.x, 32971i)), -1i, _wgslsmith_mult_i32(~(-53056i), u_input.b.x), ~0i) & _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.e.x, -42113i, u_input.e.x) | vec4<i32>(u_input.b.x, -32855i, u_input.e.x, u_input.b.x), vec4<i32>(-1i) * -vec4<i32>(1i, u_input.a.x, u_input.e.x, -2147483647i)), func_2(arg_0).c);
    global0 = Struct_3(global0.a, func_2(firstLeadingBit(vec2<u32>(~7865u, 1u << (u_input.d.x % 32u)))).b, Struct_1(arg_0, ~(~(~u_input.c)), firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.c, var_0.c.c)) ^ vec3<u32>(4294967295u, ~20252u, 78156u)));
    var var_1 = max(_wgslsmith_mod_i32(_wgslsmith_div_i32(countOneBits(var_0.b.x & 0i), min(var_0.b.x, u_input.b.x & -2147483647i)), u_input.a.x), var_0.b.x ^ select(~_wgslsmith_mult_i32(34601i, u_input.a.x), var_0.b.x, select(global0.a.x || false, !arg_1, true)));
    let var_2 = 66149u >> ((_wgslsmith_sub_u32(var_0.c.a.x, ~arg_0.x | 0u) >> (var_0.c.b.x % 32u)) % 32u);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!global0.a);
    global0 = Struct_3(select(vec4<bool>(var_0.x, true, global0.a.x, true), global0.a, !(!all(var_0))), Struct_1(~(~(vec2<u32>(0u, u_input.c.x) ^ vec2<u32>(u_input.c.x, u_input.c.x))), firstLeadingBit(~reverseBits(vec3<u32>(28388u, global0.b.a.x, 1u))), abs(firstLeadingBit(firstTrailingBit(vec3<u32>(u_input.c.x, u_input.d.x, 18693u))))), global0.c);
    var var_1 = Struct_3(!vec4<bool>(var_0.x, all(!vec2<bool>(var_0.x, var_0.x)), true, select(any(global0.a.zx), func_1(global0.c.c.zz, global0.a.x), var_0.x)), func_2(select(~u_input.c.xy & global0.b.b.yz, global0.c.c.zz, global0.c.a.x < _wgslsmith_sub_u32(u_input.c.x, 33933u))).b, func_2(vec2<u32>(min(13106u, ~u_input.c.x), global0.c.b.x)).b);
    var var_2 = var_1.b.a;
    var_1 = Struct_3(!select(global0.a, vec4<bool>(true, !var_1.a.x, !var_1.a.x, true), var_1.a.x), Struct_1(global0.b.b.yz, firstLeadingBit(~vec3<u32>(32703u, 1u, 0u)), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, var_2.x, u_input.d.x), vec3<u32>(2727u, 0u, var_1.c.c.x)))), var_1.c);
    let var_3 = firstLeadingBit(abs(vec3<i32>(19262i, ~u_input.e.x, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

