struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 27>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_u32(reverseBits(u_input.b.x), u_input.b.x);
    let var_1 = Struct_1(_wgslsmith_add_vec2_i32(select(firstLeadingBit(vec2<i32>(-2147483647i, -2147483647i) & vec2<i32>(global0.a.a.x, global0.a.a.x)), u_input.c.yw, all(vec4<bool>(false, false, true, false))), global0.a.a));
    global0 = Struct_2(Struct_1(u_input.c.yw), _wgslsmith_f_op_f32(sign(-358f)), u_input.c.x, ~_wgslsmith_mod_u32(~(~var_0), ~u_input.a.x), Struct_1(-vec2<i32>(var_1.a.x & arg_0.a.x, ~(-2147483647i))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -740f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-526f)) + _wgslsmith_f_op_f32(-global0.b)))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> Struct_2 {
    global1 = array<f32, 27>();
    var var_0 = Struct_2(Struct_1(vec2<i32>(-14128i, _wgslsmith_mod_i32(global0.e.a.x, _wgslsmith_dot_vec3_i32(u_input.c.wwy, vec3<i32>(u_input.d, u_input.c.x, global0.e.a.x))))), _wgslsmith_f_op_f32(func_3(Struct_1((u_input.c.yw >> (vec2<u32>(u_input.a.x, global0.d) % vec2<u32>(32u))) >> ((u_input.a >> (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u))))), -24721i, _wgslsmith_add_u32(global0.d, ~13380u), global0.e);
    let var_1 = Struct_1(abs(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, -86903i), vec2<i32>(global0.a.a.x, -14536i) << (vec2<u32>(arg_1, 1u) % vec2<u32>(32u)), u_input.c.yz << (u_input.b % vec2<u32>(32u))))));
    let var_2 = arg_0.yz;
    let var_3 = firstLeadingBit(_wgslsmith_div_i32(global0.c, abs(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, 28511i, 1173i), u_input.c), -11978i))));
    return Struct_2(Struct_1(vec2<i32>(_wgslsmith_div_i32(-34278i, u_input.d), var_3) & ~(-var_1.a)), -620f, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~u_input.c.x, u_input.c.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c.xxz, vec3<i32>(global0.a.a.x, 21287i, 0i)), u_input.c.wzw | vec3<i32>(u_input.d, global0.c, -1i))), -1i), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 1u), countOneBits(u_input.a)), _wgslsmith_div_u32(~var_0.d, var_0.d)), var_0.e);
}

fn func_1() -> vec3<f32> {
    global1 = array<f32, 27>();
    global0 = func_2(!vec4<bool>(_wgslsmith_mod_i32(global0.c, 55658i) != 2147483647i, true, true, true), 78137u);
    global0 = Struct_2(global0.e, func_2(!vec4<bool>(true, true, all(vec4<bool>(true, false, true, false)), false), _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.d, u_input.a.x, u_input.a.x, global0.d) << (~vec4<u32>(0u, global0.d, 16261u, 11635u) % vec4<u32>(32u)), ~abs(vec4<u32>(u_input.a.x, 31840u, 43910u, 1u)))).b, u_input.c.x, _wgslsmith_sub_u32(global0.d, global0.d), global0.e);
    var var_0 = vec2<i32>(-global0.c, firstLeadingBit(global0.a.a.x));
    global0 = func_2(vec4<bool>(all(vec4<bool>(false, false, true, false)) == true, any(!select(vec2<bool>(false, false), vec2<bool>(false, true), false)), false, true), _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a.x << (abs(4294967295u) % 32u), global0.d), ~u_input.a.x));
    return vec3<f32>(_wgslsmith_f_op_f32(max(-683f, -3192f)), _wgslsmith_f_op_f32(484f * 583f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.d, firstLeadingBit(global0.d), u_input.b.x & 4294967295u), 27u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, 1115f, -355f) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_1()))));
    var var_1 = vec4<f32>(global0.b, _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~0u, 27u)] + global1[_wgslsmith_index_u32(~37077u, 27u)])))), _wgslsmith_f_op_f32(step(835f, _wgslsmith_f_op_f32(117f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(156f * global1[_wgslsmith_index_u32(global0.d, 27u)])))))));
    var var_2 = vec3<f32>(-2056f, global0.b, _wgslsmith_f_op_f32(f32(-1f) * -176f));
    let var_3 = true;
    let var_4 = _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(global0.a.a >> (vec2<u32>(1u, global0.d) % vec2<u32>(32u)), vec2<i32>(2147483647i, -2147483647i)), firstTrailingBit(_wgslsmith_mult_i32(global0.c, global0.e.a.x)), _wgslsmith_dot_vec4_i32(u_input.c, u_input.c) | abs(u_input.d), -global0.a.a.x)), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.c.x, ~(-61602i), select(-2147483647i, 2147483647i, var_3), 0i ^ global0.c), countOneBits(u_input.c)));
    var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-global0.b), 813f))))));
    let var_5 = func_2(!select(!select(vec4<bool>(true, false, var_3, var_3), vec4<bool>(var_3, var_3, var_3, false), true), select(!vec4<bool>(var_3, false, false, var_3), !vec4<bool>(false, false, false, var_3), var_3), vec4<bool>(any(vec4<bool>(true, var_3, true, false)), any(vec2<bool>(false, var_3)), true, true)), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~4058i, -2493i, _wgslsmith_div_i32(2147483647i, 26047i)));
}

