struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31>;

var<private> global1: u32;

var<private> global2: f32 = 1307f;

var<private> global3: Struct_1 = Struct_1(19033u, vec4<i32>(-50896i, 7020i, 1i, -17139i), 1u);

var<private> global4: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32) -> u32 {
    global2 = -1184f;
    return 16490u;
}

fn func_3() -> u32 {
    global1 = global3.c;
    global0 = array<vec3<i32>, 31>();
    global3 = Struct_1(486u, vec4<i32>(~(-2147483647i), 59389i, _wgslsmith_mod_i32(global3.b.x, 25636i), -1i), reverseBits(97828u));
    var var_0 = abs(-global3.b.x);
    global4 = !vec3<bool>(global4.x, any(vec4<bool>(global4.x, true, global4.x, false)), 0i >= _wgslsmith_sub_i32(211i, _wgslsmith_add_i32(global3.b.x, -19615i)));
    return firstTrailingBit(global3.a);
}

fn func_2() -> i32 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-937f - 1666f) - 1231f);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(253f * -648f))))));
    var var_1 = select(vec2<bool>((func_3() >= abs(0u)) == (-70312i != ~global3.b.x), true), vec2<bool>(false, true), (global3.b.x ^ global3.b.x) > -global3.b.x);
    var var_2 = true;
    var var_3 = u_input.b;
    return select(~(-2147483647i), global3.b.x, _wgslsmith_clamp_u32(global3.c, 0u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(12139u, var_3.x), ~4294967295u)) > var_3.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: bool, arg_3: vec2<i32>) -> StorageBuffer {
    var var_0 = func_3();
    let var_1 = Struct_1(global3.a, ~((~vec4<i32>(0i, global3.b.x, 97396i, arg_3.x) | ~vec4<i32>(2147483647i, arg_1.x, global3.b.x, 25542i)) << (~(~vec4<u32>(global3.a, arg_0.x, 5876u, arg_0.x)) % vec4<u32>(32u))), 28161u);
    let var_2 = global0[_wgslsmith_index_u32(0u ^ countOneBits(u_input.b.x ^ u_input.a), 31u)];
    return StorageBuffer(_wgslsmith_f_op_f32(floor(-593f)), 1f, ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global4.x;
    var var_1 = select(global4.yz, global4.zz, global4.x);
    let var_2 = 1412f;
    var var_3 = vec4<u32>(0u, ~(global3.c >> (func_1(1000f) % 32u)), global3.a, _wgslsmith_dot_vec2_u32(select(u_input.b.xy & u_input.b.xx, ~u_input.b.zx, vec2<bool>(global4.x, global4.x)), abs(_wgslsmith_mult_vec2_u32(u_input.b.xz, vec2<u32>(0u, 50093u))))) | vec4<u32>(~1u, 1u, global3.c, ~global3.c);
    let var_4 = var_3.xww;
    let var_5 = u_input.a;
    let x = u_input.a;
    s_output = func_4(~vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, vec4<u32>(u_input.b.x, var_5, 4294967295u, 4294967295u)), reverseBits(vec4<u32>(1351u, var_3.x, 0u, var_5))), ~(var_5 << (64227u % 32u)), var_3.x, var_4.x), vec2<i32>(-6650i & -global3.b.x, ~func_2()) & -global3.b.zx, false, _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(2147483647i, -2561i), ~vec2<i32>(global3.b.x, global3.b.x) ^ -vec2<i32>(55101i, global3.b.x)), global3.b.wx));
}

