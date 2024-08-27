struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, -1i);

var<private> global1: array<i32, 18>;

var<private> global2: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global3: array<Struct_1, 10>;

var<private> global4: array<vec2<f32>, 4>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> Struct_5 {
    global4 = array<vec2<f32>, 4>();
    global3 = array<Struct_1, 10>();
    let var_0 = global3[_wgslsmith_index_u32(abs(~abs(1u)), 10u)];
    global1 = array<i32, 18>();
    let var_1 = all(vec4<bool>(var_0.a.x > var_0.a.x, true, arg_1, global2.x));
    return Struct_5(vec3<f32>(-368f, _wgslsmith_f_op_f32(abs(-772f)), _wgslsmith_f_op_f32(-var_0.a.x)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = Struct_3(true);
    global1 = array<i32, 18>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d.a.x, arg_1.a.x, 3597f), vec3<f32>(arg_1.a.x, arg_0.d.a.x, arg_0.a.a.x))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(103f, -483f, arg_1.a.x), vec3<f32>(arg_1.a.x, 2285f, 1123f))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.a.x, -1106f, 374f))))))));
    var var_2 = arg_1.c;
    var var_3 = var_0.a | var_0.a;
    return select(vec4<bool>(!arg_1.e, ~arg_1.b != 31939u, global2.x, true), select(select(select(vec4<bool>(true, arg_1.e, var_0.a, var_0.a), select(vec4<bool>(false, true, arg_0.d.d.x, true), vec4<bool>(true, true, var_0.a, false), vec4<bool>(true, var_0.a, true, arg_1.e)), arg_0.a.d.x), vec4<bool>(var_0.a, false && global2.x, true == arg_1.d.x, false), select(vec4<bool>(var_0.a, false, global2.x, var_0.a), !vec4<bool>(global2.x, true, true, global2.x), select(vec4<bool>(true, arg_1.d.x, false, global2.x), vec4<bool>(arg_0.a.d.x, var_0.a, true, true), vec4<bool>(true, true, false, false)))), vec4<bool>(reverseBits(arg_0.c) != (global0.x >> (51771u % 32u)), !any(arg_1.d.zy), any(vec4<bool>(true, true, false, false)), true), !(!vec4<bool>(true, arg_0.d.e, true, arg_1.e))), select(all(select(vec3<bool>(var_0.a, arg_0.a.e, arg_0.a.e), global2.yzx, vec3<bool>(true, false, arg_0.a.e))), all(vec4<bool>(global2.x, global2.x, arg_0.a.e, arg_0.a.d.x)) | arg_1.d.x, arg_0.a.e) && (_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.x, 2147483647i, global1[_wgslsmith_index_u32(arg_1.b, 18u)], global0.x), ~vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(0u, 18u)], 1i, arg_1.c)) > ~firstTrailingBit(-1i)));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<bool>) -> u32 {
    let var_0 = func_2(u_input.a >> (min(select(~arg_0, vec3<u32>(1u, arg_0.x, 4294967295u) & arg_0, any(arg_2.zx)), ~(~vec3<u32>(arg_0.x, arg_0.x, 0u))) % vec3<u32>(32u)), all(vec3<bool>(global2.x, false | (global1[_wgslsmith_index_u32(34511u, 18u)] > global1[_wgslsmith_index_u32(arg_0.x, 18u)]), true)));
    var var_1 = arg_0.x;
    let var_2 = Struct_4(global1[_wgslsmith_index_u32(max(6148u, arg_0.x), 18u)]);
    var var_3 = select(!vec4<bool>(var_0.a.x != 1473f, u_input.a.x == ~global0.x, true, any(vec4<bool>(arg_2.x, false, arg_1, arg_1)) != true), select(select(vec4<bool>(true, arg_1, u_input.a.x < 24552i, true), !func_3(Struct_2(Struct_1(global4[_wgslsmith_index_u32(38659u, 4u)], 42567u, -2147483647i, vec3<bool>(global2.x, arg_1, arg_1), false), arg_0.x, -2147483647i, Struct_1(global4[_wgslsmith_index_u32(arg_0.x, 4u)], 27587u, global1[_wgslsmith_index_u32(10401u, 18u)], global2.xyw, arg_1), u_input.a), global3[_wgslsmith_index_u32(1u, 10u)]), func_3(Struct_2(Struct_1(var_0.a.zx, arg_0.x, -57200i, vec3<bool>(true, true, global2.x), global2.x), 0u, u_input.a.x, global3[_wgslsmith_index_u32(27487u, 10u)], u_input.a), global3[_wgslsmith_index_u32(~1u, 10u)])), vec4<bool>(false, true, true, arg_2.x), select(global2.x, !arg_1, func_3(Struct_2(Struct_1(vec2<f32>(756f, -1134f), arg_0.x, -3544i, vec3<bool>(true, arg_2.x, true), true), arg_0.x, global0.x, global3[_wgslsmith_index_u32(1u, 10u)], vec3<i32>(global0.x, 34621i, -64572i)), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(36586u, arg_0.x, arg_0.x), 10u)]).x)), global2.x);
    var_3 = !(!(!select(!vec4<bool>(arg_1, true, arg_2.x, false), select(vec4<bool>(arg_1, true, false, false), vec4<bool>(arg_2.x, false, global2.x, var_3.x), arg_1), select(vec4<bool>(var_3.x, false, false, global2.x), vec4<bool>(false, true, var_3.x, var_3.x), vec4<bool>(var_3.x, true, true, false)))));
    return _wgslsmith_div_u32(~max(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, 2379u, 1u) | vec4<u32>(22971u, 68631u, arg_0.x, arg_0.x), ~vec4<u32>(arg_0.x, 111619u, 36950u, 92964u))), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(1i & (select(-global0.x, 1i, global2.x) << ((func_1(vec3<u32>(1u, 0u, 28125u), false, global2.wzy) << (countOneBits(4294967295u) % 32u)) % 32u)));
    let var_1 = Struct_4(u_input.a.x | min(32887i, 55191i));
    global2 = !func_3(Struct_2(global3[_wgslsmith_index_u32(~122926u << (_wgslsmith_clamp_u32(5217u, 0u, 4294967295u) % 32u), 10u)], _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(64513u, 4294967295u)), vec2<u32>(24706u, 4294967295u)), 34191i, global3[_wgslsmith_index_u32(0u, 10u)], select(u_input.a, u_input.a, global2.yyy) ^ abs(vec3<i32>(var_1.a, -95079i, u_input.a.x))), global3[_wgslsmith_index_u32(abs(4294967295u), 10u)]);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(531f, -180f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(225f, 404f))), _wgslsmith_div_f32(-956f, 1462f)), global2.wz)));
    let var_3 = select(global2.yxx, vec3<bool>(global2.x && global2.x, select(global2.x, func_2(vec3<i32>(28664i, 1i, -12958i), global2.x).a.x > 934f, any(vec3<bool>(false, global2.x, global2.x))), !any(vec3<bool>(true, false, true))), false);
    global2 = func_3(Struct_2(Struct_1(var_2, ~28121u, ~global1[_wgslsmith_index_u32(~30019u, 18u)], !vec3<bool>(true, global2.x, global2.x), global2.x), 0u, 1i, global3[_wgslsmith_index_u32(~0u, 10u)], vec3<i32>(_wgslsmith_add_i32(max(global1[_wgslsmith_index_u32(4294967295u, 18u)], 2147483647i), u_input.a.x), 1i, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1767u, 0u, 4336u, 43452u), vec4<u32>(1u, 18491u, 0u, 58825u)), 18u)])), global3[_wgslsmith_index_u32(1u, 10u)]);
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, -(~vec4<i32>(-global1[_wgslsmith_index_u32(0u, 18u)], max(21980i, -56009i), _wgslsmith_add_i32(global0.x, u_input.a.x), -global1[_wgslsmith_index_u32(30420u, 18u)])), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1136f, var_2.x, var_2.x), vec3<f32>(var_2.x, var_2.x, -607f), false))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x + 584f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global4[_wgslsmith_index_u32(4294967295u, 4u)])) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.x, 1545f), global4[_wgslsmith_index_u32(29705u, 4u)]))))));
}

