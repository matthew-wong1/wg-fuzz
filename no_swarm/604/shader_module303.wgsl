struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, -36694i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = Struct_4(Struct_2(~u_input.b.x >> (abs(~u_input.b.x) % 32u), ~(~u_input.b), true, !all(vec3<bool>(false, true, true))), u_input.b.x, vec3<i32>(u_input.e.x, global0.x, i32(-1i) * -reverseBits(u_input.d.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-492f, 1283f, -991f) + vec3<f32>(1661f, -1074f, 459f)) - vec3<f32>(2248f, 879f, -1808f)))), Struct_1(vec3<i32>(-13863i, u_input.c.x, u_input.c.x) | _wgslsmith_clamp_vec3_i32(abs(u_input.e.yxx), vec3<i32>(global0.x, u_input.c.x, 1i), vec3<i32>(global0.x, -1i, u_input.e.x)), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.b.x, u_input.b.x)))));
    var_0 = Struct_4(Struct_2(0u, vec4<u32>(~(var_0.a.b.x | 1396u), var_0.e.b.x, _wgslsmith_clamp_u32(u_input.b.x, 1u, 4294967295u), 1u), any(select(!vec4<bool>(true, var_0.a.c, var_0.a.d, true), select(vec4<bool>(var_0.a.c, false, false, var_0.a.c), vec4<bool>(false, false, false, var_0.a.c), var_0.a.d), select(vec4<bool>(var_0.a.d, var_0.a.d, var_0.a.c, false), vec4<bool>(true, var_0.a.c, false, var_0.a.c), var_0.a.c))), var_0.a.d), ~u_input.a, ~vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.c, firstTrailingBit(vec3<i32>(var_0.e.a.x, 1i, u_input.e.x))), ~(-26877i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.e.a.x, -2147483647i, 1504i), vec3<i32>(23281i, u_input.c.x, -57292i)), _wgslsmith_clamp_i32(0i, -19972i, u_input.e.x) >> (9522u % 32u)), vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-554f)) + _wgslsmith_f_op_f32(-var_0.d.x)) * _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-var_0.d.x))), -158f), var_0.e);
    var_0 = Struct_4(var_0.a, 1u >> ((14351u >> (u_input.a % 32u)) % 32u), ~vec3<i32>(-1i, abs(-11408i), (0i >> (u_input.b.x % 32u)) >> (31901u % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d), _wgslsmith_f_op_vec3_f32(var_0.d * vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x))) + var_0.d) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_0.d.x, -987f))), var_0.d)), var_0.e);
    var var_1 = !(!select(select(select(vec4<bool>(var_0.a.c, true, var_0.a.d, var_0.a.d), vec4<bool>(var_0.a.d, var_0.a.c, var_0.a.c, false), vec4<bool>(var_0.a.d, true, true, false)), vec4<bool>(true, var_0.a.d, false, var_0.a.c), select(vec4<bool>(true, true, false, var_0.a.c), vec4<bool>(var_0.a.c, var_0.a.d, var_0.a.d, var_0.a.d), true)), select(select(vec4<bool>(true, false, var_0.a.c, false), vec4<bool>(false, false, var_0.a.d, var_0.a.c), true), vec4<bool>(var_0.a.d, var_0.a.d, var_0.a.d, var_0.a.c), true), select(select(vec4<bool>(false, true, false, var_0.a.d), vec4<bool>(var_0.a.d, true, var_0.a.d, false), vec4<bool>(true, true, true, var_0.a.d)), vec4<bool>(var_0.a.c, true, true, false), any(vec2<bool>(var_0.a.d, var_0.a.d)))));
    var_0 = Struct_4(Struct_2(u_input.a, vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(13835u, 1u)), u_input.a, u_input.a, firstTrailingBit(var_0.e.b.x)), all(select(vec2<bool>(var_1.x, false), vec2<bool>(true, var_0.a.c), select(var_1.yx, var_1.xw, var_1.x))), all(!select(var_1.zw, var_1.zy, vec2<bool>(false, true)))), var_0.b, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(global0.x, 1i), firstLeadingBit(0i), var_0.c.x), u_input.e.zzx), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2082f) * var_0.d.x) - var_0.d.x), 1116f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-604f)))))), var_0.e);
    return u_input.e.x;
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> vec2<bool> {
    global0 = vec2<i32>(countOneBits(_wgslsmith_mod_i32(-func_3(), ~u_input.d.x >> (~47640u % 32u))), arg_0);
    var var_0 = -305f;
    let var_1 = Struct_2(43348u, arg_1.c, arg_1.a.x, arg_1.a.x);
    var var_2 = 181f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1653f))));
    return !arg_1.a.zz;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: f32) -> Struct_2 {
    var var_0 = vec4<u32>(arg_1.b, arg_2.b << (_wgslsmith_mod_u32(u_input.a ^ arg_1.c.x, ~u_input.b.x) % 32u), arg_2.c.x ^ (_wgslsmith_div_u32(arg_1.b, arg_1.b) >> (_wgslsmith_mod_u32(u_input.b.x, arg_1.c.x) % 32u)), (_wgslsmith_mod_u32(arg_1.c.x, 6196u) << (1u % 32u)) << (63709u % 32u)) ^ u_input.b;
    global0 = u_input.d;
    var var_1 = select(50802u, _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_1.c.x | 8711u, abs(arg_1.b)), 44623u ^ _wgslsmith_dot_vec4_u32(arg_1.c, vec4<u32>(u_input.b.x, 0u, 51713u, 0u)))), true);
    global0 = u_input.e.xw;
    var_0 = arg_2.c;
    return Struct_2(arg_2.c.x, ~arg_2.c, !(!(true | (arg_3 < arg_3))), arg_1.a.x & !(arg_3 >= -1879f));
}

