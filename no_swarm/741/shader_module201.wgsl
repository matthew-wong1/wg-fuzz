struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>) -> vec2<i32> {
    let var_0 = Struct_3(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.d.x, 368u, u_input.b), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(1u, global0.c, 0u)), min(vec3<u32>(4294967295u, 4294967295u, 19748u), vec3<u32>(0u, u_input.c, 24148u)))) ^ (select(~vec3<u32>(54067u, global0.c, u_input.b), vec3<u32>(15956u, global0.c, 1u) << (vec3<u32>(u_input.d.x, 4294967295u, 25279u) % vec3<u32>(32u)), global0.d) << (vec3<u32>(countOneBits(global0.c), firstLeadingBit(u_input.b), 133413u) % vec3<u32>(32u))), ~(-abs(max(vec4<i32>(6099i, global0.b.x, global0.b.x, u_input.a.x), vec4<i32>(u_input.a.x, -1i, 17172i, 2147483647i)))), Struct_2(Struct_1(true, ~global0.a.b, _wgslsmith_f_op_f32(-global0.a.c), select(arg_0.x, true, arg_0.x)), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(global0.b, vec2<i32>(25474i, global0.a.b.x)) & vec2<i32>(global0.b.x, -1i), ~(~u_input.a)), ~80545u, global0.d), vec2<bool>(true, false));
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-176f, 1534f) - _wgslsmith_f_op_f32(1200f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1381f, var_0.c.a.c))) * global0.a.c)));
    var_2 = 1205f;
    let var_3 = global0.a;
    return var_0.b.xw;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec2<i32>(~u_input.a.x, u_input.a.x);
    global0 = Struct_2(Struct_1(all(vec4<bool>(true && arg_2.d, arg_2.a, arg_2.a, arg_2.d)), arg_2.b, _wgslsmith_f_op_f32(-1577f + arg_1.x), !global0.a.d), -func_3(vec2<bool>(arg_2.a, true)), 42718u, global0.d);
    var var_1 = Struct_1(any(global0.d), vec2<i32>(_wgslsmith_dot_vec2_i32(global0.a.b, u_input.a), -1i), -948f, global0.a.c <= 893f);
    var_0 = vec2<i32>(~_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(-15664i, 30737i), _wgslsmith_sub_i32(1869i, -17349i)) | var_1.b.x, 2147483647i);
    var var_2 = Struct_3(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.c, 0u, u_input.c), reverseBits(vec3<u32>(global0.c, 1u, u_input.b)), ~vec3<u32>(33557u, 32575u, global0.c)), vec3<u32>(countOneBits(12583u), u_input.b, 14830u << (0u % 32u))) >> (~(vec3<u32>(19144u, 4294967295u, global0.c) >> (~vec3<u32>(global0.c, global0.c, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u)), ~abs(vec4<i32>(-11720i, -58905i, -9177i, arg_2.b.x) | vec4<i32>(-3267i, -70098i, 49474i, -2147483647i)), Struct_2(Struct_1(any(!vec3<bool>(var_1.a, false, false)), abs(vec2<i32>(-1i, arg_2.b.x)), var_1.c, true), -_wgslsmith_div_vec2_i32(global0.b, vec2<i32>(-50127i, var_0.x)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b, global0.c, u_input.d.x, 0u) << (vec4<u32>(u_input.d.x, global0.c, 15371u, 48495u) % vec4<u32>(32u))), countOneBits(abs(vec4<u32>(29091u, global0.c, global0.c, 4294967295u)))), global0.d), select(select(!select(global0.d.zx, vec2<bool>(var_1.a, true), global0.d.yz), select(vec2<bool>(false, false), global0.d.xx, true || var_1.a), select(vec2<bool>(false, true), !vec2<bool>(arg_2.d, var_1.d), vec2<bool>(var_1.d, true))), global0.d.yz, arg_2.a));
    return Struct_2(arg_2, -(vec2<i32>(-1i, 0i | global0.a.b.x) & vec2<i32>(global0.a.b.x & var_1.b.x, _wgslsmith_div_i32(var_1.b.x, 74575i))), 26564u & max(4294967295u, _wgslsmith_clamp_u32(max(0u, 1u), ~global0.c, _wgslsmith_mult_u32(var_2.a.x, global0.c))), !select(vec3<bool>(any(vec4<bool>(false, var_2.c.d.x, arg_2.d, var_2.c.a.d)), global0.d.x, true), var_2.c.d, true));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = ~(~max(vec4<u32>(0u, ~4556u, ~global0.c, global0.c), abs(select(vec4<u32>(83431u, 12764u, arg_2.x, 6953u), vec4<u32>(arg_1.c, arg_3.c, u_input.b, 4000u), false))));
    var var_1 = arg_1.a.c;
    let var_2 = true;
    var var_3 = global0.a;
    var_3 = Struct_1(arg_1.a.c != _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.a.c)) * 1f))), ~vec2<i32>(arg_1.a.b.x, arg_3.a.b.x), _wgslsmith_f_op_f32(step(arg_1.a.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.c)), _wgslsmith_f_op_f32(ceil(-170f)))))), true);
    return arg_3.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = !vec4<bool>(global0.d.x, !global0.a.d && global0.a.a, global0.a.d, arg_1.x);
    var_0 = select(select(vec4<bool>(false, false, arg_0.a.a, arg_0.d.x), arg_1, true), arg_1, all(vec4<bool>(true, all(global0.d.zy), func_2(vec4<f32>(-629f, arg_2.x, arg_0.a.c, -117f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.x, global0.a.c, -565f, -817f))), func_2(vec4<f32>(-704f, global0.a.c, 722f, global0.a.c), vec4<f32>(-167f, -418f, -1000f, -1000f), global0.a).a).a.a, any(arg_1.yw))));
    var var_1 = 654f;
    let var_2 = vec4<bool>(select(all(arg_1.xw), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.c), arg_2.x)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1282f + 1458f) - global0.a.c), _wgslsmith_div_f32(arg_0.a.c, -1369f) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-781f, arg_2.x))), all(var_0.yyx), any(var_0.xw) | true, all(select(select(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), var_0.wy), func_2(vec4<f32>(570f, 1190f, arg_0.a.c, -370f), vec4<f32>(1168f, -271f, -1001f, -278f), global0.a).d.xy, select(global0.d.yy, arg_1.zy, vec2<bool>(false, arg_0.d.x))), vec2<bool>(all(global0.d.xy), var_0.x), !(!var_0.x))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), -128f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_2.x)), 438f)));
    return Struct_2(Struct_1(true, u_input.a, -1000f, true), vec2<i32>(global0.b.x, global0.b.x), ~global0.c, !var_2.zzx);
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> vec4<f32> {
    global0 = func_5(Struct_2(func_4(vec3<u32>(select(4294967295u, 41481u, global0.a.d), ~106387u, u_input.d.x | u_input.c), Struct_2(Struct_1(true, vec2<i32>(u_input.a.x, arg_2.x), -120f, false), vec2<i32>(-2147483647i, -2147483647i), max(global0.c, 0u), vec3<bool>(global0.d.x, global0.a.a, global0.a.d)), _wgslsmith_sub_vec2_u32(u_input.d, vec2<u32>(u_input.c, 14845u)), func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-676f, -1799f, 279f, 256f), vec4<f32>(global0.a.c, arg_0, global0.a.c, -1405f)), vec4<f32>(-1550f, -1144f, -1240f, 2158f), Struct_1(false, vec2<i32>(u_input.a.x, u_input.a.x), 1065f, true))), abs(abs(vec2<i32>(global0.a.b.x, u_input.a.x))) << (reverseBits(~u_input.d) % vec2<u32>(32u)), ~(~abs(28056u)), global0.d), !vec4<bool>(global0.d.x, global0.d.x, true, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-116f, arg_0, 845f, global0.a.c) * vec4<f32>(-860f, arg_0, global0.a.c, global0.a.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 435f, -131f, arg_0)), global0.a).d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.c, _wgslsmith_f_op_f32(-global0.a.c), arg_0), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, arg_1.x, 364f), arg_1, global0.d.x)), true))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.yz * vec2<f32>(arg_1.x, arg_1.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, global0.a.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a.c, arg_1.x), arg_1.zy, global0.d.xx))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1920f, arg_1.x), arg_1.zy, vec2<bool>(global0.a.a, false))))))));
    global0 = Struct_2(Struct_1(global0.d.x, global0.b, 1287f, ~(-global0.b.x) != ~_wgslsmith_add_i32(-16789i, u_input.a.x)), global0.b, ~1u, vec3<bool>(~74038u == _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 0u), vec3<u32>(27510u, global0.c, 54041u)), false, !any(select(vec4<bool>(false, global0.a.d, true, false), vec4<bool>(true, true, global0.a.a, global0.a.a), vec4<bool>(global0.a.d, global0.d.x, global0.a.d, global0.d.x)))));
    let var_1 = var_0.x >= _wgslsmith_f_op_f32(floor(-1001f));
    let var_2 = Struct_4(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.x, global0.a.c, arg_0, arg_0))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, arg_0, 340f, arg_1.x)))))), global0.a), func_2(vec4<f32>(arg_0, _wgslsmith_f_op_f32(trunc(-487f)), -1148f, _wgslsmith_f_op_f32(-arg_0)), vec4<f32>(-2313f, -1110f, 1180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), global0.a), Struct_2(Struct_1(!var_1 & select(false, var_1, false), -(u_input.a << (u_input.d % vec2<u32>(32u))), _wgslsmith_f_op_f32(sign(var_0.x)), global0.d.x), firstTrailingBit(-vec2<i32>(-2147483647i, u_input.a.x) << (vec2<u32>(u_input.c, 0u) % vec2<u32>(32u))), _wgslsmith_mult_u32(~30095u, ~(~global0.c)), !select(vec3<bool>(false, var_1, global0.d.x), !global0.d, vec3<bool>(global0.d.x, var_1, var_1))), func_5(Struct_2(Struct_1(false, global0.a.b, 807f, false), _wgslsmith_div_vec2_i32(vec2<i32>(arg_2.x, u_input.a.x), vec2<i32>(u_input.a.x, global0.b.x)), u_input.d.x, select(!global0.d, vec3<bool>(true, var_1, false), var_1)), vec4<bool>(!all(global0.d), !select(true, global0.d.x, var_1), false && global0.a.d, !any(vec4<bool>(false, true, global0.d.x, false))), vec3<f32>(func_4(abs(vec3<u32>(global0.c, global0.c, 39756u)), func_5(Struct_2(global0.a, arg_2.wy, global0.c, global0.d), vec4<bool>(false, global0.d.x, global0.a.a, true), vec3<f32>(-1911f, -383f, -1615f)), ~vec2<u32>(4294967295u, u_input.d.x), func_5(Struct_2(Struct_1(var_1, vec2<i32>(global0.b.x, 2147483647i), 1000f, true), vec2<i32>(arg_2.x, 30346i), global0.c, vec3<bool>(true, var_1, false)), vec4<bool>(var_1, false, true, global0.a.a), arg_1)).c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-511f, 226f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))))).a, select(!vec4<bool>(arg_1.x <= -628f, false, false, all(global0.d)), !select(vec4<bool>(var_1, false, false, false), !vec4<bool>(var_1, global0.d.x, false, false), -1i < u_input.a.x), vec4<bool>(any(func_5(Struct_2(global0.a, arg_2.wz, u_input.d.x, global0.d), vec4<bool>(true, false, true, false), arg_1).d.yx), true, !(arg_1.x == arg_1.x), false)));
    return vec4<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -485f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x)), _wgslsmith_div_f32(global0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a.c))));
}

