struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -646f;

var<private> global1: vec3<bool>;

var<private> global2: Struct_1;

var<private> global3: Struct_2;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<i32>) -> i32 {
    return _wgslsmith_div_i32(arg_2.x, _wgslsmith_mult_i32(~(-17697i) << (select(_wgslsmith_sub_u32(global3.b, global3.b), reverseBits(1u), true) % 32u), _wgslsmith_clamp_i32(firstTrailingBit(20032i), 1i, i32(-1i) * -arg_2.x)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    let var_0 = vec2<i32>(func_3(vec4<i32>(global2.a, _wgslsmith_mod_i32(~u_input.a, select(-37799i, 1i, global1.x)), abs(20718i), u_input.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-942f * global2.d)))), ~(~(~vec2<i32>(49871i, -216i)))), 0i);
    let var_1 = vec3<f32>(global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -598f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global3.c.d)) * _wgslsmith_f_op_f32(sign(-1992f))))));
    var var_2 = select(!(!arg_1.c), global2.c, vec3<bool>(!any(vec3<bool>(global2.e, false, true)), true, !(!global2.c.x != false)));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(select(abs(0i), global2.b, global3.d.e && global1.x)), ~(~(-960i)), ~max(~u_input.a, select(-2147483647i, global3.a, arg_1.c.x)), global3.d.b), select(-(~(~vec4<i32>(-1i, arg_1.b, u_input.a, global2.a))), vec4<i32>(max(2147483647i, u_input.a & 2147483647i), i32(-1i) * -1i, -global2.a, global3.d.a), select(vec4<bool>(all(vec4<bool>(global3.c.c.x, false, global1.x, true)), global1.x, var_2.x, any(global2.c.zy)), vec4<bool>(all(vec4<bool>(false, false, global2.e, arg_1.e)), all(arg_1.c), true, global2.c.x), vec4<bool>(all(vec4<bool>(global2.e, false, true, true)), select(arg_1.c.x, true, false), true, true))));
}

