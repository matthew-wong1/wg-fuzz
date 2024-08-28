struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 29>;

var<private> global1: array<vec4<u32>, 7>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global0 = array<vec3<f32>, 29>();
    var var_0 = Struct_1(reverseBits(~(~firstLeadingBit(110204u))), all(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)))));
    global1 = array<vec4<u32>, 7>();
    let var_1 = !(!(!vec4<bool>(true, all(vec4<bool>(var_0.b, var_0.b, true, var_0.b)), var_0.b, 0u > var_0.a)));
    var var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, 0u, var_0.a, 101720u) << (vec4<u32>(var_0.a, 4294967295u, var_0.a, var_0.a) % vec4<u32>(32u)), ~(~global1[_wgslsmith_index_u32(var_0.a, 7u)])), ~abs(global1[_wgslsmith_index_u32(firstLeadingBit(1u), 7u)])), vec4<u32>(var_0.a, _wgslsmith_add_u32(1584u, firstLeadingBit(4294967295u)), firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 88063u), vec2<u32>(var_0.a, var_0.a)))), var_0.a));
    return var_0.b;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(all(vec3<bool>(true, true, true)), Struct_1(~45921u, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)))), vec3<u32>(min(abs(1u), 0u), 1u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 4294967295u, 1u), 1u) | select(8492u, firstLeadingBit(11710u), func_3())));
    let var_1 = !select(!select(!vec3<bool>(false, true, var_0.b.b), select(vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(var_0.a, true, var_0.b.b), vec3<bool>(var_0.a, false, var_0.a)), !var_0.a), vec3<bool>(true, var_0.a, any(vec2<bool>(false, var_0.b.b))), !(!vec3<bool>(var_0.a, var_0.a, var_0.b.b)));
    let var_2 = var_1.x;
    var var_3 = select(select(!(!vec3<bool>(false, true, var_0.a)), select(var_1, vec3<bool>(!var_2, all(var_1.zy), all(vec2<bool>(false, false))), !(!var_1)), var_1), var_1, var_0.b.b);
    var_0 = Struct_3(!any(select(select(vec4<bool>(false, true, var_0.a, false), vec4<bool>(true, false, var_2, false), var_2), vec4<bool>(false, true, var_1.x, false), all(var_1))), var_0.b, _wgslsmith_clamp_vec3_u32(min(select(var_0.c, var_0.c, var_1), var_0.c), select(~var_0.c, var_0.c, select(vec3<bool>(var_3.x, var_1.x, var_0.a), var_1, select(var_1, vec3<bool>(var_1.x, true, false), true))), vec3<u32>(abs(0u), 79217u, var_0.b.a)));
    return Struct_1(47224u, true || all(var_1));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_3(!(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.a, 0u, 38116u), _wgslsmith_div_u32(arg_0.a, arg_0.a)) < 26141u), func_2(), vec3<u32>(arg_0.a, 71472u | arg_0.a, countOneBits(~41838u << (arg_0.a % 32u))));
    let var_1 = Struct_2(~func_2().a, global1[_wgslsmith_index_u32(0u, 7u)], vec4<f32>(_wgslsmith_f_op_f32(min(-112f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-812f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1)))), -1554f, _wgslsmith_f_op_f32(762f * -1166f)));
    var var_2 = Struct_1(44647u, arg_0.b);
    global0 = array<vec3<f32>, 29>();
    let var_3 = true;
    return Struct_2(min(~var_2.a, 11867u), global1[_wgslsmith_index_u32(30523u, 7u)], vec4<f32>(_wgslsmith_div_f32(arg_1, arg_2), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-169f - _wgslsmith_f_op_f32(f32(-1f) * -2354f))), _wgslsmith_div_f32(-1031f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1182f))), -1595f));
}

fn func_1() -> f32 {
    global0 = array<vec3<f32>, 29>();
    let var_0 = func_4(func_2(), -1627f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2020f + _wgslsmith_f_op_f32(abs(-1330f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -468f)))));
    var var_1 = u_input.a.zzy;
    let var_2 = func_4(Struct_1(_wgslsmith_div_u32(abs(~var_0.b.x), var_0.b.x), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -284f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(966f))))) * var_0.c.x), var_0.c.x);
    let var_3 = u_input.a.wxz >> (_wgslsmith_mod_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a, 1u, var_0.b.x), var_2.b.xyy), vec3<u32>(~32041u, ~6143u, 1u), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), any(vec3<bool>(true, true, true)))), vec3<u32>(var_2.a >> (var_2.b.x % 32u), var_2.b.x, var_0.b.x)) % vec3<u32>(32u));
    return 906f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-117f - -1494f) - 2048f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(938f)), _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-906f - 174f) * 113f)))), -362f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -839f)) + _wgslsmith_f_op_f32(f32(-1f) * -260f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1047f)), -2485f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(vec2<u32>(3943u, 0u)), ~select(countOneBits(vec2<u32>(76915u, 0u)), vec2<u32>(31366u, 49729u), true)), _wgslsmith_f_op_f32(abs(var_1.x)));
}

