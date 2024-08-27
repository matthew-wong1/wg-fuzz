struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
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

var<private> global0: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(29409i, 0i), vec2<i32>(0i, 1018i), vec2<i32>(39434i, -1i), vec2<i32>(0i, -1i), vec2<i32>(2147483647i, 1i), vec2<i32>(1i, -53281i), vec2<i32>(1i, -27281i), vec2<i32>(-1i, -35942i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(6937i, 54457i));

var<private> global1: Struct_3 = Struct_3(Struct_1(vec2<f32>(-1328f, -2394f), 19688i, 19272u, vec4<u32>(4294967295u, 51558u, 46490u, 4294967295u), true), 4294967295u);

var<private> global2: array<vec2<f32>, 10>;

var<private> global3: vec3<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    global2 = array<vec2<f32>, 10>();
    global0 = array<vec2<i32>, 12>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.a.a.x + arg_0.a.a.x), _wgslsmith_f_op_f32(select(arg_0.a.a.x, global1.a.a.x, global3.x))))) > -1086f, select(!(!select(vec3<bool>(global3.x, global3.x, false), vec3<bool>(global1.a.e, true, false), vec3<bool>(global1.a.e, true, arg_0.a.e))), select(!vec3<bool>(true, true, global1.a.e), select(vec3<bool>(arg_0.a.e, true, global3.x), select(vec3<bool>(true, true, arg_0.a.e), vec3<bool>(global1.a.e, arg_0.a.e, arg_0.a.e), global3.x), !vec3<bool>(arg_0.a.e, global1.a.e, false)), select(vec3<bool>(true, global1.a.e, false), select(vec3<bool>(arg_0.a.e, global1.a.e, false), vec3<bool>(global1.a.e, global1.a.e, global3.x), vec3<bool>(false, arg_0.a.e, global1.a.e)), all(vec2<bool>(true, global1.a.e)))), true), _wgslsmith_add_i32(~(-u_input.c.x), 33897i));
    var var_1 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 10u)], -(~1i), 0u, vec4<u32>(global1.a.d.x, 10699u, (1u >> (global1.b % 32u)) >> (_wgslsmith_dot_vec3_u32(arg_0.a.d.wxz, arg_0.a.d.zyz) % 32u), _wgslsmith_mult_u32(reverseBits(11348u), ~u_input.a)), true), 69690u, Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(global1.a.a)))), 22025i, 1u, vec4<u32>(~arg_0.a.c, abs(35568u), ~(~u_input.a), ~(arg_0.b ^ u_input.d)), false), ~firstTrailingBit(-25342i));
    global1 = Struct_3(arg_0.a, ~_wgslsmith_dot_vec4_u32(var_1.c.d, countOneBits(vec4<u32>(var_1.a.d.x, 4294967295u, 5348u, arg_0.b))) & ~0u);
    return 2147483647i;
}

fn func_2(arg_0: u32) -> vec3<bool> {
    let var_0 = _wgslsmith_clamp_i32(-_wgslsmith_clamp_i32(-34138i, -func_3(Struct_3(global1.a, arg_0)), abs(abs(u_input.c.x))), -40085i, -1i);
    let var_1 = ~reverseBits(~(~40228u));
    var var_2 = Struct_4(any(global3.zy), !vec3<bool>(u_input.e.x > 2147483647i, (0u & global1.a.d.x) == countOneBits(var_1), true), -27167i);
    global2 = array<vec2<f32>, 10>();
    let var_3 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 10u)], select(-min(-29228i, 0i), global1.a.b >> (arg_0 % 32u), true), _wgslsmith_clamp_u32(1u, global1.a.c, countOneBits(1u) << (_wgslsmith_clamp_u32(4294967295u, global1.a.c, u_input.d) % 32u)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(var_1, 37227u, var_1, global1.a.c)), firstLeadingBit(global1.a.d) & global1.a.d), false), min(_wgslsmith_div_u32(~arg_0, _wgslsmith_mod_u32(23472u, u_input.a)) & ~arg_0, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1), firstLeadingBit(vec2<u32>(arg_0, u_input.d))))), global1.a, min(-18183i, _wgslsmith_mult_i32(-3193i, var_2.c)));
    return !select(select(!var_2.b, vec3<bool>(global3.x, global3.x, global3.x), var_2.b), !select(select(vec3<bool>(global3.x, false, false), var_2.b, true), vec3<bool>(var_2.b.x, var_3.c.e, true), vec3<bool>(global1.a.e, false, false)), vec3<bool>(any(!vec3<bool>(global1.a.e, false, var_2.a)), !global3.x, !(0u == var_1)));
}

fn func_1() -> Struct_3 {
    global0 = array<vec2<i32>, 12>();
    let var_0 = 0i;
    var var_1 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, ~(-2147483647i)), -abs(vec2<i32>(var_0, var_0)));
    var var_2 = Struct_4(!(!global3.x), select(func_2(~1u), vec3<bool>(global3.x | true, (global3.x || global3.x) != func_2(1u).x, u_input.d < ~1u), (_wgslsmith_dot_vec4_u32(global1.a.d, global1.a.d) & ~0u) != 4223u), var_0);
    let var_3 = ~(~global0[_wgslsmith_index_u32(~1u, 12u)]);
    return Struct_3(global1.a, global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = global3.x;
    var var_1 = vec2<bool>(true, global3.x);
    global2 = array<vec2<f32>, 10>();
    global0 = array<vec2<i32>, 12>();
    let var_2 = func_1();
    global0 = array<vec2<i32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.a.x + 949f), 1107f));
}