fn func_6(arg_0: vec4<f32>, arg_1: bool, arg_2: i32) -> bool {
    let var_0 = ~vec3<i32>(countOneBits(arg_2), -9404i, 48637i);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_0.yw * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0.wz)) + arg_0.yx)))));
    var var_2 = Struct_4(Struct_2(global0.a, -vec2<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -1i), u_input.c, !vec3<bool>(2147483647i >= arg_2, true, global0.a.a)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - 146f), _wgslsmith_f_op_f32(var_1.x - -589f), global0.a.c, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x * -1000f), _wgslsmith_div_f32(191f, -1811f), 1000f, global0.a.c)), Struct_1(_wgslsmith_f_op_f32(min(global0.a.c, var_1.x)) == _wgslsmith_f_op_f32(arg_0.x + -268f), global0.a.b, var_1.x, true)), func_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -754f), 147f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(113f * global0.a.c) + _wgslsmith_f_op_f32(517f - global0.a.c)), 1309f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_1.x, arg_0.x)), _wgslsmith_f_op_f32(ceil(global0.a.c)), _wgslsmith_f_op_f32(global0.a.c * arg_0.x), -777f) * arg_0), Struct_1(true, reverseBits(select(vec2<i32>(arg_2, arg_2), u_input.a, vec2<bool>(arg_1, arg_1))), _wgslsmith_f_op_f32(select(var_1.x, -1230f, !global0.a.a)), global0.a.a)), Struct_1(_wgslsmith_dot_vec3_i32(-var_0, vec3<i32>(u_input.a.x, var_0.x, -25419i) & var_0) <= (-global0.b.x ^ _wgslsmith_dot_vec3_i32(var_0, vec3<i32>(global0.a.b.x, arg_2, var_0.x))), _wgslsmith_mult_vec2_i32(var_0.yy, vec2<i32>(-arg_2, _wgslsmith_mult_i32(var_0.x, var_0.x))), 1466f, true), !(!(!vec4<bool>(false, false, global0.a.a, true))));
    let var_3 = ~vec4<u32>(u_input.d.x, u_input.c, ~(~9466u) | ~var_2.c.c, ~1u);
    return func_4(vec3<u32>(var_3.x, var_2.b.c | firstLeadingBit(global0.c), 4294967295u), var_2.b, ~(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.d.x), vec2<u32>(u_input.d.x, 4294967295u)) | vec2<u32>(_wgslsmith_mod_u32(1286u, 1u), 4488u)), var_2.c).d;
}

