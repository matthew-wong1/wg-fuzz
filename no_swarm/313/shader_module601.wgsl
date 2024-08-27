struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(75806u, 53496u, 4294967295u, 0u, 0u, 153943u, 58196u, 0u, 19939u, 1u, 0u, 1878u, 135603u, 4294967295u, 36247u, 1u, 4294967295u, 0u, 13901u, 45410u, 0u, 4294967295u, 77019u, 11421u, 8255u, 17805u, 87059u, 37679u, 4294967295u, 41420u);

var<private> global1: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true));

var<private> global2: bool = false;

var<private> global3: array<bool, 6>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: u32) -> f32 {
    let var_0 = ~reverseBits(u_input.c.x);
    let var_1 = countOneBits(~(-(firstTrailingBit(1i) >> (arg_2 % 32u))));
    let var_2 = Struct_2(vec3<bool>(false, false & (false | arg_0), global3[_wgslsmith_index_u32(abs(select(76044u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_1, arg_2), vec3<u32>(6810u, var_0, arg_2)), select(arg_0, false, global3[_wgslsmith_index_u32(var_0, 6u)]))), 6u)]), Struct_1(277f, false, _wgslsmith_div_vec3_u32(min(vec3<u32>(4294967295u, u_input.a, arg_1) & vec3<u32>(global0[_wgslsmith_index_u32(0u, 30u)], 55035u, var_0), ~vec3<u32>(var_0, var_0, arg_1)), ~(~vec3<u32>(arg_1, 12044u, arg_1))), 1u));
    var var_3 = any(var_2.a.zx);
    global2 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.a * _wgslsmith_f_op_f32(step(var_2.b.a, 2164f)))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0.x, ~global0[_wgslsmith_index_u32(u_input.c.x, 30u)], 1u)) + 1000f)));
}

fn func_1(arg_0: i32) -> Struct_2 {
    global3 = array<bool, 6>();
    let var_0 = vec4<f32>(401f, _wgslsmith_f_op_f32(-616f * -1571f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<bool>(!global3[_wgslsmith_index_u32(0u, 6u)], false, true, arg_0 >= u_input.b), max(min(vec3<i32>(4844i, 13320i, arg_0), u_input.e), -vec3<i32>(2147483647i, 0i, arg_0)))) + _wgslsmith_f_op_f32(386f + -853f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2610f)))));
    global0 = array<u32, 30>();
    var var_1 = 653f;
    let var_2 = 1u;
    return Struct_2(select(vec3<bool>(var_0.x != var_0.x, var_0.x != var_0.x, true), !select(vec3<bool>(false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15212u, 30u)], 30u)], 6u)], true), !vec3<bool>(global3[_wgslsmith_index_u32(57619u, 6u)], false, false), all(global1[_wgslsmith_index_u32(var_2, 10u)])), select(select(select(vec3<bool>(global3[_wgslsmith_index_u32(var_2, 6u)], true, true), vec3<bool>(global3[_wgslsmith_index_u32(var_2, 6u)], false, global3[_wgslsmith_index_u32(1u, 6u)]), vec3<bool>(global3[_wgslsmith_index_u32(0u, 6u)], false, false)), !vec3<bool>(true, false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 30u)], 6u)]), all(vec2<bool>(global3[_wgslsmith_index_u32(31492u, 6u)], false))), !select(vec3<bool>(global3[_wgslsmith_index_u32(0u, 6u)], true, global3[_wgslsmith_index_u32(4294967295u, 6u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(1u, 6u)]), vec3<bool>(true, false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 6u)])), !(!vec3<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 6u)], false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(91300u, 30u)], 6u)])))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(sign(var_0.x))))), any(select(!vec3<bool>(false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 30u)], 6u)], true), vec3<bool>(global3[_wgslsmith_index_u32(39126u, 6u)], global3[_wgslsmith_index_u32(38600u, 6u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38447u, 30u)], 6u)]), false)), vec3<u32>(~min(19874u, var_2), u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(global0[_wgslsmith_index_u32(var_2, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67386u, 30u)], 30u)], 30u)]))), _wgslsmith_mod_u32(5257u ^ _wgslsmith_dot_vec2_u32(u_input.c, u_input.c), global0[_wgslsmith_index_u32(~1u, 30u)])));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = -65537i;
    global3 = array<bool, 6>();
    var var_1 = arg_0.d;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(func_1(abs(~(-1i))).b.a))));
    var var_3 = -4339i;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 30>();
    var var_0 = vec3<u32>(1u, func_4(Struct_3(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 30u)], 64023u, global0[_wgslsmith_index_u32(0u, 30u)]), vec3<u32>(global0[_wgslsmith_index_u32(57111u, 30u)], 0u, 4294967295u)), 30u)] >> (~95491u % 32u), 6u)], u_input.d.wwx, vec3<u32>(1u, 93444u, u_input.c.x & u_input.a), func_1(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d))), (u_input.a | (global0[_wgslsmith_index_u32(u_input.a, 30u)] & u_input.a)) | _wgslsmith_clamp_u32(7723u, 1u, countOneBits(4294967295u)), true | global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], 30u)], 6u)]), 4294967295u);
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), u_input.d.x), vec2<i32>(u_input.b, 1i));
    var_1 = vec2<i32>(max(var_1.x << (countOneBits(1u) % 32u), _wgslsmith_sub_i32(max(var_1.x, u_input.b), _wgslsmith_div_i32(var_1.x, u_input.d.x))), var_1.x) & -u_input.e.zz;
    let var_2 = vec4<u32>(55221u, ~u_input.a | 1u, _wgslsmith_div_u32(~2365u, 49479u), u_input.a);
    var var_3 = Struct_3(!(func_1(abs(u_input.d.x)).b.c.x <= _wgslsmith_mod_u32(61881u, reverseBits(u_input.c.x))), vec3<i32>(i32(-1i) * -1i, var_1.x, -2767i), vec3<u32>(~_wgslsmith_sub_u32(abs(1u), var_2.x), ~(~(16557u & u_input.a)), 45670u), Struct_2(vec3<bool>(global3[_wgslsmith_index_u32(max(1u, ~4294967295u), 6u)], any(!global1[_wgslsmith_index_u32(0u, 10u)]), global3[_wgslsmith_index_u32(var_0.x, 6u)]), Struct_1(-284f, global3[_wgslsmith_index_u32(58166u, 6u)], vec3<u32>(global0[_wgslsmith_index_u32(reverseBits(0u), 30u)], 22571u, ~global0[_wgslsmith_index_u32(var_0.x, 30u)]), ~(~3672u))));
    var var_4 = func_1(~_wgslsmith_dot_vec4_i32(reverseBits(u_input.d), u_input.d));
    let var_5 = !(!(!vec3<bool>(true, false || global3[_wgslsmith_index_u32(var_0.x, 6u)], false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(var_4.b.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(701f, _wgslsmith_f_op_f32(func_3(false, 10449u, global0[_wgslsmith_index_u32(u_input.a, 30u)]))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-222f)), _wgslsmith_f_op_f32(-924f + 879f)))))), var_2.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.b.a, var_3.d.b.a)), u_input.c.x, countOneBits(abs(_wgslsmith_clamp_i32(-u_input.e.x, var_1.x, -41087i))));
}

