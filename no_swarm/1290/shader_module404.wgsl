struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(-20704i, 33079i, 21375i, 10688i, -29152i, -15150i, -34472i, 41687i, -6815i, -415i, -1i, 19695i, 0i, 5755i, 2147483647i, 13081i, 4425i, 9326i, 0i, 60981i, 29685i, 4361i, -1i, 1i, 2147483647i, 16576i, i32(-2147483648), -412i, 6607i, -1i, -59452i);

var<private> global1: i32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_1) -> u32 {
    var var_0 = 1i;
    global0 = array<i32, 31>();
    global0 = array<i32, 31>();
    global0 = array<i32, 31>();
    global1 = _wgslsmith_mod_i32(-u_input.b, abs(-arg_2.a.x));
    return arg_1.c.x;
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: f32) -> f32 {
    global1 = arg_1.a.d.a.x << (~reverseBits(u_input.c.x >> (arg_1.c.x % 32u)) % 32u);
    var var_0 = Struct_4(Struct_1(vec2<i32>(arg_1.a.d.a.x, arg_1.a.d.a.x)), -77080i, Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-16166i, arg_1.a.b.a.x), u_input.a << (u_input.c % vec2<u32>(32u))), -(~arg_1.a.c.a.x))), Struct_2(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_2.wxw, reverseBits(arg_2.zzz)), arg_2.zyy), Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(arg_1.a.b.a.x, global0[_wgslsmith_index_u32(4294967295u, 31u)])), _wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(1u, 31u)])))), Struct_1(arg_1.a.c.a), arg_1.a.b));
    global0 = array<i32, 31>();
    var var_1 = Struct_3(var_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-321f - arg_3)) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1083f + -767f))), arg_1.c << (~(vec3<u32>(4294967295u, 1u, 15362u) << (arg_1.c % vec3<u32>(32u))) % vec3<u32>(32u)), arg_1.d);
    var var_2 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -344f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.d.x))));
}

