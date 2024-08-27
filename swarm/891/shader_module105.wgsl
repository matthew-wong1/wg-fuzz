struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<bool>(false, true), vec4<bool>(false, true, false, true), 16531u, vec3<i32>(8743i, 2147483647i, 60625i)), 1261f);

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<Struct_2, 22>;

var<private> global3: i32;

var<private> global4: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> u32 {
    var var_0 = true;
    global1 = array<Struct_1, 15>();
    var var_1 = -1442i;
    let var_2 = global2[_wgslsmith_index_u32(countOneBits(reverseBits(0u)), 22u)];
    let var_3 = _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(38455u, global0.a.c, firstLeadingBit(7041u)), ~(~vec3<u32>(global0.a.c, 24268u, u_input.c.x))), ~(~(~vec3<u32>(0u, 1u, 2028u)))) << (_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, global0.a.c, u_input.c.x) >> (vec3<u32>(0u, 19545u, 0u) % vec3<u32>(32u)), ~(vec3<u32>(2517u, global0.a.c, var_2.a.c) << (vec3<u32>(0u, 68309u, u_input.c.x) % vec3<u32>(32u)))), ~(~reverseBits(vec3<u32>(30751u, 25675u, var_2.a.c))), vec3<u32>(~global0.a.c ^ _wgslsmith_clamp_u32(var_2.a.c, 1u, 19627u), u_input.c.x, _wgslsmith_mod_u32(var_2.a.c | 0u, global0.a.c))) % vec3<u32>(32u));
    return _wgslsmith_sub_u32(u_input.c.x, u_input.c.x);
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = global2[_wgslsmith_index_u32(u_input.c.x, 22u)];
    let var_0 = -countOneBits(~(i32(-1i) * -42856i));
    global3 = -2147483647i;
    var var_1 = Struct_1(select(!arg_0.a, global0.a.b.zy, all(!select(arg_0.b, vec4<bool>(false, global0.a.b.x, false, true), arg_0.b))), global0.a.b, global0.a.c, abs(-global0.a.d));
    var var_2 = 1u;
    return true;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> u32 {
    global1 = array<Struct_1, 15>();
    global4 = global0.b;
    let var_0 = global1[_wgslsmith_index_u32(61928u >> (global0.a.c % 32u), 15u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1803f, 1147f, -705f, 912f), vec4<f32>(1501f, -450f, 2100f, 1000f), vec4<bool>(true, true, false, var_0.a.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-363f, global0.b, -2614f, global0.b))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-330f, 309f, global0.b, -361f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-945f, 799f, 1000f, global0.b) * vec4<f32>(-586f, global0.b, -1000f, global0.b)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1876f, global0.b, global0.b, global0.b) * vec4<f32>(936f, -1000f, global0.b, global0.b))))));
    global4 = _wgslsmith_f_op_f32(974f + var_1.x);
    return 0u;
}

fn func_2(arg_0: Struct_2) -> vec4<i32> {
    global0 = arg_0;
    let var_0 = true;
    var var_1 = 1u | ~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.c, u_input.c.x, global0.a.c, arg_0.a.c), vec4<u32>(68975u, 4294967295u, 13921u, u_input.c.x)), global0.a.c));
    var_1 = func_4(~1i, Struct_1(arg_0.a.a, vec4<bool>(false, var_0, true, func_3(arg_0.a)), 18591u, vec3<i32>(-1i) * -countOneBits(vec3<i32>(-1i, global0.a.d.x, 1i))), arg_0.a.c);
    var var_2 = global1[_wgslsmith_index_u32(41577u, 15u)];
    return reverseBits(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_mod_vec4_i32(-abs(u_input.a), -(min(vec4<i32>(2147483647i, global0.a.d.x, 29559i, -7998i), u_input.a) & ~u_input.a)) & -func_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.c.x, 22218u, 36096u, 53772u)), vec4<u32>(u_input.c.x, global0.a.c, 4294967295u, global0.a.c) ^ vec4<u32>(global0.a.c, 9183u, u_input.c.x, 18415u)), 22u)]);
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global0.a.d, vec3<i32>(i32(-1i) * -23610i, i32(-1i) * -1i, i32(-1i) * -5072i) & global0.a.d), 0i);
    var_0 = ~u_input.c.x;
    global4 = 1000f;
    let var_3 = true;
    let var_4 = countOneBits(~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.c.x, u_input.c.x, 136518u, 5035u)), min(vec4<u32>(4844u, u_input.c.x, 1817u, 1u), reverseBits(vec4<u32>(42121u, 0u, 37634u, 4347u)))));
    var var_5 = !(!vec3<bool>(all(select(vec3<bool>(global0.a.b.x, global0.a.b.x, var_3), vec3<bool>(var_3, global0.a.b.x, var_3), vec3<bool>(var_3, var_3, var_3))), all(vec2<bool>(var_3, false)), global0.a.a.x));
    let var_6 = var_4.zxx;
    let x = u_input.a;
    s_output = StorageBuffer(12477u, 201f);
}

