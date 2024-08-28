struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = all(select(arg_1.b, !global0.xyy, true)) | true;
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_2.c)))), -441f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c, -146f, 514f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(626f, 1000f, arg_1.d) + vec3<f32>(arg_1.d, arg_2.c, -958f)))), vec3<f32>(846f, arg_2.c, arg_2.c)));
    let var_3 = _wgslsmith_f_op_f32(round(arg_1.d));
    global0 = vec4<bool>((var_2.x == 1230f) && select(arg_1.b.x, 0u >= _wgslsmith_dot_vec2_u32(vec2<u32>(43585u, 12863u), u_input.c), ~arg_0 < 1u), all(arg_1.b.xz), !(arg_1.d >= _wgslsmith_f_op_f32(floor(arg_2.c))), !all(vec4<bool>(true, true, arg_1.a != arg_1.a, true)));
    return 25187u;
}

fn func_4(arg_0: Struct_3) -> vec4<f32> {
    global0 = !select(vec4<bool>(true, true, !all(vec3<bool>(arg_0.c.b.x, true, global0.x)), !any(vec3<bool>(arg_0.e, true, false))), select(select(select(vec4<bool>(arg_0.e, false, arg_0.a.c, arg_0.e), vec4<bool>(arg_0.c.a, true, true, false), true), vec4<bool>(global0.x, true, arg_0.a.b.x, arg_0.a.c), !arg_0.e), !select(vec4<bool>(true, arg_0.a.c, false, arg_0.a.b.x), vec4<bool>(arg_0.e, arg_0.c.a, arg_0.c.b.x, arg_0.e), global0.x), any(!vec4<bool>(false, false, false, arg_0.c.a))), !global0.x);
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1444f);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-854f, -123f, -899f, -696f), vec4<f32>(arg_0.c.c, 1149f, arg_0.a.d, 671f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1121f, -126f, arg_0.c.c, arg_0.c.c))))));
}

