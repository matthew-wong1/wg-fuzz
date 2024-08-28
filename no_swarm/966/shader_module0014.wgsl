struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 24>;

var<private> global1: array<i32, 12> = array<i32, 12>(-43981i, 32073i, 1i, -1i, -29098i, -1i, -22657i, 2147483647i, i32(-2147483648), 26996i, i32(-2147483648), 13511i);

var<private> global2: u32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<i32>) -> bool {
    global0 = array<vec2<u32>, 24>();
    global2 = ~u_input.a;
    let var_0 = arg_1.c.c <= u_input.a;
    let var_1 = Struct_3(arg_0.a.a, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(4294967295u, arg_1.c.c, arg_1.c.c >> (31696u % 32u)), select(~u_input.a, ~(~0u), var_0)), 12u)], arg_0.a.a.c, vec4<u32>(firstLeadingBit(4294967295u << (arg_0.a.d.x % 32u)), 4294967295u, ~74392u, 4294967295u) << (select(firstTrailingBit(arg_0.a.d) | arg_0.a.d, firstTrailingBit(vec4<u32>(arg_0.a.a.c.c, u_input.a, 71982u, arg_0.a.a.c.c)), select(!vec4<bool>(var_0, true, true, false), select(vec4<bool>(var_0, arg_0.a.c.a, false, arg_0.a.c.a), vec4<bool>(arg_0.a.a.a.x, arg_1.c.d.x, arg_1.a.x, false), false), !vec4<bool>(arg_0.a.a.a.x, true, arg_0.a.a.a.x, arg_1.a.x))) % vec4<u32>(32u)));
    global1 = array<i32, 12>();
    return arg_0.a.a.c.a;
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_4(Struct_3(Struct_2(vec3<bool>(true, false, func_3(Struct_4(Struct_3(Struct_2(vec3<bool>(false, false, true), false, Struct_1(false, vec2<f32>(-523f, 1201f), 4294967295u, vec2<bool>(true, true))), global1[_wgslsmith_index_u32(u_input.a, 12u)], Struct_1(true, vec2<f32>(-306f, 824f), u_input.a, vec2<bool>(true, true)), vec4<u32>(15359u, u_input.a, 22678u, u_input.a))), Struct_2(vec3<bool>(true, false, true), true, Struct_1(false, vec2<f32>(-484f, -1000f), 43103u, vec2<bool>(false, false))), vec2<i32>(1i, -21716i))), 2147483647i > _wgslsmith_mod_i32(676i, global1[_wgslsmith_index_u32(4294967295u, 12u)]), Struct_1(true, vec2<f32>(1f, 1f), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, u_input.a), vec4<u32>(44742u, u_input.a, u_input.a, u_input.a)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))), global1[_wgslsmith_index_u32(1u, 12u)], Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-353f, -882f), vec2<f32>(1157f, 1973f)) + vec2<f32>(680f, 2029f)), firstTrailingBit(114814u), vec2<bool>(true, true)), ~(~vec4<u32>(38688u, 1u, 2805u, 69670u))));
    global1 = array<i32, 12>();
    let var_1 = vec3<f32>(_wgslsmith_div_f32(1821f, 1126f), 384f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1984f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.c.b.x)))));
    let var_2 = countOneBits(55161u);
    global2 = (_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(0u, u_input.a, 3267u, 29909u)), vec4<u32>(1u, 105543u, u_input.a, var_0.a.d.x) << (var_0.a.d % vec4<u32>(32u))) << (105598u % 32u)) << ((var_2 >> (_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(49471u, var_0.a.d.x, var_2)), var_0.a.d.xyz) % 32u)) % 32u);
    return select(vec4<i32>(_wgslsmith_clamp_i32(var_0.a.b ^ abs(var_0.a.b), abs(abs(-1i)), abs(-64663i)), var_0.a.b | var_0.a.b, -1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.a.b, global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(75408u, 12u)]), abs(vec4<i32>(-1i, 42875i, 1i, global1[_wgslsmith_index_u32(1u, 12u)]))), var_0.a.b), -(reverseBits(countOneBits(vec4<i32>(-49226i, 1i, 2147483647i, var_0.a.b))) >> (_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(13346u, u_input.a, var_2, var_2)), var_0.a.d & vec4<u32>(var_2, 1u, 64465u, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, var_0.a.d.x)) % vec4<u32>(32u))), !select(!vec4<bool>(false, true, var_0.a.a.c.d.x, true), !vec4<bool>(var_0.a.c.a, false, false, false), !var_0.a.c.d.x));
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = ~arg_0.x;
    let var_1 = min(~select(~func_2(), firstTrailingBit(select(vec4<i32>(global1[_wgslsmith_index_u32(69534u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)], -2147483647i, global1[_wgslsmith_index_u32(arg_0.x, 12u)]), vec4<i32>(1i, global1[_wgslsmith_index_u32(93097u, 12u)], -1i, global1[_wgslsmith_index_u32(51967u, 12u)]), vec4<bool>(true, false, false, false))), true && all(vec4<bool>(false, true, false, false))), vec4<i32>(2147483647i, -global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 62934u, 34268u), _wgslsmith_div_vec3_u32(vec3<u32>(42895u, var_0, u_input.a), vec3<u32>(54741u, u_input.a, 0u))), 12u)], -global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(5258u, var_0), 12u)], 38451i));
    global1 = array<i32, 12>();
    global1 = array<i32, 12>();
    return Struct_3(Struct_2(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(vec3<bool>(false, false, true)) & true, Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-313f, 826f)), u_input.a | ~92289u, vec2<bool>(true, true))), global1[_wgslsmith_index_u32(arg_0.x, 12u)] ^ -abs(firstTrailingBit(-46512i)), Struct_1(!(!select(true, true, false)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(round(-369f)), _wgslsmith_f_op_f32(f32(-1f) * -745f)), vec2<f32>(_wgslsmith_div_f32(244f, -1373f), _wgslsmith_f_op_f32(465f * 487f)))), _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, 8764u << (arg_0.x % 32u)), ~select(14720u, 0u, false)), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, false))), ~_wgslsmith_add_vec4_u32(abs(~vec4<u32>(u_input.a, u_input.a, 1u, arg_0.x)), select(~vec4<u32>(16038u, var_0, 17422u, u_input.a), select(vec4<u32>(var_0, 51496u, u_input.a, u_input.a), vec4<u32>(var_0, 30776u, var_0, arg_0.x), vec4<bool>(false, false, true, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, 66174u, ~(~u_input.a)), 24u)]);
    var var_1 = var_0.c.d.x;
    let var_2 = reverseBits(select(vec4<u32>(0u, _wgslsmith_mult_u32(2051u, 17618u), ~43491u, ~0u), vec4<u32>(0u, u_input.a & 4294967295u, 18490u << (u_input.a % 32u), ~u_input.a), !select(vec4<bool>(var_0.a.c.a, false, false, false), vec4<bool>(var_0.c.d.x, var_0.c.a, false, var_0.a.b), false)) & var_0.d);
    var var_3 = !vec3<bool>(true, var_0.c.a, true);
    global0 = array<vec2<u32>, 24>();
    var var_4 = global0[_wgslsmith_index_u32(((select(abs(u_input.a), 1u, -37054i > var_0.b) | var_0.d.x) | 0u) << (_wgslsmith_mult_u32(72438u, 0u) % 32u), 24u)];
    global0 = array<vec2<u32>, 24>();
    let var_5 = vec4<i32>(-(7330i & ~min(var_0.b, var_0.b)), var_0.b, var_0.b, 66244i & var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(~global0[_wgslsmith_index_u32(~4535u, 24u)]).d.yx, 1u, vec3<i32>(i32(-1i) * -46545i, 2147483647i, _wgslsmith_mod_i32(var_5.x, abs(select(-1i, 31348i, var_0.c.d.x)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0.c.b.x, 342f), _wgslsmith_f_op_f32(round(472f)), var_0.a.c.b.x)))));
}

