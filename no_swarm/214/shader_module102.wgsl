struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 4>;

var<private> global1: vec3<u32>;

var<private> global2: Struct_3;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_4, arg_3: Struct_5) -> vec2<u32> {
    let var_0 = arg_2.c.c.wxw;
    var var_1 = arg_2;
    var_1 = arg_2;
    let var_2 = global2.b.b;
    var var_3 = Struct_5(Struct_3(arg_2.d.x, global2.b, global2.b.b, min(firstLeadingBit(u_input.b), u_input.a.zwx), _wgslsmith_add_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.b.a.x, 24580u, var_1.b.a.x, 12792u), global2.e)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.e.a.x, arg_3.a.b.a.x, 1u), global2.d), ~36802u, abs(41641u), ~global1.x))), Struct_1(~min(var_0.x, _wgslsmith_div_i32(1i, arg_3.b.c.x)), _wgslsmith_f_op_f32(trunc(arg_1)), vec4<i32>(-1i) * -arg_3.b.c), _wgslsmith_f_op_f32(597f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.b.b.b * var_2.b))))), arg_2.a.b, Struct_2(firstTrailingBit(max(arg_3.a.d.xx, _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.a.d.x, global1.x), vec2<u32>(1u, 4294967295u), vec2<u32>(5400u, arg_3.e.a.x)))), var_1.b.b, !global2.b.c, var_0));
    return ~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(17836u, u_input.b.x), abs(_wgslsmith_add_vec2_u32(global1.yz, vec2<u32>(u_input.b.x, 44493u)))), global2.d.xy);
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_4(global2.b, Struct_2(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(global2.b.a << (global1.zz % vec2<u32>(32u)), u_input.a.ww), func_3(true, global2.a, Struct_4(Struct_2(u_input.b.yz, global2.c, vec2<bool>(false, false), global2.c.c.zwz), Struct_2(global2.e.xz, Struct_1(global2.c.c.x, global2.c.b, vec4<i32>(-17116i, global2.c.c.x, -1i, global2.b.b.c.x)), global2.b.c, global2.b.d), global2.b.b, vec2<f32>(global2.a, -1397f), vec2<i32>(global2.b.d.x, -2147483647i)), Struct_5(Struct_3(global2.b.b.b, global2.b, global2.c, global2.d, vec4<u32>(global1.x, global2.d.x, u_input.b.x, 4294967295u)), global2.c, 1183f, global2.b.b, Struct_2(vec2<u32>(global2.d.x, 30809u), global2.c, vec2<bool>(false, arg_0), global2.b.d)))), global2.c, select(!global2.b.c, vec2<bool>(any(global2.b.c), global2.b.c.x), global2.c.a <= global2.c.a), -firstTrailingBit(vec3<i32>(0i, 1i, -2147483647i))), Struct_1(31956i, global2.b.b.b, global2.c.c), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.c.b, -435f), _wgslsmith_div_vec2_f32(vec2<f32>(2011f, -496f), vec2<f32>(1579f, 530f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 238f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(510f, -920f) - vec2<f32>(global2.c.b, global2.c.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.b, 1000f))))), global2.b.c.x)), firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(min(global2.c.a, global2.c.a), global2.c.a >> (global1.x % 32u)), ~global2.b.b.a)));
    let var_1 = Struct_1(global2.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b.b * _wgslsmith_f_op_f32(select(global2.b.b.b, 1364f, all(vec4<bool>(true, var_0.b.c.x, true, false)))))), _wgslsmith_add_vec4_i32(var_0.b.b.c, ~(-global2.b.b.c)));
    global2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1063f)), Struct_2(~(~vec2<u32>(var_0.a.a.x, 45162u) | firstTrailingBit(vec2<u32>(u_input.b.x, u_input.a.x))), global2.c, !vec2<bool>(all(vec3<bool>(false, global2.b.c.x, false)), !arg_0), -(vec3<i32>(var_0.e.x, -1i, var_1.c.x) ^ vec3<i32>(var_1.a, var_0.e.x, global2.b.d.x))), global2.c, ~vec3<u32>(global2.b.a.x, ~global2.e.x, global2.e.x << (global2.d.x % 32u)) & _wgslsmith_clamp_vec3_u32(global2.d, global2.d, vec3<u32>(~0u, var_0.a.a.x, 1u)), reverseBits(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, var_0.a.a.x, u_input.a.x, 0u), ~vec4<u32>(98496u, global1.x, 25979u, 1u)))));
    let var_2 = global2.c.c.x;
    let var_3 = Struct_2(var_0.a.a, Struct_1(countOneBits(-2147483647i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1577f))), -_wgslsmith_add_vec4_i32(-global2.b.b.c, vec4<i32>(global2.b.b.c.x, -2147483647i, var_1.a, -2147483647i) & var_1.c)), var_0.b.c, var_1.c.zzy);
    return Struct_1(~35498i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-2149f))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1360f, 199f) - -125f)))), vec4<i32>(-2147483647i, var_0.a.d.x, 0i, global2.c.a));
}

