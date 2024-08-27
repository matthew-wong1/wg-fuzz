struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(891u, 72127u, 4294967295u);

var<private> global1: Struct_2 = Struct_2(Struct_1(2147483647i, vec3<bool>(false, true, true), 894f, vec3<bool>(true, false, false)), Struct_1(37242i, vec3<bool>(true, true, true), -830f, vec3<bool>(true, false, true)), 4294967295u, Struct_1(1i, vec3<bool>(false, true, false), 211f, vec3<bool>(true, false, false)), vec4<i32>(-1i, 12368i, -19295i, 2147483647i));

var<private> global2: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(-1377i, -1i, 25131i), vec3<i32>(33774i, 15201i, i32(-2147483648)), vec3<i32>(-13748i, 38969i, 37086i), vec3<i32>(19971i, 86531i, -3174i), vec3<i32>(i32(-2147483648), -38601i, -19661i), vec3<i32>(27026i, 2147483647i, -28184i), vec3<i32>(2147483647i, 262i, 8194i), vec3<i32>(0i, 1i, 1i), vec3<i32>(-43241i, 1i, -1i), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(34106i, i32(-2147483648), 1314i), vec3<i32>(48997i, 46525i, -1i), vec3<i32>(-3438i, 27619i, 0i), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec3<i32>(-1i, 14512i, 2147483647i), vec3<i32>(i32(-2147483648), -72109i, 8546i), vec3<i32>(0i, 1i, 16582i), vec3<i32>(0i, 1i, 16832i), vec3<i32>(2147483647i, -1i, 6889i), vec3<i32>(i32(-2147483648), 2147483647i, -11492i), vec3<i32>(i32(-2147483648), -30493i, i32(-2147483648)), vec3<i32>(-7382i, 0i, 0i), vec3<i32>(1631i, -32283i, -9396i), vec3<i32>(3614i, 1i, 1i), vec3<i32>(2147483647i, 34304i, -35474i), vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(-20807i, -12411i, 38287i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    global1 = Struct_2(Struct_1(0i, global1.d.b, global1.d.c, !select(select(vec3<bool>(global1.b.b.x, global1.b.d.x, false), global1.a.b, true), vec3<bool>(true, false, global1.b.b.x), !global1.b.d)), global1.d, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 25965u ^ u_input.a.x), vec2<u32>(_wgslsmith_mod_u32(37702u, ~49493u), ~(~global1.c))), global1.d, abs(_wgslsmith_sub_vec4_i32(~global1.e << (vec4<u32>(u_input.a.x, 61517u, 13904u, 3350u) % vec4<u32>(32u)), max(-vec4<i32>(27620i, global1.d.a, global1.b.a, 0i), -vec4<i32>(global1.b.a, 0i, 9979i, global1.e.x)))));
    var var_0 = global1.d;
    global1 = Struct_2(Struct_1(-14866i, select(vec3<bool>(any(vec2<bool>(var_0.b.x, false)), var_0.d.x, true), !(!vec3<bool>(global1.b.b.x, false, global1.a.d.x)), vec3<bool>(any(global1.d.b.zy), any(vec2<bool>(global1.d.b.x, true)), !global1.a.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -334f), global1.b.c)), global1.b.d), global1.d, min(1u, global1.c), Struct_1(abs(reverseBits(0i)), var_0.b, var_0.c, select(vec3<bool>(any(vec3<bool>(false, true, global1.b.d.x)), global1.b.d.x & false, !global1.b.b.x), select(select(global1.b.d, global1.d.b, var_0.b), var_0.d, !global1.b.b.x), select(select(vec3<bool>(global1.a.b.x, var_0.d.x, var_0.d.x), global1.a.d, vec3<bool>(false, var_0.b.x, false)), var_0.d, global1.a.b.x))), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(var_0.a, -2147483647i, var_0.a, var_0.a), vec4<i32>(global1.a.a, global1.e.x, 0i, var_0.a), false), abs(vec4<i32>(-1i, 0i, var_0.a, var_0.a)), min(global1.e, global1.e)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(51367u, global1.c, 1u, 23976u), ~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 33610u)) % vec4<u32>(32u)), ~global1.e));
    let var_1 = global1.e.wy;
    var_0 = global1.b;
    return global1.a.d.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> f32 {
    global2 = array<vec3<i32>, 27>();
    global1 = Struct_2(Struct_1(16060i, !vec3<bool>(global1.b.b.x, global1.b.b.x, func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-456f - 404f))), vec3<bool>(true, all(select(global1.b.d.xz, vec2<bool>(arg_1, true), vec2<bool>(arg_1, true))), ~global1.d.a < 1i)), global1.d, abs(~abs(arg_0.x) >> ((reverseBits(arg_0.x) << (_wgslsmith_mult_u32(arg_0.x, 4294967295u) % 32u)) % 32u)), global1.d, -max(global1.e, vec4<i32>(global1.a.a, ~(-63823i), -12137i, 1i)));
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1136f, _wgslsmith_f_op_f32(-global1.a.c)), global1.d.c, -458f, -444f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.d.c, global1.d.c, _wgslsmith_f_op_f32(-global1.b.c), global1.d.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.c, 1804f, 1000f, -917f) - _wgslsmith_div_vec4_f32(vec4<f32>(313f, 911f, 602f, 1046f), vec4<f32>(585f, global1.a.c, -1448f, global1.b.c)))), 1957f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1613f)) * global1.a.c))), (reverseBits(_wgslsmith_mod_i32(global1.e.x, global1.b.a)) << (69215u % 32u)) < min(55471i, global1.d.a)));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.c, -549f, var_0.x, global1.a.c) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1909f, global1.d.c, global1.d.c, var_0.x), vec4<f32>(1571f, global1.d.c, var_0.x, 981f)))) - vec4<f32>(global1.a.c, _wgslsmith_f_op_f32(max(global1.b.c, var_0.x)), 796f, var_0.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -741f, 321f, global1.a.c) - vec4<f32>(global1.a.c, 1762f, -603f, -804f)))))));
    var var_1 = !select(global1.a.d.xy, vec2<bool>(true, true), vec2<bool>(true, !arg_1));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(553f))));
}

