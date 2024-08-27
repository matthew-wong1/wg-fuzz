struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: Struct_3 = Struct_3(2147483647i, vec2<u32>(4294967295u, 0u));

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(true, 0i, vec2<bool>(false, false)), Struct_2(false, 1i, vec2<bool>(true, false)), Struct_2(true, -14127i, vec2<bool>(true, true)), Struct_2(true, 2147483647i, vec2<bool>(false, true)), Struct_2(true, -1i, vec2<bool>(true, false)), Struct_2(true, 0i, vec2<bool>(false, true)), Struct_2(false, 25615i, vec2<bool>(true, false)), Struct_2(true, 29596i, vec2<bool>(true, true)), Struct_2(true, -1i, vec2<bool>(true, false)), Struct_2(false, 1i, vec2<bool>(true, false)));

var<private> global3: array<i32, 32>;

var<private> global4: array<u32, 21> = array<u32, 21>(1u, 3526u, 32556u, 4294967295u, 25534u, 0u, 0u, 63391u, 4294967295u, 0u, 38161u, 0u, 1u, 63869u, 1u, 0u, 1u, 46113u, 83899u, 18121u, 0u);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<f32>) -> u32 {
    var var_0 = abs(reverseBits(global1.b));
    global4 = array<u32, 21>();
    var_0 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, var_0.x, var_0.x) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(33547u, 50043u, 1u), vec3<u32>(29491u, global1.b.x, var_0.x)), ~vec3<u32>(4294967295u, global4[_wgslsmith_index_u32(15538u, 21u)], var_0.x) & vec3<u32>(15667u, 0u, 4294967295u)), 26937u);
    var var_1 = Struct_3(14766i, _wgslsmith_div_vec2_u32(global1.b & global1.b, global1.b));
    global3 = array<i32, 32>();
    return _wgslsmith_div_u32(1u, global1.b.x);
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec4<i32> {
    var var_0 = select(vec2<bool>(false, true), !(!vec2<bool>(any(vec3<bool>(false, false, true)), true)), select(vec2<bool>(!all(vec4<bool>(true, true, false, false)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, false), false), vec2<bool>(true, any(vec3<bool>(true, true, false))), vec2<bool>(true, false)), vec2<bool>(true, ~arg_1.b.x >= countOneBits(7977u))));
    var var_1 = Struct_3(-1i, _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(select(arg_1.b, global1.b, vec2<bool>(var_0.x, false)), select(vec2<u32>(46015u, 1u), arg_1.b, vec2<bool>(var_0.x, false))), abs(vec2<u32>(global4[_wgslsmith_index_u32(0u, 21u)], 0u))) | (arg_1.b ^ ~(~vec2<u32>(arg_0, 4294967295u))));
    global4 = array<u32, 21>();
    global1 = Struct_3(var_1.a, ~min(var_1.b, ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 45864u), var_1.b)));
    var var_2 = !var_0.x;
    return abs(vec4<i32>(-1i, var_1.a, 10423i, ~(-abs(51758i))));
}

fn func_1() -> f32 {
    global4 = array<u32, 21>();
    let var_0 = global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u & firstTrailingBit(global1.b.x), 21u)], 14u)];
    global4 = array<u32, 21>();
    var var_1 = i32(-1i) * -(~_wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, -2147483647i), _wgslsmith_clamp_i32(-1i, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.b.x, 21u)], 32u)], -1i)));
    var var_2 = vec2<i32>(~(~_wgslsmith_sub_i32(global1.a, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 32u)])), -_wgslsmith_dot_vec4_i32(func_3(func_2(var_0.c.x, vec2<f32>(505f, -1333f), vec4<f32>(-650f, 411f, -1504f, 473f)), Struct_3(-2147483647i, vec2<u32>(global4[_wgslsmith_index_u32(global1.b.x, 21u)], 1u))), vec4<i32>(-1i) * -vec4<i32>(u_input.b, u_input.a, global3[_wgslsmith_index_u32(52690u, 32u)], global1.a)));
    return _wgslsmith_f_op_f32(f32(-1f) * -945f);
}

fn func_4(arg_0: f32) -> u32 {
    global2 = array<Struct_2, 10>();
    var var_0 = vec2<bool>(any(!vec4<bool>(u_input.b > -14975i, true, true, true)), 812f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0)))));
    global4 = array<u32, 21>();
    var var_1 = ~_wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(50194u, 4294967295u, global4[_wgslsmith_index_u32(1u, 21u)], 0u)) << (vec4<u32>(_wgslsmith_sub_u32(26705u, 0u), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.b.x << (global1.b.x % 32u), 21u)], 21u)], ~92351u, 0u >> (global4[_wgslsmith_index_u32(global1.b.x, 21u)] % 32u)) % vec4<u32>(32u)), countOneBits(~vec4<u32>(10479u, 0u, 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.b.x, 21u)], 21u)])), ~((vec4<u32>(1u, global1.b.x, 0u, 1u) | vec4<u32>(3707u, 43535u, global4[_wgslsmith_index_u32(4294967295u, 21u)], global1.b.x)) >> (~vec4<u32>(global1.b.x, global1.b.x, 4294967295u, global4[_wgslsmith_index_u32(68170u, 21u)]) % vec4<u32>(32u))));
    var var_2 = vec4<bool>(true, !var_0.x, false, select(((-1i << (global1.b.x % 32u)) != u_input.a) && var_0.x, select(select(false, var_0.x, any(vec3<bool>(var_0.x, true, var_0.x))), u_input.a < 0i, all(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, true), vec3<bool>(var_0.x, false, true)))), true));
    return global4[_wgslsmith_index_u32(global1.b.x, 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(global1.a, max(~_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.b.x, 24210u), countOneBits(vec2<u32>(global1.b.x, 22460u)), global1.b << (global1.b % vec2<u32>(32u))), ~firstLeadingBit(abs(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.b.x, 21u)], 21u)])))));
    let var_0 = Struct_3(global3[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_f32(func_1())), 32u)], vec2<u32>(countOneBits(_wgslsmith_clamp_u32(countOneBits(13462u), 37932u, ~57974u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~global4[_wgslsmith_index_u32(global1.b.x, 21u)], global1.b.x, countOneBits(global1.b.x)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(global1.b.x, global4[_wgslsmith_index_u32(0u, 21u)], global1.b.x)))));
    let var_1 = ~(-_wgslsmith_mult_i32(-var_0.a, u_input.b));
    global3 = array<i32, 32>();
    var var_2 = Struct_3(func_3(_wgslsmith_div_u32(1u, 205u >> (~var_0.b.x % 32u)), var_0).x, ~vec2<u32>(global4[_wgslsmith_index_u32(~0u, 21u)], _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, 1u, 4294967295u, 19275u), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4116u, 21u)], 21u)], var_0.b.x, global4[_wgslsmith_index_u32(1u, 21u)], global1.b.x)), abs(2706u))));
    global3 = array<i32, 32>();
    global3 = array<i32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, global4[_wgslsmith_index_u32(var_0.b.x, 21u)], 84586u, var_0.b.x) & vec4<u32>(global4[_wgslsmith_index_u32(5077u, 21u)], 23886u, 5549u, 4294967295u), ~vec4<u32>(55117u, 1u, var_0.b.x, global1.b.x)), abs(~vec4<u32>(1u, var_0.b.x, 1u, var_2.b.x))), abs(~vec4<u32>(var_2.b.x, global1.b.x, global4[_wgslsmith_index_u32(14295u, 21u)], var_2.b.x))), 21u)]);
}

