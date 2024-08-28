struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22>;

var<private> global1: i32 = -63885i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_1 {
    global1 = -1i;
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1230f - -721f)), _wgslsmith_div_f32(389f, -543f)));
    let var_1 = Struct_1(countOneBits(vec4<u32>(~(~4294967295u), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)]) >> (select(u_input.b.x, u_input.b.x, true) % 32u), global0[_wgslsmith_index_u32(1u << (firstLeadingBit(global0[_wgslsmith_index_u32(38204u, 22u)]) % 32u), 22u)], u_input.a.x | 0u)));
    global0 = array<u32, 22>();
    global1 = u_input.c.x;
    return var_1;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = i32(-1i) * -max(_wgslsmith_dot_vec4_i32(u_input.c, max(vec4<i32>(arg_0, 45963i, arg_0, 1i), u_input.c)), _wgslsmith_dot_vec3_i32(-vec3<i32>(2792i, arg_0, 7987i), vec3<i32>(-13728i, -33550i, arg_0)));
    var var_1 = ~_wgslsmith_sub_i32(arg_0, 2147483647i) <= ~1i;
    let var_2 = true & (~max(9497i << (arg_1.a.x % 32u), -1i) == _wgslsmith_sub_i32(arg_0 << (arg_1.a.x % 32u), -(~arg_0)));
    global0 = array<u32, 22>();
    var var_3 = vec4<u32>(arg_1.a.x, ~0u, func_2().a.x, ~global0[_wgslsmith_index_u32(1u, 22u)]);
    return func_2();
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> bool {
    var var_0 = reverseBits(35347u);
    var var_1 = vec2<f32>(287f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1431f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -705f), 1085f, arg_1 | false)))));
    let var_2 = func_3(u_input.c.x, func_2(), func_2());
    var_0 = u_input.b.x;
    var var_3 = arg_0;
    return arg_1 == false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(firstTrailingBit(85561u), 22u)], 57925u, 1u), u_input.b.x), ~(~u_input.b)));
    var var_1 = u_input.b;
    let var_2 = ~var_1.x;
    let var_3 = vec2<bool>(!(!func_1(Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(1u, 22u)], 1u, 18447u, 1u)), true)), !all(vec3<bool>(true, any(vec3<bool>(false, true, true)), any(vec2<bool>(false, true)))));
    let var_4 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), min(_wgslsmith_mod_i32(u_input.c.x >> (global0[_wgslsmith_index_u32(var_1.x, 22u)] % 32u), 1i), -firstTrailingBit(44984i))), u_input.c.ww);
    var var_5 = ~_wgslsmith_sub_u32(4294967295u, ~(~6344u << ((var_1.x >> (29274u % 32u)) % 32u)));
    let var_6 = -57431i;
    var_5 = ~_wgslsmith_add_u32(var_1.x, func_3(firstTrailingBit(i32(-1i) * -2147483647i), Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25143u, 22u)], 22u)], var_2, 1u, var_2)), Struct_1(~vec4<u32>(u_input.b.x, var_0.x, 53007u, u_input.b.x))).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstLeadingBit(reverseBits(u_input.c.wxy))));
}

