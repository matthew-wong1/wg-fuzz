struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec2<i32>(2147483647i, -1i), vec3<f32>(-460f, -322f, -262f), 297f, 2147483647i, vec3<bool>(false, false, true));

var<private> global1: vec2<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    var var_0 = u_input.a.x;
    var var_1 = Struct_2(max(vec2<i32>(~(arg_1.a.x << (1u % 32u)), _wgslsmith_dot_vec3_i32(max(vec3<i32>(30271i, 1i, 20195i), vec3<i32>(arg_1.a.x, u_input.b.x, u_input.b.x)), -vec3<i32>(18734i, arg_0, global1.x))), (global0.a >> (abs(u_input.a) % vec2<u32>(32u))) >> (select(vec2<u32>(82109u, 112081u), vec2<u32>(u_input.a.x, u_input.a.x), select(vec2<bool>(arg_1.e.x, arg_1.e.x), vec2<bool>(false, false), arg_2.xy)) % vec2<u32>(32u))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1950f, 1000f))), _wgslsmith_f_op_f32(step(arg_3.a, global0.c)))), arg_3, Struct_1(-236f));
    var var_2 = vec3<i32>(max(-16219i, ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -5912i), global0.a), vec2<i32>(-19951i, -1i))), var_1.a.x, reverseBits(~_wgslsmith_mult_i32(-1i, var_1.a.x) << (_wgslsmith_add_u32(~47895u, u_input.a.x & 67935u) % 32u)));
    var var_3 = arg_3;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-global0.c), 472f, 103f))) * vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(1f - -1225f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_1.c, _wgslsmith_f_op_f32(floor(global0.c))))))));
    return -2147483647i << (_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(select(u_input.a.x, 60420u, arg_1.e.x), u_input.a.x & u_input.a.x, 827u), 4294967295u), ~26801u) % 32u);
}

fn func_2(arg_0: bool) -> Struct_5 {
    var var_0 = Struct_5(global0.a, vec3<f32>(1096f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-387f, _wgslsmith_div_f32(1113f, global0.b.x)), -554f, true)), _wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(-331f - -174f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b.x * global0.b.x), global0.c)), ~func_3(-37745i ^ _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), Struct_5(abs(vec2<i32>(-73301i, global0.d)), _wgslsmith_f_op_vec3_f32(-global0.b), global0.c, global1.x, vec3<bool>(true, true, true)), vec3<bool>(arg_0, true, select(false, true, true)), Struct_1(1264f)), global0.e);
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -550f), _wgslsmith_f_op_f32(min(739f, global0.c)), _wgslsmith_f_op_f32(global0.b.x + global0.c), _wgslsmith_div_f32(1885f, 2279f)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1558f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - 601f))), !var_0.e.x)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(940f)) * _wgslsmith_div_f32(-1092f, -765f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(497f - 591f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -885f), -702f)), 1667f)));
    return Struct_5(vec2<i32>(global1.x, abs(1i)), _wgslsmith_f_op_vec3_f32(step(var_4.xyz, _wgslsmith_f_op_vec3_f32(global0.b + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(var_4.xyw, vec3<f32>(global0.b.x, var_0.c, 316f), global0.e))))))), _wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-var_0.c)) - _wgslsmith_f_op_f32(abs(var_2.x))))), ~abs(_wgslsmith_mod_i32(_wgslsmith_add_i32(0i, 2147483647i), _wgslsmith_mult_i32(-1i, global0.d))), vec3<bool>(false, true, global0.e.x));
}

fn func_1() -> i32 {
    global0 = func_2(all(vec2<bool>(!(global0.e.x && global0.e.x), global0.e.x)));
    var var_0 = Struct_4(-1i);
    return _wgslsmith_dot_vec3_i32(-min(~(vec3<i32>(var_0.a, 1i, global1.x) << (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u))), vec3<i32>(abs(-16318i), max(-8444i, var_0.a), -global0.a.x)), -(vec3<i32>(global1.x, 2147483647i >> (u_input.a.x % 32u), _wgslsmith_clamp_i32(-34018i, 73318i, u_input.b.x)) << (vec3<u32>(69252u, firstLeadingBit(u_input.a.x), 53185u) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<i32>(select(global0.d, countOneBits(_wgslsmith_mult_i32(~0i, func_1())), !all(!global0.e)), _wgslsmith_div_i32(func_3(~global0.d & 11023i, Struct_5(vec2<i32>(2147483647i, -2147483647i), vec3<f32>(global0.c, 131f, global0.c), _wgslsmith_f_op_f32(max(global0.c, global0.c)), _wgslsmith_div_i32(global0.d, 43252i), !global0.e), global0.e, Struct_1(846f)), abs(_wgslsmith_div_i32(global0.d, u_input.b.x))));
    global1 = _wgslsmith_div_vec2_i32(vec2<i32>(global1.x, global1.x), u_input.b);
    var var_0 = ~u_input.a.x | ~u_input.a.x;
    var_0 = _wgslsmith_dot_vec2_u32(abs(u_input.a & (_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 30067u)) >> (abs(u_input.a) % vec2<u32>(32u)))), u_input.a);
    let var_1 = Struct_4(_wgslsmith_clamp_i32(~(~(-28381i << (1u % 32u))), 685i, -(~_wgslsmith_div_i32(1162i, 37380i))));
    global0 = Struct_5(-(~(vec2<i32>(-1i) * -u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1116f + global0.b.x)), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.c * global0.b.x))) + _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(-1000f - 2153f)))), global0.c, 10533i, func_2(global0.e.x).e);
    let var_2 = global0.b.x;
    let var_3 = Struct_3(Struct_2(_wgslsmith_sub_vec2_i32(-vec2<i32>(var_1.a, global0.a.x) & reverseBits(u_input.b), ~vec2<i32>(global1.x, 1i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x + global0.b.x) * _wgslsmith_f_op_f32(global0.b.x * 658f))), Struct_1(func_2(select(true, global0.e.x, global0.e.x)).b.x), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c), global0.c)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)))), vec2<i32>(firstLeadingBit(func_3(52513i, func_2(false), select(global0.e, vec3<bool>(global0.e.x, true, global0.e.x), global0.e), Struct_1(global0.b.x))), u_input.b.x), u_input.a.x);
    var var_4 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c)))));
}

