struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(0u, 0u, 5458u, 52808u, 4294967295u, 7012u, 39558u, 0u);

var<private> global1: array<Struct_1, 8>;

var<private> global2: i32 = 1517i;

var<private> global3: vec2<u32> = vec2<u32>(1u, 4294967295u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_clamp_i32(0i, -1i, -39356i))));
    var var_1 = var_0.a.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1786f, 271f) + vec2<f32>(arg_0, 244f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-179f, arg_0)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, arg_0))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, arg_0)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, arg_0), vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1470f, arg_0)), any(vec3<bool>(true, true, true)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(1173f, -1137f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))))));
    let var_3 = select(vec4<bool>(any(vec3<bool>(true, true, true)), !all(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), false, !any(vec4<bool>(false, false, false, true))), vec4<bool>(((arg_2.a ^ 53962i) & _wgslsmith_add_i32(arg_2.a, var_1.a)) < _wgslsmith_sub_i32(-2147483647i, -u_input.a), ((u_input.b.x & u_input.c) << (firstTrailingBit(arg_1) % 32u)) == _wgslsmith_mod_u32(u_input.d, 69447u), true, any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), true))), vec4<bool>(true && all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), any(vec3<bool>(true, true, true)), !any(vec2<bool>(false, false)), !(-var_1.a <= 27087i)));
    return 1u << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, 1u), ~1u) % 32u);
}

fn func_2() -> Struct_1 {
    global2 = ~23284i >> (firstTrailingBit(_wgslsmith_clamp_u32(u_input.d, 13775u, func_3(_wgslsmith_f_op_f32(-1903f - 1380f), 30341u, global1[_wgslsmith_index_u32(u_input.d, 8u)]))) % 32u);
    global1 = array<Struct_1, 8>();
    let var_0 = _wgslsmith_clamp_i32(reverseBits(u_input.a), -u_input.a, ~u_input.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(542f, -746f)), _wgslsmith_f_op_f32(190f - -992f), -2024f))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, -101f), vec3<f32>(var_1.x, -354f, 503f), false)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, 1000f, 463f)))))))));
    return global1[_wgslsmith_index_u32(~global3.x, 8u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-1750f + -401f);
    var var_1 = _wgslsmith_mult_vec2_u32(arg_0.xz, _wgslsmith_mult_vec2_u32(arg_0.zx, u_input.b.ww) | vec2<u32>(7087u, 4294967295u));
    let var_2 = Struct_1(countOneBits(2147483647i));
    var var_3 = Struct_2(arg_3);
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1, arg_1)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1062f)), -2071f, _wgslsmith_f_op_f32(-arg_1.x), 489f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_1))), all(!vec2<bool>(any(vec4<bool>(true, false, true, true)), true))));
    return abs(vec2<i32>(-_wgslsmith_mod_i32(~var_3.a.a, _wgslsmith_sub_i32(arg_2.a, 0i)), ~arg_2.a));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec4<u32>, arg_3: vec2<u32>) -> u32 {
    global2 = _wgslsmith_dot_vec2_i32(~(-func_4(~vec3<u32>(global0[_wgslsmith_index_u32(31539u, 8u)], global0[_wgslsmith_index_u32(arg_2.x, 8u)], u_input.e), vec4<f32>(1319f, 1000f, -1107f, 1823f), func_2(), Struct_1(2147483647i))), abs((vec2<i32>(-23119i, -9478i) << (select(vec2<u32>(u_input.e, arg_2.x), vec2<u32>(global3.x, 28821u), arg_1) % vec2<u32>(32u))) | (_wgslsmith_mult_vec2_i32(vec2<i32>(42715i, u_input.a), vec2<i32>(arg_0, 1i)) | func_4(u_input.b.zxw, vec4<f32>(899f, -174f, -461f, -635f), global1[_wgslsmith_index_u32(u_input.e, 8u)], Struct_1(-34767i)))));
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 64732u, global0[_wgslsmith_index_u32(arg_3.x, 8u)]), vec3<u32>(0u, u_input.b.x, u_input.e), arg_2.zxx), u_input.b.xxy)), 8u)]);
    var var_1 = ~(~_wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.b.zyx, vec3<u32>(global3.x, arg_2.x, global0[_wgslsmith_index_u32(u_input.b.x, 8u)])), ~(~vec3<u32>(global3.x, 25535u, global0[_wgslsmith_index_u32(32194u, 8u)]))));
    var var_2 = u_input.b.xwy;
    var var_3 = vec2<bool>(any(vec2<bool>(any(vec3<bool>(true, true, true)) || arg_1, arg_1)), any(!select(select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1)), !vec2<bool>(true, arg_1), any(vec3<bool>(arg_1, arg_1, false)))));
    return ~var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 8>();
    global3 = ~(~u_input.b.zz);
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(abs(abs(~u_input.e)), ~_wgslsmith_mult_u32(u_input.c, 0u), 4294967295u, global0[_wgslsmith_index_u32(global3.x, 8u)]), vec4<u32>(func_1(u_input.a, true, u_input.b & u_input.b, vec2<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 8u)])), ~global3.x, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(49900u, 18938u, 86144u, 39522u), vec4<u32>(12493u, 0u, global3.x, 2218u)), 8u)], global3.x), 90686u) | u_input.b);
    var var_1 = (2147483647i < _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 1i, -2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a))), -u_input.a | (u_input.a | u_input.a))) & !(!any(vec2<bool>(true, true)));
    global0 = array<u32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -254f) * _wgslsmith_f_op_f32(round(-1187f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1595f - -257f), _wgslsmith_f_op_f32(step(3196f, 527f))))))), _wgslsmith_f_op_f32(min(1015f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -864f)) + -1044f))), vec2<f32>(_wgslsmith_f_op_f32(round(-656f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1777f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(315f + -586f)))));
}

