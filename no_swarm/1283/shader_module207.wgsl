struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(25201u, true, vec3<bool>(false, false, true), vec3<i32>(i32(-2147483648), 25131i, i32(-2147483648))), Struct_2(24277u, false, vec3<bool>(false, true, true), vec3<i32>(-1i, 1i, -40182i)), Struct_2(9418u, true, vec3<bool>(true, false, false), vec3<i32>(2147483647i, -8745i, -5554i)), Struct_2(51412u, true, vec3<bool>(false, true, false), vec3<i32>(1i, 11407i, 1i)), Struct_2(1u, false, vec3<bool>(false, false, false), vec3<i32>(24034i, -29045i, 10153i)), Struct_2(4294967295u, false, vec3<bool>(true, true, true), vec3<i32>(9612i, -98989i, 19726i)), Struct_2(36100u, false, vec3<bool>(false, false, false), vec3<i32>(2147483647i, 0i, 2147483647i)), Struct_2(24348u, false, vec3<bool>(false, true, true), vec3<i32>(26789i, 2147483647i, 54888i)), Struct_2(4294967295u, false, vec3<bool>(false, true, false), vec3<i32>(17203i, -1i, i32(-2147483648))), Struct_2(37032u, true, vec3<bool>(true, false, false), vec3<i32>(-35552i, 23660i, 30189i)), Struct_2(57836u, false, vec3<bool>(true, true, true), vec3<i32>(0i, 8119i, -31041i)), Struct_2(1u, false, vec3<bool>(true, false, false), vec3<i32>(31767i, 4837i, 1i)), Struct_2(49242u, false, vec3<bool>(true, false, true), vec3<i32>(-11212i, 2147483647i, i32(-2147483648))));

var<private> global1: array<u32, 26>;

var<private> global2: u32;

var<private> global3: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(374f)))), _wgslsmith_f_op_f32(sign(-756f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(596f - 412f), _wgslsmith_f_op_f32(-1670f - 889f)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1490f, -442f))))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    global1 = array<u32, 26>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())));
    let var_1 = arg_3.c.x;
    global2 = 43027u;
    var var_2 = _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(0u, u_input.a.x)), 16705u) ^ 2306u, 0u), ~(4294967295u ^ ~global1[_wgslsmith_index_u32(u_input.c.x, 26u)]));
    return Struct_1(u_input.a, _wgslsmith_mult_i32(62257i, _wgslsmith_add_i32(max(-10252i, firstLeadingBit(u_input.d.x)), arg_0.x)));
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    var var_0 = func_2(~(~u_input.d), u_input.d.xx, Struct_2(4294967295u, u_input.d.x < _wgslsmith_sub_i32(i32(-1i) * -53147i, 0i & u_input.d.x), vec3<bool>(true, true, true), u_input.d), global0[_wgslsmith_index_u32(u_input.a.x, 13u)]);
    let var_1 = select(u_input.d.yx, -_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.d.x, u_input.d.x), ~2147483647i), u_input.d.zy), vec2<bool>(true, select(false, all(vec2<bool>(true, true)), false)));
    let var_2 = Struct_2(var_0.a.x & 41570u, any(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false)) & select(select(true, true, false) | all(vec3<bool>(false, false, false)), select(false, true, false), _wgslsmith_clamp_i32(u_input.d.x, 2147483647i, -2147483647i) <= ~u_input.d.x), select(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), all(vec4<bool>(true, false, true, true))), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), true), all(vec2<bool>(true, true))), -vec3<i32>(u_input.d.x, firstLeadingBit(firstLeadingBit(var_1.x)), _wgslsmith_mult_i32(1i, u_input.d.x)));
    return global0[_wgslsmith_index_u32(var_0.a.x, 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(16427u, !any(vec3<bool>(true, select(false, true, false), true)), !select(vec3<bool>(true, any(vec3<bool>(false, false, false)), false), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), firstTrailingBit(vec3<i32>(-1i, 0i, _wgslsmith_add_i32(-2147483647i, -u_input.d.x))));
    global0 = array<Struct_2, 13>();
    global3 = 1000f;
    let var_1 = !(!select(vec4<bool>(!var_0.b, true, true, !var_0.c.x), !vec4<bool>(false, var_0.b, var_0.c.x, var_0.c.x), true));
    let var_2 = func_1();
    let var_3 = Struct_1(_wgslsmith_div_vec2_u32(func_2(firstLeadingBit(~var_2.d), _wgslsmith_add_vec2_i32(~var_0.d.yy, -vec2<i32>(-1i, u_input.d.x)), func_1(), var_2).a, _wgslsmith_clamp_vec2_u32(u_input.a, u_input.c, vec2<u32>(func_2(vec3<i32>(-69383i, -27409i, var_2.d.x), vec2<i32>(u_input.d.x, u_input.d.x), var_0, Struct_2(1u, var_2.c.x, var_2.c, var_0.d)).a.x, 17755u))), reverseBits(0i));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.b), vec3<u32>(1u, var_2.a, 1u)), 4294967295u, 19257u) << ((select(vec3<u32>(34888u, global1[_wgslsmith_index_u32(46415u, 26u)], 0u), vec3<u32>(4294967295u, 2618u, 97560u), var_2.c) << (~vec3<u32>(global1[_wgslsmith_index_u32(var_2.a, 26u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_3.a.x, 26u)], 26u)], 26u)], 1u) % vec3<u32>(32u))) % vec3<u32>(32u))), countOneBits(_wgslsmith_sub_u32(u_input.b, max(min(61767u, 0u), abs(var_0.a)))), 0u, var_0.d.x);
}

