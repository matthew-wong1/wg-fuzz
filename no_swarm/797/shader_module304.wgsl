struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(1537f, Struct_1(true, 0u, vec3<bool>(true, true, true), vec3<u32>(2584u, 81217u, 2644u), vec2<bool>(false, false)), 466f, 4294967295u, 13653i));

var<private> global1: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: u32) -> f32 {
    var var_0 = ~vec2<u32>(~(~25757u), ~_wgslsmith_mult_u32(countOneBits(1u), 1u ^ u_input.a.x));
    let var_1 = ~(~countOneBits(vec2<u32>(u_input.a.x << (28071u % 32u), 1u)));
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(_wgslsmith_mult_i32(30931i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-9298i, 68242i), vec2<i32>(-1i, -2147483647i) >> (vec2<u32>(var_0.x, 1u) % vec2<u32>(32u)))), ~(-2147483647i), -_wgslsmith_div_i32(_wgslsmith_mult_i32(-14511i, -14182i), 10066i), reverseBits(_wgslsmith_div_i32(1i, i32(-1i) * -23340i))));
    return _wgslsmith_f_op_f32(f32(-1f) * -873f);
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(937f)) * _wgslsmith_f_op_f32(func_3(arg_1.c.a, u_input.a.yy, global1.x))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1538f + arg_1.c.a)))))), arg_1.c.b, -391f, ~64856u, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(arg_1.c.e, arg_1.c.e, arg_0, 1i) << (min(vec4<u32>(arg_1.c.b.b, u_input.a.x, 4294967295u, arg_1.d.x), vec4<u32>(u_input.a.x, 4294967295u, 0u, u_input.a.x)) % vec4<u32>(32u)), vec4<i32>(-arg_0, arg_1.c.e, _wgslsmith_add_i32(-1i, -1i), 19883i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(-61613i, arg_0, arg_1.c.e, -33807i), vec4<i32>(reverseBits(arg_0), arg_1.c.e, _wgslsmith_clamp_i32(arg_1.c.e, -2147483647i, 14090i), arg_1.c.e))));
    var_0 = Struct_2(arg_1.b.x, var_0.b, arg_1.c.c, u_input.a.x, reverseBits(abs(~_wgslsmith_add_i32(arg_0, 0i))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-var_0.c), var_0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(1213f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), 127982u >> (arg_1.d.x % 32u), -1i);
    global0 = array<Struct_2, 1>();
    var var_2 = arg_1;
    return ~(~firstTrailingBit(38228u) << (global1.x % 32u));
}

fn func_1(arg_0: bool) -> Struct_2 {
    global1 = max(max(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~u_input.a, u_input.a ^ vec3<u32>(4294967295u, 80790u, u_input.a.x), abs(vec3<u32>(u_input.a.x, global1.x, 0u))), vec3<u32>(global1.x, global1.x, 40149u)), vec3<u32>(16689u, 6583u, ~func_2(1662i, Struct_3(vec2<bool>(false, arg_0), vec3<f32>(398f, 747f, 137f), Struct_2(1603f, Struct_1(arg_0, u_input.a.x, vec3<bool>(arg_0, arg_0, true), vec3<u32>(u_input.a.x, u_input.a.x, global1.x), vec2<bool>(arg_0, arg_0)), 812f, u_input.a.x, 72914i), u_input.a.xz)))), ~u_input.a);
    var var_0 = ~abs(_wgslsmith_add_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(0i, -10332i), ~23141i), firstLeadingBit(vec3<i32>(-1i, 27957i, -24095i))));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(624f, _wgslsmith_f_op_f32(284f - _wgslsmith_f_op_f32(-917f * -167f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(322f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1769f) * 141f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(134f, -1151f, -875f, _wgslsmith_f_op_f32(f32(-1f) * -2839f))))));
    var var_2 = !(!(!all(select(vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, arg_0, arg_0)))));
    var var_3 = 4294967295u;
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(-1406f + var_1.x)), -1421f)), 1000f), Struct_1(false | all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(true, false))), 1805u, select(!(!vec3<bool>(false, false, arg_0)), !select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, arg_0, false), arg_0), vec3<bool>(-584f > var_1.x, arg_0, all(vec2<bool>(arg_0, false)))), ~(~u_input.a) | _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 13467u, 1u), u_input.a), select(!select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), false), !(!vec2<bool>(arg_0, false)), all(select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), arg_0)))), -437f, ~28256u, var_0.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: bool) -> vec2<i32> {
    var var_0 = true;
    let var_1 = Struct_3(select(vec2<bool>(true, true), !vec2<bool>(arg_3, arg_0.b.a), vec2<bool>(false, arg_3)), arg_2.wxz, func_1(all(select(!arg_0.b.c.zy, arg_0.b.c.zy, true))), vec2<u32>(_wgslsmith_add_u32(max(u_input.a.x, arg_0.d) >> (arg_1.x % 32u), ~(~u_input.a.x)), 46212u));
    global1 = min(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(79296u, 38955u, 23412u, 49052u) << (~vec4<u32>(4294967295u, 1u, var_1.d.x, global1.x) % vec4<u32>(32u)), select(vec4<u32>(var_1.c.b.d.x, 100664u, 1u, arg_0.d) & vec4<u32>(1853u, global1.x, 28591u, u_input.a.x), reverseBits(vec4<u32>(global1.x, 4294967295u, 1u, var_1.d.x)), any(vec4<bool>(arg_0.b.c.x, arg_3, var_1.a.x, var_1.a.x)))), firstLeadingBit(var_1.d.x), (_wgslsmith_dot_vec3_u32(var_1.c.b.d, vec3<u32>(u_input.a.x, 0u, var_1.d.x)) >> (_wgslsmith_mod_u32(var_1.c.d, 25364u) % 32u)) ^ arg_0.d), ~(~(~vec3<u32>(arg_0.b.d.x, var_1.c.b.d.x, 1u))));
    var var_2 = func_1(arg_0.b.c.x).a;
    var var_3 = vec2<i32>(max(var_1.c.e, arg_0.e), -arg_0.e);
    return vec2<i32>(-1i) * -(~(-vec2<i32>(arg_0.e, var_1.c.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-1050f, -1265f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-188f, -824f)))));
    var var_1 = ~func_4(func_1(true), u_input.a.zy | vec2<u32>(~0u, abs(u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(-var_0.x), var_0.x), true);
    global0 = array<Struct_2, 1>();
    let var_2 = vec4<f32>(-2845f, var_0.x, _wgslsmith_f_op_f32(abs(317f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -742f)));
    let var_3 = ~vec3<u32>(1u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 10199u, u_input.a.x), vec3<u32>(global1.x, global1.x, 30494u))), 1u);
    global1 = vec3<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.a), u_input.a) ^ ~_wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(26528u, 44761u)), 17762u, 1042u);
    global0 = array<Struct_2, 1>();
    var var_4 = func_1(var_2.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * var_2.x)));
    var_1 = max(~_wgslsmith_mod_vec2_i32(vec2<i32>(3399i, var_1.x), -vec2<i32>(16474i, var_1.x)) << (var_3.zy % vec2<u32>(32u)), vec2<i32>(var_4.e & _wgslsmith_mult_i32(func_1(var_4.b.c.x).e, _wgslsmith_add_i32(var_1.x, 2147483647i)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_1.x >> (1u % 32u), ~28026i), func_1(var_4.b.a).e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(620f, 179f, var_0.x))))))), var_4.d, var_1.x);
}

