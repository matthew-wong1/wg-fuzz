struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 7>;

var<private> global1: array<u32, 16> = array<u32, 16>(0u, 24293u, 0u, 32748u, 4294967295u, 7536u, 4294967295u, 1u, 0u, 19675u, 1u, 24754u, 37931u, 1u, 4294967295u, 1u);

var<private> global2: array<i32, 22>;

var<private> global3: vec2<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    global0 = array<vec3<bool>, 7>();
    return Struct_1(global3.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    global3 = vec2<u32>(global1[_wgslsmith_index_u32(min(global3.x, u_input.c) >> ((firstLeadingBit(1u) ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a, 20044u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_0.a), vec2<u32>(arg_1.a, arg_0.a)))) % 32u), 16u)], _wgslsmith_sub_u32(53914u, _wgslsmith_mult_u32(42926u, arg_1.a)) << (global3.x % 32u));
    var var_0 = arg_0;
    let var_1 = ~33738u;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-758f, -1337f), vec2<f32>(-813f, 2103f))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 1577f), vec2<f32>(-428f, 986f)))))));
    var var_3 = -(i32(-1i) * -global2[_wgslsmith_index_u32(func_2(Struct_1(0u), _wgslsmith_f_op_vec2_f32(vec2<f32>(354f, var_2.x) * vec2<f32>(var_2.x, -116f))).a, 22u)]);
    return ~min(select(vec2<u32>(arg_0.a, _wgslsmith_div_u32(95578u, global3.x)), ~(vec2<u32>(u_input.c, global3.x) & vec2<u32>(0u, 4294967295u)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), true)), _wgslsmith_mod_vec2_u32(~max(vec2<u32>(global3.x, 1u), vec2<u32>(u_input.c, var_1)), ~(~vec2<u32>(4294967295u, global3.x))));
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    global3 = ~select(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 72423u, 54924u), min(vec3<u32>(u_input.c, global3.x, 17130u), vec3<u32>(0u, global1[_wgslsmith_index_u32(arg_0.a, 16u)], 74861u))), 43679u ^ global1[_wgslsmith_index_u32(32085u, 16u)]), _wgslsmith_sub_vec2_u32(func_3(Struct_1(4294967295u), func_2(arg_0, vec2<f32>(-1195f, 1000f))), max(~vec2<u32>(21833u, 1u), vec2<u32>(arg_0.a, global3.x))), true);
    global2 = array<i32, 22>();
    global0 = array<vec3<bool>, 7>();
    var var_0 = -min(select(select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, u_input.b), vec2<i32>(1i, u_input.b)), countOneBits(vec2<i32>(global2[_wgslsmith_index_u32(84470u, 22u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46295u, 16u)], 22u)])), select(false, false, true)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.a) >> (vec2<u32>(4294967295u, 4432u) % vec2<u32>(32u)), reverseBits(vec2<i32>(-27501i, global2[_wgslsmith_index_u32(u_input.c, 22u)]))), true), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(u_input.d, 0i)), vec2<i32>(u_input.d, u_input.b) ^ vec2<i32>(global2[_wgslsmith_index_u32(global3.x, 22u)], -1i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.d, 2147483647i), vec3<i32>(global2[_wgslsmith_index_u32(arg_0.a, 22u)], global2[_wgslsmith_index_u32(global3.x, 22u)], -1i)), 2147483647i)));
    var_0 = vec2<i32>(var_0.x, -(((var_0.x >> (7906u % 32u)) >> (~0u % 32u)) ^ 2147483647i));
    return vec3<i32>(var_0.x, -29760i, global2[_wgslsmith_index_u32(81594u, 22u)]) << (vec3<u32>(_wgslsmith_div_u32(~4294967295u & ~global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 16986u, 0u, global3.x), vec4<u32>(0u, 0u, 4294967295u, global3.x))), countOneBits(firstTrailingBit(58631u)), 30758u) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<i32>(1i, 1i) | max(vec2<i32>(-global2[_wgslsmith_index_u32(min(1u, 0u), 22u)], ~1i), vec2<i32>(reverseBits(u_input.b), ~0i));
    global1 = array<u32, 16>();
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-161f, 1167f, 746f, 1002f) * vec4<f32>(524f, 189f, -823f, 611f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(247f, -655f, -279f, -893f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1178f, -522f, -328f)) * vec4<f32>(-2060f, -739f, 570f, 1480f))));
    global3 = ~(min(_wgslsmith_sub_vec2_u32(~vec2<u32>(global3.x, 4294967295u), abs(vec2<u32>(u_input.c, global3.x))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(global3.x, 48878u), vec2<u32>(global1[_wgslsmith_index_u32(1u, 16u)], 4294967295u))) >> (~vec2<u32>(~global3.x, countOneBits(u_input.c)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(Struct_1(u_input.c)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.zy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-322f, 2637f)))), _wgslsmith_f_op_vec2_f32(var_2.yw * _wgslsmith_f_op_vec2_f32(floor(var_2.ww)))), 0u, ~select(~max(vec4<u32>(u_input.c, 1u, u_input.c, 0u), vec4<u32>(u_input.c, 0u, u_input.c, 1u)), ~vec4<u32>(global3.x, global3.x, global1[_wgslsmith_index_u32(global3.x, 16u)], 0u), all(select(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(126305u, 16u)], 7u)], true))), reverseBits(select(~vec4<u32>(54304u, global3.x, 42706u, 23843u), ~vec4<u32>(32238u, global3.x, u_input.c, 1u), true)) & firstLeadingBit(vec4<u32>(0u, 52542u, ~17681u, firstTrailingBit(u_input.c))));
}

