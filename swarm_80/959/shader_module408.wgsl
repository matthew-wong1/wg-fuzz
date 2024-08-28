struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: array<vec4<bool>, 15>;

var<private> global2: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(true, false, false, false));

var<private> global3: f32 = -1000f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: i32) -> Struct_1 {
    global3 = 612f;
    let var_0 = arg_0 > -42670i;
    let var_1 = Struct_1(0u > (u_input.a.x >> (u_input.a.x % 32u)), var_0, _wgslsmith_div_u32(u_input.a.x, ~(~u_input.a.x)));
    var var_2 = -1466f;
    global2 = array<vec4<bool>, 1>();
    return Struct_1(true, any(vec4<bool>(!any(vec3<bool>(false, var_0, var_0)), all(vec3<bool>(true, var_1.a, var_1.b)), !var_1.a, true)), 1u);
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x);
    global1 = array<vec4<bool>, 15>();
    let var_0 = func_2(~(-10971i));
    global2 = array<vec4<bool>, 1>();
    global1 = array<vec4<bool>, 15>();
    return global0[_wgslsmith_index_u32(20049u, 7u)];
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32) -> bool {
    let var_0 = ~(-22683i);
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1863f)), -482f)));
    var var_2 = func_2(_wgslsmith_mult_i32(-18138i | _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], var_0) >> (vec2<u32>(7805u, 72724u) % vec2<u32>(32u)), vec2<i32>(var_0, 4767i) | vec2<i32>(-2147483647i, 30537i)), ~var_0));
    var_1 = vec2<f32>(arg_2, _wgslsmith_f_op_f32(arg_2 * arg_2));
    let var_3 = arg_1;
    return any(select(select(select(select(vec2<bool>(var_3.a, var_2.b), vec2<bool>(var_2.b, true), true), select(vec2<bool>(true, var_3.a), vec2<bool>(var_2.b, false), true), select(vec2<bool>(false, var_2.a), vec2<bool>(var_2.a, false), vec2<bool>(var_2.a, true))), select(vec2<bool>(arg_1.b, var_2.a), vec2<bool>(true, false), !vec2<bool>(var_2.b, false)), any(vec4<bool>(var_2.b, true, true, var_3.a))), !select(!vec2<bool>(arg_1.b, var_3.b), select(vec2<bool>(var_2.a, var_2.a), vec2<bool>(arg_1.b, true), vec2<bool>(true, true)), vec2<bool>(true, var_3.b)), false));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = func_2(abs(global0[_wgslsmith_index_u32(~func_2(global0[_wgslsmith_index_u32(34932u, 7u)]).c, 7u)]) ^ 0i);
    global1 = array<vec4<bool>, 15>();
    global0 = array<i32, 7>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1913f), 721f)))));
    let var_2 = vec3<i32>(0i, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 7u)], 46977i);
    return vec4<u32>(max(~(~arg_1.c), ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), ~abs(u_input.a.x), ~(~(~arg_1.c)), _wgslsmith_clamp_u32(83794u, abs(u_input.a.x) | 0u, min(1u, ~4294967295u))) >> (u_input.a % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(3159u, 7u)], -firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), -func_1(vec4<f32>(609f, -933f, -124f, 1203f)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x), 7u)])) << (func_4(select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, true, func_3(u_input.a.yyy, Struct_1(true, true, u_input.a.x), 874f))), Struct_1(func_2(firstTrailingBit(global0[_wgslsmith_index_u32(24648u, 7u)])).b, firstTrailingBit(0u) <= _wgslsmith_mod_u32(u_input.a.x, 17692u), _wgslsmith_dot_vec4_u32(min(vec4<u32>(7297u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(6003u, 1u, u_input.a.x, 4294967295u)), u_input.a))) % vec4<u32>(32u));
    var var_1 = func_2(reverseBits(min(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, var_0.x), reverseBits(vec3<i32>(-14141i, -98118i, var_0.x))), max(global0[_wgslsmith_index_u32(4294967295u, 7u)], -1i) >> (_wgslsmith_div_u32(1473u, u_input.a.x) % 32u))));
    var var_2 = select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(var_1.b, var_1.a), select(vec2<bool>(true, true), vec2<bool>(true, var_1.b), true)), vec2<bool>(all(vec2<bool>(var_1.a, var_1.b)), var_1.b), vec2<bool>(var_1.a, true)), var_1.b && all(!vec2<bool>(true, var_1.a))), vec2<bool>(var_0.x > abs(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 7u)]), var_1.b), ((2560u >> ((u_input.a.x >> (u_input.a.x % 32u)) % 32u)) << (_wgslsmith_mult_u32(~1607u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)) % 32u)) == 51305u);
    var_1 = func_2(var_0.x);
    let var_3 = func_2(var_0.x);
    var var_4 = func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(_wgslsmith_div_i32(0i, global0[_wgslsmith_index_u32(4294967295u, 7u)])), 1i, ~1i), var_0.yzy));
    global1 = array<vec4<bool>, 15>();
    let var_5 = func_2(~(i32(-1i) * -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-284f * -443f), -574f))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1404f), _wgslsmith_f_op_f32(trunc(-1432f))) + -896f)));
}

