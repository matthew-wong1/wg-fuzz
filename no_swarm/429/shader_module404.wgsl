struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<f32, 29>;

var<private> global2: array<Struct_3, 10>;

var<private> global3: array<u32, 6>;

var<private> global4: vec2<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(Struct_1(~_wgslsmith_mod_u32(u_input.a >> (1u % 32u), _wgslsmith_add_u32(u_input.a, 0u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(845f, global1[_wgslsmith_index_u32(27016u, 29u)])), _wgslsmith_f_op_f32(round(504f)), all(vec3<bool>(global4.x, global4.x, global4.x)))), 419f), !((u_input.b <= u_input.c.x) & (global4.x | global4.x)), select(!select(vec3<bool>(global4.x, false, false), vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(true, false, true)), vec3<bool>(global4.x, global1[_wgslsmith_index_u32(4294967295u, 29u)] != 1000f, global4.x & global4.x), vec3<bool>(!global4.x, global4.x, any(vec4<bool>(false, global4.x, global4.x, true))))));
    global2 = array<Struct_3, 10>();
    global3 = array<u32, 6>();
    var var_1 = u_input.b;
    let var_2 = _wgslsmith_div_u32(4294967295u, _wgslsmith_mod_u32(62927u, var_0.a.a));
    return _wgslsmith_f_op_f32(exp2(global0.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: i32) -> vec3<u32> {
    global4 = select(vec2<bool>(any(vec4<bool>(global4.x | false, true, !global4.x, 39169u >= global3[_wgslsmith_index_u32(10208u, 6u)])), false), !select(!select(vec2<bool>(global4.x, false), vec2<bool>(global4.x, false), global4.x), !(!vec2<bool>(global4.x, global4.x)), any(!vec4<bool>(global4.x, false, false, global4.x))), vec2<bool>(false, true));
    return arg_0.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> f32 {
    let var_0 = arg_1.b;
    global0 = arg_2;
    let var_1 = Struct_2(firstTrailingBit(~(~(~vec3<u32>(global3[_wgslsmith_index_u32(arg_0.a, 6u)], global3[_wgslsmith_index_u32(4294967295u, 6u)], arg_0.a)))), vec3<u32>(abs(u_input.a), countOneBits(u_input.a), reverseBits(select(4294967295u, ~arg_0.a, true))), -firstTrailingBit(u_input.c.zwy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + -1134f) - -480f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    var var_2 = Struct_2(func_4(var_1, var_1.a.xy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global0.zwz)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -179f), _wgslsmith_f_op_f32(func_3()), global0.x)), -(~(-u_input.c.x))), var_1.b, var_1.c, 1263f);
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(-1f);
}

