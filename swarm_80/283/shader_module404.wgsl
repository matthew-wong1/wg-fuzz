struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 31>;

var<private> global2: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32) -> vec3<i32> {
    var var_0 = any(vec2<bool>(any(vec2<bool>(true, 2147f >= global2.c.a.x)), (_wgslsmith_f_op_f32(f32(-1f) * -200f) <= global2.c.a.x) & (any(vec2<bool>(true, true)) & true)));
    let var_1 = any(!(!vec3<bool>(true, false, all(vec3<bool>(true, false, false)))));
    global2 = Struct_2(Struct_1(global2.a.a, u_input.a.yyz, global2.c.c), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(2179f)))), global2.a);
    var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~(vec4<u32>(15057u, 4294967295u, 1u, 1u) << (vec4<u32>(114775u, global1[_wgslsmith_index_u32(global2.a.b.x, 31u)], 1u, 4294967295u) % vec4<u32>(32u))), vec4<u32>(27267u >> (1u % 32u), _wgslsmith_mult_u32(0u, global1[_wgslsmith_index_u32(32678u, 31u)]), global1[_wgslsmith_index_u32(u_input.a.x, 31u)] & 4294967295u, u_input.b)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(u_input.b, 31u)], 49546u, u_input.c)), _wgslsmith_add_vec4_u32(u_input.a, u_input.a), vec4<u32>(4294967295u, 1018u, u_input.c, 45102u)) & u_input.a) >= 1u;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1723f, global2.c.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1047f, global2.a.a.x)))))));
    return -vec3<i32>(global2.a.c.x, countOneBits(countOneBits(~39398i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global2.c.c.x, u_input.d, global2.a.c.x), vec4<i32>(arg_0, 33928i, 2147483647i, 1i) ^ vec4<i32>(u_input.d, arg_0, global2.c.c.x, 2147483647i)));
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> vec2<i32> {
    global1 = array<u32, 31>();
    var var_0 = global2.c.a.x;
    var var_1 = firstTrailingBit(_wgslsmith_sub_u32(~0u << (u_input.a.x % 32u), 14420u));
    var var_2 = reverseBits(-2147483647i);
    let var_3 = vec4<u32>(global2.c.b.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.a, abs(~vec4<u32>(global1[_wgslsmith_index_u32(88198u, 31u)], u_input.a.x, global2.c.b.x, u_input.e))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~u_input.a.xx, ~vec2<u32>(global2.c.b.x, u_input.e)), 1u)), u_input.c, reverseBits(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(34823u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 31u)], 31u)] & 5597u), 31u)], abs(global1[_wgslsmith_index_u32(79661u, 31u)] & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(92200u, 31u)], 31u)]), ~u_input.c)));
    return global2.c.c;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(max(_wgslsmith_dot_vec3_i32(func_2(_wgslsmith_mod_i32(1326i, -1i)), (vec3<i32>(u_input.d, -2147483647i, 0i) & vec3<i32>(-39967i, global2.c.c.x, global2.c.c.x)) & reverseBits(vec3<i32>(0i, 8353i, u_input.d))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(select(vec2<i32>(-39396i, -64289i), global2.c.c, vec2<bool>(false, true)), func_3(false, Struct_4(true))), global2.c.c)), 20627i);
    var_0 = global2.c.c.x;
    return global2.c;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> StorageBuffer {
    global1 = array<u32, 31>();
    var var_0 = Struct_1(global2.a.a, ~func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, global2.b) + vec2<f32>(global2.c.a.x, global2.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1200f, arg_1.c.a.x))), ~(vec2<u32>(69824u, 0u) & global2.a.b.zx)).b, global2.a.c);
    return StorageBuffer(~(~func_1(_wgslsmith_f_op_vec2_f32(-arg_1.c.a.xx), u_input.a.yz << (var_0.b.yx % vec2<u32>(32u))).b.yz));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-(global2.c.c.x & u_input.d), global2.c.c.x), select(global2.a.c, vec2<i32>(-u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.c.x, u_input.d, u_input.d), vec3<i32>(global2.a.c.x, global2.c.c.x, global2.a.c.x))), select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.d > u_input.d))) <= 12776i;
    let x = u_input.a;
    s_output = func_4(true, Struct_2(global2.c, -1144f, func_1(_wgslsmith_f_op_vec2_f32(global2.c.a.xy - vec2<f32>(1215f, global2.a.a.x)), vec2<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global2.c.b.x, 31u)], u_input.e), 10081u))), ~global2.c.b.x > ~_wgslsmith_mod_u32(global2.c.b.x << (global1[_wgslsmith_index_u32(4294967295u, 31u)] % 32u), 22872u));
}

