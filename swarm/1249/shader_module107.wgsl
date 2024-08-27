struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: array<vec3<bool>, 10>;

var<private> global2: vec2<f32> = vec2<f32>(321f, -729f);

var<private> global3: array<vec2<i32>, 23>;

var<private> global4: array<vec3<f32>, 21>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(633f, 2782f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.x, -874f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-631f, _wgslsmith_f_op_f32(floor(global2.x)))), !arg_1.yz))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(534f - -331f), var_0.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, -606f, -908f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(1u, 21u)]))))));
    global4 = array<vec3<f32>, 21>();
    var var_2 = Struct_2(arg_0.a);
    return true;
}

fn func_2() -> vec2<i32> {
    global3 = array<vec2<i32>, 23>();
    let var_0 = !func_3(Struct_1(u_input.a.wy ^ vec2<i32>(global0[_wgslsmith_index_u32(u_input.e.x, 29u)], -1i)), vec3<bool>(false, any(vec3<bool>(true, true, true)), any(vec2<bool>(true, true))));
    var var_1 = select(!(!(!vec4<bool>(true, true, var_0, var_0))), vec4<bool>(all(vec3<bool>(true & var_0, global2.x <= -1128f, true)), var_0, var_0, any(!(!vec4<bool>(false, var_0, false, var_0)))), !var_0 & true);
    global2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 1360f) - vec2<f32>(-2757f, -882f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(333f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.x, 1098f)))))));
    let var_2 = _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(abs(-(~1i)), u_input.a.x, _wgslsmith_mod_i32(-abs(2037i), global0[_wgslsmith_index_u32(0u & abs(u_input.c), 29u)])));
    return vec2<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 29u)], ~(-21925i)), var_2);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    let var_0 = Struct_3(reverseBits(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(u_input.c, arg_1.a.x)), vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, arg_1.a.x, 1u, 0u), vec4<u32>(arg_1.a.x, arg_1.a.x, u_input.c, 39102u))))), -(-(~(-9898i)) << (select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), arg_1.a), u_input.e.x, true) % 32u)), 1f, false, Struct_2(~arg_1.e.a));
    var var_1 = var_0.e;
    var var_2 = arg_1.e;
    let var_3 = var_0.d;
    let var_4 = select(select(vec4<bool>(var_3, true, arg_1.d, true), vec4<bool>(select(true, select(false, var_0.d, true), all(vec2<bool>(var_3, var_0.d))), select(arg_1.d, any(vec4<bool>(var_3, arg_1.d, false, var_3)), !arg_1.d), false, false), var_0.d & var_0.d), select(!select(select(vec4<bool>(false, true, var_0.d, true), vec4<bool>(arg_1.d, true, arg_1.d, false), vec4<bool>(arg_1.d, true, true, var_0.d)), select(vec4<bool>(var_3, true, var_3, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, var_3, false)), select(vec4<bool>(true, var_3, arg_1.d, true), vec4<bool>(var_3, arg_1.d, var_3, var_3), vec4<bool>(var_0.d, false, var_3, var_3))), !select(select(vec4<bool>(var_3, var_3, var_0.d, false), vec4<bool>(var_0.d, var_3, var_0.d, true), vec4<bool>(var_3, true, var_0.d, arg_1.d)), vec4<bool>(arg_1.d, true, false, false), select(vec4<bool>(var_3, false, false, var_0.d), vec4<bool>(var_3, true, true, var_3), vec4<bool>(false, false, var_0.d, true))), true), true);
    return Struct_3(countOneBits(var_0.a), -2147483647i, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(796f - arg_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * -1208f) - arg_1.c)), 660f)), any(var_4), Struct_2(abs(-vec2<i32>(-2147483647i, -1i) ^ (vec2<i32>(global0[_wgslsmith_index_u32(25939u, 29u)], -21493i) ^ var_1.a))));
}

fn func_5(arg_0: Struct_3) -> bool {
    global4 = array<vec3<f32>, 21>();
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-224f, global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -554f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(2472f, global2.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-2090f, arg_0.c) * vec2<f32>(119f, arg_0.c))))));
    let var_0 = global4[_wgslsmith_index_u32(4294967295u, 21u)];
    global3 = array<vec2<i32>, 23>();
    global3 = array<vec2<i32>, 23>();
    return arg_0.d;
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> f32 {
    var var_0 = arg_1;
    let var_1 = Struct_3(u_input.e, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1902f - 830f))))), _wgslsmith_f_op_f32(516f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(global2.x, 666f))))), func_5(func_4(Struct_1(func_2()), Struct_3(select(u_input.e, vec2<u32>(u_input.e.x, 1u), vec2<bool>(arg_1, arg_1)), -2147483647i, _wgslsmith_f_op_f32(-global2.x), all(vec2<bool>(false, arg_1)), Struct_2(vec2<i32>(0i, arg_0.x))))), func_4(Struct_1(~(~vec2<i32>(1i, global0[_wgslsmith_index_u32(u_input.c, 29u)]))), Struct_3(u_input.b, -37074i, 2248f, !arg_1, func_4(Struct_1(vec2<i32>(arg_0.x, u_input.a.x)), func_4(Struct_1(global3[_wgslsmith_index_u32(1u, 23u)]), Struct_3(vec2<u32>(1u, 62031u), 23090i, -1000f, arg_1, Struct_2(vec2<i32>(50107i, arg_0.x))))).e)).e);
    global4 = array<vec3<f32>, 21>();
    var var_2 = 4654u >= u_input.e.x;
    var var_3 = ~u_input.c;
    return _wgslsmith_f_op_f32(f32(-1f) * -1560f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    global1 = array<vec3<bool>, 10>();
    global3 = array<vec2<i32>, 23>();
    var var_1 = _wgslsmith_f_op_f32(-global2.x);
    let var_2 = Struct_3(u_input.b << (countOneBits(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.b.x), u_input.e, vec2<u32>(u_input.b.x, u_input.b.x)), min(vec2<u32>(u_input.c, u_input.e.x), vec2<u32>(43500u, 34312u)))) % vec2<u32>(32u)), 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1144f - _wgslsmith_f_op_f32(func_1(u_input.d.yx, true)))), !(true || any(!global1[_wgslsmith_index_u32(0u, 10u)])), func_4(Struct_1(global3[_wgslsmith_index_u32(func_4(Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 1i)), Struct_3(vec2<u32>(u_input.b.x, 0u), 2147483647i, global2.x, true, Struct_2(global3[_wgslsmith_index_u32(u_input.e.x, 23u)]))).a.x, 23u)]), func_4(Struct_1(global3[_wgslsmith_index_u32(select(4294967295u, u_input.e.x, false), 23u)]), func_4(Struct_1(global3[_wgslsmith_index_u32(u_input.c, 23u)]), Struct_3(vec2<u32>(1u, 23680u), var_0, global2.x, true, Struct_2(global3[_wgslsmith_index_u32(u_input.c, 23u)]))))).e);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-153f, 563f, global2.x, var_2.c), vec4<f32>(var_2.c, var_2.c, 1810f, 988f)), vec4<f32>(1476f, 125f, 790f, global2.x))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.c))), _wgslsmith_f_op_f32(-var_2.c), global2.x, 171f)), firstTrailingBit(_wgslsmith_mod_vec2_u32(var_2.a >> (var_2.a % vec2<u32>(32u)), vec2<u32>(u_input.c, var_2.a.x)) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 37322u), vec2<u32>(10473u, var_2.a.x))));
}

