struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<i32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 0i);

var<private> global1: array<u32, 5> = array<u32, 5>(4294967295u, 0u, 21722u, 0u, 1u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<i32> {
    global1 = array<u32, 5>();
    let var_0 = max(_wgslsmith_mult_i32(countOneBits(firstLeadingBit(global0.x)), abs(2147483647i)), 1i);
    var var_1 = Struct_2(Struct_1(abs(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(59486u, u_input.a, 21835u), vec3<u32>(33318u, 0u, 1u)), firstLeadingBit(1u), 1u))));
    var_1 = Struct_2(var_1.a);
    var var_2 = Struct_1(var_1.a.a);
    return vec2<i32>(-abs(-global0.x) & 2147483647i, global0.x);
}

fn func_2() -> vec4<i32> {
    global0 = ~max(_wgslsmith_mult_vec2_i32(-vec2<i32>(global0.x, global0.x), func_3()), -_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(global0.x, -42617i))) >> (vec2<u32>(_wgslsmith_sub_u32(47601u, ~(~u_input.a)), 1u) % vec2<u32>(32u));
    var var_0 = ~vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 5u)]), ~global1[_wgslsmith_index_u32(8061u, 5u)]), ~(~1u), ~u_input.a, ~1u) << (countOneBits(~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a) << (_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 86966u, u_input.a, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(15977u, 5u)], 84972u, 4294967295u, u_input.a)), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], 1u, 4294967295u, 1u) | vec4<u32>(691u, 64781u, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36667u, 5u)], 5u)])) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_1 = select(vec4<i32>(15034i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, global0.x, 39705i), vec3<i32>(global0.x, 1i, 11891i)), ~vec3<i32>(32758i, global0.x, global0.x)), global0.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(-39914i, 0i))) & ~vec4<i32>(global0.x, _wgslsmith_div_i32(-63412i, -12372i), min(-2147483647i, 2147483647i), 1i), ~vec4<i32>(~global0.x, 0i, global0.x, 45064i), vec4<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true)), any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, false), true)), true, true));
    let var_2 = Struct_4(Struct_1((max(vec3<u32>(global1[_wgslsmith_index_u32(86903u, 5u)], global1[_wgslsmith_index_u32(u_input.a, 5u)], 1u), var_0.xwy) << (var_0.zzy % vec3<u32>(32u))) | (var_0.wyz & var_0.ywz)), Struct_3(_wgslsmith_dot_vec4_i32(min(firstTrailingBit(vec4<i32>(0i, global0.x, global0.x, -14063i)), max(vec4<i32>(var_1.x, -20705i, var_1.x, var_1.x), vec4<i32>(var_1.x, var_1.x, -17154i, -65579i))), vec4<i32>(global0.x, 1i, firstTrailingBit(var_1.x), var_1.x >> (126931u % 32u))), ~_wgslsmith_sub_vec2_i32(max(var_1.yz, var_1.yy), var_1.wz), vec3<i32>(-select(global0.x, global0.x, false), -1i ^ _wgslsmith_sub_i32(global0.x, global0.x), 16233i)), -var_1.yzx, ~_wgslsmith_mod_u32(~(global1[_wgslsmith_index_u32(var_0.x, 5u)] ^ global1[_wgslsmith_index_u32(0u, 5u)]), ~u_input.a), Struct_2(Struct_1(var_0.xzy)));
    let var_3 = vec3<bool>(true, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(true, false, false))) & true, false);
    return select(vec4<i32>(var_1.x, 2147483647i, -2147483647i ^ max(-var_1.x, 2147483647i << (var_0.x % 32u)), var_1.x >> (global1[_wgslsmith_index_u32(27332u, 5u)] % 32u)), reverseBits(vec4<i32>(0i, var_1.x, _wgslsmith_div_i32(-2147483647i, -39244i) | min(var_1.x, var_1.x), select(1i, -var_2.b.c.x, var_3.x))), !vec4<bool>(true, var_3.x, var_3.x, var_3.x && (false & var_3.x)));
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_1(~vec3<u32>(1u, 0u, select(global1[_wgslsmith_index_u32(u_input.a, 5u)], 50609u, false)) ^ ~select(~vec3<u32>(21686u, 33423u, 0u), ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 5u)], 5u)], 5u)], u_input.a, 0u), true));
    let var_1 = ~4294967295u;
    var var_2 = vec4<i32>(abs(_wgslsmith_mod_i32(global0.x, global0.x)), -10302i, global0.x, _wgslsmith_mult_i32(global0.x, _wgslsmith_add_i32(global0.x, -34852i)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(3145f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1334f, 2290f) - _wgslsmith_div_f32(1252f, 924f))))));
    var_2 = func_2();
    return Struct_4(var_0, Struct_3(-1i, func_2().xw, -firstLeadingBit(_wgslsmith_div_vec3_i32(var_2.wyx, var_2.wzw))), ~var_2.yxx, 0u << (var_1 % 32u), Struct_2(Struct_1(var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_i32(~(~abs(vec4<i32>(global0.x, 0i, global0.x, -69582i))), vec4<i32>(-(global0.x ^ global0.x), global0.x, i32(-1i) * -global0.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(6392i, global0.x, global0.x, global0.x), vec4<i32>(_wgslsmith_div_i32(0i, -37136i), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(19629i, -39709i), vec2<i32>(global0.x, 8699i)), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(global0.x, global0.x))))));
    var var_1 = abs(~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)], u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7719u, 5u)], 5u)], 63641u), vec3<u32>(1u, 4294967295u, 1u))) >> (vec3<u32>(abs(global1[_wgslsmith_index_u32(15214u, 5u)] << (u_input.a % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(12539u, 50388u, 4294967295u, 55979u) ^ vec4<u32>(4348u, u_input.a, global1[_wgslsmith_index_u32(37902u, 5u)], 4294967295u), ~vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 5u)], 5u)], 5u)], u_input.a, 4294967295u)), global1[_wgslsmith_index_u32(4294967295u, 5u)]) % vec3<u32>(32u)));
    global0 = var_0.xy;
    let var_2 = func_1();
    global1 = array<u32, 5>();
    let var_3 = Struct_3(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.b.b.x, countOneBits(var_0.x)), (vec2<i32>(var_0.x, global0.x) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))) ^ vec2<i32>(global0.x, var_2.b.b.x)), firstLeadingBit(var_0.xw)), func_1().c.zx, vec3<i32>(_wgslsmith_div_i32(max(firstTrailingBit(var_0.x), 0i), -_wgslsmith_sub_i32(-2147483647i, -2147483647i)), 1i, ~global0.x));
    global1 = array<u32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c, vec4<i32>(57674i, _wgslsmith_div_i32(var_0.x, -1i), var_3.c.x, 15972i), var_3.c, _wgslsmith_f_op_f32(f32(-1f) * -376f));
}

