struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(4294967295u, 4294967295u, 43679u, 1u), vec4<u32>(0u, 3077u, 27787u, 4294967295u), vec4<u32>(1u, 4294967295u, 73651u, 10636u), vec4<u32>(1u, 4294967295u, 3331u, 0u), vec4<u32>(0u, 32019u, 62443u, 4294967295u), vec4<u32>(15070u, 24961u, 0u, 0u), vec4<u32>(35257u, 42906u, 4294967295u, 47438u), vec4<u32>(4294967295u, 1u, 59070u, 1u), vec4<u32>(4294967295u, 27165u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 36098u, 27000u, 46089u), vec4<u32>(0u, 36262u, 0u, 4294967295u), vec4<u32>(1u, 0u, 19500u, 1u), vec4<u32>(45944u, 77395u, 71616u, 37083u), vec4<u32>(0u, 24956u, 0u, 4294967295u));

var<private> global1: Struct_1;

var<private> global2: vec3<f32>;

var<private> global3: u32;

var<private> global4: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec4<u32>, 14>();
    var var_0 = arg_1;
    global3 = ~firstLeadingBit(~(~_wgslsmith_div_u32(37576u, 31628u)));
    let var_1 = arg_1.a;
    global4 = -1i;
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = func_2(vec2<i32>(abs(1i), global1.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.a - -531f), -516f, true))), true, -(~arg_0.c)));
    global4 = arg_1.c;
    var var_2 = arg_1;
    var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + arg_1.a) * 1182f), true, -48243i);
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = -464f;
    return arg_0;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    return func_4(func_3(Struct_1(_wgslsmith_f_op_f32(step(-1838f, _wgslsmith_f_op_f32(abs(910f)))), true, global1.c), func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 6905i), u_input.a.zy), Struct_1(1128f, true, 0i))), _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_1(global1.a, false, global1.c), Struct_1(global2.x, true, global1.c)).a * 397f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a))))), all(!(!vec3<bool>(false, global1.b, false))))));
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_div_vec4_i32(abs(vec4<i32>(-1i) * -(~vec4<i32>(-26258i, -29517i, arg_0.c, arg_0.c))), _wgslsmith_div_vec4_i32((~vec4<i32>(global1.c, global1.c, 22641i, -1i) | -vec4<i32>(80248i, 35789i, 2147483647i, -1i)) << (select(~global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(20580u, 14u)] | global0[_wgslsmith_index_u32(6449u, 14u)], global1.b) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_i32(~vec4<i32>(1i, 1i, -1i, u_input.a.x), -vec4<i32>(-3676i, global1.c, -2147483647i, 1i))));
    var var_1 = u_input.a.x;
    let var_2 = 4294967295u;
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(vec4<f32>(global1.a, global1.a, 773f, global2.x)).a - global2.x), -171f, 2401f));
    let var_3 = -((vec2<i32>(1i, global1.c >> (0u % 32u)) << (vec2<u32>(var_2, firstLeadingBit(4294967295u)) % vec2<u32>(32u))) | vec2<i32>(_wgslsmith_mult_i32(~global1.c, -16089i), u_input.a.x));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(func_5(func_1(vec4<f32>(global1.a, global2.x, -1468f, -353f))), ~_wgslsmith_sub_u32(1u, 1u), firstTrailingBit(_wgslsmith_sub_u32(4294967295u, firstTrailingBit(9794u))), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(20024u, 0u, 13959u), _wgslsmith_dot_vec3_u32(vec3<u32>(16229u, 4294967295u, 0u), vec3<u32>(0u, 60930u, 29601u))), 1u)), ~u_input.a.zz, ~(~0u));
}

