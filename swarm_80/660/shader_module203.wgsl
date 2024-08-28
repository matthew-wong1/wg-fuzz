struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = 39546u >> (1u % 32u);
    let var_1 = select(vec3<bool>(all(vec2<bool>(true, false)), false, false), !vec3<bool>((-1i >> (u_input.a % 32u)) >= 2147483647i, true, true), !vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true));
    let var_2 = arg_0;
    global0 = arg_0.b.xx;
    let var_3 = arg_0;
    return var_1.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> u32 {
    let var_0 = select(select(vec4<bool>(~0u >= ~u_input.a, !func_3(Struct_1(-738f, vec3<f32>(global0.x, 530f, -2171f), vec4<u32>(20862u, 4294967295u, u_input.a, u_input.a), u_input.a)), arg_1, false), vec4<bool>(any(vec2<bool>(arg_1, arg_1)) | any(vec4<bool>(arg_1, false, arg_1, arg_1)), !arg_1, !arg_1, arg_1), select(!select(vec4<bool>(true, arg_1, true, true), vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(true, false, false, arg_1)), !select(vec4<bool>(false, false, false, true), vec4<bool>(arg_1, true, true, false), arg_1), true)), select(!(!vec4<bool>(true, false, arg_1, false)), vec4<bool>(select(false, true || arg_1, false), true, 1u < u_input.a, arg_1), true), vec4<bool>(false, all(select(!vec3<bool>(arg_1, false, arg_1), select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, false, false)), 344f >= global0.x)), true, !(!arg_1)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -134f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-920f, -464f, 750f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(global0.x, global0.x, global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(abs(552f)), _wgslsmith_f_op_f32(1125f + _wgslsmith_f_op_f32(-881f * 1043f)), global0.x))), ~(~countOneBits(countOneBits(vec4<u32>(13953u, arg_0.x, arg_0.x, 4294967295u)))), 20577u);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.b.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 156f))), var_0.yy)));
    let var_2 = Struct_1(-432f, vec3<f32>(1871f, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-432f)), 1827f, var_0.x || true))), -902f), var_1.c, _wgslsmith_add_u32(var_1.d, _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(arg_0.x), countOneBits(0u), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, var_1.d, 13060u)), 28558u), var_1.c & var_1.c)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(953f + var_1.b.x))), vec3<f32>(-141f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-500f, var_1.b.x)) - global0.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_2.d, 8412u), u_input.b), min(~1u, 4294967295u), var_1.c.x, abs(var_1.d << (6038u % 32u))), reverseBits(0u));
    return 7114u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<f32>) -> vec2<f32> {
    global0 = arg_3;
    global0 = _wgslsmith_f_op_vec2_f32(sign(arg_1.b.zx));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * arg_1.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_div_f32(-1207f, -521f)), _wgslsmith_f_op_vec3_f32(min(arg_2, _wgslsmith_f_op_vec3_f32(arg_1.b - vec3<f32>(arg_3.x, 1186f, arg_0.b.x)))), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false)))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(arg_1.c, vec4<u32>(arg_1.d, arg_0.d, u_input.b.x, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(49268u, 48791u, 1u, 4294967295u), arg_0.c)), ~(vec4<u32>(u_input.b.x, 0u, 2951u, 0u) << (vec4<u32>(8955u, 86104u, 72601u, 101741u) % vec4<u32>(32u)))) ^ ~firstLeadingBit(firstTrailingBit(arg_1.c)), ~u_input.b.x);
    global0 = _wgslsmith_f_op_vec2_f32(-arg_2.xz);
    let var_1 = select(-48603i, _wgslsmith_add_i32(1i ^ _wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), _wgslsmith_clamp_i32(1i, 0i, -58884i), firstTrailingBit(0i)), _wgslsmith_mult_i32(1i, -1686i)), true);
    return arg_1.b.yy;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_0.b.zz))));
    var var_0 = arg_3;
    global0 = _wgslsmith_f_op_vec2_f32(func_4(arg_3, Struct_1(_wgslsmith_f_op_f32(-783f - _wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_3.b.x, arg_3.b.x, var_0.b.x)))), _wgslsmith_sub_vec4_u32(countOneBits(~arg_3.c), arg_3.c), func_2(~vec3<u32>(arg_3.d, 4294967295u, var_0.d), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(arg_3.b, vec3<f32>(arg_3.b.x, arg_3.b.x, arg_3.a)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_0.b.xx)))));
    let var_1 = Struct_1(632f, arg_0.b, vec4<u32>(var_0.c.x, arg_3.c.x, abs(4294967295u), reverseBits(arg_0.c.x)) ^ arg_0.c, arg_0.c.x);
    let var_2 = !(_wgslsmith_f_op_f32(-arg_0.a) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a * arg_0.a), _wgslsmith_f_op_f32(var_1.b.x - -850f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(468f - 1384f), _wgslsmith_f_op_f32(-arg_3.a)))));
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(742f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -754f) - _wgslsmith_f_op_f32(floor(-426f))))), _wgslsmith_f_op_f32(-242f - global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1094f, -607f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(global0.x, vec3<f32>(-307f, -1000f, 1335f), vec4<u32>(u_input.b.x, 4148u, u_input.a, u_input.b.x), 4866u), vec3<i32>(1i, -1504i, 46098i), false, Struct_1(-907f, vec3<f32>(1214f, 1251f, global0.x), vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), u_input.a))) - -439f)), -1167f)));
    global0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(914f + _wgslsmith_f_op_f32(step(var_0.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(419f)), _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(-119f + global0.x))), vec4<u32>(30139u, u_input.b.x, ~u_input.b.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, u_input.a, 71543u), 1u)), ~(~firstLeadingBit(4294967295u))), Struct_1(var_0.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global0.x, -2112f))))), vec4<u32>(~_wgslsmith_clamp_u32(u_input.b.x, 65047u, u_input.a), ~firstTrailingBit(1u), ~(u_input.b.x >> (u_input.b.x % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a), u_input.b)), ~u_input.a), vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.ww) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - -1000f), var_0.x) * vec2<f32>(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(973f, var_0.wzw, vec4<u32>(0u, 1u, u_input.a, 4294967295u), 6024u), Struct_1(var_0.x, vec3<f32>(788f, global0.x, -562f), vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 55876u), u_input.a), var_0.xxw, var_0.yx)).x, _wgslsmith_div_f32(-1874f, 375f))))));
    let var_1 = vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(func_3(Struct_1(global0.x, var_0.ywz, vec4<u32>(u_input.b.x, u_input.b.x, 122119u, u_input.a), u_input.b.x)), false, true), vec3<bool>(true, true, true))), var_0.x > -551f, all(select(vec3<bool>(true, true, false), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true)), vec3<bool>(true, true, true))), !(_wgslsmith_mod_u32(countOneBits(4294967295u), _wgslsmith_add_u32(u_input.b.x, u_input.b.x)) >= u_input.b.x));
    let var_2 = _wgslsmith_add_u32(min(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_div_u32(4294967295u, _wgslsmith_mod_u32(48078u, u_input.b.x))), 1u), u_input.b.x);
    global0 = _wgslsmith_f_op_vec2_f32(select(var_0.zy, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-269f - var_0.x))), _wgslsmith_f_op_vec2_f32(max(var_0.xz, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(var_0.zy, vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(var_0.xy + var_0.yz))))), !select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, true), true))), vec2<bool>(var_1.x, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(var_0.xww, var_0.wwz, true == var_1.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.wyw, var_0.xxx)))))), max(firstTrailingBit(~firstTrailingBit(vec3<u32>(4294967295u, var_2, var_2))), u_input.b));
}

