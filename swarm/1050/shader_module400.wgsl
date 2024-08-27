struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(1i, 1305i, 1i, -7325i), vec4<i32>(i32(-2147483648), 30008i, 2147483647i, 7182i), vec4<i32>(5092i, 1i, -20799i, -1i), vec4<i32>(6122i, -8204i, 0i, -1i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), -6585i), vec4<i32>(-1i, -26440i, -26110i, 1i), vec4<i32>(37337i, 29608i, -50491i, 1i), vec4<i32>(0i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(-25854i, i32(-2147483648), -3992i, -30354i), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 9798i), vec4<i32>(-42026i, 0i, -13540i, i32(-2147483648)), vec4<i32>(2147483647i, 5957i, 53181i, 0i), vec4<i32>(-1i, 2147483647i, -4043i, 23891i), vec4<i32>(-45997i, -45202i, -1i, -18714i), vec4<i32>(0i, 17002i, -10195i, i32(-2147483648)), vec4<i32>(-1i, 41896i, i32(-2147483648), 10410i), vec4<i32>(-33330i, 2147483647i, -15774i, 1i), vec4<i32>(-1i, -5660i, 2147483647i, 46499i), vec4<i32>(-1i, 709i, 17461i, 1i), vec4<i32>(2147483647i, 1i, 2147483647i, 2147483647i), vec4<i32>(-4476i, -2184i, -1i, 0i), vec4<i32>(-1i, 0i, 9012i, -12782i), vec4<i32>(860i, 28168i, i32(-2147483648), 10685i), vec4<i32>(1i, -26853i, -12804i, 13355i), vec4<i32>(-43396i, i32(-2147483648), -61394i, -5321i), vec4<i32>(19881i, 34827i, 1i, 38016i), vec4<i32>(0i, i32(-2147483648), -1i, 867i), vec4<i32>(2147483647i, -38398i, 51313i, i32(-2147483648)), vec4<i32>(12751i, 0i, -11028i, i32(-2147483648)), vec4<i32>(-12120i, 1i, 2147483647i, 703i), vec4<i32>(i32(-2147483648), -1i, 1i, 6461i));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(arg_1.a);
    var_0 = Struct_1(vec4<u32>(~u_input.a, 16014u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~var_0.a.x), firstTrailingBit(vec2<u32>(arg_1.a.x, arg_1.a.x))), ~0u));
    var_0 = arg_1;
    let var_1 = select(vec3<bool>(select(arg_0.x, true, any(vec2<bool>(true, true))), !all(select(arg_0.wz, arg_0.zx, vec2<bool>(arg_0.x, false))), false), select(vec3<bool>(false, arg_0.x, arg_0.x != arg_0.x), vec3<bool>(!(var_0.a.x > 9962u), arg_0.x, _wgslsmith_clamp_i32(2933i, -86470i, u_input.c) == u_input.c), vec3<bool>(arg_0.x, true, !(!arg_0.x))), false);
    let var_2 = 0u;
    return countOneBits(var_0.a);
}

fn func_2() -> u32 {
    var var_0 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, u_input.a) | abs(68543u), 0u), _wgslsmith_mult_u32(u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(32354u, 14952u, u_input.a))), 9895u | reverseBits(u_input.a), 0u));
    global1 = array<vec4<i32>, 31>();
    var var_1 = Struct_2(Struct_1(vec4<u32>(0u, u_input.a, ~(~1u), u_input.a)), Struct_1(max(var_0.a, _wgslsmith_clamp_vec4_u32(~var_0.a, select(var_0.a, vec4<u32>(u_input.a, 68924u, 0u, u_input.a), true), func_3(vec4<bool>(false, false, false, false), Struct_1(vec4<u32>(u_input.a, u_input.a, 0u, 37224u)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(769f, global0.x, -2051f, 1081f) * vec4<f32>(global0.x, 1321f, global0.x, -485f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1471f, 1339f, global0.x, global0.x), vec4<f32>(global0.x, global0.x, 169f, global0.x), vec4<bool>(true, true, false, true)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 2065f, -338f, 1000f)))))));
    let var_2 = ~select(674u, 30268u, !select(all(vec2<bool>(false, true)), any(vec3<bool>(true, false, false)), true));
    var var_3 = Struct_2(var_1.a, var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c - vec4<f32>(var_1.c.x, 200f, -821f, global0.x)) - _wgslsmith_f_op_vec4_f32(var_1.c - var_1.c)))));
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(~4294967295u, ~1u, var_3.b.a.x), abs(vec3<u32>(var_0.a.x, 1u, 4294967295u))), vec3<u32>(~(~5375u), firstTrailingBit(firstTrailingBit(1u)), 32256u)), ~4294967295u >> ((var_3.b.a.x & var_3.b.a.x) % 32u));
}

