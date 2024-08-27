struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<f32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(-arg_1.d.b.a.d)) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-984f, arg_1.d.b.a.a)))), arg_0.d.b.a.a));
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_2.x))));
    var_1 = u_input.a.x;
    var var_3 = Struct_3(select(arg_0.d.a, !arg_1.d.a, arg_0.d.a.x), arg_1.d.b, reverseBits(max(min(arg_0.d.c, vec4<u32>(arg_0.d.b.a.b, 15477u, 1u, u_input.a.x)), vec4<u32>(4294967295u, 16589u, arg_1.c, 0u)) | ~(arg_0.d.c << (vec4<u32>(1u, arg_0.d.c.x, arg_0.d.c.x, 20166u) % vec4<u32>(32u)))));
    return reverseBits(_wgslsmith_mult_vec4_u32(reverseBits(arg_0.d.c), ~abs(~arg_1.d.c)));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: vec2<bool>, arg_3: vec4<u32>) -> i32 {
    var var_0 = ~vec2<u32>(arg_3.x, ~1u);
    var_0 = ~select(~vec2<u32>(abs(32941u), ~var_0.x), u_input.a, vec2<bool>(!(arg_2.x & arg_1), arg_1 | arg_2.x));
    var var_1 = Struct_3(!(!select(select(vec4<bool>(arg_2.x, false, arg_2.x, false), vec4<bool>(arg_1, false, true, arg_2.x), false), select(vec4<bool>(false, arg_1, arg_2.x, true), vec4<bool>(arg_1, arg_2.x, arg_1, arg_2.x), vec4<bool>(false, true, true, true)), true)), Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-820f)), _wgslsmith_f_op_f32(floor(-772f))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_3.x, u_input.a.x, 9607u), arg_3) << (countOneBits(arg_3.x) % 32u), false, -1719f)), arg_3);
    let var_2 = ~abs(1i);
    let var_3 = ~max(-2147483647i, -2147483647i);
    return var_2;
}

fn func_2() -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(428f, 3031f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-464f, 264f), vec2<f32>(533f, -316f))))), vec4<i32>(func_4(vec4<i32>(-1i) * -vec4<i32>(0i, -1i, 0i, -1i), false, !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), func_3(Struct_4(vec2<f32>(-593f, 1754f), vec4<i32>(2147483647i, 0i, -1i, 50432i), 4294967295u, Struct_3(vec4<bool>(true, true, true, false), Struct_2(Struct_1(1158f, u_input.a.x, true, -154f)), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x))), Struct_4(vec2<f32>(-596f, -987f), vec4<i32>(58868i, -2147483647i, 0i, 1884i), 4294967295u, Struct_3(vec4<bool>(true, true, true, false), Struct_2(Struct_1(677f, u_input.a.x, true, 320f)), vec4<u32>(28003u, 19590u, 4294967295u, u_input.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-264f, 1351f)))), _wgslsmith_div_i32(abs(31492i), max(func_4(vec4<i32>(2147483647i, 0i, -1i, -2147483647i), true, vec2<bool>(false, true), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), 75783i)), ~(~(-30316i) >> (firstLeadingBit(33069u) % 32u)), -countOneBits(-2147483647i)), 30626u, Struct_3(vec4<bool>(~u_input.a.x < u_input.a.x, false, _wgslsmith_f_op_f32(select(2016f, -638f, true)) > -262f, true), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1153f), ~u_input.a.x, true, -906f)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(12350u, 66366u, u_input.a.x, 1u)), ~(~vec4<u32>(u_input.a.x, 38320u, u_input.a.x, u_input.a.x)))));
    let var_1 = Struct_2(var_0.d.b.a);
    var var_2 = Struct_2(Struct_1(-528f, var_1.a.b, true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.d)))));
    var_2 = var_1;
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a.a))))), ~_wgslsmith_mult_u32(u_input.a.x, var_0.c ^ 4294967295u), 1i < (var_0.b.x | var_0.b.x), _wgslsmith_f_op_f32(exp2(var_0.a.x))));
    return _wgslsmith_f_op_f32(-var_1.a.d);
}

fn func_1() -> u32 {
    var var_0 = -3976f;
    let var_1 = Struct_1(-1079f, 74777u, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2()))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1028f, 775f))))));
    var_0 = 1982f;
    let var_2 = Struct_2(var_1);
    let var_3 = var_2;
    return max(9342u, abs(~abs(u_input.a.x)) >> (~(~u_input.a.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, !(~(~u_input.a.x) < u_input.a.x));
    var var_1 = vec3<u32>(u_input.a.x, max(u_input.a.x, ~79556u), 0u);
    let var_2 = func_1();
    var_1 = abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(7617u, var_2, var_2), vec3<u32>(min(var_1.x, var_2), max(0u, 15176u), func_1())) | vec3<u32>(func_3(Struct_4(vec2<f32>(-2170f, -187f), vec4<i32>(2738i, -1i, -2147483647i, -1i), 40564u, Struct_3(vec4<bool>(true, true, true, false), Struct_2(Struct_1(-218f, var_1.x, var_0.x, -651f)), vec4<u32>(var_2, var_2, 4294967295u, 0u))), Struct_4(vec2<f32>(-383f, 583f), vec4<i32>(23836i, -47869i, 2147483647i, 1i), var_1.x, Struct_3(vec4<bool>(true, true, true, false), Struct_2(Struct_1(-460f, var_2, var_0.x, 135f)), vec4<u32>(var_2, 4294967295u, 0u, u_input.a.x))), vec2<f32>(-1684f, 878f)).x, _wgslsmith_dot_vec3_u32(~vec3<u32>(11335u, 0u, var_2), countOneBits(vec3<u32>(76197u, u_input.a.x, var_1.x))), 0u));
    var_1 = ~vec3<u32>(~(~(~u_input.a.x)), _wgslsmith_sub_u32(1u, var_2), firstLeadingBit(var_2));
    var var_3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1970f - 784f)))), 1i, reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(0i, -15496i), _wgslsmith_mod_i32(1i, -1i)), ~min(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(8371i, 0i)))), vec2<i32>(select(1i, 43928i, var_0.x), 1i), abs(_wgslsmith_sub_i32(0i, 0i) >> (~countOneBits(u_input.a.x) % 32u)));
}

