struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_2,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: Struct_2,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<i32>(2147483647i, 58123i), 416f, 1528f, 1i), vec2<i32>(1i, -29580i), -51097i);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> bool {
    global1 = Struct_2(Struct_1(-abs(vec2<i32>(-1i, u_input.d)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.b + 1000f), _wgslsmith_f_op_f32(step(-403f, arg_1.b))), global1.a.c)), _wgslsmith_f_op_f32(arg_1.b + -1686f), _wgslsmith_mod_i32(-2147483647i, ~global1.c)), vec2<i32>(arg_1.a.x, arg_1.a.x), -3799i);
    var var_0 = vec2<f32>(-995f, arg_1.b);
    return !(!(!(u_input.c.x >= arg_0) | true));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_4(select(~(73507u >> (firstLeadingBit(4294967295u) % 32u)), ~_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(0u, arg_0, u_input.c.x)), true), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), all(vec2<bool>(true, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), true)), Struct_2(Struct_1(~vec2<i32>(global1.b.x, 27373i), _wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(-992f - 489f)), 517f, abs(~arg_1.a.x)), u_input.a.xx, ~u_input.b.x), vec2<bool>(false, false));
    global0 = array<Struct_3, 3>();
    let var_1 = ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 36438u, arg_0), u_input.c);
    global1 = Struct_2(Struct_1(~vec2<i32>(_wgslsmith_mod_i32(var_0.c.a.d, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.a.x, global1.a.d, var_0.c.b.x), u_input.a.xyy)), 1000f, -640f, i32(-1i) * -752i), _wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(countOneBits(arg_1.d), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.d, arg_1.a.x, var_0.c.b.x, 23584i), u_input.a))), -u_input.a.ww), -70082i);
    var var_2 = var_0.d.x | true;
    return var_0.c.a.d;
}

fn func_1(arg_0: i32) -> Struct_4 {
    return Struct_4(27969u, select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(!func_2(u_input.c.x, Struct_1(vec2<i32>(9837i, arg_0), 1775f, global1.a.b, 6461i)), false, -arg_0 < func_3(u_input.c.x, global1.a))), Struct_2(Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0, -44335i), u_input.b), -424f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-778f))), -(arg_0 | global1.b.x)), vec2<i32>(arg_0, 0i), ~global1.b.x), !vec2<bool>(func_2(u_input.c.x ^ 0u, Struct_1(global1.b, -529f, 210f, -2356i)), func_2(0u, Struct_1(vec2<i32>(5373i, arg_0), 963f, -770f, arg_0))));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: vec4<i32>, arg_3: u32) -> bool {
    global1 = arg_0.c;
    let var_0 = func_1(13203i);
    let var_1 = select(u_input.a.wxy, _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(34140i, u_input.d, var_0.c.c) | u_input.a.zwz, _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -1i, arg_1), u_input.a.wwz)), -vec3<i32>(-20366i, u_input.d, var_0.c.c)), all(vec3<bool>(arg_0.b.x, arg_0.b.x, false))) << (vec3<u32>(~(arg_3 ^ max(var_0.a, arg_0.a)), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0.a, var_0.a)), vec2<u32>(1u, 18729u)), arg_0.a) % vec3<u32>(32u));
    global0 = array<Struct_3, 3>();
    let var_2 = func_1(_wgslsmith_mod_i32(-arg_2.x, i32(-1i) * -var_1.x)).c.a;
    return true || any(!vec4<bool>(true, var_0.d.x, -2147483647i < var_0.c.b.x, all(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(~_wgslsmith_mod_u32(~u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.yx)) ^ min(u_input.c.x, ~(~0u)), !vec3<bool>(func_4(func_1(17018i), -1i, u_input.a, 4294967295u), true, false), func_1(-(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) >> (~24560u % 32u))).c, vec2<bool>(true, true));
    global0 = array<Struct_3, 3>();
    let var_1 = ~select(u_input.c.zx, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, var_0.a), vec2<u32>(var_0.a, 1u), u_input.c.zy), !var_0.b.xx) >> (u_input.c.yy % vec2<u32>(32u));
    let var_2 = vec4<u32>(~(~var_0.a & _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, u_input.c.x, var_1.x, var_1.x), firstLeadingBit(vec4<u32>(var_1.x, 4294967295u, var_1.x, 0u)))), var_1.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(~0u, var_1.x), min(1u, u_input.c.x)), 4294967295u);
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(170f, -281f, 321f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-40634i, abs(max(vec2<u32>(~u_input.c.x, 23798u), ~vec2<u32>(29491u, var_1.x))), global1.a.c, countOneBits(var_2) >> (~var_2 % vec4<u32>(32u)));
}

