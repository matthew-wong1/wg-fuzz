struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(vec2<u32>(countOneBits(4294967295u), 15754u));
    return 4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> bool {
    let var_0 = 4294967295u;
    global0 = array<Struct_1, 18>();
    var var_1 = Struct_1(firstTrailingBit(~(~vec2<u32>(1u, 62688u))));
    let var_2 = func_3();
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(trunc(1156f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1397f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -569f))))), 1f);
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<bool>(!(!(u_input.c.x >= 60289i) || (true & func_2(Struct_1(u_input.e.yx), Struct_1(u_input.e.xy), vec3<bool>(false, false, false)))), all(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false))), all(select(vec4<bool>(all(vec3<bool>(true, true, false)), true, false, select(true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, all(vec4<bool>(false, false, true, false))))));
    var var_1 = ~u_input.b;
    var var_2 = Struct_1(u_input.e.yz);
    var var_3 = Struct_1(var_2.a);
    var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~firstLeadingBit(24111u), 1u, ~(~u_input.b)) | ~(~(~u_input.e)), (u_input.e << ((vec3<u32>(u_input.e.x, var_3.a.x, var_2.a.x) | ~u_input.e) % vec3<u32>(32u))) | firstLeadingBit(u_input.e));
    return Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(74432u, 1u), 1u), firstLeadingBit(firstTrailingBit(u_input.e.yy))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: i32) -> Struct_1 {
    var var_0 = func_1();
    let var_1 = Struct_1(countOneBits(u_input.e.yz));
    global0 = array<Struct_1, 18>();
    let var_2 = var_1;
    var_0 = var_2;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.e.yy);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.a.x, _wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(36606u, 1u, 20842u, 24590u), vec4<u32>(u_input.b, 20598u, var_0.a.x, var_0.a.x)), ~vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 0u)))) ^ ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.a, var_0.a), u_input.e.zy | var_0.a)), 18u)];
    global0 = array<Struct_1, 18>();
    var var_2 = func_4(4294967295u, func_1(), vec4<u32>(reverseBits(_wgslsmith_add_u32(1u, _wgslsmith_div_u32(59471u, u_input.e.x))), ~firstLeadingBit(var_0.a.x), var_0.a.x, firstLeadingBit(select(62573u, 54098u, true))), _wgslsmith_add_i32(u_input.a.x, u_input.c.x >> (reverseBits(16762u) % 32u)));
    var_1 = Struct_1(vec2<u32>(func_1().a.x, ~4294967295u));
    global0 = array<Struct_1, 18>();
    var_1 = func_4(u_input.e.x, global0[_wgslsmith_index_u32(24446u, 18u)], ~(~(~vec4<u32>(0u, 8774u, var_0.a.x, 4294967295u) & (vec4<u32>(var_1.a.x, 52537u, 10354u, 1u) >> (vec4<u32>(2275u, var_0.a.x, 47854u, 4294967295u) % vec4<u32>(32u))))), -1i);
    var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(func_3(), _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.e.x, 1u, var_2.a.x), reverseBits(u_input.e)), vec3<u32>(~u_input.e.x, func_4(var_0.a.x, global0[_wgslsmith_index_u32(0u, 18u)], vec4<u32>(52574u, 0u, u_input.b, 72884u), 1i).a.x, var_0.a.x))), 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(871f, 2291f, 875f, -786f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2236f - 974f), _wgslsmith_f_op_f32(1244f + 1896f), 364f, _wgslsmith_f_op_f32(f32(-1f) * -549f)), vec4<f32>(_wgslsmith_f_op_f32(select(148f, -1000f, true)), _wgslsmith_f_op_f32(trunc(-109f)), -2052f, _wgslsmith_f_op_f32(1223f + -646f)))), vec4<u32>(~0u, ~u_input.e.x, ~func_4(4294967295u, func_1(), vec4<u32>(1u, var_1.a.x, 0u, 27475u), 2147483647i).a.x, 21059u), select(~vec3<u32>(~var_2.a.x, ~61868u, ~7811u), _wgslsmith_sub_vec3_u32(vec3<u32>(14031u, _wgslsmith_mult_u32(var_2.a.x, var_2.a.x), ~var_1.a.x), ~(u_input.e ^ u_input.e)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), all(vec2<bool>(false, false))), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))))), countOneBits(vec3<u32>(var_1.a.x, firstLeadingBit(1u), ~_wgslsmith_add_u32(26511u, 0u))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2384f), _wgslsmith_f_op_f32(round(340f)))), _wgslsmith_f_op_f32(max(1084f, -685f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(374f)) - -884f), 2649f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1028f, 2359f, 1941f, -194f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-332f, 259f, 430f, 597f)))))));
}

