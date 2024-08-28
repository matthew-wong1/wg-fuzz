struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(false, false, false));

var<private> global1: Struct_1 = Struct_1(i32(-2147483648), vec3<bool>(true, true, false));

var<private> global2: array<bool, 12>;

var<private> global3: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(-6605i, Struct_2(vec3<bool>(false, true, true)), 4294967295u), Struct_3(-15420i, Struct_2(vec3<bool>(true, false, true)), 2890u), Struct_3(i32(-2147483648), Struct_2(vec3<bool>(false, true, true)), 1u), Struct_3(15277i, Struct_2(vec3<bool>(false, true, false)), 29227u), Struct_3(-91644i, Struct_2(vec3<bool>(false, false, true)), 0u), Struct_3(40134i, Struct_2(vec3<bool>(true, false, true)), 25824u), Struct_3(i32(-2147483648), Struct_2(vec3<bool>(false, false, false)), 53004u), Struct_3(1i, Struct_2(vec3<bool>(false, true, true)), 1u), Struct_3(-11145i, Struct_2(vec3<bool>(true, false, true)), 40604u), Struct_3(i32(-2147483648), Struct_2(vec3<bool>(true, false, true)), 58948u));

var<private> global4: array<f32, 26> = array<f32, 26>(-1041f, 101f, 181f, 159f, -990f, -831f, -361f, 485f, 687f, 422f, 223f, -1612f, 757f, -332f, -1103f, -208f, -643f, 248f, 488f, 349f, -863f, -313f, 505f, 676f, -132f, -493f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    global2 = array<bool, 12>();
    let var_0 = Struct_2(global0.a);
    global2 = array<bool, 12>();
    var var_1 = firstLeadingBit(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(64897u, 26260u, u_input.d), ~(~u_input.d)) | ~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 4294967295u), vec2<u32>(u_input.b, u_input.b))));
    global2 = array<bool, 12>();
    return Struct_2(select(arg_0.a, var_0.a, var_0.a));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_2) -> vec3<bool> {
    global4 = array<f32, 26>();
    var var_0 = global3[_wgslsmith_index_u32(~firstLeadingBit(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.c, arg_2.c, 25831u), vec3<u32>(0u, u_input.e, 0u)))), 10u)];
    let var_1 = 891f;
    var var_2 = false;
    let var_3 = u_input.c >> (~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_2.c, 4294967295u, 1u, arg_2.c)), ~vec4<u32>(arg_2.c, u_input.b, 4294967295u, u_input.b) | max(vec4<u32>(54885u, arg_2.c, 0u, arg_2.c), vec4<u32>(30071u, 5772u, u_input.e, 12736u))) % vec4<u32>(32u));
    return global1.b;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> u32 {
    global3 = array<Struct_3, 10>();
    let var_0 = vec3<i32>(-firstLeadingBit(_wgslsmith_sub_i32(0i, u_input.c.x)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(17121i, u_input.c.x), vec2<i32>(1i, u_input.a.x)), -global1.a), 1i) | abs(vec3<i32>(1i, ~(-22826i), -1i));
    let var_1 = Struct_3(var_0.x, Struct_2(global1.b), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.e, ~7432u), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 27915u), vec2<u32>(32118u, 4294967295u))), vec2<u32>(_wgslsmith_mod_u32(arg_0, 36276u), 0u) & ~(~vec2<u32>(arg_0, 1u))));
    global4 = array<f32, 26>();
    var var_2 = var_1;
    return var_2.c;
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = Struct_1(u_input.a.x, global0.a);
    let var_1 = _wgslsmith_dot_vec2_i32(u_input.c.xy, -vec2<i32>(global1.a, 26223i));
    let var_2 = reverseBits(arg_1.x) >> (~select(86715u, _wgslsmith_sub_u32(66744u, u_input.b), global0.a.x) % 32u);
    let var_3 = abs(vec4<u32>(arg_1.x, arg_1.x, var_2, 12661u));
    let var_4 = func_2(Struct_2(vec3<bool>(all(vec3<bool>(global0.a.x, global0.a.x, true)), all(select(vec3<bool>(false, arg_2.x, global1.b.x), global1.b, vec3<bool>(true, var_0.b.x, global2[_wgslsmith_index_u32(0u, 12u)]))), !all(var_0.b))));
    return Struct_3(global1.a, var_4, 3400u);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: i32) -> Struct_1 {
    var var_0 = func_5(func_4(~((u_input.b | 12550u) | _wgslsmith_add_u32(63825u, 49811u)), func_2(Struct_2(select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.e, 12u)], true), global0.a, global0.a))), any(func_3(global0.a.x || false, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4[_wgslsmith_index_u32(u_input.e, 26u)], arg_1, -655f, global4[_wgslsmith_index_u32(4294967295u, 26u)]))), global3[_wgslsmith_index_u32(firstLeadingBit(78998u), 10u)], Struct_2(global1.b)))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u ^ u_input.e, ~7131u, reverseBits(u_input.d), ~19686u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, u_input.e, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, u_input.e, u_input.d)) >> ((vec4<u32>(u_input.d, u_input.b, u_input.d, u_input.e) >> (vec4<u32>(0u, 4294967295u, u_input.b, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))), vec2<bool>(all(global0.a.yy), true));
    var var_1 = var_0.b;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -332f, !(!(global4[_wgslsmith_index_u32(var_0.c, 26u)] != 796f)))), -648f);
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(37748u, 26u)], arg_1)), _wgslsmith_div_f32(-1156f, global4[_wgslsmith_index_u32(var_0.c, 26u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - -586f) - arg_0)), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)))), -136f) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -610f), arg_1, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(u_input.e, 26u)], -278f) + _wgslsmith_f_op_f32(-var_2.x)))), -810f));
    let var_4 = var_3.xwy;
    return Struct_1(-1i, !global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(-1097f, -331f, 224i);
    let var_0 = (-abs(u_input.c.x) ^ (-func_1(global4[_wgslsmith_index_u32(75272u, 26u)], -1286f, u_input.a.x).a << (~(~0u) % 32u))) << (select(56352u, u_input.b, !((1u ^ u_input.b) >= 1u)) % 32u);
    var var_1 = countOneBits(vec4<u32>(countOneBits(countOneBits(u_input.d)), firstTrailingBit(u_input.e | 18261u), reverseBits(~u_input.d), ~u_input.b)) << (vec4<u32>(1u, ~1u, _wgslsmith_dot_vec2_u32(~min(vec2<u32>(u_input.d, 0u), vec2<u32>(u_input.d, 77798u)), abs(vec2<u32>(289u, u_input.d)) << (~vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))), u_input.e) % vec4<u32>(32u));
    var_1 = (~vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.ww, vec2<u32>(var_1.x, 4294967295u)), var_1.x, _wgslsmith_mult_u32(41252u, u_input.e), 1u) >> (min(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d, 3018u, 133241u, u_input.e), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 1u, var_1.x, 4294967295u), vec4<u32>(0u, 9160u, 32968u, var_1.x))), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.e, var_1.x, u_input.e, 4294967295u), firstTrailingBit(vec4<u32>(var_1.x, 1u, 37970u, 43361u)))) % vec4<u32>(32u))) & abs(abs(min(abs(vec4<u32>(1u, 1u, var_1.x, 1u)), vec4<u32>(u_input.e, 1u, 1u, u_input.d) | vec4<u32>(u_input.b, 0u, 0u, 45300u))));
    var var_2 = Struct_2(vec3<bool>(true, -min(u_input.a.x, -4895i) <= _wgslsmith_dot_vec2_i32(~u_input.a, -u_input.a), false || !global0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1340f, global4[_wgslsmith_index_u32(1u, 26u)], global4[_wgslsmith_index_u32(var_1.x, 26u)]))), vec3<f32>(global4[_wgslsmith_index_u32(~1u, 26u)], _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.b, 26u)]), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1274u, 26u)])), var_2.a)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(var_1.x, 26u)], -1000f, global4[_wgslsmith_index_u32(14149u, 26u)]) * vec3<f32>(global4[_wgslsmith_index_u32(var_1.x, 26u)], 250f, 259f)))))), func_5(var_1.x & 55997u, ~(~vec4<u32>(47115u, var_1.x, 1u, var_1.x)), !select(func_3(global0.a.x, vec4<f32>(229f, -412f, global4[_wgslsmith_index_u32(31517u, 26u)], 1222f), Struct_3(-22439i, Struct_2(global0.a), var_1.x), Struct_2(global0.a)).xx, vec2<bool>(global1.b.x, false), func_5(u_input.d, vec4<u32>(u_input.b, 4774u, 1u, u_input.e), global0.a.zy).b.a.xx)).c, u_input.c);
}