fn func_1() -> Struct_3 {
    let var_0 = !global4.x;
    let var_1 = 4294967295u < max(max(~44334u, ~abs(u_input.a)), ~u_input.a);
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(729f, _wgslsmith_f_op_f32(global0.x + global0.x), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, ~_wgslsmith_mult_u32(u_input.a, 835u)), 29u)], _wgslsmith_f_op_f32(round(1000f))));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(Struct_1(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 6u)], 6u)], 6u)], global1[_wgslsmith_index_u32(0u, 29u)], global4.x, vec3<bool>(var_0, global4.x, true)), Struct_1(71831u, -513f, global4.x, vec3<bool>(false, var_0, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 1534f)))), _wgslsmith_div_f32(global0.x, -1144f), var_0)))), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_4(Struct_2(vec3<u32>(countOneBits(1u), _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 6u)], 6u)], 0u), _wgslsmith_sub_u32(u_input.a, global3[_wgslsmith_index_u32(1u, 6u)])), vec3<u32>(u_input.a, reverseBits(8253u), 43986u), u_input.c.wzw, global0.x), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(u_input.a, 6u)]), ~vec2<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15639u, 6u)], 6u)], 6u)])), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, global3[_wgslsmith_index_u32(u_input.a, 6u)]), vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 6u)], 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-597f, -1714f, -352f)), vec3<f32>(global0.x, -1238f, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16355u, 6u)], 29u)]), global4.x))), u_input.c.x).x, 6u)], 29u)], var_0));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(252f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -252f)) - 1888f), var_2, _wgslsmith_f_op_f32(abs(var_2)));
    return global2[_wgslsmith_index_u32(4294967295u, 10u)];
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: bool) -> bool {
    global3 = array<u32, 6>();
    let var_0 = arg_0.a.d.xz;
    var var_1 = -(i32(-1i) * -21647i);
    global2 = array<Struct_3, 10>();
    let var_2 = -vec2<i32>(abs(1647i), firstTrailingBit(1i));
    return true & var_0.x;
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: vec4<u32>, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = global0.x;
    var var_1 = abs(arg_2);
    var var_2 = false;
    var_1 = min(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_2.x, 5500u), 4294967295u, arg_2.x ^ 0u), arg_2.x, arg_2.x), 1u, select(4294967295u, _wgslsmith_dot_vec4_u32(~arg_2, arg_2), global4.x), ~u_input.a), arg_2);
    var var_3 = countOneBits(firstLeadingBit(-u_input.c.yx));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_1(), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 6u)], 29u)], global0.x, -388f, -477f) - vec4<f32>(589f, 1485f, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(44683u, 6u)], 29u)], global0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(677f, global0.x, 180f, -2315f), vec4<f32>(-1000f, 1023f, -3067f, global1[_wgslsmith_index_u32(40399u, 29u)]))))), !(true & !global4.x)), !(!global4.x), abs(vec4<u32>(global3[_wgslsmith_index_u32(~116273u, 6u)], global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, u_input.a, u_input.a), global3[_wgslsmith_index_u32(1u, 6u)] >> (u_input.a % 32u)), 6u)], select(_wgslsmith_dot_vec4_u32(vec4<u32>(79578u, 54246u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 6u)], 6u)], 35687u), vec4<u32>(26814u, u_input.a, 11350u, global3[_wgslsmith_index_u32(4294967295u, 6u)])), 33083u, false), _wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 6u)], _wgslsmith_div_u32(u_input.a, u_input.a)))), vec4<i32>(u_input.b, -2147483647i, u_input.c.x, -abs(u_input.b) << (12414u % 32u)));
    var var_1 = 2147483647i;
    global2 = array<Struct_3, 10>();
    global0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1582f)))), global0.x)), _wgslsmith_f_op_f32(func_2(func_6(global4.x, true, ~(~vec4<u32>(7744u, u_input.a, global3[_wgslsmith_index_u32(1u, 6u)], u_input.a)), countOneBits(-vec4<i32>(0i, u_input.b, 38145i, u_input.c.x))).a, var_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(35561u, 29u)] - -154f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 29u)]), _wgslsmith_f_op_f32(var_0.a.b + -701f), -1167f) - vec4<f32>(-464f, 1f, 224f, _wgslsmith_f_op_f32(-1932f - global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -100f)), !global4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-455f - _wgslsmith_f_op_f32(max(var_0.a.b, var_0.a.b)))) * global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 342u), 29u)]));
    var var_2 = Struct_3(Struct_1(_wgslsmith_mod_u32(firstTrailingBit(func_4(Struct_2(vec3<u32>(0u, var_0.a.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 6u)], 6u)]), vec3<u32>(0u, 0u, var_0.a.a), vec3<i32>(u_input.b, u_input.c.x, 31012i), var_0.a.b), vec2<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(34580u, 6u)], 6u)], 6u)]), global0.wxw, u_input.c.x).x), var_0.a.a), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32((4294967295u & u_input.a) << (~var_0.a.a % 32u), 29u)] + _wgslsmith_f_op_f32(abs(1f))), global4.x, !vec3<bool>(func_6(false, false, vec4<u32>(63366u, 10531u, global3[_wgslsmith_index_u32(var_0.a.a, 6u)], 0u), vec4<i32>(u_input.b, u_input.c.x, 1i, u_input.c.x)).a.c, any(vec4<bool>(global4.x, false, true, var_0.a.d.x)), false | global4.x)));
    global3 = array<u32, 6>();
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x * 893f))))), global0.zzx, global0.ywx);
}

