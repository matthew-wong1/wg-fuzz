struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(false, vec3<i32>(63253i, -28545i, 1322i), vec4<u32>(32597u, 0u, 1u, 0u), -6112i, 1002f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(global1.e));
    var var_1 = 1i;
    var_1 = 46957i;
    global0 = -u_input.d.x;
    let var_2 = Struct_1(!(global1.e <= _wgslsmith_f_op_f32(floor(-1045f))), -(vec3<i32>(2147483647i, _wgslsmith_clamp_i32(23531i, u_input.d.x, 35713i), _wgslsmith_sub_i32(21271i, 2147483647i)) ^ select(_wgslsmith_add_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, global1.b.x, 18946i)), ~vec3<i32>(u_input.a, global1.d, u_input.d.x), global1.a)), firstLeadingBit(vec4<u32>(global1.c.x, u_input.c.x, 27012u, ~(~u_input.b.x))), _wgslsmith_mod_i32(global1.d, 1i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.e))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1106f + -510f))))));
    return _wgslsmith_f_op_f32(floor(1721f));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: i32) -> Struct_2 {
    global0 = u_input.d.x;
    var var_0 = Struct_3(!(global1.a & select(false, any(vec2<bool>(global1.a, global1.a)), any(vec3<bool>(global1.a, global1.a, global1.a)))), global1.b.xx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e)), _wgslsmith_f_op_f32(-var_0.c), global1.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_div_f32(global1.e, -1428f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1245f)))));
    global1 = Struct_1(true, -vec3<i32>(arg_2, firstTrailingBit(global1.d), 2147483647i), ~max(vec4<u32>(global1.c.x, ~1u, ~u_input.b.x, _wgslsmith_div_u32(u_input.c.x, 44595u)), u_input.c), select(~(-24669i), var_0.b.x, false != any(select(vec4<bool>(global1.a, false, var_0.a, false), vec4<bool>(false, var_0.a, true, true), vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(452f))));
    var var_2 = Struct_3(global1.a, abs(abs(vec2<i32>(41821i, 15307i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-global1.e)) + _wgslsmith_f_op_f32(ceil(var_1.x)))));
    return Struct_2(u_input.d, var_0.a, -10862i, !select(vec4<bool>(!var_0.a, var_0.c == -2334f, global1.a, true), !vec4<bool>(var_0.a, var_2.a, false, false), vec4<bool>(true, true, true, global1.a)), !any(vec2<bool>(true, select(false, true, var_2.a))));
}

