struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_1;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = -(min(vec4<i32>(u_input.a.x, -2349i, 2147483647i, u_input.b), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 2147483647i) << (vec4<u32>(1u, 1u, global0.x, global1.b) % vec4<u32>(32u))) ^ min(~u_input.a, select(u_input.a, u_input.a, vec4<bool>(true, false, true, false)))) ^ vec4<i32>(-44065i, u_input.b, min(firstTrailingBit(9311i), max(_wgslsmith_clamp_i32(-1i, u_input.b, u_input.a.x), -14385i)), abs(~u_input.a.x));
    global0 = ~(~_wgslsmith_clamp_vec2_u32(~(vec2<u32>(arg_0.a.x, global1.b) >> (arg_2.a.yz % vec2<u32>(32u))), ~global1.a.xx, global1.a.zy));
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(abs(_wgslsmith_mult_vec3_u32(arg_0.a, global1.a)), arg_0.a ^ arg_0.a), ~vec3<u32>(~global0.x, 0u, ~1725u), ~arg_0.a), 42210u);
    var var_2 = var_0.xzy;
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(262f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-992f * _wgslsmith_f_op_f32(416f - -393f))))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> bool {
    global0 = vec2<u32>(arg_2.b, _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(0u), ~1u), arg_2.a.xy) & global1.a.x);
    let var_0 = _wgslsmith_f_op_f32(2195f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(global1.b, arg_2.a.x, arg_1), arg_1), -7021i, arg_0))) - -790f));
    global0 = vec2<u32>(4294967295u, ~(~(arg_0.a.x | 4294967295u))) ^ global1.a.xy;
    let var_1 = var_0;
    var var_2 = u_input.a;
    return true;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> vec4<f32> {
    let var_0 = true || func_2(Struct_1(arg_1.a, ~global0.x), 7176u, Struct_1(global1.a, min(arg_2 & global0.x, _wgslsmith_clamp_u32(global0.x, 18525u, global0.x))));
    var var_1 = any(!vec3<bool>(arg_0 && true, var_0 | arg_0, false | all(vec2<bool>(arg_0, arg_0))));
    let var_2 = u_input.b;
    var var_3 = var_0;
    var var_4 = true;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-532f, 380f, -1552f, -2105f), vec4<f32>(-841f, 707f, 227f, -992f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(317f, 1000f, -715f, -307f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1308f, 413f, -194f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1107f, 222f, -1413f, 1894f) * vec4<f32>(614f, 2018f, -461f, 486f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-452f, 392f, 824f, 1409f)))), vec4<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(func_3(arg_1, var_2, arg_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1331f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(129f + 1310f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -740f));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: u32) -> vec4<bool> {
    var var_0 = vec4<bool>(false, true || (u_input.a.x >= 11631i), all(select(vec4<bool>(global0.x == 0u, true, all(vec4<bool>(true, true, false, true)), any(vec4<bool>(false, false, false, false))), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true))), true);
    var var_1 = arg_0.x;
    var var_2 = _wgslsmith_div_vec3_f32(arg_0.wzw, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, arg_0.x, -699f)))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.x, -414f))), arg_0.x)));
    global0 = ~(~(select(firstTrailingBit(vec2<u32>(83101u, 16104u)), vec2<u32>(arg_3, 1u), vec2<bool>(true, var_0.x)) << (_wgslsmith_add_vec2_u32(select(global1.a.zz, vec2<u32>(global1.a.x, 61733u), vec2<bool>(true, true)), select(global1.a.xx, arg_2, var_0.zx)) % vec2<u32>(32u))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_2.xx);
    return select(vec4<bool>(arg_1.x <= u_input.b, any(vec3<bool>(any(var_0.zx), true, true)), all(vec2<bool>(var_0.x, true)) & !(false & var_0.x), !(!var_0.x)), vec4<bool>(var_0.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - 1811f) * _wgslsmith_f_op_f32(exp2(arg_0.x))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + arg_0.x))), true), select(select(vec4<bool>(var_0.x, select(true, var_0.x, var_0.x), var_3.x > -424f, all(vec3<bool>(true, true, true))), vec4<bool>(any(vec3<bool>(var_0.x, true, false)), var_0.x, false, !var_0.x), all(select(var_0.xwy, vec3<bool>(true, var_0.x, true), var_0.yzz))), select(vec4<bool>(any(vec3<bool>(true, var_0.x, true)), false, all(vec2<bool>(false, var_0.x)), false), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), true), !(!(!vec4<bool>(var_0.x, var_0.x, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(148f, 437f, 368f, 579f) + vec4<f32>(1000f, 381f, 575f, -1398f)), _wgslsmith_f_op_vec4_f32(func_1(true, Struct_1(vec3<u32>(0u, 35545u, global1.b), global0.x), 1u)), vec4<bool>(true, true, true, true))), countOneBits(u_input.a.yw), global1.a.zy, global0.x));
    global1 = Struct_1(abs(~global1.a) << (_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(global1.b, global1.a.x, global1.a.x)), _wgslsmith_mult_vec3_u32(~global1.a, countOneBits(vec3<u32>(global1.a.x, global1.a.x, global0.x)))) % vec3<u32>(32u)), ~4294967295u);
    let var_1 = Struct_1(vec3<u32>(global0.x, global0.x, 1u), global1.a.x);
    let var_2 = !(!func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(885f, 504f, -1151f, -417f))), u_input.a.zw >> (vec2<u32>(85593u, 0u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(72494u, global1.b), vec2<u32>(var_1.a.x, global1.b)), reverseBits(_wgslsmith_dot_vec2_u32(var_1.a.xx, vec2<u32>(15492u, global0.x)))).yx);
    var var_3 = _wgslsmith_div_f32(-682f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1314f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -849f) * _wgslsmith_f_op_f32(ceil(1496f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(386f - 516f) * 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(global0.x, 1u), max(~global1.b ^ global0.x, reverseBits(abs(global1.a.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-390f, _wgslsmith_f_op_vec4_f32(func_1(false, Struct_1(vec3<u32>(28050u, 1u, 16347u), 55244u), var_1.a.x)).x), _wgslsmith_f_op_f32(abs(892f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -373f)), _wgslsmith_f_op_f32(sign(228f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-281f, 165f, false)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-902f, 2032f, -212f) - vec3<f32>(1000f, -2114f, 1122f)))))), _wgslsmith_div_f32(689f, _wgslsmith_f_op_f32(func_3(var_1, _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, u_input.b, 1i), -vec3<i32>(52511i, u_input.a.x, u_input.b)), var_1))), global1.a);
}

