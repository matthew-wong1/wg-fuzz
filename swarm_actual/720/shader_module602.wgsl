struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    var var_0 = Struct_1(~firstTrailingBit(abs(reverseBits(4294967295u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_div_f32(-469f, -441f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(790f, -194f))))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)] <= (~(~global0[_wgslsmith_index_u32(87680u, 8u)]) << (global0[_wgslsmith_index_u32(33208u, 8u)] % 32u)));
    return -arg_0.x;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global0 = array<u32, 8>();
    let var_0 = u_input.b;
    var var_1 = countOneBits(vec3<i32>(_wgslsmith_add_i32(func_3(vec4<i32>(u_input.e, -1i, -39201i, u_input.e) >> (var_0 % vec4<u32>(32u))), i32(-1i) * -1i), u_input.d.x ^ _wgslsmith_div_i32(max(u_input.e, -2147483647i), -17067i), _wgslsmith_div_i32(countOneBits(arg_0.x), 2147483647i)));
    global0 = array<u32, 8>();
    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e, 37159i), var_1.zz);
    return Struct_1(0u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -416f)), vec2<f32>(-1426f, 171f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1051f, -1075f))))), false);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: bool) -> Struct_1 {
    let var_0 = func_2(vec3<i32>(u_input.d.x, -_wgslsmith_clamp_i32(-18927i, 29016i, abs(0i)), u_input.e));
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    let var_1 = func_2(max(select(firstLeadingBit(firstLeadingBit(vec3<i32>(-18758i, u_input.d.x, 33449i))), max(select(vec3<i32>(0i, -25344i, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, u_input.e), vec3<bool>(arg_2, false, var_0.c)), ~vec3<i32>(0i, -36374i, 62871i)), vec3<bool>(arg_0 > arg_0, arg_2, 200f == var_0.b.x)), vec3<i32>(u_input.e, reverseBits(firstLeadingBit(u_input.e)), u_input.d.x)));
    var var_2 = 1u;
    return Struct_1(_wgslsmith_mod_u32(var_0.a, 13803u), _wgslsmith_f_op_vec2_f32(select(var_1.b, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b + var_1.b), _wgslsmith_f_op_vec2_f32(var_0.b + var_0.b)), var_1.b)), any(vec4<bool>(all(vec3<bool>(var_1.c, arg_2, false)), false, true, all(arg_1.yy))))), var_1.c);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_mult_u32(14919u, 13789u), _wgslsmith_div_vec2_f32(arg_1.b, _wgslsmith_f_op_vec2_f32(-arg_1.b)), any(!(!vec3<bool>(arg_1.c, arg_1.c, arg_1.c))));
    var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -669f), _wgslsmith_f_op_f32(min(1199f, arg_1.b.x))) - arg_1.b.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.x)))), select(!select(vec3<bool>(true, arg_1.c, false), vec3<bool>(false, arg_1.c, true), vec3<bool>(var_0.c, var_0.c, arg_1.c)), !select(vec3<bool>(true, var_0.c, true), select(vec3<bool>(true, true, arg_1.c), vec3<bool>(true, true, arg_1.c), true), select(vec3<bool>(true, var_0.c, var_0.c), vec3<bool>(var_0.c, arg_1.c, false), vec3<bool>(true, false, true))), select(vec3<bool>(!var_0.c, true && arg_1.c, true), !vec3<bool>(var_0.c, true, arg_1.c), false)), func_1(_wgslsmith_f_op_f32(sign(-797f)), !select(vec3<bool>(false, false, arg_1.c), vec3<bool>(arg_1.c, true, true), vec3<bool>(false, false, true)), any(!vec2<bool>(var_0.c, false))).c && all(select(select(vec4<bool>(true, var_0.c, true, var_0.c), vec4<bool>(true, arg_1.c, arg_1.c, var_0.c), vec4<bool>(arg_1.c, false, false, arg_1.c)), !vec4<bool>(arg_1.c, var_0.c, arg_1.c, true), !arg_1.c)));
    global0 = array<u32, 8>();
    var var_1 = vec2<bool>(true, false);
    var_1 = !(!vec2<bool>(any(vec4<bool>(var_1.x, false, var_0.c, arg_1.c)), !func_1(615f, vec3<bool>(false, arg_1.c, arg_1.c), arg_1.c).c));
    return _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(~_wgslsmith_mod_u32(arg_1.a, arg_1.a), 18519u, ~4294967295u, 1u) & u_input.b);
}

fn func_5(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f)));
    let var_1 = func_2(countOneBits(~(vec3<i32>(-1i) * -vec3<i32>(u_input.e, 5479i, -2147483647i))));
    let var_2 = vec2<bool>(var_1.c, func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-var_1.b.x)))), select(vec3<bool>(true, false, true), !select(vec3<bool>(false, true, var_1.c), vec3<bool>(var_1.c, true, true), vec3<bool>(var_1.c, false, var_1.c)), select(vec3<bool>(var_1.c, false, true), select(vec3<bool>(true, false, true), vec3<bool>(var_1.c, var_1.c, true), true), false)), any(select(vec4<bool>(false, var_1.c, true, true), vec4<bool>(false, false, false, true), true)) | (u_input.d.x != _wgslsmith_div_i32(u_input.d.x, u_input.e))).c);
    let var_3 = 0u;
    global0 = array<u32, 8>();
    return func_2(~(-(~max(vec3<i32>(u_input.e, u_input.e, u_input.d.x), vec3<i32>(1i, u_input.d.x, 25923i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 8>();
    var var_0 = func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 5009u, 0u, ~(~global0[_wgslsmith_index_u32(1u, 8u)])), max(func_4(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 8u)], 8u)], func_1(594f, vec3<bool>(true, false, true), false)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.b.x, global0[_wgslsmith_index_u32(21863u, 8u)]), vec4<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(47060u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)])) >> (u_input.b % vec4<u32>(32u)))));
    var_0 = Struct_1(10996u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.b.x, -152f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, 1000f) * var_0.b), _wgslsmith_div_vec2_f32(var_0.b, var_0.b)))), (var_0.a << (_wgslsmith_mult_u32(_wgslsmith_mod_u32(62618u, 1u), ~4294967295u) % 32u)) == ~2428u);
    var_0 = func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -112f))))), -705f, var_0.c)), vec3<bool>(true, false, !(true != func_1(var_0.b.x, vec3<bool>(true, false, var_0.c), true).c)), var_0.c);
    let var_1 = select(vec2<bool>(true, true), vec2<bool>((false && func_5(144102u).c) & (func_2(vec3<i32>(0i, u_input.e, u_input.e)).c && (var_0.c || var_0.c)), any(select(!vec2<bool>(var_0.c, var_0.c), !vec2<bool>(var_0.c, var_0.c), !vec2<bool>(true, var_0.c)))), !(!(!select(vec2<bool>(false, true), vec2<bool>(true, var_0.c), vec2<bool>(var_0.c, var_0.c)))));
    var_0 = Struct_1(_wgslsmith_clamp_u32(~func_1(790f, vec3<bool>(true, var_1.x, var_1.x), true).a & 0u, 64858u, ~_wgslsmith_dot_vec3_u32(abs(u_input.b.zxy), vec3<u32>(global0[_wgslsmith_index_u32(0u, 8u)], u_input.c.x, global0[_wgslsmith_index_u32(20312u, 8u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b - vec2<f32>(899f, var_0.b.x)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.b)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.b)))), !var_0.c);
    var_0 = Struct_1(1948u, var_0.b, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_mult_i32(max(~(~2147483647i), -1i), u_input.e));
}

