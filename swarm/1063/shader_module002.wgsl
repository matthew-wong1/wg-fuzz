struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: Struct_2,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: u32;

var<private> global2: array<bool, 29>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    var var_0 = -firstLeadingBit(-abs(vec3<i32>(-1i, 5174i, -1i)) & abs(firstLeadingBit(vec3<i32>(u_input.c, 60790i, u_input.b))));
    let var_1 = Struct_5(select(!select(select(global0.a, global0.a, true), select(vec2<bool>(global0.a.x, global0.a.x), global0.a, vec2<bool>(false, false)), !global0.a.x), global0.a, ~reverseBits(u_input.a.x) != u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-990f - 2012f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(500f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1096f + 1000f)))))));
    return ~1u;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(max(-322f, -377f));
    let var_1 = Struct_4(26550u >> (abs(select(abs(u_input.a.x), func_3(), global0.a.x || global2[_wgslsmith_index_u32(4294967295u, 29u)])) % 32u), u_input.a.zww);
    let var_2 = 877f;
    var var_3 = Struct_4(u_input.a.x, countOneBits(u_input.a.yzz));
    global2 = array<bool, 29>();
    return select(1i, ~_wgslsmith_dot_vec3_i32(abs(countOneBits(vec3<i32>(u_input.b, 1i, -1i))), select(vec3<i32>(u_input.c, u_input.b, u_input.c) | vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(2147483647i, -2147483647i, u_input.b), true)), true);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_4) -> Struct_5 {
    let var_0 = select(_wgslsmith_add_i32(-_wgslsmith_add_i32(-1i, 33305i), firstTrailingBit(0i)) & countOneBits(_wgslsmith_mult_i32(3455i, arg_1.x)), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-47251i, ~10166i), arg_1)), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(787f + -570f), _wgslsmith_f_op_f32(step(-225f, -503f))) == _wgslsmith_f_op_f32(trunc(1577f))));
    var var_1 = Struct_4(~u_input.a.x, vec3<u32>(u_input.a.x, func_3(), ~24907u));
    var_1 = Struct_4(var_1.b.x, vec3<u32>(7216u, 30077u | ~var_1.b.x, arg_2.a));
    let var_2 = u_input.a;
    let var_3 = -_wgslsmith_mult_i32(-(~2147483647i), u_input.c);
    return Struct_5(select(global0.a, select(vec2<bool>(false, arg_0.a), select(global0.a, select(global0.a, vec2<bool>(global0.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec2<bool>(global2[_wgslsmith_index_u32(34066u, 29u)], global0.a.x)), global0.a), any(vec2<bool>(arg_0.a, global2[_wgslsmith_index_u32(var_1.b.x, 29u)]))), global0.a.x | !any(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 29u)], arg_0.a, true))));
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    global1 = 4294967295u;
    let var_0 = !global0.a;
    var var_1 = 74584u;
    let var_2 = Struct_4(u_input.a.x, u_input.a.xxy);
    global0 = func_4(arg_0, vec2<i32>(firstLeadingBit(_wgslsmith_sub_i32(1i, ~u_input.b)), firstLeadingBit(func_2())), Struct_4(func_3(), vec3<u32>(u_input.a.x, ~firstTrailingBit(var_2.b.x), 4294967295u)));
    return Struct_4(firstLeadingBit(var_2.b.x), ~vec3<u32>(~_wgslsmith_clamp_u32(u_input.a.x, 1u, 2939u), var_2.a, ~u_input.a.x));
}

fn func_5(arg_0: Struct_4) -> Struct_4 {
    global1 = ~_wgslsmith_dot_vec2_u32(u_input.a.zw, vec2<u32>(10899u, arg_0.b.x));
    global2 = array<bool, 29>();
    var var_0 = u_input.a.x;
    global0 = func_4(Struct_1(_wgslsmith_clamp_i32(0i, 1i, 28440i) == -40636i), firstTrailingBit(vec2<i32>(1i, ~u_input.b)), func_1(Struct_1(select(!global0.a.x, func_4(Struct_1(global0.a.x), vec2<i32>(u_input.c, u_input.b), Struct_4(68587u, arg_0.b)).a.x, global2[_wgslsmith_index_u32(u_input.a.x, 29u)]))));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-394f, -766f)) - vec2<f32>(-303f, -1210f))), vec2<f32>(126f, -499f)));
    return Struct_4(countOneBits(4294967295u), ~(~reverseBits(arg_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 29>();
    let var_0 = true;
    global2 = array<bool, 29>();
    global2 = array<bool, 29>();
    global2 = array<bool, 29>();
    var var_1 = u_input.c | (-42994i >> (u_input.a.x % 32u));
    var var_2 = Struct_5(!select(global0.a, vec2<bool>(false, u_input.a.x > 5249u), global2[_wgslsmith_index_u32(29957u, 29u)]));
    var var_3 = func_5(func_1(Struct_1(var_2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-239f, -496f, 372f, 1f), vec4<f32>(_wgslsmith_f_op_f32(-203f - 1000f), _wgslsmith_div_f32(-260f, 1000f), -748f, _wgslsmith_f_op_f32(trunc(1986f))), !select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], global0.a.x, global0.a.x, false), vec4<bool>(global2[_wgslsmith_index_u32(67025u, 29u)], global0.a.x, global0.a.x, var_2.a.x), vec4<bool>(true, var_0, var_2.a.x, false)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-205f - -1178f) - _wgslsmith_f_op_f32(step(-2113f, 375f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-503f))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -181f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-641f - -620f)))));
}

