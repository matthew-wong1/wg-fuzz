struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: Struct_2 = Struct_2(0u, vec4<i32>(-20420i, 1724i, -1i, -34950i), true, 23015i);

var<private> global2: array<f32, 13>;

var<private> global3: u32 = 43927u;

var<private> global4: array<f32, 4> = array<f32, 4>(-865f, -256f, 1000f, -517f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> vec2<bool> {
    return select(arg_1.wz, arg_1.yz, arg_1.x);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> vec2<f32> {
    global2 = array<f32, 13>();
    let var_0 = Struct_3(arg_3.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.b, 16559u, 4294967295u), vec3<u32>(arg_2.a, arg_2.a, arg_2.a)) | countOneBits(28819u), arg_3.c, true);
    var var_1 = -(~(-1i | ~_wgslsmith_add_i32(arg_3.c.d, global0[_wgslsmith_index_u32(8010u, 19u)])));
    global0 = array<i32, 19>();
    global3 = ~1755u;
    return vec2<f32>(1184f, arg_1);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    global3 = arg_2.c.x;
    global1 = Struct_2(select(~_wgslsmith_dot_vec2_u32(arg_1.c.xz, arg_1.c.wy), 45608u, false), u_input.a, false, max(_wgslsmith_sub_i32(arg_1.d.x, _wgslsmith_mult_i32(arg_2.d.x, 1i)), _wgslsmith_div_i32(1i, global1.b.x)));
    global3 = 1u;
    let var_0 = !arg_2.a.x;
    var var_1 = global1.c;
    return Struct_2(firstLeadingBit(3325u), global1.b, arg_2.a.x, 13378i);
}

fn func_1() -> Struct_2 {
    let var_0 = !vec2<bool>(global1.c || global1.c, !global1.c && (_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.a, 13u)]) >= _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global1.a, 4u)] * global4[_wgslsmith_index_u32(137026u, 4u)])));
    global2 = array<f32, 13>();
    var var_1 = global1.a;
    global2 = array<f32, 13>();
    var var_2 = -721f;
    return func_4(!select(select(vec2<bool>(var_0.x, true), !vec2<bool>(true, var_0.x), vec2<bool>(global1.c, true)), select(vec2<bool>(false, var_0.x), vec2<bool>(global1.c, var_0.x), global1.c), select(vec2<bool>(var_0.x, true), select(var_0, vec2<bool>(false, true), false), func_2(3488u, vec4<bool>(var_0.x, var_0.x, true, true)))), Struct_1(vec2<bool>(true, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(global1.a, 13u)])), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(global1.a, 13u)])), Struct_2(1u, vec4<i32>(global0[_wgslsmith_index_u32(global1.a, 19u)], 0i, global0[_wgslsmith_index_u32(0u, 19u)], 2147483647i), global1.c, u_input.b), Struct_3(vec4<bool>(true, var_0.x, true, true), global1.a, Struct_2(global1.a, u_input.c, true, -12246i), global1.c))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global4[_wgslsmith_index_u32(global1.a, 4u)], 1517f), vec2<f32>(-239f, global4[_wgslsmith_index_u32(28599u, 4u)]), true))), _wgslsmith_mult_vec4_u32(firstTrailingBit(reverseBits(vec4<u32>(global1.a, 1u, 28612u, global1.a))), vec4<u32>(1u, firstTrailingBit(6061u), _wgslsmith_dot_vec4_u32(vec4<u32>(11211u, global1.a, global1.a, global1.a), vec4<u32>(1u, global1.a, 22142u, 42258u)), _wgslsmith_dot_vec2_u32(vec2<u32>(5519u, 1u), vec2<u32>(28538u, 60439u)))), _wgslsmith_mod_vec3_i32(~(-vec3<i32>(global0[_wgslsmith_index_u32(1u, 19u)], -1i, 70320i)), global1.b.xzz)), Struct_1(!(!func_2(23502u, vec4<bool>(false, false, true, var_0.x))), vec2<f32>(827f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(global1.a, 4u)])))), ~(~vec4<u32>(global1.a, 0u, global1.a, global1.a)), _wgslsmith_div_vec3_i32(countOneBits(u_input.a.xwz) << (vec3<u32>(global1.a, global1.a, 1u) % vec3<u32>(32u)), select(vec3<i32>(26686i, global1.d, -1i), global1.b.yyy ^ global1.b.zyz, vec3<bool>(global1.c, global1.c, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = Struct_1(vec2<bool>(global1.c, false), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(1228f)), 1f) - vec2<f32>(1f, 1f)))), abs(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(global1.a, 4294967295u, global1.a, global1.a)), vec4<u32>(106186u | global1.a, countOneBits(global1.a), 1867u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, 0u, global1.a), vec3<u32>(28366u, 50786u, global1.a))))), u_input.c.yyz);
    global4 = array<f32, 4>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(-1235f, -863f, Struct_2(4294967295u, vec4<i32>(var_0.d.x, 1261i, -31374i, -24885i), var_0.a.x, var_0.d.x), Struct_3(vec4<bool>(var_0.a.x, true, false, global1.c), var_0.c.x, Struct_2(global1.a, vec4<i32>(var_0.d.x, global1.b.x, 12003i, global1.b.x), global1.c, -8197i), global1.c))).x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-204f, -758f, var_0.a.x)))) - 517f), var_0.b.x, -1000f);
    let var_2 = !global1.c;
    var var_3 = abs(~select(vec3<u32>(40036u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 56272u), vec2<u32>(global1.a, 60764u))), ~(var_0.c.ywz ^ vec3<u32>(global1.a, 133423u, global1.a)), vec3<bool>(false, var_2, var_2)));
    var var_4 = ~((firstLeadingBit(var_3.x) << (~_wgslsmith_mult_u32(40983u, 65773u) % 32u)) | 31542u);
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(global2[_wgslsmith_index_u32(var_0.c.x, 13u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1.a, 13u)] * var_1.x), Struct_2(var_3.x, u_input.a, var_2, 37068i), Struct_3(vec4<bool>(var_2, true, var_0.a.x, var_2), global1.a, Struct_2(7114u, u_input.c, var_0.a.x, global0[_wgslsmith_index_u32(global1.a, 19u)]), true))).x))));
    var_4 = max(20751u, global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, -624f, vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(func_4(vec2<bool>(var_2, var_0.a.x), var_0, Struct_1(var_0.a, vec2<f32>(-212f, var_5), vec4<u32>(74741u, 4294967295u, 59868u, 4294967295u), vec3<i32>(0i, global0[_wgslsmith_index_u32(var_3.x, 19u)], -2147483647i))).a, 13u)] + global4[_wgslsmith_index_u32(var_3.x, 4u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.c.x, 13u)] + _wgslsmith_f_op_f32(round(509f))), Struct_2(var_3.x, -vec4<i32>(-1i, -2147483647i, 1i, 47143i), global1.c, -var_0.d.x), Struct_3(vec4<bool>(global1.c, true, false, global1.c), 4294967295u, func_4(var_0.a, var_0, var_0), 1i >= global0[_wgslsmith_index_u32(global1.a, 19u)]))).x, 536f), var_1);
}

