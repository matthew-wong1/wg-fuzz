struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 46817u;

var<private> global1: array<bool, 13> = array<bool, 13>(false, false, false, true, false, true, false, true, false, false, true, false, true);

var<private> global2: vec3<bool>;

var<private> global3: array<f32, 14>;

var<private> global4: array<i32, 6> = array<i32, 6>(-1i, 1i, -1i, 2147483647i, 39149i, i32(-2147483648));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: u32) -> vec4<f32> {
    let var_0 = ~vec4<u32>(u_input.a.x, arg_0, 47705u, ~min(_wgslsmith_mult_u32(arg_2.x, 34894u), arg_1.c));
    global0 = ~_wgslsmith_clamp_u32(174u, arg_3 >> (1u % 32u), 13471u);
    global3 = array<f32, 14>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, 1579f, -1457f, global3[_wgslsmith_index_u32(76128u, 14u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, global3[_wgslsmith_index_u32(4294967295u, 14u)], 898f, 1507f))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(arg_1.x, 14u)], global3[_wgslsmith_index_u32(u_input.a.x, 14u)], 355f, 1708f), _wgslsmith_f_op_vec4_f32(func_3(7241u, Struct_1(vec4<bool>(false, global2.x, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], global2.x), global3[_wgslsmith_index_u32(22904u, 14u)], arg_1.x, 47206i), arg_1, u_input.a.x))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(409f, global3[_wgslsmith_index_u32(54188u, 14u)], global3[_wgslsmith_index_u32(arg_1.x, 14u)], global3[_wgslsmith_index_u32(4294967295u, 14u)]))))))));
    global4 = array<i32, 6>();
    let var_1 = vec3<bool>(true, global2.x, false);
    let var_2 = ~_wgslsmith_sub_vec3_i32(firstLeadingBit(reverseBits(vec3<i32>(1i, 30569i, -9204i)) | (vec3<i32>(-1i, 2147483647i, 0i) | vec3<i32>(19115i, arg_0.x, global4[_wgslsmith_index_u32(u_input.a.x, 6u)]))), _wgslsmith_sub_vec3_i32(select(vec3<i32>(global4[_wgslsmith_index_u32(arg_1.x, 6u)], global4[_wgslsmith_index_u32(46760u, 6u)], global4[_wgslsmith_index_u32(arg_1.x, 6u)]), abs(vec3<i32>(arg_0.x, -4288i, 0i)), !global1[_wgslsmith_index_u32(arg_1.x, 13u)]), _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(arg_0.x, arg_0.x, arg_0.x)), ~vec3<i32>(1i, arg_0.x, global4[_wgslsmith_index_u32(4294967295u, 6u)]))));
    let var_3 = Struct_1(!select(!vec4<bool>(false, var_1.x, false, global2.x), !(!vec4<bool>(true, global2.x, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], true)), any(var_1)), _wgslsmith_f_op_f32(step(var_0.x, -1327f)), countOneBits(0u), _wgslsmith_add_i32(var_2.x, -firstTrailingBit(abs(127i))));
    return vec2<bool>(!var_1.x, global1[_wgslsmith_index_u32(u_input.a.x, 13u)]);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: vec2<bool>) -> vec3<bool> {
    global1 = array<bool, 13>();
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1824f, 194f, arg_0)))) * _wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(1603u, 14u)], -253f, 670f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-385f, -1673f, global3[_wgslsmith_index_u32(117927u, 14u)])))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-613f, _wgslsmith_f_op_f32(arg_0 * global3[_wgslsmith_index_u32(u_input.a.x, 14u)]), _wgslsmith_f_op_f32(-853f - -1843f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(1u, 14u)], global3[_wgslsmith_index_u32(u_input.a.x, 14u)], global3[_wgslsmith_index_u32(u_input.a.x, 14u)]) + vec3<f32>(arg_0, arg_0, -675f)) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, global3[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec3<f32>(arg_0, -1362f, global3[_wgslsmith_index_u32(4294967295u, 14u)])))))));
    let var_1 = global2.x;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, arg_0, global3[_wgslsmith_index_u32(14279u, 14u)]), vec3<f32>(-597f, arg_0, 241f), !vec3<bool>(false, true, arg_3.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 151f, arg_0) + vec3<f32>(-1025f, arg_0, 496f)))) * vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(22241u, 14u)]), _wgslsmith_f_op_f32(f32(-1f) * -2698f), !arg_3.x)), var_0.x, -122f)));
    let var_2 = Struct_1(!vec4<bool>(select(0i, 0i, false) >= global4[_wgslsmith_index_u32(44u & u_input.a.x, 6u)], false, true, arg_2 >= abs(18258i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -885f) + _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0.x)))))), 1u, global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(35021u, 4294967295u, 2570u), 6u)]);
    return var_2.a.wxw;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_2(vec2<bool>(true, true));
    var var_1 = ~min(u_input.a.x, ~max(u_input.a.x, 4294967295u)) >> (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(arg_1.c, 3841u), 34964u, u_input.a.x, abs(arg_1.c))), ~select(~vec4<u32>(11472u, 4294967295u, 44224u, u_input.a.x), firstTrailingBit(vec4<u32>(23485u, 6022u, arg_1.c, arg_1.c)), global4[_wgslsmith_index_u32(u_input.a.x, 6u)] >= arg_2.x)) % 32u);
    var var_2 = !func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(arg_1.c, 14u)], -1319f)) * _wgslsmith_f_op_f32(arg_1.b * arg_1.b)))), ~(~countOneBits(arg_1.d)), -(1i | arg_1.d), !select(arg_1.a.zw, select(arg_1.a.xw, arg_0.xz, arg_1.a.yz), global2.x & global2.x)).yy;
    global3 = array<f32, 14>();
    let var_3 = 1631i;
    return var_0;
}

