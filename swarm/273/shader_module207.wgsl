struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(true, true, false, true, true, true, false, true, false, true, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    var var_0 = u_input.c.x;
    let var_1 = arg_0.c;
    var_0 = ~(4294967295u >> (_wgslsmith_mult_u32(max(u_input.a, var_1.a.x), _wgslsmith_clamp_u32(18741u, abs(18918u), u_input.a)) % 32u));
    let var_2 = _wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -11734i, 1i), vec4<i32>(u_input.b.x, 4326i, u_input.b.x, 35598i))), u_input.b.x), vec3<i32>(-1i) * -vec3<i32>(abs(-8931i), firstTrailingBit(-1i), 0i));
    var_0 = 0u;
    return ~vec4<u32>(~_wgslsmith_clamp_u32(u_input.c.x, arg_0.c.a.x, 0u), ~var_1.a.x, ~arg_0.c.a.x, ~(~1u)) >> ((vec4<u32>(var_1.a.x, var_1.a.x, 4294967295u, 18371u) >> (var_1.a % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_2() -> Struct_4 {
    var var_0 = ~countOneBits(-_wgslsmith_mod_i32(max(u_input.b.x, 10459i), 47464i | u_input.b.x));
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    var var_1 = 0u;
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, u_input.a, 1u), _wgslsmith_div_vec4_u32(func_3(Struct_3(all(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 11u)])), -6677i < u_input.b.x, Struct_2(vec4<u32>(0u, 0u, 0u, u_input.a), global0[_wgslsmith_index_u32(u_input.c.x, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)], vec3<f32>(-900f, -2062f, -1547f)))), vec4<u32>(~u_input.c.x, u_input.a, _wgslsmith_add_u32(~u_input.c.x, ~u_input.c.x), 4294967295u)));
    return Struct_4(Struct_2(_wgslsmith_add_vec4_u32(var_2, var_2), all(vec2<bool>(false, any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], true)))), select(true, global0[_wgslsmith_index_u32(u_input.c.x, 11u)] & global0[_wgslsmith_index_u32(u_input.a, 11u)], true) || false, vec3<f32>(1f, 1f, 1f)));
}

fn func_4(arg_0: Struct_4) -> Struct_5 {
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    let var_0 = firstLeadingBit(~u_input.b);
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    return Struct_5(vec4<i32>(abs(1i), -(u_input.b.x & -var_0.x), u_input.b.x, var_0.x), abs(max(_wgslsmith_mult_vec2_u32(min(vec2<u32>(13235u, arg_0.a.a.x), u_input.c), ~arg_0.a.a.zy), min(vec2<u32>(13586u, 16526u), u_input.c) ^ ~vec2<u32>(arg_0.a.a.x, arg_0.a.a.x))), var_0.x, firstLeadingBit(abs(arg_0.a.a.x)) | firstTrailingBit(~func_3(Struct_3(arg_0.a.b, true, arg_0.a)).x));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: Struct_5, arg_3: i32) -> vec3<f32> {
    var var_0 = Struct_4(Struct_2(reverseBits(arg_1.c.a) >> (vec4<u32>(arg_2.d, abs(arg_1.c.a.x), arg_1.c.a.x >> (u_input.a % 32u), 0u) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(arg_1.c.a.x, 11u)], !arg_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-789f, arg_1.c.d.x, arg_1.c.d.x)) * vec3<f32>(217f, 287f, arg_1.c.d.x)))));
    let var_1 = func_4(func_2());
    var var_2 = arg_1;
    var_2 = Struct_3(var_0.a.b & false, select(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(839f)) + _wgslsmith_f_op_f32(var_0.a.d.x - var_2.c.d.x)) < 742f, select(true, arg_1.a, true)), func_2().a);
    let var_3 = select(abs(vec3<u32>(4294967295u, u_input.c.x, func_2().a.a.x)), func_2().a.a.zzw & _wgslsmith_mult_vec3_u32(vec3<u32>(1u, ~26389u, _wgslsmith_dot_vec3_u32(var_2.c.a.xxw, vec3<u32>(var_2.c.a.x, 4888u, var_1.b.x))), vec3<u32>(var_1.d, var_1.d, _wgslsmith_mult_u32(47833u, var_0.a.a.x))), !(!vec3<bool>(true, all(vec4<bool>(arg_1.a, true, true, var_2.a)), all(vec4<bool>(var_0.a.b, true, arg_1.b, true)))));
    return _wgslsmith_f_op_vec3_f32(round(arg_1.c.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    let var_0 = Struct_3(all(vec3<bool>(!any(vec2<bool>(true, true)), !(true || global0[_wgslsmith_index_u32(u_input.a, 11u)]), global0[_wgslsmith_index_u32(1u, 11u)])), !(!all(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 11u)], true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 11u)])))), Struct_2(_wgslsmith_sub_vec4_u32(~reverseBits(vec4<u32>(0u, 38927u, 747u, u_input.a)), vec4<u32>(1u, u_input.c.x, 90063u, 0u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(0u, 29498u, 11501u, 1u), vec4<u32>(0u, u_input.a, 1u, 1u)) % vec4<u32>(32u))), !(global0[_wgslsmith_index_u32(~u_input.a, 11u)] && all(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(1u, 11u)]))), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(u_input.b.x, Struct_3(global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], Struct_2(vec4<u32>(4294967295u, 30878u, 4294967295u, 0u), global0[_wgslsmith_index_u32(u_input.c.x, 11u)], global0[_wgslsmith_index_u32(3237u, 11u)], vec3<f32>(-317f, 407f, -1627f))), Struct_5(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x), u_input.c, 17771i, 32969u), u_input.b.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-429f, -2068f, 1000f))))));
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    let var_1 = abs(_wgslsmith_add_vec3_u32(select(countOneBits(var_0.c.a.yzw), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.a, u_input.c.x), vec3<u32>(var_0.c.a.x, u_input.a, u_input.a)), any(vec2<bool>(global0[_wgslsmith_index_u32(1u, 11u)], true))), vec3<u32>(24760u, ~1u, _wgslsmith_dot_vec4_u32(var_0.c.a, var_0.c.a)))) | vec3<u32>(_wgslsmith_mod_u32(~1u, ~25496u), ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a, var_0.c.a.x), var_0.c.a.x | 0u, ~var_0.c.a.x), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(~2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2351f)), vec4<i32>(u_input.b.x, -48145i, abs(u_input.b.x) ^ select(1i, _wgslsmith_clamp_i32(-20032i, 1i, 1i), -987f > var_0.c.d.x), max(-13200i, u_input.b.x >> (reverseBits(4294967295u) % 32u))), var_1.x, var_0.c.d.x);
}

