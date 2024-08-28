struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(-1i, vec4<u32>(1u, 72694u, 48853u, 36656u), -469f, vec3<i32>(7004i, 42587i, -1i)), Struct_1(2147483647i, vec4<u32>(0u, 40067u, 0u, 65136u), 313f, vec3<i32>(23967i, 60899i, 0i)), Struct_1(18217i, vec4<u32>(3124u, 4294967295u, 1u, 1u), 379f, vec3<i32>(-9325i, 2147483647i, 34605i)), Struct_1(0i, vec4<u32>(0u, 0u, 3540u, 60137u), 1341f, vec3<i32>(2147483647i, -20991i, 2147483647i)), Struct_1(2147483647i, vec4<u32>(4294967295u, 17382u, 0u, 12677u), -1891f, vec3<i32>(0i, -310i, -1i)), Struct_1(2147483647i, vec4<u32>(31888u, 1u, 4294967295u, 13747u), -260f, vec3<i32>(7440i, -1i, -1i)), Struct_1(7251i, vec4<u32>(0u, 1u, 8845u, 1u), 1000f, vec3<i32>(1i, 15233i, 39278i)), Struct_1(i32(-2147483648), vec4<u32>(45497u, 13343u, 1u, 0u), 531f, vec3<i32>(8644i, -21898i, -39988i)), Struct_1(-1i, vec4<u32>(11686u, 0u, 0u, 1u), 1000f, vec3<i32>(-1i, -1i, 2147483647i)), Struct_1(-1i, vec4<u32>(4294967295u, 4294967295u, 1u, 0u), 241f, vec3<i32>(47866i, -1i, 16865i)), Struct_1(2147483647i, vec4<u32>(1u, 4294967295u, 59378u, 0u), -1026f, vec3<i32>(0i, 1i, 25022i)), Struct_1(2147483647i, vec4<u32>(1u, 4294967295u, 34955u, 4294967295u), -864f, vec3<i32>(-7423i, -5256i, 48822i)), Struct_1(-65524i, vec4<u32>(0u, 1u, 92196u, 0u), -483f, vec3<i32>(1i, -1i, -19965i)), Struct_1(2147483647i, vec4<u32>(0u, 44574u, 0u, 1u), 1395f, vec3<i32>(0i, -10321i, i32(-2147483648))), Struct_1(-29476i, vec4<u32>(121095u, 4294967295u, 1u, 1u), -696f, vec3<i32>(1i, 5937i, 10841i)));

var<private> global1: bool;

var<private> global2: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = ~arg_2.d.xz;
    return _wgslsmith_f_op_f32(floor(-347f));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: f32) -> f32 {
    let var_0 = abs(u_input.a >> (_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(122547u, 74500u, 0u), arg_2) % 32u));
    var var_1 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1667f)) - arg_3)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3)) + arg_3) * 234f) * arg_3));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(func_3(countOneBits(1i), (false || arg_0) && (u_input.a > 1i), firstLeadingBit(~30302u), _wgslsmith_f_op_f32(func_2(_wgslsmith_div_f32(-748f, -2579f), arg_0, Struct_1(0i, vec4<u32>(0u, 93511u, 43819u, 15396u), -1000f, vec3<i32>(u_input.a, u_input.a, 19524i)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-228f, 1164f)))), 419f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(568f, -610f)))));
    global2 = false;
    global0 = array<Struct_1, 15>();
    var var_1 = abs(vec3<u32>(4294967295u, min(_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 11306u, 4294967295u), 111670u), ~(~4294967295u)), ~(~abs(1u))));
    let var_2 = vec4<bool>(arg_0, any(!vec4<bool>(arg_0, any(vec4<bool>(true, false, arg_0, arg_0)), arg_0, true)), !(_wgslsmith_f_op_f32(f32(-1f) * -1462f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)) - _wgslsmith_f_op_f32(727f * -1069f))), arg_0);
    return Struct_1(u_input.a, ~vec4<u32>(0u, reverseBits(~var_1.x), var_1.x, ~_wgslsmith_sub_u32(4159u, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1681f), select(vec3<i32>(firstTrailingBit(reverseBits(u_input.a)), 2147483647i, u_input.a), firstTrailingBit(countOneBits(vec3<i32>(-2147483647i, 58873i, -29208i))), !vec3<bool>(any(var_2.zx), true == var_2.x, any(var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(max(0u, 0u), 23418u, 73695u), vec3<u32>(1u, 1u, 1u)) >> (40950u % 32u)), 15u)];
    var_0 = func_1(true);
    global0 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(-min(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, 0i, var_0.d.x, var_0.a), -vec4<i32>(var_0.d.x, 1i, -1i, -2147483647i)), vec4<i32>(firstTrailingBit(-34537i), u_input.a, var_0.d.x, abs(var_0.a))), var_0.c, _wgslsmith_mult_u32(var_0.b.x ^ (59151u & _wgslsmith_clamp_u32(4294967295u, var_0.b.x, var_0.b.x)), _wgslsmith_mult_u32(41381u, var_0.b.x)), 1u & var_0.b.x, _wgslsmith_div_u32(var_0.b.x, var_0.b.x));
}

