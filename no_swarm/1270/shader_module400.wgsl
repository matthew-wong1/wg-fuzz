struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-643f, -242f), vec2<i32>(47365i, 32887i), true);

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1() -> f32 {
    let var_0 = global1.b.x;
    return _wgslsmith_f_op_f32(sign(global1.a.x));
}

fn func_2(arg_0: Struct_1) -> f32 {
    return arg_0.a.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    global2 = select(select(vec3<bool>(false, true, true), !vec3<bool>(arg_0.c, true, global2.x | true), !select(all(vec2<bool>(arg_0.c, true)), false, !global1.c)), !(!(!(!vec3<bool>(global1.c, false, global1.c)))), any(select(global2.xy, !global2.zz, any(vec4<bool>(global2.x, true, true, global1.c)))));
    var var_0 = vec3<bool>(u_input.d == ~u_input.d, global1.c, any(!select(select(vec4<bool>(true, true, global1.c, global2.x), vec4<bool>(arg_0.c, global1.c, global1.c, true), vec4<bool>(global1.c, global1.c, global1.c, false)), select(vec4<bool>(false, global2.x, false, false), vec4<bool>(arg_0.c, false, global1.c, true), arg_0.c), true)));
    var var_1 = vec3<bool>(!(4294967295u != _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 66713u, u_input.c), vec3<u32>(47899u, 1u, 43065u))), arg_0.c, true);
    var_0 = !select(select(select(select(vec3<bool>(global1.c, false, global1.c), vec3<bool>(false, var_0.x, true), vec3<bool>(true, false, global2.x)), !vec3<bool>(true, var_0.x, true), select(vec3<bool>(false, var_0.x, var_1.x), vec3<bool>(arg_0.c, true, arg_0.c), vec3<bool>(true, true, var_1.x))), vec3<bool>(arg_0.c, false, all(vec3<bool>(true, var_1.x, var_0.x))), !all(vec3<bool>(true, false, false))), vec3<bool>(var_0.x, all(vec4<bool>(true, false, global1.c, false)), true), select(!(!vec3<bool>(arg_0.c, global1.c, true)), vec3<bool>(false, var_1.x, global1.c), vec3<bool>(all(vec4<bool>(true, var_0.x, global1.c, arg_0.c)), true, 1805f < arg_0.a.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1060f, global1.a.x, global1.a.x));
    return Struct_1(global1.a, global1.b, false);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> vec4<u32> {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(-237f)), -733f), ~arg_1.b, any(!(!global2.yz)));
    var_0 = Struct_1(arg_0.a, vec2<i32>(global1.b.x, arg_0.b.x), true);
    var var_1 = -((-(41676i & global1.b.x) | countOneBits(5330i)) >> (u_input.b.x % 32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(arg_1)), _wgslsmith_f_op_f32(1113f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1809f - arg_1.a.x)))));
    var var_3 = func_3(Struct_1(var_0.a, arg_0.b, false), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-417f, -1000f, -143f) * vec3<f32>(-144f, arg_0.a.x, 1366f))) + _wgslsmith_div_vec3_f32(vec3<f32>(-975f, 207f, global1.a.x), vec3<f32>(arg_0.a.x, -1546f, arg_1.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(566f, _wgslsmith_f_op_f32(-1017f * arg_3), _wgslsmith_f_op_f32(round(arg_0.a.x)))))));
    return firstTrailingBit(vec4<u32>(~u_input.b.x, ~_wgslsmith_div_u32(19922u, u_input.b.x), 1u, u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_3(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(global1.a, global1.a)))), u_input.a, global1.c), vec3<f32>(global1.a.x, -2380f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(func_2(Struct_1(vec2<f32>(-1253f, global1.a.x), global1.b, global1.c)))))), Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a), -global1.b, all(vec4<bool>(global1.c, global1.c, !global2.x, global2.x))), !(!global2.x), -578f);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a), max(u_input.a, vec2<i32>(global1.b.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-37277i, 0i, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 40152i, global1.b.x), vec3<i32>(global1.b.x, 76926i, 2147483647i)), _wgslsmith_mod_i32(u_input.a.x, global1.b.x)))), true);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1401f, -142f) - vec2<f32>(861f, -681f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a - _wgslsmith_div_vec2_f32(global1.a, var_1.a)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -222f)))))), u_input.a, global2.x);
    var var_3 = var_1;
    global0 = ~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b);
    var var_4 = abs(countOneBits(~vec4<i32>(1i, var_3.b.x, u_input.a.x, 32228i) >> ((u_input.b & vec4<u32>(var_0.x, 1u, var_0.x, 1u)) % vec4<u32>(32u))));
    let var_5 = Struct_1(vec2<f32>(1f, 1f), select(vec2<i32>(var_4.x, _wgslsmith_mult_i32(~25813i, u_input.a.x & 18086i)), var_4.zz, !(-1456f != _wgslsmith_div_f32(-1000f, var_1.a.x))), -12862i < var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.wxz, ~var_2.b, firstLeadingBit(global1.b.x), -(~(_wgslsmith_mult_i32(var_2.b.x, 4759i) & global1.b.x)));
}

