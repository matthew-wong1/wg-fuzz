struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -188f;

var<private> global1: vec3<f32>;

var<private> global2: array<vec3<f32>, 26>;

var<private> global3: i32;

var<private> global4: array<Struct_4, 18>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> vec4<i32> {
    var var_0 = firstLeadingBit(abs(firstLeadingBit(vec4<u32>(u_input.d, arg_1.d, arg_1.d, 4294967295u))) << (_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d, 1u, arg_1.d, 4294967295u), ~vec4<u32>(u_input.d, arg_1.d, 1u, arg_1.d)) % vec4<u32>(32u)));
    let var_1 = Struct_3(vec3<bool>(!(!any(vec4<bool>(arg_1.e.c.x, true, false, false))), arg_1.a.e, arg_1.a.a.x), -320f, arg_1.a, _wgslsmith_mult_vec3_i32(min(~firstLeadingBit(vec3<i32>(arg_0.x, -2147483647i, 34407i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, arg_0.x, u_input.a), arg_0), u_input.c, arg_0.x | 37777i)), select(arg_0.zwz, firstLeadingBit(arg_0.wyz), any(vec3<bool>(true, true, true))) | vec3<i32>(arg_0.x, i32(-1i) * -9702i, -348i ^ arg_0.x)));
    var var_2 = Struct_2(var_1.c, !(!select(!arg_1.e.a.xyy, !vec3<bool>(var_1.c.e, true, arg_1.a.a.x), select(arg_1.e.a.yyx, vec3<bool>(var_1.a.x, true, true), arg_1.b))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2884f)) * _wgslsmith_f_op_f32(min(-1011f, global1.x))))))), 17608u, arg_1.e);
    let var_3 = select(select(~arg_0, arg_0, false), min(arg_0, -vec4<i32>(23201i, 1i, u_input.c, ~arg_0.x)), var_2.e.d);
    let var_4 = arg_1;
    return -(firstLeadingBit(arg_0) << (~vec4<u32>(~1u, var_0.x, _wgslsmith_div_u32(arg_1.d, arg_1.d), 58350u) % vec4<u32>(32u)));
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_4(Struct_1(select(vec4<bool>(true, true, false, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), true), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 344f, -786f) - vec4<f32>(global1.x, 904f, 762f, global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(654f, global1.x, global1.x, global1.x) - vec4<f32>(global1.x, -505f, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1192f, global1.x, global1.x, global1.x), vec4<f32>(global1.x, global1.x, 793f, 701f))))))), vec2<bool>(false, true), true, false));
    global3 = _wgslsmith_sub_i32(u_input.c, ~1i);
    let var_1 = -vec3<i32>(u_input.c, -_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-42309i, -30522i, 0i, u_input.b), vec4<i32>(u_input.c, u_input.e, u_input.e, u_input.e)), vec4<i32>(-1i, u_input.b, u_input.a, 2147483647i)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.b, u_input.b, 0i), vec4<i32>(u_input.b, u_input.c, 18523i, u_input.c)), -vec4<i32>(0i, u_input.c, -37111i, 0i)), firstLeadingBit(vec4<i32>(-43509i, u_input.b, u_input.b, u_input.a))));
    global4 = array<Struct_4, 18>();
    let var_2 = global4[_wgslsmith_index_u32(~u_input.d, 18u)];
    return vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, 0i, u_input.e, 1i), func_3(vec4<i32>(u_input.b, u_input.c, u_input.a, -2147483647i), Struct_2(var_2.a, vec3<bool>(var_2.a.c.x, var_2.a.e, false), -288f, u_input.d, var_2.a))), -((var_1.x & -25890i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(56910u, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.d, u_input.d)) % 32u)), var_1.x) & vec3<i32>(14468i, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.x, 0i, u_input.b, var_1.x), vec4<i32>(49593i, u_input.c, 26657i, var_1.x) << (vec4<u32>(u_input.d, 1u, 55633u, u_input.d) % vec4<u32>(32u))) >> (_wgslsmith_add_u32(select(47747u, u_input.d, var_0.a.a.x), u_input.d) % 32u), u_input.c);
}

