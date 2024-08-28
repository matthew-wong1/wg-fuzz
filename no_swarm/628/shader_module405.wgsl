struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<vec2<f32>, 11>;

var<private> global1: array<i32, 3>;

var<private> global2: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(0i, -9542i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(53112i, 59385i), vec2<i32>(21994i, i32(-2147483648)), vec2<i32>(-39148i, i32(-2147483648)), vec2<i32>(0i, 45664i), vec2<i32>(0i, 17252i), vec2<i32>(0i, 494i), vec2<i32>(-1i, -25059i), vec2<i32>(51230i, i32(-2147483648)), vec2<i32>(42704i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(13569i, i32(-2147483648)), vec2<i32>(-1i, -1i), vec2<i32>(1i, 28602i), vec2<i32>(1i, 48990i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -24714i), vec2<i32>(i32(-2147483648), -18804i), vec2<i32>(38694i, i32(-2147483648)), vec2<i32>(2147483647i, 31820i));

var<private> global3: array<vec3<f32>, 21>;

var<private> global4: vec4<i32> = vec4<i32>(17039i, 661i, -1i, -10751i);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>) -> u32 {
    var var_0 = Struct_1(select(countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(10886u, u_input.a), vec2<u32>(4294967295u, u_input.a))) & _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(26584u, 1u)), abs(vec2<u32>(u_input.a, 1u))), vec2<u32>(_wgslsmith_mod_u32(max(u_input.a, 26169u), ~4294967295u), _wgslsmith_clamp_u32(abs(1u), 24658u, ~u_input.a)), true), vec3<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))), !any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true))));
    var_0 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.a, ~4294967295u) | _wgslsmith_mult_vec2_u32(select(vec2<u32>(29228u, 48977u), var_0.a, var_0.b.xy), vec2<u32>(u_input.a, 50716u)), ~var_0.a), var_0.b);
    let var_1 = _wgslsmith_clamp_u32(~(~var_0.a.x), ~var_0.a.x, u_input.a);
    return _wgslsmith_dot_vec2_u32(vec2<u32>(max(1u, ~var_0.a.x), u_input.a << (u_input.a % 32u)), vec2<u32>(var_0.a.x, 59126u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = !(!vec2<bool>(arg_1.b.x, true));
    global2 = array<vec2<i32>, 22>();
    var var_1 = Struct_1(vec2<u32>(_wgslsmith_add_u32(reverseBits(1u), func_3(firstLeadingBit(vec4<i32>(global4.x, 27074i, 0i, -20591i)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3, arg_3, arg_3, arg_2))))), u_input.a), arg_0.b);
    var var_2 = Struct_1(~select(arg_0.a, ~var_1.a | (vec2<u32>(51305u, 0u) << (vec2<u32>(u_input.a, var_1.a.x) % vec2<u32>(32u))), var_0.x), !vec3<bool>(arg_1.b.x, arg_1.b.x, arg_0.b.x));
    return Struct_1(var_1.a, select(var_1.b, var_1.b, all(!var_2.b) != (!arg_1.b.x != true)));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_2(Struct_1(~vec2<u32>(u_input.a, u_input.a), arg_2.b), arg_2, _wgslsmith_f_op_f32(f32(-1f) * -2622f), -470f);
    var var_1 = Struct_1(var_0.a, !vec3<bool>(~1u > ~arg_2.a.x, arg_2.b.x, true));
    var var_2 = ~(~firstTrailingBit(~(~vec2<u32>(arg_2.a.x, 29440u))));
    global0 = array<vec2<f32>, 11>();
    let var_3 = ~(~_wgslsmith_add_i32(~1i, global4.x));
    return Struct_1(arg_2.a, arg_2.b);
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    var var_0 = ~func_1((-5498i ^ _wgslsmith_mult_i32(1925i, global4.x)) << (1u % 32u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-361f, _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1938f) * global0[_wgslsmith_index_u32(21563u, 11u)])))), arg_3).a;
    var var_1 = arg_2;
    let var_2 = firstLeadingBit(2147483647i) <= _wgslsmith_add_i32(~(~(~(-2147483647i))), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global2[_wgslsmith_index_u32(1u, 22u)], vec2<i32>(4503i, -16527i), vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], -37856i)), global2[_wgslsmith_index_u32(abs(47480u), 22u)]) ^ _wgslsmith_add_i32(1i, _wgslsmith_dot_vec3_i32(global4.wxy, vec3<i32>(-7748i, global4.x, global4.x))));
    global4 = -(~firstLeadingBit(vec4<i32>(abs(global4.x), select(global4.x, global1[_wgslsmith_index_u32(u_input.a, 3u)], arg_1.x), 0i >> (1u % 32u), ~(-2472i))));
    let var_3 = countOneBits(abs(2147483647i) << (func_1(firstTrailingBit(reverseBits(global1[_wgslsmith_index_u32(89936u, 3u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, arg_0)))), func_1(global4.x, vec2<f32>(arg_0, arg_0), func_2(arg_3, arg_3, arg_0, arg_0))).a.x % 32u));
    return all(!arg_3.b.xy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(func_4(_wgslsmith_f_op_f32(step(-1038f, 921f)), vec4<bool>(true, true, true, true), ~vec4<u32>(0u, 1u, 29298u, u_input.a), func_1(-1i, vec2<f32>(-257f, 1854f), Struct_1(vec2<u32>(u_input.a, 31769u), vec3<bool>(true, false, true)))), any(vec4<bool>(true, true, true, true)) & select(false, false, false), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)))));
    global1 = array<i32, 3>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2130f), 1336f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1074f), _wgslsmith_f_op_f32(ceil(100f)), !var_0.x))))));
    let var_2 = global3[_wgslsmith_index_u32(u_input.a, 21u)];
    let var_3 = !(!vec2<bool>(!all(var_0), var_0.x));
    global0 = array<vec2<f32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, max(global1[_wgslsmith_index_u32(~u_input.a, 3u)], reverseBits(~global4.x & abs(global4.x))));
}

