struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(false, true, false, false, true, false, true, true, true, true, true, false, false, false);

var<private> global1: u32 = 43517u;

var<private> global2: u32;

var<private> global3: Struct_1;

var<private> global4: array<f32, 11>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    let var_0 = arg_2;
    let var_1 = Struct_1(0u >> (arg_0 % 32u));
    global3 = var_1;
    global0 = array<bool, 14>();
    let var_2 = var_1;
    return _wgslsmith_clamp_u32(firstTrailingBit(arg_0), ~_wgslsmith_dot_vec2_u32(u_input.a, ~(~vec2<u32>(var_2.a, var_0.a))), _wgslsmith_clamp_u32(arg_2.a, var_1.a, var_0.a));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = !(_wgslsmith_f_op_f32(-152f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, arg_0)) + -1000f)) != -235f);
    let var_1 = select(!vec4<bool>(var_0, var_0, select(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1.a, u_input.e, global3.a), 14u)], var_0, false), min(28686u, u_input.e) != _wgslsmith_div_u32(u_input.e, arg_1.a)), !vec4<bool>(any(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], true)), any(vec4<bool>(true, global0[_wgslsmith_index_u32(global3.a, 14u)], true, var_0)), -1192f == _wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(4294967295u, 11u)])), !(u_input.b >= u_input.b)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.a << (u_input.c % 32u), max(4294967295u, global3.a)) & 4294967295u, 14u)]);
    let var_2 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4661u, arg_1.a), 0u, u_input.c), reverseBits(vec3<u32>(u_input.a.x, 72463u, 47658u))), ~4294967295u, ~20462u));
    var var_3 = !var_1.yw;
    let var_4 = Struct_1(firstLeadingBit(arg_1.a));
    return arg_0;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -513f), Struct_1(_wgslsmith_sub_u32(max(~u_input.c, func_3(1u, false, Struct_1(global3.a), vec2<bool>(true, false))), _wgslsmith_dot_vec2_u32(~u_input.a, vec2<u32>(u_input.e, arg_1) ^ u_input.a)))));
    var var_1 = Struct_1(_wgslsmith_mult_u32(~(1u ^ u_input.e), ~(~70921u)));
    global2 = min(_wgslsmith_sub_u32(~arg_1, global3.a), ~global3.a) >> ((_wgslsmith_mod_u32(global3.a, _wgslsmith_dot_vec2_u32(u_input.a, countOneBits(u_input.a))) & ~(~var_1.a ^ var_1.a)) % 32u);
    let var_2 = ~(vec3<u32>(var_1.a, _wgslsmith_mod_u32(0u, arg_1), arg_1) & ~(~vec3<u32>(0u, 76340u, 1u) >> ((vec3<u32>(1u, u_input.c, 4294967295u) | vec3<u32>(1u, u_input.c, u_input.a.x)) % vec3<u32>(32u))));
    global2 = reverseBits(~26618u);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(u_input.e, 11u)])))), Struct_1(1u)))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = abs(~global3.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1302f, _wgslsmith_f_op_f32(-1488f * global4[_wgslsmith_index_u32(110578u >> (0u % 32u), 11u)]))), -2740f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -647f) + global4[_wgslsmith_index_u32(~53529u, 11u)]))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-308f, global4[_wgslsmith_index_u32(~113292u, 11u)], _wgslsmith_f_op_f32(arg_0.x - -948f), -989f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1000f, -991f, 313f)), vec4<f32>(global4[_wgslsmith_index_u32(8415u, 11u)], 422f, arg_0.x, global4[_wgslsmith_index_u32(0u, 11u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(global3.a, 14u)], false))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(arg_1.a, 11u)], arg_0.x, global4[_wgslsmith_index_u32(global3.a, 11u)], -1508f)))), true & !global0[_wgslsmith_index_u32(u_input.c, 14u)]))));
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(~(-u_input.d.x), 45797i), 22238i), countOneBits(_wgslsmith_mult_i32(1i, -2147483647i)));
    global0 = array<bool, 14>();
    var var_3 = -592f;
    return arg_1;
}

fn func_1() -> Struct_1 {
    global3 = func_5(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(1092f, -730f), global3.a)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-132f + 119f)))), global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(global3.a, u_input.a.x, u_input.a.x), max(global3.a, u_input.a.x)), 11u)]), Struct_1(global3.a));
    var var_0 = firstLeadingBit(vec4<i32>(-(~36236i), u_input.b, 0i, 0i));
    global3 = Struct_1(0u);
    global3 = func_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(u_input.e, 11u)], -454f)) - vec2<f32>(948f, -535f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(1u, 11u)], -514f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(175f, 1184f))))), select(select(vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.e, 14u)]), vec2<bool>(global0[_wgslsmith_index_u32(37701u, 14u)], global0[_wgslsmith_index_u32(global3.a, 14u)])), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 14u)]), select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 14u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(global3.a, 14u)]), vec2<bool>(global0[_wgslsmith_index_u32(global3.a, 14u)], global0[_wgslsmith_index_u32(0u, 14u)])))))), Struct_1(global3.a));
    let var_1 = func_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(528f, 170f)), vec2<f32>(-527f, global4[_wgslsmith_index_u32(4294967295u, 11u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1213f, -1139f) - vec2<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 11u)], -575f)) + _wgslsmith_div_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(11182u, 11u)], 744f), vec2<f32>(1427f, -1378f))))), Struct_1(~86482u));
    return func_5(vec2<f32>(-1000f, global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(var_1.a ^ 4294967295u, ~u_input.c)), 11u)]), Struct_1(max(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(68170u, 1u, global3.a), vec3<u32>(u_input.c, 1u, 24741u)), firstLeadingBit(vec3<u32>(0u, u_input.c, var_1.a))), ~24939u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0;
    global1 = _wgslsmith_mult_u32(~(~(~u_input.e)), ~(~select(firstTrailingBit(0u), 102107u, true)));
    global1 = var_0.a >> (var_0.a % 32u);
    var_1 = Struct_1(global3.a);
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-563f))), 779f))), var_0.a, (vec4<i32>(-1i) * -vec4<i32>(57558i, u_input.b, -46645i, u_input.d.x)) ^ vec4<i32>(2147483647i, u_input.b, u_input.d.x, u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global4[_wgslsmith_index_u32(0u, 11u)], global4[_wgslsmith_index_u32(var_2.a, 11u)], 2078f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(4294967295u, 11u)], global4[_wgslsmith_index_u32(1u, 11u)], -1861f, -134f) * vec4<f32>(global4[_wgslsmith_index_u32(global3.a, 11u)], 1181f, global4[_wgslsmith_index_u32(u_input.a.x, 11u)], 388f))))));
}

