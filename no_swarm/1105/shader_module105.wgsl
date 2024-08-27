struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> f32 {
    var var_0 = Struct_2(!any(vec2<bool>(true, true)));
    var_0 = Struct_2(false);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(250f, -1296f), _wgslsmith_f_op_f32(f32(-1f) * -215f), true)) - 202f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-788f + 1769f))))));
    let var_2 = _wgslsmith_add_i32(u_input.b.x, u_input.e);
    var_0 = Struct_2(any(vec3<bool>(!var_0.a, var_0.a, var_0.a)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-170f, _wgslsmith_f_op_f32(f32(-1f) * -1047f))))) + _wgslsmith_f_op_f32(max(-1605f, _wgslsmith_f_op_f32(trunc(1548f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-461f * _wgslsmith_div_f32(-753f, _wgslsmith_f_op_f32(f32(-1f) * -202f)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_2(any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)))));
    let var_1 = vec3<u32>(~min(~firstTrailingBit(arg_3.b.x), arg_2.b.x << (_wgslsmith_div_u32(9896u, arg_3.b.x) % 32u)), ~(~(~_wgslsmith_mod_u32(0u, 7144u))), u_input.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_3.a.x, _wgslsmith_f_op_f32(arg_2.a.x - 1137f), _wgslsmith_f_op_f32(1122f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -615f) * arg_3.a.x))));
    let var_3 = Struct_2(false);
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-970f, 626f)), _wgslsmith_f_op_f32(723f * 1191f))), 600f)), arg_0.x, -1030f, _wgslsmith_f_op_f32(1351f * -1000f));
    return 1824f;
}

fn func_1() -> Struct_2 {
    var var_0 = any(vec3<bool>(_wgslsmith_f_op_f32(func_2()) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(166f))), select(false, true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)))), false));
    var var_1 = 245f;
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-932f, 1039f, false))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(min(-2294f, -744f)))))));
    let var_2 = Struct_2(false || !(!any(vec2<bool>(false, true))));
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1123f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(604f, 739f) + vec2<f32>(362f, -1000f)), vec2<f32>(1000f, -944f))), Struct_1(vec4<f32>(953f, 560f, 465f, 232f), u_input.c.xy), Struct_1(vec4<f32>(151f, -350f, 514f, 1600f), vec2<u32>(u_input.d, 4294967295u)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(941f, 1000f, -2242f, 2013f) - vec4<f32>(-261f, -2456f, -1632f, -1211f)), vec2<u32>(u_input.a, u_input.c.x)))))), -553f, var_2.a));
    return Struct_2(!(!any(!vec3<bool>(true, var_2.a, true))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-2577f, -850f)), -239f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -760f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-379f, -1000f, -2151f, -960f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-264f, 733f, -904f, -1026f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1336f, -2258f, -345f, -849f), vec4<f32>(2022f, -294f, 630f, 1000f)))))), _wgslsmith_sub_vec2_u32(countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(arg_2, 80682u), vec2<u32>(21994u, 1u))) | vec2<u32>(_wgslsmith_clamp_u32(31208u, u_input.d, u_input.a), firstTrailingBit(u_input.c.x)), firstTrailingBit(u_input.c.xx)));
    var var_1 = ~(~((69437u << (arg_2 % 32u)) >> (_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_2, 4294967295u), abs(71249u)) % 32u)));
    var_1 = ~(~(~u_input.d));
    let var_2 = u_input.b.x;
    var var_3 = abs(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~13560u, 1u), _wgslsmith_add_u32(0u, reverseBits(u_input.d)) << (var_0.b.x % 32u)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(768f, 2084f, -276f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-436f, -192f, -108f)), vec3<bool>(true, true, true))))))));
    let var_1 = _wgslsmith_mod_u32(u_input.d, firstTrailingBit(4294967295u));
    let var_2 = func_4(u_input.e ^ ~(~max(u_input.b.x, -2147483647i)), func_1(), ~var_1);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -978f, _wgslsmith_f_op_f32(var_0.x * 2156f)))));
    var var_3 = !all(!select(vec3<bool>(var_2.a, var_2.a, var_2.a), vec3<bool>(var_2.a, true, true), vec3<bool>(var_2.a, var_2.a, var_2.a))) | true;
    var_3 = true;
    var var_4 = _wgslsmith_f_op_f32(ceil(var_0.x));
    var_3 = !(true || var_2.a);
    var_3 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

