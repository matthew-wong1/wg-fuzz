struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(34290u, 103912u, 4294967295u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(1u, 34022u, 78405u), vec3<u32>(1u, 17662u, 101135u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 1008u, 1u));

var<private> global1: bool = true;

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<u32>(0u, 11873u, 4294967295u), 691f, true, vec2<i32>(41224i, 0i)), Struct_1(vec3<u32>(24125u, 35803u, 75882u), -1876f, true, vec2<i32>(51627i, 1i)), Struct_1(vec3<u32>(0u, 1u, 1u), -1413f, true, vec2<i32>(-52807i, 2147483647i)), Struct_1(vec3<u32>(4294967295u, 2518u, 1u), -1496f, true, vec2<i32>(-156i, -1i)));

var<private> global4: array<u32, 18> = array<u32, 18>(7184u, 12313u, 43840u, 12282u, 80047u, 16440u, 138902u, 1u, 25052u, 4294967295u, 12031u, 66482u, 22787u, 6670u, 52678u, 8999u, 8294u, 0u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_3) -> f32 {
    global1 = true;
    global0 = array<vec3<u32>, 6>();
    var var_0 = ~_wgslsmith_mult_u32(min(~(~29403u), arg_1), select(_wgslsmith_dot_vec3_u32(max(vec3<u32>(59665u, global4[_wgslsmith_index_u32(arg_1, 18u)], 1u), u_input.c.xzx), ~vec3<u32>(0u, 21609u, global4[_wgslsmith_index_u32(arg_1, 18u)])), ~743u, false));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(step(arg_3.b.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-185f, arg_3.b.c, arg_3.b.b, arg_3.b.a.x))), _wgslsmith_f_op_vec4_f32(max(arg_3.b.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3.b.b, arg_3.b.c, arg_3.b.a.x, arg_3.b.c), arg_3.b.a)))), vec4<bool>(true, arg_3.c, true, all(vec4<bool>(arg_0.x, false, false, false))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.b.c * _wgslsmith_f_op_f32(floor(arg_3.b.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -111f))), false)) * _wgslsmith_div_f32(_wgslsmith_div_f32(552f, -1126f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1687f * arg_3.b.a.x)))), -221f);
    let var_2 = global2.wzw;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-442f))));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_clamp_i32(32599i, firstLeadingBit(u_input.a.x), -32709i);
    global0 = array<vec3<u32>, 6>();
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(!global2.xzx, ~global4[_wgslsmith_index_u32(0u, 18u)], ~u_input.a, Struct_3(global2.x, Struct_2(vec4<f32>(-134f, 1948f, -1453f, -831f), -180f, -501f), true))), _wgslsmith_f_op_f32(f32(-1f) * -568f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1289f, 509f)) - _wgslsmith_f_op_f32(f32(-1f) * -654f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1372f)), -176f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1544f - 496f))), 588f, 1000f);
    var_0 = _wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, 40863i, 2147483647i), -u_input.d), -abs(u_input.d.x));
    var_0 = -(~(40526i ^ -u_input.b));
    return Struct_3(!global2.x, Struct_2(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -520f)), var_1.a.x), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.a.x, 138f)), 565f) <= _wgslsmith_f_op_f32(-var_1.b)));
}

fn func_1() -> Struct_3 {
    global4 = array<u32, 18>();
    global2 = vec4<bool>(global2.x, !global2.x, global2.x, all(select(vec3<bool>(select(true, global2.x, global2.x), global2.x, global2.x), select(!global2.wwz, global2.zzy, vec3<bool>(global2.x, false, true)), global2.zxz)));
    var var_0 = func_2();
    global4 = array<u32, 18>();
    global0 = array<vec3<u32>, 6>();
    return Struct_3(false, func_2().b, global2.x);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2) -> i32 {
    let var_0 = u_input.b;
    var var_1 = min(global4[_wgslsmith_index_u32(~(firstLeadingBit(4294967295u) << (~u_input.c.x % 32u)), 18u)], ~1u) & (arg_1 >> (_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(1u, 25668u, 4676u, 41503u)), 1u) % 32u));
    var var_2 = arg_0.a;
    var var_3 = arg_0;
    var var_4 = !select(select(select(vec4<bool>(global2.x, false, false, false), select(vec4<bool>(var_3.c, var_3.a, arg_0.a, false), vec4<bool>(false, true, global2.x, false), vec4<bool>(true, arg_0.a, arg_0.c, false)), false), select(vec4<bool>(true, true, arg_0.a, false), !vec4<bool>(var_3.a, true, var_3.c, true), !vec4<bool>(true, true, arg_0.a, true)), vec4<bool>(arg_0.c && false, all(vec4<bool>(false, true, false, arg_0.a)), global2.x, var_3.a)), vec4<bool>(true, var_3.b.a.x <= _wgslsmith_f_op_f32(var_3.b.b - 268f), var_3.a, var_3.a & !arg_0.c), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.c - 287f))) > _wgslsmith_f_op_f32(func_3(vec3<bool>(global2.x, var_3.c, true), ~0u, select(vec3<i32>(-1i, var_0, var_0), u_input.a, true), arg_0)));
    return ~var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_1(), _wgslsmith_dot_vec2_u32(min(max(vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 18u)], u_input.c.x), vec2<u32>(global4[_wgslsmith_index_u32(u_input.c.x, 18u)], global4[_wgslsmith_index_u32(u_input.c.x, 18u)])), vec2<u32>(1u, 12694u)), u_input.c.zy), Struct_2(vec4<f32>(-810f, -1012f, 379f, -343f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(825f * 107f), func_2().b.c)), _wgslsmith_f_op_f32(1288f - _wgslsmith_f_op_f32(min(-1000f, 2008f))))), -287f, ~(-2147483647i));
}

