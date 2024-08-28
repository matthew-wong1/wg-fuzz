struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(2006i, i32(-2147483648)), vec2<i32>(-14830i, i32(-2147483648)), vec2<i32>(1i, -24382i), vec2<i32>(10109i, 2147483647i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-3262i, -1i), vec2<i32>(1i, -47477i), vec2<i32>(24323i, 24663i), vec2<i32>(9145i, 1i), vec2<i32>(2147483647i, -18825i), vec2<i32>(-1i, 4299i));

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(-368f, 18407u, vec3<bool>(false, false, false), true, vec3<bool>(false, true, false));

var<private> global3: f32;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    global1 = ~arg_0.b;
    var var_0 = false || global2.e.x;
    var var_1 = max(~vec4<i32>(u_input.b, firstTrailingBit(u_input.b), -u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, -1i)), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(1i, u_input.b, u_input.b, u_input.b)) & vec4<i32>(u_input.c, u_input.b, u_input.c, u_input.a.x), firstLeadingBit(vec4<i32>(43088i, u_input.b, u_input.a.x, -40563i)))) >> (firstTrailingBit(min(~vec4<u32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(arg_0.b, global2.b, arg_0.b, 33002u), vec4<u32>(41387u, u_input.d, 1u, u_input.d), vec4<bool>(arg_0.c.x, true, global2.d, true)), ~vec4<u32>(global2.b, 65270u, 1u, global2.b), ~vec4<u32>(u_input.d, 31333u, 61786u, 39163u)))) % vec4<u32>(32u));
    let var_2 = arg_1.x;
    let var_3 = arg_0;
    return _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(24525u, 4294967295u, ~var_3.b), vec3<u32>(~84735u, _wgslsmith_div_u32(44447u, var_3.b), 0u ^ u_input.d))), firstTrailingBit(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.b, var_3.b, global2.b), countOneBits(vec3<u32>(u_input.d, 3310u, 9418u)), vec3<u32>(0u, 48291u, 0u))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(func_3(Struct_1(global2.a, global2.b, vec3<bool>(true, true, global2.c.x), arg_1.x, global2.e), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(537f, global2.a, arg_0.x, 1414f), vec4<f32>(1170f, 160f, 1000f, 887f), arg_1.x))) << (~(~4294967295u) % 32u), 4294967295u), countOneBits(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(45605u, 4294967295u), vec2<u32>(u_input.d, 0u)), vec2<u32>(12250u, 0u))) & (~(vec2<u32>(0u, 6416u) >> (vec2<u32>(90711u, global2.b) % vec2<u32>(32u))) ^ ~countOneBits(vec2<u32>(global2.b, global2.b))));
    let var_1 = !select(!global2.c.yy, select(select(select(vec2<bool>(false, global2.c.x), arg_1, global2.e.xy), !arg_1, vec2<bool>(false, arg_1.x)), global2.c.yz, !global2.c.yy), arg_1);
    var var_2 = Struct_1(463f, _wgslsmith_dot_vec2_u32(~(reverseBits(vec2<u32>(var_0.x, u_input.d)) | _wgslsmith_sub_vec2_u32(vec2<u32>(1603u, 1u), vec2<u32>(global2.b, 52519u))), vec2<u32>(~abs(u_input.d), ~u_input.d)), !(!(!vec3<bool>(global2.c.x, global2.c.x, true))), false, select(!vec3<bool>(false, true, global2.d), global2.c, global2.c));
    var_0 = abs(vec2<u32>(48393u, global2.b)) >> (firstTrailingBit(vec2<u32>(u_input.d << (_wgslsmith_clamp_u32(4294967295u, u_input.d, 4294967295u) % 32u), func_3(Struct_1(arg_0.x, u_input.d, vec3<bool>(true, global2.c.x, true), true, var_2.e), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(624f, 173f, var_2.a, 483f)))))) % vec2<u32>(32u));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1748f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))), _wgslsmith_add_u32(abs(u_input.d), select(75304u, 18987u, all(arg_1))), global2.e, arg_1.x, !global2.e);
    return u_input.c == _wgslsmith_sub_i32(~(~(~69809i)), abs(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.b, u_input.c, u_input.b), -u_input.b)));
}

fn func_1() -> Struct_1 {
    var var_0 = any(select(global2.c, vec3<bool>(!any(global2.c), false, global2.e.x), false));
    global3 = _wgslsmith_f_op_f32(-global2.a);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -120f), 4294967295u, !select(vec3<bool>(global2.c.x, global2.e.x, global2.e.x), vec3<bool>(global2.c.x, func_2(vec2<f32>(global2.a, -1000f), global2.c.yx), all(global2.c)), (true & global2.e.x) | global2.e.x), false, select(!select(global2.c, global2.c, true), select(global2.e, !select(global2.e, vec3<bool>(global2.d, global2.d, false), global2.c), any(global2.c)), !global2.c));
    var_1 = Struct_1(_wgslsmith_div_f32(var_1.a, 469f), var_1.b, vec3<bool>(!(!any(vec4<bool>(false, false, global2.e.x, false))), false, all(!vec4<bool>(var_1.c.x, var_1.e.x, var_1.d, true))), global2.e.x, select(!var_1.c, select(global2.c, select(select(global2.e, global2.c, var_1.e), global2.c, !global2.e), true), !vec3<bool>(all(vec2<bool>(var_1.e.x, false)), !global2.d, 14269u > u_input.d)));
    var_1 = Struct_1(-559f, 1u, select(!(!var_1.c), select(vec3<bool>(all(vec4<bool>(global2.d, global2.e.x, var_1.c.x, var_1.d)), global2.d || false, false), vec3<bool>(false, var_1.c.x, true), true), !all(var_1.e.yz) | !global2.d), select(true, true, global2.c.x), vec3<bool>(var_1.c.x, true, false));
    return Struct_1(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(select(var_1.a, var_1.a, true))), any(select(global2.e.xy, global2.e.xx, vec2<bool>(var_1.e.x, global2.c.x)))))), 4294967295u, vec3<bool>(any(!vec3<bool>(var_1.c.x, global2.d, var_1.e.x)), any(vec4<bool>(global2.d, false, var_1.e.x, true)), var_1.c.x), !var_1.c.x, vec3<bool>(var_1.d, select(var_1.e.x, true, !func_2(vec2<f32>(-2328f, var_1.a), global2.e.zy)), var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.c, _wgslsmith_mod_i32(1i, firstLeadingBit(_wgslsmith_dot_vec3_i32(~u_input.a, u_input.a))), u_input.a.x, 2147483647i & _wgslsmith_dot_vec3_i32(u_input.a, u_input.a));
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(-var_1.a);
    let var_3 = -vec4<i32>(-69333i, _wgslsmith_sub_i32(var_0.x, var_0.x), 0i, u_input.a.x);
    var var_4 = _wgslsmith_div_vec3_u32(~(~max(vec3<u32>(36479u, 0u, global2.b), firstTrailingBit(vec3<u32>(global2.b, 90766u, 0u)))), ~vec3<u32>(~var_1.b, 53973u, global2.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1238f, -382f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-255f, global2.a)) * vec2<f32>(global2.a, var_1.a)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, -933f) * vec2<f32>(var_1.a, var_1.a)))), func_1().b, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(step(global2.a, _wgslsmith_f_op_f32(sign(var_1.a)))), _wgslsmith_f_op_f32(step(-1074f, _wgslsmith_f_op_f32(-global2.a)))))));
}

