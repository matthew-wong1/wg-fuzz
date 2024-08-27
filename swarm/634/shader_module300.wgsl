struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-1i, 36109i, 0i));

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_2, 8>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec4<u32>) -> vec4<f32> {
    global4 = Struct_1(global4.a);
    var var_0 = vec3<u32>(88585u, _wgslsmith_dot_vec2_u32(firstLeadingBit(countOneBits(vec2<u32>(1u, 1u) & vec2<u32>(arg_0.x, 84680u))), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yz, arg_0.xy), _wgslsmith_mod_u32(u_input.a.x, 64996u)))), countOneBits(~_wgslsmith_mod_u32(5573u, max(u_input.a.x, arg_0.x))));
    var var_1 = !vec3<bool>(!(firstLeadingBit(arg_0.x) < u_input.a.x), true, !all(vec3<bool>(true, true, true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(global2.xw, _wgslsmith_div_vec2_f32(global2.yy, global2.yz)), global2.ww)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) - global2.zz), vec2<f32>(global2.x, -126f))))));
    var var_3 = -1191f;
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(round(-1762f)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(round(global2.x))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -737f), _wgslsmith_div_f32(var_2.x, 1056f), _wgslsmith_f_op_f32(step(-892f, -705f)), -1288f)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(0u, 18u)];
    let var_1 = ~(~abs(select(vec2<i32>(arg_1.x, arg_0.x), _wgslsmith_div_vec2_i32(global4.a.zx, vec2<i32>(global4.a.x, arg_0.x)), vec2<bool>(true, true))));
    global3 = array<Struct_2, 8>();
    global1 = var_0.c;
    let var_2 = _wgslsmith_f_op_vec4_f32(func_3(u_input.a << (u_input.a % vec4<u32>(32u))));
    return global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(0u, select(u_input.a.x, 68450u, true)), u_input.a.x), u_input.a.x), _wgslsmith_mod_vec2_u32(~(~u_input.a.wz), vec2<u32>(abs(49941u), select(47672u & u_input.a.x, ~u_input.a.x, true)))), 8u)];
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(global1.a);
    let var_1 = global2.zxx;
    global1 = Struct_1(-var_0.a);
    let var_2 = func_2(~global4.a, ~abs(select(vec4<i32>(global1.a.x, arg_1, -10340i, 18898i), vec4<i32>(global1.a.x, var_0.a.x, 2147483647i, 1i), arg_0)));
    var var_3 = Struct_1(global4.a);
    return var_2.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> f32 {
    var var_0 = 429f;
    var var_1 = all(vec4<bool>(!all(vec2<bool>(true, true)), !all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), _wgslsmith_f_op_f32(sign(-439f)) <= -1283f, true));
    var var_2 = abs(~arg_0.a.yy);
    let var_3 = !(1u > min(u_input.a.x, 16560u));
    var_2 = ~(~vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(arg_0.a.x), arg_1.x), var_2.x));
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(global4.a.x);
    var var_1 = _wgslsmith_sub_i32(global1.a.x, -global4.a.x);
    var var_2 = var_0;
    let var_3 = ~vec3<i32>(var_0, ~_wgslsmith_mod_i32(-1i, global1.a.x), -2147483647i);
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(func_1(true, 1i), vec2<i32>(-2147483647i, 1i))), 1162f, any(vec4<bool>(true, true, true, false)) && any(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1654f * global2.x) * _wgslsmith_f_op_f32(274f + global2.x)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-541f)), _wgslsmith_f_op_f32(max(352f, -828f))))), global2.x, -465f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1346f, global2.x, 137f, global2.x))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 170f, global2.x) + vec4<f32>(-813f, -112f, 1000f, global2.x))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, -624f, -1000f, global2.x), vec4<f32>(global2.x, -141f, 456f, -113f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 854f, global2.x, -963f) * vec4<f32>(global2.x, 1076f, 1434f, global2.x)))))));
    var var_5 = Struct_3(abs(~var_3.x), ~vec4<i32>(-1i, ~var_0, -reverseBits(-1i), 20361i), Struct_1(select(global1.a & func_2(var_3, vec4<i32>(1i, 42773i, 1i, global1.a.x)).c.a, countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-27995i, -17169i, -1i), vec3<i32>(global1.a.x, -1i, var_0))), vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_4.x, -648f), vec2<f32>(-592f, 1000f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(select(var_4.wz, global2.zz, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), false))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global2.zw, vec2<f32>(var_4.x, 549f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(878f, 1548f))))), global2.xx, !vec2<bool>(any(vec4<bool>(true, true, true, false)), false))), vec3<u32>(0u, 45779u, ~u_input.a.x));
}

