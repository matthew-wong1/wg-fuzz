struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(0u, 4294967295u, 0u, 0u, 0u, 20760u, 4294967295u, 21511u, 68564u);

var<private> global1: Struct_1 = Struct_1(vec4<f32>(395f, -260f, -1296f, -363f), vec2<bool>(true, false));

var<private> global2: array<Struct_1, 2>;

var<private> global3: array<bool, 6>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<i32>) -> u32 {
    var var_0 = firstLeadingBit(56601u);
    let var_1 = ~abs(~(~vec4<i32>(-1i, 2147483647i, arg_3.x, 1169i)) | -(~vec4<i32>(-3026i, arg_3.x, -10712i, arg_3.x)));
    var_0 = global0[_wgslsmith_index_u32(u_input.b, 9u)];
    var var_2 = max(reverseBits(44834u >> (select(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 9u)], arg_1.b.x) % 32u)), ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(10441u, 9u)]), vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 9u)]))), ~vec2<u32>(34074u, u_input.b) | (vec2<u32>(27563u, 4294967295u) & vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 9u)]))), 9u)]);
    let var_3 = _wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, countOneBits(65031u ^ u_input.b), ~global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(4294967295u, 9u)], 50436u), 9u)], global0[_wgslsmith_index_u32(~max(3563u, 36004u), 9u)]), min(~(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 9u)], 6106u, 16537u, 13u)), select(vec4<u32>(1u, global0[_wgslsmith_index_u32(0u, 9u)], u_input.b, global0[_wgslsmith_index_u32(u_input.b, 9u)]), ~vec4<u32>(11532u, global0[_wgslsmith_index_u32(1u, 9u)], 0u, global0[_wgslsmith_index_u32(u_input.b, 9u)]), !vec4<bool>(arg_0.b.x, false, false, true)))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(36722u, 9u)], global0[_wgslsmith_index_u32(u_input.b, 9u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 9u)], 9u)]), vec4<u32>(global0[_wgslsmith_index_u32(59936u, 9u)], u_input.b, global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(u_input.b, 9u)]))));
    return 31773u ^ var_3;
}

fn func_2() -> u32 {
    global2 = array<Struct_1, 2>();
    global2 = array<Struct_1, 2>();
    let var_0 = firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 9u)], 25044u, abs(0u)));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(44356u, u_input.b, _wgslsmith_add_u32(~firstTrailingBit(var_0.x), var_0.x), u_input.b), countOneBits(select(vec4<u32>(~1u, 28306u, _wgslsmith_clamp_u32(32361u, global0[_wgslsmith_index_u32(1u, 9u)], u_input.b), global0[_wgslsmith_index_u32(var_0.x, 9u)]), ~vec4<u32>(4294967295u, 15672u, var_0.x, 0u), !(!global3[_wgslsmith_index_u32(99446u, 6u)])))), 2u)];
    global2 = array<Struct_1, 2>();
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~504u), _wgslsmith_mult_u32(u_input.b << (max(var_0.x, u_input.b) % 32u), _wgslsmith_sub_u32(~func_3(Struct_1(global1.a, var_1.b), Struct_1(global1.a, vec2<bool>(global3[_wgslsmith_index_u32(9840u, 6u)], true)), vec3<f32>(-472f, global1.a.x, var_1.a.x), vec3<i32>(u_input.a, u_input.c, 1i)), var_0.x))), 9u)];
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.a.x, global1.a.x, 1010f, -1718f)))) - _wgslsmith_f_op_vec4_f32(-global1.a)), vec2<bool>(all(select(vec3<bool>(true, true, global1.b.x), vec3<bool>(arg_3.b.x, arg_3.b.x, true), vec3<bool>(global1.b.x, global3[_wgslsmith_index_u32(1u, 6u)], false))), any(!vec4<bool>(arg_0.x, true, false, false)))), global2[_wgslsmith_index_u32(0u, 2u)], _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.x, global1.a.x, _wgslsmith_div_f32(-461f, -1801f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-936f, global1.a.x, global1.a.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1026f, 1867f, arg_3.a.x) * global1.a.xwx))))), select(_wgslsmith_sub_vec3_i32(select(~vec3<i32>(arg_1, 56073i, arg_1), min(vec3<i32>(1i, arg_1, -48583i), vec3<i32>(u_input.a, 12686i, 0i)), any(vec3<bool>(arg_0.x, false, global1.b.x))), ~max(vec3<i32>(1i, -11120i, arg_1), vec3<i32>(8773i, -1i, u_input.a))), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(1100i, -1i, arg_1), abs(vec3<i32>(2147483647i, arg_2, arg_1)))), global3[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(func_2(), 9u)]), 6u)])), 9u)], 2u)];
    var var_1 = arg_3;
    var var_2 = global1.a.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x));
    let var_3 = vec3<bool>(false, !var_0.b.x, reverseBits(19994i) <= -arg_1);
    var var_4 = arg_0.zxz;
    return global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, 0u), 9u)], 2u)];
}

