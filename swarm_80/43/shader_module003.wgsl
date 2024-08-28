struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: array<f32, 5>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(vec2<f32>(294f, -1085f)), Struct_1(vec2<f32>(229f, 1000f))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_3 {
    global1 = array<f32, 5>();
    global0 = array<i32, 30>();
    global3 = array<Struct_2, 1>();
    global0 = array<i32, 30>();
    var var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(global2.a))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, -663f) * global2.a)))));
    return Struct_3(~(~abs(~vec2<u32>(1u, 25072u))), vec4<i32>(~_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-10071i, global0[_wgslsmith_index_u32(5439u, 30u)]), vec2<i32>(-1i, -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(3901u, 30u)], -2147483647i, u_input.a, global0[_wgslsmith_index_u32(30663u, 30u)]), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(15462u, 30u)], 1i, u_input.a))), -8960i, _wgslsmith_add_i32(_wgslsmith_sub_i32(min(global0[_wgslsmith_index_u32(100158u, 30u)], -22333i), global0[_wgslsmith_index_u32(5904u, 30u)] >> (42847u % 32u)), ~countOneBits(global0[_wgslsmith_index_u32(4294967295u, 30u)])), ~_wgslsmith_mod_i32(2147483647i, u_input.a)), !vec2<bool>(all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), true)), true));
}

fn func_3() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_div_u32(abs(~0u), 16102u), ~53375u), 30u)];
    global1 = array<f32, 5>();
    var var_1 = false | !(all(vec3<bool>(true, true, true)) && false);
    var_0 = -2147483647i;
    var_0 = -global0[_wgslsmith_index_u32(1u, 30u)];
    return ~4294967295u | _wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(71817u, 0u), vec2<u32>(4006u, 0u)), ~vec2<u32>(58687u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(52098u, 8483u), vec2<u32>(23998u, 0u)))), vec2<u32>(1u, 1u));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3) -> Struct_4 {
    let var_0 = func_2();
    var var_1 = global3[_wgslsmith_index_u32(~func_3() << (var_0.a.x % 32u), 1u)];
    var var_2 = global3[_wgslsmith_index_u32(firstLeadingBit(5017u), 1u)];
    var var_3 = global2.a.x;
    var var_4 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.x, 1u, firstTrailingBit(arg_2.a.x)), vec3<u32>(_wgslsmith_div_u32(arg_2.a.x, 39054u), var_0.a.x, 34735u), vec3<u32>(arg_2.a.x, ~arg_2.a.x, ~1u)) << (((~firstTrailingBit(vec3<u32>(arg_2.a.x, 0u, arg_2.a.x)) ^ select(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.x, 2255u, var_0.a.x), vec3<u32>(arg_2.a.x, arg_2.a.x, 0u), vec3<u32>(39370u, var_0.a.x, 0u)), ~vec3<u32>(4468u, var_0.a.x, 54892u), false)) << (vec3<u32>(1u, 64261u, arg_2.a.x) % vec3<u32>(32u))) % vec3<u32>(32u));
    return Struct_4(Struct_2(var_1.a, var_1.a));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_4) -> Struct_4 {
    var var_0 = Struct_2(func_1(func_1(func_1(Struct_4(Struct_2(Struct_1(arg_3.a.a.a), Struct_1(arg_3.a.a.a))), ~arg_1.x, Struct_3(vec2<u32>(0u, 1u), arg_1, vec2<bool>(true, false))), u_input.a & (u_input.a & global0[_wgslsmith_index_u32(0u, 30u)]), func_2()), u_input.a, func_2()).a.a, arg_3.a.b);
    global2 = var_0.b;
    var var_1 = !select(true, all(vec4<bool>(true, true, true, any(vec3<bool>(false, false, false)))), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)));
    let var_2 = vec4<bool>(true, !any(vec2<bool>(true, true)), func_2().c.x, _wgslsmith_mod_u32(max(13738u, _wgslsmith_div_u32(1u, 41145u)), reverseBits(1u)) > ~max(_wgslsmith_mult_u32(0u, 4381u), func_3()));
    var var_3 = func_2();
    return arg_3;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: vec4<i32>) -> f32 {
    global0 = array<i32, 30>();
    var var_0 = any(!arg_1.zx);
    var var_1 = -1i;
    var var_2 = _wgslsmith_div_i32(2147483647i, _wgslsmith_div_i32(-global0[_wgslsmith_index_u32(1u, 30u)], ~(-1i)));
    let var_3 = vec3<bool>(true, false, !(arg_0.x | !arg_0.x));
    return _wgslsmith_f_op_f32(-126f - _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-199f, 396f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + func_4(global1[_wgslsmith_index_u32(~0u, 5u)], arg_3 << (vec4<u32>(4294967295u, 1u, 5387u, 53789u) % vec4<u32>(32u)), _wgslsmith_dot_vec4_i32(arg_3, arg_3), arg_2).a.a.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 51980u, 4294967295u), ~vec3<u32>(0u, 945u, 45253u))), select(~24772u, 23340u, !all(vec4<bool>(false, false, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global2.a.x)), _wgslsmith_f_op_f32(func_5(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_4(312f, ~vec4<i32>(global0[_wgslsmith_index_u32(94531u, 30u)], 9311i, global0[_wgslsmith_index_u32(var_0.x, 30u)], global0[_wgslsmith_index_u32(18828u, 30u)]), -1i, func_1(Struct_4(Struct_2(Struct_1(vec2<f32>(1000f, 427f)), Struct_1(global2.a))), -1i, Struct_3(vec2<u32>(var_0.x, 4294967295u), vec4<i32>(global0[_wgslsmith_index_u32(16620u, 30u)], 1i, 9740i, u_input.a), vec2<bool>(false, false)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 30u)], global0[_wgslsmith_index_u32(var_0.x, 30u)], -1i, -60271i), min(vec4<i32>(-224i, u_input.a, u_input.a, 0i), vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 30u)], -48600i, u_input.a, 0i)), vec4<i32>(2147483647i, 0i, u_input.a, -26246i) >> (vec4<u32>(21192u, var_0.x, 30688u, var_0.x) % vec4<u32>(32u))))))));
}

