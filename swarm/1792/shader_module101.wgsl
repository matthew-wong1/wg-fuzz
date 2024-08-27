struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: array<Struct_1, 10>;

var<private> global3: vec4<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> vec4<f32> {
    global2 = array<Struct_1, 10>();
    var var_0 = arg_2.b.b >> (~min(arg_2.b.b, vec3<u32>(u_input.b.x, 1u, ~18244u)) % vec3<u32>(32u));
    global0 = global1.x;
    let var_1 = var_0.zx;
    global1 = arg_0.a.zy;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.d, -719f, arg_2.b.d, arg_2.b.d)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d, arg_0.d, arg_3.d, 885f), vec4<f32>(-783f, arg_3.d, arg_0.d, 177f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-3003f, arg_0.d, arg_2.b.d, -1542f) * vec4<f32>(arg_0.d, 1472f, 342f, -792f)))))));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec4<u32>) -> f32 {
    let var_0 = ~arg_2.x;
    global3 = _wgslsmith_div_vec4_f32(vec4<f32>(global3.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.x), 132f)), -806f, arg_1.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec3<bool>(global1.x, true, false), vec3<u32>(77002u, var_0, arg_2.x), vec3<bool>(false, global1.x, global1.x), -254f, u_input.c.x), -2147483647i > u_input.c.x, Struct_2(vec2<bool>(false, global1.x), Struct_1(vec3<bool>(global1.x, true, true), vec3<u32>(35322u, 3655u, u_input.b.x), vec3<bool>(global1.x, true, global1.x), -531f, u_input.c.x), vec2<bool>(false, global1.x), 34354u, 4294967295u), Struct_1(vec3<bool>(false, true, true), vec3<u32>(var_0, arg_0, 0u), vec3<bool>(false, global1.x, global1.x), global3.x, u_input.c.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(f32(-1f) * -290f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.x, -967f))), -882f)));
    let var_1 = _wgslsmith_f_op_f32(-arg_1.a);
    var var_2 = Struct_1(vec3<bool>(all(select(vec3<bool>(false, false, global1.x), !vec3<bool>(true, global1.x, true), any(vec4<bool>(global1.x, false, true, true)))), global1.x, true), u_input.b.xwx, select(!select(!vec3<bool>(true, false, global1.x), vec3<bool>(false, global1.x, false), global1.x), select(select(select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, global1.x, global1.x), global1.x), vec3<bool>(false, true, false), all(vec3<bool>(false, true, global1.x))), vec3<bool>(true, true, true), true), true), 955f, _wgslsmith_mod_i32(abs(select(-7250i >> (u_input.b.x % 32u), u_input.c.x, 68703i < u_input.c.x)), u_input.c.x));
    var var_3 = 1i;
    return -481f;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-1099f + _wgslsmith_f_op_f32(func_2(u_input.a, Struct_3(_wgslsmith_f_op_f32(select(-606f, global3.x, arg_1.x)), u_input.a & u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1881u, arg_2.d, 14082u, arg_2.b.b.x), u_input.b), global3.x), u_input.b))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(~4294967295u, u_input.a), ~(~u_input.b.x)), min(~(~(~1u)), firstLeadingBit(select(0u, ~arg_2.b.b.x, true & arg_2.b.c.x))), _wgslsmith_f_op_f32(sign(global3.x)));
    global1 = arg_1.yy;
    var var_1 = firstLeadingBit(~abs(u_input.b.x));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), arg_2.b.a), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.d, arg_2.b.b.x, arg_2.b.b.x), _wgslsmith_mult_vec3_u32(arg_2.b.b, arg_2.b.b)), select(vec3<bool>(global1.x, false, arg_2.a.x), !vec3<bool>(false, false, arg_1.x), !global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(select(-1000f, var_0.a, arg_1.x))), -u_input.c.x), true, Struct_2(!arg_1.zz, Struct_1(vec3<bool>(false, true, false), u_input.b.xzz, vec3<bool>(false, arg_2.a.x, true), -1201f, -u_input.c.x), select(arg_2.c, arg_1.zw, !vec2<bool>(global1.x, true)), ~_wgslsmith_clamp_u32(8897u, u_input.a, 11990u), arg_2.e), Struct_1(!select(arg_1.xxx, arg_2.b.c, true), select(arg_2.b.b, min(u_input.b.xww, vec3<u32>(u_input.a, var_0.c, arg_2.b.b.x)), true), select(!arg_1.xxz, arg_2.b.a, select(arg_1.zwz, arg_1.xxy, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), abs(arg_2.b.e)))).x));
    var var_3 = arg_2;
    return ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~arg_2.b.b, firstTrailingBit(vec3<u32>(arg_2.e, 21757u, u_input.b.x))) & ~select(5146u, var_3.e, var_3.c.x), ~1u | arg_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<bool>(true || global1.x, 1u < (22903u & func_1(1709f, vec4<bool>(global1.x, global1.x, true, true), Struct_2(vec2<bool>(true, global1.x), Struct_1(vec3<bool>(false, true, true), u_input.b.wyw, vec3<bool>(true, true, false), -706f, 0i), vec2<bool>(global1.x, global1.x), u_input.b.x, 0u)))), Struct_1(vec3<bool>(!global1.x, all(select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(global1.x, false, false, true))), false), vec3<u32>(~u_input.a, 4294967295u, 21455u), !(!vec3<bool>(global1.x, global1.x, true)), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_sub_i32(~(u_input.c.x ^ -10681i), (u_input.c.x | u_input.c.x) & firstTrailingBit(u_input.c.x))), vec2<bool>(true, all(vec4<bool>(true, !global1.x, any(vec2<bool>(global1.x, false)), true))), u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(abs(_wgslsmith_clamp_u32(0u, u_input.a, 36754u)), ~u_input.a), _wgslsmith_div_vec2_u32(u_input.b.wx, vec2<u32>(u_input.b.x, ~u_input.b.x))));
    global3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.d, -118f, _wgslsmith_f_op_f32(f32(-1f) * -880f), _wgslsmith_f_op_f32(step(global3.x, -367f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1864f, global3.x, 340f, var_0.b.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global3.x, var_0.b.d, global3.x)))))));
    let var_1 = true;
    let var_2 = Struct_2(!(!select(!var_0.c, !var_0.c, var_0.d == 45845u)), var_0.b, !var_0.a, 49836u, 4294967295u);
    var var_3 = ~(~u_input.b.x);
    var_3 = 33245u;
    let var_4 = -(vec4<i32>(~(~var_0.b.e), 0i, ~(~var_0.b.e), ~1i) | ~(~(-vec4<i32>(var_0.b.e, -38672i, -1i, -2147483647i))));
    let var_5 = global2[_wgslsmith_index_u32(var_0.b.b.x, 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, 4294967295u);
}