fn func_4(arg_0: i32, arg_1: f32) -> Struct_2 {
    global2 = array<vec3<f32>, 26>();
    let var_0 = Struct_3(!select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), global1.x, Struct_1(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), all(vec4<bool>(true, true, true, true))), vec4<f32>(_wgslsmith_div_f32(-172f, -1408f), _wgslsmith_f_op_f32(select(117f, -665f, true)), _wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true, true != !(u_input.d <= u_input.d)), ~func_2());
    var var_1 = 26201i;
    let var_2 = Struct_2(Struct_1(!vec4<bool>(any(var_0.a.xz), var_0.a.x, 0u == u_input.d, false), _wgslsmith_f_op_vec4_f32(var_0.c.b - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_0.c.b)))), vec2<bool>(true, true), !(_wgslsmith_f_op_f32(abs(1017f)) != _wgslsmith_f_op_f32(-var_0.c.b.x)), all(var_0.c.c)), select(select(var_0.a, !var_0.a, var_0.c.e), vec3<bool>(var_0.c.c.x, true, false), select(!var_0.a, var_0.a, var_0.a)), _wgslsmith_f_op_f32(-arg_1), 35601u, var_0.c);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.b.x)), 1000f))));
    return Struct_2(var_0.c, var_2.b, -492f, ~firstLeadingBit(~(u_input.d & 17411u)), var_2.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32, arg_3: vec2<f32>) -> Struct_4 {
    var var_0 = !arg_0.a.x;
    var_0 = !any(!vec3<bool>(arg_0.e & arg_1.x, false, !arg_0.e));
    global4 = array<Struct_4, 18>();
    var var_1 = _wgslsmith_f_op_f32(-global1.x);
    var var_2 = func_4(_wgslsmith_dot_vec3_i32(func_2() ^ vec3<i32>(29886i, u_input.e, countOneBits(-2147483647i)), -(vec3<i32>(1i, 1i, 1i) & max(vec3<i32>(-2147483647i, 52055i, u_input.c), vec3<i32>(u_input.c, -2147483647i, u_input.b)))), _wgslsmith_f_op_f32(arg_0.b.x + arg_3.x));
    return global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(var_2.d, u_input.d))), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(46545u, 50769u), vec2<u32>(u_input.d, 0u) & vec2<u32>(76063u, u_input.d)) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(87463u, u_input.d)) & vec2<u32>(75949u, 14670u), select(max(vec2<u32>(var_2.d, arg_2), vec2<u32>(arg_2, var_2.d)), firstLeadingBit(vec2<u32>(63377u, 4294967295u)), var_2.b.xx), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 3996u), _wgslsmith_div_vec2_u32(vec2<u32>(0u, arg_2), vec2<u32>(u_input.d, 0u)))) % vec2<u32>(32u))), 18u)];
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_4) -> Struct_3 {
    let var_0 = u_input.d;
    var var_1 = u_input.d;
    global4 = array<Struct_4, 18>();
    var var_2 = arg_3.a.b.x;
    var var_3 = _wgslsmith_f_op_f32(-global1.x);
    return Struct_3(vec3<bool>(all(func_4(1i, global1.x).e.a.zww) | any(vec2<bool>(false, false)), false, arg_2), _wgslsmith_f_op_f32(round(arg_3.a.b.x)), Struct_1(arg_3.a.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.a.b.x, 1150f, _wgslsmith_div_f32(-307f, 653f), _wgslsmith_f_op_f32(step(arg_3.a.b.x, arg_3.a.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_3.a.b, vec4<f32>(-1432f, 110f, 118f, -1297f)) * vec4<f32>(223f, global1.x, arg_3.a.b.x, -833f)), !(global1.x == 287f))), vec2<bool>(true, true), true, !arg_2), arg_0.wzx);
}

fn func_6(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-789f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(global1.x + global1.x)) * 1000f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(global1.xy * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + -199f), global1.x) - vec2<f32>(_wgslsmith_f_op_f32(min(arg_2.c.b.x, -982f)), -164f)));
    var var_2 = -574f;
    var_1 = _wgslsmith_f_op_vec2_f32(global1.zx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2.c.b.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.c.b.wx + vec2<f32>(var_1.x, 725f))), vec2<bool>(false, arg_2.a.x)))));
    global4 = array<Struct_4, 18>();
    return !select(!arg_2.c.a.xxy, arg_2.a, any(!func_1(arg_2.c, vec4<bool>(arg_0, true, true, false), u_input.d, vec2<f32>(var_0.x, 1088f)).a.a.xzy));
}

