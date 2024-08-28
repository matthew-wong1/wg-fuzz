struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 2147483647i, 0i);

var<private> global1: Struct_1;

var<private> global2: vec3<bool>;

var<private> global3: vec2<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = !select(select(select(select(vec4<bool>(true, global1.c, global2.x, arg_0.x), arg_0, true), arg_0, select(arg_0, arg_0, arg_0.x)), arg_0, false), select(select(select(arg_0, vec4<bool>(global1.c, false, false, global2.x), arg_0), arg_0, false), !select(arg_0, vec4<bool>(global2.x, false, false, true), arg_0.x), global2.x), !(!global1.c) & all(global2.yx));
    let var_1 = Struct_1(global1.a, 243f, false, _wgslsmith_f_op_f32(global3.x * 804f));
    var var_2 = Struct_1(global1.a, global1.b, false, _wgslsmith_f_op_f32(-251f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-820f * 679f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(623f)), -799f)))));
    var_2 = var_1;
    var var_3 = u_input.b.xz;
    return _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_mult_vec4_u32(u_input.b, u_input.b) >> (countOneBits(vec4<u32>(var_3.x, 62453u, var_3.x, 42382u)) % vec4<u32>(32u))), 13881u);
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1) -> u32 {
    global3 = vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1000f)), -1357f)));
    global1 = Struct_1(-15507i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(step(global1.b, -296f))) * -587f)), !any(global2.xy), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = _wgslsmith_div_vec3_i32(-u_input.a, abs(vec3<i32>(u_input.a.x, 1i, arg_2.a << (u_input.c % 32u))));
    let var_0 = arg_2;
    global2 = select(!select(!select(vec3<bool>(global1.c, true, global1.c), vec3<bool>(false, false, false), vec3<bool>(var_0.c, true, var_0.c)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, var_0.c), vec3<bool>(false, false, true)), vec3<bool>(false, false, var_0.c), vec3<bool>(true, arg_2.c, true)), select(select(vec3<bool>(arg_2.c, true, arg_2.c), vec3<bool>(true, false, false), vec3<bool>(true, arg_2.c, false)), !vec3<bool>(true, var_0.c, arg_2.c), vec3<bool>(true, true, true))), !(!(!vec3<bool>(true, global2.x, true))), vec3<bool>(!any(vec3<bool>(true, arg_2.c, false)), all(!global2.xy), false));
    return abs(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b | ~(vec4<u32>(49352u, 0u, 1995u, arg_1) ^ u_input.b)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = func_4(u_input.a, max(~func_3(!vec4<bool>(global1.c, false, true, arg_0.c)), 1u), arg_0);
    var_0 = 55122u;
    let var_1 = global1.a;
    let var_2 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(global3.x * -1488f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(-1f)))), global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.d))) - global1.b)));
    global1 = Struct_1(~_wgslsmith_dot_vec3_i32(u_input.a, ~vec3<i32>(2147483647i, -2147483647i, 13109i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), all(vec3<bool>(arg_0.c, select(all(vec2<bool>(global1.c, var_2.c)), true, true), all(!vec4<bool>(var_2.c, var_2.c, true, true)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-501f, 2088f)) * _wgslsmith_f_op_f32(-arg_0.b)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b, -176f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(452f - _wgslsmith_f_op_f32(floor(global1.d))))))));
    return Struct_1(max(_wgslsmith_dot_vec4_i32(~vec4<i32>(-37820i, global1.a, u_input.a.x, global0.x), vec4<i32>(-1i) * -vec4<i32>(17032i, -2147483647i, 2147483647i, 1i)), -(~global0.x ^ (i32(-1i) * -13955i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b))), global2.x, var_2.d);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec2_u32(~(~(~_wgslsmith_clamp_vec2_u32(u_input.b.yy, vec2<u32>(arg_3.x, u_input.c), vec2<u32>(u_input.c, u_input.b.x)))), vec2<u32>(1u, 44272u));
    global2 = select(vec3<bool>(any(vec2<bool>(any(vec3<bool>(false, global1.c, true)), true)), !all(vec2<bool>(false, true)), true), !vec3<bool>(any(select(vec3<bool>(global1.c, true, true), vec3<bool>(arg_1.c, arg_0.c, global1.c), vec3<bool>(arg_1.c, arg_2.c, arg_2.c))), func_2(arg_2, u_input.a.x).c | arg_2.c, arg_1.c), select(vec3<bool>(arg_1.c, global1.c, !(arg_0.c && arg_0.c)), vec3<bool>(arg_0.c, var_0.x < _wgslsmith_clamp_u32(4294967295u, 4294967295u, 62384u), false), select(vec3<bool>(true, all(vec2<bool>(arg_2.c, global1.c)), all(vec4<bool>(global2.x, false, arg_2.c, global2.x))), select(!vec3<bool>(true, false, global1.c), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(arg_1.c, false, true), arg_2.c)), !select(vec3<bool>(global1.c, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, arg_2.c)))));
    var var_1 = -(~(-vec2<i32>(-arg_1.a, 2890i)));
    let var_2 = vec2<f32>(arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1419f - -1192f)));
    let var_3 = -func_2(func_2(func_2(Struct_1(var_1.x, arg_1.d, true, 589f), -1i), arg_0.a), arg_2.a).a;
    return Struct_1(arg_2.a, -599f, any(!(!select(vec4<bool>(true, false, global1.c, arg_0.c), vec4<bool>(arg_0.c, false, arg_1.c, global1.c), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.x, -1585f))));
}

