struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(193f, -491f), vec2<f32>(1715f, -1288f), vec2<f32>(-1000f, 126f), vec2<f32>(981f, -383f), vec2<f32>(-807f, -215f), vec2<f32>(819f, 1086f), vec2<f32>(-1000f, 580f), vec2<f32>(2317f, -1549f), vec2<f32>(-355f, -301f), vec2<f32>(1936f, -973f), vec2<f32>(114f, -959f), vec2<f32>(-1000f, 1192f), vec2<f32>(-565f, 110f), vec2<f32>(392f, 1076f));

var<private> global2: array<Struct_1, 7>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1050f + -1713f))) + _wgslsmith_f_op_f32(-737f - _wgslsmith_f_op_f32(1008f * -605f)))));
    var var_1 = !all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    let var_2 = !select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), !select(vec2<bool>(false, true), vec2<bool>(false, true), false), false), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), vec2<bool>(all(vec4<bool>(false, false, true, false)), true)), true);
    global0 = u_input.c;
    var var_3 = vec2<f32>(3588f, _wgslsmith_f_op_f32(-var_0));
    return u_input.a;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(firstTrailingBit(min(45190u & (u_input.a << (u_input.c % 32u)), select(_wgslsmith_mult_u32(u_input.c << (1u % 32u), reverseBits(u_input.c)), u_input.c, any(vec2<bool>(true, true))))), 7u)];
    let var_1 = !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true));
    var var_2 = !(!select(false, -1883f == var_0.a.x, !var_1.x)) && true;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x), -115f, _wgslsmith_f_op_f32(select(-430f, 441f, var_1.x))))));
    var var_4 = var_1.x;
    return ~(u_input.c << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c, 6760u) << (~vec3<u32>(12876u, u_input.a, 0u) % vec3<u32>(32u)), firstTrailingBit(~vec3<u32>(u_input.c, 53692u, u_input.c))) % 32u));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global0 = countOneBits(abs(u_input.a));
    let var_0 = all(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), any(vec3<bool>(false, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(true, true, true)), !vec3<bool>(true, true, any(vec2<bool>(true, true))), true));
    var var_1 = var_0;
    let var_2 = global2[_wgslsmith_index_u32(min(u_input.c, ~_wgslsmith_add_u32(firstLeadingBit(u_input.a), u_input.a)), 7u)];
    global1 = array<vec2<f32>, 14>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_3.a.x))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global0 = ~_wgslsmith_div_u32(18076u, _wgslsmith_mult_u32(8137u, 1u));
    global1 = array<vec2<f32>, 14>();
    let var_0 = min(4294967295u, func_2());
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(403f, arg_2.a.x, arg_3.a.x), vec3<f32>(547f, arg_2.a.x, arg_2.a.x)))) + arg_3.a.zxz), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.c, 8106u), vec4<u32>(0u, u_input.c, 0u, var_0)), 44863u), 7u)], Struct_1(arg_2.a), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(44564u, ~var_0, func_3(Struct_1(arg_3.a), vec4<i32>(u_input.b, 1i, arg_1.x, arg_1.x))), select(select(vec3<u32>(var_0, 1u, u_input.c), vec3<u32>(var_0, 85078u, 16624u), arg_0.x), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0, u_input.c, u_input.a), vec3<u32>(var_0, u_input.c, var_0)), !arg_0.x)), 7u)])));
    return arg_0.zx;
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: f32) -> vec2<u32> {
    global1 = array<vec2<f32>, 14>();
    global1 = array<vec2<f32>, 14>();
    global1 = array<vec2<f32>, 14>();
    global2 = array<Struct_1, 7>();
    let var_0 = u_input.b;
    return max(vec2<u32>(min(_wgslsmith_div_u32(u_input.c, _wgslsmith_mod_u32(4294967295u, 4294967295u)), u_input.a), ~u_input.a), ~(~(~vec2<u32>(1u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~u_input.c, 7u)];
    global2 = array<Struct_1, 7>();
    global2 = array<Struct_1, 7>();
    var var_1 = func_5(any(!(!func_1(vec4<bool>(true, false, false, true), vec3<i32>(-65746i, 41555i, 0i), Struct_1(vec4<f32>(-303f, 782f, var_0.a.x, var_0.a.x)), global2[_wgslsmith_index_u32(87209u, 7u)]))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b >> (68162u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, -37993i), vec3<i32>(23916i, u_input.b, 20684i)), -21821i & u_input.b) ^ min(~vec3<i32>(-2147483647i, -10168i, u_input.b), vec3<i32>(u_input.b, -1i, -33073i)), vec3<i32>(~(-1i), -select(-2147483647i, 27152i, false), u_input.b)), func_1(vec4<bool>(true, true, true, true), vec3<i32>(~u_input.b, 1i, 0i), global2[_wgslsmith_index_u32(u_input.a, 7u)], Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(791f, var_0.a.x, var_0.a.x, var_0.a.x) * var_0.a) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.x, var_0.a.x, 107f, var_0.a.x)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x))));
    global0 = _wgslsmith_dot_vec4_u32((_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c, var_1.x, var_1.x) & vec4<u32>(var_1.x, u_input.a, u_input.a, var_1.x), reverseBits(vec4<u32>(50067u, 4626u, 0u, var_1.x))) & vec4<u32>(26840u, 11890u, ~var_1.x, 1u)) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(7594u, u_input.a, 0u, var_1.x), vec4<u32>(1u, 1u, u_input.a, var_1.x)) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.c, 80477u, 87903u, 0u)) | firstLeadingBit(vec4<u32>(~39594u, abs(u_input.c), u_input.c, var_1.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-570f, _wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)), var_0.a.x, _wgslsmith_f_op_f32(step(var_0.a.x, 3298f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_mod_u32(29015u, _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(abs(349u), abs(35845u)))));
}

