struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> bool {
    var var_0 = min(abs(0i), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 29u)], arg_1, 0i));
    let var_1 = Struct_3(min(select(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(arg_3, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), _wgslsmith_add_i32(-358i, global0[_wgslsmith_index_u32(arg_3, 29u)]), arg_2.a) ^ 2147483647i, u_input.a), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(389f, 642f)) - _wgslsmith_f_op_f32(920f + -1287f)) <= -485f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1382f, _wgslsmith_f_op_f32(-488f + -977f), _wgslsmith_f_op_f32(floor(-2197f))))));
    let var_2 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), -439f, var_1.c.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(914f, var_1.c.x, 880f)) - var_1.c), _wgslsmith_div_vec3_f32(var_1.c, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, var_1.c.x, -1726f), vec3<f32>(var_1.c.x, var_1.c.x, 319f)))))));
    var var_3 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-572f, 1000f), vec2<f32>(var_1.c.x, 882f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.c.x, -549f)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1279f, var_2.a.x)), _wgslsmith_f_op_vec2_f32(var_2.a.xx - var_2.a.yy)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_2.a.x, var_2.a.x)))), var_2.a.x)));
    var var_4 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(max(-372f, var_3.a.x)), 268f));
    return false;
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    var var_0 = arg_1;
    global0 = array<i32, 29>();
    let var_1 = arg_2;
    var var_2 = !select(vec3<bool>(var_0.b.a, true, !var_0.b.a || func_3(vec2<bool>(true, var_0.b.a), u_input.c.x, Struct_2(true), 14503u)), !select(select(vec3<bool>(arg_1.b.a, arg_1.b.a, var_0.b.a), vec3<bool>(var_0.b.a, var_0.b.a, arg_1.b.a), false), select(vec3<bool>(true, false, false), vec3<bool>(arg_1.b.a, arg_1.b.a, false), vec3<bool>(false, true, arg_1.b.a)), vec3<bool>(false, arg_1.b.a, false)), false);
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, arg_2.a.x)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-766f, var_1.a.x) * arg_1.c.yy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_1.a.zz)) + _wgslsmith_f_op_vec2_f32(max(var_0.c.zy, vec2<f32>(var_0.c.x, -218f)))))));
    return var_0.b;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = !vec4<bool>(select(arg_1.x, false, all(vec4<bool>(arg_1.x, true, arg_2.a, arg_1.x))), arg_1.x, !(!arg_2.a), true);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -847f) - 1627f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1213f, 1792f))))), -1499f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1402f)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x)));
    let var_3 = 1966i;
    var var_4 = countOneBits(~(~u_input.d.x << (_wgslsmith_dot_vec4_u32(~u_input.e, u_input.d) % 32u)));
    return 14797u;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    let var_0 = Struct_2(!(~(~1u) <= func_4(vec3<u32>(u_input.d.x, 1u, u_input.e.x), arg_0, func_2(u_input.e.x, Struct_3(-17031i, Struct_2(arg_0.x), vec3<f32>(978f, -819f, 387f)), arg_1))));
    var var_1 = 772f;
    var var_2 = arg_1;
    let var_3 = !(-1772i >= -(~(1i | global0[_wgslsmith_index_u32(22739u, 29u)])));
    global0 = array<i32, 29>();
    return any(!select(!select(vec3<bool>(true, false, false), vec3<bool>(arg_0.x, var_3, var_3), var_0.a), !(!vec3<bool>(false, var_0.a, var_0.a)), !select(vec3<bool>(false, false, arg_0.x), vec3<bool>(false, false, false), var_3)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(abs(-590f)), 752f));
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(-1124f, var_0.a.x))))))));
    let var_2 = !vec2<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_1(vec2<bool>(true, true), Struct_1(vec3<f32>(var_0.a.x, var_1.a.x, -120f))))));
    var var_3 = Struct_3(-u_input.a, Struct_2(false), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a.x, var_1.a.x, 2211f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1008f, var_0.a.x, _wgslsmith_f_op_f32(-var_1.a.x)))));
    var var_4 = ~vec3<u32>(1u, 0u, _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.e.wz), vec2<u32>(~u_input.d.x, ~u_input.d.x)));
    var var_5 = vec2<u32>(_wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(0u, 33602u) ^ countOneBits(var_4.yx)), u_input.b.xz), ~firstLeadingBit(66463u));
    var_4 = u_input.d.wwy;
    var var_6 = -(~(-(abs(vec3<i32>(37421i, -2147483647i, 2147483647i)) & (vec3<i32>(-1i, 1i, global0[_wgslsmith_index_u32(1u, 29u)]) >> (vec3<u32>(35260u, u_input.e.x, 67477u) % vec3<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(775f, 1244f, var_0.a.x, -383f))) - vec4<f32>(456f, -1063f, var_0.a.x, var_0.a.x))))), vec3<f32>(964f, -101f, var_1.a.x));
}