fn func_1() -> Struct_3 {
    global1 = Struct_1(global1.a, max(abs(vec3<i32>(min(-2306i, 0i), 0i, abs(u_input.a))), vec3<i32>(global1.b.x | 1i, u_input.a, u_input.a)), _wgslsmith_div_vec4_u32(~max(u_input.c, vec4<u32>(global1.c.x, u_input.b.x, 4294967295u, 1u)), vec4<u32>(~0u, 4294967295u, _wgslsmith_dot_vec4_u32(u_input.c, global1.c), 1u)) << (_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 39317u, 34510u, global1.c.x) << (u_input.c % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.c.x, 41857u, 4294967295u, global1.c.x), vec4<u32>(global1.c.x, u_input.b.x, 1u, u_input.c.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 10710u, global1.c.x), abs(global1.c))) % vec4<u32>(32u)), _wgslsmith_add_i32(i32(-1i) * -2147483647i, u_input.d.x & abs(-47841i)), global1.e);
    global1 = Struct_1(!global1.a, u_input.d, vec4<u32>(countOneBits(reverseBits(4294967295u)), (18703u & ~global1.c.x) >> (1u % 32u), 1u, _wgslsmith_mod_u32(~11969u, abs(4697u))), ~(-33793i), global1.e);
    var var_0 = func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global1.e, global1.e, any(!vec3<bool>(global1.a, false, false)))), global1.e)), abs(~global1.c.xy), u_input.d.x);
    var var_1 = Struct_3(var_0.d.x, var_0.a.zz, -353f);
    global1 = Struct_1(false, global1.b, u_input.c, select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_clamp_i32(var_1.b.x, var_1.b.x, global1.b.x)), _wgslsmith_mult_vec2_i32(~vec2<i32>(31858i, var_1.b.x), _wgslsmith_clamp_vec2_i32(u_input.d.xx, vec2<i32>(var_0.c, var_1.b.x), vec2<i32>(global1.d, var_0.c)))), var_0.c, all(vec4<bool>(any(var_0.d.yy), all(var_0.d.wy), false, all(vec2<bool>(true, false))))), var_1.c);
    return Struct_3(true, firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(1i, -53913i), vec2<i32>(4016i, _wgslsmith_sub_i32(u_input.d.x, 27883i)))), var_1.c);
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_2(vec3<i32>(min(-1i, 1i >> (~u_input.c.x % 32u)), u_input.a, -u_input.d.x), false, -2147483647i, func_2(_wgslsmith_div_f32(-1610f, _wgslsmith_f_op_f32(776f + _wgslsmith_f_op_f32(-1417f - -3065f))), global1.c.xw, -(-arg_2.b.x | global1.b.x)).d, !func_1().a);
    let var_1 = vec4<bool>(arg_2.a, !global1.a, any(var_0.d), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.c))) > _wgslsmith_f_op_f32(sign(-344f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-407f, global1.e, arg_2.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1475f, arg_1, -1000f)))), func_2(global1.e, vec2<u32>(7384u, global1.c.x), var_0.a.x).d.wxx)))));
    var var_3 = func_2(global1.e, select(vec2<u32>(~u_input.b.x, 1u) << (u_input.b % vec2<u32>(32u)), u_input.b << (~vec2<u32>(1u, global1.c.x) % vec2<u32>(32u)), !func_2(-1792f, ~vec2<u32>(u_input.b.x, global1.c.x), u_input.d.x).d.x), _wgslsmith_div_i32(var_0.c, (0i >> (_wgslsmith_mult_u32(u_input.c.x, u_input.b.x) % 32u)) ^ 16227i));
    return Struct_1(false, min(firstLeadingBit(abs(var_0.a ^ vec3<i32>(-2147483647i, u_input.a, 1i))), vec3<i32>(var_0.a.x << ((u_input.b.x | 12583u) % 32u), _wgslsmith_add_i32(var_3.a.x << (4294967295u % 32u), -2147483647i), 0i)), vec4<u32>(global1.c.x, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 100233u, global1.c.x), global1.c.zyz)), _wgslsmith_add_u32(5113u, global1.c.x), ~(1u >> (~global1.c.x % 32u))), firstLeadingBit(1i | func_2(665f, _wgslsmith_mod_vec2_u32(global1.c.yx, vec2<u32>(54547u, 6686u)), u_input.d.x).a.x), _wgslsmith_f_op_f32(arg_2.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!(!(!(!vec3<bool>(true, global1.a, global1.a)))), global1.e, func_1(), false);
    var var_1 = ~(global1.c.x << (u_input.b.x % 32u));
    let var_2 = Struct_2(u_input.d, !(var_0.a && global1.a), -42656i, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1147f, _wgslsmith_f_op_f32(-119f + -609f)))), ~_wgslsmith_mod_vec2_u32(abs(var_0.c.wx), _wgslsmith_sub_vec2_u32(global1.c.ww, vec2<u32>(var_0.c.x, var_0.c.x))), 1i).d, func_1().a);
    global1 = Struct_1(global1.a, var_0.b, var_0.c, ~(-25454i), var_0.e);
    var var_3 = all(func_2(global1.e, vec2<u32>(var_0.c.x, reverseBits(max(19693u, global1.c.x))), -global1.b.x).d.wzz);
    var_3 = false;
    var var_4 = ~var_0.c.x;
    var_1 = ~u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.e, var_0.e, 1172f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.e, global1.e, var_0.e) + vec3<f32>(global1.e, global1.e, var_0.e))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.e, global1.e, global1.e) + vec3<f32>(var_0.e, var_0.e, global1.e))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1370f, global1.e, -1493f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e, var_0.e, -842f) - vec3<f32>(global1.e, var_0.e, 225f)))), ~countOneBits(~vec4<u32>(var_0.c.x, u_input.b.x, u_input.b.x, u_input.b.x)), ~(global1.b.x >> (var_0.c.x % 32u)) ^ -var_0.b.x);
}

