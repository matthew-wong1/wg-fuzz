struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global1: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), 1i, 0i), 273f, vec4<u32>(21468u, 0u, 4294967295u, 62767u), false, vec2<bool>(false, false));

var<private> global2: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec4<bool>(false, false, false, false), false, false, 845f, 0u), Struct_2(vec4<bool>(false, true, true, true), false, false, -780f, 51228u), Struct_2(vec4<bool>(true, false, true, false), false, true, -1147f, 45335u), Struct_2(vec4<bool>(true, true, true, false), true, true, 2237f, 23434u), Struct_2(vec4<bool>(false, true, true, true), true, true, -895f, 1u), Struct_2(vec4<bool>(false, false, false, true), true, false, 555f, 4294967295u), Struct_2(vec4<bool>(true, true, true, false), false, true, 918f, 21081u), Struct_2(vec4<bool>(false, false, false, false), false, false, -615f, 0u), Struct_2(vec4<bool>(true, true, false, true), false, false, 275f, 447u));

var<private> global3: array<u32, 17>;

var<private> global4: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = Struct_1(~select(abs(vec3<i32>(10264i, 2147483647i, -1i)), abs(-vec3<i32>(2147483647i, -1i, 0i)), vec3<bool>(global4.a.x | global0.x, !global1.d, all(vec2<bool>(global4.c, global4.b)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(144f + global4.d) - _wgslsmith_div_f32(global1.b, global4.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1250f, -945f))))), reverseBits(vec4<u32>(global4.e, 51320u, _wgslsmith_add_u32(25387u, u_input.a.x), global4.e ^ u_input.d)) >> (~countOneBits(vec4<u32>(global1.c.x, 27104u, 0u, u_input.d)) % vec4<u32>(32u)), global4.c, !vec2<bool>(all(global4.a) && true, global0.x));
    global4 = global2[_wgslsmith_index_u32(1u, 9u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(696f, 104f), vec2<f32>(-808f, 319f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, global4.d) * vec2<f32>(-423f, 2138f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-703f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global4.d, global4.d))))));
    var_0 = Struct_1(var_0.a & vec3<i32>(1i, _wgslsmith_clamp_i32(36294i, ~(-2147483647i), 0i), firstTrailingBit(1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.d - var_0.b) - global1.b), _wgslsmith_f_op_f32(global4.d - _wgslsmith_f_op_f32(243f * var_0.b)), true))), global1.c, !(var_0.b > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -1553f) + _wgslsmith_f_op_f32(ceil(var_1.x)))), select(vec2<bool>(var_0.d, select(global4.c, global1.d, true)), select(select(select(vec2<bool>(true, global0.x), vec2<bool>(global1.d, true), vec2<bool>(true, global0.x)), vec2<bool>(var_0.d, false), global0.xz), global4.a.zy, global0.x), !vec2<bool>(true, !global1.d)));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.c.x, ~(~(~(~4294967295u)))), 9u)];
    return 1i;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec3<i32>(select(-abs(global1.a.x), global1.a.x, global0.x || (global4.c | global1.d)), u_input.b, -func_3() & u_input.b), global4.d, global1.c, !(!(!(!global4.b))), select(select(global1.e, vec2<bool>(true, global1.d), true), vec2<bool>(true, global0.x), select(vec2<bool>(global1.d || false, global1.d), select(vec2<bool>(global0.x, global4.a.x), select(vec2<bool>(false, false), vec2<bool>(true, global0.x), false), false), true)));
    var var_1 = 0u;
    var var_2 = _wgslsmith_sub_i32(u_input.b, var_0.a.x);
    global2 = array<Struct_2, 9>();
    global3 = array<u32, 17>();
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = arg_0;
    var var_1 = Struct_2(select(select(global4.a, global4.a, !(arg_3.a.x != var_0.a.x)), global4.a, select(vec4<bool>(true, false, !arg_3.e.x, all(vec4<bool>(true, true, false, global4.a.x))), global4.a, arg_2)), false, var_0.e.x, _wgslsmith_f_op_f32(exp2(func_2().b)), u_input.d);
    let var_2 = min(_wgslsmith_add_i32(var_0.a.x, min(max(var_0.a.x, -18687i), _wgslsmith_clamp_i32(-28308i, -1i, _wgslsmith_mod_i32(global1.a.x, 23749i)))), ~arg_0.a.x);
    var_1 = Struct_2(select(select(vec4<bool>(!arg_0.d, var_0.d, true, true), select(var_1.a, vec4<bool>(arg_3.e.x, true, true, false), true), !(!global4.a)), global4.a, all(vec4<bool>(all(global0.xzw), false, var_0.e.x, true))), (global4.d != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.d)))) || any(select(select(var_1.a, vec4<bool>(true, var_0.e.x, arg_3.e.x, false), global4.a), select(vec4<bool>(false, true, var_1.b, true), vec4<bool>(global0.x, false, arg_3.e.x, global1.e.x), global4.a.x), true)), true, _wgslsmith_f_op_f32(-func_2().b), ~(~var_0.c.x));
    var var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(~(~u_input.a.x), 3263u, max(min(30863u, 4294967295u), ~4294967295u << ((var_1.e ^ 0u) % 32u)), arg_1.x), ((vec4<u32>(6876u, arg_3.c.x, var_1.e, 67252u) ^ (vec4<u32>(arg_0.c.x, 60291u, u_input.a.x, u_input.a.x) >> (vec4<u32>(0u, u_input.c, u_input.a.x, 9458u) % vec4<u32>(32u)))) ^ countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(77797u, global3[_wgslsmith_index_u32(arg_3.c.x, 17u)], global3[_wgslsmith_index_u32(46526u, 17u)], global4.e), vec4<u32>(22443u, u_input.c, var_1.e, 4294967295u)))) >> ((arg_3.c << (arg_1 % vec4<u32>(32u))) % vec4<u32>(32u)));
    return ~(~vec2<u32>(global3[_wgslsmith_index_u32(61004u, 17u)], arg_1.x));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(50488u, select(global1.c.x, _wgslsmith_dot_vec2_u32(u_input.a.zy, func_4(func_2(), ~global1.c, global1.d || false, func_2())), global0.x), ~(countOneBits(global3[_wgslsmith_index_u32(29714u, 17u)]) & func_2().c.x)), 17u)];
    global3 = array<u32, 17>();
    global1 = func_2();
    let var_1 = select(u_input.b, _wgslsmith_div_i32(func_2().a.x, u_input.b), true);
    let var_2 = vec4<bool>(true, (countOneBits(_wgslsmith_mult_i32(var_1, 8036i)) | u_input.b) < -20520i, global0.x, all(!select(select(vec2<bool>(false, global0.x), global1.e, global1.e.x), !vec2<bool>(global4.b, true), 3701u > global3[_wgslsmith_index_u32(global1.c.x, 17u)])));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~60407u, 9u)];
    var var_1 = func_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.b, var_0.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, global4.d)), global4.a.xx))))));
    let var_2 = u_input.a;
    let var_3 = !vec4<bool>(var_1.d, true, true & var_0.b, false);
    var var_4 = true;
    let var_5 = Struct_2(select(var_0.a, vec4<bool>(var_0.c, false, global4.a.x, !func_1(vec2<f32>(var_0.d, global1.b)).d), all(global4.a.xw)), global4.b, !(max(-u_input.b, -var_1.a.x) >= countOneBits(u_input.b)), var_1.b, _wgslsmith_div_u32(~(~77820u), u_input.c ^ abs(70705u)) | var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(-max(global1.a, vec3<i32>(reverseBits(0i), -1i, select(global1.a.x, -2147483647i, false))), 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.d))));
}

