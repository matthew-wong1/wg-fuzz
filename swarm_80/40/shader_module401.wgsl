struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a.x & reverseBits(4294967295u), 23u)];
    var var_1 = vec3<bool>(var_0.a.x, false, arg_1.a.x);
    global0 = array<Struct_1, 23>();
    var var_2 = true;
    var var_3 = firstTrailingBit(select(3797u, _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.a.zx, vec2<u32>(4294967295u, u_input.a.x)), ~(~u_input.a.zz)), var_0.a.x));
    return all(vec4<bool>(true, var_1.x, var_0.a.x, false | select(true, arg_1.a.x, var_0.a.x))) & arg_1.a.x;
}

fn func_2() -> bool {
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    var var_0 = Struct_2(~vec3<i32>(1i, 1i, 1i), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 38065u), vec3<u32>(u_input.a.x, u_input.a.x, 12115u))), 0u), 23u)]);
    var var_1 = ~(11432u << (_wgslsmith_clamp_u32(~(~u_input.a.x), 4294967295u, u_input.a.x) % 32u));
    var var_2 = Struct_1(vec3<bool>(any(var_0.b.a.yz), any(var_0.b.a.yz), var_0.b.a.x), _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-72445i, var_0.a.x), var_0.a.xy), _wgslsmith_add_i32(var_0.a.x, var_0.b.b)) & _wgslsmith_add_i32(~var_0.a.x, var_0.b.b), 33778i, _wgslsmith_mult_i32(1i, -(i32(-1i) * -21826i))));
    return var_2.a.x;
}

fn func_3() -> i32 {
    let var_0 = Struct_1(vec3<bool>(all(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)), true, select(true, all(vec2<bool>(true, true)) & true, any(vec4<bool>(true, true, true, true)))), _wgslsmith_dot_vec3_i32(-(~firstTrailingBit(vec3<i32>(2147483647i, 2147483647i, -1i))), -vec3<i32>(1i, 1i, 1i)));
    let var_1 = Struct_1(select(!(!var_0.a), select(select(vec3<bool>(var_0.a.x, var_0.a.x, false), var_0.a, var_0.a.x), var_0.a, true), !vec3<bool>(true, any(vec4<bool>(var_0.a.x, false, false, var_0.a.x)), false)), var_0.b);
    let var_2 = ~firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(~var_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, 9788i, 0i), vec3<i32>(var_0.b, 0i, 1i)), 1i), -(vec3<i32>(var_0.b, var_0.b, -1i) | vec3<i32>(var_1.b, 1i, var_0.b))));
    var var_3 = u_input.a.x;
    let var_4 = Struct_1(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(790f, 130f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-941f - 2178f) + _wgslsmith_f_op_f32(step(-1545f, 238f))), !func_2(), true), _wgslsmith_sub_i32(-1i, var_0.b));
    return max(var_1.b, ~_wgslsmith_mult_i32(0i, var_1.b) | (i32(-1i) * -var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(select(vec3<bool>(false, true, func_1(-476f, global0[_wgslsmith_index_u32(25033u, 23u)], vec2<f32>(204f, -654f))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), vec3<bool>(_wgslsmith_f_op_f32(sign(719f)) > -354f, true, func_2()), vec3<bool>(true, true, true)));
    let var_1 = -1i | -func_3();
    var var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>((u_input.a.x ^ _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(44446u, u_input.a.x, 10808u, u_input.a.x))) & (~u_input.a.x ^ firstLeadingBit(1u)), abs(34855u)), ~countOneBits(min(~vec2<u32>(4294967295u, 47893u), abs(u_input.a.yx))));
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1249f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -720f)))))));
    var var_4 = u_input.a.xw;
    var var_5 = vec4<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, var_4.x, 80187u), vec4<u32>(var_4.x, var_4.x, 28316u, var_4.x))), ~select(1u, var_2.x, true), ~var_2.x, var_2.x) & vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(29897u, 4294967295u), firstLeadingBit(29258u)), ~31826u, var_2.x, ~(~u_input.a.x >> (1u % 32u)));
    var_5 = u_input.a;
    var_2 = ~u_input.a.zw;
    let var_6 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(53948u), ~(-reverseBits(vec4<i32>(var_1, 13811i, var_1, var_1)) & -vec4<i32>(-3794i, var_1, var_1, var_1)), _wgslsmith_f_op_f32(-var_3.x), abs(countOneBits(~(~vec3<u32>(var_6, var_5.x, 4294967295u)))), vec2<f32>(636f, 1185f));
}

