struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(-71444i, -1i), vec2<i32>(i32(-2147483648), 0i), vec3<u32>(45729u, 4294967295u, 54831u), vec3<bool>(false, true, false), vec4<i32>(-1i, -6094i, -7913i, -27132i));

var<private> global3: bool = false;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> vec2<f32> {
    global1 = arg_0.a.x;
    let var_0 = -2147483647i << (arg_1 % 32u);
    global3 = any(vec3<bool>(var_0 > _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, 28025i, global2.b.x) ^ u_input.b, vec4<i32>(65475i, 1i, arg_0.e.x, var_0)), global2.d.x, true));
    var var_1 = 4294967295u;
    global0 = array<i32, 22>();
    return _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(507f))) * _wgslsmith_f_op_f32(f32(-1f) * -871f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-818f * -867f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -1445f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1442f, -1473f) * vec2<f32>(795f, -826f)), true)), all(vec3<bool>(global2.d.x, false, global2.d.x)))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(720f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1194f)), -1023f, arg_0.d.x)))));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec4<u32> {
    let var_0 = 1i;
    let var_1 = 2182u << (reverseBits(0u) % 32u);
    let var_2 = arg_0.d.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(arg_0, ~_wgslsmith_add_u32(global2.c.x, global2.c.x) >> (0u % 32u), var_1)));
    let var_4 = vec3<i32>(_wgslsmith_sub_i32(min(var_0 << (~1u % 32u), global0[_wgslsmith_index_u32(abs(0u), 22u)]), 17766i & ((-1i & u_input.a) | -global0[_wgslsmith_index_u32(4294967295u, 22u)])), var_0, _wgslsmith_mod_i32(global2.b.x, 1i));
    return vec4<u32>(~var_1, arg_1, _wgslsmith_clamp_u32(abs(max(1u, var_1)), _wgslsmith_mod_u32(global2.c.x, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(16931u, global2.c.x)), vec2<u32>(var_1, var_1) >> (global2.c.yy % vec2<u32>(32u)))), ~abs(arg_0.c.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.c.x, arg_0.c.x, arg_1, 4294967295u), vec4<u32>(4294967295u, var_1, 22719u, global2.c.x)), ~33222u), arg_0.c.zx), ~(~global2.c.x)));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = any(select(!vec4<bool>(true, false, 0i <= global0[_wgslsmith_index_u32(global2.c.x, 22u)], !arg_2), select(select(!vec4<bool>(true, true, global2.d.x, arg_2), vec4<bool>(true, true, true, false), true), vec4<bool>(true, arg_2, true, arg_2), true != arg_2), select(!select(vec4<bool>(false, global2.d.x, false, true), vec4<bool>(false, arg_2, global2.d.x, false), global2.d.x), select(vec4<bool>(arg_2, global2.d.x, false, false), vec4<bool>(false, false, arg_2, arg_2), select(vec4<bool>(global2.d.x, global2.d.x, true, arg_2), vec4<bool>(arg_2, true, true, arg_2), true)), vec4<bool>(true, true, true, true))));
    return Struct_1(firstLeadingBit(global2.b), global2.a, reverseBits(vec3<u32>(4294967295u, arg_0, ~(~1u))), global2.d, -_wgslsmith_add_vec4_i32(vec4<i32>(29341i, firstLeadingBit(0i), ~global2.b.x, ~u_input.a), global2.e));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = -global2.b | vec2<i32>(select(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.b.x, global2.b.x, 35675i, global0[_wgslsmith_index_u32(50164u, 22u)]), vec4<i32>(global2.b.x, arg_0.e.x, 2147483647i, -1i) ^ global2.e), -1i, !global2.d.x), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_0.c, arg_0.c), 28802u), 22u)] >> (24379u % 32u));
    global0 = array<i32, 22>();
    global3 = false;
    global2 = arg_0;
    var var_1 = ~47702u;
    return func_4(_wgslsmith_mod_u32(~(~5884u), global2.c.x ^ 4294967295u) ^ ~max(4294967295u, 37438u >> (1u % 32u)), arg_0.e.x, 485f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-692f, 2786f)) - _wgslsmith_div_f32(490f, 429f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1902f + -272f), _wgslsmith_f_op_f32(sign(1780f)), global2.d.x))), vec4<u32>(arg_1, arg_1, max(max(_wgslsmith_mod_u32(arg_1, 26581u), ~22502u), _wgslsmith_clamp_u32(~0u, 1u, ~0u)), _wgslsmith_mult_u32(firstLeadingBit(global2.c.x), ~4294967295u) << (abs(arg_0.c.x >> (arg_0.c.x % 32u)) % 32u)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(func_4(countOneBits(~(~62591u)), global0[_wgslsmith_index_u32(abs(firstTrailingBit(global2.c.x) & _wgslsmith_add_u32(41662u, global2.c.x)), 22u)], global2.d.x, func_2(Struct_1(firstLeadingBit(u_input.b.zy), _wgslsmith_div_vec2_i32(global2.a, vec2<i32>(global2.e.x, 34725i)), global2.c, !global2.d, global2.e), ~(1u << (0u % 32u)))), global2.c.x << (~_wgslsmith_sub_u32(1088u, min(global2.c.x, 82368u)) % 32u));
    var var_1 = Struct_1(~(~(-u_input.b.zy | (vec2<i32>(var_0.e.x, global0[_wgslsmith_index_u32(58026u, 22u)]) | u_input.b.zx))), -global2.a, ~_wgslsmith_sub_vec3_u32(var_0.c, var_0.c >> (firstTrailingBit(var_0.c) % vec3<u32>(32u))), global2.d, _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, min(var_0.e.x, u_input.b.x), ~(-1i), max(global0[_wgslsmith_index_u32(4294967295u, 22u)], var_0.a.x)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, var_0.e.x), u_input.b), var_0.e.x, -45983i, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(var_0.c.x, 22u)], global0[_wgslsmith_index_u32(45908u, 22u)], global2.a.x))), _wgslsmith_add_vec4_i32(var_0.e, abs(vec4<i32>(0i, -2147483647i, 1i, global0[_wgslsmith_index_u32(global2.c.x, 22u)]))) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(global2.c.x, 4294967295u, global2.c.x, 16029u), vec4<u32>(var_0.c.x, global2.c.x, global2.c.x, 4294967295u)) % vec4<u32>(32u))));
    var var_2 = 1u;
    var var_3 = func_4(4294967295u, func_5(var_0, ~(var_1.c.x ^ 106404u)).a.x, func_5(Struct_1(vec2<i32>(-var_1.b.x, global2.b.x), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, var_1.a.x), vec2<i32>(var_1.b.x, 0i), var_0.a), global2.c, global2.d, var_0.e), _wgslsmith_mod_u32(global2.c.x ^ var_0.c.x, ~(~0u))).d.x, ~((select(vec4<u32>(var_1.c.x, var_1.c.x, global2.c.x, global2.c.x), vec4<u32>(var_0.c.x, var_0.c.x, global2.c.x, var_1.c.x), vec4<bool>(var_0.d.x, false, var_0.d.x, false)) & ~vec4<u32>(var_1.c.x, 4294967295u, 26108u, 4706u)) & max(vec4<u32>(1u, global2.c.x, 64045u, 0u), ~vec4<u32>(var_0.c.x, var_1.c.x, 0u, global2.c.x))));
    let var_4 = var_0;
    return Struct_1(var_0.e.zz, vec2<i32>(~_wgslsmith_add_i32(~u_input.a, -42465i), u_input.b.x), _wgslsmith_sub_vec3_u32(global2.c, _wgslsmith_clamp_vec3_u32(abs(_wgslsmith_div_vec3_u32(var_1.c, vec3<u32>(var_0.c.x, 48976u, 0u))), var_4.c, vec3<u32>(4294967295u, var_1.c.x, var_1.c.x & 1u))), select(vec3<bool>(all(vec3<bool>(var_3.d.x, var_1.d.x, false)) || true, false, false), vec3<bool>(func_5(Struct_1(u_input.b.xy, vec2<i32>(13851i, var_3.e.x), var_0.c, vec3<bool>(var_3.d.x, var_1.d.x, var_0.d.x), vec4<i32>(2147483647i, -54992i, global0[_wgslsmith_index_u32(global2.c.x, 22u)], -4669i)), ~4294967295u).d.x, (var_3.b.x ^ global0[_wgslsmith_index_u32(global2.c.x, 22u)]) != 1i, any(select(vec4<bool>(var_4.d.x, var_3.d.x, false, var_1.d.x), vec4<bool>(var_1.d.x, true, var_4.d.x, false), vec4<bool>(true, var_1.d.x, var_3.d.x, var_3.d.x)))), var_0.d.x | var_4.d.x), var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a);
}

