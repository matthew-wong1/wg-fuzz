struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(1190i, 12355i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-1i, 4909i), vec2<i32>(65256i, 1i), vec2<i32>(1i, -23130i), vec2<i32>(0i, 21395i), vec2<i32>(-14857i, 3338i), vec2<i32>(-38838i, 2147483647i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-10535i, 1079i), vec2<i32>(51164i, 1i), vec2<i32>(51264i, 50166i), vec2<i32>(1i, -21759i), vec2<i32>(0i, 1i), vec2<i32>(5594i, -5026i), vec2<i32>(0i, 0i), vec2<i32>(1i, -1i), vec2<i32>(30684i, 1i), vec2<i32>(0i, 0i), vec2<i32>(2147483647i, 1i), vec2<i32>(-12000i, 2147483647i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(16937i, -11458i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> u32 {
    let var_0 = arg_0.a;
    let var_1 = vec2<bool>(false, false);
    var var_2 = !select(arg_0.a, vec4<bool>(!var_1.x, _wgslsmith_f_op_f32(floor(-428f)) != -187f, !select(true, var_1.x, var_1.x), false), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1000f)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -355f) + _wgslsmith_f_op_f32(round(-673f))));
    let var_3 = vec4<u32>(7870u, _wgslsmith_dot_vec3_u32(~(~(~arg_0.c)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(arg_1, _wgslsmith_add_vec3_u32(arg_0.c, arg_1)), arg_0.c)), firstLeadingBit(countOneBits(~arg_1.x)), ~4294967295u);
    global1 = array<vec2<i32>, 25>();
    return ~(~1u);
}

