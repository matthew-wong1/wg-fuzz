struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false));

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<f32>(1525f, 848f, -975f, 971f), false, true), Struct_1(vec4<f32>(426f, -2254f, 797f, -1106f), true, true), Struct_1(vec4<f32>(1899f, 198f, -1730f, -883f), true, false), Struct_1(vec4<f32>(1000f, 1370f, 981f, -1302f), false, false), Struct_1(vec4<f32>(315f, 172f, 136f, -441f), true, false), Struct_1(vec4<f32>(-512f, -337f, 1544f, 1000f), false, true), Struct_1(vec4<f32>(1276f, 1000f, -787f, 1392f), false, true), Struct_1(vec4<f32>(-774f, 494f, 1040f, -189f), false, true), Struct_1(vec4<f32>(-289f, 1674f, 1000f, 293f), false, true), Struct_1(vec4<f32>(-894f, -1543f, 1063f, 839f), false, false), Struct_1(vec4<f32>(-157f, -658f, -1948f, 1068f), true, false), Struct_1(vec4<f32>(-884f, 1026f, -718f, 1605f), true, false), Struct_1(vec4<f32>(1351f, -1910f, -295f, 1292f), true, true), Struct_1(vec4<f32>(-1379f, 1900f, 121f, -904f), true, true), Struct_1(vec4<f32>(1607f, 1000f, 1204f, 1370f), false, false), Struct_1(vec4<f32>(-922f, -498f, -1000f, 436f), true, false));

var<private> global3: array<i32, 13>;

