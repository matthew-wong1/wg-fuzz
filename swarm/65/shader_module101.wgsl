struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(-125f, 122f, 1007f, -718f, 628f, 1191f, -1000f, -1983f, -341f, 184f, 1082f, -905f, -174f, -203f, 1439f, 354f, -735f, 230f, -1000f, 844f, -371f, -155f, 733f, 929f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> vec3<bool> {
    return !vec3<bool>(all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true)), !any(vec3<bool>(true, true, true)), false);
}

fn func_2() -> Struct_1 {
    let var_0 = !select(!select(vec3<bool>(false, true, true), func_3(103f, Struct_2(Struct_1(0i), 452f, Struct_1(37008i), Struct_1(25126i), vec3<f32>(global0[_wgslsmith_index_u32(1u, 24u)], 2378f, 335f)), 12788u), func_3(-2150f, Struct_2(Struct_1(-7253i), global0[_wgslsmith_index_u32(5735u, 24u)], Struct_1(-16714i), Struct_1(2147483647i), vec3<f32>(global0[_wgslsmith_index_u32(87367u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)])), u_input.a.x)), select(func_3(_wgslsmith_f_op_f32(-1008f + 1000f), Struct_2(Struct_1(-2147483647i), global0[_wgslsmith_index_u32(u_input.a.x, 24u)], Struct_1(0i), Struct_1(-1i), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(18816u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)])), 52665u), vec3<bool>(true, true, true), u_input.a.x == 1u), vec3<bool>(true, true, true));
    var var_1 = Struct_2(Struct_1(-5921i), global0[_wgslsmith_index_u32(~(_wgslsmith_div_u32(~1u, _wgslsmith_sub_u32(u_input.a.x, 4445u)) ^ _wgslsmith_dot_vec4_u32(u_input.c >> (u_input.d % vec4<u32>(32u)), vec4<u32>(4294967295u, u_input.a.x, 8988u, 26046u))), 24u)], Struct_1(_wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_clamp_i32(~1i, 1i, i32(-1i) * -5687i))), Struct_1(-_wgslsmith_mod_i32(select(290i, 1i, true), 2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)], -443f), vec3<f32>(1123f, 1957f, 1000f))))))));
    let var_2 = Struct_2(var_1.c, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(min(u_input.d.x, 1u), 24u)]), Struct_1(-(i32(-1i) * -27420i)), var_1.a, var_1.e);
    return Struct_1(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(var_2.c.a, 1i)), abs(vec2<i32>(var_1.c.a, 42i)))), abs(countOneBits(countOneBits(vec2<i32>(var_1.d.a, var_1.a.a))))));
}

fn func_1() -> vec3<bool> {
    let var_0 = (~vec3<i32>(1i, 1i, 1i) | (abs(vec3<i32>(1i, 1i, 1i)) << (_wgslsmith_mult_vec3_u32(abs(vec3<u32>(47828u, 1588u, u_input.a.x)), vec3<u32>(u_input.c.x, u_input.b.x, u_input.a.x)) % vec3<u32>(32u)))) & vec3<i32>(1i, 1i, 1i);
    var var_1 = Struct_2(func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(624f)) - _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.d.xw) << (~u_input.c.x % 32u), 24u)]))), func_2(), func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -979f, global0[_wgslsmith_index_u32(u_input.c.x, 24u)]) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], global0[_wgslsmith_index_u32(u_input.d.x, 24u)], global0[_wgslsmith_index_u32(9881u, 24u)]))))));
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.a.x, 14893u, 0u, u_input.c.x)), vec4<u32>(u_input.d.x, u_input.a.x, 14224u, u_input.c.x) << (reverseBits(u_input.b) % vec4<u32>(32u))), u_input.d) >> (72514u % 32u);
    var_1 = Struct_2(var_1.c, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.d), 24u)])), _wgslsmith_f_op_f32(-633f - _wgslsmith_f_op_f32(min(var_1.e.x, 698f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b - 734f))))), var_1.a, var_1.a, _wgslsmith_f_op_vec3_f32(-var_1.e));
    let var_3 = Struct_2(func_2(), _wgslsmith_f_op_f32(-792f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(var_1.e.x + -107f)))), Struct_1(2872i), func_2(), _wgslsmith_f_op_vec3_f32(max(var_1.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.x, var_1.e.x, var_1.e.x) * var_1.e)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1768f, -1000f, global0[_wgslsmith_index_u32(67484u, 24u)]) - var_1.e)))));
    return !vec3<bool>(func_2().a >= _wgslsmith_sub_i32(~var_0.x, firstLeadingBit(var_0.x)), true, !(!(-972f == global0[_wgslsmith_index_u32(var_2, 24u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!func_1()));
    global0 = array<f32, 24>();
    let var_1 = func_2();
    global0 = array<f32, 24>();
    var_0 = select(vec3<bool>(var_0.x, false, all(select(select(vec3<bool>(true, var_0.x, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, true, true)), func_3(-727f, Struct_2(Struct_1(var_1.a), 620f, Struct_1(1i), Struct_1(var_1.a), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 180f, -1243f)), 51723u)))), !vec3<bool>(true, !any(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), var_0.x), func_3(479f, Struct_2(Struct_1(-4634i), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(0u), 24u)]), var_1, var_1, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(43017u, 24u)]), _wgslsmith_f_op_f32(704f * -1159f))), u_input.b.x).x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.c.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(100f, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(1651u, 24u)]), vec3<f32>(-841f, 1051f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(24953u, 24u)], global0[_wgslsmith_index_u32(u_input.d.x, 24u)], -1430f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-868f, -435f, 537f) - vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 24u)], global0[_wgslsmith_index_u32(11212u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)])), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 2347f, -1085f)))))), -_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(var_1.a, 2147483647i, -74113i, var_1.a)), -vec4<i32>(var_1.a, var_1.a, var_1.a, 0i)) >> (countOneBits(_wgslsmith_clamp_vec4_u32(u_input.a, ~u_input.d, u_input.b)) % vec4<u32>(32u)), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_div_i32(1i, select(0i, var_1.a, var_0.x)) | reverseBits(countOneBits(var_1.a)), (i32(-1i) * -39129i) << (max(firstTrailingBit(u_input.b.x), u_input.d.x) % 32u)), (i32(-1i) * -2147483647i) ^ var_1.a);
}