fn func_7(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_3(~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, global0.c, global0.c), abs(vec3<u32>(1u, global0.c, 78249u))), ~vec3<u32>(u_input.b, u_input.d.x, u_input.b)), max(vec4<i32>(countOneBits(2147483647i), ~1i, global0.a.b.x, -7764i), -abs(reverseBits(vec4<i32>(27374i, arg_1, u_input.a.x, u_input.a.x)))), func_5(func_5(Struct_2(global0.a, func_4(vec3<u32>(52025u, global0.c, global0.c), Struct_2(Struct_1(arg_0, global0.a.b, -1060f, global0.a.d), u_input.a, 1u, global0.d), vec2<u32>(global0.c, 25635u), Struct_2(Struct_1(false, vec2<i32>(18420i, -2147483647i), global0.a.c, true), vec2<i32>(-2147483647i, -18870i), global0.c, vec3<bool>(arg_0, arg_0, global0.a.d))).b, u_input.c ^ 1u, global0.d), select(vec4<bool>(arg_0, global0.d.x, global0.d.x, false), !vec4<bool>(true, true, global0.a.d, arg_0), !vec4<bool>(arg_0, global0.d.x, true, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.c, 516f, 339f), vec3<f32>(-1226f, -1000f, global0.a.c), global0.a.a)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1659f, global0.a.c, -1299f))))), select(!(!vec4<bool>(arg_0, global0.d.x, false, global0.d.x)), vec4<bool>(global0.a.c < 156f, global0.a.d || false, false, true), vec4<bool>(arg_0, func_5(Struct_2(global0.a, vec2<i32>(-1i, -2147483647i), 0u, global0.d), vec4<bool>(global0.a.a, false, global0.a.d, true), vec3<f32>(global0.a.c, global0.a.c, -125f)).a.a, true, !arg_0)), vec3<f32>(global0.a.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a.c * 168f))), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_div_f32(-653f, global0.a.c), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-952f, global0.a.c, global0.a.c))), vec4<i32>(arg_1, 2147483647i, global0.b.x, u_input.a.x) ^ vec4<i32>(global0.a.b.x, 0i, u_input.a.x, arg_1))).x)), global0.d.xx);
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec4_f32(func_1(func_4(var_0.a, Struct_2(Struct_1(false, global0.b, global0.a.c, false), firstTrailingBit(var_0.c.b), abs(60969u), var_0.c.d), vec2<u32>(select(var_0.a.x, 1u, false), ~34097u), Struct_2(var_0.c.a, vec2<i32>(var_0.b.x, u_input.a.x) << (u_input.d % vec2<u32>(32u)), 0u, global0.d)).c, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1372f, -1467f, var_0.c.a.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-746f, 1000f, global0.a.c))), vec3<f32>(-518f, global0.a.c, var_0.c.a.c)))), min(select(-var_0.b, var_0.b & var_0.b, vec4<bool>(global0.a.a, true, true, arg_0)), var_0.b))).zw));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-250f, global0.a.c, var_1.x, -1720f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(766f, -1854f, -777f, var_0.c.a.c) + vec4<f32>(var_0.c.a.c, var_0.c.a.c, 314f, var_1.x)), func_4(var_0.a, Struct_2(Struct_1(true, global0.a.b, 111f, var_0.d.x), vec2<i32>(arg_1, u_input.a.x), 54812u, vec3<bool>(global0.a.d, arg_0, false)), vec2<u32>(4294967295u, 80063u), Struct_2(Struct_1(false, vec2<i32>(global0.b.x, var_0.b.x), 494f, global0.a.a), u_input.a, global0.c, vec3<bool>(var_0.c.d.x, global0.d.x, false)))).a.c), global0.a.c) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.a.c, var_1.x) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.c.a.c, 744f))))), vec2<f32>(_wgslsmith_f_op_f32(global0.a.c - _wgslsmith_f_op_f32(max(var_0.c.a.c, 1170f))), var_0.c.a.c), global0.d.xy)));
    global0 = var_0.c;
    var var_2 = Struct_4(Struct_2(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.c, 882f, global0.a.c, -1521f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.c, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.a.c, 339f, var_0.c.a.c, 2771f), vec4<f32>(global0.a.c, global0.a.c, -194f, var_1.x)))), var_0.c.a).a, func_4(vec3<u32>(4294967295u, 30592u, 4294967295u), func_2(vec4<f32>(-330f, var_0.c.a.c, global0.a.c, 308f), vec4<f32>(641f, 1377f, var_1.x, -449f), Struct_1(var_0.d.x, vec2<i32>(var_0.c.a.b.x, arg_1), global0.a.c, global0.a.d)), u_input.d | var_0.a.zz, Struct_2(Struct_1(false, vec2<i32>(-33802i, -1i), var_0.c.a.c, true), vec2<i32>(var_0.b.x, global0.a.b.x), 4294967295u, vec3<bool>(false, arg_0, false))).b >> (var_0.a.yz % vec2<u32>(32u)), abs(u_input.b), select(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.c, -511f, var_1.x, var_1.x), vec4<f32>(-1120f, 299f, 1257f, var_1.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a.c, var_0.c.a.c, global0.a.c, global0.a.c))), func_2(vec4<f32>(global0.a.c, 281f, 115f, 468f), vec4<f32>(753f, global0.a.c, global0.a.c, 515f), global0.a).a).d, vec3<bool>(func_6(vec4<f32>(global0.a.c, var_0.c.a.c, -743f, 650f), arg_0, -2147483647i), any(var_0.c.d), true), arg_0)), var_0.c, var_0.c, Struct_1(func_4(~(~var_0.a), Struct_2(func_5(var_0.c, vec4<bool>(var_0.d.x, true, true, false), vec3<f32>(704f, 2323f, var_0.c.a.c)).a, -u_input.a, 74721u, select(vec3<bool>(false, global0.d.x, true), vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, true, arg_0))), _wgslsmith_mult_vec2_u32(u_input.d, var_0.a.yx ^ u_input.d), var_0.c).a, min(vec2<i32>(~var_0.c.a.b.x, global0.a.b.x), u_input.a), _wgslsmith_f_op_f32(min(var_0.c.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), true), vec4<bool>(false, !(!global0.a.a), any(vec2<bool>(any(global0.d), true)), min(0u, ~u_input.b) < countOneBits(~var_0.a.x)));
    return var_2.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global0.a.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(137f + _wgslsmith_f_op_f32(max(995f, -581f)))))))));
    var var_1 = func_7(func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-978f, var_0, 273f, var_0))) * _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(-global0.a.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1708f, -189f, -390f) * vec3<f32>(-577f, global0.a.c, 913f)), vec4<i32>(40068i, global0.a.b.x, u_input.a.x, -9795i)))), false, func_5(Struct_2(func_4(vec3<u32>(37873u, 4294967295u, global0.c), Struct_2(Struct_1(global0.d.x, global0.a.b, -824f, false), vec2<i32>(global0.b.x, 28658i), 45003u, vec3<bool>(global0.a.a, true, false)), vec2<u32>(0u, global0.c), Struct_2(Struct_1(false, vec2<i32>(global0.a.b.x, 3716i), var_0, false), vec2<i32>(global0.b.x, 29074i), global0.c, global0.d)), -vec2<i32>(-31053i, -2300i), u_input.d.x, vec3<bool>(true, true, true)), vec4<bool>(global0.a.a, global0.a.a | global0.a.d, global0.a.d, !global0.d.x), _wgslsmith_f_op_vec4_f32(func_1(-360f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(335f, global0.a.c, 1473f), vec3<f32>(398f, global0.a.c, 784f), vec3<bool>(true, global0.a.a, true))), _wgslsmith_div_vec4_i32(vec4<i32>(53271i, u_input.a.x, u_input.a.x, 1i), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -32972i)))).zzx).b.x), -_wgslsmith_sub_i32(global0.a.b.x, 11283i) << (38739u % 32u));
    let var_2 = 1i;
    var var_3 = global0.a.c;
    var var_4 = Struct_4(func_5(Struct_2(func_2(vec4<f32>(-822f, -1000f, -391f, -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, global0.a.c, var_0, var_1.c) + vec4<f32>(var_1.c, -1000f, var_1.c, var_1.c)), Struct_1(true, var_1.b, -1218f, global0.a.d)).a, ~vec2<i32>(2147483647i, 1i), ~(~u_input.c), !(!vec3<bool>(true, true, global0.a.d))), vec4<bool>(true, any(vec4<bool>(false, var_1.d, false, global0.a.a)), global0.d.x, !(true && var_1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 124f, -1762f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(780f, var_1.c, 375f), vec3<f32>(global0.a.c, -1000f, 227f)))))), func_5(func_5(func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-318f, 1665f, var_0, var_1.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 127f, 674f, global0.a.c)), global0.a), vec4<bool>(var_1.a, true, false, var_1.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, 724f, global0.a.c), vec3<f32>(global0.a.c, -1004f, var_1.c))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1173f, -1000f, var_1.c) * vec3<f32>(global0.a.c, global0.a.c, var_0)))), select(select(select(vec4<bool>(var_1.a, global0.a.d, false, global0.a.d), vec4<bool>(true, false, var_1.a, global0.d.x), true), vec4<bool>(var_1.d, var_1.a, false, true), global0.c < 1u), !vec4<bool>(true, global0.d.x, var_1.d, false), any(select(vec4<bool>(false, true, var_1.d, var_1.a), vec4<bool>(var_1.d, var_1.d, false, var_1.d), global0.a.a))), vec3<f32>(var_0, _wgslsmith_f_op_f32(round(1605f)), -1302f)), func_5(func_2(vec4<f32>(var_0, _wgslsmith_f_op_f32(global0.a.c * -3513f), _wgslsmith_f_op_f32(max(var_0, var_1.c)), _wgslsmith_f_op_f32(-365f * var_1.c)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0, -495f, var_0, global0.a.c))), func_4(vec3<u32>(global0.c, 0u, global0.c) ^ vec3<u32>(18286u, 1u, u_input.b), func_5(Struct_2(global0.a, u_input.a, u_input.c, vec3<bool>(true, global0.d.x, true)), vec4<bool>(true, global0.a.a, var_1.d, var_1.d), vec3<f32>(1067f, var_0, var_0)), u_input.d | u_input.d, func_2(vec4<f32>(var_0, 408f, var_0, 1271f), vec4<f32>(global0.a.c, global0.a.c, 751f, var_1.c), global0.a))), !vec4<bool>(global0.a.d, false, !global0.d.x, !global0.a.a), _wgslsmith_f_op_vec4_f32(func_1(var_1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_1.c, var_1.c)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, var_1.c), vec3<f32>(-1495f, -500f, -983f))), vec4<i32>(-57375i, u_input.a.x, global0.a.b.x, var_1.b.x) >> (select(vec4<u32>(1u, 61435u, 44112u, 50306u), vec4<u32>(52167u, global0.c, 4294967295u, global0.c), vec4<bool>(false, false, global0.a.d, true)) % vec4<u32>(32u)))).wxx), global0.a, !vec4<bool>(func_7(var_1.a != global0.d.x, reverseBits(var_1.b.x)).a, global0.a.a, global0.a.a, _wgslsmith_f_op_f32(-430f - 284f) >= _wgslsmith_f_op_f32(var_1.c - global0.a.c)));
    let var_5 = 2147483647i;
    let var_6 = ~(-(global0.b.x & ~var_5)) | -57728i;
    var var_7 = var_4.b.a.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_6, vec3<f32>(409f, -268f, -595f), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(68017u, abs(27853u), _wgslsmith_sub_u32(4294967295u, 29352u), 23898u), abs(abs(vec4<u32>(global0.c, global0.c, 51025u, u_input.c)))), var_4.c.c));
}

