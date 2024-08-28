struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<bool>(true, false, false), 5112i, true, vec3<bool>(true, false, true), 81553u), Struct_1(vec3<bool>(true, true, true), i32(-2147483648), true, vec3<bool>(true, true, true), 40714u), Struct_1(vec3<bool>(false, false, false), -1i, true, vec3<bool>(true, true, true), 0u), Struct_1(vec3<bool>(true, false, true), 1i, false, vec3<bool>(false, false, false), 17961u), Struct_1(vec3<bool>(false, true, false), 12698i, false, vec3<bool>(false, true, true), 6801u), Struct_1(vec3<bool>(false, true, true), -26108i, true, vec3<bool>(false, false, false), 4294967295u), Struct_1(vec3<bool>(true, true, false), 1i, false, vec3<bool>(false, false, true), 37291u), Struct_1(vec3<bool>(false, true, true), -2123i, true, vec3<bool>(true, false, false), 9666u), Struct_1(vec3<bool>(false, true, true), i32(-2147483648), false, vec3<bool>(true, true, false), 4294967295u), Struct_1(vec3<bool>(true, false, true), 0i, true, vec3<bool>(true, true, true), 0u), Struct_1(vec3<bool>(true, true, false), 13342i, true, vec3<bool>(true, false, false), 0u), Struct_1(vec3<bool>(true, false, false), 1i, false, vec3<bool>(true, true, false), 38710u), Struct_1(vec3<bool>(false, false, false), i32(-2147483648), true, vec3<bool>(false, false, false), 46191u), Struct_1(vec3<bool>(false, false, false), 2147483647i, true, vec3<bool>(false, true, true), 1u), Struct_1(vec3<bool>(false, true, false), -1i, false, vec3<bool>(false, false, true), 56849u), Struct_1(vec3<bool>(false, false, false), -32445i, false, vec3<bool>(false, true, false), 75926u), Struct_1(vec3<bool>(false, false, false), 2147483647i, false, vec3<bool>(true, false, true), 38371u), Struct_1(vec3<bool>(true, false, true), 1i, false, vec3<bool>(true, true, false), 4294967295u), Struct_1(vec3<bool>(true, false, true), 19636i, false, vec3<bool>(false, false, false), 11309u), Struct_1(vec3<bool>(true, false, true), i32(-2147483648), false, vec3<bool>(true, true, false), 4294967295u), Struct_1(vec3<bool>(true, false, false), -29015i, false, vec3<bool>(true, true, false), 125084u), Struct_1(vec3<bool>(true, false, false), -1i, true, vec3<bool>(false, true, true), 1u), Struct_1(vec3<bool>(true, true, true), 1i, false, vec3<bool>(true, true, false), 1u), Struct_1(vec3<bool>(false, false, false), 2147483647i, true, vec3<bool>(false, false, true), 4294967295u), Struct_1(vec3<bool>(true, true, true), -22420i, false, vec3<bool>(false, false, true), 13041u), Struct_1(vec3<bool>(true, true, true), -5150i, false, vec3<bool>(false, false, true), 4294967295u), Struct_1(vec3<bool>(true, true, false), 0i, false, vec3<bool>(true, false, true), 1u), Struct_1(vec3<bool>(true, false, true), 13128i, false, vec3<bool>(true, true, false), 18730u), Struct_1(vec3<bool>(false, false, false), 1i, false, vec3<bool>(true, false, true), 1u), Struct_1(vec3<bool>(true, false, false), 462i, true, vec3<bool>(false, true, true), 50800u));

var<private> global1: u32 = 0u;

