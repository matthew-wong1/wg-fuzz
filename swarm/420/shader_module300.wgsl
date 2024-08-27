struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_3, 24>;

var<private> global2: array<i32, 21> = array<i32, 21>(2147483647i, i32(-2147483648), 1i, 6505i, 21843i, 19211i, 22899i, 1i, 17237i, 1i, 1589i, 34157i, -1i, -15064i, -1i, 1i, 1i, 24417i, -1i, i32(-2147483648), i32(-2147483648));

var<private> global3: u32;

var<private> global4: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<i32>) -> vec2<f32> {
    let var_0 = ~11021u;
    var var_1 = global0.x;
    let var_2 = Struct_1(global0.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1257f, -1759f, 107f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-923f, 1033f, 790f), vec3<f32>(-856f, -703f, -899f))))), vec3<f32>(_wgslsmith_div_f32(393f, 210f), _wgslsmith_f_op_f32(-886f - 1000f), -537f))))), abs(-(2147483647i >> (var_0 % 32u)) | -(global2[_wgslsmith_index_u32(u_input.d, 21u)] ^ -2147483647i)), vec4<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(global2[_wgslsmith_index_u32(u_input.d, 21u)], -8219i)), u_input.a.yz), u_input.a.x, _wgslsmith_dot_vec4_i32(~arg_2 >> (reverseBits(u_input.b) % vec4<u32>(32u)), -vec4<i32>(arg_2.x, 54597i, arg_2.x, 2147483647i)), _wgslsmith_sub_i32(_wgslsmith_add_i32(arg_2.x ^ -1i, abs(global2[_wgslsmith_index_u32(29621u, 21u)])), -29575i)));
    global2 = array<i32, 21>();
    let var_3 = arg_1 << (arg_1 % vec2<u32>(32u));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1086f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -113f)))) * var_2.b.zy);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(601f, -1549f), vec2<f32>(-330f, -607f), arg_3)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(true & global0.x, u_input.b.yy, u_input.a ^ vec4<i32>(global2[_wgslsmith_index_u32(42902u, 21u)], 21755i, -1i, global2[_wgslsmith_index_u32(13100u, 21u)]))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-538f, 1155f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-450f, 1077f))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1463f, 2241f)) * vec2<f32>(-829f, 162f))), _wgslsmith_f_op_vec2_f32(func_3(all(vec4<bool>(true, true, true, arg_2.x)) & true, select(min(vec2<u32>(44511u, arg_0.x), vec2<u32>(u_input.d, 4691u)), abs(arg_0.xy), select(arg_2.yy, vec2<bool>(true, true), arg_1)), vec4<i32>(_wgslsmith_div_i32(u_input.c, global2[_wgslsmith_index_u32(1u, 21u)]), u_input.c & -1i, -2147483647i, countOneBits(global2[_wgslsmith_index_u32(4294967295u, 21u)])))))));
    let var_1 = u_input.a.yxz;
    global4 = _wgslsmith_add_i32(global2[_wgslsmith_index_u32(6561u, 21u)], ~var_1.x) >> (_wgslsmith_add_u32(~reverseBits(0u), _wgslsmith_div_u32(u_input.b.x, u_input.d) >> ((_wgslsmith_dot_vec3_u32(u_input.b.wzx, arg_0.xyy) << (arg_0.x % 32u)) % 32u)) % 32u);
    var var_2 = arg_0.x;
    var var_3 = abs(~(~firstLeadingBit(select(vec3<u32>(arg_0.x, 64279u, u_input.d), u_input.b.zww, vec3<bool>(arg_3, false, global0.x)))));
    return (arg_1.x & (true | arg_2.x)) || arg_3;
}

fn func_1() -> vec4<i32> {
    global0 = vec2<bool>(!global0.x, !func_2(_wgslsmith_div_vec4_u32(reverseBits(u_input.b), vec4<u32>(29018u, 0u, 4294967295u, u_input.d)), vec2<bool>(true, true), select(vec3<bool>(global0.x, global0.x, false), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, false, true), vec3<bool>(true, global0.x, true)), all(vec4<bool>(false, false, false, true))), (50830u & u_input.d) < u_input.b.x));
    let var_0 = !global0.x || true;
    global4 = ~abs(firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~19087u), 21u)]));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(240f, -1634f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1872f, -179f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1628f))))));
    var var_2 = Struct_1((var_1.x >= var_1.x) && all(vec2<bool>(global0.x, global0.x)), _wgslsmith_div_vec3_f32(vec3<f32>(747f, 854f, _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(var_1.x * 305f), any(vec4<bool>(global0.x, true, global0.x, var_0))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1188f))), 509f, var_1.x)), max(_wgslsmith_mod_i32(-global2[_wgslsmith_index_u32(46394u, 21u)] ^ _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(0u, 21u)]), firstTrailingBit(i32(-1i) * -19839i)), countOneBits(abs(u_input.a.x))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, ~global2[_wgslsmith_index_u32(u_input.d, 21u)], firstTrailingBit(-160i), firstTrailingBit(-28222i)) & (-vec4<i32>(2147483647i, u_input.a.x, -10069i, u_input.c) ^ u_input.a), ~firstLeadingBit(u_input.a)));
    return abs(vec4<i32>((7853i >> ((14815u << (u_input.d % 32u)) % 32u)) ^ u_input.a.x, 1i, var_2.c, firstLeadingBit(~u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = 1965u;
    let var_0 = vec4<i32>(1i, abs(1i), -max(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-42680i, 42350i, 17717i, u_input.a.x)), abs(u_input.a.x)) | _wgslsmith_mult_i32(-(~0i), ~54896i), -1i);
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -761f, 484f), vec3<f32>(-132f, -369f, -1043f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))), true)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1115f, -136f, -1808f))))), reverseBits((_wgslsmith_sub_i32(u_input.c, 26176i) & _wgslsmith_dot_vec2_i32(vec2<i32>(-42844i, 1i), vec2<i32>(global2[_wgslsmith_index_u32(14364u, 21u)], var_0.x))) >> (~0u % 32u)), _wgslsmith_add_vec4_i32(func_1(), vec4<i32>(-countOneBits(-28444i), _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], 0i) | 50865i, reverseBits(8483i) << (_wgslsmith_mod_u32(4294967295u, u_input.b.x) % 32u), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], 12575i)))));
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(4294967295u, 0u, 0u), ~_wgslsmith_add_u32(~u_input.d, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.d, u_input.b.x), _wgslsmith_clamp_u32(u_input.d, u_input.d, u_input.d), u_input.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1379f, _wgslsmith_f_op_f32(trunc(var_1.b.x)), var_1.b.x))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) + _wgslsmith_f_op_vec3_f32(-var_1.b))))));
}