fn func_2() -> vec4<bool> {
    var var_0 = min(_wgslsmith_mult_vec4_i32(countOneBits(select(vec4<i32>(-39954i, 2147483647i, 14894i, 0i), vec4<i32>(2147483647i, 53710i, 52311i, 0i), true)), -vec4<i32>(-7622i, -1i, 0i, -2147483647i)), vec4<i32>(max(-36466i, -1146i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-36946i, 398i), 108146i), 57i, -select(1i, -1i, global0.x))) | ~vec4<i32>(_wgslsmith_sub_i32(3304i, 1i), -68211i, 1324i, -2147483647i);
    let var_1 = ~(firstLeadingBit(0u) ^ u_input.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(func_4(Struct_3(Struct_2(39420i, global0.zyx, global0.x == !global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -471f))), ~1u << (func_3(29934u, Struct_2(-6074i, vec3<bool>(true, true, false), true, 1000f), Struct_1(false, global0.xw, 1660f)) % 32u), Struct_1(true, global0.zz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2213f) - _wgslsmith_div_f32(830f, -731f))), ~vec4<u32>(15913u, _wgslsmith_mod_u32(u_input.b, u_input.b), _wgslsmith_sub_u32(u_input.a, u_input.a), 1u), global0.x)));
    var var_3 = Struct_3(Struct_2(-2147483647i, select(global0.ywy, vec3<bool>(true, any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), global0.x), vec3<bool>(false == global0.x, global0.x, true)), global0.x, _wgslsmith_f_op_f32(select(1409f, var_2.x, global0.x))), 1u, Struct_1(all(!global0.wwy) != ((1u | u_input.a) <= u_input.b), !vec2<bool>(!global0.x, !global0.x), 1046f), vec4<u32>(~_wgslsmith_mod_u32(2179u, ~58090u), u_input.a, 4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, var_1) << (~vec3<u32>(25934u, u_input.b, u_input.c.x) % vec3<u32>(32u)), vec3<u32>(var_1, 11944u, _wgslsmith_clamp_u32(var_1, u_input.c.x, u_input.a)))), global0.x);
    var var_4 = var_3.a;
    return select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true || var_3.a.c)), !(!(!(!vec4<bool>(true, var_3.c.b.x, false, true)))), select(vec4<bool>(true, global0.x, var_4.b.x, !var_4.b.x), select(select(!vec4<bool>(var_4.c, true, false, true), select(vec4<bool>(false, var_3.c.a, true, false), vec4<bool>(false, var_3.e, true, var_3.c.a), var_4.c), vec4<bool>(true, false, var_3.a.b.x, var_4.b.x)), !(!vec4<bool>(global0.x, global0.x, false, false)), select(select(vec4<bool>(true, true, true, var_4.c), vec4<bool>(true, false, false, false), vec4<bool>(var_4.b.x, var_3.a.b.x, true, var_4.b.x)), !vec4<bool>(true, global0.x, true, true), var_4.b.x || global0.x)), vec4<bool>(!(724f <= var_2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_3.d.x, 4294967295u, 1u), vec4<u32>(var_3.d.x, var_3.d.x, 4294967295u, var_1)) <= var_1, all(!var_4.b), true)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec4<bool>) -> i32 {
    let var_0 = !vec2<bool>(!arg_2.x, false);
    var var_1 = vec4<bool>(true, true, false, all(global0.wxx));
    global0 = !vec4<bool>(true, false, !(!select(var_1.x, true, false)), var_1.x);
    global0 = func_2();
    let var_2 = Struct_1(!global0.x, global0.zy, _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(abs(1327f)))));
    return i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_mod_i32(reverseBits(1i), 1i), -38089i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(all(!vec4<bool>(global0.x, false, select(true, true, false), false)), ~(~(u_input.b ^ 1u)) <= 4294967295u, firstLeadingBit(~min(0i, 21082i)) > func_1(1f, false, !(!vec4<bool>(global0.x, false, global0.x, global0.x))), false);
    let var_0 = Struct_1(global0.x, select(select(!select(global0.xz, global0.yx, global0.x), vec2<bool>(true, true), any(global0.yw) & !global0.x), select(global0.zx, global0.xz, all(vec3<bool>(false, false, false)) || global0.x), global0.zx), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = Struct_2(min(51655i, abs(firstLeadingBit(_wgslsmith_add_i32(-50302i, 12932i)))), select(vec3<bool>((var_0.a && var_0.a) || any(vec3<bool>(false, true, global0.x)), var_0.b.x, any(!vec4<bool>(false, global0.x, var_0.b.x, global0.x))), select(vec3<bool>(any(vec3<bool>(true, true, global0.x)), false == var_0.b.x, !global0.x), select(vec3<bool>(var_0.a, var_0.b.x, global0.x), select(global0.wwz, vec3<bool>(true, false, var_0.a), global0.wxy), vec3<bool>(true, var_0.a, global0.x)), any(select(vec3<bool>(var_0.b.x, var_0.b.x, var_0.a), global0.xzw, global0.x))), global0.xxz), true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_vec4_f32(func_4(Struct_3(Struct_2(-1i, vec3<bool>(var_0.b.x, global0.x, true), true, var_0.c), u_input.c.x, Struct_1(true, var_0.b, 229f), vec4<u32>(0u, u_input.b, u_input.a, u_input.b), global0.x))).x), !(!var_0.b.x))));
    var var_2 = firstLeadingBit(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<u32>(u_input.a, u_input.b, 87915u) >> (vec3<u32>(71606u, 13923u, 46917u) % vec3<u32>(32u))), 59186u), 1u, ~abs(~1u), firstTrailingBit(u_input.a >> (19788u % 32u)) | 0u));
    let var_3 = var_0;
    let var_4 = vec2<bool>(any(vec2<bool>(true, global0.x)), var_3.b.x);
    var_2 = vec4<u32>(~_wgslsmith_div_u32(var_2.x, var_2.x), var_2.x, reverseBits(0u), firstTrailingBit(var_2.x));
    var var_5 = countOneBits(vec4<i32>(46283i, -274i, ~(_wgslsmith_mult_i32(var_1.a, 0i) >> (33866u % 32u)), var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.c), -(~var_1.a), var_1.a);
}

