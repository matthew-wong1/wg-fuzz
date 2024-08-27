struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: vec2<i32>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> u32 {
    let var_0 = Struct_4(4294967295u);
    return abs(~_wgslsmith_add_u32(~11435u, countOneBits(1u >> (1u % 32u))));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_5) -> i32 {
    global0 = array<f32, 11>();
    global1 = select(vec2<i32>(max(global1.x, _wgslsmith_clamp_i32(global1.x, -12984i, ~0i)), _wgslsmith_dot_vec2_i32(-select(vec2<i32>(26813i, global1.x), vec2<i32>(17974i, global1.x), arg_2.a), vec2<i32>(-1i) * -vec2<i32>(-2147483647i, global1.x))), -vec2<i32>(-1i, _wgslsmith_div_i32(global1.x, -2147483647i)) ^ min(abs(vec2<i32>(global1.x, 17809i)) >> (arg_0 % vec2<u32>(32u)), vec2<i32>(1i, -15683i)), any(vec2<bool>(true, arg_2.a)));
    var var_0 = _wgslsmith_div_vec3_i32(abs(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, global1.x), vec3<i32>(u_input.c, 0i, global1.x) & vec3<i32>(u_input.c, global1.x, arg_2.c.a)), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, global1.x, arg_2.c.a), vec3<i32>(-13944i, arg_2.c.a, -32020i)), ~vec3<i32>(arg_2.c.a, u_input.c, global1.x)))), countOneBits(_wgslsmith_div_vec3_i32(-abs(vec3<i32>(arg_2.c.a, global1.x, -31846i)), _wgslsmith_div_vec3_i32(abs(vec3<i32>(global1.x, global1.x, arg_2.c.a)), vec3<i32>(arg_2.c.a, u_input.c, u_input.c) ^ vec3<i32>(27021i, 0i, arg_2.c.a)))));
    var var_1 = Struct_2(Struct_1(u_input.c));
    let var_2 = ~firstLeadingBit(vec4<i32>(~global1.x, (-41918i ^ arg_2.c.a) ^ -var_0.x, 1i, var_1.a.a));
    return 2147483647i;
}

fn func_2() -> vec2<u32> {
    var var_0 = ~firstTrailingBit(u_input.c);
    var var_1 = Struct_5(all(vec2<bool>(false, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1189f, global0[_wgslsmith_index_u32(u_input.d, 11u)]), vec2<f32>(-1231f, -362f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-687f, 220f) - vec2<f32>(-1109f, global0[_wgslsmith_index_u32(0u, 11u)]))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(48938u, 11u)]) - vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 11u)], -1388f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-123f, global0[_wgslsmith_index_u32(1u, 11u)])))))), Struct_1(~(-1i)));
    let var_2 = Struct_1(_wgslsmith_add_i32(-9643i, abs(_wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, 4105i), max(0i, global1.x), 2147483647i))));
    let var_3 = Struct_2(Struct_1(func_3(firstLeadingBit(max(vec2<u32>(u_input.d, u_input.a), vec2<u32>(u_input.a, 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.x))), Struct_5(select(true, var_1.a, false), var_1.b, var_2))));
    var var_4 = Struct_1(_wgslsmith_add_i32(1i, global1.x));
    return vec2<u32>(1u, u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<u32>(func_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, 0i), vec2<i32>(23950i, -14800i)), abs(vec2<i32>(global1.x, -1i))), vec3<bool>(true, false, all(vec2<bool>(true, true)))), 4294967295u), ~vec2<u32>(abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(23916u, 1u, 2554u, 0u), vec4<u32>(34960u, u_input.b, 71005u, u_input.d))) << (_wgslsmith_clamp_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(40295u, 62425u), vec2<u32>(u_input.d, 36978u)), vec2<u32>(u_input.b, u_input.d) >> (min(vec2<u32>(u_input.b, 66901u), vec2<u32>(u_input.d, u_input.a)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(10072u, u_input.b), vec2<u32>(56913u, u_input.d)) ^ func_2()) % vec2<u32>(32u)), !select(vec2<bool>(any(vec3<bool>(false, false, false)), true), vec2<bool>(true, true), true));
    var var_1 = abs(vec2<u32>(~16803u << (var_0.x % 32u), u_input.a)) << (var_0 % vec2<u32>(32u));
    let var_2 = Struct_3(u_input.c, Struct_2(Struct_1(u_input.c & u_input.c)));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1328f, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_1.x, 11u)])))))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.x, 11u)] * _wgslsmith_f_op_f32(-var_3)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1238f * global0[_wgslsmith_index_u32(20919u, 11u)]) + 1f))) - global0[_wgslsmith_index_u32(~(28000u << (~(~var_0.x) % 32u)), 11u)]);
    var_1 = vec2<u32>(~(~abs(~var_1.x)), reverseBits(max(1u, _wgslsmith_div_u32(u_input.a, 4294967295u)) << (func_1(1i, vec3<bool>(true, true, true)) % 32u)));
    var var_5 = _wgslsmith_f_op_f32(-171f * _wgslsmith_f_op_f32(-var_3));
    let x = u_input.a;
    s_output = StorageBuffer(min(~vec4<i32>(_wgslsmith_div_i32(global1.x, -2361i), _wgslsmith_mod_i32(-2147483647i, global1.x), var_2.a, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(var_2.b.a.a, 17348i))), ~vec4<i32>(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-12249i, 18949i, u_input.c, u_input.c), vec4<i32>(1i, u_input.c, 2147483647i, u_input.c)), global1.x, 15745i)), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(global1.x, u_input.c, -2147483647i)), reverseBits(vec3<i32>(u_input.c, -1i, -2147483647i))) << ((vec3<u32>(61336u, 0u, var_0.x) << (~vec3<u32>(17842u, 42567u, u_input.d) % vec3<u32>(32u))) % vec3<u32>(32u)), firstTrailingBit(abs(vec3<i32>(1i, var_2.a, -1i) ^ vec3<i32>(global1.x, 2147483647i, var_2.b.a.a)))), vec2<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, 4294967295u, var_0.x), vec4<u32>(122629u, 0u, 46318u, 38006u)), 11u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-788f, -1553f)))))), _wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(244f, -645f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3, var_3))))))), func_2().x);
}

