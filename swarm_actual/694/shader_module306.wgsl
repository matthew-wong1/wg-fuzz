struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-466f, -563f, 610f);

var<private> global1: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false));

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    let var_0 = -u_input.b.x;
    global1 = array<vec4<bool>, 16>();
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.a)) * _wgslsmith_f_op_f32(select(-1533f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2287f)) + _wgslsmith_f_op_f32(step(global0.x, 239f))), true))));
    global1 = array<vec4<bool>, 16>();
    var var_1 = !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, false, true)), select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, true)));
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -847f)), 640f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1717f) * -812f))), global2.a), _wgslsmith_div_f32(655f, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(f32(-1f) * -1187f))), _wgslsmith_f_op_f32(-global2.a));
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.yx + vec2<f32>(global2.a, -1244f)) * _wgslsmith_f_op_vec2_f32(-global0.yx)), vec2<f32>(_wgslsmith_f_op_f32(1255f + -940f), global2.a), true)) + global0.yx), global0.zy, vec2<bool>(true, false)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.a, global0.x, global2.a, 945f)))))));
    var var_2 = 4294967295u;
    var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.zx, u_input.a.zx), u_input.a.zx), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 24165u), vec2<u32>(u_input.a.x, 84514u)))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x) >> (max(12669u, 9069u) % 32u), 105505u), _wgslsmith_sub_vec3_u32(~(vec3<u32>(u_input.a.x, 1u, u_input.a.x) >> (u_input.a % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(u_input.a, countOneBits(u_input.a), _wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))))));
    let var_3 = max(min(_wgslsmith_clamp_u32(11078u, u_input.a.x & _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), ~_wgslsmith_div_u32(1u, 9983u)), _wgslsmith_mult_u32(abs(u_input.a.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1827u, 4294967295u, 7243u), vec4<u32>(u_input.a.x, 1u, 85284u, 0u)), 76135u)), _wgslsmith_dot_vec2_u32(u_input.a.yx, firstTrailingBit(u_input.a.yy)));
    return abs(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(57654u, 4294967295u, var_3, u_input.a.x), vec4<u32>(var_3, u_input.a.x, var_3, u_input.a.x), vec4<u32>(var_3, var_3, u_input.a.x, 32914u))) >> (vec4<u32>(60491u, ~56679u, u_input.a.x, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3, var_3, u_input.a.x, 4294967295u), vec4<u32>(0u, 75551u, 14596u, var_3)))) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(global2.a);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(478f, arg_0.x))))))));
    var var_2 = var_1;
    let var_3 = firstTrailingBit(func_2());
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1917f - _wgslsmith_f_op_f32(-global0.x))) + global2.a), global0.x));
    return Struct_1(_wgslsmith_f_op_f32(floor(var_2.a)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = -1189f;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1133f * -260f)))), _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1187f), _wgslsmith_f_op_f32(f32(-1f) * -1373f)))));
    global2 = arg_1;
    let var_2 = vec4<i32>(~(-(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 2147483647i) << (1u % 32u))), u_input.b.x, u_input.b.x, reverseBits(-u_input.b.x));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -627f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-486f, global2.a, true)), -215f, -582f)))));
    let var_0 = 46549i;
    var var_1 = func_4(_wgslsmith_clamp_u32(12280u << (u_input.a.x % 32u), u_input.a.x, u_input.a.x), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -961f, -1743f)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-750f, -1939f, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global2.a, 518f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.a, global2.a, true)) * _wgslsmith_f_op_f32(510f * global2.a)))), -303f));
    var var_2 = false;
    let var_3 = Struct_1(1747f);
    var_1 = var_3;
    let var_4 = Struct_1(global2.a);
    var_1 = func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.a, -1032f, var_4.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -171f, -322f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1922f), 1114f, global0.x)), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    var var_5 = -u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(1u, _wgslsmith_sub_u32(~2777u, u_input.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-774f * var_1.a), -423f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global2.a)), 720f)), u_input.b.x, global0.zy, 1u);
}

