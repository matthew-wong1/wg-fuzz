struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: Struct_1,
    d: i32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
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

var<private> global0: bool = false;

var<private> global1: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec3<f32> {
    let var_0 = (u_input.a >= select(i32(-1i) * -1i, -2147483647i, true)) & true;
    let var_1 = Struct_2(vec3<u32>(countOneBits(max(57234u, arg_0) >> (firstTrailingBit(1u) % 32u)), ~0u, _wgslsmith_mod_u32(1u, _wgslsmith_div_u32(select(19260u, 8327u, var_0), arg_0))));
    var var_2 = max(_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(~101751u, firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.b.xzz, vec3<u32>(arg_0, arg_0, 1u))), arg_0, ~var_1.a.x), vec4<u32>(~_wgslsmith_add_u32(1849u, u_input.c.x), firstLeadingBit(max(var_1.a.x, arg_0)), ~_wgslsmith_clamp_u32(0u, u_input.b.x, 4294967295u), u_input.c.x ^ u_input.b.x)), ~(~u_input.b));
    global0 = false;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(235f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-230f)), 1100f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1376f, -347f))) - _wgslsmith_f_op_f32(trunc(-280f)))));
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = Struct_1(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, any(global1[_wgslsmith_index_u32(17958u, 3u)]), !any(vec3<bool>(true, false, false))), any(vec2<bool>(true, 153f >= arg_0))), (u_input.b.x > select(0u, u_input.c.x >> (u_input.b.x % 32u), true)) | false, select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), !vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(~1u))))));
    global0 = ((i32(-1i) * -16668i) | u_input.a) != reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -29096i) << (vec3<u32>(15769u, 14664u, 45795u) % vec3<u32>(32u)), -max(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(u_input.a, 2147483647i, u_input.a))));
    global0 = u_input.a < -2147483647i;
    var var_1 = Struct_1(select(select(select(select(vec4<bool>(var_0.c.x, true, var_0.a.x, var_0.a.x), var_0.a, true), select(var_0.c, vec4<bool>(true, var_0.b, true, true), vec4<bool>(true, true, var_0.a.x, var_0.c.x)), var_0.b), var_0.c, var_0.a.x | var_0.a.x), select(vec4<bool>(var_0.a.x || false, all(var_0.c), true, !var_0.c.x), select(!var_0.c, vec4<bool>(false, var_0.c.x, false, var_0.b), all(vec2<bool>(var_0.b, false))), !(!var_0.c.x)), var_0.c), (_wgslsmith_sub_i32(-u_input.a, -40618i) & _wgslsmith_div_i32(u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a))) <= ~(~(~(-2147483647i))), select(vec4<bool>(var_0.c.x & any(var_0.c), any(vec4<bool>(var_0.c.x, true, var_0.a.x, var_0.b)), all(select(vec3<bool>(var_0.c.x, true, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, var_0.b), vec3<bool>(var_0.c.x, true, var_0.a.x))), all(var_0.a)), var_0.c, _wgslsmith_f_op_f32(exp2(var_0.d.x)) <= _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(-arg_0)), 1041f, 1711f))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-320f, _wgslsmith_f_op_f32(f32(-1f) * -604f))), -1262f)) + _wgslsmith_f_op_f32(f32(-1f) * -371f));
    return _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a << (0u % 32u), ~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -3732i), vec2<i32>(-63727i, 2147483647i))) << (_wgslsmith_mult_vec3_u32(u_input.b.yyx, vec3<u32>(~u_input.b.x, u_input.b.x, u_input.c.x)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), -u_input.a, -2147483647i));
}

fn func_1(arg_0: bool, arg_1: bool) -> bool {
    let var_0 = all(vec3<bool>(true, arg_1, !(!arg_0)));
    var var_1 = _wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(128f, _wgslsmith_f_op_f32(f32(-1f) * -513f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(285f * -139f) - -889f)), 121f)));
    var var_2 = abs(~u_input.b);
    var var_3 = vec4<i32>(min(u_input.a, ~max(~u_input.a, _wgslsmith_sub_i32(-24588i, u_input.a))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, ~u_input.a), -2147483647i), ~(-func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~u_input.a ^ firstLeadingBit(u_input.a));
    global1 = array<vec2<bool>, 3>();
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(round(-1000f));
    var var_1 = select(arg_1.a.a, vec4<bool>(true, _wgslsmith_div_i32(0i, select(u_input.a, arg_2.x, true)) <= _wgslsmith_div_i32(-1i, -2147483647i), true, select(false, true, arg_1.b.b) != arg_0), arg_0);
    var_1 = vec4<bool>(any(!(!vec4<bool>(false, true, arg_0, arg_1.b.b))), arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.a.d.x)) - arg_1.a.d.x))) <= 1446f, true);
    var_1 = select(select(arg_1.b.c, !select(arg_1.a.c, !arg_1.a.c, var_1.x), any(global1[_wgslsmith_index_u32(min(u_input.c.x, _wgslsmith_sub_u32(1u, arg_3.x)), 3u)])), vec4<bool>(all(!(!arg_1.a.a)), any(!arg_1.a.c.ywy), false, _wgslsmith_div_i32(_wgslsmith_clamp_i32(0i, -33281i, -45318i), u_input.a) > arg_2.x), any(vec2<bool>(false || arg_1.b.a.x, arg_1.b.b)));
    global0 = var_1.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(!(all(vec4<bool>(true, false, false, true)) | select(false, true, true)), false), Struct_4(Struct_1(vec4<bool>(u_input.c.x >= u_input.c.x, false, true, true), any(select(vec2<bool>(true, false), global1[_wgslsmith_index_u32(13916u, 3u)], vec2<bool>(true, false))), vec4<bool>(true, true, true, true), vec3<f32>(1863f, _wgslsmith_f_op_f32(f32(-1f) * -995f), _wgslsmith_f_op_f32(-166f + -438f))), Struct_1(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), false, !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), vec3<f32>(_wgslsmith_f_op_f32(step(549f, -428f)), _wgslsmith_f_op_f32(trunc(-254f)), -668f))), vec2<i32>(_wgslsmith_dot_vec2_i32(select(reverseBits(vec2<i32>(2147483647i, -24339i)), min(vec2<i32>(10101i, u_input.a), vec2<i32>(-2147483647i, 1i)), true), min(vec2<i32>(35504i, u_input.a), countOneBits(vec2<i32>(15634i, -2147483647i)))), -2147483647i), u_input.b);
    let var_0 = ~vec4<i32>(~(~_wgslsmith_div_i32(u_input.a, u_input.a)), -2147483647i, -7852i, u_input.a);
    global1 = array<vec2<bool>, 3>();
    let var_1 = vec4<i32>(_wgslsmith_add_i32(-24618i, i32(-1i) * -u_input.a), _wgslsmith_mult_i32(u_input.a ^ ~(-1i), u_input.a) | min(0i, u_input.a), -(~abs(var_0.x)) & (1i >> (_wgslsmith_mod_u32(15413u << (u_input.c.x % 32u), u_input.b.x) % 32u)), u_input.a);
    global1 = array<vec2<bool>, 3>();
    let var_2 = -779f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(round(-2097f)));
    var var_3 = abs(~(~4294967295u));
    let var_4 = -abs(var_0.x);
    let var_5 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-972f - -945f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1760f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1000f, 722f, var_2)), _wgslsmith_f_op_f32(796f * -666f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_5), var_5)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_5))), var_5));
}

