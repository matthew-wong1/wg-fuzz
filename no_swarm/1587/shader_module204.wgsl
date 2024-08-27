struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11>;

var<private> global1: array<Struct_1, 26>;

var<private> global2: vec3<f32> = vec3<f32>(1441f, -322f, -1310f);

var<private> global3: array<vec4<u32>, 18>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(arg_0.b, 18u)];
    global1 = array<Struct_1, 26>();
    global3 = array<vec4<u32>, 18>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-310f, arg_0.d.x, global2.x, arg_0.d.x))))), select(arg_0.a, arg_0.a, arg_0.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2247f))), 338f))));
    return 30763u;
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: vec4<u32>) -> f32 {
    let var_0 = abs(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(12809u, 18u)], vec4<u32>(50581u, 1u, arg_2.a.b, arg_3.x)), 16232u) ^ ~_wgslsmith_mod_u32(~1u, select(arg_2.a.b, arg_3.x, true)));
    var var_1 = arg_2.a.e.zz;
    var var_2 = vec4<u32>(var_0, ~abs(~_wgslsmith_dot_vec3_u32(arg_3.xwz, vec3<u32>(1u, arg_2.a.b, 75673u))), arg_3.x, ~(~1u) & reverseBits(arg_3.x));
    let var_3 = Struct_2(vec4<bool>(any(vec2<bool>(true, arg_2.c && true)), any(!arg_2.a.a.www), true, true), select(_wgslsmith_mod_u32(arg_2.a.b, countOneBits(0u)), 4294967295u, false) ^ (countOneBits(~var_0) ^ _wgslsmith_dot_vec2_u32(var_2.wz, ~var_2.ww)), arg_2.a.c, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1070f + -743f))), 277f), -1439f), reverseBits(u_input.e));
    var var_4 = arg_2.a.e.ww;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1298f - arg_2.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d.x) - var_3.d.x)));
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), vec2<bool>(true, true), Struct_4(Struct_2(vec4<bool>(false, false, true, false), 4294967295u, Struct_1(vec2<bool>(false, true)), global2.zy, vec4<i32>(u_input.b, u_input.b, 13621i, -1i)), global1[_wgslsmith_index_u32(1u, 26u)], true, global2.xy, Struct_1(vec2<bool>(true, true))), select(_wgslsmith_mod_vec4_u32(global3[_wgslsmith_index_u32(81912u, 18u)], vec4<u32>(26091u, 98580u, 27004u, 0u)), global3[_wgslsmith_index_u32(1u, 18u)], vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(-1590f, global2.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(true, vec2<bool>(true, true), Struct_4(Struct_2(vec4<bool>(false, true, false, false), 0u, global1[_wgslsmith_index_u32(0u, 26u)], vec2<f32>(global2.x, global2.x), vec4<i32>(-2147483647i, -71583i, u_input.d, -2147483647i)), global1[_wgslsmith_index_u32(0u, 26u)], true, global2.zy, global1[_wgslsmith_index_u32(1u, 26u)]), global3[_wgslsmith_index_u32(~4294967295u, 18u)]))))), 500f);
    var var_1 = _wgslsmith_sub_i32(1i, 1i);
    global2 = _wgslsmith_f_op_vec3_f32(var_0.wyy - vec3<f32>(1166f, -1518f, global2.x));
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    return Struct_1(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, select(false, true, false)), any(vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_2(!vec4<bool>(true, all(vec3<bool>(true, true, true)), all(vec2<bool>(false, true)), true), ~func_1(Struct_2(vec4<bool>(false, false, true, false), 23984u, global1[_wgslsmith_index_u32(1u, 26u)], vec2<f32>(global2.x, -1007f), u_input.e)), Struct_1(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))))), u_input.e), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_4(Struct_2(vec4<bool>(false, true, true, false), 96190u, Struct_1(vec2<bool>(true, true)), global2.yx, vec4<i32>(2147483647i, 0i, 2147483647i, u_input.c.x)), Struct_1(vec2<bool>(false, true)), true, global2.zy, global1[_wgslsmith_index_u32(1u, 26u)]), global3[_wgslsmith_index_u32(~15441u, 18u)]))) < global2.x, _wgslsmith_f_op_vec2_f32(select(global2.xy, global2.yx, all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, false), true)))), func_2());
    global3 = array<vec4<u32>, 18>();
    global0 = array<Struct_3, 11>();
    let var_1 = Struct_2(vec4<bool>(var_0.e.a.x, any(vec2<bool>(any(var_0.a.a.wxy), !var_0.a.a.x)), var_0.e.a.x, all(vec2<bool>(!var_0.c, false))), ~_wgslsmith_dot_vec3_u32(select(~vec3<u32>(var_0.a.b, var_0.a.b, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.b, 29485u, 4294967295u), vec3<u32>(1u, var_0.a.b, var_0.a.b)), false), select(~vec3<u32>(var_0.a.b, 0u, 2370u), ~vec3<u32>(0u, var_0.a.b, 1u), vec3<bool>(false, var_0.b.a.x, false))), func_2(), _wgslsmith_div_vec2_f32(var_0.d, _wgslsmith_f_op_vec2_f32(global2.xy * _wgslsmith_div_vec2_f32(global2.yz, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.x, var_0.d.x)))))), ~vec4<i32>(abs(u_input.e.x), abs(-34535i), ~var_0.a.e.x, u_input.a.x) & vec4<i32>(1i, _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.e.x, 1i), var_0.a.e.yz)), 0i, var_0.a.e.x));
    let var_2 = func_2();
    global2 = vec3<f32>(320f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1501f, _wgslsmith_f_op_f32(f32(-1f) * -1438f), !var_2.a.x))) + var_1.d.x), _wgslsmith_f_op_f32(func_3(var_2.a.x, var_2.a, Struct_4(var_0.a, global1[_wgslsmith_index_u32(0u, 26u)], var_2.a.x, _wgslsmith_f_op_vec2_f32(global2.yy + vec2<f32>(var_1.d.x, var_0.d.x)), var_1.c), global3[_wgslsmith_index_u32(28948u, 18u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(global2.x)), var_1.d.x, select(min(vec2<u32>(min(var_1.b, var_1.b), ~4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.b, 1u), vec2<u32>(20824u, var_1.b) & vec2<u32>(var_1.b, 0u))), _wgslsmith_div_vec2_u32(min(vec2<u32>(24105u, var_1.b), _wgslsmith_add_vec2_u32(vec2<u32>(var_1.b, var_1.b), vec2<u32>(4294967295u, 1u))), _wgslsmith_mod_vec2_u32(vec2<u32>(17577u, var_0.a.b), ~vec2<u32>(var_1.b, var_0.a.b))), true));
}

