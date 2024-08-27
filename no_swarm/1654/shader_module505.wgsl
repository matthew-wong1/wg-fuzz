struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(16189u, vec3<bool>(false, true, true)), Struct_1(17702u, vec3<bool>(true, true, true)), Struct_1(4294967295u, vec3<bool>(true, false, true)), Struct_1(0u, vec3<bool>(false, true, true)), Struct_1(64316u, vec3<bool>(false, true, true)), Struct_1(4294967295u, vec3<bool>(false, true, true)), Struct_1(4294967295u, vec3<bool>(false, true, true)), Struct_1(4294967295u, vec3<bool>(false, true, false)), Struct_1(0u, vec3<bool>(true, true, true)), Struct_1(4294967295u, vec3<bool>(false, false, true)));

var<private> global1: i32 = -3872i;

var<private> global2: Struct_2;

var<private> global3: bool;

var<private> global4: array<vec4<f32>, 11>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_3 {
    return Struct_3(vec3<bool>(arg_0, 21843i >= (reverseBits(u_input.a.x) & -24320i), true), vec4<i32>(abs(abs(global2.b) << (arg_1 % 32u)), ~max(14299i, u_input.b.x), -8592i, -16098i));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> u32 {
    global3 = all(vec4<bool>(arg_1, true, arg_1 | arg_2.a.x, arg_2.a.x));
    global2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_div_f32(arg_0, 873f))), global2.a, true)), arg_2.b.x, select(true, false, arg_1), vec3<bool>(arg_2.a.x, false, all(vec3<bool>(any(vec4<bool>(arg_1, true, arg_2.a.x, true)), all(vec4<bool>(arg_1, false, arg_1, false)), !arg_1))));
    let var_0 = !(!vec3<bool>(any(vec3<bool>(arg_2.a.x, arg_2.a.x, false)), any(select(vec4<bool>(true, false, false, arg_2.a.x), vec4<bool>(arg_2.a.x, true, true, arg_1), global2.c)), (true | arg_1) || any(arg_2.a.zx)));
    global0 = array<Struct_1, 10>();
    global3 = any(select(select(vec4<bool>(true, any(arg_2.a), all(vec3<bool>(arg_2.a.x, arg_1, false)), all(vec4<bool>(true, false, true, false))), !select(vec4<bool>(false, true, true, global2.c), vec4<bool>(false, false, false, global2.c), arg_2.a.x), true), vec4<bool>(func_1(arg_2.a.x, _wgslsmith_clamp_u32(0u, 72639u, 8701u)).a.x, any(!vec4<bool>(false, global2.d.x, true, true)), !func_1(global2.c, 58658u).a.x, !(!arg_1)), !(!vec4<bool>(global2.d.x, true, arg_2.a.x, true))));
    return ~0u;
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec2<f32>, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_1(~func_3(_wgslsmith_f_op_f32(exp2(arg_1)), false, Struct_3(global2.d, vec4<i32>(7745i, -68852i, -2147483647i, arg_0.b.x))) | max(4294967295u, 1u), global2.d);
    var var_1 = firstTrailingBit(_wgslsmith_mod_i32(1i, countOneBits(select(-2147483647i, global2.b, !arg_0.a.x))));
    let var_2 = -(func_1((var_0.a >= 0u) && true, var_0.a).b.x ^ ~_wgslsmith_clamp_i32(1i, arg_3.x, _wgslsmith_dot_vec3_i32(arg_0.b.xww, vec3<i32>(arg_0.b.x, -4956i, 0i))));
    global2 = Struct_2(232f, u_input.a.x, var_0.b.x, func_1(any(arg_0.a), var_0.a).a);
    var var_3 = _wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.a, var_0.a, 0u, var_0.a), reverseBits(vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.a))), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, 4294967295u, var_0.a, var_0.a), vec4<u32>(19478u, var_0.a, var_0.a, 41940u)))), ~(~(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, 57333u, 34263u, var_0.a), vec4<u32>(var_0.a, var_0.a, 31149u, var_0.a)) | ~vec4<u32>(4294967295u, var_0.a, var_0.a, var_0.a))));
    return Struct_2(-1000f, ~(min(u_input.b.x, ~19971i) >> (countOneBits(~59258u) % 32u)), false, vec3<bool>(true, true, true));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec3_i32(u_input.b.zyz, -vec3<i32>(_wgslsmith_add_i32(arg_1.b, 2147483647i), arg_1.b, -u_input.b.x)) >> (_wgslsmith_add_u32(~4294967295u, ~(~(~72664u))) % 32u);
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    var var_1 = global2.b;
    var var_2 = global0[_wgslsmith_index_u32(101387u, 10u)];
    return Struct_3(vec3<bool>(global2.c, false, !(false & all(global2.d))), vec4<i32>(-2147483647i, ~(arg_1.b & func_1(global2.c, 65854u).b.x), firstTrailingBit(~u_input.a.x) << (~1u % 32u), countOneBits(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.ywx;
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.a)), _wgslsmith_f_op_f32(step(global2.a, global2.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-120f - 2104f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f)))), func_2(func_1(false & select(global2.d.x, global2.c, global2.c), ~(~3637u)), -1125f, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, global2.a)))))), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.yz, var_0.zx), ~0i), ~var_0.zz)));
    let var_2 = true;
    var var_3 = func_1(false, _wgslsmith_div_u32(1u, 7281u));
    let var_4 = _wgslsmith_mod_vec3_u32(~vec3<u32>(~1u, ~1u, select(~52438u, 1u, var_1.b.x < global2.b)), ~(vec3<u32>(abs(1u), ~4294967295u, 4294967295u) ^ select(abs(vec3<u32>(1u, 121762u, 809u)), vec3<u32>(1u, 1u, 1u), !vec3<bool>(false, var_3.a.x, true))));
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(trunc(-411f)), -619f))));
    let x = u_input.a;
    s_output = StorageBuffer(-func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.a))), func_2(Struct_3(var_1.a, vec4<i32>(global2.b, global2.b, global2.b, 67842i)), _wgslsmith_f_op_f32(-var_5.x), _wgslsmith_div_vec2_f32(vec2<f32>(-109f, var_5.x), vec2<f32>(var_5.x, var_5.x)), var_0.zy)).b.ww, _wgslsmith_mod_u32(32658u, _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 1u), firstLeadingBit(var_4.x))) >> ((var_4.x | var_4.x) % 32u));
}