fn func_1() -> Struct_1 {
    global0 = array<u32, 9>();
    global0 = array<u32, 9>();
    var var_0 = func_4(vec4<bool>(true, false, global3[_wgslsmith_index_u32(u_input.b, 6u)] | global3[_wgslsmith_index_u32(func_2(), 6u)], true), -1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(min(vec3<i32>(u_input.a, -36924i, u_input.c), vec3<i32>(33379i, u_input.c, 39174i)), vec3<i32>(u_input.a, u_input.c, -2147483647i)), select(vec3<i32>(33153i, u_input.a, 2147483647i), vec3<i32>(40576i, u_input.a, -44683i), false) << (vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], 0u, u_input.b) % vec3<u32>(32u))) << (4294967295u % 32u), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.a.x, -956f, global1.a.x, global1.a.x))), vec4<f32>(global1.a.x, global1.a.x, global1.a.x, 713f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 259f, -940f, -945f)))), select(select(select(vec2<bool>(global1.b.x, global1.b.x), vec2<bool>(false, false), false), vec2<bool>(false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 9u)], 9u)], 9u)], 6u)]), true), select(vec2<bool>(true, true), !global1.b, vec2<bool>(true, global1.b.x)), false)));
    global3 = array<bool, 6>();
    global2 = array<Struct_1, 2>();
    return func_4(select(!(!vec4<bool>(false, global3[_wgslsmith_index_u32(11330u, 6u)], global1.b.x, true)), !vec4<bool>(true, var_0.b.x, global3[_wgslsmith_index_u32(~u_input.b, 6u)], select(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22098u, 9u)], 9u)], 6u)], var_0.b.x, true)), select(select(select(vec4<bool>(true, false, var_0.b.x, false), vec4<bool>(true, var_0.b.x, var_0.b.x, global1.b.x), vec4<bool>(global1.b.x, true, false, false)), !vec4<bool>(false, false, global1.b.x, true), vec4<bool>(global1.b.x, global1.b.x, var_0.b.x, global1.b.x)), select(vec4<bool>(false, var_0.b.x, var_0.b.x, false), select(vec4<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52813u, 9u)], 6u)], global3[_wgslsmith_index_u32(13494u, 6u)], var_0.b.x, global3[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<bool>(true, var_0.b.x, true, false), false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 6u)], global3[_wgslsmith_index_u32(27074u, 6u)], false, global3[_wgslsmith_index_u32(25811u, 6u)])), vec4<bool>(true, any(vec4<bool>(global1.b.x, false, global1.b.x, true)), global3[_wgslsmith_index_u32(u_input.b, 6u)], global1.a.x < -2021f))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, abs(-1i) >> (firstLeadingBit(global0[_wgslsmith_index_u32(43692u, 9u)]) % 32u), -23087i), abs(~(-vec3<i32>(-55180i, u_input.c, u_input.c)))), 9712i, global2[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(1u, u_input.b)), 2u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -6206i;
    global3 = array<bool, 6>();
    let var_1 = func_1();
    var var_2 = select(select(!(!vec3<bool>(global1.b.x, global3[_wgslsmith_index_u32(u_input.b, 6u)], false)), select(vec3<bool>(false, var_1.b.x, true), select(!vec3<bool>(true, true, var_1.b.x), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 6u)], false, false), true), true), !select(vec3<bool>(global3[_wgslsmith_index_u32(26213u, 6u)], var_1.b.x, var_1.b.x), select(vec3<bool>(true, global1.b.x, false), vec3<bool>(false, false, global1.b.x), vec3<bool>(true, global3[_wgslsmith_index_u32(36546u, 6u)], true)), true)), !select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(global3[_wgslsmith_index_u32(13455u, 6u)], true, false), false), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(117020u, 9u)], 4294967295u), vec2<u32>(4294967295u, 4294967295u) | vec2<u32>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(505u, 9u)])), 6u)]), !vec3<bool>(any(select(global1.b, vec2<bool>(false, false), var_1.b)), all(vec2<bool>(true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30096u, 9u)], 6u)])) & true, false));
    let var_3 = global1.a.yxw;
    global3 = array<bool, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(14714u, 9u)], _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(3266i, -53710i), -(~vec2<i32>(40446i, var_0)) ^ (reverseBits(vec2<i32>(17646i, u_input.c)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 9u)], 9u)])) % vec2<u32>(32u)))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a.x, var_3.x), _wgslsmith_f_op_vec2_f32(min(var_3.yy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a.zw + vec2<f32>(global1.a.x, -165f)) + vec2<f32>(global1.a.x, 768f)))), all(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 6u)], true, true), select(vec3<bool>(false, true, global3[_wgslsmith_index_u32(54866u, 6u)]), vec3<bool>(true, false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55762u, 9u)], 6u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 6u)], false)), !vec3<bool>(var_2.x, var_1.b.x, var_2.x))))));
}

