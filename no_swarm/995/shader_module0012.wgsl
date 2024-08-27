struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, 1000f, vec4<u32>(4294967295u, 0u, 4294967295u, 1u), 26425i);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> i32 {
    global0 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2223f, _wgslsmith_f_op_f32(f32(-1f) * -163f), !(global0.a | false)))), _wgslsmith_sub_vec4_u32(arg_1.c, vec4<u32>(_wgslsmith_sub_u32(global0.c.x, 91487u), _wgslsmith_sub_u32(~0u, u_input.a ^ u_input.a), abs(0u ^ global0.c.x), ~(~1u))), i32(-1i) * -arg_0.d);
    var var_0 = ~arg_0.c.x;
    let var_1 = select(all(select(!(!vec3<bool>(global0.a, false, arg_1.a)), select(select(vec3<bool>(global0.a, arg_0.a, arg_1.a), vec3<bool>(false, true, arg_1.a), vec3<bool>(false, arg_0.a, false)), !vec3<bool>(false, arg_0.a, false), vec3<bool>(arg_1.a, arg_1.a, arg_1.a)), false)), arg_0.a, true);
    var_0 = _wgslsmith_div_u32(_wgslsmith_add_u32(arg_1.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0.c.x, abs(arg_0.c.x), ~global0.c.x), _wgslsmith_mod_vec3_u32(firstLeadingBit(global0.c.xzw), arg_1.c.yyw))), 132836u & arg_0.c.x);
    let var_2 = any(select(!(!select(vec4<bool>(true, var_1, arg_0.a, global0.a), vec4<bool>(false, false, false, var_1), vec4<bool>(arg_0.a, var_1, true, var_1))), select(vec4<bool>(false, global0.b == 973f, true | arg_1.a, true), vec4<bool>(any(vec2<bool>(arg_0.a, arg_1.a)), !arg_0.a, true, all(vec3<bool>(true, var_1, true))), vec4<bool>(false, false, arg_0.a, true)), true));
    return arg_0.d >> (arg_1.c.x % 32u);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = global0.c.yw;
    var var_1 = Struct_1(func_3(Struct_1(true, -230f, vec4<u32>(var_0.x, 0u, var_0.x, global0.c.x), -2147483647i), Struct_1(any(arg_0), _wgslsmith_f_op_f32(713f - arg_1.x), global0.c << (global0.c % vec4<u32>(32u)), 1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1679f, arg_1.x)) - arg_1.xz)) > -(~countOneBits(3430i)), 1052f, global0.c, global0.d << (_wgslsmith_sub_u32(max(~var_0.x, 1u), 0u) % 32u));
    var_0 = var_1.c.zw;
    let var_2 = Struct_1(global0.a, 260f, var_1.c, abs(-max(var_1.d & var_1.d, 1i)));
    var var_3 = !var_1.a;
    return Struct_1(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(104f * 756f))))), countOneBits(abs(vec4<u32>(~var_0.x, abs(var_0.x), 38240u, 0u))), _wgslsmith_dot_vec4_i32(vec4<i32>(-(0i >> (var_1.c.x % 32u)), -2147483647i, global0.d, 45240i), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.d, var_1.d, var_2.d, var_1.d), ~vec4<i32>(var_1.d, -51129i, var_1.d, 20137i)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> Struct_1 {
    global0 = Struct_1(true, _wgslsmith_f_op_f32(-global0.b), global0.c, 2147483647i);
    global0 = Struct_1(!(true == (!global0.a || global0.a)), 1f, global0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(~(~global0.d), global0.d, ~(i32(-1i) * -1i), _wgslsmith_add_i32(countOneBits(global0.d), abs(-9077i))), vec4<i32>(select(1i, global0.d, true), -1i, ~countOneBits(global0.d), ~_wgslsmith_mod_i32(global0.d, global0.d))));
    var var_0 = func_2(select(arg_0, !vec3<bool>(all(arg_0), global0.a, true), !(!select(arg_0, arg_0, arg_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-990f, global0.b)))), _wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(-2477f - -1158f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b, 1421f))), 1042f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(981f, -1319f, global0.b, global0.b) + vec4<f32>(-1271f, global0.b, global0.b, global0.b))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.b, -634f, -532f, global0.b))), vec4<f32>(global0.b, 151f, 1126f, 358f))))));
    let var_1 = vec3<i32>(-(~_wgslsmith_clamp_i32(1i, global0.d, var_0.d)), func_3(Struct_1(true, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.b, var_0.b))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c.x, 1u, var_0.c.x, 0u), vec4<u32>(26460u, u_input.a, arg_1, 21088u)), ~1i), Struct_1(arg_0.x, _wgslsmith_f_op_f32(-global0.b), global0.c, global0.d), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * -661f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b))))), var_0.d);
    var_0 = func_2(select(!select(select(vec3<bool>(var_0.a, false, arg_0.x), arg_0, arg_0), select(arg_0, arg_0, false), var_0.a), vec3<bool>(any(arg_0.yx), select(false, var_0.a, true), true), _wgslsmith_clamp_i32(~64776i, -13551i ^ global0.d, global0.d) == var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -381f))), var_0.b, 875f, func_2(select(vec3<bool>(arg_0.x, var_0.a, true), vec3<bool>(false, global0.a, true), arg_0), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b, global0.b, -635f, global0.b)))).b) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(442f, var_0.b, -415f, -1000f)) - vec4<f32>(global0.b, -579f, var_0.b, global0.b)))));
    return Struct_1(!(_wgslsmith_mult_i32(var_0.d, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.d, var_1.x, -1i, 1i), vec4<i32>(34946i, var_1.x, -3570i, var_0.d))) <= _wgslsmith_div_i32(~global0.d, _wgslsmith_clamp_i32(var_0.d, var_1.x, 55353i))), var_0.b, min(_wgslsmith_div_vec4_u32(firstLeadingBit(countOneBits(var_0.c)), max(var_0.c, var_0.c)), vec4<u32>(0u, u_input.a, 1u, arg_1)), _wgslsmith_sub_i32(global0.d, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-28470i, var_0.d, var_1.x, 85121i), vec4<i32>(-25119i, global0.d, global0.d, global0.d)), abs(abs(vec4<i32>(-2147483647i, -6748i, var_0.d, var_0.d))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !select(vec4<bool>(0u < global0.c.x, all(!vec2<bool>(arg_1.a, arg_1.a)), !global0.a, arg_2.a), select(select(vec4<bool>(arg_2.a, arg_2.a, false, true), !vec4<bool>(arg_1.a, arg_2.a, arg_0.a, true), vec4<bool>(true, true, false, false)), vec4<bool>(func_1(vec3<bool>(false, arg_0.a, false), 3685u).a, !arg_2.a, arg_0.c.x <= u_input.a, true), !select(false, arg_2.a, false)), select(vec4<bool>(any(vec2<bool>(arg_1.a, arg_2.a)), arg_2.a, true, arg_2.d > arg_2.d), !select(vec4<bool>(true, arg_1.a, false, arg_2.a), vec4<bool>(true, true, arg_2.a, false), true), select(select(vec4<bool>(false, true, arg_1.a, arg_1.a), vec4<bool>(arg_0.a, arg_1.a, true, true), vec4<bool>(false, arg_0.a, arg_2.a, true)), !vec4<bool>(false, true, false, arg_2.a), vec4<bool>(global0.a, arg_0.a, false, false))));
    global0 = Struct_1(-536f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-543f - 591f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + global0.b)), ~select(arg_1.c, arg_2.c >> (arg_0.c % vec4<u32>(32u)), true) & ~func_1(var_0.yyy, 17701u).c, ~(-abs(arg_1.d)));
    var var_1 = -select(-(~vec2<i32>(-41628i, -10959i)) | ~vec2<i32>(global0.d, 1i), vec2<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(global0.d, -70682i, 0i)), max(vec3<i32>(0i, -73661i, global0.d), vec3<i32>(-12905i, 39185i, -2147483647i))), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(2147483647i, -1i)), ~vec2<i32>(1i, arg_2.d))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1022f))) <= arg_2.b);
    var var_2 = true;
    var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(var_1.x, 1i, -2147483647i)), -(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, global0.d, var_1.x), vec3<i32>(arg_2.d, 2147483647i, 1244i)))), var_1.x);
    return Struct_1(-304f <= _wgslsmith_f_op_f32(-arg_2.b), arg_1.b, ~global0.c, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(select(vec3<bool>(true, any(vec2<bool>(true, global0.a)), global0.a), !select(vec3<bool>(true, global0.a, global0.a), vec3<bool>(true, global0.a, global0.a), vec3<bool>(global0.a, true, global0.a)), global0.a || true), 44573u), Struct_1(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global0.b)))), func_2(!vec3<bool>(false, global0.a, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.b, global0.b, 398f))).b), _wgslsmith_add_vec4_u32(global0.c | vec4<u32>(global0.c.x, u_input.a, u_input.a, 121604u), vec4<u32>(u_input.a, global0.c.x, max(global0.c.x, 0u), _wgslsmith_add_u32(21567u, 0u))), reverseBits(global0.d)), func_2(vec3<bool>(!global0.a, !func_1(vec3<bool>(true, global0.a, false), 9970u).a, select(global0.a, any(vec2<bool>(false, global0.a)), true || global0.a)), vec4<f32>(global0.b, global0.b, _wgslsmith_f_op_f32(trunc(func_1(vec3<bool>(true, global0.a, global0.a), global0.c.x).b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.b)), func_1(vec3<bool>(true, false, false), u_input.a).b))));
    global0 = func_4(Struct_1(global0.a, _wgslsmith_f_op_f32(global0.b * func_4(func_2(vec3<bool>(global0.a, false, global0.a), vec4<f32>(global0.b, -437f, global0.b, 660f)), Struct_1(true, 1000f, vec4<u32>(global0.c.x, 0u, u_input.a, 82148u), global0.d), Struct_1(global0.a, global0.b, vec4<u32>(u_input.a, 0u, 9446u, 4294967295u), 2147483647i)).b), vec4<u32>(countOneBits(4294967295u), _wgslsmith_clamp_u32(1u, ~global0.c.x, _wgslsmith_dot_vec2_u32(global0.c.yy, global0.c.xw)), reverseBits(~17775u), 24267u), 51763i), Struct_1(func_1(vec3<bool>(global0.d == 55341i, any(vec4<bool>(false, global0.a, global0.a, true)), global0.a), u_input.a).a, global0.b, vec4<u32>(u_input.a, _wgslsmith_add_u32(u_input.a << (global0.c.x % 32u), _wgslsmith_dot_vec4_u32(global0.c, global0.c)), func_1(vec3<bool>(true, false, global0.a), u_input.a >> (global0.c.x % 32u)).c.x, ~u_input.a & (u_input.a & u_input.a)), global0.d), Struct_1(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(select(global0.b, 1608f, global0.a))) - -682f), vec4<u32>(global0.c.x, 103359u, _wgslsmith_sub_u32(~7113u, _wgslsmith_mod_u32(u_input.a, 23398u)), (1u << (1u % 32u)) >> (_wgslsmith_dot_vec3_u32(global0.c.zzy, vec3<u32>(global0.c.x, u_input.a, 82852u)) % 32u)), _wgslsmith_clamp_i32(-2147483647i, global0.d, firstTrailingBit(~global0.d))));
    var var_0 = vec3<i32>(-12395i, global0.d, global0.d);
    let var_1 = false;
    var var_2 = Struct_1(global0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b))), ~_wgslsmith_mult_vec4_u32(~global0.c, ~_wgslsmith_mult_vec4_u32(global0.c, vec4<u32>(u_input.a, 0u, 1u, u_input.a))), max(func_2(select(!vec3<bool>(false, var_1, global0.a), select(vec3<bool>(false, global0.a, false), vec3<bool>(false, false, true), vec3<bool>(false, var_1, false)), true), vec4<f32>(_wgslsmith_div_f32(551f, global0.b), global0.b, _wgslsmith_f_op_f32(global0.b - 397f), _wgslsmith_f_op_f32(-global0.b))).d, ~(-11554i)));
    var_0 = vec3<i32>(func_1(!select(select(vec3<bool>(var_1, false, global0.a), vec3<bool>(var_2.a, false, false), false), select(vec3<bool>(false, true, var_1), vec3<bool>(var_1, false, false), false), var_2.a), ~var_2.c.x).d, abs(_wgslsmith_clamp_i32(var_2.d, global0.d, global0.d << (~var_2.c.x % 32u))), 1i);
    var var_3 = vec3<bool>(all(!select(vec4<bool>(var_1, global0.a, true, true), vec4<bool>(false, global0.a, var_2.a, true), !vec4<bool>(false, true, var_1, var_2.a))), global0.a, func_2(!vec3<bool>(!var_2.a, true, global0.a), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.b, var_2.b, global0.b, -1069f), vec4<f32>(global0.b, global0.b, global0.b, var_2.b))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(153f, -182f, var_2.b, global0.b))))))).a);
    var var_4 = _wgslsmith_f_op_f32(abs(220f));
    var_2 = func_1(vec3<bool>(select(var_2.a, var_3.x, var_3.x), var_1, false), 83970u);
    let x = u_input.a;
    s_output = StorageBuffer(27690i, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-var_2.d, abs(-2147483647i), var_2.d), min(vec3<i32>(-4058i, global0.d, 24307i) ^ vec3<i32>(-2147483647i, var_2.d, global0.d), ~vec3<i32>(-30540i, var_2.d, 1i)))), var_0.zx, var_0.zz);
}

