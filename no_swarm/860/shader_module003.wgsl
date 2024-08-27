struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<i32> = vec3<i32>(1i, -1i, 0i);

var<private> global2: Struct_2 = Struct_2(Struct_1(1i, vec2<u32>(4294967295u, 4265u), 1558f, false), 1527f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = vec3<i32>(min(global2.a.a | _wgslsmith_mult_i32(1i, u_input.a.x), _wgslsmith_div_i32(20005i, reverseBits(global1.x))), global2.a.a, -global2.a.a);
    let var_1 = global2.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, -232f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a.c, 182f), vec2<f32>(421f, global2.a.c), vec2<bool>(var_1.d, false))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.b, -1000f)))))))));
    let var_3 = vec3<i32>(0i, abs(_wgslsmith_add_i32(max(var_0.x, -52324i) << (~var_1.b.x % 32u), ~u_input.a.x)), _wgslsmith_mult_i32(~(~var_0.x), global1.x) >> (1u % 32u));
    var var_4 = !select(!select(!vec2<bool>(var_1.d, false), select(vec2<bool>(var_1.d, false), vec2<bool>(false, var_1.d), var_1.d), any(vec4<bool>(var_1.d, false, true, true))), select(select(!vec2<bool>(false, var_1.d), vec2<bool>(var_1.d, false), true), select(select(vec2<bool>(global2.a.d, var_1.d), vec2<bool>(global2.a.d, var_1.d), true), vec2<bool>(true, true), vec2<bool>(true, true)), !(!vec2<bool>(var_1.d, var_1.d))), !(!any(vec2<bool>(false, var_1.d))));
    return ~1u;
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = func_3();
    let var_1 = _wgslsmith_dot_vec2_u32(~(~(~min(arg_3.b, arg_3.b))), ~arg_0.b.zz & vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0.b.x, 16341u), var_0), 0u >> (~4294967295u % 32u)));
    global2 = Struct_2(arg_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.c))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, -758f)))))));
    var var_2 = -329f;
    global0 = min(arg_0.b.x, countOneBits(min(~0u, ~8862u) << (arg_0.a.b.x % 32u)));
    return select(!(!(!select(vec3<bool>(true, arg_3.d, arg_3.d), vec3<bool>(true, global2.a.d, global2.a.d), arg_0.a.d))), vec3<bool>(true, ((32766u & arg_0.b.x) | ~global2.a.b.x) == arg_0.a.b.x, true), arg_0.a.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> Struct_3 {
    global2 = Struct_2(arg_0, -1000f);
    global1 = vec3<i32>(~(~(-arg_0.a)), -1i, -reverseBits(u_input.a.x) & -29190i) >> (abs(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(56154u, global2.a.b.x, arg_1.a.b.x), vec3<u32>(4294967295u, arg_1.a.b.x, 8903u)))) % vec3<u32>(32u));
    var var_0 = -(u_input.a.x | (~(-arg_2) & -2147483647i));
    let var_1 = 1965f;
    global0 = _wgslsmith_sub_u32(~1u, func_3());
    return Struct_3(global2.a, vec3<u32>(_wgslsmith_dot_vec4_u32(~min(vec4<u32>(global2.a.b.x, arg_1.a.b.x, 53094u, 58982u), vec4<u32>(global2.a.b.x, 35382u, 1u, 1u)), vec4<u32>(0u, arg_0.b.x, 1u, countOneBits(global2.a.b.x))), _wgslsmith_mult_u32(max(arg_1.a.b.x, arg_1.a.b.x) ^ firstLeadingBit(arg_0.b.x), select(~arg_1.a.b.x, global2.a.b.x, arg_0.d)), global2.a.b.x));
}

fn func_1() -> f32 {
    var var_0 = func_4(global2.a, Struct_2(global2.a, global2.a.c), 1198i, !any(func_2(Struct_3(Struct_1(global1.x, global2.a.b, global2.b, false), vec3<u32>(global2.a.b.x, 0u, 25434u)), 1772f, -1i, Struct_1(-1i, vec2<u32>(global2.a.b.x, 11327u), global2.a.c, global2.a.d))));
    let var_1 = ~17488i;
    let var_2 = vec3<u32>(_wgslsmith_div_u32(67327u, var_0.b.x), var_0.a.b.x, var_0.a.b.x);
    let var_3 = Struct_2(Struct_1(global1.x, var_0.a.b >> (vec2<u32>(44032u, ~var_2.x) % vec2<u32>(32u)), global2.a.c, func_2(func_4(Struct_1(-12874i, vec2<u32>(var_2.x, var_0.a.b.x), -386f, var_0.a.d), Struct_2(Struct_1(-1i, var_2.xy, var_0.a.c, var_0.a.d), global2.b), -2147483647i, !global2.a.d), global2.a.c, i32(-1i) * -1i, func_4(func_4(Struct_1(var_1, vec2<u32>(var_2.x, var_0.b.x), global2.a.c, false), Struct_2(global2.a, global2.a.c), 0i, var_0.a.d).a, Struct_2(Struct_1(2147483647i, vec2<u32>(6669u, var_2.x), global2.b, global2.a.d), var_0.a.c), var_1, var_0.a.d).a).x), -146f);
    let var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c, global2.a.c)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.b, 314f))))))))));
    return _wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(797f + -847f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global2.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.c - _wgslsmith_f_op_f32(round(global2.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 2710f)))))));
    let var_1 = _wgslsmith_add_u32(~_wgslsmith_mult_u32(~var_0.a.b.x, ~var_0.a.b.x) & _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0.a.b.x, 60628u, global2.a.b.x)), _wgslsmith_div_vec3_u32(vec3<u32>(23325u, 1u, 31104u), vec3<u32>(4294967295u, var_0.a.b.x, var_0.a.b.x))), abs(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(58645u, 22049u, 22443u), vec3<u32>(0u, 41331u, 59054u)))) & var_0.a.b.x);
    var var_2 = _wgslsmith_div_f32(var_0.a.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1()))));
    var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -268f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-167f * 1276f))));
    var_0 = Struct_2(Struct_1(countOneBits(_wgslsmith_mod_i32(var_0.a.a, -8106i)), firstLeadingBit(~global2.a.b & _wgslsmith_add_vec2_u32(global2.a.b, global2.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), global2.a.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yz, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -391f), var_0.a.c, _wgslsmith_f_op_f32(floor(297f))), -1616i);
}