var<private> global2: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: i32) -> f32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1247f)), false, countOneBits(0u), ~(_wgslsmith_sub_i32(-1i, ~u_input.a.x) | arg_2));
    var var_1 = abs(_wgslsmith_mult_i32(u_input.b, _wgslsmith_div_i32(select(var_0.d, u_input.b, arg_1.a), var_0.d ^ -56632i)) ^ (var_0.d << (u_input.c.x % 32u)));
    let var_2 = !(!(!(!arg_1.a)));
    var_1 = min(_wgslsmith_mult_i32(u_input.b, ~_wgslsmith_sub_i32(-arg_2, var_0.d)), -arg_2);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1798f * _wgslsmith_f_op_f32(-var_0.a)), -1000f)) + _wgslsmith_f_op_f32(-var_0.a)));
    return _wgslsmith_f_op_f32(max(231f, _wgslsmith_f_op_f32(arg_0 + -1017f)));
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: u32) -> f32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + global2.x) - _wgslsmith_f_op_f32(func_3(140f, Struct_4(arg_1.a), u_input.b)))))), true, ~4294967295u, u_input.a.x | _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(-35768i, u_input.a.x), abs(u_input.a)), firstLeadingBit(u_input.a)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-478f - var_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(795f))), true)), global2.x, -1867f);
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u ^ arg_2, var_0.c), ~vec2<u32>(~_wgslsmith_mod_u32(7905u, arg_0), 0u));
    let var_3 = select(vec4<bool>(all(vec3<bool>(true, -1079f == global2.x, true)), true, !select(true, false, !arg_1.a), false), select(!vec4<bool>(all(vec4<bool>(true, true, var_0.b, true)), any(vec4<bool>(arg_1.a, false, arg_1.a, false)), true, false), vec4<bool>(!any(vec3<bool>(var_0.b, false, arg_1.a)), arg_1.a, var_0.b, !arg_1.a), 24653u >= _wgslsmith_clamp_u32(4294967295u, abs(u_input.c.x), 1u)), var_0.b);
    var var_4 = Struct_1(!select(var_3.xwx, select(var_3.wyx, vec3<bool>(true, var_0.b, arg_1.a), var_0.b), var_3.yxx), ~(~firstTrailingBit(u_input.b)), var_3.x, var_3.xzx, 31755u);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + var_1.x)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(step(-505f, _wgslsmith_div_f32(-164f, 832f))), arg_1, _wgslsmith_dot_vec2_i32(~select(u_input.a, vec2<i32>(0i, u_input.b), true), firstLeadingBit(firstTrailingBit(u_input.a)))))));
}

fn func_1(arg_0: Struct_5) -> f32 {
    let var_0 = arg_0.c;
    global1 = reverseBits(arg_0.c);
    let var_1 = select(vec4<bool>(any(vec3<bool>(select(arg_0.b, false, arg_0.b), true, !arg_0.b)), arg_0.b, arg_0.b, !arg_0.b), !vec4<bool>(arg_0.b, false, true, all(select(vec4<bool>(true, arg_0.b, false, true), vec4<bool>(true, false, false, arg_0.b), arg_0.b))), !select(true, any(select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, true), true)), _wgslsmith_f_op_f32(arg_0.a * arg_0.a) <= _wgslsmith_f_op_f32(func_2(4294967295u, Struct_4(arg_0.b), 0u))));
    var var_2 = Struct_4(true);
    global0 = array<Struct_1, 30>();
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + 300f) - 150f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_5(global2.x, false, u_input.c.x, u_input.b))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1357f)), global2.x)))));
    var var_0 = ~abs(vec3<u32>(u_input.c.x, 1u, u_input.c.x));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(~u_input.c.x, 30u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-785f - -1545f))), _wgslsmith_f_op_f32(global2.x + global2.x)), !select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true)), vec4<bool>(true, all(vec2<bool>(false, true)), true, any(vec4<bool>(false, true, false, true))), select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, false, false))), abs(~countOneBits(vec2<u32>(u_input.c.x, u_input.c.x))), Struct_1(select(vec3<bool>(any(vec2<bool>(false, true)), true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), true)), _wgslsmith_add_i32(-2147483647i, ~u_input.a.x), true, vec3<bool>(true, select(all(vec3<bool>(false, false, false)), true, true), true == all(vec4<bool>(true, true, false, false))), ~u_input.c.x));
    global0 = array<Struct_1, 30>();
    let var_2 = Struct_4(false);
    var var_3 = _wgslsmith_mult_vec3_i32(~vec3<i32>(_wgslsmith_sub_i32(0i, 34331i), var_1.a.b, -7397i), -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.b, var_1.a.b, -2147483647i) & vec3<i32>(var_1.e.b, var_1.e.b, 16446i), min(vec3<i32>(u_input.a.x, u_input.b, -2147483647i), vec3<i32>(var_1.a.b, -1i, u_input.a.x))), u_input.a.x, reverseBits(firstLeadingBit(1486i))));
    let var_4 = Struct_5(global2.x, false, ~1u, min(max(_wgslsmith_div_i32(var_3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-22031i, var_1.a.b, 17695i), vec3<i32>(var_1.e.b, var_3.x, u_input.b))), ~var_3.x), max(-(~var_1.e.b), 0i)));
    global2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a) * 1000f) + _wgslsmith_f_op_f32(min(780f, global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -307f))), vec2<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(f32(-1f) * -2241f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~_wgslsmith_div_i32(var_4.d, -1i), reverseBits(_wgslsmith_clamp_i32(var_3.x, -35232i, -6606i)), firstLeadingBit(_wgslsmith_sub_i32(~0i, var_1.a.b)), _wgslsmith_add_i32(0i, var_1.a.b)), u_input.a.x, -1370f);
}