fn func_1() -> vec3<bool> {
    global1 = func_5(func_2(Struct_1(max(_wgslsmith_div_i32(-25805i, global0.x), 1i), global3.x, false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.x), global3.x))), max(_wgslsmith_add_i32(2147483647i, u_input.a.x), abs(4711i)) | -11894i), func_2(Struct_1(_wgslsmith_mod_i32(global0.x, reverseBits(-1i)), _wgslsmith_f_op_f32(-global3.x), global2.x, 603f), abs(global1.a >> (u_input.d % 32u))), Struct_1(~(global0.x | _wgslsmith_mult_i32(1i, -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), select(!global1.c | (global2.x & global1.c), false & (global2.x && false), func_2(Struct_1(global0.x, 1000f, global2.x, global1.b), global1.a).c), 330f), min(u_input.b ^ u_input.b, u_input.b));
    var var_0 = true;
    return select(!(!select(select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, global2.x, global1.c)), vec3<bool>(global1.c, false, global1.c), vec3<bool>(global2.x, true, global2.x))), select(!vec3<bool>(-479f >= global1.d, false, global1.c), select(vec3<bool>(global2.x, !global1.c, global2.x), select(select(vec3<bool>(true, global2.x, true), vec3<bool>(global1.c, global1.c, global2.x), vec3<bool>(global2.x, global1.c, global1.c)), !vec3<bool>(global1.c, global1.c, global1.c), vec3<bool>(false, global2.x, global1.c)), select(vec3<bool>(false, global2.x, global1.c), !vec3<bool>(true, global2.x, false), true)), vec3<bool>(_wgslsmith_mult_i32(-3703i, -23352i) != _wgslsmith_clamp_i32(u_input.a.x, global0.x, -19612i), global1.c, global2.x)), select(select(vec3<bool>(u_input.b.x < u_input.b.x, !global2.x, global1.c), !vec3<bool>(false, global2.x, global2.x), vec3<bool>(true, all(global2.zz), global1.c || global1.c)), vec3<bool>(func_5(Struct_1(u_input.a.x, -1233f, global2.x, global3.x), Struct_1(46162i, global3.x, global1.c, -125f), func_5(Struct_1(global0.x, 3647f, global2.x, 1215f), Struct_1(-27207i, global1.d, global1.c, 524f), Struct_1(0i, global3.x, global2.x, -1000f), vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.b.x)), abs(u_input.b)).c, ~1u <= min(0u, u_input.c), true), global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global2 = !vec3<bool>(all(select(!vec3<bool>(false, global2.x, false), select(vec3<bool>(global1.c, global2.x, global2.x), vec3<bool>(false, false, global2.x), vec3<bool>(global1.c, true, false)), true)), true, false || func_2(Struct_1(u_input.a.x, -316f, global2.x, global1.b), 0i).c);
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.x, -1034f))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, 1000f) + vec2<f32>(global3.x, 485f)) - vec2<f32>(1068f, global1.d))))));
    global1 = Struct_1(~17649i, _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(174f, _wgslsmith_f_op_f32(-global1.b)))), global2.x, -1399f);
    var var_1 = Struct_1(global0.x, var_0.x, !func_5(func_2(func_5(Struct_1(69084i, -749f, global1.c, -619f), Struct_1(global1.a, global1.d, true, 1196f), Struct_1(27597i, global3.x, global2.x, -520f), vec4<u32>(28414u, u_input.d, 0u, 70820u)), -29544i), Struct_1(-2147483647i ^ u_input.a.x, _wgslsmith_div_f32(var_0.x, global3.x), false || global1.c, global3.x), func_5(func_2(Struct_1(26211i, -2488f, true, 1109f), global0.x), Struct_1(2147483647i, global3.x, false, var_0.x), Struct_1(global1.a, global1.d, false, 841f), abs(vec4<u32>(u_input.b.x, 0u, 0u, u_input.c))), u_input.b).c, var_0.x);
    let var_2 = -1i;
    var var_3 = func_2(func_2(Struct_1(reverseBits(~var_1.a), global1.d, global1.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), u_input.a.x), 1i);
    let var_4 = abs(0i);
    global2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d & min(0u, u_input.d), -(~vec4<i32>(select(var_3.a, 1508i, true), ~var_2, _wgslsmith_add_i32(global0.x, 0i), ~global0.x)), var_3.b, var_0);
}

