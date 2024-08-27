struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: vec4<bool>) -> bool {
    let var_0 = arg_2.yw;
    let var_1 = Struct_3(arg_2.x, Struct_1(u_input.d, ~(~(~u_input.b)), _wgslsmith_f_op_f32(select(-1000f, -341f, arg_2.x)), select(select(!vec4<bool>(arg_0, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, arg_0), true), !select(vec4<bool>(false, false, arg_2.x, true), arg_2, arg_2), arg_2), vec2<i32>(min(-38706i, select(u_input.c.x, 3958i, true)), ~u_input.c.x)), ~select(~vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xz, vec2<bool>(any(vec3<bool>(true, false, false)), true)), arg_1.x);
    let var_2 = _wgslsmith_sub_u32(~(~(~var_1.b.a.x)), ~var_1.c.x);
    var var_3 = vec2<u32>(var_2, ~min(0u, 0u));
    var_3 = abs(var_1.c);
    return var_0.x | any(!select(vec3<bool>(arg_2.x, false, true), !var_1.b.d.wyy, select(vec3<bool>(arg_0, true, false), vec3<bool>(var_1.b.d.x, arg_0, arg_0), arg_2.wzx)));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    let var_0 = vec4<bool>(func_3(!(false & arg_3.b.d.x), vec3<i32>(-2147483647i, arg_0, ~_wgslsmith_div_i32(arg_0, -2147483647i)), select(arg_2.d, vec4<bool>(true, all(vec4<bool>(false, arg_2.d.x, arg_2.d.x, arg_2.d.x)), false && arg_1.a, true), select(select(arg_2.d, arg_2.d, vec4<bool>(arg_1.b.d.x, arg_3.b.d.x, true, true)), arg_2.d, all(arg_3.b.d.xww)))), true, !(arg_0 > ~(-arg_0)), arg_2.d.x);
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-104f, arg_1.b.c, 485f)) + vec3<f32>(arg_3.b.c, 857f, -1830f)), vec3<f32>(arg_2.c, -578f, _wgslsmith_f_op_f32(-arg_1.b.c)))))));
    var var_2 = arg_1.d;
    var_2 = 2147483647i;
    var var_3 = ~arg_3.b.a.x;
    return Struct_2(min(-arg_1.b.e.x >> (u_input.a.x % 32u), -arg_2.e.x), arg_1.b);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec3<f32> {
    var var_0 = firstTrailingBit(u_input.c.x);
    let var_1 = Struct_3(!select(false, false, false), arg_0.b, abs(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d.xz, vec2<u32>(u_input.d.x, 55096u)), max(vec2<u32>(43867u, 33471u), u_input.d.zy))) ^ vec2<u32>(~max(arg_0.b.a.x, arg_0.b.b), ~1u), -4804i);
    var_0 = ~24550i;
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1391f, 361f) - vec3<f32>(arg_0.b.c, arg_0.b.c, 369f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.c, arg_0.b.c, 816f))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.b.c)), _wgslsmith_f_op_f32(-664f * arg_0.b.c), _wgslsmith_f_op_f32(f32(-1f) * -994f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.c, -148f, arg_0.b.c)))) * vec3<f32>(_wgslsmith_f_op_f32(-2042f + 266f), _wgslsmith_f_op_f32(arg_0.b.c - 103f), _wgslsmith_f_op_f32(sign(113f)))), vec3<bool>(~var_1.d < 18971i, !(false && arg_0.b.d.x), arg_0.b.d.x))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x));
    return vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.b.c)), _wgslsmith_f_op_f32(step(1022f, var_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_0.b.c) * _wgslsmith_f_op_f32(f32(-1f) * -774f)));
}

