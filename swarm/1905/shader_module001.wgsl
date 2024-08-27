struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false));

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, false), 48040i, true, true);

var<private> global2: array<i32, 21> = array<i32, 21>(36125i, -24050i, 2147483647i, 55454i, 37240i, 1i, -26829i, 14349i, i32(-2147483648), 2147483647i, -39032i, 0i, 20698i, 2147483647i, -8897i, i32(-2147483648), -16833i, -1i, i32(-2147483648), 15476i, 26468i);

var<private> global3: f32 = -1266f;

var<private> global4: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: f32) -> vec3<bool> {
    global3 = arg_2;
    var var_0 = Struct_1(!global1.a, ~(-1i), true | (select(4294967295u ^ arg_0, arg_0, global4.d) != ~(~arg_0)), global1.d);
    let var_1 = global1.a.xx;
    global4 = Struct_1(select(select(global4.a, vec3<bool>(!global1.a.x, var_1.x, true), !any(vec3<bool>(false, var_1.x, true))), vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(var_0.c, true), global4.a.x)), var_0.d, !any(vec3<bool>(var_0.c, false, true))), !vec3<bool>(global1.c, true, true)), 1i, global4.a.x, true);
    let var_2 = Struct_1(global1.a, global1.b, global1.c, var_1.x & true);
    return global4.a;
}

fn func_2() -> Struct_1 {
    let var_0 = firstLeadingBit(reverseBits(~_wgslsmith_clamp_vec4_i32(-vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 21u)], global1.b, -2147483647i), reverseBits(vec4<i32>(global4.b, global4.b, 25844i, 0i)), abs(vec4<i32>(global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(21555u, 21u)], 0i, global2[_wgslsmith_index_u32(u_input.a.x, 21u)])))));
    return Struct_1(func_3(0u, firstTrailingBit(-_wgslsmith_mod_vec2_i32(vec2<i32>(global4.b, global1.b), vec2<i32>(0i, var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1116f, -2922f))), _wgslsmith_f_op_f32(f32(-1f) * -747f))), _wgslsmith_mult_i32(-1i, var_0.x), all(!select(func_3(4294967295u, vec2<i32>(global1.b, global1.b), -518f), vec3<bool>(true, true, false), func_3(u_input.a.x, vec2<i32>(0i, 2147483647i), -2362f).x)), false);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> f32 {
    var var_0 = global1.d;
    global1 = func_2();
    global3 = 506f;
    var var_1 = true;
    let var_2 = func_2();
    return 1000f;
}

fn func_1(arg_0: bool) -> bool {
    global3 = -305f;
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(), -global2[_wgslsmith_index_u32(u_input.a.x, 21u)], -global4.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(177f, 400f)))));
    var var_1 = Struct_1(!global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global4.b, true, global4.d);
    let var_2 = func_2();
    let var_3 = vec4<i32>(i32(-1i) * -max(25242i, firstLeadingBit(global4.b)), -_wgslsmith_dot_vec4_i32(-vec4<i32>(global4.b, global4.b, global1.b, global1.b) & vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], -7669i, global4.b, global2[_wgslsmith_index_u32(71248u, 21u)]), vec4<i32>(~(-1i), _wgslsmith_div_i32(global4.b, var_1.b), ~(-39903i), -1i)), _wgslsmith_clamp_i32(~(-var_1.b), 1i, _wgslsmith_mult_i32(-2147483647i, 0i)), select(_wgslsmith_dot_vec2_i32(vec2<i32>(32603i, ~(-2147483647i)), vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, 43200i), vec2<i32>(2147483647i, 101555i)))), min(-1i, reverseBits(-24634i)), var_2.d));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(!select(select(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], true), vec3<bool>(global4.d, false, global1.a.x), true), vec3<bool>(any(select(global1.a.yx, vec2<bool>(true, global4.a.x), vec2<bool>(true, true))), global1.c, any(global1.a)), !func_1(false)), 0i, all(select(select(!vec4<bool>(true, true, global1.c, global4.d), vec4<bool>(false, true, global1.d, global4.a.x), select(vec4<bool>(global1.c, global1.c, true, global4.a.x), vec4<bool>(global4.d, global1.c, false, true), vec4<bool>(global1.c, global1.a.x, global4.d, global1.a.x))), select(select(vec4<bool>(false, global1.c, false, global1.a.x), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, global4.c, global1.a.x, global4.a.x), select(vec4<bool>(false, global1.a.x, global4.d, false), vec4<bool>(global1.a.x, global1.d, global4.d, global1.d), vec4<bool>(global4.d, true, false, global1.a.x))), !vec4<bool>(global4.d, global1.a.x, false, true))), !global1.d);
    var_0 = Struct_1(vec3<bool>(!global1.d, all(select(func_2().a.xx, vec2<bool>(false, global4.d), !global4.a.x)), _wgslsmith_mod_u32(u_input.a.x ^ u_input.a.x, ~u_input.a.x) <= ~(u_input.a.x >> (u_input.a.x % 32u))), (35988i | _wgslsmith_sub_i32(firstLeadingBit(var_0.b), global2[_wgslsmith_index_u32(13590u, 21u)] ^ -1i)) << (_wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, u_input.a.x, 15064u, 4294967295u), max(vec4<u32>(27775u, 1u, u_input.a.x, 32714u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, 17554u), vec4<u32>(96870u, 59700u, u_input.a.x, 52139u))) % 32u), global4.a.x, true);
    var var_1 = -(-18669i ^ countOneBits((global4.b << (u_input.a.x % 32u)) >> (4294967295u % 32u)));
    global0 = array<vec3<bool>, 4>();
    var var_2 = u_input.a;
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-(~global2[_wgslsmith_index_u32(~0u, 21u)] << (var_2.x % 32u)));
}