fn func_1() -> Struct_2 {
    global1 = array<vec4<i32>, 31>();
    global1 = array<vec4<i32>, 31>();
    var var_0 = ~min(_wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(4294967295u, 31u)], vec4<i32>(i32(-1i) * -33981i, _wgslsmith_mult_i32(u_input.c, u_input.b), u_input.c, reverseBits(15148i))), global1[_wgslsmith_index_u32(abs(~func_2()), 31u)]);
    let var_1 = max(max(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(34700i, -2423i, u_input.b, 2147483647i)), ~(~global1[_wgslsmith_index_u32(u_input.a, 31u)])), vec4<i32>(-25557i, ~u_input.c, -var_0.x, -u_input.b)), _wgslsmith_add_vec4_i32(~global1[_wgslsmith_index_u32(1u, 31u)] & (vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x) >> (~vec4<u32>(0u, 1u, u_input.a, 1u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.zx, var_0.xw | var_0.yx), var_0.x, min(u_input.c, 1i), u_input.b)));
    let var_2 = select(vec4<bool>(select(any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), all(vec3<bool>(false, true, false)), all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false))), true, 384f != global0.x, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, _wgslsmith_div_f32(-280f, -1139f) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), !(u_input.a != 1u), any(vec3<bool>(true, true, 635f != global0.x))));
    return Struct_2(Struct_1(~vec4<u32>(_wgslsmith_div_u32(89600u, 66786u), ~u_input.a, _wgslsmith_add_u32(u_input.a, 37914u), ~u_input.a)), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(23494u, u_input.a, 60825u, 4294967295u) | firstTrailingBit(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)), ~vec4<u32>(1u, 0u, 32555u, 4294967295u))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -677f), _wgslsmith_f_op_f32(-312f * -602f))))), _wgslsmith_div_f32(-345f, -778f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x + global0.x))) - _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global0.x) - _wgslsmith_f_op_f32(step(global0.x, 753f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = true;
    let var_2 = Struct_3(func_1().a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-785f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(384f, 1130f)))));
    var var_3 = -firstTrailingBit(2739i);
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)), _wgslsmith_div_vec4_f32(var_0.c, var_0.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1943f, _wgslsmith_f_op_f32(var_0.c.x * var_0.c.x), var_2.b, 2436f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c + var_0.c))))));
    let var_4 = Struct_2(var_0.b, var_2.a, _wgslsmith_f_op_vec4_f32(-var_0.c));
    var var_5 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b, global0.x, -1775f, -116f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_0.c))) * vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b * var_4.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1365f + 1880f), _wgslsmith_f_op_f32(trunc(563f))))), select(select(!(!vec4<bool>(var_1, false, true, true)), vec4<bool>(true, true, select(false, false, true), true), select(select(vec4<bool>(false, var_1, false, var_1), vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(var_1, var_1, var_1, false)), vec4<bool>(true, true, true, true), !var_1)), vec4<bool>(var_1, var_1, true, _wgslsmith_f_op_f32(floor(-511f)) >= _wgslsmith_f_op_f32(f32(-1f) * -231f)), vec4<bool>(all(select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(false, var_1, var_1, true), true)), !(u_input.b == 36807i), var_1, !var_1))));
    var_5 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_4.c, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-512f - global0.x), var_0.c.x)), var_5.x, var_2.b, var_4.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_4.c, vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.c.x)), var_2.b, var_5.x, _wgslsmith_f_op_f32(f32(-1f) * -423f))))));
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(func_1().c.zy, -2147483647i, -vec4<i32>(1i, abs(u_input.b), ~2147483647i, ~(-1i)) & vec4<i32>(-2147483647i, 24325i, ~(~u_input.b), 1i));
}

