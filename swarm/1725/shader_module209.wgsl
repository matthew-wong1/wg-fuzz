struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10>;

var<private> global1: array<i32, 31>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> bool {
    var var_0 = arg_2;
    var var_1 = vec3<i32>(-_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(10011u, 10u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, max(u_input.a, 13462u)), 10u)]), 1i, i32(-1i) * -26517i);
    let var_2 = Struct_1(~(-(~(~var_1.xy))));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(276f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1592f, arg_1) + _wgslsmith_f_op_f32(max(arg_1, arg_1))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(arg_1 + arg_1)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, -2738f))), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), true)))), true)));
    global0 = array<vec3<i32>, 10>();
    return _wgslsmith_f_op_f32(-var_3.x) >= 751f;
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<bool>(!func_3(u_input.a << (u_input.b % 32u), 503f, Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(58964u, 31u)], 97424i))) | true, !(true || (abs(u_input.a) < u_input.b)), any(vec2<bool>(true, true)), true);
    var_0 = !select(!(!vec4<bool>(var_0.x, false, var_0.x, false)), select(vec4<bool>(true, false, true, var_0.x), select(!vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(true, true, true, true)), true), true);
    var var_1 = countOneBits(select(~vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(1u, 31u)]), vec2<i32>(-2147483647i, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.a, 31u)], -1i)), !vec2<bool>(true, var_0.x))) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u));
    var var_2 = ~17305u >> (u_input.b % 32u);
    var_1 = reverseBits(abs(vec2<i32>(-1i) * -(~vec2<i32>(-174i, 41050i))));
    return Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 31u)], -2147483647i) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))), vec2<i32>(0i, global1[_wgslsmith_index_u32(u_input.a, 31u)] >> (_wgslsmith_add_u32(44971u, u_input.b) % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = true;
    var var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(select(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(53269u, 4161u), vec2<u32>(1u, u_input.b)), firstTrailingBit(vec2<u32>(arg_2, 4294967295u))), ~select(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.b, 16848u), vec2<bool>(var_0, true)), any(!vec3<bool>(false, true, var_0))), vec2<u32>(arg_2, arg_2)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2, select(~1u, 1u, 12154u > u_input.a)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 10781u), ~vec2<u32>(1u, u_input.b)) | (~vec2<u32>(u_input.a, 1u) | ~vec2<u32>(arg_2, 1u))));
    global1 = array<i32, 31>();
    let var_2 = arg_0;
    let var_3 = func_2();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-449f, 951f, -178f, -1598f))))) + vec4<f32>(_wgslsmith_f_op_f32(-1f), -166f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-428f)) + _wgslsmith_div_f32(615f, -542f)) * _wgslsmith_f_op_f32(sign(-486f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(475f, -786f)) * _wgslsmith_f_op_f32(f32(-1f) * -531f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -164f)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec3<u32>) -> vec2<i32> {
    var var_0 = _wgslsmith_mod_u32(u_input.b, 30649u);
    let var_1 = vec4<bool>(true & all(vec2<bool>(true, 1i <= global1[_wgslsmith_index_u32(36672u, 31u)])), !(!all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false)), vec2<bool>(true, true), any(vec3<bool>(false, true, false)))), false);
    var var_2 = _wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 1248f, arg_0.x, arg_1.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-179f, -1513f, -318f, arg_0.x) + vec4<f32>(1036f, -388f, arg_0.x, arg_0.x)) - arg_0)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_0)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_0))))));
    var var_3 = vec4<i32>(2147483647i, ~(-countOneBits(global1[_wgslsmith_index_u32(arg_2.x & 1u, 31u)])), ~countOneBits(~1i), abs(_wgslsmith_div_i32(min(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)]), min(global1[_wgslsmith_index_u32(arg_2.x, 31u)], global1[_wgslsmith_index_u32(0u, 31u)]))) ^ -2147483647i);
    let var_4 = func_2();
    return _wgslsmith_add_vec2_i32(vec2<i32>(~global1[_wgslsmith_index_u32(1u, 31u)], 14318i), min(vec2<i32>(var_4.a.x, ~abs(var_4.a.x)), vec2<i32>(var_3.x, _wgslsmith_dot_vec2_i32(~var_4.a, vec2<i32>(global1[_wgslsmith_index_u32(1u, 31u)], var_3.x)))));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_sub_vec2_i32(arg_1.yx, func_5(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(1u, 31u)], -72167i)), global1[_wgslsmith_index_u32(countOneBits(u_input.b), 31u)], u_input.a, func_2())), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1042f, 929f))), vec3<u32>(45554u, 4294967295u, u_input.a) >> ((vec3<u32>(u_input.b, 4040u, u_input.a) << (vec3<u32>(21946u, 40291u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_add_u32(~(~1u ^ u_input.a), var_1 << (65895u % 32u)) >= var_1;
    var_2 = !(u_input.b == 5427u);
    var var_3 = func_2();
    return Struct_1(-func_2().a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(~u_input.b != u_input.a, select(true, false, true) & false);
    var var_1 = Struct_1(reverseBits(-(~(vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 31u)], -2117i) >> (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))))));
    global1 = array<i32, 31>();
    let var_2 = func_1(~global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, 4294967295u), 31u)] << (u_input.a % 32u), reverseBits(vec3<i32>(_wgslsmith_sub_i32(var_1.a.x, 0i & global1[_wgslsmith_index_u32(4294967295u, 31u)]), -1i, ~global1[_wgslsmith_index_u32(u_input.a, 31u)] | _wgslsmith_div_i32(global1[_wgslsmith_index_u32(0u, 31u)], var_1.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(4294967295u, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-977f)), _wgslsmith_div_f32(-613f, _wgslsmith_f_op_f32(f32(-1f) * -695f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-909f, -247f)), -592f)))), -vec3<i32>(countOneBits(var_2.a.x >> (93777u % 32u)), ~var_2.a.x, ~func_5(vec4<f32>(1470f, 1001f, 1000f, -213f), vec2<f32>(-347f, -813f), vec3<u32>(u_input.b, 10904u, u_input.b)).x), -vec4<i32>(_wgslsmith_mod_i32(func_5(vec4<f32>(941f, -337f, 962f, 659f), vec2<f32>(-1639f, -1536f), vec3<u32>(0u, 4294967295u, u_input.a)).x, -29380i), _wgslsmith_add_i32(var_1.a.x, 0i), -_wgslsmith_clamp_i32(374i, var_2.a.x, 542i), var_2.a.x), 736f);
}

