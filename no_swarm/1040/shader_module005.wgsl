struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec2<bool>,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(-1i, -1i, -1i, 1i, -66462i, 1i, -23255i, 0i, -1i, 1i, -24936i, 49262i, 1i, 12502i, 1i, 8302i, 4971i, -5258i, 18197i, -31246i, -52754i);

var<private> global1: Struct_2 = Struct_2(vec2<u32>(0u, 33248u));

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(false, 991f), Struct_1(false, -899f), Struct_1(true, -645f), Struct_1(false, -684f), Struct_1(false, -261f), Struct_1(true, -129f), Struct_1(false, 284f), Struct_1(true, 1684f), Struct_1(false, -424f), Struct_1(false, -228f), Struct_1(false, 484f), Struct_1(true, -237f), Struct_1(true, 1400f), Struct_1(false, -1000f), Struct_1(true, 773f), Struct_1(false, 1256f), Struct_1(false, -1108f), Struct_1(false, -1091f), Struct_1(true, -158f), Struct_1(false, -541f), Struct_1(false, 302f), Struct_1(false, 238f), Struct_1(true, -619f), Struct_1(true, -2755f), Struct_1(false, -387f), Struct_1(false, 1000f), Struct_1(true, 263f), Struct_1(true, 476f), Struct_1(true, 2493f), Struct_1(true, -590f));

var<private> global3: array<Struct_1, 1>;

var<private> global4: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(false, 1000f), Struct_1(true, -261f), Struct_1(true, 1000f), Struct_1(true, -1000f), Struct_1(false, 568f), Struct_1(false, 333f), Struct_1(false, -902f));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    global2 = array<Struct_1, 30>();
    let var_0 = _wgslsmith_f_op_f32(max(-1000f, 300f));
    global3 = array<Struct_1, 1>();
    var var_1 = arg_0;
    let var_2 = abs((min(select(vec2<u32>(4294967295u, arg_0.e.a.x), global1.a, vec2<bool>(true, false)), arg_0.b.a) >> (arg_1 % vec2<u32>(32u))) & firstLeadingBit(firstLeadingBit(vec2<u32>(4775u, arg_1.x) ^ vec2<u32>(arg_0.b.a.x, 59733u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-150f + _wgslsmith_f_op_f32(f32(-1f) * -584f)) - _wgslsmith_f_op_f32(arg_0.d.x - var_0));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> bool {
    let var_0 = 14697u;
    global3 = array<Struct_1, 1>();
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(vec4<i32>(30854i, -46003i, 2147483647i, arg_2), arg_1, vec2<bool>(arg_3, arg_3), vec4<f32>(-1236f, -1000f, 192f, 1766f), arg_1), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(26355u, arg_1.a.x)), global2[_wgslsmith_index_u32(~4294967295u, 30u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -233f), -1190f)) * -1482f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -805f)))), _wgslsmith_f_op_f32(1092f * _wgslsmith_f_op_f32(-1f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(-230f, -317f), 217f, -1366f, _wgslsmith_f_op_f32(sign(-972f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(773f, _wgslsmith_f_op_f32(f32(-1f) * -332f), _wgslsmith_f_op_f32(abs(605f)), _wgslsmith_f_op_f32(-846f - -890f))))));
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), max(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2, -58581i, -4926i) ^ vec3<i32>(-36036i, -11480i, 1i), vec3<i32>(15644i, _wgslsmith_clamp_i32(arg_2, 2147483647i, 20482i), -2797i)), abs(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], 3174i, -48046i)), vec3<i32>(arg_2, -1i, global0[_wgslsmith_index_u32(1994u, 21u)])))));
    var var_3 = arg_3;
    return false;
}

fn func_1() -> i32 {
    global0 = array<i32, 21>();
    let var_0 = 40299i;
    let var_1 = Struct_1(!(!func_2(~u_input.a.yzy, Struct_2(vec2<u32>(25080u, 59024u)), -global0[_wgslsmith_index_u32(global1.a.x, 21u)], true)), _wgslsmith_f_op_f32(f32(-1f) * -1195f));
    var var_2 = vec2<bool>(true, select(global1.a.x >= u_input.a.x, firstTrailingBit(u_input.b.x) <= u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-339f, 669f)) * _wgslsmith_f_op_f32(var_1.b + var_1.b)) >= _wgslsmith_f_op_f32(exp2(var_1.b))));
    global4 = array<Struct_1, 7>();
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 30>();
    global1 = Struct_2(vec2<u32>(1u, 2012u << (1u % 32u)));
    var var_0 = _wgslsmith_clamp_i32(-1i, func_1(), global0[_wgslsmith_index_u32(7487u, 21u)]);
    let var_1 = _wgslsmith_f_op_f32(-1f);
    var var_2 = vec2<bool>(false, all(select(vec2<bool>(false, false), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-764f, _wgslsmith_f_op_f32(-123f - var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-861f, 1000f)))) - _wgslsmith_f_op_f32(trunc(1000f))) - _wgslsmith_f_op_f32(-var_1));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1235f, var_1, var_3) * vec3<f32>(var_1, var_1, 323f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-411f, var_3, var_3)))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(379f)), _wgslsmith_f_op_f32(f32(-1f) * -315f), _wgslsmith_div_f32(714f, _wgslsmith_f_op_f32(-var_1)))), ~global0[_wgslsmith_index_u32(u_input.a.x, 21u)]);
}

