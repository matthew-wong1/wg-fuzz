struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: bool,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, false, true, true));

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 7859i, -1i, 35020i)), 16363i), vec2<f32>(460f, -1820f), false, vec2<bool>(true, false), Struct_2(Struct_1(vec4<i32>(-2652i, 1i, -16987i, -13826i)), 0i));

var<private> global2: array<bool, 19> = array<bool, 19>(false, false, true, false, true, true, true, true, true, false, true, true, true, true, true, false, true, true, false);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    global1 = Struct_3(Struct_2(global1.a.a, ~_wgslsmith_add_i32(-2147483647i, u_input.a)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(global1.b.x, -1401f), vec2<f32>(1534f, 620f)))))), arg_0.x, arg_0.xz, global1.e);
    global2 = array<bool, 19>();
    global0 = array<vec4<bool>, 1>();
    let var_0 = reverseBits(firstLeadingBit(_wgslsmith_div_vec2_i32(reverseBits(~vec2<i32>(global1.a.a.a.x, 42203i)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, global1.e.b), abs(global1.a.a.a.zw)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(818f - 1769f) * _wgslsmith_f_op_f32(-226f - -981f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-403f * -480f), -1000f))));
    return _wgslsmith_dot_vec2_i32(max(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(abs(vec2<i32>(-2147483647i, u_input.a)), vec2<i32>(1i, 1i)), ~vec2<i32>(global1.a.b, 1i)), vec2<i32>(u_input.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(25896u, 0u, 31870u, 0u), vec4<u32>(4294967295u, 50956u, 0u, 4294967295u)) % 32u), var_0.x)), ~var_0);
}

fn func_2() -> vec4<u32> {
    global1 = Struct_3(Struct_2(global1.e.a, func_3(vec4<bool>(false, any(global1.d), false, true))), global1.b, !(_wgslsmith_f_op_f32(-global1.b.x) >= -747f), vec2<bool>(true, true), global1.a);
    let var_0 = ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, ~firstTrailingBit(27589u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_sub_vec3_u32(select(~vec3<u32>(79396u, 4294967295u, 21577u), max(vec3<u32>(1u, 1u, 0u), vec3<u32>(0u, 145456u, 0u)), !vec3<bool>(true, global2[_wgslsmith_index_u32(25108u, 19u)], true)), vec3<u32>(1u, 1u, 1u)));
    var var_1 = global1.b.x;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1301f, global1.b.x, global1.b.x), vec3<f32>(global1.b.x, 569f, -305f), false)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(548f + global1.b.x)), _wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.b.x, -984f), -687f)))));
    var var_3 = Struct_3(Struct_2(Struct_1(~abs(vec4<i32>(0i, u_input.a, global1.e.a.a.x, u_input.a))), reverseBits(_wgslsmith_clamp_i32(-1i, ~global1.e.b, _wgslsmith_add_i32(-1i, global1.e.a.a.x)))), _wgslsmith_f_op_vec2_f32(var_2.xx + var_2.zx), (reverseBits(_wgslsmith_dot_vec3_i32(global1.a.a.a.zyy, global1.a.a.a.xzx)) < global1.a.b) && (_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(var_2.x * 494f)) == _wgslsmith_f_op_f32(-var_2.x)), select(!vec2<bool>(true, !global2[_wgslsmith_index_u32(var_0.x, 19u)]), !(!vec2<bool>(global1.d.x, false)), false), Struct_2(Struct_1(vec4<i32>(~u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-31144i, u_input.a, 34300i), vec3<i32>(u_input.a, global1.a.a.a.x, u_input.a)), abs(global1.a.a.a.x), func_3(vec4<bool>(false, false, global2[_wgslsmith_index_u32(8401u, 19u)], true)))), select(-2147483647i, u_input.a, ~u_input.a > reverseBits(-57536i))));
    return _wgslsmith_sub_vec4_u32(firstTrailingBit(~firstLeadingBit(vec4<u32>(0u, 4294967295u, var_0.x, var_0.x) & vec4<u32>(17030u, 4294967295u, 0u, var_0.x))), reverseBits(vec4<u32>(7794u, firstTrailingBit(var_0.x), _wgslsmith_mod_u32(firstTrailingBit(var_0.x), 1u), reverseBits(var_0.x))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global1.e.a;
    var var_1 = !vec2<bool>(true, global1.c);
    var var_2 = arg_0;
    var var_3 = ~(abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 0u, 14815u), vec4<u32>(0u, 4294967295u, 28124u, 52526u))) & func_2());
    global2 = array<bool, 19>();
    return global1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 1>();
    var var_0 = func_1(global1.a.a);
    global1 = Struct_3(global1.a, global1.b, !all(select(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 19u)], false, false, true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(48961u, 0u), vec2<u32>(3218u, 4294967295u)), 1u)], global2[_wgslsmith_index_u32(59727u, 19u)])), vec2<bool>(true, true), Struct_2(Struct_1(var_0.a), (i32(-1i) * -23192i) & u_input.a));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.b.x, -888f), global1.b)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.b + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, global1.b.x) * vec2<f32>(global1.b.x, -1207f))), global1.b)));
    global1 = Struct_3(global1.e, global1.b, !any(vec4<bool>(global2[_wgslsmith_index_u32(14757u, 19u)] | global1.c, !global1.c, !global1.c, all(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 19u)], global1.c)))), !global1.d, Struct_2(Struct_1(vec4<i32>(max(global1.a.b, global1.e.a.a.x), _wgslsmith_add_i32(1i, 33153i), countOneBits(-2147483647i), 22174i)), _wgslsmith_add_i32(_wgslsmith_div_i32(var_0.a.x, global1.a.a.a.x), reverseBits(u_input.a)) << (~(~65571u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.x, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -218f)), global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2473f, -1473f, -536f, var_1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, 1138f, global1.b.x, var_1.x)))))), vec2<i32>(select(var_0.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(36786i, var_0.a.x, u_input.a, 0i), vec4<i32>(-34748i, 39400i, var_0.a.x, global1.a.b)), true), _wgslsmith_mod_i32(_wgslsmith_mod_i32(global1.e.b, 3146i), u_input.a)) & func_1(Struct_1(~var_0.a)).a.xz, 3632u, -309f, var_0.a.yx ^ func_1(func_1(func_1(global1.e.a))).a.xw);
}

