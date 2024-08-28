struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: Struct_2,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_4(Struct_3(vec2<i32>(86814i, -8351i), -31904i, Struct_2(543f, Struct_1(vec2<bool>(true, false), -1i, vec3<f32>(1005f, -745f, -2046f), 2069f, vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true), -60i, vec3<f32>(-1181f, -435f, -1000f), -832f, vec2<bool>(true, false)), -1825f), vec2<f32>(1427f, 864f), vec4<bool>(true, false, false, false)), vec2<bool>(false, true), false), vec2<f32>(449f, -1088f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<bool>) -> vec3<f32> {
    global0 = Struct_5(Struct_4(Struct_3(-(vec2<i32>(arg_1, 1251i) ^ vec2<i32>(arg_1, -57586i)), ~abs(-2147483647i), global0.a.a.c, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(202f, global0.b.x)), global0.b)), global0.a.a.e), arg_2, global0.a.a.c.b.b > _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, global0.a.a.c.c.b, 5717i), ~vec3<i32>(-1i, 0i, 3098i))), _wgslsmith_f_op_vec2_f32(-global0.b));
    let var_0 = _wgslsmith_f_op_f32(global0.b.x * global0.a.a.c.a);
    global0 = Struct_5(Struct_4(Struct_3(global0.a.a.a >> (u_input.a.zw % vec2<u32>(32u)), min(arg_1, -arg_0.x), global0.a.a.c, _wgslsmith_f_op_vec2_f32(global0.b + _wgslsmith_f_op_vec2_f32(-global0.b)), vec4<bool>(arg_2.x, true, true, arg_2.x | arg_2.x)), global0.a.a.c.c.a, !(!(!arg_2.x))), _wgslsmith_f_op_vec2_f32(-global0.a.a.d));
    let var_1 = global0.a;
    var var_2 = arg_1;
    return global0.a.a.c.c.c;
}

