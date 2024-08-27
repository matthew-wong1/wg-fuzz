struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true));

var<private> global2: f32;

var<private> global3: array<vec3<i32>, 5>;

var<private> global4: array<f32, 12>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 12u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(34757u, 12u)] * -1204f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-904f + _wgslsmith_f_op_f32(select(-1194f, -285f, false)))));
    let var_1 = ~_wgslsmith_add_vec4_u32(~(~abs(vec4<u32>(11899u, 1u, 12040u, 0u))), ~(~firstLeadingBit(vec4<u32>(0u, 18999u, 22796u, 2218u))));
    global3 = array<vec3<i32>, 5>();
    var var_2 = -max(_wgslsmith_clamp_i32(abs(1i), -1i, _wgslsmith_dot_vec2_i32(-u_input.a, u_input.a)), ~(i32(-1i) * -u_input.a.x));
    global3 = array<vec3<i32>, 5>();
    return Struct_3(global0[_wgslsmith_index_u32(var_1.x, 17u)], Struct_1(!(!(!vec4<bool>(true, false, var_0.a, var_0.a)))));
}

fn func_3(arg_0: Struct_5, arg_1: f32) -> u32 {
    global3 = array<vec3<i32>, 5>();
    let var_0 = arg_0.b.a.x;
    global4 = array<f32, 12>();
    var var_1 = countOneBits(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u)) >> (1u % 32u), 5u)] >> (select(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 42294u), vec3<u32>(19887u, 132960u, 30954u)), abs(firstLeadingBit(vec3<u32>(1u, 63693u, 4294967295u))), select(func_2().b.a.yyx, !vec3<bool>(true, var_0, arg_0.b.a.x), true)) % vec3<u32>(32u)));
    var var_2 = Struct_2(select(min(_wgslsmith_mod_u32(46218u, 1u), countOneBits(1u)), ~1u, true));
    return _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(~var_2.a, var_2.a)), vec2<u32>(4294967295u, abs(0u) & var_2.a));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = func_2();
    let var_2 = func_3(Struct_5(vec2<i32>(~(~u_input.a.x), 1i), Struct_1(arg_0.a)), _wgslsmith_f_op_f32(abs(183f)));
    var_1 = Struct_3(arg_0, Struct_1(!(!vec4<bool>(var_1.b.a.x, false, true, var_1.a.a.x))));
    global2 = _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(26081u, 12u)]);
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(u_input.a, func_1(Struct_1(vec4<bool>(select(false, true, false), true, true, true)), ~(84166u >> (1u % 32u)) < (464u | _wgslsmith_clamp_u32(1u, 4294967295u, 1u))));
    let var_1 = var_0.b.a.x;
    var var_2 = true;
    var_0 = Struct_5(_wgslsmith_add_vec2_i32(var_0.a, max(vec2<i32>(~u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, -1i)), _wgslsmith_mod_vec2_i32(-vec2<i32>(2147483647i, 3692i), u_input.a))), global0[_wgslsmith_index_u32(abs(4294967295u), 17u)]);
    let var_3 = func_2().a;
    global3 = array<vec3<i32>, 5>();
    let var_4 = Struct_5(~vec2<i32>(3129i, 1i | _wgslsmith_add_i32(u_input.a.x, var_0.a.x)), Struct_1(select(!var_0.b.a, vec4<bool>(true, func_2().b.a.x, true, var_3.a.x), func_1(global0[_wgslsmith_index_u32(~0u, 17u)], !var_0.b.a.x).a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, max(2147483647i, ~u_input.a.x));
}

