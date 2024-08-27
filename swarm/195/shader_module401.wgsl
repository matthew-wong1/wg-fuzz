struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), Struct_3(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), Struct_3(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), Struct_3(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), Struct_3(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), Struct_3(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), Struct_3(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), Struct_3(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), Struct_3(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), Struct_3(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), Struct_3(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), Struct_3(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), Struct_3(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), Struct_3(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), Struct_3(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), Struct_3(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), Struct_3(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), Struct_3(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)), Struct_3(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), Struct_3(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), Struct_3(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), Struct_3(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), Struct_3(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), Struct_3(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), Struct_3(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)), Struct_3(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)));

var<private> global1: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(646f, 1000f, 1592f), vec3<f32>(1150f, 1000f, -964f), vec3<f32>(1000f, -117f, -483f), vec3<f32>(1000f, 878f, -1465f), vec3<f32>(-205f, 677f, 626f), vec3<f32>(-457f, 1189f, -1011f), vec3<f32>(1080f, 154f, 1042f), vec3<f32>(-294f, -1000f, -1040f), vec3<f32>(-264f, 1110f, -986f), vec3<f32>(1114f, 1040f, 1480f), vec3<f32>(509f, -986f, -2439f), vec3<f32>(1140f, -1628f, -709f), vec3<f32>(1195f, -1000f, -473f));

var<private> global2: array<Struct_2, 9>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_3) -> i32 {
    var var_0 = 1i;
    global1 = array<vec3<f32>, 13>();
    return _wgslsmith_dot_vec2_i32(-vec2<i32>(12902i, _wgslsmith_dot_vec4_i32(-u_input.a, vec4<i32>(arg_1.a, u_input.a.x, arg_1.a, -2147483647i) | vec4<i32>(u_input.a.x, arg_1.a, -39202i, arg_1.a))), u_input.a.yy);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec2<f32>) -> vec3<bool> {
    let var_0 = global0[_wgslsmith_index_u32(1u, 26u)];
    let var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(reverseBits(~(~vec4<u32>(41053u, 107831u, 50974u, 4294967295u))), vec4<u32>(firstTrailingBit(1u), _wgslsmith_mod_u32(abs(23697u), reverseBits(1u)), 21632u, ~(~1u)), select(~(~vec4<u32>(41614u, 113077u, 1u, 16997u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(var_0.a.x, u_input.a.x == arg_1.x, true, var_0.a.x))));
    let var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(253f * -1194f))), _wgslsmith_f_op_f32(arg_2.x * arg_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(-671f + _wgslsmith_f_op_f32(-1061f - 1750f)))) + arg_2.x));
    let var_3 = Struct_3(!var_0.b, var_0.b);
    var var_4 = abs(firstLeadingBit(20880i));
    return var_0.b.xzy;
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> f32 {
    global1 = array<vec3<f32>, 13>();
    let var_0 = _wgslsmith_div_u32(arg_0.c.a.x, reverseBits(arg_0.c.a.x ^ ~(~arg_0.c.a.x)));
    var var_1 = arg_0.b;
    var var_2 = !func_3(!(!select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, true, false))), vec2<i32>(func_2(!vec4<bool>(arg_1, arg_1, arg_1, true), Struct_2(40261i, arg_0.b, Struct_1(var_1.a), vec2<u32>(0u, var_1.a.x)), Struct_3(vec4<bool>(false, true, arg_1, true), vec4<bool>(arg_1, arg_1, false, false))), -35034i), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(765f, -1374f), vec2<f32>(-104f, -105f), vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1026f, -581f))))));
    global0 = array<Struct_3, 26>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-650f, -1739f)))))) + _wgslsmith_f_op_f32(2930f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-704f, 557f)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-891f - -932f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 26>();
    var var_0 = _wgslsmith_add_i32(reverseBits(u_input.a.x), 1i);
    global0 = array<Struct_3, 26>();
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(29096u, 9u)], false)), 1023f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-560f, -875f))))));
    global2 = array<Struct_2, 9>();
    var var_2 = Struct_1(vec4<u32>(abs(1u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 31491u), vec3<u32>(16379u, 27042u, 4294967295u)), ~4294967295u, 124735u, 9687u << (0u % 32u))), 4294967295u));
    let var_3 = vec2<u32>(var_2.a.x, var_2.a.x);
    let var_4 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~var_2.a >> (~vec4<u32>(var_3.x, 26261u, 4294967295u, var_3.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~91068u, ~var_2.a.x, ~0u, min(var_2.a.x, var_4)), ~var_2.a, abs(~vec4<u32>(29815u, 4294967295u, var_2.a.x, 20235u))), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, false, _wgslsmith_f_op_f32(-1187f - -931f) < _wgslsmith_f_op_f32(floor(-568f)))), _wgslsmith_f_op_vec3_f32(step(global1[_wgslsmith_index_u32(firstLeadingBit(1u), 13u)], _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(~(var_2.a.x << (var_3.x % 32u)), 13u)]))), vec2<u32>(~0u, reverseBits(var_4)), abs(reverseBits(abs(~vec2<u32>(51023u, 17947u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-890f * -1351f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1001f, 643f)) * _wgslsmith_f_op_f32(f32(-1f) * -219f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-811f, 1733f)))));
}

