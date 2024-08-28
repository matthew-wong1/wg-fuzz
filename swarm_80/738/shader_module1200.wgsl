struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(vec3<u32>(0u, 1u, 23186u), Struct_1(3201i, 1u)), vec4<i32>(2147483647i, 15270i, 18648i, -10747i), vec3<bool>(true, false, false));

var<private> global1: vec4<f32> = vec4<f32>(1174f, -709f, -471f, 1128f);

var<private> global2: f32;

var<private> global3: bool = true;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    var var_0 = global0.b;
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, _wgslsmith_sub_i32(2147483647i, _wgslsmith_div_i32(-38085i, reverseBits(global0.b.x))), -2147483647i, 2147483647i), vec4<i32>(global0.b.x, u_input.b, ~(firstTrailingBit(0i) >> (171371u % 32u)), var_0.x));
    var_1 = -(global0.b >> (_wgslsmith_mult_vec4_u32(vec4<u32>(17290u, global0.a.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(39919u, u_input.a.x), vec2<u32>(0u, 41269u)), _wgslsmith_div_u32(global0.a.a.x, 28163u)), vec4<u32>(firstTrailingBit(u_input.c), _wgslsmith_add_u32(global0.a.a.x, 1u), global0.a.b.b, global0.a.b.b)) % vec4<u32>(32u)));
    global0 = Struct_4(Struct_3(~vec3<u32>(~u_input.a.x, _wgslsmith_mult_u32(global0.a.b.b, global0.a.a.x), 1u), Struct_1(1i, _wgslsmith_clamp_u32(global0.a.b.b, ~global0.a.b.b, 5878u & u_input.a.x))), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -13582i, -var_1.x, var_1.x), ~global0.b, vec4<i32>(-18366i, firstTrailingBit(var_0.x), -2147483647i, -20125i)), -global0.b), vec3<bool>(all(global0.c), !(!(global0.a.b.b >= 41763u)), false));
    global2 = global1.x;
    return ~firstTrailingBit(u_input.a.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> Struct_3 {
    var var_0 = Struct_4(Struct_3(min(~(vec3<u32>(u_input.a.x, u_input.a.x, u_input.c) | global0.a.a), vec3<u32>(u_input.c, 74554u, ~1u)), Struct_1(_wgslsmith_dot_vec3_i32(-global0.b.wxy, -global0.b.zzw), 56606u)), countOneBits(global0.b), select(global0.c, select(select(!global0.c, !vec3<bool>(arg_0.x, arg_0.x, true), -424f > arg_1), !vec3<bool>(true, global0.c.x, arg_0.x), !(!global0.c)), any(select(arg_0, select(arg_0, vec2<bool>(global0.c.x, global0.c.x), arg_0), !vec2<bool>(true, global0.c.x)))));
    var var_1 = Struct_2(global0.a.b, global0.a.b, Struct_1(-5871i, ~(~_wgslsmith_mult_u32(var_0.a.b.b, 0u))), -firstTrailingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(global0.b.ywy, vec3<i32>(-1666i, 2147483647i, u_input.b)), vec3<i32>(-21784i, -1i, 0i))), u_input.b);
    var var_2 = Struct_4(Struct_3(vec3<u32>(_wgslsmith_mod_u32(14441u, 55958u), func_3(), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.b, 1u, u_input.c), ~global0.a.a)), global0.a.b), vec4<i32>(var_0.a.b.a, _wgslsmith_dot_vec3_i32(-(var_0.b.ywy & global0.b.xyy), global0.b.xwy), abs(19476i), u_input.b), !select(select(global0.c, !global0.c, arg_0.x), select(!vec3<bool>(false, var_0.c.x, arg_0.x), !var_0.c, select(vec3<bool>(false, global0.c.x, arg_0.x), var_0.c, var_0.c.x)), var_0.c));
    var var_3 = arg_1;
    var_1 = Struct_2(global0.a.b, var_2.a.b, Struct_1(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b.x, global0.a.b.a, 2147483647i, -3988i), global0.b)), _wgslsmith_sub_u32(select(0u, 1u, arg_0.x), _wgslsmith_dot_vec3_u32(var_0.a.a, vec3<u32>(var_2.a.a.x, var_1.c.b, 0u))) | global0.a.b.b), max(-(~vec3<i32>(var_2.a.b.a, var_2.a.b.a, -2147483647i)) ^ vec3<i32>(_wgslsmith_div_i32(-2147483647i, var_2.b.x), 17477i, _wgslsmith_sub_i32(1i, var_2.b.x)), _wgslsmith_clamp_vec3_i32(~global0.b.yxx, _wgslsmith_mod_vec3_i32(~vec3<i32>(1i, -36305i, var_2.b.x), vec3<i32>(21550i, u_input.b, 26428i)), abs(~vec3<i32>(0i, 1i, var_0.a.b.a)))), var_1.a.a);
    return var_2.a;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1139f, _wgslsmith_f_op_f32(trunc(global1.x)))) * global1.ww));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(798f, _wgslsmith_f_op_f32(f32(-1f) * -2188f), _wgslsmith_f_op_f32(step(102f, -981f)), var_0.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-669f, var_0.x, 1226f, arg_1))))));
    var var_1 = func_2(!vec2<bool>(all(!vec3<bool>(global0.c.x, global0.c.x, global0.c.x)), global0.c.x), 1209f);
    global0 = Struct_4(global0.a, ~(-global0.b), select(select(vec3<bool>(true, true, !global0.c.x), !vec3<bool>(false, true, global0.c.x), !select(vec3<bool>(global0.c.x, global0.c.x, false), global0.c, global0.c.x)), select(vec3<bool>(false, all(vec4<bool>(global0.c.x, true, global0.c.x, true)), global0.c.x), !select(vec3<bool>(false, false, true), vec3<bool>(false, global0.c.x, true), vec3<bool>(global0.c.x, false, true)), global0.c.x), select(!global0.c, global0.c, !global0.c)));
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + -990f), _wgslsmith_f_op_f32(570f - 1008f)) - _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(-arg_1))));
    return Struct_4(func_2(select(global0.c.xy, !global0.c.yy, false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), ~vec4<i32>(u_input.b << (~u_input.c % 32u), 32183i, -1i, -11639i), select(global0.c, select(vec3<bool>(true, all(vec3<bool>(global0.c.x, global0.c.x, global0.c.x)), global0.c.x), global0.c, select(global0.c, vec3<bool>(true, false, false), all(vec3<bool>(true, false, global0.c.x)))), max(1u, 4294967295u) > ~(~global0.a.b.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1914f - 1436f) - _wgslsmith_f_op_f32(select(global1.x, global1.x, false))))), ~global0.a.b.a);
    var var_0 = Struct_1(~1i, 81449u);
    var var_1 = Struct_4(Struct_3(firstLeadingBit(vec3<u32>(var_0.b | 4294967295u, 68886u, 28709u)), func_1(func_2(func_1(global0.a.b, -1881f, 2147483647i).c.zy, _wgslsmith_f_op_f32(global1.x * global1.x)).b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x))), 28519i).a.b), global0.b, select(vec3<bool>(global0.c.x, global0.c.x, true), global0.c, !(!(global0.a.b.b < u_input.c))));
    global0 = func_1(global0.a.b, _wgslsmith_f_op_f32(max(-842f, 186f)), u_input.b);
    let var_2 = vec4<i32>(~global0.a.b.a, 23681i, var_1.a.b.a, -1555i);
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, global1.x), _wgslsmith_f_op_vec2_f32(global1.ww - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, global1.x)))))) - global1.yx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(680f, global1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1309f, global1.x)), true))) + global1.xx));
    global3 = (_wgslsmith_div_u32(~var_1.a.a.x, 4294967295u) >> (var_0.b % 32u)) <= ~24306u;
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_3.x))))), var_1.a.b.b, global0.b.x);
}

