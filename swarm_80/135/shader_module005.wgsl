struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    let var_0 = vec2<bool>(true, !all(vec3<bool>(true, true, true)));
    global0 = array<vec3<bool>, 12>();
    let var_1 = var_0.x;
    var var_2 = Struct_1(select(var_0.x, all(vec3<bool>(var_0.x, var_0.x, true)), any(select(var_0, var_0, var_1)) == !var_0.x), ~countOneBits(min(max(-1i, -3324i), 2147483647i)));
    global0 = array<vec3<bool>, 12>();
    return true;
}

fn func_2() -> f32 {
    let var_0 = Struct_1(select(true, true || all(vec4<bool>(true, true, true, true)), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-357f, 1846f, 790f) * vec3<f32>(1000f, 920f, 1000f))))), 5157i);
    var var_1 = Struct_2(firstTrailingBit((-vec4<i32>(2147483647i, 20454i, 2147483647i, var_0.b) << (select(vec4<u32>(8180u, u_input.a.x, 41863u, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(var_0.a, true, var_0.a, var_0.a)) % vec4<u32>(32u))) | ~vec4<i32>(-29315i, var_0.b, var_0.b, var_0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1423f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1214f * 1491f))))), global0[_wgslsmith_index_u32(22230u, 12u)], 196f);
    var var_2 = u_input.a.x;
    var var_3 = Struct_2(abs(vec4<i32>(var_1.a.x & var_0.b, _wgslsmith_add_i32(2147483647i >> (u_input.a.x % 32u), -7162i), ~_wgslsmith_mod_i32(-2147483647i, 20066i), 1i)), vec2<f32>(var_1.d, -1070f), var_1.c, var_1.b.x);
    var_2 = ~abs(u_input.a.x) << (~(~_wgslsmith_dot_vec2_u32(~u_input.a, vec2<u32>(u_input.a.x, u_input.a.x))) % 32u);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(990f * _wgslsmith_f_op_f32(ceil(var_3.d)))));
}

fn func_1() -> i32 {
    let var_0 = u_input.a;
    global0 = array<vec3<bool>, 12>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -108f) * _wgslsmith_f_op_f32(-1734f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1414f - 133f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), 1589f, -446f);
    let var_2 = -firstLeadingBit(_wgslsmith_mult_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -34217i, 8778i, 33202i), vec4<i32>(-25398i, -728i, -18742i, 21780i))), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(0i, 23680i, 22864i, -50239i)), firstTrailingBit(vec4<i32>(13422i, -22242i, 2147483647i, 62889i)))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!any(vec2<bool>(true, true)), _wgslsmith_clamp_i32(firstTrailingBit(func_1()), _wgslsmith_mult_i32(~1i, 28462i), _wgslsmith_add_i32(select(-2147483647i, ~(-75221i), true), 1i)));
    var var_1 = Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(-var_0.b, var_0.b, _wgslsmith_mod_i32(var_0.b, var_0.b), var_0.b), select(vec4<i32>(max(39706i, var_0.b), 17398i, -2147483647i, var_0.b), ~(vec4<i32>(-2147483647i, 1i, var_0.b, var_0.b) >> (vec4<u32>(59399u, u_input.a.x, 4294967295u, u_input.a.x) % vec4<u32>(32u))), select(!vec4<bool>(true, false, true, var_0.a), select(vec4<bool>(var_0.a, true, var_0.a, false), vec4<bool>(true, true, true, false), vec4<bool>(var_0.a, false, true, false)), var_0.a)), -((vec4<i32>(var_0.b, var_0.b, var_0.b, var_0.b) | vec4<i32>(var_0.b, 0i, var_0.b, -2147483647i)) >> (~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1144f, 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-485f, -698f))))) * vec2<f32>(1f, 1f))), select(!vec3<bool>(!var_0.a, any(vec3<bool>(true, var_0.a, true)), true), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~select(u_input.a.x, u_input.a.x, true), u_input.a.x), 12u)], any(select(select(vec4<bool>(var_0.a, true, true, true), vec4<bool>(false, false, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, true, var_0.a)), select(vec4<bool>(var_0.a, false, var_0.a, true), vec4<bool>(var_0.a, true, var_0.a, var_0.a), var_0.a), !vec4<bool>(var_0.a, var_0.a, false, var_0.a)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1725f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -631f), _wgslsmith_f_op_f32(f32(-1f) * -1613f)))))));
    var var_2 = -(var_0.b << (u_input.a.x % 32u));
    var var_3 = Struct_1(select(!select(true, var_0.a, true), true | all(select(var_1.c, vec3<bool>(false, true, false), true)), var_0.a), 17326i);
    let var_4 = var_0.a;
    let var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1589f, _wgslsmith_f_op_f32(-var_1.b.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, var_1.b.x) * var_1.b))) + _wgslsmith_f_op_vec2_f32(var_1.b - _wgslsmith_f_op_vec2_f32(sign(var_1.b)))), 0u, 79652u, vec2<i32>(-2147483647i, ~_wgslsmith_sub_i32(-41586i, -50310i)));
}

