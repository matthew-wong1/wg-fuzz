struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 16>;

var<private> global2: u32;

var<private> global3: f32;

var<private> global4: vec2<f32> = vec2<f32>(-481f, 1300f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: u32) -> f32 {
    var var_0 = arg_2.x;
    let var_1 = -685i;
    var var_2 = arg_3 >= ~u_input.d;
    var var_3 = ~(~(~vec4<u32>(1u, arg_1.b, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, arg_3, 1u, 0u), vec4<u32>(24817u, 4294967295u, u_input.d, 53764u)), abs(arg_3))));
    let var_4 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -786f))))) * arg_0.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<f32>) -> Struct_3 {
    global3 = 478f;
    let var_0 = -(~(u_input.b.x | -_wgslsmith_clamp_i32(u_input.a, arg_1, -15963i)));
    global4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(774f, _wgslsmith_f_op_f32(-765f * _wgslsmith_f_op_f32(min(arg_2.x, 757f)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_2.xy))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_f_op_f32(-global4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(1341f + -218f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global4.x) * _wgslsmith_f_op_f32(-158f * global0.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(arg_2, _wgslsmith_f_op_vec4_f32(sign(arg_2)))), _wgslsmith_f_op_vec4_f32(-arg_2))));
    var var_2 = u_input.c.x;
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, global0.a)), Struct_1(arg_2.x, 37077u), vec4<f32>(global0.a, global4.x, -449f, -331f), select(u_input.d, u_input.d, true))), _wgslsmith_f_op_f32(select(504f, _wgslsmith_f_op_f32(step(-762f, arg_2.x)), all(arg_0))))));
}

fn func_1() -> i32 {
    var var_0 = u_input.d;
    global1 = array<Struct_3, 16>();
    global2 = u_input.c.x;
    global0 = func_2(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), any(vec4<bool>(false, true, false, false))), vec4<bool>(true, true, all(vec4<bool>(true, false, true, false)), true)), 0i & u_input.b.x, vec4<f32>(global0.a, -597f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), 2161f) + 1f), -607f));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1000f, global4.x, false)))))) + _wgslsmith_div_f32(-629f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.x, 329f)) * _wgslsmith_f_op_f32(global4.x * func_2(vec4<bool>(true, true, false, true), u_input.e, vec4<f32>(global4.x, -2422f, 182f, global4.x)).a))));
    return min(_wgslsmith_add_i32(select(_wgslsmith_sub_i32(-2147483647i, u_input.e) | (u_input.b.x & u_input.e), _wgslsmith_mod_i32(u_input.e ^ u_input.b.x, u_input.a), true), u_input.a), ~(~0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(select(_wgslsmith_mod_u32(u_input.c.x, 27602u), u_input.c.x, !any(vec4<bool>(false, false, false, true)) != !any(vec3<bool>(true, false, false))));
    var var_1 = firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(~(u_input.c.x << (u_input.d % 32u)), u_input.c.x), u_input.c.x, _wgslsmith_div_u32(0u, 4294967295u), reverseBits(u_input.d >> (u_input.d % 32u)) >> (6440u % 32u)));
    var var_2 = Struct_2(Struct_1(485f, abs(9180u)), firstTrailingBit(u_input.e & ~(~u_input.a)), 16483i);
    let var_3 = vec4<u32>(~var_1.x, ~(~5273u), 4294967295u >> (u_input.c.x % 32u), 1u);
    global3 = 300f;
    let var_4 = var_3.wyy;
    let var_5 = ~vec4<i32>(-1i, -_wgslsmith_div_i32(_wgslsmith_sub_i32(-14755i, -32422i), -1i), func_1(), var_2.c);
    var var_6 = select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), true), false), select(vec2<bool>(all(vec3<bool>(true, true, true)), false), vec2<bool>(true, true), vec2<bool>(true | (19276i > var_2.b), global0.a < _wgslsmith_f_op_f32(select(-1042f, global4.x, true)))), !(select(1i, -41026i, true) > (u_input.b.x ^ 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x);
}