fn func_1() -> i32 {
    let var_0 = true;
    let var_1 = false;
    var var_2 = u_input.a.wzz;
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_2(u_input.c.x, Struct_3(false, Struct_1(u_input.d, 5602u, -994f, vec4<bool>(var_0, var_1, false, var_0), vec2<i32>(0i, u_input.c.x)), vec2<u32>(u_input.b, 4294967295u), -2147483647i), Struct_1(vec3<u32>(4294967295u, 80492u, u_input.a.x), var_2.x, -642f, vec4<bool>(false, var_1, true, var_1), vec2<i32>(u_input.c.x, 0i)), Struct_2(-1i, Struct_1(u_input.a.zwy, 97834u, 1276f, vec4<bool>(true, var_0, var_1, true), u_input.c.ww))), u_input.c.x)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2078f, -384f, 679f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(657f, 130f, -1063f) - vec3<f32>(-575f, 734f, -510f)), !vec3<bool>(false, true, var_0))))));
    var var_4 = Struct_1(~u_input.a.yww, ~u_input.a.x, _wgslsmith_f_op_f32(step(var_3.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)), _wgslsmith_f_op_vec3_f32(func_4(func_2(9219i, Struct_3(true, Struct_1(vec3<u32>(24183u, 57483u, var_2.x), var_2.x, -432f, vec4<bool>(var_1, var_1, var_0, true), u_input.c.xx), u_input.a.yz, u_input.c.x), Struct_1(vec3<u32>(var_2.x, var_2.x, u_input.b), var_2.x, -981f, vec4<bool>(var_1, true, var_0, true), vec2<i32>(-2147483647i, u_input.c.x)), Struct_2(2147483647i, Struct_1(vec3<u32>(u_input.d.x, var_2.x, u_input.b), var_2.x, var_3.a.x, vec4<bool>(var_1, false, var_1, var_1), u_input.c.ww))), -2147483647i)).x)))), !vec4<bool>(var_1, any(!vec4<bool>(false, var_1, var_0, var_0)), true, func_3(var_1, ~u_input.c.yzx, !vec4<bool>(var_1, false, false, var_0))), _wgslsmith_add_vec2_i32(-u_input.c.xz, u_input.c.yz));
    return _wgslsmith_add_i32(abs(6969i), -(~13254i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(abs(firstLeadingBit(~u_input.c.x)), 1i, u_input.c.x, -((-34770i >> (_wgslsmith_mult_u32(u_input.b, 44492u) % 32u)) & _wgslsmith_add_i32(u_input.c.x, ~2147483647i)));
    let var_1 = 34999i;
    var_0 = countOneBits(vec4<i32>(22577i, var_0.x, _wgslsmith_mod_i32(firstLeadingBit(firstTrailingBit(2147483647i)), -var_0.x), func_1()));
    var var_2 = Struct_4(vec3<f32>(525f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(672f)) - _wgslsmith_f_op_f32(trunc(-1000f)))));
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.a.x, -144f, var_2.a.x), vec3<f32>(var_2.a.x, 301f, -775f))), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x), vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x))), _wgslsmith_f_op_vec3_f32(-var_2.a)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1144f, 318f, var_2.a.x)))))));
    var var_4 = _wgslsmith_f_op_f32(-var_3.a.x);
    var var_5 = -(~(~var_0.yww));
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(473f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1006f + -692f) + _wgslsmith_f_op_f32(min(1441f, var_3.a.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(303f + var_3.a.x) - _wgslsmith_f_op_f32(max(-1398f, var_3.a.x))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.a.x))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.a.x)) * 826f) + var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_2(-2147483647i, Struct_3(false, Struct_1(vec3<u32>(u_input.d.x, u_input.a.x, 4294967295u), 1u, -1000f, vec4<bool>(true, false, false, true), u_input.c.zx), vec2<u32>(u_input.d.x, 1u), var_0.x), Struct_1(u_input.d, 45283u, -1000f, vec4<bool>(true, false, false, true), vec2<i32>(1i, 2147483647i)), Struct_2(var_1, Struct_1(vec3<u32>(0u, 4294967295u, 1u), 1u, -1276f, vec4<bool>(true, true, true, false), var_5.xz))).b.c, var_2.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1183f + 1048f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, -101f, 22021u);
}

