struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_3,
    d: vec3<i32>,
}

struct Struct_5 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(47593u, 1u), vec2<u32>(29765u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 8970u), vec2<u32>(27854u, 0u), vec2<u32>(57537u, 11151u), vec2<u32>(9667u, 4294967295u), vec2<u32>(1u, 63413u), vec2<u32>(1u, 98412u), vec2<u32>(104044u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(55647u, 15459u), vec2<u32>(24486u, 60083u), vec2<u32>(41351u, 1u), vec2<u32>(48950u, 67061u), vec2<u32>(29873u, 4294967295u), vec2<u32>(11117u, 0u), vec2<u32>(26551u, 1u), vec2<u32>(42995u, 4294967295u));

var<private> global1: Struct_4;

var<private> global2: array<vec3<i32>, 7>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: f32) -> f32 {
    global2 = array<vec3<i32>, 7>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - 1188f), arg_3, _wgslsmith_f_op_f32(arg_3 * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3))) - arg_3));
    var var_1 = -43628i;
    global0 = array<vec2<u32>, 19>();
    global0 = array<vec2<u32>, 19>();
    return var_0.x;
}

fn func_3(arg_0: f32) -> Struct_3 {
    let var_0 = all(select(!select(select(vec4<bool>(true, false, true, global1.a.c.x), vec4<bool>(false, true, global1.a.b, true), vec4<bool>(true, global1.a.b, global1.a.b, false)), vec4<bool>(false, global1.c.b, true, global1.c.b), select(vec4<bool>(true, true, global1.c.c.x, false), vec4<bool>(global1.a.c.x, global1.a.b, global1.c.b, true), vec4<bool>(true, true, true, false))), !(!select(vec4<bool>(false, global1.a.b, global1.a.b, global1.a.c.x), vec4<bool>(true, false, true, false), vec4<bool>(false, global1.a.c.x, global1.c.b, global1.a.c.x))), vec4<bool>(true, !global1.a.c.x, global1.a.c.x, global1.a.b)));
    var var_1 = Struct_1(vec4<i32>(global1.b.x, ~(u_input.a.x >> (u_input.b.x % 32u)) & -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, 8299i), vec4<i32>(u_input.a.x, 49105i, u_input.a.x, 1i)), u_input.a.x ^ firstLeadingBit(select(-25317i, 39198i, global1.a.c.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, global1.b.x, -3718i, global1.d.x), abs(vec4<i32>(global1.b.x, global1.d.x, u_input.a.x, 2147483647i))), vec4<i32>(27246i, u_input.a.x, global1.d.x, global1.d.x) << (vec4<u32>(1u, u_input.b.x, 4294967295u, 1u) % vec4<u32>(32u)))));
    var var_2 = global1.a;
    var var_3 = firstTrailingBit(-1i);
    let var_4 = global1.a.a;
    return Struct_3(min(~1u, ~min(_wgslsmith_add_u32(var_2.a, 111358u), 54558u)), select(true, false, global1.a.b) | (min(var_1.a.x, ~u_input.a.x) <= var_1.a.x), var_2.c);
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = true;
    return func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(global1.a.c.x, global2[_wgslsmith_index_u32(43824u, 7u)], Struct_2(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, global1.b.x, -14263i)), global1.c.c), -1018f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(func_1(), u_input.a.zy, func_1(), select(abs(abs(global2[_wgslsmith_index_u32(u_input.b.x, 7u)])) & vec3<i32>(u_input.a.x, -2147483647i, 13718i), reverseBits(_wgslsmith_mult_vec3_i32(global2[_wgslsmith_index_u32(u_input.b.x ^ u_input.b.x, 7u)], abs(u_input.a))), true));
    let var_0 = Struct_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(908f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(417f + 592f))), -656f)), (firstLeadingBit(func_3(-502f).a) & 53749u) < _wgslsmith_mod_u32(0u, u_input.b.x));
    var var_1 = ~firstTrailingBit(vec2<u32>(9547u, global1.a.a));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(any(select(vec4<bool>(true, global1.a.b, global1.a.c.x, global1.c.b), vec4<bool>(var_0.b, true, false, false), vec4<bool>(false, global1.c.c.x, false, global1.a.b))), global1.d, Struct_2(Struct_1(vec4<i32>(global1.d.x, global1.d.x, -6200i, u_input.a.x)), select(vec3<bool>(var_0.b, true, false), vec3<bool>(true, global1.c.c.x, global1.a.b), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))))));
    var var_3 = var_1.x;
    let var_4 = false & !select(var_0.b, true, true);
    let var_5 = vec2<f32>(var_0.a, var_0.a);
    var var_6 = Struct_2(Struct_1(vec4<i32>(-2147483647i, ~global1.d.x & ~global1.d.x, -(u_input.a.x ^ 1i), _wgslsmith_div_i32(-2147483647i, ~2147483647i))), vec3<bool>(true, true, all(func_1().c.yz)));
    var var_7 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_5))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(true, global2[_wgslsmith_index_u32(1u, 7u)], Struct_2(var_6.a, vec3<bool>(false, false, false)), var_0.a)), var_5.x) - vec2<f32>(_wgslsmith_f_op_f32(min(648f, var_0.a)), -2057f))), var_5));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(global1.a.a, 19u)], vec3<i32>(39294i, (i32(-1i) * -32999i) ^ (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global1.b.x, 1i), vec3<i32>(var_6.a.a.x, -2983i, -16655i)) & abs(0i)), u_input.a.x), ((_wgslsmith_mult_u32(var_1.x, 33770u) << ((4294967295u & var_1.x) % 32u)) << (min(~var_1.x, 0u) % 32u)) ^ _wgslsmith_dot_vec2_u32(~countOneBits(global0[_wgslsmith_index_u32(global1.a.a, 19u)]), ~u_input.b.xz), var_6.a.a.yzy >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, abs(global1.a.a), 703u | global1.c.a), reverseBits(u_input.b ^ vec3<u32>(0u, 30027u, 30821u))) % vec3<u32>(32u)), ~59937i);
}

