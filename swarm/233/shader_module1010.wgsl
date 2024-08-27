struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(53821u, 1u), vec2<u32>(5554u, 1u), vec2<u32>(3367u, 48992u), vec2<u32>(110797u, 19395u), vec2<u32>(17808u, 64016u), vec2<u32>(1u, 1u), vec2<u32>(62954u, 1u), vec2<u32>(1u, 91273u), vec2<u32>(110234u, 73316u), vec2<u32>(4294967295u, 24458u), vec2<u32>(93663u, 19936u), vec2<u32>(37760u, 0u), vec2<u32>(4294967295u, 65004u), vec2<u32>(39189u, 41261u), vec2<u32>(4294967295u, 49992u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 38728u), vec2<u32>(64284u, 94685u), vec2<u32>(53528u, 4294967295u), vec2<u32>(77571u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 79287u), vec2<u32>(0u, 0u), vec2<u32>(9331u, 59298u), vec2<u32>(9238u, 71145u), vec2<u32>(0u, 34949u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(27395u, 1u), vec2<u32>(1u, 58217u), vec2<u32>(1u, 4294967295u));

var<private> global1: array<Struct_2, 29>;

var<private> global2: array<i32, 31>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    global0 = array<vec2<u32>, 30>();
    global1 = array<Struct_2, 29>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(744f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(max(-465f, -1000f)))))) - _wgslsmith_f_op_f32(-1f));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 29u)];
    let var_2 = Struct_2(vec2<bool>(!var_1.a.x, _wgslsmith_mult_i32(~11180i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 66869i, global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(0u, 31u)]), vec4<i32>(arg_0.x, -26028i, 0i, 70077i))) == 2147483647i), var_1.b, Struct_1(var_1.c.a, min(~vec2<u32>(var_1.c.b.x, 0u), _wgslsmith_mod_vec2_u32(~var_1.c.b, u_input.b))), select(vec3<bool>(false, false, all(!var_1.a)), var_1.d, var_1.d));
    return var_2.c;
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = Struct_1(-1475f, ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, ~arg_0), ~vec2<u32>(u_input.b.x, 0u)));
    global1 = array<Struct_2, 29>();
    var var_1 = _wgslsmith_f_op_f32(var_0.a - var_0.a);
    let var_2 = vec3<i32>(abs(0i), u_input.a.x & -36346i, 18834i);
    let var_3 = !(!(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true))));
    return global2[_wgslsmith_index_u32(~arg_0, 31u)];
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_1.x), vec2<u32>(u_input.b.x, ~(~abs(u_input.b.x))));
    let var_1 = func_2(u_input.a & vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(89017u, 31u)], u_input.a.x, -2147483647i), vec3<i32>(u_input.a.x, arg_0, arg_0)), -50458i));
    global0 = array<vec2<u32>, 30>();
    global2 = array<i32, 31>();
    let var_2 = _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(3402u, var_1.b.x, var_0.b.x)), ~(~vec3<u32>(u_input.b.x, var_0.b.x, var_1.b.x) ^ ~vec3<u32>(var_0.b.x, var_0.b.x, var_1.b.x)), ~(~(~vec3<u32>(var_0.b.x, var_1.b.x, var_0.b.x)))) ^ ~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(27149u, var_1.b.x, u_input.b.x)), select(vec3<u32>(0u, 4490u, var_0.b.x), vec3<u32>(9441u, var_1.b.x, u_input.b.x), vec3<bool>(false, arg_2, true)) & select(vec3<u32>(u_input.b.x, 0u, var_1.b.x), vec3<u32>(var_0.b.x, var_0.b.x, 1u), arg_2));
    return func_2(vec2<i32>(-func_3(_wgslsmith_mod_u32(4294967295u, 1u)), 12805i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 30>();
    var var_0 = Struct_2(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), func_1(select(firstLeadingBit(u_input.a.x | global2[_wgslsmith_index_u32(145540u, 31u)]), u_input.a.x, all(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-482f, -1000f, -431f) - vec3<f32>(-2206f, 1530f, 481f)))), all(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true)))), vec3<bool>(all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), all(vec2<bool>(false, false)))), true, true));
    var var_1 = func_1(~35259i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-829f, var_0.c.a, var_0.c.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.a, -239f, -834f) * vec3<f32>(var_0.b.x, var_0.b.x, -1440f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1756f, var_0.b.x)) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-var_0.c.a), _wgslsmith_div_f32(var_0.b.x, var_0.b.x)))), var_0.d.x);
    var var_2 = vec2<f32>(_wgslsmith_div_f32(470f, _wgslsmith_f_op_f32(abs(var_1.a))), var_0.b.x);
    let var_3 = vec2<i32>(-global2[_wgslsmith_index_u32(82035u, 31u)], 0i);
    var_1 = var_0.c;
    var var_4 = Struct_2(!select(vec2<bool>(!var_0.d.x, false), vec2<bool>(var_0.a.x | var_0.a.x, select(false, var_0.a.x, var_0.a.x)), !(var_0.d.x & var_0.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 1000f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1379f, -459f), vec2<f32>(604f, 1227f), var_0.d.x)) * vec2<f32>(var_1.a, var_0.b.x)))), func_1(0i, vec3<f32>(-659f, _wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(394f, var_2.x)), _wgslsmith_div_f32(601f, var_0.b.x))), (_wgslsmith_f_op_f32(var_1.a + 791f) <= 861f) & var_0.d.x), vec3<bool>(any(!var_0.a), var_0.d.x, var_0.d.x));
    let var_5 = ~select(~(~vec3<u32>(4294967295u, var_4.c.b.x, 12824u)), vec3<u32>(_wgslsmith_mod_u32(~u_input.b.x, 4294967295u), var_0.c.b.x, 1u), !select(select(vec3<bool>(var_0.a.x, var_0.a.x, true), vec3<bool>(var_4.a.x, true, var_0.a.x), var_0.d), !vec3<bool>(var_4.a.x, var_4.d.x, true), var_4.d));
    var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-154f, var_0.c.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, var_2.x), vec2<f32>(var_2.x, -548f)) + _wgslsmith_f_op_vec2_f32(var_0.b - vec2<f32>(var_2.x, 512f))))), !var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_mult_i32(~u_input.a.x, countOneBits(global2[_wgslsmith_index_u32(8499u, 31u)])) ^ _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(1u, 31u)], var_3.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_4.c.a)))), -549f, var_0.a.x)));
}