fn func_2() -> f32 {
    global1 = -_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -8463i, 92869i), vec3<i32>(0i, u_input.a.x, u_input.b)), select(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], global0[_wgslsmith_index_u32(u_input.e, 31u)], false)) & countOneBits(u_input.a.x), _wgslsmith_add_i32(-18835i, 2147483647i ^ (0i >> (u_input.c.x % 32u))));
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(26783u, func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-641f, 1024f, 679f) * vec3<f32>(1000f, 1038f, -520f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1172f, 887f, -647f) * vec3<f32>(1954f, 682f, -808f))), Struct_3(Struct_2(4294967295u, Struct_1(vec2<i32>(-7296i, global0[_wgslsmith_index_u32(0u, 31u)])), Struct_1(vec2<i32>(1528i, u_input.a.x)), Struct_1(vec2<i32>(-1i, 0i))), _wgslsmith_f_op_f32(func_3(511f, Struct_3(Struct_2(u_input.d, Struct_1(vec2<i32>(u_input.a.x, 0i)), Struct_1(u_input.a), Struct_1(vec2<i32>(u_input.a.x, u_input.b))), -460f, vec3<u32>(1u, u_input.d, 0u), vec4<f32>(-1000f, 1678f, 547f, -709f)), vec4<u32>(u_input.d, u_input.c.x, 4294967295u, 33588u), 1238f)), _wgslsmith_mod_vec3_u32(vec3<u32>(42999u, u_input.c.x, 1u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-601f, 1000f, -2147f, 380f))), Struct_1(u_input.a))), _wgslsmith_div_u32(reverseBits(0u), u_input.d)), 31u)];
    let var_1 = min(vec3<i32>(u_input.a.x, -_wgslsmith_clamp_i32(-1i, global0[_wgslsmith_index_u32(~1u, 31u)], ~(-1i)), _wgslsmith_add_i32(16372i, _wgslsmith_mod_i32(19031i, _wgslsmith_div_i32(13702i, global0[_wgslsmith_index_u32(60571u, 31u)])))), abs(~firstTrailingBit(-vec3<i32>(4752i, -56115i, 1i))));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1016f, 844f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-196f, -1645f)))))))));
    global0 = array<i32, 31>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -248f), 1666f));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: Struct_4) -> Struct_1 {
    var var_0 = any(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(false, all(vec4<bool>(false, true, false, true))), true || (reverseBits(arg_3.d.a) == max(arg_1, u_input.c.x))));
    let var_1 = vec2<u32>(~0u, arg_3.d.a);
    let var_2 = min(1i, abs(-36317i));
    var var_3 = arg_3;
    global1 = 20464i;
    return Struct_1(countOneBits(reverseBits(select(u_input.a, vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], -2147483647i), vec2<bool>(false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(4294967295u, ~_wgslsmith_mod_u32(0u, _wgslsmith_div_u32(func_1(vec3<f32>(1500f, -1877f, 732f), Struct_3(Struct_2(u_input.c.x, Struct_1(u_input.a), Struct_1(u_input.a), Struct_1(vec2<i32>(u_input.a.x, 17114i))), 253f, vec3<u32>(u_input.c.x, u_input.c.x, u_input.e), vec4<f32>(1103f, -1833f, 1637f, -699f)), Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(u_input.d, 31u)], global0[_wgslsmith_index_u32(u_input.e, 31u)]))), 89148u)), countOneBits(countOneBits(~u_input.c.x)));
    global1 = ~_wgslsmith_div_i32(2147483647i, 45843i);
    let var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 44658u, _wgslsmith_add_u32(4294967295u, ~4294967295u)), vec3<u32>(max(85690u, var_0.x) & 1u, ~(var_0.x ^ u_input.e), u_input.c.x & var_0.x)), var_0);
    var var_2 = Struct_2(var_1.x, func_4(-9078i, 35932u, _wgslsmith_f_op_f32(func_2()), Struct_4(Struct_1(_wgslsmith_sub_vec2_i32(u_input.a, u_input.a)), _wgslsmith_mult_i32(u_input.b, u_input.a.x) << (90678u % 32u), Struct_1(~u_input.a), Struct_2(u_input.c.x >> (u_input.e % 32u), Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(var_1.x, 31u)], -24509i)), Struct_1(u_input.a), Struct_1(vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.c.x, 31u)]))))), func_4(1i, firstTrailingBit(_wgslsmith_mod_u32(abs(4294967295u), 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(203f)) + -204f)), Struct_4(func_4(-2147483647i, 16119u, _wgslsmith_f_op_f32(f32(-1f) * -502f), Struct_4(Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(u_input.d, 31u)])), 30240i, Struct_1(u_input.a), Struct_2(33458u, Struct_1(u_input.a), Struct_1(u_input.a), Struct_1(u_input.a)))), 2147483647i, Struct_1(vec2<i32>(2147483647i, -1i)), Struct_2(firstLeadingBit(1u), Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(var_0.x, 31u)], -2147483647i)), func_4(u_input.a.x, var_0.x, -1245f, Struct_4(Struct_1(vec2<i32>(u_input.a.x, 1i)), -1i, Struct_1(vec2<i32>(5907i, u_input.b)), Struct_2(35889u, Struct_1(u_input.a), Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(39179u, 31u)], u_input.b)), Struct_1(vec2<i32>(u_input.b, 13360i))))), func_4(-1i, 1u, -509f, Struct_4(Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(u_input.d, 31u)], 1i)), u_input.a.x, Struct_1(u_input.a), Struct_2(6797u, Struct_1(u_input.a), Struct_1(u_input.a), Struct_1(vec2<i32>(-44512i, u_input.b)))))))), func_4(-firstLeadingBit(u_input.a.x), 54898u, _wgslsmith_f_op_f32(-1109f + -1313f), Struct_4(func_4(-u_input.a.x, _wgslsmith_mod_u32(1u, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1642f), Struct_4(Struct_1(vec2<i32>(1i, -1i)), u_input.a.x, Struct_1(vec2<i32>(1i, 1i)), Struct_2(1u, Struct_1(vec2<i32>(0i, -7817i)), Struct_1(vec2<i32>(1i, -2147483647i)), Struct_1(u_input.a)))), 0i, Struct_1(~vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(110792u, 31u)])), Struct_2(var_0.x, Struct_1(vec2<i32>(-33782i, u_input.a.x)), Struct_1(vec2<i32>(u_input.a.x, 2147483647i)), Struct_1(u_input.a)))));
    var var_3 = vec4<bool>(true, all(vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), true, true, true)), true & any(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), all(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -993f) + 1964f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -806f), 230f))), _wgslsmith_f_op_f32(-160f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1733f)))))), ~(~vec3<i32>(-19378i, _wgslsmith_div_i32(5057i, -2165i), firstLeadingBit(36313i))));
}

