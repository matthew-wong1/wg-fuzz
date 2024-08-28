struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<f32>(575f, -944f, 424f, -1073f), false, false), Struct_1(vec4<f32>(-560f, -470f, 167f, 520f), true, true), Struct_1(vec4<f32>(-733f, 1246f, 914f, -204f), false, true), Struct_1(vec4<f32>(-2139f, -157f, -1681f, -891f), true, false), Struct_1(vec4<f32>(1244f, -773f, 784f, -519f), true, true), Struct_1(vec4<f32>(982f, 1067f, -121f, -285f), false, false), Struct_1(vec4<f32>(786f, 822f, -786f, 109f), true, false), Struct_1(vec4<f32>(1635f, -1638f, 188f, -116f), true, false), Struct_1(vec4<f32>(-1039f, -1498f, 121f, 1000f), true, false), Struct_1(vec4<f32>(1000f, -846f, -1400f, -246f), false, false), Struct_1(vec4<f32>(377f, 1532f, -608f, -113f), true, false), Struct_1(vec4<f32>(-345f, -401f, 1070f, -1480f), true, true), Struct_1(vec4<f32>(-1222f, -272f, 246f, -113f), true, false), Struct_1(vec4<f32>(496f, -315f, -1065f, 835f), false, false), Struct_1(vec4<f32>(-1608f, 2098f, 219f, -817f), false, true), Struct_1(vec4<f32>(2155f, 1135f, 1000f, -607f), false, false), Struct_1(vec4<f32>(-561f, -698f, 1000f, -147f), true, true), Struct_1(vec4<f32>(-819f, -761f, -1316f, -394f), false, true), Struct_1(vec4<f32>(-1634f, -202f, 1181f, 933f), true, true), Struct_1(vec4<f32>(244f, -542f, -1291f, 335f), true, false), Struct_1(vec4<f32>(458f, -585f, 517f, 241f), false, true));

var<private> global1: array<vec4<i32>, 29>;

var<private> global2: array<f32, 2>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(arg_2, 21u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)))), -450f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, -674f) + vec2<f32>(arg_1.a.x, arg_1.a.x))))), vec2<f32>(_wgslsmith_f_op_f32(select(-1587f, arg_1.a.x, !var_0.c)), _wgslsmith_f_op_f32(-var_0.a.x))));
    var_1 = vec2<f32>(global2[_wgslsmith_index_u32(reverseBits(~65498u), 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -133f) - _wgslsmith_f_op_f32(f32(-1f) * -1705f))));
    var var_2 = global0[_wgslsmith_index_u32(~arg_2, 21u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-950f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2452f))), var_0.a.x) + _wgslsmith_f_op_vec3_f32(var_0.a.zzy + var_2.a.wyz)));
    return 1u;
}

