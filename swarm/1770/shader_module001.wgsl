struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec2<u32>) -> u32 {
    global1 = vec2<bool>(global1.x, true);
    global0 = 63869u;
    var var_0 = select(any(arg_0.d.xyy), all(select(!(!vec2<bool>(global1.x, true)), vec2<bool>(all(vec2<bool>(arg_0.d.x, true)), true), !(!arg_0.d.wz))), any(vec2<bool>(select(true, global1.x, false), all(!arg_0.d.yx))));
    let var_1 = Struct_1(true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) - _wgslsmith_f_op_f32(select(-558f, arg_0.e.x, select(false, false, true)))))), ~_wgslsmith_div_vec3_u32(vec3<u32>(34205u, arg_2.x, u_input.b.x) ^ _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 82204u, 13678u), vec3<u32>(arg_2.x, u_input.b.x, 53125u)), min(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 34825u, 13630u), vec3<u32>(u_input.b.x, 72427u, 9027u)), vec3<u32>(arg_2.x, 37035u, 0u))));
    var var_2 = abs(u_input.a.xz);
    return 17652u | _wgslsmith_dot_vec2_u32(~vec2<u32>(reverseBits(u_input.b.x), 4294967295u), vec2<u32>(max(arg_2.x, 0u), firstLeadingBit(0u)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.c.x, 4294967295u), ~vec2<u32>(0u, 50348u)) % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(417f, -867f), vec2<f32>(692f, -1000f)), vec2<f32>(2105f, arg_0.b), select(arg_1.yz, vec2<bool>(arg_0.a, false), vec2<bool>(false, arg_0.a)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, -1153f) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, 218f), vec2<f32>(arg_0.b, -2814f))), !(!arg_1.zz))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, -975f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2443f, arg_0.b))))), 99641u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, -2061f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, arg_0.b) + vec2<f32>(844f, 522f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + _wgslsmith_f_op_f32(1604f + arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, 273f) - -609f))), ~(~(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, arg_0.c.x))), 378f);
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(var_0.c * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c) * vec2<f32>(arg_0.b, 478f)))), var_0.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c - var_0.a)))), var_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -227f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))));
    global0 = ~arg_0.c.x;
    global0 = ~(min(_wgslsmith_add_u32(1u, abs(arg_0.c.x)), ~(0u << (arg_0.c.x % 32u))) >> (func_3(Struct_3(vec4<i32>(u_input.a.x, -1i, 1i, u_input.a.x), ~u_input.a, -u_input.a.x, vec4<bool>(true, arg_1.x, arg_1.x, arg_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, -531f, var_0.c.x))), u_input.a.x, vec2<u32>(max(arg_0.c.x, 47936u), 13917u)) % 32u));
    let var_2 = arg_0.a | !arg_1.x;
    return Struct_3(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(-14854i, 4526i, -2147483647i, -2147483647i), vec4<i32>(1i, 25718i, -2138i, u_input.a.x)), max(_wgslsmith_mult_i32(-2147483647i, 1i), -u_input.a.x), u_input.a.x), ~vec4<i32>(-u_input.a.x, u_input.a.x, u_input.a.x, 74813i)), u_input.a, 10988i ^ -(~(-2147483647i) >> (var_0.b % 32u)), !select(!(!vec4<bool>(false, true, false, arg_1.x)), !vec4<bool>(arg_1.x, true, false, arg_1.x), select(vec4<bool>(false, arg_0.a, arg_1.x, false), vec4<bool>(false, false, global1.x, arg_0.a), select(vec4<bool>(true, false, true, false), vec4<bool>(var_2, true, var_2, false), vec4<bool>(true, false, arg_1.x, arg_0.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(751f, 521f, var_0.c.x), vec3<f32>(arg_0.b, -141f, 561f))) * vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_f32(var_0.a.x * -853f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_0.b, 681f), var_0.c.x, arg_0.b))));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = func_2(Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(788f, -336f))), ~vec3<u32>(select(1u, 30137u, false), _wgslsmith_clamp_u32(u_input.b.x, 0u, 0u), 4294967295u)), vec3<bool>(global1.x, true, false));
    let var_1 = any(var_0.d.xw);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e.x, _wgslsmith_f_op_f32(f32(-1f) * -292f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.e.yy, vec2<f32>(var_0.e.x, arg_0.e.x)) + _wgslsmith_f_op_vec2_f32(-arg_0.e.yz)))), 17231u, _wgslsmith_f_op_vec2_f32(-arg_0.e.zy), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(~u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 4294967295u), ~u_input.b.x, select(u_input.b.x, u_input.b.x, var_1))), ~(firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1162u)) & ~vec4<u32>(4294967295u, 25512u, 0u, 1u))), var_0.e.x);
    let var_3 = global1.x;
    let var_4 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(select(var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.e.x)) - var_0.e.x), select(false, true, true) && true)), _wgslsmith_f_op_f32(func_2(Struct_1(true, -913f, vec3<u32>(var_2.b, 19340u, var_2.d.x)), !arg_0.d.wxy).e.x + arg_0.e.x)), firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_2.d.x, 11979u, u_input.b.x, var_2.d.x), vec4<u32>(var_2.b, u_input.b.x, var_2.b, 102692u) << (vec4<u32>(u_input.b.x, var_2.b, 0u, u_input.b.x) % vec4<u32>(32u)), vec4<u32>(u_input.b.x, 4294967295u, var_2.b, 1u)), reverseBits(vec4<u32>(1u, var_2.b, 6174u, u_input.b.x)))), _wgslsmith_f_op_vec2_f32(var_0.e.zz - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1229f, 1235f))), arg_0.e.xx)), vec4<u32>(~reverseBits(u_input.b.x) | ~1u, _wgslsmith_dot_vec2_u32(u_input.b, reverseBits(abs(u_input.b))), ~(~var_2.d.x) >> (var_2.b % 32u), ~(~var_2.d.x)), var_2.a.x);
    return Struct_1(all(!(!var_0.d.zx)), _wgslsmith_f_op_f32(f32(-1f) * -1301f), ~(var_4.d.ywz >> ((~vec3<u32>(u_input.b.x, var_4.d.x, u_input.b.x) >> (var_2.d.zzz % vec3<u32>(32u))) % vec3<u32>(32u))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> vec3<i32> {
    global1 = !select(!vec2<bool>(global1.x, any(vec2<bool>(arg_0.a, global1.x))), func_2(arg_0, !vec3<bool>(global1.x, arg_0.a, arg_0.a)).d.wy, !func_2(func_4(Struct_3(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, 51770i), vec3<i32>(u_input.a.x, arg_1.x, arg_1.x), arg_1.x, vec4<bool>(false, false, arg_0.a, false), vec3<f32>(arg_0.b, arg_0.b, arg_0.b))), select(vec3<bool>(global1.x, false, true), vec3<bool>(false, false, arg_0.a), vec3<bool>(global1.x, global1.x, true))).d.zx);
    var var_0 = arg_0;
    var var_1 = 70003u;
    global0 = _wgslsmith_clamp_u32(~(~(~21386u) ^ min(4294967295u & var_0.c.x, u_input.b.x)), arg_0.c.x, _wgslsmith_dot_vec3_u32(var_0.c, var_0.c));
    global0 = firstTrailingBit(var_0.c.x);
    return _wgslsmith_mult_vec3_i32(u_input.a, ~(~(u_input.a << (countOneBits(vec3<u32>(38195u, u_input.b.x, 24448u)) % vec3<u32>(32u)))));
}

fn func_1(arg_0: u32) -> f32 {
    global0 = ~0u;
    let var_0 = u_input.a.x;
    let var_1 = Struct_3(_wgslsmith_clamp_vec4_i32(~min(vec4<i32>(u_input.a.x, u_input.a.x, 46600i, 58615i), vec4<i32>(0i, u_input.a.x, 0i, var_0)) << ((abs(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)) << ((vec4<u32>(23497u, arg_0, 49025u, 0u) | vec4<u32>(38025u, 1u, 63619u, 10823u)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(~(var_0 ^ var_0), ~(-var_0), u_input.a.x, ~firstLeadingBit(-17316i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, 5244i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 8013i, 9618i)) >> (~(~vec4<u32>(arg_0, 14860u, 8448u, arg_0)) % vec4<u32>(32u))), _wgslsmith_clamp_vec3_i32(-(~firstTrailingBit(vec3<i32>(var_0, var_0, -1i))), func_5(func_4(func_2(Struct_1(false, 1000f, vec3<u32>(u_input.b.x, arg_0, 30721u)), vec3<bool>(global1.x, global1.x, global1.x))), firstTrailingBit(vec2<i32>(var_0, var_0))), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0, var_0, u_input.a.x), firstTrailingBit(u_input.a), u_input.a) >> (vec3<u32>(~u_input.b.x, u_input.b.x ^ arg_0, 1u) % vec3<u32>(32u))), _wgslsmith_dot_vec4_i32(-vec4<i32>(~(-23008i), 2147483647i, -u_input.a.x, u_input.a.x), func_2(func_4(Struct_3(vec4<i32>(u_input.a.x, u_input.a.x, var_0, 32149i), vec3<i32>(6963i, 20873i, var_0), -21420i, vec4<bool>(false, global1.x, false, global1.x), vec3<f32>(-1500f, 1709f, -113f))), !vec3<bool>(false, global1.x, false)).a), vec4<bool>(func_2(Struct_1(true, _wgslsmith_f_op_f32(f32(-1f) * -905f), vec3<u32>(u_input.b.x, 4294967295u, 9628u)), !(!vec3<bool>(true, true, global1.x))).d.x, u_input.b.x == u_input.b.x, any(select(vec2<bool>(false, false), vec2<bool>(true, true), global1.x)), global1.x && any(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, true, global1.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-func_4(Struct_3(vec4<i32>(var_0, var_0, 2147483647i, -46734i), u_input.a, var_0, vec4<bool>(global1.x, global1.x, true, global1.x), vec3<f32>(978f, -1353f, 243f))).b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(927f)))), -1820f)));
    global0 = _wgslsmith_clamp_u32(u_input.b.x, 0u, ~_wgslsmith_sub_u32(~(~8728u), _wgslsmith_dot_vec2_u32(~vec2<u32>(48033u, u_input.b.x), ~vec2<u32>(4294967295u, 1u))));
    let var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(524f))))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(~abs(u_input.b.x), ~u_input.b.x), _wgslsmith_div_u32(19911u, 46513u) << (((u_input.b.x | 4294967295u) & 4294967295u) % 32u)), var_1.e.yx, vec4<u32>(_wgslsmith_sub_u32(~39985u, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b.x, 1u), arg_0 ^ 1u)), 1u, ~min(u_input.b.x, _wgslsmith_sub_u32(arg_0, 1u)), (arg_0 << (~72085u % 32u)) >> (u_input.b.x % 32u)), _wgslsmith_f_op_f32(-func_2(Struct_1(select(global1.x, true, var_1.d.x), _wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_sub_vec3_u32(vec3<u32>(97307u, arg_0, arg_0), vec3<u32>(u_input.b.x, arg_0, u_input.b.x))), vec3<bool>(all(var_1.d.zz), !var_1.d.x, var_1.d.x)).e.x));
    return _wgslsmith_f_op_f32(select(var_2.a.x, var_2.e, max(firstTrailingBit(func_3(var_1, 38035i, u_input.b)), func_4(func_2(Struct_1(true, var_1.e.x, var_2.d.zxx), vec3<bool>(true, false, var_1.d.x))).c.x) < arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(false, all(!(!vec2<bool>(true, global1.x))), true, ~u_input.a.x != _wgslsmith_add_i32(-u_input.a.x, max(-9331i, 1i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, 1u)) | _wgslsmith_div_u32(54449u, u_input.b.x)))));
    let var_2 = 1u;
    var var_3 = abs((_wgslsmith_mod_u32(54383u, u_input.b.x) | ~1u) ^ 4294967295u);
    let var_4 = Struct_2(vec2<f32>(func_2(func_4(Struct_3(vec4<i32>(23656i, u_input.a.x, 2147483647i, 48417i), u_input.a, 2147483647i, vec4<bool>(var_0.x, global1.x, false, false), vec3<f32>(var_1, var_1, -1327f))), !var_0.wwz).e.x, -397f), u_input.b.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -2313f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 529f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)), vec2<bool>(var_0.x, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1, var_1))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1535f, var_1))))))), _wgslsmith_sub_vec4_u32(reverseBits(~(~vec4<u32>(28408u, var_2, 12903u, 0u))), _wgslsmith_mult_vec4_u32(max(max(vec4<u32>(1u, var_2, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, 0u, 106154u, 103843u)), firstTrailingBit(vec4<u32>(1u, 42612u, u_input.b.x, 45914u))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 9185u, var_2, var_2), vec4<u32>(var_2, u_input.b.x, 1u, 31424u)))), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_4.c.x, var_4.e, var_4.a.x))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-669f, 473f, var_4.a.x, 110f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -822f, -335f)))), select(-_wgslsmith_clamp_i32(-u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), 1i), u_input.a.x, ~8431u <= ~_wgslsmith_sub_u32(110010u, var_4.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 18030u), vec2<u32>(~func_3(Struct_3(vec4<i32>(20785i, u_input.a.x, -1i, u_input.a.x), vec3<i32>(-1i, u_input.a.x, 0i), 72805i, var_0, vec3<f32>(var_4.a.x, -699f, -1485f)), u_input.a.x, u_input.b), 0u)), vec3<u32>(_wgslsmith_div_u32(27612u, ~u_input.b.x), 4294967295u, 48925u));
}