fn func_1(arg_0: bool) -> vec4<bool> {
    var var_0 = Struct_1(select(-41676i, u_input.a, false), select(~select(u_input.a | 47712i, _wgslsmith_mod_i32(global3.d.a, 2147483647i), global3.c.d < global2.d), max(~func_2(vec4<u32>(1u, 113110u, u_input.e, 63466u), Struct_1(-1i, global2.a, vec3<bool>(global2.c.x, true, global2.e), global3.d.d, false)), 9893i), global1.x | (global3.b <= _wgslsmith_clamp_u32(29048u, 27254u, u_input.c.x))), select(vec3<bool>(global2.c.x, all(global3.d.c.zz), !all(vec4<bool>(false, global1.x, true, global2.c.x))), vec3<bool>(false, _wgslsmith_f_op_f32(-global2.d) < 302f, any(!vec3<bool>(true, true, global3.d.e))), select(select(global2.c, global3.c.c, global1.x | global2.c.x), global3.c.c, global3.d.c)), _wgslsmith_f_op_f32(-global3.c.d), any(global2.c.zz));
    global2 = global3.d;
    global1 = !(!var_0.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1091f, 482f, -1532f, -157f) * vec4<f32>(var_0.d, var_0.d, global2.d, 1514f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, 1000f, global2.d, global2.d)), !vec4<bool>(global3.d.c.x, false, arg_0, true)))), vec4<f32>(global2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d) * _wgslsmith_f_op_f32(-146f - global3.c.d)), 961f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d - 723f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.c.d, -2159f, 744f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.d, global3.c.d, false))))))));
    var var_2 = global3.c;
    return select(!select(select(select(vec4<bool>(var_0.c.x, global2.e, true, global2.c.x), vec4<bool>(true, false, true, false), vec4<bool>(true, true, arg_0, true)), !vec4<bool>(var_2.c.x, global1.x, global3.d.e, global3.c.e), select(vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(false, var_2.e, var_2.c.x, global3.d.e), true)), !select(vec4<bool>(var_2.c.x, arg_0, arg_0, false), vec4<bool>(var_2.c.x, global3.c.c.x, global2.c.x, global2.c.x), vec4<bool>(true, var_2.e, false, false)), false), select(select(vec4<bool>(any(vec4<bool>(var_0.e, true, global2.e, var_0.e)), global1.x, any(var_2.c.yz), all(vec3<bool>(false, var_0.e, false))), vec4<bool>(!global3.d.e, true, select(true, true, arg_0), !global2.e), var_2.e), !(!(!vec4<bool>(global2.e, var_2.e, var_0.e, arg_0))), select(vec4<bool>(!arg_0, 1123f >= global2.d, arg_0, !global3.d.e), vec4<bool>(all(global3.c.c), !global2.e, true, true), all(select(vec4<bool>(false, true, var_0.e, global3.c.c.x), vec4<bool>(true, var_0.c.x, var_2.e, global3.d.c.x), global1.x)))), select(select(!(!vec4<bool>(false, false, global3.c.e, false)), vec4<bool>(any(var_0.c), any(vec4<bool>(global1.x, false, true, true)), all(vec4<bool>(false, false, global1.x, true)), !global3.c.e), all(select(var_0.c, global3.c.c, true))), select(select(vec4<bool>(global3.c.c.x, arg_0, false, var_2.c.x), vec4<bool>(arg_0, global2.e, false, var_0.e), all(vec4<bool>(global1.x, arg_0, true, var_0.e))), select(!vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(false, true, global3.c.c.x, var_2.e), vec4<bool>(global2.e, var_0.e, true, true)), select(!vec4<bool>(global3.c.c.x, var_0.c.x, arg_0, false), !vec4<bool>(global3.d.c.x, false, arg_0, false), false)), select(vec4<bool>(!global2.e, -558f <= global2.d, true, global1.x), !vec4<bool>(arg_0, global2.e, var_2.c.x, false), !vec4<bool>(global3.c.e, arg_0, arg_0, var_0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec4<bool>(false, !global1.x, false, global3.d.e), select(vec4<bool>(all(vec4<bool>(true, true, true, global2.e)), -1655f <= global2.d, true, true), !(!vec4<bool>(false, global1.x, global2.e, global1.x)), true), select(func_1(true), !select(vec4<bool>(true, true, true, false), vec4<bool>(global3.c.e, false, true, global1.x), vec4<bool>(global3.d.e, false, false, global2.c.x)), any(global3.d.c.xy) | any(global1.yz))), func_1(true), func_1(global1.x));
    global1 = !func_1((_wgslsmith_f_op_f32(-global2.d) >= global3.c.d) | var_0.x).yyy;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-global3.d.d), _wgslsmith_f_op_f32(floor(global3.d.d))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1366f, -1000f)))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-3166f * 1000f), _wgslsmith_f_op_f32(max(global3.d.d, -320f)), u_input.b.x > u_input.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2848f))))));
    let var_2 = _wgslsmith_mod_u32(33118u, _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(10653u, u_input.b.x, 84669u, global3.b), vec4<u32>(u_input.e, global3.b, 1u, global3.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), u_input.d)), ~(20766u ^ u_input.c.x)) ^ 4294967295u);
    let var_3 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a, _wgslsmith_sub_i32(func_2(vec4<u32>(60498u, u_input.d.x, global3.b, 26492u), global3.d), 1i), -4182i, -2147483647i), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, u_input.a), -1203i, _wgslsmith_dot_vec4_i32(vec4<i32>(31883i, 0i, u_input.a, -2147483647i), vec4<i32>(-14754i, global2.a, 34629i, 12532i))), ~min(global3.a, global2.b), max(22473i, 3342i), -global3.d.a)), u_input.d.x, global3.d, Struct_1(~max(u_input.a, u_input.a), global2.a, vec3<bool>(!global1.x, true, !all(global3.d.c)), -539f, false));
    global3 = Struct_2(-2147483647i, abs(39678u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(33809u, 25455u), vec2<u32>(var_3.b, var_3.b)) % 32u)), var_3.c, Struct_1(global3.c.b, firstLeadingBit(~(global3.c.a ^ 2147483647i)), vec3<bool>(!select(false, global3.d.c.x, false), -u_input.a <= 1i, var_3.d.e), _wgslsmith_f_op_f32(min(-403f, global3.d.d)), ~_wgslsmith_add_i32(1i, var_3.a) > _wgslsmith_mult_i32(global3.a, 21285i)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~global3.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(857f, _wgslsmith_f_op_f32(trunc(1607f))))), abs(max(-vec3<i32>(global2.b, global2.a, global2.b), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-16291i, 0i, 17450i), vec3<i32>(global3.c.a, global2.b, 2147483647i)), vec3<i32>(-2147483647i, global2.a, global2.a)))));
}

