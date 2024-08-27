struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<u32>, 23>;

var<private> global2: Struct_2;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = global2.d.b.xxw;
    let var_1 = -886f;
    let var_2 = Struct_2(194f, global2.c, global2.c, Struct_1(1692f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(global2.b.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 333f, 974f, 754f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 615f)) + vec2<f32>(-932f, 1000f)))));
    let var_3 = all(select(!vec2<bool>(true, global2.c.b.x > var_1), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))));
    let var_4 = min(abs(u_input.d >> ((1u & select(u_input.d, 54565u, true)) % 32u)), u_input.d);
    return _wgslsmith_f_op_f32(abs(-1000f));
}

fn func_2() -> u32 {
    global2 = Struct_2(global2.b.c.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.c.x) * -703f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.d.b), vec4<f32>(global2.c.b.x, -272f, _wgslsmith_f_op_f32(func_3(485f)), _wgslsmith_f_op_f32(func_3(-927f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 766f)), global2.b, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.c.c.x)), _wgslsmith_f_op_f32(-global2.d.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2225f, 1068f, global2.a, global2.a)))))), global2.c.c));
    global0 = global2.a >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-102f - _wgslsmith_div_f32(global2.d.b.x, -1446f)) * -701f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.b.a - -552f), _wgslsmith_f_op_f32(f32(-1f) * -578f)))));
    let var_0 = Struct_3(global2.d.c.x, Struct_1(_wgslsmith_f_op_f32(-global2.b.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global2.d.b, global2.b.b, select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.a, global2.a, global2.b.c.x, 1409f)), vec4<f32>(global2.d.b.x, global2.c.a, -506f, global2.a)))), global2.c.b.ww), Struct_2(-478f, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1366f), -1689f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.c.x, global2.a, global2.c.c.x, global2.d.c.x) - global2.c.b), _wgslsmith_f_op_vec4_f32(global2.b.b * global2.b.b))), _wgslsmith_f_op_vec2_f32(global2.c.c + _wgslsmith_f_op_vec2_f32(round(global2.c.c)))), global2.b, global2.d), global2.d);
    var var_1 = vec4<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.e, reverseBits(u_input.b)) >> (u_input.d % 32u), -2147483647i, ~(-(u_input.b ^ -35764i))) << (~(~max(countOneBits(vec4<u32>(22764u, u_input.d, 47674u, 20122u)), vec4<u32>(0u, 4294967295u, 4294967295u, 88953u) >> (vec4<u32>(1u, 0u, u_input.d, u_input.d) % vec4<u32>(32u)))) % vec4<u32>(32u));
    let var_2 = max(~vec4<u32>((u_input.d & u_input.d) | 31183u, 49052u, firstLeadingBit(~0u), ~(8312u << (u_input.d % 32u))), vec4<u32>(max(0u, ~0u), firstTrailingBit(126396u), 0u, min(u_input.d, u_input.d)));
    return 92701u;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(select(1u, u_input.d, arg_0), 37366u, u_input.d ^ u_input.d, ~4294967295u)), ~vec4<u32>(u_input.d, ~func_2(), u_input.d, u_input.d), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(countOneBits(select(vec4<u32>(u_input.d, u_input.d, u_input.d, 27624u), vec4<u32>(11422u, u_input.d, u_input.d, u_input.d), arg_0)), reverseBits(max(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<u32>(4294967295u, u_input.d, u_input.d, 72614u)))), select(~u_input.d, u_input.d << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 54316u, 604u), vec3<u32>(0u, u_input.d, u_input.d)) % 32u), arg_0 | arg_0), ~u_input.d));
    global2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - arg_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 + global2.b.c.x), _wgslsmith_f_op_f32(-global2.c.a))))), global2.b, global2.c, global2.d);
    var_0 = vec4<u32>(~u_input.d, 4294967295u, u_input.d, select(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.d, var_0.x), vec4<u32>(0u, var_0.x, var_0.x, 4294967295u)), u_input.d, !all(vec3<bool>(arg_0, arg_0, true)))) & select(~vec4<u32>(0u, _wgslsmith_div_u32(4294967295u, var_0.x), ~var_0.x, 135038u), ~(~(~vec4<u32>(0u, 4294967295u, 0u, var_0.x))), any(select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0), false), vec3<bool>(arg_0, arg_0, false), any(vec2<bool>(arg_0, arg_0)))));
    var var_1 = _wgslsmith_div_vec4_u32(~select(abs(~vec4<u32>(91512u, u_input.d, 1u, 4294967295u)), vec4<u32>(48165u, _wgslsmith_div_u32(1u, u_input.d), firstTrailingBit(var_0.x), 48455u), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(true, true, true, arg_0), vec4<bool>(true, true, true, arg_0), arg_0), select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(false, true, false, true), vec4<bool>(false, arg_0, false, true)))), max(~firstTrailingBit(~vec4<u32>(4294967295u, u_input.d, var_0.x, var_0.x)), ~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 37695u, var_0.x, 18661u), vec4<u32>(var_0.x, var_0.x, var_0.x, 0u)))));
    var_0 = _wgslsmith_clamp_vec4_u32(firstTrailingBit(firstTrailingBit(~vec4<u32>(var_1.x, 0u, 66193u, 64369u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(0u, 180u, 4294967295u, 17506u), ~vec4<u32>(30087u, 0u, 1u, u_input.d)) % vec4<u32>(32u))), vec4<u32>(31271u, countOneBits(abs(~52623u)), ~reverseBits(1u), _wgslsmith_mod_u32(~var_0.x & var_1.x, u_input.d >> (4294967295u % 32u))), vec4<u32>(var_0.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 44803u, 92878u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(3527u, 4294967295u, 38538u, var_0.x), vec4<u32>(1u, u_input.d, var_1.x, u_input.d))), 12296u >> (_wgslsmith_dot_vec2_u32(var_0.zz, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, var_1.x), var_0.yw)) % 32u), 1u));
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = Struct_3(2135f, arg_0.c, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.d.a))), -730f), arg_0.d, Struct_1(-466f, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, 742f, -1000f, arg_0.d.c.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-363f, 921f, 1631f, -1538f) + vec4<f32>(arg_0.c.b.x, global2.a, 136f, 779f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, -418f), arg_0.d.b.yz), vec2<f32>(arg_0.b.b.x, 836f)))), arg_0.c), arg_0.b);
    var var_2 = var_1;
    var var_3 = vec2<f32>(484f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-198f)))));
    var var_4 = var_1;
    return global2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(1297f, global2.d, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - global2.d.b.x)), global2.d, Struct_1(global2.a, global2.c.b, _wgslsmith_f_op_vec2_f32(global2.c.b.wy - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d.c.x, global2.c.b.x) * vec2<f32>(-650f, -458f)))), global2.c), global2.b);
    global2 = Struct_2(-1442f, global2.c, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1718f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global2.c.b - vec4<f32>(-196f, -538f, -475f, global2.c.b.x)), vec4<f32>(-1000f, var_0.c.d.c.x, 1067f, 662f), vec4<bool>(false, true, true, false))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.d.a, _wgslsmith_f_op_f32(-var_0.c.a)), var_0.d.c))), func_4(Struct_2(_wgslsmith_f_op_f32(-var_0.a), global2.c, Struct_1(_wgslsmith_f_op_f32(1000f - -1934f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, global2.d.c.x, -1010f, var_0.d.c.x) * vec4<f32>(-189f, var_0.a, 744f, var_0.a)), _wgslsmith_f_op_vec2_f32(-global2.d.b.yw)), Struct_1(_wgslsmith_f_op_f32(ceil(global2.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1375f, global2.c.c.x, 2090f, -754f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-212f, -549f)))), func_1(all(vec4<bool>(true, true, true, false)), -792f, vec4<i32>(~2147483647i, -u_input.c, -2147483647i, -4289i))));
    var var_1 = Struct_3(var_0.c.c.b.x, func_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2370f)), var_0.d, global2.d, var_0.b), true), var_0.c, global2.d);
    let var_2 = vec4<i32>(u_input.c, _wgslsmith_sub_i32(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-39926i, u_input.a.x, 2147483647i, u_input.b), vec4<i32>(1i, u_input.c, -13506i, 2147483647i))), -(~u_input.e)) << (1u % 32u), reverseBits(abs(~_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(21378i, -37484i)))), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i >> (u_input.d % 32u), u_input.b, 0i), -_wgslsmith_add_vec3_i32(vec3<i32>(-82808i, u_input.e, -46959i), vec3<i32>(1i, u_input.a.x, u_input.e)))));
    var var_3 = -1608f;
    var var_4 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1303f + 123f) + -138f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(step(global2.a, 132f))))), func_4(Struct_2(910f, global2.b, Struct_1(var_0.b.b.x, _wgslsmith_f_op_vec4_f32(var_1.d.b + vec4<f32>(var_1.b.c.x, -753f, var_0.a, -1476f)), _wgslsmith_f_op_vec2_f32(sign(var_1.b.c))), func_4(Struct_2(global2.d.c.x, var_0.d, var_1.d, Struct_1(global2.d.c.x, global2.b.b, vec2<f32>(1162f, 1062f))), false)), u_input.e < 1i), var_0.c, func_4(Struct_2(global2.b.b.x, global2.b, func_4(var_0.c, true), global2.c), any(vec3<bool>(true, true, true)) & false));
    var var_5 = var_0;
    global0 = !(!func_1(true, -484f, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, var_2.x, var_2.x, var_2.x), var_2)) && (global2.a < -1049f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0.d.b * global2.d.b))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.b.b.x, 514f, -1207f, -1064f), _wgslsmith_f_op_vec4_f32(floor(var_4.b.b))))) * var_0.d.b));
}