fn func_1() -> Struct_2 {
    return func_4(!select(!func_2(-61361i, Struct_3(vec3<bool>(true, false, true), 4294967295u, u_input.b)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), !func_2(u_input.c.x, Struct_3(vec3<bool>(true, true, false), 4294967295u, vec4<u32>(u_input.b.x, u_input.a, 1u, u_input.a)))), Struct_3(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true))), u_input.a, firstTrailingBit(u_input.b)), Struct_3(!vec3<bool>(true, all(vec4<bool>(false, true, false, true)), true), ~57017u, vec4<u32>(~_wgslsmith_dot_vec3_u32(u_input.b.ywz, u_input.b.yyx), _wgslsmith_div_u32(~93612u, _wgslsmith_sub_u32(4294967295u, 1u)), u_input.b.x, _wgslsmith_div_u32(1u, ~u_input.b.x))), _wgslsmith_f_op_f32(max(736f, _wgslsmith_f_op_f32(max(213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1235f * -102f)))))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = vec2<u32>(24414u, 723u);
    global0 = abs(max(vec2<i32>(2147483647i, 39467i), arg_2));
    global0 = -u_input.e.zw;
    var var_1 = firstLeadingBit(arg_0.c);
    var var_2 = Struct_2(~0u, (vec4<u32>(41724u, arg_0.c.x, ~arg_0.c.x, _wgslsmith_mult_u32(1u, 1u)) | abs(_wgslsmith_add_vec4_u32(arg_1.b, vec4<u32>(7193u, 34023u, var_0.x, 1u)))) << (_wgslsmith_sub_vec4_u32(abs(func_1().b), arg_0.c >> ((vec4<u32>(1u, arg_1.b.x, u_input.b.x, u_input.a) >> (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), true, func_1().c);
    return StorageBuffer(_wgslsmith_mult_vec2_i32(arg_3.a.yy, _wgslsmith_add_vec2_i32(u_input.d, -arg_3.a.xy)), arg_3.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1273f, -1047f, -509f, 105f)), vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), -874f, _wgslsmith_f_op_f32(step(319f, 1395f)), _wgslsmith_f_op_f32(floor(516f)))))), ~abs(abs(vec2<u32>(arg_3.b.x, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_vec2_i32(~(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.e.x, global0.x) << (u_input.b.wy % vec2<u32>(32u)), -vec2<i32>(9457i, u_input.e.x))), u_input.d);
    global0 = u_input.c >> (vec2<u32>(_wgslsmith_div_u32(~1u, 4294967295u), u_input.b.x) % vec2<u32>(32u));
    var var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(~4294967295u, 10650u), vec2<u32>(u_input.a, u_input.a)), ~u_input.b.x, u_input.a);
    let x = u_input.a;
    s_output = func_5(Struct_3(vec3<bool>((u_input.e.x == -39054i) || (var_0.x < var_0.x), true, all(vec3<bool>(true, true, true))), ~u_input.b.x, vec4<u32>(78049u, _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(var_0.x, var_0.x)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(51055u, u_input.a), countOneBits(65149u), abs(u_input.a)), u_input.b.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 17450u), u_input.b.zw) % 32u))), func_1(), max(u_input.d, vec2<i32>(2147483647i, -u_input.c.x)), Struct_1(~abs(vec3<i32>(global0.x, -22612i, -43982i)), vec2<u32>(_wgslsmith_div_u32(countOneBits(0u), func_1().b.x), u_input.a)));
}

