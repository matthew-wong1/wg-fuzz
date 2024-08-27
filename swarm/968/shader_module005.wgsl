struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: i32, arg_1: bool) -> u32 {
    return ~(~global0.a);
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: i32) -> vec2<i32> {
    let var_0 = abs(_wgslsmith_mod_vec3_u32(vec3<u32>(~global0.a, global0.a, 13847u), _wgslsmith_add_vec3_u32(select(vec3<u32>(52143u, global0.a, global0.a), vec3<u32>(global0.a, 1u, global0.a), vec3<bool>(false, true, false)), ~vec3<u32>(global0.a, global0.a, global0.a))) & vec3<u32>(69923u, 1u, func_1(arg_2, any(vec3<bool>(false, true, true)))));
    let var_1 = false;
    global0 = Struct_2(91953u, vec2<i32>(_wgslsmith_dot_vec4_i32(~(vec4<i32>(23953i, 2147483647i, 1i, 0i) ^ vec4<i32>(arg_2, u_input.a, arg_1, arg_2)), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(global0.b.x, u_input.a, u_input.a, -802i)), max(vec4<i32>(20090i, u_input.a, arg_1, 7586i), vec4<i32>(-1i, global0.b.x, 1i, -18536i)))), global0.b.x));
    global0 = Struct_2(49824u, countOneBits(-vec2<i32>(firstTrailingBit(arg_1), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 16536i, -2147483647i, u_input.a), vec4<i32>(19641i, -1081i, u_input.a, arg_2)))));
    global0 = Struct_2(firstTrailingBit(reverseBits(var_0.x)), global0.b);
    return firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(23645i, select(arg_2, 36615i, var_1)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1829f - arg_0.x))));
    let var_1 = Struct_5(~(~(~vec4<i32>(arg_1.x, 64013i, 2147483647i, global0.b.x))), vec2<i32>(1i, -1i) | func_3(arg_0.ywz, -2147483647i, firstLeadingBit(global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(563f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, -2061f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + var_1.c)))));
    let var_3 = select(!vec3<bool>(any(vec2<bool>(true, true)), true, all(vec3<bool>(true, true, true))), !vec3<bool>(all(vec3<bool>(true, false, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, global0.a, 1u, 0u), vec4<u32>(4294967295u, 41498u, 68356u, global0.a)) < global0.a, any(vec4<bool>(false, false, false, false))), vec3<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), true));
    var var_4 = vec4<bool>(true, var_3.x == !select(-37783i < u_input.a, var_3.x, all(var_3)), true, any(vec4<bool>(!any(var_3.zx), -533f <= _wgslsmith_f_op_f32(-462f - var_0), !var_3.x || var_3.x, true && (var_3.x == true))));
    return _wgslsmith_mult_i32(-firstLeadingBit((-2147483647i << (global0.a % 32u)) >> ((0u | global0.a) % 32u)), var_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -24469i;
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(0i, 1i, u_input.a, u_input.a)), ~vec4<i32>(global0.b.x, global0.b.x, -49592i, u_input.a) | vec4<i32>(0i, 16363i, -1i, 1i)), ~(-vec4<i32>(-22689i, global0.b.x, -1i, global0.b.x))), vec3<u32>(global0.a, 4294967295u, _wgslsmith_sub_u32(global0.a, 9679u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-839f + -451f), _wgslsmith_f_op_f32(f32(-1f) * -330f), _wgslsmith_f_op_f32(ceil(-2404f)), -1177f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-259f, 1214f, 1381f, -766f))), vec4<bool>(true, true, true, true)))));
    var_1 = Struct_1(u_input.a, vec3<u32>(firstTrailingBit(0u), ~59596u, max(var_1.b.x, ~func_1(u_input.a, false))), var_1.c);
    let var_2 = -global0.b.x;
    let var_3 = Struct_5(vec4<i32>(global0.b.x, func_2(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), -193f, var_1.c.x, _wgslsmith_f_op_f32(max(var_1.c.x, var_1.c.x))), ~(-vec2<i32>(u_input.a, var_1.a))), _wgslsmith_sub_i32(-var_2, global0.b.x ^ -41510i) << (min(global0.a, global0.a) % 32u), 21252i), global0.b, var_1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x);
}

