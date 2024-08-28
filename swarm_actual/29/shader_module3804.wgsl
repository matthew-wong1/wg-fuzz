struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, -33995i, 18095i, 2147483647i);

var<private> global1: array<Struct_2, 8>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: u32, arg_3: Struct_1) -> bool {
    let var_0 = Struct_3(arg_3.d.x, Struct_1(abs(~(vec3<u32>(6453u, arg_0.x, 9882u) ^ vec3<u32>(arg_2, arg_3.a.x, arg_2))), select(arg_3.b, vec3<bool>(arg_3.b.x, false, arg_3.b.x), select(select(vec3<bool>(false, true, arg_3.d.x), vec3<bool>(true, false, arg_3.d.x), false), !vec3<bool>(false, arg_3.d.x, arg_3.d.x), arg_3.d.yxw)), arg_3.c, vec4<bool>(!(arg_2 > arg_2), select(true, true, !arg_3.b.x), any(!vec3<bool>(arg_3.d.x, arg_3.d.x, arg_3.d.x)), true)), global0.wy);
    var var_1 = true;
    global0 = _wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_mod_i32(0i, var_0.c.x >> (arg_3.a.x % 32u)), (global0.x | -11812i) & (var_0.c.x ^ -1i), -var_0.c.x ^ _wgslsmith_mult_i32(-2147483647i, global0.x), u_input.a), ~vec4<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a, u_input.a), ~var_0.c.x), _wgslsmith_mult_i32(var_0.c.x, u_input.a), -1i, ~(-1i)));
    global1 = array<Struct_2, 8>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1894f + arg_3.c.x))))), 189f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_3.c.x, 1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-950f, 329f)) * _wgslsmith_f_op_f32(step(-650f, var_0.b.c.x))), _wgslsmith_f_op_f32(-arg_3.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3.c.x * arg_3.c.x))))) - -2173f));
    return true;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    global1 = array<Struct_2, 8>();
    let var_0 = arg_1;
    var var_1 = arg_1;
    var var_2 = Struct_3(func_3(var_0.a << (arg_1.a % vec3<u32>(32u)), Struct_4(71454u, vec3<u32>(abs(var_1.a.x), var_0.a.x, 0u)), ~arg_1.a.x, Struct_1(~vec3<u32>(var_0.a.x, var_0.a.x, var_1.a.x), !var_0.b, vec4<f32>(_wgslsmith_f_op_f32(var_0.c.x + 330f), var_0.c.x, var_1.c.x, -952f), vec4<bool>(select(var_1.d.x, false, true), select(arg_1.b.x, arg_1.b.x, var_1.b.x), !arg_1.b.x, true))), var_0, vec2<i32>(~(~reverseBits(-2147483647i)), arg_0.x));
    var_1 = var_0;
    return -790f;
}

fn func_1(arg_0: u32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(224f, _wgslsmith_f_op_f32(-485f + -797f), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(sign(489f)), true)), _wgslsmith_f_op_f32(func_2(firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), Struct_1(vec3<u32>(arg_0, arg_0, 32258u), vec3<bool>(false, false, false), vec4<f32>(-338f, 1118f, -1000f, -823f), vec4<bool>(true, true, true, false))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1660f, _wgslsmith_f_op_f32(f32(-1f) * -1235f), -161f, _wgslsmith_f_op_f32(f32(-1f) * -517f)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-647f, -1323f, -1227f, 325f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(476f, 422f, 1272f, 1116f), vec4<f32>(-988f, 152f, -471f, 1328f))))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(506f * -344f) - _wgslsmith_f_op_f32(step(-374f, 1593f))), _wgslsmith_f_op_f32(abs(-431f)), 734f, -508f)));
    let var_1 = var_0.x;
    let var_2 = Struct_2(Struct_1(vec3<u32>(arg_0, 3305u, arg_0), vec3<bool>(func_3(abs(vec3<u32>(4294967295u, arg_0, 4294967295u)), Struct_4(1822u, vec3<u32>(arg_0, 8284u, arg_0)), ~arg_0, Struct_1(vec3<u32>(46314u, 15577u, arg_0), vec3<bool>(true, true, false), vec4<f32>(var_0.x, 514f, var_0.x, 112f), vec4<bool>(true, false, true, false))), any(vec2<bool>(true, false)) || true, true), vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-2783f * _wgslsmith_f_op_f32(step(658f, 1961f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * var_0.x)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))));
    let var_3 = vec2<f32>(var_2.a.c.x, var_2.a.c.x);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_2.a.c)));
    return var_2.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(_wgslsmith_div_vec4_i32(select(countOneBits(vec4<i32>(15447i, 2147483647i, -2147483647i, global0.x) ^ vec4<i32>(-26855i, u_input.a, u_input.a, u_input.a)), vec4<i32>(1i, 1i, 24764i, global0.x) ^ -vec4<i32>(global0.x, global0.x, -1i, global0.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)), vec4<i32>(-1i) * -vec4<i32>(u_input.a, -59293i, 1i, -2147483647i)), abs(~vec4<i32>(global0.x, 1i, u_input.a | -68024i, max(20202i, -14818i))), vec4<bool>(true, true, true, true));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(551f, 440f, 287f, -300f)), vec4<f32>(1727f, 2422f, 145f, 2841f), true)))) + _wgslsmith_f_op_vec4_f32(func_1(1u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_1(~abs(1u))).xz + var_0.zz);
    global1 = array<Struct_2, 8>();
    global1 = array<Struct_2, 8>();
    global0 = vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a, 16585i, global0.x, u_input.a), ~reverseBits(vec4<i32>(global0.x, u_input.a, 1i, -6140i)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<i32>(8334i, 2147483647i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-17281i, 31560i, -49964i)), global0.xxz))), global0.x, 35408u, abs(reverseBits(vec2<i32>(max(-12601i, global0.x), select(35344i, u_input.a, false)))), var_0.x);
}