fn func_7(arg_0: i32, arg_1: Struct_3, arg_2: f32) -> Struct_2 {
    var var_0 = ~vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(15517u, u_input.d, 4294967295u, u_input.d) & vec4<u32>(44867u, 23376u, u_input.d, 0u), vec4<u32>(u_input.d, 22056u, u_input.d, 9461u) << (vec4<u32>(u_input.d, 1u, u_input.d, u_input.d) % vec4<u32>(32u))), ~u_input.d);
    let var_1 = var_0.x;
    global3 = _wgslsmith_add_i32(arg_1.d.x, reverseBits(firstTrailingBit(-31854i)));
    global4 = array<Struct_4, 18>();
    global3 = abs(_wgslsmith_clamp_i32(2147483647i, arg_0, ~(-u_input.a))) & -u_input.a;
    return Struct_2(func_5(abs(-vec4<i32>(arg_0, 0i, -27456i, arg_0)) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.x, 14532u, u_input.d, 1u), ~vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.d)) % vec4<u32>(32u)), func_2(), 4294967295u >= ~firstTrailingBit(var_0.x), func_1(Struct_1(select(vec4<bool>(arg_1.a.x, arg_1.c.a.x, false, true), vec4<bool>(true, true, arg_1.c.c.x, false), arg_1.c.e), arg_1.c.b, !vec2<bool>(arg_1.c.c.x, true), all(arg_1.a.yz), false), func_5(abs(vec4<i32>(-2147483647i, arg_0, arg_1.d.x, -1i)), ~arg_1.d, true, func_1(arg_1.c, vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, true), var_0.x, arg_1.c.b.wz)).c.a, min(u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(u_input.d, 68463u))), _wgslsmith_f_op_vec2_f32(-global1.yx))).c, arg_1.c.a.wyw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), var_0.x, func_4(arg_0, arg_2).e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(~4903i, Struct_3(func_6(true, -select(vec2<i32>(u_input.b, u_input.e), vec2<i32>(u_input.b, -2147483647i), vec2<bool>(false, false)), func_5(vec4<i32>(u_input.a, u_input.e, 1i, u_input.c), ~vec3<i32>(10267i, -2147483647i, -31243i), true, func_1(Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(-1134f, global1.x, -1486f, 257f), vec2<bool>(true, true), true, false), vec4<bool>(true, false, true, true), 0u, vec2<f32>(-555f, global1.x)))), -305f, func_5(~firstLeadingBit(vec4<i32>(u_input.b, 1i, -3960i, 20736i)), min(vec3<i32>(-2147483647i, u_input.c, 24994i), vec3<i32>(-2147483647i, u_input.c, u_input.e)), _wgslsmith_clamp_u32(4294967295u, u_input.d, u_input.d) != (u_input.d >> (u_input.d % 32u)), func_1(Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(global1.x, -248f, global1.x, -368f), vec2<bool>(true, true), false, false), vec4<bool>(true, true, true, true), func_4(u_input.c, global1.x).d, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.x, 111f))))).c, vec3<i32>(22833i, i32(-1i) * -u_input.b, min(1i, 2147483647i << (u_input.d % 32u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global1.x)), global1.x)));
    global2 = array<vec3<f32>, 26>();
    global0 = -132f;
    global1 = _wgslsmith_f_op_vec3_f32(var_0.a.b.zww * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -208f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * -675f))), 809f));
    let var_1 = global4[_wgslsmith_index_u32(~((min(u_input.d, func_4(23193i, global1.x).d) << (~func_4(-18373i, global1.x).d % 32u)) & ~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.d, u_input.d)), countOneBits(vec2<u32>(u_input.d, u_input.d)))), 18u)];
    var var_2 = ~_wgslsmith_mult_i32(func_3(vec4<i32>(u_input.c, -47763i, 0i, 1i) & vec4<i32>(u_input.b, u_input.e, u_input.a, 7634i), func_7(u_input.b, Struct_3(vec3<bool>(var_0.e.c.x, true, false), -1189f, var_1.a, vec3<i32>(u_input.c, u_input.c, u_input.a)), _wgslsmith_f_op_f32(ceil(global1.x)))).x, _wgslsmith_div_i32(u_input.c, _wgslsmith_add_i32(-u_input.e, 15542i)));
    var var_3 = _wgslsmith_f_op_f32(461f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_4 = Struct_1(!var_1.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b.x, var_0.c, global1.x, 1043f))) - var_1.a.b), vec2<bool>(false, var_0.e.c.x), var_0.e.e, var_1.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_div_vec2_u32(~vec2<u32>(var_0.d, 63069u), vec2<u32>(var_0.d, var_0.d)) | ~(~vec2<u32>(13660u, u_input.d))), var_4.b.x);
}