fn func_1(arg_0: bool, arg_1: i32) -> vec2<f32> {
    global0 = array<vec3<bool>, 4>();
    let var_0 = 1i;
    var var_1 = func_2(_wgslsmith_clamp_u32(25883u, 291u, 4294967295u >> (1u % 32u)) < _wgslsmith_div_u32(firstTrailingBit(global1.x), ~_wgslsmith_mod_u32(77111u, 16354u)));
    var var_2 = Struct_5(Struct_3(398f, global2.b, global2.c, u_input.b, _wgslsmith_add_vec4_u32(select(u_input.a, vec4<u32>(53913u, 371u, 4294967295u, u_input.b.x), select(vec4<bool>(arg_0, arg_0, global2.b.c.x, arg_0), vec4<bool>(true, arg_0, false, true), vec4<bool>(arg_0, global2.b.c.x, arg_0, true))), global2.e)), global2.b.b, -693f, global2.b.b, Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(~global1.x, 138986u), ~global2.d.xx & reverseBits(vec2<u32>(u_input.b.x, 0u))), global2.c, select(vec2<bool>(0u >= global1.x, all(vec2<bool>(true, arg_0))), select(global2.b.c, vec2<bool>(true, true), global2.b.c), 21628u == global1.x), (vec3<i32>(var_1.a, -5685i, var_1.a) | _wgslsmith_mod_vec3_i32(global2.b.d, vec3<i32>(-2806i, 59690i, var_1.c.x))) | (vec3<i32>(-1i) * -vec3<i32>(3300i, -23525i, global2.c.a))));
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, var_2.c) - vec2<f32>(var_2.d.b, global2.b.b.b))))));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-245f + arg_2.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_2.x, arg_2.x)), _wgslsmith_f_op_f32(arg_2.x - arg_2.x)))));
    var var_1 = global2.b.c.x;
    var var_2 = arg_2;
    var var_3 = ~firstTrailingBit(u_input.a.x);
    var_3 = u_input.a.x;
    return Struct_3(_wgslsmith_div_f32(global2.b.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))))), global2.b, Struct_1(~select(i32(-1i) * -24751i, firstLeadingBit(47i), !global2.b.c.x), -109f, vec4<i32>(-2147483647i, arg_3.x, i32(-1i) * -32064i, ~0i) >> ((global2.e ^ abs(vec4<u32>(1u, 39944u, 44869u, 16649u))) % vec4<u32>(32u))), ~_wgslsmith_mult_vec3_u32(select(global2.e.xzx, ~vec3<u32>(global1.x, u_input.a.x, global2.b.a.x), true), global2.e.zwy), global2.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(i32(-1i) * -27265i);
    let var_1 = func_4(12667i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.b.b.b, global2.c.b), vec2<f32>(1275f, -905f), false)), vec2<f32>(global2.b.b.b, global2.a))))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global2.c.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(771f)) + _wgslsmith_f_op_f32(max(global2.a, -191f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_1(true, -13271i))))), -(~((vec2<i32>(global2.c.a, -2147483647i) << (global1.xz % vec2<u32>(32u))) ^ -global2.c.c.xx)));
    global0 = array<vec3<bool>, 4>();
    global0 = array<vec3<bool>, 4>();
    let var_2 = !(!select(select(select(vec3<bool>(false, global2.b.c.x, false), global0[_wgslsmith_index_u32(2367u, 4u)], vec3<bool>(false, var_1.b.c.x, var_1.b.c.x)), select(vec3<bool>(true, var_1.b.c.x, global2.b.c.x), global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(1u, 4u)]), global2.b.c.x), select(vec3<bool>(true, global2.b.c.x, global2.b.c.x), !vec3<bool>(false, true, var_1.b.c.x), select(vec3<bool>(global2.b.c.x, var_1.b.c.x, false), global0[_wgslsmith_index_u32(1u, 4u)], var_1.b.c.x)), false));
    var var_3 = var_1;
    global2 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.c.b), global2.a), _wgslsmith_f_op_f32(-136f * _wgslsmith_f_op_f32(-1098f - _wgslsmith_f_op_f32(var_1.b.b.b + -1854f))), var_2.x)), func_4(global2.c.c.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1175f, var_1.c.b)))), vec2<f32>(397f, _wgslsmith_div_f32(-749f, -1436f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(all(vec3<bool>(true, true, false)), abs(var_1.b.b.c.x))) * vec2<f32>(_wgslsmith_f_op_f32(max(455f, global2.b.b.b)), var_1.a)), func_4(_wgslsmith_div_i32(var_1.c.c.x, var_3.b.d.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.b.b, var_3.b.b.b)))), vec2<f32>(_wgslsmith_div_f32(-552f, global2.b.b.b), var_3.b.b.b), _wgslsmith_div_vec2_i32(global2.c.c.xw, global2.b.d.zx)).c.c.zx).b, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.c.x, 43347i) & var_1.c.c.xy, reverseBits(vec2<i32>(var_1.b.b.a, -1i)) & ~vec2<i32>(-1i, -2147483647i)), -1020f, var_1.b.b.c), u_input.b, _wgslsmith_mod_vec4_u32(vec4<u32>(abs(4294967295u & var_1.b.a.x), u_input.b.x, 36072u, 16527u), vec4<u32>(firstLeadingBit(var_1.e.x & 4294967295u), _wgslsmith_dot_vec3_u32(firstLeadingBit(var_1.d), u_input.b), func_4(reverseBits(-1i), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-684f, global2.c.b))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a, var_1.c.b), vec2<f32>(global2.c.b, var_1.a), global2.b.c.x)), var_3.c.c.xx).e.x, func_3(true, global2.c.b, Struct_4(Struct_2(vec2<u32>(75833u, global1.x), global2.b.b, var_1.b.c, vec3<i32>(-11415i, var_1.c.c.x, global2.c.c.x)), Struct_2(u_input.a.yx, var_3.c, var_3.b.c, var_1.c.c.xzw), Struct_1(var_1.b.b.c.x, -1000f, vec4<i32>(56269i, 1i, global2.b.d.x, var_1.c.c.x)), vec2<f32>(var_3.c.b, var_3.b.b.b), vec2<i32>(-8533i, var_1.b.d.x)), Struct_5(var_1, global2.c, -902f, Struct_1(-4801i, 1727f, vec4<i32>(global2.b.b.a, -4037i, var_3.c.c.x, var_1.b.d.x)), Struct_2(u_input.a.wy, var_3.c, vec2<bool>(true, true), vec3<i32>(var_3.b.d.x, var_0, global2.b.d.x)))).x)));
    global2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.b) * func_4(-8821i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2676f, -1326f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1669f, global2.b.b.b))), vec2<f32>(657f, var_1.a)), vec2<i32>(1i, var_0) >> (func_3(var_3.b.c.x, 771f, Struct_4(Struct_2(var_3.e.yx, Struct_1(0i, -744f, vec4<i32>(-26860i, 37784i, var_3.b.b.a, -38395i)), global2.b.c, global2.c.c.zwz), Struct_2(var_1.d.yy, var_3.b.b, vec2<bool>(var_3.b.c.x, var_1.b.c.x), vec3<i32>(-76236i, 1i, global2.c.a)), var_1.b.b, vec2<f32>(global2.a, -816f), var_1.c.c.yz), Struct_5(var_1, Struct_1(-2147483647i, var_3.a, var_3.b.b.c), var_1.b.b.b, Struct_1(global2.b.d.x, global2.a, var_1.b.b.c), global2.b)) % vec2<u32>(32u))).c.b), Struct_2(global1.yz, func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(11700i, 2147483647i), vec2<i32>(1i, global2.c.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(958f, 426f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.b, 439f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.c.b, var_3.c.b)))), var_3.c.c.yz).c, !select(global2.b.c, !vec2<bool>(true, var_1.b.c.x), vec2<bool>(var_1.b.c.x, true)), abs(~abs(var_1.b.d))), var_1.c, vec3<u32>(7253u, ~(~1u) >> (~(4294967295u << (global1.x % 32u)) % 32u), _wgslsmith_sub_u32(u_input.a.x, ~_wgslsmith_clamp_u32(30115u, 0u, 0u))), u_input.a);
    let var_4 = global2.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(24201i), select(~func_3(global2.b.c.x, var_3.a, Struct_4(Struct_2(global1.zy, Struct_1(13808i, var_1.b.b.b, vec4<i32>(0i, 1i, 23139i, var_1.b.d.x)), global2.b.c, vec3<i32>(7965i, 16112i, var_0)), var_3.b, var_3.b.b, vec2<f32>(var_3.c.b, global2.b.b.b), vec2<i32>(global2.c.c.x, var_3.b.d.x)), Struct_5(var_1, Struct_1(var_0, var_1.c.b, vec4<i32>(-19639i, var_0, var_3.c.a, 2147483647i)), -1212f, var_3.b.b, var_3.b)) >> (_wgslsmith_sub_vec2_u32(var_3.e.zw << (global1.yz % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(global2.b.a.x, 0u), var_3.d.xy)) % vec2<u32>(32u)), ~reverseBits(global2.b.a), !var_3.b.c.x));
}

