struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1960f, -1828f, -827f, 833f);

var<private> global1: u32 = 1u;

var<private> global2: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(-15019i, -12567i, -1i), vec3<i32>(15205i, 43468i, 0i), vec3<i32>(1i, -30217i, 8669i), vec3<i32>(-25756i, 1i, 18555i), vec3<i32>(1i, 17465i, 5866i), vec3<i32>(2147483647i, -26885i, 25672i), vec3<i32>(i32(-2147483648), 1i, 3869i), vec3<i32>(-11811i, -6385i, 60297i), vec3<i32>(31106i, -51677i, -26458i), vec3<i32>(-48687i, 2147483647i, -87073i), vec3<i32>(-5291i, -40965i, 505i), vec3<i32>(-45321i, -4111i, -1i), vec3<i32>(0i, -1i, -13615i), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec3<i32>(1i, 0i, 0i), vec3<i32>(-71453i, 59330i, -27571i), vec3<i32>(25700i, 1i, 1i), vec3<i32>(-1i, -2111i, -9364i), vec3<i32>(-1i, -1i, 17274i), vec3<i32>(-1i, -21106i, 1i));

var<private> global3: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> u32 {
    return 93300u;
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> vec4<f32> {
    let var_0 = _wgslsmith_clamp_vec2_u32(global3.b.xx, ~min((u_input.a | vec2<u32>(6589u, 48503u)) >> (~vec2<u32>(arg_0.x, u_input.a.x) % vec2<u32>(32u)), u_input.a), vec2<u32>(54681u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(69404u, u_input.a.x) >> ((global3.b.x << (arg_0.x % 32u)) % 32u), ~u_input.b)));
    global3 = Struct_1(arg_0.xxx, abs(global3.b), ~firstLeadingBit(max(vec4<i32>(global3.c.x, 0i, -2147483647i, global3.c.x) >> (vec4<u32>(arg_0.x, 1u, 0u, global3.b.x) % vec4<u32>(32u)), vec4<i32>(global3.c.x, global3.c.x, 21091i, global3.c.x) >> (arg_0 % vec4<u32>(32u)))), global3.d);
    var var_1 = Struct_1(_wgslsmith_mod_vec3_u32(~arg_0.yyx, global3.a), _wgslsmith_div_vec3_u32(arg_0.wyx, arg_0.yww), vec4<i32>(-select(20155i ^ global3.c.x, ~(-1i), all(vec2<bool>(arg_1, arg_1))), global3.c.x, global3.c.x, ~global3.c.x), global3.d);
    var var_2 = Struct_2(select(vec4<bool>(true, !all(vec2<bool>(arg_1, true)), false, -1635f > _wgslsmith_f_op_f32(906f + global0.x)), !vec4<bool>(arg_1, arg_1 && arg_1, true, false), select(vec4<bool>(any(vec4<bool>(arg_1, true, false, false)), all(vec2<bool>(arg_1, true)), false, any(vec3<bool>(arg_1, arg_1, true))), !select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(true, arg_1, arg_1, arg_1)), vec4<bool>(true, false, !arg_1, !arg_1))), ~(~u_input.b));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1577f), _wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_f32(f32(-1f) * -232f)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-536f, -299f, global0.x, -307f), vec4<f32>(-1340f, -1263f, 487f, 402f)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-614f, _wgslsmith_f_op_f32(max(179f, 438f)))), 1190f, -692f));
    return vec4<f32>(-583f, -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -850f))), global0.x)), _wgslsmith_f_op_f32(-global3.d.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>) -> u32 {
    global1 = ~0u;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - -1332f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global0.x)), -1973f)) + -2236f))), _wgslsmith_f_op_f32(floor(152f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 1248f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-510f))))), -1105f);
    let var_0 = Struct_2(select(vec4<bool>(true, ~u_input.b > 21568u, true, true), !vec4<bool>(true, true, select(false, false, true), select(true, false, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(any(vec2<bool>(true, true)), true, all(vec4<bool>(false, false, true, false)), true), vec4<bool>(true, true, true, true))), 0u);
    var var_1 = 0i;
    let var_2 = Struct_3(var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global0.wz))), global0.zx)));
    return u_input.a.x & var_0.b;
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_clamp_u32(4294967295u, global3.a.x, ~_wgslsmith_dot_vec2_u32(global3.a.yz ^ _wgslsmith_mult_vec2_u32(vec2<u32>(global3.a.x, global3.b.x), vec2<u32>(0u, u_input.a.x)), vec2<u32>(0u | global3.a.x, global3.b.x)));
    global2 = array<vec3<i32>, 20>();
    let var_1 = _wgslsmith_f_op_f32(-global3.d.x);
    let var_2 = Struct_3(Struct_2(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))), func_2() << (select(var_0, abs(1u), true) % 32u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1, global0.x))), vec2<f32>(var_1, var_1))))));
    var var_3 = ~(~func_4(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(global3.c.x, global3.c.x), vec2<i32>(-2147483647i, global3.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.b.x, global0.x, var_2.b.x, var_2.b.x), vec4<f32>(global3.d.x, 908f, 1031f, -970f))) * _wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(var_2.a.b, 15210u, 81525u, 21277u), var_2.a.a.x)))));
    return StorageBuffer(min(_wgslsmith_dot_vec2_u32(min(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.a.b, 92159u), u_input.a), global3.a.zy << (vec2<u32>(50310u, 0u) % vec2<u32>(32u))), u_input.a), ~_wgslsmith_mult_u32(var_2.a.b, _wgslsmith_mod_u32(0u, var_0))), vec2<u32>(var_2.a.b, countOneBits(var_2.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(-647f, _wgslsmith_f_op_f32(3354f * global3.d.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(735f * 778f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.x)) - -1384f));
    var var_0 = 0i;
    let var_1 = _wgslsmith_sub_u32(1u, select(countOneBits(u_input.a.x), ~4294967295u, ~1i <= select(global3.c.x, -44799i, any(vec4<bool>(false, false, false, false)))));
    var_0 = i32(-1i) * -global3.c.x;
    global3 = Struct_1(abs(vec3<u32>(var_1, 4294967295u, global3.a.x | u_input.b)), ~_wgslsmith_mod_vec3_u32(~(~vec3<u32>(4294967295u, global3.b.x, 4294967295u)), ~firstLeadingBit(vec3<u32>(5322u, global3.b.x, u_input.a.x))), -vec4<i32>(select(~1i, 36545i & global3.c.x, true), ~(global3.c.x << (50159u % 32u)), _wgslsmith_mod_i32(global3.c.x, global3.c.x), min(-6187i, abs(1i))), global0.ww);
    let x = u_input.a;
    s_output = func_1();
}

