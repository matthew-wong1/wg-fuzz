struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: u32,
    d: Struct_2,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, 1i, -31150i, -2535i);

var<private> global1: Struct_2 = Struct_2(vec3<i32>(28456i, -341i, 0i), vec2<f32>(-1000f, 1095f));

var<private> global2: Struct_2;

var<private> global3: vec3<f32> = vec3<f32>(1215f, 651f, -765f);

var<private> global4: Struct_4;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(abs(~10538u << (firstLeadingBit(arg_1.a.x) % 32u)), u_input.b.x), vec2<u32>(arg_1.a.x, _wgslsmith_mult_u32(0u, 0u)));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b.x, 116f, -217f, arg_3.a), vec4<f32>(261f, 688f, -978f, global3.x), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b.x, 1750f, -328f, 997f) * vec4<f32>(global4.d.a, var_0.b.x, global4.a, global1.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(201f, 312f, 221f, global2.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1009f, -1419f, -1075f, 541f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2044f, var_0.b.x, 1090f, arg_3.a) + vec4<f32>(677f, -274f, 153f, -379f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1007f, 245f, 363f, global4.b.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.x, var_0.b.x, global1.b.x, 1638f))))));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(ceil(arg_0.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.b)), arg_2.x, arg_3);
    let var_4 = arg_0;
    return global2.b;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~(i32(-1i) * -7532i), -2147483647i, firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_add_i32(global0.x, u_input.c.x), global2.a.x)), 17177i), _wgslsmith_add_vec4_i32(-(vec4<i32>(-6140i, global2.a.x, -45609i, -13789i) & -vec4<i32>(-1i, global2.a.x, -2147483647i, global0.x)), -(vec4<i32>(-2147483647i, 51761i, u_input.c.x, global0.x) & -vec4<i32>(u_input.c.x, u_input.d, -28035i, global1.a.x))), ~vec4<i32>(u_input.c.x, ~global0.x << (arg_1.x % 32u), -_wgslsmith_mod_i32(-60245i, 911i), global2.a.x));
    global4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(858f, arg_0.a), _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_vec2_f32(func_3(Struct_2(global0.xxw, global3.xx), Struct_1(arg_1.yyw, vec3<u32>(u_input.e, u_input.b.x, 22034u), vec3<f32>(global3.x, -156f, global2.b.x), true, var_0.x), vec4<bool>(global4.c, false, false, global4.c), Struct_3(290f)))))), true, arg_0);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_0.a)), _wgslsmith_f_op_f32(floor(965f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec3<i32>(-6431i, global0.x, u_input.a), vec2<f32>(-1549f, -1000f)), Struct_1(arg_1.zwy ^ vec3<u32>(u_input.e, arg_1.x, arg_1.x), max(vec3<u32>(0u, 1u, arg_1.x), vec3<u32>(arg_1.x, arg_1.x, 7922u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a, -688f, global3.x), vec3<f32>(1000f, -316f, global2.b.x), false)), all(vec3<bool>(global4.c, true, true)), -global2.a.x), vec4<bool>(!global4.c, true, true, global4.c & true), arg_0)).x * 480f));
    global0 = vec4<i32>(min(_wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(global0.x, global2.a.x, 2147483647i, 2147483647i)), vec4<i32>(_wgslsmith_add_i32(u_input.c.x, -37084i), _wgslsmith_sub_i32(u_input.a, u_input.a), var_0.x, -var_0.x)), _wgslsmith_sub_i32(-28126i, select(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -8651i, 19672i), vec3<i32>(-22761i, 36226i, global0.x)), any(vec4<bool>(global4.c, true, global4.c, true))))), 2147483647i, global0.x, ~2147483647i);
    var_1 = global4.d.a;
    return Struct_2(_wgslsmith_div_vec3_i32(var_0.ywy, global0.zzw), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.xx) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 160f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-260f, 500f)))), global4.c))));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: vec4<i32>) -> f32 {
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-520f, global4.b.x, 987f) + vec3<f32>(global3.x, arg_2.b.x, 2840f)), _wgslsmith_div_vec3_f32(vec3<f32>(global1.b.x, -374f, 1354f), vec3<f32>(1002f, global1.b.x, arg_2.b.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, arg_2.b.x, global2.b.x)))))))));
    var var_0 = !global4.c && !(select(arg_2.a.x & global2.a.x, global0.x, !arg_0) < u_input.c.x);
    let var_1 = Struct_5(select(u_input.b, _wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.e, 4294967295u, 4294967295u), u_input.b, vec3<bool>(global4.c, arg_0, true)), u_input.b << (vec3<u32>(u_input.b.x, arg_1, 0u) % vec3<u32>(32u))) & select(select(u_input.b, vec3<u32>(0u, 1u, arg_1), false), _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(77595u, 1u, u_input.b.x)), vec3<bool>(global4.c, false, false)), select(vec3<bool>(false, any(vec2<bool>(true, global4.c)), arg_0 & false), vec3<bool>(any(vec3<bool>(false, arg_0, arg_0)), !arg_0, global4.c), !select(vec3<bool>(arg_0, global4.c, false), vec3<bool>(global4.c, false, false), vec3<bool>(global4.c, false, false)))), global4.c, ~arg_1, arg_2, Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x * global2.b.x)), vec2<f32>(_wgslsmith_f_op_f32(-arg_2.b.x), 2821f), false, Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b.x * -383f), _wgslsmith_div_f32(-1000f, 1854f)))));
    global2 = func_2(var_1.e.d, ~vec4<u32>(~51524u, _wgslsmith_dot_vec3_u32(var_1.a, var_1.a) & u_input.e, arg_1, ~_wgslsmith_div_u32(arg_1, 1u)));
    var var_2 = global1.b.x;
    return global1.b.x;
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.b.x, global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.b.x))) - 420f), 899f), vec4<f32>(_wgslsmith_f_op_f32(max(1960f, 715f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1990f, _wgslsmith_f_op_f32(step(global4.b.x, global2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.x - global4.d.a)))), _wgslsmith_f_op_f32(func_4(any(select(vec2<bool>(global4.c, global4.c), vec2<bool>(global4.c, global4.c), vec2<bool>(false, true))), u_input.e, func_2(global4.d, vec4<u32>(9971u, 0u, u_input.e, 1u)), vec4<i32>(_wgslsmith_mod_i32(-1i, -21700i), -8745i, 1i, firstLeadingBit(global1.a.x)))))));
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(71402u, ~(~2888u), u_input.e), vec3<u32>(u_input.b.x, u_input.b.x, _wgslsmith_div_u32(abs(46859u), u_input.e & u_input.e))), abs(u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.wxy * vec3<f32>(_wgslsmith_f_op_f32(1092f + global2.b.x), 603f, -634f))), false, select(select(-25195i, _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(1i, global2.a.x, -2147483647i, 0i)), _wgslsmith_f_op_f32(global2.b.x - global4.a) <= global2.b.x), -1i, global4.c));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - 862f) - _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.wy)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1268f)))))), global4.c, global4.d);
    global0 = min(_wgslsmith_div_vec4_i32(abs(select(vec4<i32>(u_input.c.x, -2147483647i, var_1.e, global1.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_1.e, var_1.e, global1.a.x), vec4<i32>(0i, -1i, 1i, 2147483647i)), vec4<bool>(var_1.d, var_1.d, false, true))), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-410i, 0i, -17274i, -2147483647i), arg_0), _wgslsmith_sub_vec4_i32(arg_0, vec4<i32>(0i, 2147483647i, -1i, global0.x))), abs(vec4<i32>(var_1.e, global2.a.x, global1.a.x, 1447i)) | arg_0)), ~countOneBits(min(abs(vec4<i32>(global2.a.x, global1.a.x, global1.a.x, -22018i)), firstTrailingBit(vec4<i32>(arg_0.x, 1i, -18825i, 0i)))));
    var var_3 = _wgslsmith_sub_i32(-32921i, 1i);
    return Struct_1(select(u_input.b, vec3<u32>(abs(var_1.a.x), ~(~var_1.b.x), countOneBits(_wgslsmith_dot_vec2_u32(var_1.b.xy, u_input.b.zz))), !vec3<bool>(var_2.c, true, true)), firstLeadingBit(~_wgslsmith_div_vec3_u32(vec3<u32>(var_1.b.x, var_1.a.x, 11567u), vec3<u32>(4294967295u, var_1.b.x, var_1.a.x))) & abs(~u_input.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(f32(-1f) * -1290f)), 1672f, _wgslsmith_f_op_f32(-var_1.c.x))), !global4.c | any(select(vec2<bool>(global4.c, var_1.d), vec2<bool>(true, true), !vec2<bool>(var_1.d, true))), ~(-25303i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mod_vec4_i32(-abs(select(vec4<i32>(global0.x, global2.a.x, -11732i, 2147483647i), vec4<i32>(-16467i, 0i, -46078i, 2147483647i), true)), ~(vec4<i32>(2753i, 1i, -1i, u_input.a) << (firstLeadingBit(vec4<u32>(4287u, u_input.e, u_input.e, 34855u)) % vec4<u32>(32u)))));
    global2 = Struct_2(global1.a ^ select(countOneBits(vec3<i32>(-1i, -2147483647i, global1.a.x) << (var_0.a % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(global0.yzx, vec3<i32>(-31818i, 2147483647i, u_input.a)), global2.a), vec3<bool>(true, var_0.d, true)), global4.b);
    global4 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(684f, global1.b.x)) + -2900f)), 1f)), _wgslsmith_div_vec2_f32(vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(min(802f, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-456f)), _wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec3<i32>(global1.a.x, 2073i, -24452i), global1.b), Struct_1(var_0.b, var_0.a, var_0.c, false, global1.a.x), vec4<bool>(true, global4.c, var_0.d, true), Struct_3(1415f))).x))), true, global4.d);
    global4 = Struct_4(global2.b.x, func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(firstTrailingBit(var_0.e), global1.a.x, i32(-1i) * -1i, 1i), -select(vec4<i32>(71187i, var_0.e, 36569i, var_0.e), vec4<i32>(u_input.c.x, global0.x, -30511i, global0.x), global4.c))).c.xy, true, global4.d);
    global2 = Struct_2(-(~firstLeadingBit(vec3<i32>(38527i, global0.x, global1.a.x))), global1.b);
    var var_1 = global2.a.yy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.b.x - -149f), _wgslsmith_f_op_f32(trunc(global1.b.x))), _wgslsmith_f_op_vec2_f32(-global2.b)))), vec3<f32>(global4.a, _wgslsmith_f_op_f32(1477f + _wgslsmith_f_op_f32(1177f - global1.b.x)), _wgslsmith_div_f32(252f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1186f - 109f) * var_0.c.x))), vec2<u32>(~5316u, ~71015u << (abs(u_input.b.x) % 32u)), u_input.e);
}

