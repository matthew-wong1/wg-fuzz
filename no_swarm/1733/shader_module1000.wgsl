struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(0i, -47294i, i32(-2147483648)), vec3<i32>(-22478i, 37557i, 7343i), vec3<i32>(i32(-2147483648), i32(-2147483648), -46693i), vec3<i32>(0i, 34009i, i32(-2147483648)));

var<private> global1: array<vec4<u32>, 20>;

var<private> global2: array<vec2<bool>, 23>;

var<private> global3: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3) -> vec2<u32> {
    global0 = array<vec3<i32>, 4>();
    var var_0 = arg_0.a.a;
    let var_1 = ~vec3<u32>(64462u, max(1992u, firstTrailingBit(~u_input.e)), u_input.e | firstLeadingBit(u_input.e));
    return ~vec2<u32>(var_1.x, min(~78629u, ~1u));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(round(arg_2.x))))) * _wgslsmith_f_op_f32(-arg_1.a))));
    let var_1 = vec3<i32>(~1i, 40669i, u_input.d.x);
    var var_2 = -757f;
    let var_3 = 4294967295u;
    global2 = array<vec2<bool>, 23>();
    return ~_wgslsmith_mult_u32(var_3, reverseBits(_wgslsmith_clamp_u32(arg_0.x, 17137u, 776u))) >> (_wgslsmith_mod_u32(arg_0.x, 20199u) % 32u);
}

fn func_2(arg_0: vec4<u32>) -> Struct_4 {
    var var_0 = Struct_2(abs(u_input.d.x) >> (func_4(select(func_3(Struct_3(Struct_2(-12594i), -654f, Struct_1(-404f))), abs(arg_0.zz), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), Struct_1(_wgslsmith_f_op_f32(floor(-779f))), vec4<f32>(_wgslsmith_f_op_f32(-390f + 540f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -873f), -1000f)) % 32u));
    global1 = array<vec4<u32>, 20>();
    let var_1 = 43044u;
    return Struct_4(true);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>) -> vec2<bool> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-736f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(710f)) - _wgslsmith_f_op_f32(860f + -1549f)) * -1048f)), _wgslsmith_f_op_f32(round(1f)));
    var var_1 = func_2(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.e, u_input.e), u_input.e | u_input.e), _wgslsmith_div_u32(1u, 14488u), ~u_input.e, u_input.e) >> (firstLeadingBit(vec4<u32>(~36026u, 1u, 0u, 0u)) % vec4<u32>(32u)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = false & !(_wgslsmith_f_op_f32(trunc(-168f)) >= _wgslsmith_f_op_f32(min(-487f, _wgslsmith_f_op_f32(round(573f)))));
    let var_0 = func_1(Struct_2(_wgslsmith_sub_i32(1i, u_input.b.x)), global2[_wgslsmith_index_u32(117140u, 23u)]);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1957f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-487f - _wgslsmith_f_op_f32(sign(1614f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(221f * 1800f), 1000f, any(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x), var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -126f) + _wgslsmith_div_f32(-268f, -117f)), _wgslsmith_f_op_f32(trunc(-275f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-636f - -1290f)))), 787f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1338f, 495f)) + 695f) - _wgslsmith_f_op_f32(-1578f - _wgslsmith_f_op_f32(min(419f, -1133f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -996f), _wgslsmith_f_op_f32(trunc(610f)))))));
    let var_2 = 17997i;
    let var_3 = any(!(!select(select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, var_0.x, true)), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false)), true)));
    let var_4 = Struct_2(~firstTrailingBit(~var_2));
    var var_5 = ~(~vec3<u32>(u_input.e, _wgslsmith_mod_u32(u_input.e, 1u), func_3(Struct_3(Struct_2(var_4.a), var_1.x, Struct_1(-986f))).x) << ((~min(vec3<u32>(0u, 90699u, 0u), vec3<u32>(16555u, 35674u, 4294967295u)) ^ ~min(vec3<u32>(u_input.e, 0u, 4294967295u), vec3<u32>(36665u, 4294967295u, 52385u))) % vec3<u32>(32u)));
    global2 = array<vec2<bool>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(-375f, 0u, u_input.d.x);
}

