struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

var<private> global1: array<bool, 3> = array<bool, 3>(true, true, false);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_5 {
    global0 = array<vec3<bool>, 5>();
    global0 = array<vec3<bool>, 5>();
    var var_0 = Struct_5(firstLeadingBit(2147483647i), (vec2<i32>(abs(6523i), -30872i) | firstLeadingBit(vec2<i32>(-2147483647i, -2147483647i) << (u_input.b.zz % vec2<u32>(32u)))) ^ (~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d.x, -1i), vec2<i32>(-2147483647i, -51543i)) >> (u_input.b.wz % vec2<u32>(32u))), vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b.x, 3u)], any(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(97882u, 0u)), 5u)])), Struct_1(76630u));
    global1 = array<bool, 3>();
    global0 = array<vec3<bool>, 5>();
    return Struct_5(-_wgslsmith_sub_i32(i32(-1i) * -u_input.d.x, _wgslsmith_sub_i32(-1i ^ var_0.b.x, -1i)), vec2<i32>(69480i, (var_0.b.x << (var_0.d.a % 32u)) & (1i ^ abs(var_0.a))), !var_0.c, var_0.d);
}

fn func_3() -> bool {
    let var_0 = u_input.b.zx;
    var var_1 = Struct_2(4294967295u);
    var var_2 = Struct_2(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~1u, ~select(0u, 4294967295u, global1[_wgslsmith_index_u32(u_input.a, 3u)])), max(63806u, var_1.a)));
    var_2 = Struct_2(24800u);
    global0 = array<vec3<bool>, 5>();
    return select(global1[_wgslsmith_index_u32(min(4294967295u, var_1.a), 3u)], global1[_wgslsmith_index_u32(~(0u << (_wgslsmith_mod_u32(46494u, _wgslsmith_div_u32(25571u, var_2.a)) % 32u)), 3u)], false);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: bool, arg_3: vec3<f32>) -> i32 {
    let var_0 = Struct_2(15365u);
    let var_1 = select(u_input.d, -vec4<i32>(-u_input.d.x, ~min(37061i, u_input.d.x), ~(arg_0.b.x ^ 2147483647i), -_wgslsmith_sub_i32(arg_0.b.x, u_input.d.x)), select(arg_0.c, !arg_0.c, !any(!vec2<bool>(arg_2, true))));
    global0 = array<vec3<bool>, 5>();
    global0 = array<vec3<bool>, 5>();
    let var_2 = u_input.b;
    return -u_input.d.x;
}

fn func_1() -> StorageBuffer {
    var var_0 = 253f;
    var var_1 = -abs(~(countOneBits(u_input.d.xxz) | ~vec3<i32>(u_input.d.x, 2147483647i, -5525i)));
    var_1 = select(firstLeadingBit(vec3<i32>(0i, _wgslsmith_div_i32(~var_1.x, 0i), countOneBits(var_1.x))), vec3<i32>(func_4(func_2(), Struct_4(Struct_1(u_input.b.x), global0[_wgslsmith_index_u32(4294967295u, 5u)]), func_3(), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(220f, -122f, 1740f), vec3<f32>(787f, 630f, -1349f)))), _wgslsmith_dot_vec4_i32(u_input.d, _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, -2147483647i, u_input.d.x, var_1.x), vec4<i32>(-43432i, 60659i, 2358i, u_input.d.x))), abs(-49584i)) & _wgslsmith_mod_vec3_i32(vec3<i32>(abs(-42994i), u_input.d.x, u_input.d.x >> (9075u % 32u)), -u_input.d.www), global0[_wgslsmith_index_u32(select(0u, _wgslsmith_div_u32(4294967295u, reverseBits(~45615u)), true), 5u)]);
    global1 = array<bool, 3>();
    var_0 = -271f;
    return StorageBuffer(u_input.d, ~(~u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 5>();
    let x = u_input.a;
    s_output = func_1();
}

