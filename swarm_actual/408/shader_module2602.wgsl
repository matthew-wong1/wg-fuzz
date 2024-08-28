struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: Struct_4;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>) -> vec4<f32> {
    let var_0 = global1.a;
    global1 = Struct_4(global1.a, countOneBits(vec2<i32>(-1i) * -vec2<i32>(0i, global1.b.x)) & max(arg_0, abs(global1.b)), Struct_1(222f, !global0[_wgslsmith_index_u32(global1.a.a.x, 10u)], select(global1.c.c, global1.d, global1.c.c.x)), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~var_0.a.yyz, firstTrailingBit(vec3<u32>(u_input.b, 1u, 16194u))), 10u)] | true, all(select(vec4<bool>(true, false, false, global1.d.x), vec4<bool>(global0[_wgslsmith_index_u32(36109u, 10u)], false, true, global1.d.x), vec4<bool>(true, global1.c.c.x, global0[_wgslsmith_index_u32(1u, 10u)], false))) || !any(vec3<bool>(true, global0[_wgslsmith_index_u32(127771u, 10u)], false))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-409f, -267f)));
    var var_2 = global1.c.a;
    var var_3 = vec3<u32>(19088u, max(select(~(~40909u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_0.a.x, u_input.b, var_0.a.x), vec3<u32>(u_input.e, var_0.a.x, 41233u), vec3<bool>(global0[_wgslsmith_index_u32(9328u, 10u)], global0[_wgslsmith_index_u32(31263u, 10u)], global1.d.x)), vec3<u32>(1u, var_0.a.x, 50130u) << (vec3<u32>(12209u, 1u, 4294967295u) % vec3<u32>(32u))), any(vec4<bool>(true, global1.c.b, global0[_wgslsmith_index_u32(29389u, 10u)], global0[_wgslsmith_index_u32(global1.a.a.x, 10u)])) & !global0[_wgslsmith_index_u32(1966u, 10u)]), ~(global1.a.a.x ^ 8918u)), global1.a.a.x);
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-246f, global1.c.a, 225f, -323f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(162f, global1.c.a, global1.c.a, 238f) * vec4<f32>(global1.c.a, global1.c.a, 1000f, global1.c.a))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 1469f, 2084f, var_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1891f, 1859f, global1.c.a, var_1)), !vec4<bool>(true, false, global1.d.x, false)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, 793f, -427f, 1195f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1, -1719f, var_1, var_1), vec4<f32>(734f, var_1, 362f, var_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.a, -1378f, global1.c.a, global1.c.a)))))));
}

fn func_2(arg_0: bool) -> bool {
    global1 = Struct_4(global1.a, global1.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.a - global1.c.a)) + -1416f), false & global0[_wgslsmith_index_u32(u_input.e, 10u)], !vec2<bool>(global1.b.x < u_input.c, any(vec4<bool>(arg_0, arg_0, true, global1.c.b)))), !(!vec2<bool>(true, global0[_wgslsmith_index_u32(30319u, 10u)] | false)));
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.a)) * -304f), 1167f, _wgslsmith_f_op_f32(round(869f)), global1.c.a) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.c.a, global1.c.a, 1731f, -373f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(~vec2<i32>(global1.b.x, -31444i))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(615f, 255f, -199f, global1.c.a))))));
    global1 = Struct_4(Struct_3(~vec4<u32>(countOneBits(0u), _wgslsmith_mod_u32(u_input.a.x, global1.a.a.x), ~1u, firstLeadingBit(u_input.e))), vec2<i32>(1i, _wgslsmith_clamp_i32(u_input.d.x >> (_wgslsmith_add_u32(global1.a.a.x, 0u) % 32u), countOneBits(2147483647i), i32(-1i) * -5566i)), Struct_1(_wgslsmith_f_op_f32(-var_0.x), true, global1.d), !global1.c.c);
    let var_1 = Struct_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e | u_input.b, 1u), vec2<u32>(~global1.a.a.x, 0u)));
    global1 = Struct_4(Struct_3(vec4<u32>(34122u, 4294967295u, 29205u, 85757u)), -firstLeadingBit(_wgslsmith_div_vec2_i32(-vec2<i32>(global1.b.x, global1.b.x), vec2<i32>(-2147483647i, 5508i))), Struct_1(global1.c.a, all(!vec4<bool>(global1.c.c.x, global1.d.x, true, arg_0)), global1.d), global1.c.c);
    return ~(var_1.a ^ min(var_1.a, abs(0u))) > _wgslsmith_mult_u32(u_input.b, var_1.a);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<bool>) -> Struct_4 {
    var var_0 = global1.c;
    var_0 = Struct_1(-1000f, true, var_0.c);
    var var_1 = true;
    var var_2 = Struct_3(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.e << (~76190u % 32u), ~global1.a.a.x, countOneBits(~global1.a.a.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(71097u, 40285u, u_input.b, 29106u), global1.a.a >> (~global1.a.a % vec4<u32>(32u)))));
    var var_3 = global1.a;
    return Struct_4(Struct_3(firstTrailingBit(var_2.a)), select(~arg_0.xy ^ abs(u_input.d), _wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, 1i), -select(u_input.d, global1.b, var_0.c.x)), !(any(vec4<bool>(arg_1.x, false, true, true)) && (var_0.b | false))), global1.c, select(arg_1.yx, var_0.c, !var_0.b));
}

fn func_1() -> Struct_4 {
    global1 = func_4(vec3<i32>(20914i, reverseBits(1i ^ u_input.d.x), max(_wgslsmith_div_i32(1i, u_input.d.x), abs(u_input.c))) & abs(vec3<i32>(u_input.c, i32(-1i) * -36087i, ~u_input.c)), select(vec3<bool>(false, false, any(select(global1.c.c, vec2<bool>(global1.d.x, global1.c.c.x), vec2<bool>(global0[_wgslsmith_index_u32(1u, 10u)], false)))), !(!vec3<bool>(false, global1.d.x, global1.d.x)), vec3<bool>(true, false, func_2(global1.d.x))));
    var var_0 = Struct_5(vec2<u32>(38213u, u_input.a.x));
    var var_1 = global1.c;
    global0 = array<bool, 10>();
    var var_2 = func_4(_wgslsmith_mult_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.c, u_input.c), ~vec3<i32>(u_input.d.x, -1i, 2147483647i)), firstLeadingBit(-_wgslsmith_div_vec3_i32(vec3<i32>(-46234i, 2147483647i, 3748i), vec3<i32>(2147483647i, u_input.d.x, 28348i)))), vec3<bool>(true, false, select(true, true, false))).a;
    return func_4(min(~(min(vec3<i32>(2147483647i, 5123i, 0i), vec3<i32>(-17887i, global1.b.x, u_input.c)) | select(vec3<i32>(0i, u_input.c, -34019i), vec3<i32>(u_input.c, 2147483647i, global1.b.x), vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_2.a.x, 10u)]))), vec3<i32>(~abs(-12483i), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global1.b.x, global1.b.x), vec3<i32>(30349i, 44598i, 12215i))), ~(-2147483647i))), !vec3<bool>(global1.d.x, func_4(abs(vec3<i32>(-16885i, u_input.d.x, u_input.d.x)), vec3<bool>(global1.d.x, global0[_wgslsmith_index_u32(17936u, 10u)], global0[_wgslsmith_index_u32(global1.a.a.x, 10u)])).d.x, !all(var_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.a, ~(~abs(u_input.b)) & abs(global1.a.a.x));
}