var<private> global4: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2148f, arg_0, 2146f, arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, -1538f, arg_0), vec4<f32>(-1609f, -710f, arg_0, arg_0), true)) + _wgslsmith_div_vec4_f32(vec4<f32>(978f, arg_0, 234f, arg_0), vec4<f32>(arg_0, -2117f, -145f, arg_0))))), vec4<f32>(_wgslsmith_f_op_f32(-161f + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-1690f - arg_0))), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(max(arg_0, -1661f))), 307f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -588f), _wgslsmith_f_op_f32(f32(-1f) * -1253f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, -1879f, global4.x)) - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + 895f), _wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -652f, -341f, 416f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(315f, arg_0, arg_0, arg_0), vec4<f32>(arg_0, arg_0, 572f, -1024f)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1500f, arg_0, arg_0, -627f))))), !any(select(vec3<bool>(global4.x, false, global4.x), vec3<bool>(false, true, global4.x), vec3<bool>(true, false, true))))));
    global0 = u_input.a;
    let var_1 = vec3<f32>(371f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(102f))))), var_0.x);
    let var_2 = countOneBits(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(global3[_wgslsmith_index_u32(global0.x, 13u)], global3[_wgslsmith_index_u32(u_input.a.x, 13u)], 19644i, global3[_wgslsmith_index_u32(u_input.a.x, 13u)]) >> ((vec4<u32>(7001u, u_input.a.x, 0u, 4294967295u) | u_input.a) % vec4<u32>(32u)), min(-vec4<i32>(-54097i, global3[_wgslsmith_index_u32(2879u, 13u)], 1i, global3[_wgslsmith_index_u32(u_input.a.x, 13u)]), ~vec4<i32>(-32954i, global3[_wgslsmith_index_u32(global0.x, 13u)], -11393i, global3[_wgslsmith_index_u32(u_input.a.x, 13u)]))), -global3[_wgslsmith_index_u32(global0.x, 13u)], firstTrailingBit(min(reverseBits(global3[_wgslsmith_index_u32(u_input.a.x, 13u)]), _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(global0.x, 13u)], 14877i))), _wgslsmith_add_i32(-7553i, 1i) ^ global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(global0.x, global0.x, 323u, global0.x), u_input.a), u_input.a), 13u)]));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_0.x, -1640f, 643f) + var_0))) * vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(1069f, arg_0)), var_0.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -333f, -671f, var_0.x)) + _wgslsmith_f_op_vec4_f32(var_0 + vec4<f32>(arg_0, arg_0, 1046f, var_1.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, arg_0, arg_0, arg_0))), vec4<f32>(550f, -346f, -714f, var_1.x)))), global4.x)), var_0));
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_4 {
    global2 = array<Struct_1, 16>();
    let var_0 = firstTrailingBit(_wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(14682i, _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(arg_0, 13u)] << (global0.x % 32u), _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(u_input.a.x, 13u)], global3[_wgslsmith_index_u32(arg_0, 13u)]))), _wgslsmith_mult_i32(-(~global3[_wgslsmith_index_u32(arg_1, 13u)]), global3[_wgslsmith_index_u32(u_input.a.x, 13u)])));
    let var_1 = 0i;
    global3 = array<i32, 13>();
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(min(-347f, _wgslsmith_f_op_f32(779f + _wgslsmith_f_op_f32(-558f + 1000f))))))));
    return Struct_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-511f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2, -100f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -942f) - var_2), var_2), !global4.x, any(select(vec2<bool>(global4.x, false), vec2<bool>(true, global4.x), false)) != any(vec3<bool>(global4.x, global4.x, true))), u_input.a, Struct_1(_wgslsmith_f_op_vec4_f32(func_3(-375f)), global4.x, true), Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(234f * -604f) - _wgslsmith_f_op_f32(abs(211f))))), -_wgslsmith_sub_vec3_i32(max(vec3<i32>(17866i, var_1, 1i), vec3<i32>(0i, 3938i, var_0)), vec3<i32>(-6184i, global3[_wgslsmith_index_u32(global0.x, 13u)], var_0))), !(!(!select(vec4<bool>(global4.x, false, global4.x, global4.x), global1[_wgslsmith_index_u32(31866u, 16u)], global4.x))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: vec4<u32>) -> Struct_2 {
    global0 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.x, arg_3.x), arg_1.xx, arg_1.zz)), reverseBits(reverseBits(vec2<u32>(arg_0.b.x, global0.x)))), min(5758u, 21561u) >> (reverseBits(arg_0.b.x) % 32u)), reverseBits(36055u), 61586u, global0.x);
    var var_0 = Struct_3(903f, _wgslsmith_mod_u32(countOneBits(max(abs(global0.x), u_input.a.x)), _wgslsmith_mod_u32(~_wgslsmith_div_u32(arg_1.x, 0u), _wgslsmith_div_u32(arg_1.x, arg_3.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1201f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a.a.x))), !arg_0.e.x)));
    var var_1 = vec2<bool>(select(true, all(arg_0.e.wx), all(!vec3<bool>(false, global4.x, arg_0.a.c))), arg_0.a.b);
    var var_2 = true;
    let var_3 = vec2<u32>(~(~var_0.b & _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, global0.x, 0u), ~vec3<u32>(45634u, u_input.a.x, global0.x))), min(firstTrailingBit(1u), 0u));
    return arg_0.d;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>) -> f32 {
    var var_0 = func_4(func_2(~(~(~25516u)), global0.x), u_input.a.xyx, ~vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 13u)] & firstTrailingBit(global3[_wgslsmith_index_u32(global0.x, 13u)]), ~23887i, -49830i, 0i >> (global0.x % 32u)), ~abs(u_input.a));
    global2 = array<Struct_1, 16>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -132f), 52776u, -370f);
    var var_2 = ~abs(global0.ww);
    let var_3 = -abs(-reverseBits(var_0.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1216f, var_1.a, !(!(global3[_wgslsmith_index_u32(35704u, 13u)] == 1399i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    global3 = array<i32, 13>();
    var_0 = ~(~select(vec4<u32>(u_input.a.x & 2442u, abs(0u), var_0.x, 25730u), ~u_input.a >> (u_input.a % vec4<u32>(32u)), vec4<bool>(any(vec3<bool>(global4.x, global4.x, global4.x)), global4.x, true, true)));
    let var_1 = all(!(!(!vec2<bool>(global4.x, global4.x)))) == all(vec3<bool>(global4.x, all(select(vec3<bool>(global4.x, false, false), vec3<bool>(false, global4.x, false), global4.x)), global4.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -416f))));
    var_0 = firstLeadingBit(~u_input.a);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(max(-570f, -190f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1376f, _wgslsmith_f_op_f32(func_1(vec4<f32>(780f, 234f, -1000f, -1033f), vec4<bool>(var_1, true, global4.x, false))))))), _wgslsmith_add_vec3_i32(~vec3<i32>(countOneBits(global3[_wgslsmith_index_u32(53334u, 13u)]), abs(0i), _wgslsmith_mod_i32(3799i, global3[_wgslsmith_index_u32(0u, 13u)])), countOneBits(-(~vec3<i32>(13603i, -2147483647i, global3[_wgslsmith_index_u32(1u, 13u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-46718i), max(var_3.b.yz << (~var_0.xz % vec2<u32>(32u)), var_3.b.xz));
}