fn func_2(arg_0: Struct_4, arg_1: f32) -> Struct_3 {
    let var_0 = abs(global0.a.a.a);
    let var_1 = Struct_3(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(global0.a.a.a >> (vec2<u32>(u_input.a.x, 41099u) % vec2<u32>(32u)), vec2<i32>(var_0.x ^ 7993i, _wgslsmith_div_i32(-16737i, global0.a.a.a.x)), var_0), _wgslsmith_mod_vec2_i32(-vec2<i32>(43051i, 2147483647i), ~vec2<i32>(global0.a.a.a.x, 32612i) << (_wgslsmith_sub_vec2_u32(u_input.a.yx, u_input.a.zz) % vec2<u32>(32u)))), global0.a.a.a.x, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1, 780f)), _wgslsmith_f_op_f32(f32(-1f) * -1159f)) - _wgslsmith_f_op_f32(step(-1000f, arg_0.a.d.x))), Struct_1(global0.a.b, min(arg_0.a.b, global0.a.a.b) ^ ~var_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(var_0, var_0.x, arg_0.a.c.b.e)) - _wgslsmith_f_op_vec3_f32(global0.a.a.c.c.c - vec3<f32>(1447f, 603f, global0.a.a.c.a))), arg_1, !global0.a.b), Struct_1(vec2<bool>(true, true), -var_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a.c.a, 352f, 761f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.a.d.x, arg_0.a.c.a, arg_0.a.c.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-222f, global0.b.x)) * 557f), !global0.a.a.e.ww), arg_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1032f, 341f), vec2<f32>(-1094f, arg_1))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1524f, 484f))) - vec2<f32>(-824f, _wgslsmith_div_f32(arg_1, global0.b.x))), arg_0.a.e);
    global0 = Struct_5(arg_0, var_1.d);
    global0 = Struct_5(global0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-762f * _wgslsmith_f_op_f32(f32(-1f) * -656f)), _wgslsmith_f_op_f32(floor(-205f))) * vec2<f32>(_wgslsmith_f_op_f32(max(1661f, -1556f)), _wgslsmith_f_op_f32(-1f))));
    let var_2 = vec2<u32>(0u >> (select(10107u, 95728u, any(vec3<bool>(false, arg_0.c, false))) % 32u), _wgslsmith_div_u32(~abs(u_input.a.x), u_input.a.x & u_input.a.x) | abs(u_input.a.x));
    return Struct_3(vec2<i32>(var_0.x, var_0.x >> (_wgslsmith_mod_u32(var_2.x, var_2.x) % 32u)) | countOneBits(vec2<i32>(-2147483647i, arg_0.a.b)), -1i, Struct_2(global0.a.a.c.c.d, global0.a.a.c.b, Struct_1(select(vec2<bool>(false, var_1.c.b.a.x), arg_0.a.c.c.a, false), _wgslsmith_add_i32(firstTrailingBit(var_0.x), -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-535f, arg_1, global0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-927f * arg_1) * global0.b.x), select(!vec2<bool>(arg_0.b.x, false), vec2<bool>(true, true), vec2<bool>(arg_0.a.e.x, false))), _wgslsmith_f_op_f32(sign(-1822f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(256f, arg_0.a.c.b.c.x))), select(vec4<bool>(global0.a.a.e.x, (arg_0.c || false) && true, true, !var_1.e.x || any(global0.a.a.e.wwy)), global0.a.a.e, global0.a.c));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_3) -> i32 {
    var var_0 = u_input.a.x;
    let var_1 = u_input.a.x;
    let var_2 = ~(~vec2<u32>(var_1, 0u));
    var var_3 = Struct_5(global0.a, _wgslsmith_div_vec2_f32(arg_0.d, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.a.a.d.x, _wgslsmith_f_op_f32(-global0.b.x))))));
    global0 = Struct_5(Struct_4(global0.a.a, vec2<bool>(arg_2, _wgslsmith_f_op_f32(arg_0.d.x * arg_0.d.x) <= _wgslsmith_f_op_f32(1624f - arg_0.d.x)), !(_wgslsmith_f_op_f32(-arg_0.d.x) <= 929f)), vec2<f32>(_wgslsmith_f_op_f32(arg_3.d.x + global0.a.a.c.d), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(412f))))));
    return _wgslsmith_div_i32(arg_3.c.c.b, _wgslsmith_mod_i32(22417i, var_3.a.a.c.b.b));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(~_wgslsmith_mult_i32(global0.a.a.c.b.b, 1i), -_wgslsmith_mult_i32(1i, arg_2.b)), vec2<i32>(~arg_2.b, global0.a.a.b) ^ vec2<i32>(0i, _wgslsmith_sub_i32(-555i, -52283i))) | vec2<i32>(func_4(func_2(global0.a, -448f), vec2<i32>(-36140i | arg_0.b.b, arg_0.b.b), !arg_0.b.e.x, global0.a.a), firstTrailingBit(1i));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1273f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1192f, arg_2.d)) * 859f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-arg_2.d))))))));
    global0 = Struct_5(global0.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(select(global0.b.x, var_1.x, arg_0.c.a.x))))))));
    let var_2 = 49779u;
    var var_3 = false;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -282f) + global0.a.a.d.x));
    var_0 = global0.b.x;
    let var_1 = Struct_2(global0.a.a.c.c.c.x, Struct_1(global0.a.a.e.zz, 62826i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + global0.a.a.c.a)), _wgslsmith_f_op_f32(floor(global0.a.a.d.x)), _wgslsmith_f_op_f32(step(375f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - global0.a.a.d.x))), select(select(select(vec2<bool>(true, global0.a.c), vec2<bool>(global0.a.b.x, true), true), global0.a.b, global0.a.a.c.c.a), func_1(Struct_2(500f, global0.a.a.c.b, global0.a.a.c.b, global0.a.a.d.x), 66313u << (u_input.a.x % 32u), global0.a.a.c.c), global0.a.c)), func_2(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global0.b.x, -846f)))))).c.c, _wgslsmith_f_op_f32(f32(-1f) * -1019f));
    let x = u_input.a;
    s_output = StorageBuffer(~0u, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b.d))), _wgslsmith_f_op_f32(-func_2(global0.a, 1321f).d.x), _wgslsmith_f_op_f32(select(-486f, -720f, all(global0.a.a.e))), _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(896f, var_1.b.c.x, global0.a.a.c.b.d, global0.b.x)))))), any(global0.a.a.e.yzy) && !var_1.b.e.x)), 27689i >> (u_input.a.x % 32u));
}