fn func_4(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = -(~vec4<i32>(~global1.a.a, ~(-2147483647i), 2147483647i, ~(-3561i))) & reverseBits(global1.e);
    var var_1 = _wgslsmith_clamp_u32(~global0.x, min(_wgslsmith_add_u32(~_wgslsmith_sub_u32(u_input.a.x, 0u), global1.c), global1.c), ~global0.x);
    let var_2 = 1249f;
    var var_3 = ~(~vec3<u32>(78599u, 4294967295u, 26417u) | vec3<u32>(_wgslsmith_add_u32(17205u, 13918u), _wgslsmith_clamp_u32(global0.x, 17583u, u_input.a.x), select(u_input.a.x, 0u, global1.d.b.x))) ^ (select(vec3<u32>(global1.c, select(0u, global0.x, global1.a.d.x), 29433u), vec3<u32>(0u, 62956u, 24061u), all(select(vec3<bool>(global1.a.b.x, false, global1.a.d.x), vec3<bool>(false, global1.a.b.x, global1.b.b.x), vec3<bool>(false, false, true)))) ^ firstTrailingBit(~vec3<u32>(0u, 4294967295u, 4294967295u)));
    global0 = _wgslsmith_mult_vec3_u32(~(~vec3<u32>(~u_input.a.x, ~u_input.a.x, 24707u)), vec3<u32>(~_wgslsmith_clamp_u32(global1.c, ~global1.c, abs(1u)), global1.c, ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_3.x, var_3.x, 7682u, 1u), vec4<u32>(global1.c, global1.c, 32903u, u_input.a.x)), select(vec4<u32>(18089u, 90701u, 4294967295u, global0.x), vec4<u32>(global1.c, global0.x, var_3.x, 12093u), vec4<bool>(false, true, global1.d.d.x, false)))));
    return Struct_2(Struct_1(-global1.b.a, global1.a.d, -1906f, select(select(select(vec3<bool>(global1.a.d.x, global1.a.b.x, true), global1.d.b, global1.b.d), select(vec3<bool>(global1.b.d.x, global1.a.b.x, true), global1.a.b, global1.a.b.x), global1.d.d.x), select(!vec3<bool>(global1.b.d.x, global1.d.b.x, global1.b.d.x), !vec3<bool>(false, global1.b.d.x, false), global1.a.d.x), true)), global1.a, _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_clamp_u32(var_3.x, ~0u, u_input.a.x)), firstLeadingBit(max(var_3.x | global1.c, global1.c)), 4294967295u), global1.a, vec4<i32>(-(var_0.x & 1i), 19489i, _wgslsmith_dot_vec4_i32(max(var_0 >> (vec4<u32>(var_3.x, 4294967295u, var_3.x, 1u) % vec4<u32>(32u)), vec4<i32>(-1i, 59711i, global1.e.x, var_0.x)), var_0), countOneBits(var_0.x)));
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    global2 = array<vec3<i32>, 27>();
    var var_0 = func_4(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(u_input.a, arg_0.x)), global1.b.c, arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1088f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global1.a.c))))), vec3<f32>(global1.d.c, -717f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global1.b.c)))))));
    var var_1 = ~vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(min(global1.c, global0.x), ~global0.x, abs(13448u)), countOneBits(vec3<u32>(global1.c, var_0.c, 10036u) >> (vec3<u32>(2095u, global0.x, 0u) % vec3<u32>(32u)))), _wgslsmith_dot_vec4_u32(min(~vec4<u32>(u_input.a.x, global0.x, global1.c, global1.c), countOneBits(vec4<u32>(1u, 16256u, 4294967295u, global0.x))), ~(vec4<u32>(0u, 0u, global0.x, u_input.a.x) << (vec4<u32>(u_input.a.x, 22351u, 0u, 1u) % vec4<u32>(32u)))));
    var var_2 = _wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.a.x);
    var var_3 = vec3<bool>(any(select(!select(vec4<bool>(true, var_0.a.d.x, true, false), vec4<bool>(arg_0.x, var_0.a.b.x, true, var_0.a.d.x), vec4<bool>(var_0.b.d.x, false, false, true)), select(vec4<bool>(true, true, false, global1.a.d.x), select(vec4<bool>(true, true, false, false), vec4<bool>(var_0.b.d.x, true, false, arg_0.x), vec4<bool>(var_0.d.b.x, false, arg_0.x, false)), true), select(vec4<bool>(global1.a.d.x, global1.d.d.x, global1.d.d.x, global1.d.d.x), vec4<bool>(true, true, global1.b.b.x, true), true))), true, -1608f > _wgslsmith_f_op_f32(sign(global1.a.c)));
    return u_input.a.x;
}

