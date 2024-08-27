struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_4, 20>;

var<private> global2: array<vec3<bool>, 19>;

var<private> global3: bool = false;

var<private> global4: vec3<i32> = vec3<i32>(1i, -20105i, -6068i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    var var_0 = vec2<bool>(true, !any(select(!global2[_wgslsmith_index_u32(u_input.b, 19u)], global2[_wgslsmith_index_u32(firstTrailingBit(1u), 19u)], true)));
    var var_1 = global0.x;
    let var_2 = Struct_5(Struct_4(_wgslsmith_sub_i32(1i, ~(~u_input.a)), 129f), Struct_1(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -14773i, 2147483647i, u_input.a), vec4<i32>(-1i, 1041i, global4.x, u_input.a)) >> ((~vec4<u32>(u_input.b, u_input.b, 0u, u_input.b) >> (~vec4<u32>(0u, u_input.b, u_input.b, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), -select(countOneBits(-1i), u_input.a, u_input.b != 4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-113f + -569f), _wgslsmith_f_op_f32(935f * arg_0.x), _wgslsmith_f_op_f32(max(-467f, global0.x)), -634f))));
    global2 = array<vec3<bool>, 19>();
    global2 = array<vec3<bool>, 19>();
    return ~(((firstTrailingBit(19856i) & -6665i) << (~u_input.b % 32u)) ^ -_wgslsmith_sub_i32(~global4.x, _wgslsmith_div_i32(0i, -1i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_4) -> vec3<f32> {
    let var_0 = global1[_wgslsmith_index_u32(458u, 20u)];
    var var_1 = Struct_5(arg_2, Struct_1(~_wgslsmith_add_vec4_i32(vec4<i32>(17225i, -1i, arg_1.x, 19720i), ~vec4<i32>(global4.x, -36728i, -5272i, 2147483647i)), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(102f, -2158f, var_0.b, var_0.b)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-820f, -208f, 817f, 921f), vec4<f32>(-1000f, arg_2.b, 672f, 1284f)), _wgslsmith_div_vec4_f32(vec4<f32>(728f, -1599f, var_0.b, var_0.b), vec4<f32>(1081f, var_0.b, 451f, 1361f)))))));
    let var_2 = Struct_4(-2147483647i, arg_2.b);
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.c.yz)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.b.c.xx, vec2<f32>(var_1.a.b, 1353f))) * var_1.b.c.ww))), ~(global4.x & _wgslsmith_dot_vec2_i32(var_1.b.a.yw, vec2<i32>(var_1.b.b, var_0.a))) != firstLeadingBit(var_0.a)));
    var var_3 = Struct_5(arg_2, var_1.b);
    return _wgslsmith_f_op_vec3_f32(-var_3.b.c.yzy);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    let var_0 = 15776u;
    global0 = _wgslsmith_f_op_vec2_f32(-arg_0.yy);
    let var_1 = abs(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 4294967295u), vec2<u32>(15827u, var_0)) >> (~56600u % 32u), 74794u), vec2<u32>(var_0, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.b, 10106u)), vec2<u32>(u_input.b, 0u)))));
    let var_2 = -2147483647i;
    var var_3 = ~vec2<i32>(26139i, _wgslsmith_div_i32(0i, 2147483647i & global4.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, var_0, var_0), select(vec4<u32>(var_1, 0u, var_0, var_0), vec4<u32>(107074u, var_1, 9926u, var_1), arg_2.a)) % 32u));
    return Struct_3(_wgslsmith_f_op_vec3_f32(arg_1.c.xzy - _wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(arg_0)), arg_1.c.ywx, true)))), Struct_1(_wgslsmith_add_vec4_i32(arg_1.a, select(_wgslsmith_sub_vec4_i32(arg_1.a, vec4<i32>(global4.x, 34405i, global4.x, u_input.a)), min(vec4<i32>(-5986i, -1i, global4.x, global4.x), vec4<i32>(-23513i, global4.x, arg_1.b, 2147483647i)), vec4<bool>(true, arg_3, arg_2.a, arg_3))), _wgslsmith_mult_i32(1i, 34394i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.c.x, 371f)), 227f, -309f, _wgslsmith_div_f32(-1000f, arg_1.c.x)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>) -> bool {
    var var_0 = global0.x;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, global0.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1092f, var_1.x, -1541f) + vec3<f32>(-1000f, -258f, -325f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.x, global0.x)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, 366f, var_1.x))), vec3<f32>(global0.x, var_1.x, var_1.x))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1017f + _wgslsmith_f_op_f32(f32(-1f) * -1538f)));
    var var_3 = func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -266f, -1330f) * vec3<f32>(global0.x, global0.x, -125f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -2135f, -362f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -2314f, -621f) + vec3<f32>(global0.x, 272f, global0.x)))), _wgslsmith_f_op_vec3_f32(func_2(arg_1.xzx, vec2<i32>(-u_input.a, min(-1i, -2147483647i)), Struct_4(u_input.a, _wgslsmith_f_op_f32(-var_1.x)))))), Struct_1(firstLeadingBit(-reverseBits(vec4<i32>(global4.x, 0i, global4.x, u_input.a))), countOneBits(_wgslsmith_sub_i32(u_input.a | global4.x, u_input.a)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-144f, 1017f, global0.x, 539f)), vec4<f32>(var_2.x, 1000f, global0.x, global0.x)))))), Struct_2(true), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true))) || all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false))));
    return true & (any(vec3<bool>(all(vec4<bool>(false, false, true, true)), any(vec4<bool>(true, true, true, false)), all(vec2<bool>(true, true)))) && any(vec4<bool>(true, any(global2[_wgslsmith_index_u32(u_input.b, 19u)]), true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(abs(~firstTrailingBit(vec3<u32>(116987u, u_input.b, 11294u))), ~(~(~vec3<u32>(32508u, u_input.b, u_input.b))), true);
    let var_1 = func_1(countOneBits(vec2<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1u) >> (vec3<u32>(55816u, 0u, u_input.b) % vec3<u32>(32u)), select(vec3<u32>(1u, 0u, var_0.x), vec3<u32>(50225u, u_input.b, 0u), vec3<bool>(true, true, false))))), countOneBits(~vec4<u32>(firstTrailingBit(var_0.x), 96539u, 1u, _wgslsmith_div_u32(4294967295u, var_0.x))));
    let var_2 = Struct_5(Struct_4(_wgslsmith_mod_i32(1i, u_input.a >> (u_input.b % 32u)) & func_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, global0.x, -1155f, -2054f)))), global0.x), func_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, 1491f, -668f), vec3<f32>(-1000f, global0.x, 1833f))))))), Struct_1(~(~vec4<i32>(21589i, 18909i, u_input.a, -24289i)), ~global4.x >> (var_0.x % 32u), vec4<f32>(_wgslsmith_f_op_f32(global0.x * -105f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_vec3_f32(func_2(vec3<u32>(4294967295u, 0u, 4294967295u), vec2<i32>(-34218i, global4.x), Struct_4(global4.x, global0.x))).x, _wgslsmith_f_op_f32(1255f - global0.x))), Struct_2(true), true).b);
    var var_3 = -vec3<i32>(-2147483647i, var_2.b.b, 1i);
    let var_4 = max(vec4<i32>(u_input.a, 38049i, ~global4.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_3.x), global4.yz)), func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-760f, global0.x, var_2.a.b)) * var_2.b.c.xxz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(829f, var_2.a.b, 776f))) + _wgslsmith_f_op_vec3_f32(-var_2.b.c.yyz)), true)), Struct_1(~vec4<i32>(6816i, -3867i, 34071i, 0i) | (vec4<i32>(40415i, -37625i, -52339i, u_input.a) >> (vec4<u32>(var_0.x, 51253u, u_input.b, 0u) % vec4<u32>(32u))), i32(-1i) * -2147483647i, vec4<f32>(global0.x, 144f, 1275f, var_2.a.b)), Struct_2(var_1), true).b.a);
    let var_5 = vec2<i32>(1i, var_4.x);
    var_3 = vec3<i32>(_wgslsmith_dot_vec2_i32(var_5, var_4.zw << (countOneBits(vec2<u32>(var_0.x, var_0.x)) % vec2<u32>(32u))), -var_2.a.a, global4.x);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-global4.yx));
}