fn func_1(arg_0: bool, arg_1: f32) -> vec4<bool> {
    global1 = array<bool, 13>();
    let var_0 = func_5(select(select(vec3<bool>(true, true, true), !vec3<bool>(true, global2.x, true), false), select(select(vec3<bool>(true, true, true), vec3<bool>(arg_0, true, true), true), vec3<bool>(true, false, true), true), select(select(!vec3<bool>(arg_0, global2.x, true), !vec3<bool>(global2.x, false, global1[_wgslsmith_index_u32(6037u, 13u)]), 0u > u_input.a.x), func_4(_wgslsmith_f_op_f32(f32(-1f) * -229f), _wgslsmith_add_i32(10497i, -1i), global4[_wgslsmith_index_u32(abs(u_input.a.x), 6u)], func_2(vec2<i32>(-75456i, global4[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x))), vec3<bool>(true, select(true, global2.x, global2.x), arg_0))), Struct_1(vec4<bool>(false, !func_4(650f, global4[_wgslsmith_index_u32(1u, 6u)], global4[_wgslsmith_index_u32(u_input.a.x, 6u)], vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], false)).x, u_input.a.x > ~u_input.a.x, true), 739f, ~1u, abs(13311i)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 6u)], -1i)), _wgslsmith_add_vec2_i32(min(vec2<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 6u)], global4[_wgslsmith_index_u32(1u, 6u)]), vec2<i32>(global4[_wgslsmith_index_u32(35527u, 6u)], global4[_wgslsmith_index_u32(1u, 6u)]) >> (u_input.a.zx % vec2<u32>(32u))), ~_wgslsmith_div_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(1u, 6u)], global4[_wgslsmith_index_u32(40348u, 6u)]), vec2<i32>(global4[_wgslsmith_index_u32(4294967295u, 6u)], -3289i)))));
    global2 = func_4(_wgslsmith_f_op_f32(max(-1055f, -206f)), -2147483647i, 10635i, global2.xy);
    var var_1 = ~(~(~16142u));
    global4 = array<i32, 6>();
    return !(!select(select(select(vec4<bool>(true, arg_0, var_0.a.x, arg_0), vec4<bool>(false, true, global2.x, false), vec4<bool>(arg_0, arg_0, true, arg_0)), select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], true), vec4<bool>(false, false, true, true), arg_0), false), vec4<bool>(!global1[_wgslsmith_index_u32(u_input.a.x, 13u)], !arg_0, any(var_0.a), true), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], global2.x, false))), !func_1(global1[_wgslsmith_index_u32((u_input.a.x << (9133u % 32u)) | ~25435u, 13u)], global3[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 14u)]), !func_1(func_2(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 6u)], global4[_wgslsmith_index_u32(4294967295u, 6u)])), min(vec4<u32>(u_input.a.x, u_input.a.x, 74211u, 46580u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 58079u))).x, global3[_wgslsmith_index_u32(u_input.a.x, 14u)]));
    global3 = array<f32, 14>();
    var var_1 = vec2<u32>(u_input.a.x, 1u);
    let var_2 = vec2<u32>(u_input.a.x, u_input.a.x << (0u % 32u)) << (~(_wgslsmith_clamp_vec2_u32(u_input.a.xx | u_input.a.zy, countOneBits(vec2<u32>(var_1.x, var_1.x)), vec2<u32>(u_input.a.x, 4294967295u)) << (_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), ~vec2<u32>(u_input.a.x, 55669u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_3 = Struct_1(vec4<bool>(!all(global2.yx), false, false, var_0.x), 685f, var_1.x, abs(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, _wgslsmith_div_i32(global4[_wgslsmith_index_u32(u_input.a.x, 6u)], global4[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -31084i), vec2<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 6u)], global4[_wgslsmith_index_u32(1u, 6u)]))), -20603i)));
    var_1 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(106f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_1.x, 14u)])))), firstLeadingBit(vec3<i32>(~global4[_wgslsmith_index_u32(~0u, 6u)], -6157i, -2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_1.x, 14u)] + -1056f)), var_3.b, true)), 223f));
}