fn func_2(arg_0: bool, arg_1: u32) -> vec4<bool> {
    var var_0 = true;
    var var_1 = ((select(true, true, true) & (func_3(Struct_1(vec4<bool>(true, arg_0, true, true), arg_0, vec3<u32>(4294967295u, arg_1, 4294967295u)), vec3<u32>(u_input.a, u_input.a, arg_1)) >= (0u | u_input.b.x))) & (_wgslsmith_div_u32(41727u, ~arg_1) >= _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b.x, 0u), abs(0u)))) || select(true, true, true);
    var_1 = any(!select(select(select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(true, false, arg_0, false), arg_0), vec4<bool>(true, true, true, true), true), select(!vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(false, true, false, arg_0), !vec4<bool>(true, false, true, arg_0)), select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), arg_0)));
    var_1 = arg_0;
    global0 = -countOneBits(-1i);
    return select(select(vec4<bool>(arg_0, true, true, ~arg_1 != _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(arg_1, u_input.a))), !vec4<bool>(arg_0, true, any(vec4<bool>(arg_0, true, true, true)), !arg_0), vec4<bool>(arg_0, false, arg_0, any(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, false, false))))), !(!(!select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(false, arg_0, false, false), vec4<bool>(arg_0, false, arg_0, false)))), !(!select(!vec4<bool>(true, arg_0, arg_0, false), select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, true, true, true)), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, false, true, false), vec4<bool>(true, arg_0, true, arg_0)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    global0 = ~_wgslsmith_mod_i32(_wgslsmith_div_i32(-54539i, min(-5227i, 1i)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, 1i), firstTrailingBit(~0i), ~abs(-2982i)));
    var var_0 = Struct_1(select(select(vec4<bool>(false, arg_0.b, any(arg_0.a.xx), true), vec4<bool>(false, arg_0.b, !arg_0.a.x, true), !arg_0.a.x), vec4<bool>(false, all(!vec4<bool>(false, arg_0.b, true, arg_0.b)), any(func_2(arg_0.b, 1u)), all(arg_0.a.wzx)), true), arg_0.a.x, arg_0.c);
    return Struct_1(vec4<bool>(var_0.a.x, var_0.b, var_0.a.x, true), false, vec3<u32>(_wgslsmith_add_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.c.x), vec2<u32>(1u, 0u))), ~(~u_input.a)), 1u, ~_wgslsmith_sub_u32(var_0.c.x, 26182u << (u_input.b.x % 32u))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, -40565i, -2147483647i), vec4<i32>(971i, 1i, -3630i, -2147483647i)), -abs(vec4<i32>(1i, 65455i, -29998i, 1i)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -1i, 2147483647i, -30373i), vec4<i32>(2147483647i, 0i, -34708i, 2147483647i), vec4<i32>(29288i, -2147483647i, -53009i, -2147483647i))), countOneBits(-((vec4<i32>(-17682i, 1541i, -26632i, -2147483647i) >> (arg_1 % vec4<u32>(32u))) >> (~arg_1 % vec4<u32>(32u)))));
    let var_0 = 1i & abs(_wgslsmith_mult_i32(1i, firstTrailingBit(_wgslsmith_clamp_i32(-19271i, -78400i, -1i))));
    var var_1 = ~abs(~arg_1.wxz);
    let var_2 = vec3<i32>(22146i, _wgslsmith_dot_vec3_i32((vec3<i32>(9378i, var_0, 23925i) >> (abs(vec3<u32>(10365u, var_1.x, 4294967295u)) % vec3<u32>(32u))) << (reverseBits(vec3<u32>(arg_3.c.x, u_input.a, arg_3.c.x)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(~vec3<i32>(0i, -24417i, var_0), countOneBits(vec3<i32>(-2423i, var_0, 2147483647i))) >> (_wgslsmith_mod_vec3_u32(~arg_3.c, arg_3.c) % vec3<u32>(32u))), _wgslsmith_dot_vec4_i32(select(-vec4<i32>(1i, 1i, 1i, 1i), min(vec4<i32>(52892i, var_0, 0i, var_0), vec4<i32>(1i, -1i, var_0, -2147483647i)) ^ vec4<i32>(-1i, var_0, var_0, var_0), arg_3.a.x), -_wgslsmith_mod_vec4_i32(~vec4<i32>(-5622i, 0i, -3529i, 6495i), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 2147483647i, var_0, var_0), vec4<i32>(1i, var_0, var_0, var_0)))));
    let var_3 = func_1(arg_3, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1000f, -663f), _wgslsmith_f_op_f32(round(-1570f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -157f) + _wgslsmith_f_op_f32(-759f - -204f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(466f, -396f, 1078f) + vec3<f32>(365f, -107f, -1327f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2324f, -1437f, 354f)))))));
    return func_3(arg_2, arg_1.zxx);
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: u32, arg_3: i32) -> i32 {
    var var_0 = arg_1.x;
    let var_1 = ~(vec3<i32>(-1i, ~_wgslsmith_mod_i32(-15728i, -2147483647i), _wgslsmith_mult_i32(arg_3 >> (u_input.a % 32u), arg_3)) | ~((vec3<i32>(-2147483647i, -2147483647i, arg_3) & vec3<i32>(-4198i, arg_3, 0i)) & -vec3<i32>(2147483647i, 15432i, 1i)));
    var var_2 = func_2(true, ~arg_2).x || all(func_2(all(vec4<bool>(true, true, false, false)), arg_2).xy);
    var_2 = true;
    let var_3 = !vec2<bool>(!((var_1.x < -23495i) && true), all(vec3<bool>(true, true, arg_1.x > arg_1.x)));
    return 51741i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 25>();
    let var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1f, _wgslsmith_f_op_f32(892f - 1127f), _wgslsmith_f_op_f32(abs(-616f))), 1i, _wgslsmith_div_i32(func_5(func_4(vec2<bool>(true, true), ~vec4<u32>(u_input.a, u_input.b.x, 4294967295u, u_input.b.x), func_1(Struct_1(vec4<bool>(var_0, false, var_0, false), false, vec3<u32>(1u, u_input.b.x, 33076u)), vec3<f32>(864f, -400f, -1103f)), func_1(Struct_1(vec4<bool>(true, var_0, false, var_0), false, vec3<u32>(u_input.b.x, 0u, 75726u)), vec3<f32>(-302f, 761f, 298f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-161f, -703f, 862f, -427f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-215f, -1494f, 958f, 1000f) * vec4<f32>(2011f, 1047f, -126f, -390f)), !vec4<bool>(var_0, false, true, var_0))), u_input.a, ~firstLeadingBit(-18582i)), reverseBits(_wgslsmith_add_i32(abs(0i), select(6170i, 0i, false)))), _wgslsmith_mod_i32(max(-2147483647i, 5004i) >> (_wgslsmith_mult_u32(1u, ~u_input.b.x) % 32u), countOneBits(func_5(u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-331f, 1054f, 1401f, -215f) + vec4<f32>(-117f, 1822f, 1000f, 618f)), _wgslsmith_sub_u32(0u, 0u), _wgslsmith_dot_vec4_i32(vec4<i32>(23872i, -1i, -14334i, -1i), vec4<i32>(0i, 19014i, -8752i, 31576i))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -540f)), _wgslsmith_div_f32(-489f, -1802f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(313f, 604f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
}