fn func_5(arg_0: u32, arg_1: f32) -> Struct_1 {
    global2 = array<vec3<i32>, 27>();
    global2 = array<vec3<i32>, 27>();
    global2 = array<vec3<i32>, 27>();
    global0 = ~_wgslsmith_clamp_vec3_u32(~abs(min(vec3<u32>(1u, 21779u, u_input.a.x), vec3<u32>(global1.c, 0u, 6737u))), abs(~(vec3<u32>(1u, arg_0, 1u) ^ vec3<u32>(4294967295u, u_input.a.x, 0u))), countOneBits(vec3<u32>(0u, 68157u, 1u) << (vec3<u32>(u_input.a.x, 44761u, u_input.a.x) % vec3<u32>(32u))));
    var var_0 = global1.d;
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(global1.a.b), global1.b.c);
    global0 = reverseBits(firstTrailingBit(firstLeadingBit(abs(~vec3<u32>(global1.c, 4294967295u, 1u)))));
    global1 = func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.d.c, global1.b.c, _wgslsmith_f_op_f32(global1.b.c * global1.b.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.b.c, var_0.c, 727f)))), true)));
    let var_1 = func_3();
    global2 = array<vec3<i32>, 27>();
    global0 = ~(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, global0.x, 13787u), ~vec3<u32>(global1.c, 41092u, 4294967295u) >> (abs(vec3<u32>(4294967295u, global1.c, 82302u)) % vec3<u32>(32u))) & ~vec3<u32>(_wgslsmith_mult_u32(global0.x, u_input.a.x), 1u, ~global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.d.c, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1272f, 246f), _wgslsmith_f_op_f32(-561f * var_0.c)))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1129f, _wgslsmith_f_op_f32(-889f + 1163f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1706f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(945f * -953f))), var_0.c))));
}

