struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_3, 8>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: u32) -> f32 {
    return global1.x;
}

fn func_2() -> Struct_2 {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.x), 1483f, 810f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(46880u, false, 4294967295u)), global1.x)))));
    let var_0 = Struct_3(51248i, false, true);
    global0 = _wgslsmith_clamp_u32(select(~80343u, ~countOneBits(4294967295u), select(abs(var_0.a), -2147483647i, true) == 1i), _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(abs(31808u), _wgslsmith_mult_u32(58943u, 1u)), ~18868u), 32399u, ~0u), ~(~4294967295u));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(global1.x * 2452f)), global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.x, -431f)), 246f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), 960f);
    var var_1 = u_input.a.x;
    return Struct_2(vec2<bool>(false, !any(vec2<bool>(true, var_0.c))), Struct_1(select(select(vec3<bool>(var_0.c, var_0.c, true), select(vec3<bool>(false, var_0.b, false), vec3<bool>(var_0.c, false, var_0.c), var_0.c), vec3<bool>(false, var_0.b, true)), !(!vec3<bool>(true, var_0.c, var_0.c)), vec3<bool>(false, true, var_0.b)), _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, -171i, -2147483647i, -47232i), -(vec4<i32>(2147483647i, var_0.a, 2147483647i, 87228i) >> (vec4<u32>(83760u, 25017u, 1u, 55951u) % vec4<u32>(32u)))), ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-3486i, var_0.a, 55244i, 1i)), vec4<i32>(u_input.a.x, -1i, var_0.a, var_0.a)), ~(~1u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(max(1014f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-640f))))))), u_input.a.x, u_input.a.xx);
}

fn func_1() -> Struct_2 {
    var var_0 = global1.xx;
    let var_1 = -u_input.a.xz;
    var var_2 = ~_wgslsmith_mod_vec4_u32(~select(~vec4<u32>(4294967295u, 1u, 0u, 1u), firstTrailingBit(vec4<u32>(4294967295u, 1u, 52684u, 1u)), true), vec4<u32>(min(1u, 4294967295u >> (0u % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(55740u, 1u, 67215u, 18082u), vec4<u32>(4294967295u, 4294967295u, 0u, 17010u), vec4<u32>(24245u, 1u, 1u, 18999u)), ~vec4<u32>(34356u, 16997u, 19430u, 9312u)), ~1u, _wgslsmith_div_u32(~0u, 1u)));
    let var_3 = false;
    global0 = 1u;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(func_1().b.a, 2147483647i, select(var_0.e.x, min(var_0.d, _wgslsmith_div_i32(var_0.e.x, u_input.a.x)), true) & u_input.a.x, _wgslsmith_add_u32(~((var_0.b.d ^ var_0.b.d) & 10012u), var_0.b.d));
    global1 = vec4<f32>(func_2().c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-196f - global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-402f + _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -847f)), var_0.c)));
    let var_2 = var_0.b;
    var var_3 = 34485u;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.yy >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(var_1.d, var_1.d), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(22255u, 6903u))), vec2<u32>(67586u, 4294967295u & var_2.d), reverseBits(vec2<u32>(var_1.d, 49199u)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_0.b.d), vec2<u32>(var_1.d, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -179f), -714f);
}

