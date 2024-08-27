struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_3;

var<private> global2: u32 = 1u;

var<private> global3: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(12551i, 0i, -1i), vec3<i32>(2147483647i, 1i, -2652i), vec3<i32>(i32(-2147483648), 4659i, 0i), vec3<i32>(1i, 0i, -12227i), vec3<i32>(15925i, 0i, 11441i), vec3<i32>(2147483647i, 1i, 18527i), vec3<i32>(28661i, 0i, -11061i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> i32 {
    let var_0 = -abs(u_input.c);
    global2 = 15584u;
    let var_1 = u_input.e.x;
    var var_2 = global0.a;
    global2 = u_input.e.x;
    return 2147483647i;
}

fn func_2(arg_0: Struct_4, arg_1: vec2<u32>) -> vec4<bool> {
    var var_0 = Struct_2(arg_0.a);
    global0 = Struct_3(!arg_0.a.zzy, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-295f, 1526f, global1.b.x), global0.b, vec3<bool>(true, false, false))))), _wgslsmith_f_op_vec3_f32(-global1.b))), true);
    var var_1 = _wgslsmith_dot_vec3_i32(~(-u_input.b) | -vec3<i32>(~0i, 1i, u_input.b.x), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(min(_wgslsmith_mult_vec3_i32(u_input.b, u_input.b), u_input.b), firstLeadingBit(min(vec3<i32>(u_input.b.x, 33730i, -36951i), u_input.b))), vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, ~u_input.d), -_wgslsmith_add_i32(-1i, u_input.c), ~u_input.d | u_input.b.x)));
    global0 = Struct_3(vec3<bool>(any(!(!arg_0.a.xxw)), true, 1i < func_3(_wgslsmith_f_op_f32(-2217f + 980f), Struct_2(var_0.a), _wgslsmith_f_op_f32(-global1.b.x), Struct_2(vec4<bool>(true, true, arg_0.a.x, global0.c)))), global1.b, select(!(!arg_0.a.x), all(arg_0.a), global1.a.x));
    var var_2 = vec4<u32>(4294967295u, arg_1.x, ~70093u, ~arg_1.x);
    return select(!vec4<bool>(all(!global1.a), !var_0.a.x, global1.a.x, global0.c), select(select(select(select(arg_0.a, var_0.a, var_0.a), select(vec4<bool>(true, var_0.a.x, global0.a.x, global1.a.x), vec4<bool>(true, true, false, global1.a.x), arg_0.a), arg_0.a.x & true), select(vec4<bool>(true, var_0.a.x, global1.c, true), !var_0.a, vec4<bool>(arg_0.a.x, global1.a.x, arg_0.a.x, var_0.a.x)), all(global0.a)), select(vec4<bool>(global0.a.x, true, global0.a.x, false), vec4<bool>(global0.b.x >= 647f, var_0.a.x, false, true), vec4<bool>(any(vec2<bool>(true, false)), arg_0.a.x, var_0.a.x, any(vec3<bool>(false, false, true)))), arg_0.a), select(!arg_0.a, !(!var_0.a), false || (true || !global1.c)));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: i32, arg_3: vec3<f32>) -> Struct_3 {
    global2 = u_input.e.x;
    global1 = Struct_3(func_2(Struct_4(vec4<bool>(false, false, true, all(vec4<bool>(global0.c, true, global1.c, arg_0)))), u_input.e).ywy, _wgslsmith_f_op_vec3_f32(select(global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_1.zwx + vec3<f32>(arg_3.x, 1382f, 562f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1280f, global0.b.x, 473f) - arg_3), -11509i >= arg_2)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, -309f, arg_1.x) * _wgslsmith_f_op_vec3_f32(max(arg_1.wwz, vec3<f32>(global1.b.x, -836f, arg_1.x))))), global0.a)), arg_0);
    global0 = Struct_3(vec3<bool>(!(!all(vec2<bool>(false, arg_0))), !global1.a.x, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-172f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1179f + arg_1.x) + 387f), 878f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -569f, -2124f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1237f, 297f, global0.b.x)), global0.a)))), !func_2(Struct_4(!vec4<bool>(false, arg_0, true, true)), ~u_input.e).x);
    return Struct_3(!func_2(Struct_4(select(vec4<bool>(arg_0, false, true, true), vec4<bool>(false, global1.a.x, arg_0, global0.c), global0.a.x)), vec2<u32>(u_input.a >> (u_input.a % 32u), 35049u)).zxz, arg_1.wzw, global0.c);
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    let var_0 = func_4(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.b.x + global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1183f), global1.b.x, _wgslsmith_f_op_f32(global1.b.x * global1.b.x)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(434f, 351f, global1.b.x, global1.b.x), vec4<f32>(global1.b.x, global1.b.x, 1584f, global1.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-903f, global1.b.x, global0.b.x, -1687f)), func_2(Struct_4(vec4<bool>(global0.a.x, global1.c, global0.a.x, global0.c)), vec2<u32>(27632u, u_input.e.x)))))), -((u_input.c & (u_input.b.x | u_input.b.x)) << (~(~u_input.e.x) % 32u)), _wgslsmith_f_op_vec3_f32(global0.b * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1105f, global1.b.x, global0.b.x), vec3<f32>(-304f, global1.b.x, 1997f))), global1.b))));
    let var_1 = Struct_2(!select(vec4<bool>(!global1.c, all(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true)), func_2(Struct_4(vec4<bool>(true, true, true, global1.a.x)), u_input.e).x, global0.a.x), vec4<bool>(var_0.c, true, var_0.a.x, var_0.a.x), false));
    var var_2 = ~(~(_wgslsmith_mod_vec3_u32(~arg_0.xwz, ~vec3<u32>(93568u, u_input.a, u_input.e.x)) << (arg_0.xyx % vec3<u32>(32u))));
    let var_3 = Struct_3(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -1000f, global0.b.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x) - global0.b)))), false);
    var_2 = ~(~vec3<u32>(26768u, abs(arg_0.x >> (1u % 32u)), ~u_input.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * var_3.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<i32>, 7>();
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.e.x, u_input.a, 42408u, u_input.e.x)))));
    var var_1 = vec3<u32>(select(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), vec4<u32>(u_input.e.x, u_input.a, 28102u, u_input.a)) >> (vec4<u32>(0u, u_input.e.x, 0u, 41871u) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.e.x, u_input.e.x, 18751u, u_input.e.x))), ~u_input.e.x, false), 4294967295u, u_input.e.x);
    var_1 = vec3<u32>(firstTrailingBit(countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.e.x, u_input.e.x), vec3<u32>(4294967295u, var_1.x, u_input.a)))), 4294967295u, _wgslsmith_mod_u32(var_1.x, ~_wgslsmith_sub_u32(66928u & var_1.x, reverseBits(0u))));
    global2 = _wgslsmith_div_u32(~((u_input.a << (0u % 32u)) << (countOneBits(var_1.x) % 32u)) & firstTrailingBit(~countOneBits(1u)), reverseBits(var_1.x));
    var var_2 = vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(u_input.d, firstLeadingBit(~(~u_input.b.x)), 30631i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_mod_vec2_i32(select(u_input.b.yz, u_input.b.xy, global1.b.x != _wgslsmith_f_op_f32(max(283f, var_0))), select(vec2<i32>(-52195i, max(-22560i, 20602i)), u_input.b.zz, !any(global1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-310f + _wgslsmith_f_op_f32(max(409f, 220f))))), ~_wgslsmith_add_i32(61094i, _wgslsmith_clamp_i32(var_2.x, -30619i, -7754i)) & var_2.x);
}

