struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-1094f, -1174f, 1526f), vec3<f32>(-136f, -435f, -160f), vec3<f32>(-1613f, 943f, -1000f), vec3<f32>(1333f, -1141f, 768f), vec3<f32>(-377f, 201f, -260f), vec3<f32>(-236f, -1220f, -1000f), vec3<f32>(1203f, -1248f, -1463f));

var<private> global1: array<i32, 30>;

var<private> global2: array<vec3<i32>, 23>;

var<private> global3: i32;

var<private> global4: Struct_1 = Struct_1(-500f, 84205u, 45942u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = true;
    var var_1 = vec2<u32>(reverseBits(~(global4.b << (8636u % 32u))), global4.b) | abs(u_input.a);
    var var_2 = _wgslsmith_add_u32(countOneBits(u_input.a.x), u_input.a.x);
    let var_3 = Struct_1(1449f, _wgslsmith_sub_u32(global4.b, _wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u | global4.b, 4294967295u), abs(global4.c & u_input.a.x))), 4294967295u);
    global2 = array<vec3<i32>, 23>();
    return global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~_wgslsmith_mod_u32(u_input.a.x, global4.b)), var_3.c, var_1.x), 30u)] >> (4294967295u % 32u);
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-513f, -1147f)) * -152f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(360f, -1685f)), 1057f)))), any(vec3<bool>(true, any(vec3<bool>(false, false, false)), select(false, true, false))))), 95928u, 53194u);
    var var_1 = u_input.a;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a ^ u_input.a, countOneBits(vec2<u32>(0u, u_input.a.x))), u_input.a) >> (global4.c % 32u)), 30u)];
    let var_3 = max(abs(~vec4<u32>(u_input.a.x, 51517u, u_input.a.x, 31622u) & (~vec4<u32>(46694u, 12019u, u_input.a.x, 12220u) ^ (vec4<u32>(88384u, 4294967295u, 1u, var_0.c) ^ vec4<u32>(4294967295u, 1u, global4.b, u_input.a.x)))), vec4<u32>(var_1.x, 1u, select(1u, ~abs(87334u), any(vec3<bool>(false, false, true))), 39154u));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(995f * 1493f))) - var_0.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a))), var_0.a, var_0.a);
    return var_1.x;
}

fn func_2(arg_0: u32, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.a, global4.a));
    var var_1 = vec3<i32>(0i, ~(~(-arg_1)), -2147483647i << (~(_wgslsmith_div_u32(0u, 4294967295u) ^ func_3(-1i)) % 32u));
    let var_2 = select(vec2<bool>(false, all(vec4<bool>(false, false, true, false)) | true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, true), select(true, true, false)), vec2<bool>(true, true), vec2<bool>(true, arg_1 <= arg_1)), true), any(vec3<bool>(true, global4.a <= global4.a, 41478i <= global1[_wgslsmith_index_u32(arg_0, 30u)])) | any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), true))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.a), -231f);
    let var_3 = select(vec4<bool>(!any(!var_2), (false && all(vec4<bool>(true, var_2.x, false, var_2.x))) && false, all(vec3<bool>(true, true, true)), -6248i >= _wgslsmith_mod_i32(~arg_1, reverseBits(2147483647i))), vec4<bool>(var_2.x, true, any(select(vec3<bool>(var_2.x, true, var_2.x), select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(false, var_2.x, var_2.x)), var_2.x)), any(!vec3<bool>(var_2.x, false, var_2.x))), var_2.x);
    return max(firstLeadingBit(14449i), 36670i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global1[_wgslsmith_index_u32(firstTrailingBit(global4.b), 30u)];
    var var_0 = -vec4<i32>(-16414i, -_wgslsmith_sub_i32(~global1[_wgslsmith_index_u32(u_input.a.x, 30u)], global1[_wgslsmith_index_u32(global4.b, 30u)] << (1u % 32u)), func_2(42365u, func_1(global4.a)), _wgslsmith_mod_i32(-1i, 1i));
    let var_1 = ~_wgslsmith_add_vec2_u32(~(~vec2<u32>(global4.c, 10540u) << (vec2<u32>(1u, global4.c) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(~(u_input.a | vec2<u32>(1u, u_input.a.x)), vec2<u32>(4294967295u, u_input.a.x ^ 26624u)));
    let var_2 = _wgslsmith_add_i32((i32(-1i) * -min(var_0.x, 3590i)) << (18834u % 32u), global1[_wgslsmith_index_u32(var_1.x, 30u)] >> (137082u % 32u));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global1[_wgslsmith_index_u32(~(1u & var_1.x), 30u)], -1i, 0i, ~(0i << (var_1.x % 32u))), ~(var_1.x | 17914u));
}