fn func_2(arg_0: vec3<i32>) -> vec4<f32> {
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    var var_0 = global0[_wgslsmith_index_u32(0u & ~_wgslsmith_add_u32(max(func_3(arg_0.x, global0[_wgslsmith_index_u32(39668u, 21u)], u_input.d.x), select(4294967295u, 0u, false)), firstTrailingBit(85761u) << (4294967295u % 32u)), 21u)];
    global2 = array<f32, 2>();
    var var_1 = !vec4<bool>(!all(vec4<bool>(var_0.c, false, var_0.b, true)), true, true, all(vec2<bool>(any(vec4<bool>(false, var_0.c, true, true)), select(var_0.c, var_0.c, true))));
    return vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 2u)]), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1691f * _wgslsmith_f_op_f32(-311f + global2[_wgslsmith_index_u32(66364u, 2u)])))) + global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, u_input.a, _wgslsmith_div_u32(u_input.b, countOneBits(u_input.e))), 2u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1886f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * global2[_wgslsmith_index_u32(23220u, 2u)]) + 854f), true)), _wgslsmith_f_op_f32(abs(-1580f)), true)));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<bool>, arg_3: vec3<f32>) -> Struct_1 {
    global0 = array<Struct_1, 21>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1392f, arg_3.x), _wgslsmith_f_op_f32(938f * 1010f), 727f, 630f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(-vec3<i32>(48183i, -1i, arg_1))))), all(!select(vec4<bool>(false, true, true, true), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(false, arg_2.x, arg_2.x, true))) | !(false & arg_2.x), false);
    var var_1 = -_wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_sub_i32(0i, arg_1), select(arg_1, ~arg_1, false), arg_1, -44486i), ~vec4<i32>(-arg_1, -arg_1, -1i, reverseBits(arg_1)));
    var var_2 = false;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(540f, -497f), arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -996f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -743f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, arg_3.x, -1428f, 224f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, var_0.a.x, -1458f, -268f))))))), false, true);
    return var_3;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<i32>) -> vec2<i32> {
    var var_0 = arg_1;
    let var_1 = select(vec3<bool>(abs(u_input.d.x) >= u_input.c.x, !func_1(u_input.c.wzx, arg_0.x, select(vec3<bool>(false, true, false), vec3<bool>(var_0.c, var_0.b, false), true), vec3<f32>(var_0.a.x, -432f, global2[_wgslsmith_index_u32(4294967295u, 2u)])).b, arg_1.b), select(vec3<bool>(false, !any(vec3<bool>(true, arg_1.c, true)), arg_1.b), vec3<bool>(var_0.c, all(!vec3<bool>(arg_1.c, arg_1.b, arg_1.b)), _wgslsmith_dot_vec2_i32(arg_2.xz, arg_2.xz) == arg_0.x), all(select(!vec3<bool>(true, var_0.c, false), !vec3<bool>(true, var_0.c, true), vec3<bool>(true, true, true)))), select(select(vec3<bool>(false || var_0.c, false, false), !(!vec3<bool>(true, var_0.c, true)), any(vec4<bool>(var_0.b, var_0.b, true, arg_1.b))), vec3<bool>(true, true, true), all(select(select(vec2<bool>(false, true), vec2<bool>(var_0.b, arg_1.b), vec2<bool>(false, false)), vec2<bool>(true, var_0.b), var_0.b && false))));
    var var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(reverseBits(arg_0.x | -64316i), 2147483647i), _wgslsmith_mod_i32(-56259i, ~arg_2.x), max(countOneBits(arg_0.x), firstTrailingBit(-2147483647i)) >> (u_input.a % 32u)), vec3<i32>(_wgslsmith_clamp_i32(select(~arg_0.x, 0i, false), abs(_wgslsmith_add_i32(-34753i, 2147483647i)), 2147483647i), ~(-_wgslsmith_add_i32(100853i, 0i)), firstLeadingBit(_wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(1i, arg_0.x)))));
    global0 = array<Struct_1, 21>();
    var var_3 = all(var_1.xx);
    return -abs(arg_2.yz);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 2>();
    let var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(firstLeadingBit(max(vec2<i32>(-1i, -2147483647i), vec2<i32>(9229i, -2147483647i))), ~vec2<i32>(1i, 1i)), func_4(vec3<i32>(-1i, 1i, _wgslsmith_mod_i32(21470i, 55658i)), func_1(~u_input.c.wxw, countOneBits(2147483647i), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-759f, global2[_wgslsmith_index_u32(u_input.e, 2u)], -209f) * vec3<f32>(global2[_wgslsmith_index_u32(0u, 2u)], 317f, global2[_wgslsmith_index_u32(u_input.e, 2u)]))), select(_wgslsmith_add_vec3_i32(vec3<i32>(56397i, -2532i, -2147483647i), vec3<i32>(-21003i, -16845i, 54178i)), ~vec3<i32>(-31512i, -2147483647i, 52163i), true))), vec2<i32>(countOneBits(2147483647i), ~_wgslsmith_mod_i32(-1i, 2147483647i)) >> (u_input.d % vec2<u32>(32u)));
    let var_1 = select(~(i32(-1i) * -(~(-2147483647i))), _wgslsmith_clamp_i32(var_0.x, _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(10561u, 29u)], firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 29u)])), 10729i), true);
    let var_2 = var_0;
    var var_3 = global0[_wgslsmith_index_u32(abs(~(~u_input.e)), 21u)];
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_sub_vec3_i32(min(vec3<i32>(var_0.x, -1i, 0i), vec3<i32>(-1i, 0i, var_0.x)), max(vec3<i32>(1i, 1i, var_2.x), vec3<i32>(0i, var_2.x, -1i))))).x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-347f)) + 1f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(max(var_3.a.x, var_3.a.x))))), firstTrailingBit(var_0), u_input.c, min(u_input.c.yzy, vec3<u32>(1u, ~0u & u_input.e, u_input.b)), abs(vec2<i32>(_wgslsmith_add_i32(reverseBits(var_0.x), _wgslsmith_div_i32(-2147483647i, -20292i)), var_2.x)));
}

