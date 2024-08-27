struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_i32(~arg_1, -_wgslsmith_add_vec4_i32(arg_1, arg_1));
    var var_1 = ~_wgslsmith_dot_vec2_i32(arg_1.xw, -arg_1.wy ^ vec2<i32>(arg_1.x, -var_0));
    var var_2 = Struct_1(true || !(arg_3.b.x <= _wgslsmith_f_op_f32(ceil(943f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(457f, -332f, arg_0.b.x, -1000f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-539f, arg_0.b.x, arg_3.b.x, arg_3.b.x), arg_3.b)), !vec4<bool>(true, arg_3.a, arg_3.a, false))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(196f, 618f, 469f, 2212f)), arg_0.b, false))))), arg_3.c);
    let var_3 = global0[_wgslsmith_index_u32(~arg_0.c, 17u)];
    var var_4 = arg_1.ywz;
    return _wgslsmith_add_u32(~arg_0.c, arg_0.c);
}

fn func_2(arg_0: f32, arg_1: i32) -> vec3<bool> {
    let var_0 = Struct_1(any(vec2<bool>(true, false)) && true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-arg_0), 1027f)), func_3(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 17u)], _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-1i, 69563i, 38864i, 18300i), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(6626i, arg_1, 38604i, -1i), vec4<i32>(-2147483647i, u_input.a.x, u_input.d, 1i), vec4<i32>(0i, u_input.e, 1i, -2147483647i)))), firstLeadingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4205u, u_input.c, 1u), vec4<u32>(3637u, u_input.b, u_input.c, u_input.b))), global0[_wgslsmith_index_u32(u_input.c, 17u)]));
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-1i, i32(-1i) * -13358i), 1i, countOneBits(reverseBits(-u_input.e)), 2147483647i), vec4<i32>(reverseBits(_wgslsmith_mult_i32(~(-13917i), _wgslsmith_add_i32(arg_1, arg_1))), arg_1, -1i, 33306i), max(abs(select(vec4<i32>(30875i, u_input.d, arg_1, u_input.e), vec4<i32>(arg_1, arg_1, u_input.a.x, arg_1), var_0.a) ^ vec4<i32>(0i, u_input.a.x, u_input.e, u_input.a.x)), abs(vec4<i32>(9884i, u_input.d, arg_1, arg_1) >> ((vec4<u32>(u_input.c, 17745u, 31928u, 1u) | vec4<u32>(22157u, 68272u, var_0.c, var_0.c)) % vec4<u32>(32u)))));
    var var_2 = u_input.b;
    return !(!vec3<bool>(any(vec4<bool>(var_0.a, true, false, var_0.a)), !var_0.a, any(vec2<bool>(var_0.a, var_0.a))));
}

fn func_1(arg_0: vec3<u32>) -> vec2<u32> {
    global0 = array<Struct_1, 17>();
    var var_0 = !vec3<bool>(true, all(select(func_2(-946f, -2147483647i), vec3<bool>(false, false, true), true)), any(vec3<bool>(true, true, true)) & false);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.x, countOneBits(68363u)), 17u)];
    var_1 = global0[_wgslsmith_index_u32(max(arg_0.x, _wgslsmith_add_u32(max(var_1.c >> (0u % 32u), u_input.b), ~u_input.c)), 17u)];
    var_1 = global0[_wgslsmith_index_u32(func_3(global0[_wgslsmith_index_u32(max(23602u, 49700u), 17u)], vec4<i32>(2147483647i, _wgslsmith_div_i32(_wgslsmith_div_i32(countOneBits(u_input.a.x), 2147483647i), -2147483647i), (_wgslsmith_clamp_i32(1i, u_input.e, u_input.d) | -28828i) >> (abs(72596u) % 32u), 2147483647i), vec4<u32>(~var_1.c, abs(~_wgslsmith_clamp_u32(u_input.b, 71820u, 1u)), 12115u, ~arg_0.x), Struct_1(true, var_1.b, ~(~1u))), 17u)];
    return vec2<u32>(~(~var_1.c) >> (4294967295u % 32u), _wgslsmith_mod_u32(9370u, u_input.c));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~(u_input.b ^ arg_1.c);
    global0 = array<Struct_1, 17>();
    let var_1 = arg_1;
    global0 = array<Struct_1, 17>();
    let var_2 = select(!(!(!vec4<bool>(false, true, var_1.a, false))), !vec4<bool>(var_1.a, arg_1.a | false, !any(vec3<bool>(true, true, true)), !(-2147483647i >= u_input.e)), false);
    return Struct_1(!all(func_2(var_1.b.x, -2147483647i)), arg_1.b, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 17>();
    let var_0 = func_4(~_wgslsmith_div_vec2_u32(max(~vec2<u32>(0u, u_input.b), ~vec2<u32>(u_input.b, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.c, u_input.c)) ^ func_1(vec3<u32>(0u, 3832u, 0u))), global0[_wgslsmith_index_u32(~1u, 17u)]);
    let var_1 = Struct_1(var_0.a, vec4<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.b.x, -1362f)), _wgslsmith_f_op_f32(1000f + 1000f))), var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2244f) + _wgslsmith_f_op_f32(-var_0.b.x)), -197f), var_0.c);
    let var_2 = 0u;
    let var_3 = Struct_1(true & (var_0.c <= (var_0.c >> (select(51883u, 0u, false) % 32u))), var_0.b, countOneBits(2901u));
    var var_4 = Struct_1(!func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -962f), var_1.b.x, !var_1.a)), -(0i | u_input.e)).x, var_1.b, ~31206u);
    global0 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(min(0u, countOneBits(_wgslsmith_mult_u32(53226u, 10385u))), ~var_4.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1021f, _wgslsmith_f_op_f32(trunc(var_1.b.x))))));
}

