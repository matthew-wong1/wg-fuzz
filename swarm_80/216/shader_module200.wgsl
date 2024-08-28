struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global0 = 4294967295u << (~(~_wgslsmith_add_u32(firstTrailingBit(u_input.a), ~u_input.a)) % 32u);
    let var_0 = min(-1i, ~(_wgslsmith_mod_i32(~1i, _wgslsmith_clamp_i32(32197i, 1i, 17166i)) | ~abs(30766i)));
    let var_1 = Struct_1(!vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), true), vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(24988u, u_input.a), u_input.a), u_input.a, u_input.a), reverseBits(22387u) ^ _wgslsmith_clamp_u32(u_input.a, ~31013u, u_input.a)), ~u_input.a, ~(-_wgslsmith_div_vec3_i32(~vec3<i32>(-50972i, var_0, var_0), ~vec3<i32>(-1i, 1i, var_0))));
    var var_2 = Struct_1(!select(vec2<bool>(any(vec4<bool>(var_1.a.x, var_1.a.x, true, false)), var_1.a.x | var_1.a.x), var_1.a, select(var_1.a, select(vec2<bool>(var_1.a.x, var_1.a.x), vec2<bool>(var_1.a.x, var_1.a.x), true), all(vec4<bool>(var_1.a.x, var_1.a.x, false, true)))), var_1.b, abs(reverseBits(~40242u)), var_1.d);
    let var_3 = var_1;
    return var_0;
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    var var_0 = ~(vec4<i32>(-func_3(), arg_0.x, 1i, min(arg_0.x, arg_0.x)) | max(vec4<i32>(-2147483647i, countOneBits(arg_0.x), ~arg_0.x, _wgslsmith_mod_i32(arg_0.x, arg_0.x)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 0i, -10982i, arg_0.x), vec4<i32>(-1i, 13644i, arg_0.x, -17062i)))));
    var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(44468i, arg_0.x, -2147483647i, var_0.x), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, var_0.x, 0i, var_0.x), vec4<i32>(var_0.x, -36289i, var_0.x, 43989i))), vec4<i32>(-1i) * -max(vec4<i32>(var_0.x, -1i, 2147483647i, var_0.x), vec4<i32>(arg_0.x, -64759i, 71162i, 0i))), ~vec4<i32>(~(-var_0.x), select(1i, firstTrailingBit(-2147483647i), true), countOneBits(_wgslsmith_add_i32(arg_0.x, -1i)), _wgslsmith_dot_vec2_i32(max(arg_0, vec2<i32>(-1i, arg_0.x)), _wgslsmith_mod_vec2_i32(var_0.yw, vec2<i32>(var_0.x, -1i)))));
    var_0 = vec4<i32>(-18247i, -1i, var_0.x & arg_0.x, 18440i);
    global0 = 10450u;
    var_0 = -(abs(~select(vec4<i32>(-14349i, 26156i, arg_0.x, -35016i), vec4<i32>(var_0.x, 1i, 27347i, arg_0.x), false)) << ((select(~vec4<u32>(4294967295u, u_input.a, 4294967295u, 55532u), vec4<u32>(16410u, 3752u, u_input.a, u_input.a) >> (vec4<u32>(22250u, 6480u, 0u, u_input.a) % vec4<u32>(32u)), true) ^ vec4<u32>(u_input.a, u_input.a, ~u_input.a, ~19961u)) % vec4<u32>(32u)));
    return var_0.x;
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = reverseBits(~min(vec4<i32>(0i, func_2(vec2<i32>(29563i, -2147483647i)), ~1i, 1i), vec4<i32>(abs(-2147483647i), i32(-1i) * -12073i, -2147483647i, firstLeadingBit(-2147483647i))));
    var var_1 = select(vec4<bool>(any(vec4<bool>(true, true, true, true)), any(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false))), all(vec4<bool>(true, true, true, true)), !any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true))), select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true))), true), select(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))), vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, false)) || any(vec2<bool>(false, false)), false, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0), vec2<u32>(arg_0, arg_0)) > 4294967295u, true & (arg_0 != 83913u))));
    let var_2 = false;
    var var_3 = var_0.x;
    let var_4 = Struct_1(vec2<bool>(var_2, var_2), abs(~vec2<u32>(_wgslsmith_mult_u32(arg_0, 2664u), ~u_input.a)), 1u, max(~var_0.xxx, ~var_0.wxz));
    return _wgslsmith_f_op_f32(step(-583f, 1f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(336f, 1043f)) * -1000f) - _wgslsmith_f_op_f32(-1114f * _wgslsmith_div_f32(-1047f, -897f))) - 882f)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -683f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(967f * -362f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(u_input.a)), 1394f, 1904f), vec3<f32>(_wgslsmith_f_op_f32(-2893f + -1576f), _wgslsmith_f_op_f32(func_1(u_input.a)), _wgslsmith_f_op_f32(-902f * 2208f))))));
    let var_2 = 1017f;
    var_0 = _wgslsmith_div_f32(var_1.x, -397f);
    let var_3 = !(~_wgslsmith_mult_u32(u_input.a << (u_input.a % 32u), u_input.a) >= 48081u);
    let var_4 = select(vec4<bool>(true, true, false, !select(true, var_3, true)), select(select(select(!vec4<bool>(var_3, true, var_3, var_3), !vec4<bool>(var_3, var_3, false, var_3), true), !select(vec4<bool>(true, true, var_3, true), vec4<bool>(var_3, var_3, true, var_3), var_3), true), select(select(!vec4<bool>(var_3, false, var_3, var_3), vec4<bool>(true, false, true, true), select(vec4<bool>(var_3, false, true, var_3), vec4<bool>(var_3, false, var_3, var_3), var_3)), !vec4<bool>(var_3, var_3, var_3, false), (var_3 & var_3) & true), false), select(select(vec4<bool>(all(vec3<bool>(false, var_3, false)), true, true, true), !(!vec4<bool>(var_3, var_3, false, var_3)), var_3), select(!(!vec4<bool>(var_3, false, var_3, var_3)), select(select(vec4<bool>(var_3, false, var_3, var_3), vec4<bool>(var_3, var_3, true, var_3), vec4<bool>(var_3, var_3, var_3, var_3)), vec4<bool>(var_3, var_3, true, true), select(vec4<bool>(true, true, var_3, var_3), vec4<bool>(false, true, true, var_3), vec4<bool>(var_3, var_3, var_3, var_3))), var_3), !(!var_3 & var_3)));
    var var_5 = Struct_1(!var_4.wx, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(~0u, 0u), ~u_input.a), _wgslsmith_add_u32(~(u_input.a >> (1u % 32u)), firstTrailingBit(_wgslsmith_div_u32(40450u, u_input.a)))), ~(1u ^ u_input.a), vec3<i32>(1i, _wgslsmith_add_i32(reverseBits(reverseBits(-22535i)), ~(~1i)), -10745i));
    var var_6 = Struct_1(!var_4.xx, vec2<u32>(abs(u_input.a), _wgslsmith_sub_u32(abs(1u), _wgslsmith_mod_u32(20932u, var_5.c))), ~abs(var_5.b.x << (_wgslsmith_clamp_u32(u_input.a, var_5.b.x, u_input.a) % 32u)), vec3<i32>(-1i, var_5.d.x, var_5.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(-var_5.d.x, abs(0i), _wgslsmith_sub_u32(27356u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, var_6.b.x), var_5.b), vec2<u32>(_wgslsmith_clamp_u32(var_5.b.x, var_6.b.x, u_input.a), 111775u))), vec3<f32>(_wgslsmith_f_op_f32(448f - -869f), 2006f, _wgslsmith_f_op_f32(813f * 1105f)), 1i);
}

