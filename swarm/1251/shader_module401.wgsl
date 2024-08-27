struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<i32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(4294967295u, 2164u, 47551u), vec3<u32>(88201u, 53532u, 1u), vec3<u32>(47344u, 25827u, 68379u), vec3<u32>(590u, 5083u, 9115u), vec3<u32>(1u, 54794u, 56476u), vec3<u32>(4294967295u, 0u, 3214u), vec3<u32>(16422u, 1u, 53459u), vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 0u, 0u), vec3<u32>(65111u, 1u, 1u), vec3<u32>(15682u, 22513u, 4294967295u), vec3<u32>(4294967295u, 69674u, 4294967295u), vec3<u32>(28394u, 4294967295u, 48521u), vec3<u32>(36259u, 0u, 110483u), vec3<u32>(1u, 4294967295u, 686u), vec3<u32>(4294967295u, 66653u, 34690u));

var<private> global1: Struct_1 = Struct_1(vec4<u32>(4451u, 6375u, 74567u, 25968u), true, vec2<i32>(-1i, -20073i), 1233f, vec2<u32>(1u, 68169u));

var<private> global2: f32 = -336f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    global1 = var_0;
    var var_1 = arg_0;
    return var_1.a.x;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec3<bool>, arg_3: vec3<bool>) -> StorageBuffer {
    let var_0 = Struct_3(Struct_2(abs(_wgslsmith_mod_vec2_i32(global1.c, vec2<i32>(2147483647i, global1.c.x))) >> (u_input.a.yz % vec2<u32>(32u)), ~func_3(Struct_1(global1.a, false, global1.c, 595f, vec2<u32>(9058u, u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, 409f)) + _wgslsmith_f_op_f32(global1.d + arg_0)), _wgslsmith_f_op_f32(exp2(global1.d))), vec4<u32>(~53081u, 12770u, global1.a.x, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_sub_u32(min(u_input.a.x, global1.e.x), 43095u))), Struct_2(~(~(~vec2<i32>(global1.c.x, global1.c.x))), 727u, arg_0, _wgslsmith_f_op_f32(floor(752f))), Struct_1(vec4<u32>(31680u << (global1.a.x % 32u), global1.e.x, ~143475u, u_input.a.x), false, ~_wgslsmith_clamp_vec2_i32(-vec2<i32>(global1.c.x, 55243i), vec2<i32>(0i, global1.c.x), global1.c | global1.c), -2117f, vec2<u32>(~1u, 80485u)), !(!vec4<bool>(false, arg_2.x, any(vec3<bool>(true, true, arg_2.x)), u_input.a.x >= u_input.a.x)));
    let var_1 = Struct_2(vec2<i32>(abs(-64689i), ~var_0.a.a.x), ~(~abs(global1.a.x) << (u_input.a.x % 32u)), _wgslsmith_f_op_f32(step(global1.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_0.c.c)))))), -1049f);
    let var_2 = Struct_1(_wgslsmith_add_vec4_u32(firstLeadingBit(min(vec4<u32>(var_1.b, var_1.b, 1u, var_1.b) ^ global1.a, reverseBits(var_0.b))), reverseBits(global1.a)), false, _wgslsmith_mod_vec2_i32(-(vec2<i32>(-1i) * -vec2<i32>(global1.c.x, 2147483647i)), abs(_wgslsmith_mult_vec2_i32(min(global1.c, vec2<i32>(var_1.a.x, global1.c.x)), -global1.c))), 909f, vec2<u32>(var_0.c.b & ~max(1u, global1.a.x), _wgslsmith_add_u32(abs(var_0.b.x), global1.e.x) | 24217u));
    let var_3 = select(false, true, var_0.d.b);
    var var_4 = Struct_2(var_2.c, _wgslsmith_clamp_u32(global1.e.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_1.b, 4294967295u, var_1.b), 4294967295u), _wgslsmith_div_u32(6705u, reverseBits(u_input.a.x))), ~(~(var_0.c.b & 0u))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)))));
    return StorageBuffer(select(_wgslsmith_mod_u32(~54361u << (firstTrailingBit(var_0.a.b) % 32u), 0u), ~_wgslsmith_dot_vec4_u32(var_2.a, var_0.d.a), any(select(vec3<bool>(false, var_2.b, true), arg_3, !vec3<bool>(false, var_2.b, false)))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_div_u32(0u, 88601u)), ~(~0u), max(1u, abs(var_1.b)), var_4.b), vec4<u32>(20489u, 2409u, _wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.a.x, var_0.b.x), vec2<u32>(4294967295u, var_1.b)), firstLeadingBit(global1.e)), _wgslsmith_sub_u32(max(1u, var_1.b), var_2.e.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(589f * 1000f), _wgslsmith_f_op_f32(-var_1.c))), arg_0, -908f), _wgslsmith_dot_vec4_u32(~(~(~var_0.b)), ~vec4<u32>(_wgslsmith_clamp_u32(var_2.e.x, var_1.b, 28953u), abs(51902u), ~41240u, 1u)));
}

fn func_1() -> StorageBuffer {
    global1 = Struct_1(vec4<u32>(_wgslsmith_div_u32(67631u, u_input.a.x), ~(global1.e.x & 1u), ~1u, _wgslsmith_mod_u32(firstTrailingBit(u_input.a.x), _wgslsmith_div_u32(global1.e.x, u_input.a.x))) >> (~global1.a % vec4<u32>(32u)), false, vec2<i32>(i32(-1i) * -34108i, 1i & global1.c.x), -139f, ~(~global1.a.xz));
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), !(_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec2_u32(global1.e, u_input.a.yx)) >= _wgslsmith_dot_vec4_u32(~vec4<u32>(35647u, 65142u, 59128u, 1u), global1.a)), !select(select(vec3<bool>(global1.b, true, true), vec3<bool>(true, false, global1.b), global1.b), select(vec3<bool>(global1.b, true, true), vec3<bool>(false, global1.b, true), false && global1.b), true), vec3<bool>(global1.b, all(select(!vec4<bool>(true, global1.b, true, global1.b), !vec4<bool>(global1.b, global1.b, global1.b, false), all(vec4<bool>(true, global1.b, true, true)))), any(vec3<bool>(true, global1.b, global1.c.x != global1.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b;
    global2 = _wgslsmith_f_op_f32(-global1.d);
    global0 = array<vec3<u32>, 16>();
    let x = u_input.a;
    s_output = func_1();
}

