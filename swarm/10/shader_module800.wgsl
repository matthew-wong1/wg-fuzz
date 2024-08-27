struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(0i, 0i, i32(-2147483648), 14875i);

var<private> global1: array<f32, 13>;

var<private> global2: array<bool, 21>;

var<private> global3: vec3<i32>;

var<private> global4: Struct_1 = Struct_1(vec4<f32>(734f, -210f, -1468f, 762f), vec3<bool>(false, true, true), 447f, -1i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(global4.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -555f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.x, 1f, all(global4.b.xz))), _wgslsmith_f_op_f32(f32(-1f) * -801f)));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(~(arg_0.x ^ 4294967295u)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, 0u, u_input.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), arg_0))), u_input.a.yx);
    global2 = array<bool, 21>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global4.a + vec4<f32>(-1000f, _wgslsmith_f_op_f32(arg_1.x * 1009f), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(arg_0.x, 13u)])), _wgslsmith_f_op_f32(f32(-1f) * -1024f))) * vec4<f32>(_wgslsmith_f_op_f32(select(-277f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 13u)] - 2176f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-953f + 483f)), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4.a.x)) + _wgslsmith_f_op_f32(var_0.x * global4.c)))), global4.b, _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], 957f)), _wgslsmith_mod_i32((countOneBits(u_input.b) ^ 1i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 43537u, 59144u, 13358u), ~vec4<u32>(4294967295u, u_input.a.x, 21700u, u_input.a.x)) % 32u), global3.x));
    var_1 = _wgslsmith_div_u32(0u, 1u);
    return ~(~(i32(-1i) * -2147483647i));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> i32 {
    global4 = Struct_1(global4.a, !global4.b, global4.c, u_input.b);
    var var_0 = -46455i;
    global0 = array<i32, 4>();
    let var_1 = global4.b.yz;
    let var_2 = vec4<i32>(-2147483647i, max(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(arg_1.x, 4u)], -1i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.b, -2147483647i, 0i), vec4<i32>(global4.d, 2147483647i, u_input.b, -161i)), ~vec4<i32>(global0[_wgslsmith_index_u32(arg_1.x, 4u)], -7843i, 35826i, global0[_wgslsmith_index_u32(13257u, 4u)]))) << (reverseBits(_wgslsmith_dot_vec2_u32(~u_input.a.yy, firstTrailingBit(vec2<u32>(4294967295u, u_input.a.x)))) % 32u), func_3(~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(arg_1.xww, vec3<u32>(39429u, arg_1.x, arg_1.x)), ~vec3<u32>(arg_1.x, arg_1.x, 4294967295u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global4.a.zw, _wgslsmith_f_op_vec2_f32(global4.a.zx + global4.a.xw)) - global4.a.yx)), i32(-1i) * -func_3(firstTrailingBit(vec3<u32>(arg_1.x, arg_1.x, 4294967295u)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1370f, -859f)))));
    return -abs(u_input.b >> (~u_input.a.x % 32u));
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = arg_0;
    global0 = array<i32, 4>();
    var var_1 = vec3<i32>(-(global3.x >> (4294967295u % 32u)), _wgslsmith_dot_vec4_i32(-vec4<i32>(11134i, 26218i, global4.d, -1i), vec4<i32>(-1i, 16740i, 0i, global4.d) & vec4<i32>(-30433i, u_input.b, 30789i, 57797i)) & (i32(-1i) * -10057i), _wgslsmith_div_i32(_wgslsmith_sub_i32(var_0.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, var_0.d, -87421i), vec3<i32>(global0[_wgslsmith_index_u32(1u, 4u)], global4.d, -1i))), ~2147483647i)) ^ vec3<i32>(i32(-1i) * -2147483647i, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c)), countOneBits(abs(vec4<u32>(u_input.a.x, 1u, 50905u, u_input.a.x)))), var_0.d);
    var var_2 = func_2(_wgslsmith_f_op_f32(abs(-1425f)), vec4<u32>(_wgslsmith_mod_u32(~(~4294967295u), u_input.a.x), u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, ~32138u), ~4294967295u));
    var var_3 = arg_0;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(global4.a.x - 474f), _wgslsmith_div_f32(476f, global4.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c * 1000f)), var_3.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_1(global4.a, !vec3<bool>(true || global4.b.x, !global4.b.x, !global2[_wgslsmith_index_u32(0u, 21u)]), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.a.x, 13u)])), -global0[_wgslsmith_index_u32(4294967295u, 4u)]));
}

