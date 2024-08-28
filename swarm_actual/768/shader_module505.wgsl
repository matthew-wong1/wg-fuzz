struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

var<private> global1: vec3<i32>;

var<private> global2: array<vec2<f32>, 10>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(78134u ^ (_wgslsmith_dot_vec2_u32(arg_0.yy, vec2<u32>(44032u, u_input.a.x)) ^ 11736u), 73560u), _wgslsmith_add_u32(116u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.b, 1u, arg_0.x) & arg_0, arg_0), ~1u)));
    var var_1 = vec2<bool>(true, any(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(649f >= arg_1.c.x, true, all(vec2<bool>(false, false))), vec3<bool>(false, select(true, true, true), true))));
    global1 = ~select(arg_1.a, _wgslsmith_add_vec3_i32(arg_1.a, min(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, global0[_wgslsmith_index_u32(arg_1.b, 15u)], -58248i), arg_1.a, vec3<i32>(0i, 2147483647i, arg_1.a.x)), arg_1.a)), false);
    var var_2 = _wgslsmith_div_i32(_wgslsmith_sub_i32(46517i ^ (_wgslsmith_div_i32(global0[_wgslsmith_index_u32(var_0.x, 15u)], 98822i) & global1.x), global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), -1i);
    var_2 = global1.x >> (abs(arg_0.x) % 32u);
    return Struct_1(~(-(vec3<i32>(0i, 13546i, arg_1.d) >> (arg_0.zxz % vec3<u32>(32u))) << (~vec3<u32>(arg_0.x, 1u, arg_0.x) % vec3<u32>(32u))), _wgslsmith_mult_u32(4294967295u, ~(~abs(u_input.a.x))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.x, 948f)))), 833f, -698f), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(arg_1.a.yy, global1.yz & vec2<i32>(global0[_wgslsmith_index_u32(0u, 15u)], arg_1.d)), global1.xz), 27793i));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> vec4<i32> {
    var var_0 = Struct_2(select(vec2<bool>(true, all(vec2<bool>(false, true)) == all(vec4<bool>(true, false, false, true))), vec2<bool>(false, any(vec2<bool>(true, false))), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), true)));
    let var_1 = (true != var_0.a.x) & !(!var_0.a.x);
    let var_2 = Struct_1(select(_wgslsmith_div_vec3_i32(vec3<i32>(1i, global0[_wgslsmith_index_u32(0u, 15u)], global1.x), vec3<i32>(global0[_wgslsmith_index_u32(arg_1.x, 15u)], global0[_wgslsmith_index_u32(58297u, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)])), firstTrailingBit(firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(arg_1.x, 15u)], global0[_wgslsmith_index_u32(arg_1.x, 15u)], 27792i))), var_0.a.x) | (_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.x, 36325i, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), -vec3<i32>(global1.x, -2147483647i, global0[_wgslsmith_index_u32(1u, 15u)]), func_1(vec4<u32>(u_input.a.x, 39573u, arg_1.x, 0u), Struct_1(vec3<i32>(global1.x, global0[_wgslsmith_index_u32(0u, 15u)], global1.x), u_input.a.x, vec3<f32>(1237f, 1186f, arg_0), 2147483647i)).a) >> (reverseBits(vec3<u32>(4294967295u, 2896u, 1u)) % vec3<u32>(32u))), _wgslsmith_div_u32(arg_1.x, ~max(u_input.a.x, 0u)) ^ u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) - _wgslsmith_f_op_f32(step(-1805f, arg_0))) * arg_0), arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1007f - _wgslsmith_f_op_f32(ceil(1000f))), arg_0))), -10004i);
    var var_3 = Struct_2(var_0.a);
    let var_4 = var_2;
    return -_wgslsmith_sub_vec4_i32(select(_wgslsmith_div_vec4_i32(~vec4<i32>(var_4.a.x, 2147483647i, 1i, global0[_wgslsmith_index_u32(73179u, 15u)]), vec4<i32>(1121i, -1i, global1.x, var_4.a.x) & vec4<i32>(-14236i, 1i, 1i, 0i)), ~vec4<i32>(23458i, 63800i, var_4.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), true), _wgslsmith_mod_vec4_i32(-vec4<i32>(global1.x, -1i, 0i, global1.x) & -vec4<i32>(global1.x, global1.x, var_4.d, global1.x), vec4<i32>(-1335i, 95758i, global1.x, reverseBits(var_2.d))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>) -> vec4<f32> {
    var var_0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -260f)), vec3<u32>(u_input.a.x, 12053u, ~(arg_0.x | ~arg_0.x)));
    var var_1 = Struct_2(select(vec2<bool>(true, true), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), false), any(vec4<bool>(false, true, true, false))), vec2<bool>(true, true)));
    var var_2 = -973f;
    var var_3 = select(_wgslsmith_div_u32(_wgslsmith_mod_u32(35801u, arg_0.x), 0u), _wgslsmith_clamp_u32(~(~arg_0.x), firstTrailingBit(0u), ~36696u & select(0u, 28983u, var_1.a.x)), true) >> ((_wgslsmith_mod_u32(~(~1u), _wgslsmith_mult_u32(38152u ^ arg_0.x, _wgslsmith_dot_vec3_u32(arg_1.xyx, vec3<u32>(arg_1.x, u_input.a.x, u_input.a.x)))) >> ((~1333u << ((func_1(arg_0, Struct_1(var_0.zwz, arg_1.x, vec3<f32>(-189f, -639f, -1675f), 22490i)).b >> (~18664u % 32u)) % 32u)) % 32u)) % 32u);
    var var_4 = Struct_1(abs((vec3<i32>(6908i, global1.x, 11647i) & _wgslsmith_sub_vec3_i32(var_0.zxw, vec3<i32>(global1.x, global1.x, var_0.x))) << (_wgslsmith_add_vec3_u32(~arg_1.wyx, arg_1.yzy) % vec3<u32>(32u))), _wgslsmith_dot_vec3_u32(firstLeadingBit(abs(arg_1.yyx)), min(vec3<u32>(u_input.a.x, arg_1.x, u_input.a.x) >> (vec3<u32>(arg_1.x, arg_0.x, arg_1.x) % vec3<u32>(32u)), ~abs(vec3<u32>(37572u, arg_1.x, u_input.a.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1629f, 1147f) * vec3<f32>(1063f, -1216f, -234f)) - vec3<f32>(-1245f, -571f, -897f)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1895f, -533f, 1100f))), vec3<f32>(792f, 471f, -2468f)))))), global1.x);
    return vec4<f32>(func_1(arg_1 & firstLeadingBit(max(arg_0, vec4<u32>(u_input.a.x, var_4.b, arg_0.x, var_4.b))), Struct_1(vec3<i32>(abs(global1.x), -var_4.d, i32(-1i) * -2147483647i), var_4.b, vec3<f32>(_wgslsmith_f_op_f32(min(-901f, var_4.c.x)), -102f, _wgslsmith_f_op_f32(floor(1067f))), 2147483647i)).c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-128f - -1588f) + var_4.c.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4.c.x))), var_4.c.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> vec3<f32> {
    global2 = array<vec2<f32>, 10>();
    var var_0 = select(vec4<bool>((~global0[_wgslsmith_index_u32(4294967295u, 15u)] & abs(global0[_wgslsmith_index_u32(u_input.a.x, 15u)])) <= arg_0.d, true, false, true), vec4<bool>(true, true, true, true), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true), true), vec4<bool>(true, true, any(vec2<bool>(true, true)), false), true));
    let var_1 = global0[_wgslsmith_index_u32(arg_0.b, 15u)];
    let var_2 = Struct_2(var_0.wx);
    global0 = array<i32, 15>();
    return _wgslsmith_f_op_vec4_f32(func_2(~min(vec4<u32>(1u, arg_0.b, 65795u, 1u) ^ vec4<u32>(0u, 33239u, 4294967295u, 16470u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b, 52944u, arg_0.b, 1u), vec4<u32>(arg_0.b, u_input.a.x, 0u, 4294967295u))) & (max(abs(vec4<u32>(79984u, arg_0.b, 1u, u_input.a.x)), ~vec4<u32>(22979u, 89973u, arg_0.b, 1u)) & _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(31289u, 4294967295u, 0u, 9200u), vec4<u32>(4294967295u, arg_0.b, 13217u, 9040u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 105912u, 36618u, u_input.a.x), vec4<u32>(arg_0.b, 86u, 4294967295u, arg_0.b)))), vec4<u32>(46101u, ~(~79063u), firstLeadingBit(_wgslsmith_dot_vec4_u32(min(vec4<u32>(15091u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(arg_0.b, arg_0.b, 0u, arg_0.b)), ~vec4<u32>(arg_0.b, 102625u, 39115u, arg_0.b))), 46872u))).wwz;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = array<i32, 15>();
    global2 = array<vec2<f32>, 10>();
    var var_0 = _wgslsmith_mod_i32(-firstTrailingBit(func_3(_wgslsmith_div_f32(arg_0.c.x, 428f), vec3<u32>(arg_0.b, u_input.a.x, u_input.a.x) ^ vec3<u32>(891u, arg_0.b, u_input.a.x)).x), 58633i);
    var var_1 = Struct_1(abs(vec3<i32>(firstTrailingBit(countOneBits(global1.x)), global1.x, _wgslsmith_sub_i32(func_3(arg_0.c.x, vec3<u32>(92557u, 65180u, 4294967295u)).x, global0[_wgslsmith_index_u32(~arg_0.b, 15u)]))), _wgslsmith_clamp_u32(u_input.a.x, 45934u, min(~0u, 4294967295u)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(arg_0.c)), _wgslsmith_div_vec3_f32(vec3<f32>(-1056f, -2603f, -1038f), arg_0.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_0.c)) - _wgslsmith_f_op_vec3_f32(-arg_0.c))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-180f, _wgslsmith_f_op_f32(floor(arg_0.c.x)), _wgslsmith_f_op_f32(-arg_0.c.x))))), arg_0.a.x);
    let var_2 = vec4<bool>(false, !((65463u < var_1.b) | true), true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) == _wgslsmith_f_op_vec3_f32(func_4(func_1(countOneBits(vec4<u32>(arg_0.b, 1u, 42852u, 1u)), arg_0), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-835f, arg_0.c.x, arg_0.c.x, var_1.c.x), vec4<f32>(944f, -1772f, -345f, arg_0.c.x)))))).x);
    return arg_0;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_0.c.x))))));
    var var_1 = Struct_2(vec2<bool>(true, true));
    let var_2 = _wgslsmith_sub_i32(~(-3734i), i32(-1i) * -global0[_wgslsmith_index_u32(~14395u, 15u)]);
    var var_3 = ~countOneBits(firstLeadingBit(select(vec4<i32>(-1i, arg_0.d, 1i, global1.x), ~vec4<i32>(28549i, arg_0.d, var_2, -1i), vec4<bool>(true, true, var_1.a.x, true))));
    let var_4 = Struct_2(var_1.a);
    return func_5(func_5(Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -86476i, var_2) ^ arg_0.a, countOneBits(vec3<i32>(var_3.x, 0i, global0[_wgslsmith_index_u32(18538u, 15u)]))), abs(10070u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x)), _wgslsmith_mod_i32(20862i, ~global0[_wgslsmith_index_u32(u_input.a.x, 15u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -812f;
    var_0 = _wgslsmith_f_op_f32(1317f * -138f);
    var var_1 = !vec2<bool>(any(vec4<bool>(22976i <= global0[_wgslsmith_index_u32(1u, 15u)], true, true, all(vec2<bool>(true, false)))), true && !all(vec2<bool>(true, true)));
    let var_2 = vec2<f32>(1155f, -355f);
    var var_3 = firstTrailingBit(u_input.a.x);
    global2 = array<vec2<f32>, 10>();
    var var_4 = func_6(func_5(Struct_1(max(vec3<i32>(global0[_wgslsmith_index_u32(68143u, 15u)], global1.x, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), ~vec3<i32>(global1.x, -18101i, 20104i)), _wgslsmith_add_u32(~u_input.a.x, 1u), _wgslsmith_f_op_vec3_f32(func_4(func_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], 1i, -40325i), 0u, vec3<f32>(-805f, var_2.x, var_2.x), global0[_wgslsmith_index_u32(u_input.a.x, 15u)])), _wgslsmith_f_op_vec4_f32(func_2(vec4<u32>(u_input.a.x, u_input.a.x, 36264u, 1465u), vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x))))), ~38836i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.xy, ~_wgslsmith_clamp_vec2_i32(var_4.a.xx & vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global1.x), var_4.a.xx & global1.zy, ~var_4.a.xz) | abs(vec2<i32>(~1i, reverseBits(46760i))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(6002u, u_input.a.x), var_4.b, func_5(Struct_1(var_4.a, 4294967295u, var_4.c, 1i)).b, 0u) << (~countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, var_4.b, var_4.b)) % vec4<u32>(32u)), ~(~(~vec4<u32>(var_4.b, 21484u, 25107u, u_input.a.x)))));
}

