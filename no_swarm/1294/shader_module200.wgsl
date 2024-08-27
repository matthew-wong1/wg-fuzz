struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<bool, 21>;

var<private> global2: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -577f));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1258f * _wgslsmith_f_op_f32(-1000f * global0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - global2.a))) * _wgslsmith_f_op_f32(f32(-1f) * -847f))), false, ~(~_wgslsmith_sub_vec2_i32(abs(vec2<i32>(1i, global2.c.x)), abs(global2.c))));
    var var_2 = global2.b;
    let var_3 = ~15098u;
    let var_4 = vec3<u32>(min(var_3, _wgslsmith_div_u32(~var_3, u_input.a >> (52791u % 32u)) << (var_3 % 32u)), 1u, ~firstLeadingBit(countOneBits(var_3)));
    return var_1;
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = Struct_2(select(abs(abs(countOneBits(vec2<i32>(46021i, -31814i)))), vec2<i32>(~(39527i ^ arg_0.c.x), 17975i), !(!select(vec2<bool>(true, true), vec2<bool>(false, arg_0.b), global2.b))), _wgslsmith_mod_i32(firstTrailingBit(-1i), _wgslsmith_dot_vec4_i32(-(vec4<i32>(arg_0.c.x, arg_0.c.x, 10580i, 2147483647i) | vec4<i32>(arg_0.c.x, global2.c.x, -32801i, 21499i)), vec4<i32>(abs(arg_0.c.x), _wgslsmith_div_i32(-2147483647i, arg_0.c.x), ~1i, 2147483647i))), Struct_1(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_sub_u32(~u_input.a ^ (52563u << (u_input.a % 32u)), u_input.a), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-537f, _wgslsmith_f_op_f32(-global0.x), 1387f))), -353f, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-782f * global2.a), _wgslsmith_div_f32(1101f, 1735f))), -1086f), _wgslsmith_dot_vec4_u32(~vec4<u32>(37316u, 0u, 1u, 4294967295u), reverseBits(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), vec2<bool>(true, arg_0.b), vec3<f32>(arg_0.a, 1829f, _wgslsmith_f_op_f32(select(352f, global2.a, global2.b)))));
    let var_1 = select(select(select(!(!vec4<bool>(global2.b, global1[_wgslsmith_index_u32(u_input.a, 21u)], var_0.e.c.x, global1[_wgslsmith_index_u32(4294967295u, 21u)])), select(!vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(var_0.e.b, 21u)]), vec4<bool>(false, true, true, arg_0.b), global2.b && global1[_wgslsmith_index_u32(var_0.e.b, 21u)]), !any(vec3<bool>(true, false, var_0.e.c.x))), !(!vec4<bool>(arg_0.b, true, var_0.e.c.x, false)), true), !select(!select(vec4<bool>(false, true, true, arg_0.b), vec4<bool>(global1[_wgslsmith_index_u32(var_0.e.b, 21u)], false, global1[_wgslsmith_index_u32(1u, 21u)], global2.b), true), select(!vec4<bool>(global2.b, false, true, true), select(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 21u)], arg_0.b, global1[_wgslsmith_index_u32(u_input.a, 21u)]), vec4<bool>(false, false, global2.b, true), true), select(vec4<bool>(var_0.c.c.x, global1[_wgslsmith_index_u32(var_0.e.b, 21u)], false, false), vec4<bool>(true, var_0.c.c.x, true, global2.b), vec4<bool>(global1[_wgslsmith_index_u32(2440u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], false, global1[_wgslsmith_index_u32(1u, 21u)]))), true), any(select(vec4<bool>(all(var_0.e.c), global1[_wgslsmith_index_u32(1u, 21u)] & global2.b, true, true), vec4<bool>(var_0.e.c.x, true, false, any(vec4<bool>(false, false, false, var_0.e.c.x))), select(vec4<bool>(true, arg_0.b, global1[_wgslsmith_index_u32(4936u, 21u)], false), select(vec4<bool>(arg_0.b, false, true, global2.b), vec4<bool>(false, var_0.e.c.x, var_0.c.c.x, false), global1[_wgslsmith_index_u32(0u, 21u)]), !vec4<bool>(false, global2.b, false, true)))));
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(max(~(var_0.e.b << (var_0.c.b % 32u)), var_0.c.b), _wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0.c.b, 12789u, u_input.a, 1u) << (vec4<u32>(var_0.e.b, 1u, 4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(u_input.a, 1u, 4294967295u, 0u)), vec4<u32>(1u, 1u, u_input.a, 1u)), reverseBits(_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.e.b, var_0.e.b, 4294967295u, 53440u), vec4<u32>(20465u, var_0.c.b, var_0.c.b, u_input.a), true), ~vec4<u32>(3943u, var_0.c.b, var_0.c.b, u_input.a))), ~(~_wgslsmith_mult_u32(var_0.e.b, u_input.a))), firstTrailingBit(min(vec4<u32>(u_input.a, u_input.a, 45547u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.e.b, u_input.a, 4294967295u, var_0.c.b), vec4<u32>(65946u, var_0.e.b, u_input.a, 4294967295u))) << (min(vec4<u32>(u_input.a, 0u, 1u, 48646u) & vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_0.c.b, 79529u, 4294967295u), vec4<u32>(var_0.c.b, var_0.c.b, var_0.c.b, u_input.a))) % vec4<u32>(32u))));
    var var_3 = ~vec4<i32>(0i, arg_0.c.x, _wgslsmith_sub_i32(-13598i, min(~var_0.a.x, var_0.a.x)), ~countOneBits(~(-44998i)));
    global1 = array<bool, 21>();
    return var_1.x && var_0.e.c.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> vec2<bool> {
    return select(vec2<bool>(!(true & global1[_wgslsmith_index_u32(3195u ^ arg_1, 21u)]), func_3(func_2())), vec2<bool>(false, any(vec2<bool>(func_2().b, true))), vec2<bool>(global2.b, !func_3(func_2())));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -999f, -2026f, global2.a) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, global2.a, 884f, 640f)))), 57925u));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(floor(1086f));
    var var_3 = firstLeadingBit(vec4<u32>(29852u, abs(1u), 1u, 8095u));
    global1 = array<bool, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.a - -1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(global2.a - global0.x))))), _wgslsmith_add_vec4_u32(vec4<u32>(~(var_3.x << (24180u % 32u)), 4294967295u, _wgslsmith_add_u32(firstTrailingBit(u_input.a), ~var_3.x), abs(u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_3.x, 54092u, u_input.a, 32296u) | vec4<u32>(10596u, var_3.x, u_input.a, var_3.x), min(vec4<u32>(1u, u_input.a, u_input.a, 35940u), vec4<u32>(u_input.a, var_3.x, var_3.x, u_input.a))) << (_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(148792u, 101265u, 1u, 14502u)), vec4<u32>(var_3.x, 4294967295u, 0u, var_3.x)) % vec4<u32>(32u))), 24933u | _wgslsmith_sub_u32(max(0u, u_input.a << (1u % 32u)), abs(u_input.a) << (var_3.x % 32u)), u_input.a);
}

