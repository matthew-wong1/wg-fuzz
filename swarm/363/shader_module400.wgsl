struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 14>;

var<private> global1: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-347f, -437f, 223f), vec3<f32>(976f, 1000f, -1650f), vec3<f32>(570f, -407f, 1178f));

var<private> global2: Struct_3 = Struct_3(-2122f, vec4<i32>(0i, 5478i, 36260i, -861i));

var<private> global3: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(1140f, vec4<i32>(8976i, 24531i, 1i, i32(-2147483648))), Struct_3(-1698f, vec4<i32>(1i, 1i, 2147483647i, 2147483647i)), Struct_3(1399f, vec4<i32>(0i, -39668i, 38503i, 1i)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(419f + global2.a), ~global2.b);
    return 0i;
}

fn func_3() -> bool {
    let var_0 = !(!((15050u & u_input.d) != select(1034u, u_input.a, all(vec2<bool>(true, true)))));
    let var_1 = Struct_5(!select(select(vec2<bool>(false, var_0), !vec2<bool>(var_0, false), !vec2<bool>(var_0, var_0)), select(vec2<bool>(true, true), vec2<bool>(var_0, false), vec2<bool>(var_0, var_0)), vec2<bool>(any(vec3<bool>(false, false, var_0)), var_0)));
    var var_2 = Struct_1(var_0);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + _wgslsmith_f_op_f32(select(-1049f, global2.a, true)))))));
    let var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.a)));
    return true;
}

fn func_1() -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(select(-func_2(), -1i | _wgslsmith_mult_i32(1i, global2.b.x), func_3()), (~u_input.c << (u_input.d % 32u)) & u_input.c), global2.b.x);
    let var_1 = vec2<f32>(1413f, 776f);
    let var_2 = Struct_1(all(vec3<bool>(true, true, true)) & func_3());
    let var_3 = var_0;
    global0 = array<vec4<bool>, 14>();
    return ~u_input.d;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: bool) -> Struct_5 {
    var var_0 = Struct_5(select(select(vec2<bool>(all(vec4<bool>(false, arg_2, false, arg_2)), true && arg_2), select(select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, true)), !vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2)), true), !vec2<bool>(!arg_2, any(vec2<bool>(arg_2, false))), vec2<bool>(any(vec2<bool>(true, true)), false)));
    global2 = arg_0;
    global0 = array<vec4<bool>, 14>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -239f) + arg_1.x), ~abs(vec3<u32>(u_input.d, u_input.a, ~u_input.d)), vec3<i32>(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0.b.x, 2147483647i), vec3<i32>(-2147483647i, global2.b.x, 2147483647i))), -firstLeadingBit(-17344i), global2.b.x));
    global1 = array<vec3<f32>, 3>();
    return Struct_5(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 14>();
    let var_0 = func_4(global3[_wgslsmith_index_u32(func_1(), 3u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-688f, global2.a)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-481f, global2.a), vec2<f32>(-875f, -643f)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.a, global2.a))), true & all(vec3<bool>(true, false, true)))), true);
    global3 = array<Struct_3, 3>();
    global2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1017f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-634f)), -2520f)))), vec4<i32>(_wgslsmith_add_i32(countOneBits(_wgslsmith_sub_i32(0i, 0i)), reverseBits(global2.b.x & u_input.b)), max(0i, -func_2()), 40965i, _wgslsmith_div_i32(2147483647i, ~u_input.c)));
    global1 = array<vec3<f32>, 3>();
    var var_1 = -vec3<i32>(0i, abs(~_wgslsmith_mult_i32(u_input.c, global2.b.x)), -15602i);
    global0 = array<vec4<bool>, 14>();
    let var_2 = max(_wgslsmith_div_vec2_u32(vec2<u32>(2592u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.d, 4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, u_input.d)))), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.d, u_input.a) & countOneBits(vec2<u32>(38104u, 32998u)), vec2<u32>(66507u, ~61157u))), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(u_input.d, 24817u)), abs(firstTrailingBit(vec2<u32>(u_input.d, u_input.a)))) ^ ~(select(vec2<u32>(u_input.a, u_input.d), vec2<u32>(49800u, u_input.a), true) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.d << (~var_2.x % 32u)) ^ max(~abs(1u), _wgslsmith_mod_u32(~u_input.d, 47886u)), vec2<i32>(-var_1.x, var_1.x));
}

