struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: bool,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    var var_0 = -12774i;
    var var_1 = -vec2<i32>(1i, u_input.c.x);
    var var_2 = select(vec3<bool>(true, true, true), select(vec3<bool>(true, any(vec3<bool>(false, true, true)), all(vec2<bool>(true, true))), vec3<bool>(true, true, !all(vec3<bool>(false, true, false))), any(vec3<bool>(true, true, true))), vec3<bool>(!(~48767i >= _wgslsmith_mod_i32(var_1.x, -1i)), ~abs(-23879i) < _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(0i, var_1.x)), 35214i < min(i32(-1i) * -1i, u_input.a.x)));
    var var_3 = Struct_4(all(select(!(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), vec4<bool>(var_2.x | var_2.x, select(false, true, var_2.x), var_2.x, true), vec4<bool>(true, false, select(var_2.x, false, var_2.x), any(vec3<bool>(true, false, var_2.x))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1071f, 525f, 1438f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1398f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-826f, _wgslsmith_f_op_f32(f32(-1f) * -717f))), true, countOneBits(-vec3<i32>(1i, var_1.x, -2147483647i)));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(select(275f, -494f, any(vec2<bool>(select(var_2.x, false, false), false)))), global0.x, _wgslsmith_f_op_vec2_f32(round(var_3.b.zz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-286f, var_3.b.x) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_3.b.yz)))) * vec2<f32>(1250f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)))));
    return vec3<i32>(12506i, ~var_1.x, _wgslsmith_div_i32(-2147483647i, abs(-12856i)) << (~_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_4.b, 65216u, 1u), 4294967295u) % 32u));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(true, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-229f - -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1000f))))), -164f), true, false, func_3());
    var_0 = Struct_4(var_0.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(354f + var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.x))), -1136f)), var_0.d && true, var_0.c, vec3<i32>(_wgslsmith_sub_i32(~u_input.a.x | -1i, 5102i), 23070i, ~min(var_0.e.x, ~u_input.a.x)));
    var var_1 = vec3<bool>(!(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(2147483647i, 2147483647i)) <= (i32(-1i) * -2147483647i)), true, var_0.c);
    global0 = vec3<u32>(abs(u_input.e.x), abs(countOneBits(u_input.e.x)), global0.x);
    var_1 = select(!vec3<bool>(var_0.c, !any(var_1.zx), var_0.a), select(vec3<bool>(true, true, true), select(select(!vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(var_0.a, var_0.a, var_0.d), vec3<bool>(true, true, false), var_1.x), select(vec3<bool>(var_0.d, var_0.a, false), vec3<bool>(var_0.d, false, var_0.a), false)), select(select(vec3<bool>(false, var_0.a, false), vec3<bool>(var_1.x, false, true), vec3<bool>(true, false, true)), !vec3<bool>(var_0.a, var_0.a, false), true), !(!vec3<bool>(var_1.x, true, var_1.x))), true), vec3<bool>(var_0.a, true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1000f)))) == _wgslsmith_div_f32(var_0.b.x, _wgslsmith_div_f32(153f, var_0.b.x))));
    return Struct_1(select(vec3<bool>(false, 844f >= _wgslsmith_f_op_f32(1006f * var_0.b.x), min(global0.x, 4294967295u) < ~0u), vec3<bool>(any(!vec4<bool>(var_0.d, false, true, var_0.a)), var_1.x, var_0.d), any(!select(vec3<bool>(var_0.d, false, var_0.d), vec3<bool>(var_0.d, var_0.d, var_1.x), true))), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(29203i, u_input.c.x, _wgslsmith_mod_i32(reverseBits(-1972i), _wgslsmith_dot_vec2_i32(u_input.c, u_input.c))), _wgslsmith_add_i32(_wgslsmith_sub_i32(firstLeadingBit(var_0.e.x), -39874i), firstTrailingBit(min(-2147483647i, u_input.c.x)))), -firstLeadingBit(0i));
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = func_2();
    var_0 = Struct_1(var_0.a, -9629i << (abs(select(u_input.b.x, ~22726u, var_0.a.x)) % 32u), -29275i);
    global0 = vec3<u32>(reverseBits(_wgslsmith_sub_u32(abs(global0.x), ~firstLeadingBit(17635u))), ~min(1u, global0.x), u_input.e.x);
    var_0 = Struct_1(!var_0.a, firstLeadingBit(_wgslsmith_mod_i32(~0i, _wgslsmith_clamp_i32(arg_0, 0i, arg_0)) | arg_0), -var_0.b);
    var var_1 = Struct_3(102793u);
    return !(!all(vec4<bool>(select(var_0.a.x, false, true), true, true, var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, true);
    var var_1 = reverseBits(_wgslsmith_sub_u32(global0.x, 0u));
    let var_2 = firstLeadingBit(u_input.e);
    var var_3 = Struct_1(!vec3<bool>(var_0.x, func_1(u_input.c.x ^ u_input.a.x), false), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(26523i, 2147483647i, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(-6794i, u_input.a.x, u_input.a.x), vec3<i32>(1i, u_input.a.x, u_input.a.x))) ^ ~_wgslsmith_mod_i32(-1i, u_input.a.x)), u_input.a.x);
    var_3 = Struct_1(vec3<bool>(false, false, _wgslsmith_mult_u32(var_2.x, ~global0.x) < (4294967295u ^ ~u_input.b.x)), _wgslsmith_sub_i32(~(~(u_input.c.x ^ 10456i)), 2147483647i), u_input.c.x);
    var_1 = ~(~_wgslsmith_clamp_u32(~u_input.b.x, 1u, var_2.x));
    let var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(global0.x);
}

