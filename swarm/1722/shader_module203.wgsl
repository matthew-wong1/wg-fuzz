struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(false, 11225u, vec3<i32>(19160i, -15137i, 0i)), Struct_1(true, 27399u, vec3<i32>(11674i, -80175i, -1i)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<i32> {
    global0 = Struct_2(arg_0, global0.b);
    global0 = Struct_2(Struct_1(any(select(vec3<bool>(false, arg_0.a, false), vec3<bool>(false, false, arg_0.a), arg_0.a)) && true, ~_wgslsmith_sub_u32(~arg_2.b, ~arg_0.b), vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c.x, 30848i, 14295i), u_input.a.zyz), arg_2.c.x, -u_input.e)), arg_0);
    let var_0 = arg_2;
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(abs(arg_2.b), ~90161u, arg_2.b, ~select(u_input.c.x, 1u, false)) ^ _wgslsmith_div_vec4_u32(abs(~u_input.c), ~vec4<u32>(19915u, global0.b.b, 4294967295u, 17291u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, arg_2.b), u_input.c, vec4<u32>(arg_2.b, arg_2.b, arg_0.b, 0u)) % vec4<u32>(32u))), vec4<u32>(11678u, var_0.b, _wgslsmith_sub_u32(u_input.c.x, var_0.b), arg_0.b));
    return vec3<i32>(countOneBits(var_0.c.x), var_0.c.x, -1i);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<i32>) -> Struct_2 {
    global0 = Struct_2(Struct_1(true == global0.b.a, global0.a.b, _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(51308i, -24549i, global0.a.c.x)), ~func_3(Struct_1(true, 30187u, arg_1), arg_0.yx, Struct_1(global0.a.a, 1u, vec3<i32>(global0.b.c.x, u_input.a.x, u_input.e))), global0.a.c)), global0.b);
    var var_0 = -u_input.a.wyy;
    var_0 = arg_1;
    var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(max(vec3<i32>(-1i, -14683i, u_input.a.x), arg_1), func_3(Struct_1(global0.a.b > 44802u, ~global0.a.b, global0.b.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(598f, arg_0.x) - _wgslsmith_div_vec2_f32(arg_0.zz, arg_0.xx)), global0.b)), select(arg_1, global0.b.c, global0.b.a));
    let var_1 = Struct_1(global0.a.a, u_input.d, u_input.a.zzw);
    return Struct_2(Struct_1(select(!any(vec3<bool>(global0.b.a, true, var_1.a)), true, global0.b.a), _wgslsmith_div_u32(92322u & var_1.b, var_1.b), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.a.yyz, global0.a.c), reverseBits(2147483647i)), -2147483647i, select(-26673i, 1106i, all(vec4<bool>(var_1.a, var_1.a, false, true))))), var_1);
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = arg_0;
    var var_1 = global0.b.a;
    var_1 = !(!arg_0.b.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(515f, 1444f, 147f, 1215f))))))));
    var var_3 = func_2(var_2.xwz, ~_wgslsmith_add_vec3_i32(u_input.a.zyz, vec3<i32>(41204i, arg_0.b.c.x ^ -28085i, _wgslsmith_dot_vec2_i32(vec2<i32>(36858i, -177i), vec2<i32>(var_0.b.c.x, -40168i)))));
    return countOneBits(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (_wgslsmith_clamp_vec3_i32(-vec3<i32>(-783i, u_input.a.x, -1i), vec3<i32>(u_input.e, ~1i, -50309i), vec3<i32>(-44265i, func_1(Struct_2(global0.a, global0.a)), global0.b.c.x)) & vec3<i32>(global0.b.c.x, global0.a.c.x, global0.a.c.x)) & (vec3<i32>(u_input.b, 0i, select(_wgslsmith_mult_i32(20200i, u_input.b), _wgslsmith_div_i32(u_input.a.x, u_input.e), false)) << (u_input.c.xzz % vec3<u32>(32u)));
    var_0 = select(min(vec3<i32>(~_wgslsmith_sub_i32(45072i, 0i), -57657i, _wgslsmith_sub_i32(min(-2147483647i, u_input.a.x), 27522i)), ~u_input.a.yzy), (vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, -1i, var_0.x), global0.a.c)) & select(-(~vec3<i32>(u_input.e, 6948i, global0.b.c.x)), vec3<i32>(1i, -1033i, -15431i), false), all(select(vec3<bool>(global0.b.a, u_input.d != 3779u, false), select(!vec3<bool>(true, false, global0.a.a), select(vec3<bool>(global0.a.a, global0.a.a, true), vec3<bool>(global0.a.a, global0.b.a, false), true), !vec3<bool>(false, true, global0.a.a)), !(!vec3<bool>(global0.b.a, true, true)))));
    var_0 = ~vec3<i32>(global0.b.c.x, var_0.x, 1i);
    var var_1 = countOneBits(~abs(~(~1u)));
    var var_2 = Struct_2(global0.b, func_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -3540f), _wgslsmith_f_op_f32(sign(-771f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2011f))), 101f), _wgslsmith_div_vec3_i32(vec3<i32>(global0.b.c.x, -2147483647i, ~2147483647i), vec3<i32>(global0.b.c.x, -21124i, -51658i) >> (abs(vec3<u32>(global0.a.b, global0.b.b, 0u)) % vec3<u32>(32u)))).b);
    global0 = Struct_2(var_2.a, Struct_1(true, _wgslsmith_dot_vec3_u32(u_input.c.yxw << (countOneBits(vec3<u32>(44394u, 12582u, var_2.a.b)) % vec3<u32>(32u)), ~abs(u_input.c.yyw)), vec3<i32>(6620i, ~(-2147483647i) & u_input.e, reverseBits(global0.b.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1210f, -604f), 596f))));
}

