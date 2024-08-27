struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4904u, vec4<f32>(468f, -1281f, 210f, -621f), -31753i, vec2<bool>(true, true));

var<private> global1: Struct_1;

var<private> global2: array<u32, 11> = array<u32, 11>(47517u, 1u, 0u, 0u, 11828u, 1u, 81339u, 44909u, 18130u, 0u, 133427u);

var<private> global3: Struct_1 = Struct_1(4294967295u, vec4<f32>(-315f, 246f, -544f, 1000f), 13530i, vec2<bool>(false, false));

var<private> global4: u32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = !(!arg_3);
    let var_1 = global1.b.yx;
    var var_2 = Struct_1(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(global1.a, global0.a) & select(arg_1.a, global2[_wgslsmith_index_u32(4294967295u, 11u)], global0.d.x), 142043u), global0.b, _wgslsmith_div_i32(arg_1.c, 0i | arg_2.c), !(!select(global3.d, global3.d, vec2<bool>(true, arg_3.x))));
    return arg_1;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>) -> vec2<i32> {
    var var_0 = u_input.b.x;
    global4 = ~firstTrailingBit(reverseBits(42097u)) | global1.a;
    return vec2<i32>(_wgslsmith_mult_i32(func_2(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(arg_0, arg_0), _wgslsmith_sub_vec4_i32(arg_0, u_input.a)), Struct_1(_wgslsmith_sub_u32(4294967295u, global1.a), _wgslsmith_f_op_vec4_f32(-global0.b), global0.c >> (1u % 32u), global3.d), func_2(min(vec4<i32>(-48551i, 30943i, global1.c, global0.c), vec4<i32>(global0.c, -3581i, -2147483647i, arg_0.x)), Struct_1(global3.a, vec4<f32>(global0.b.x, global3.b.x, global3.b.x, 285f), 12120i, global1.d), func_2(arg_0, Struct_1(global0.a, vec4<f32>(global3.b.x, global3.b.x, global3.b.x, global0.b.x), 0i, vec2<bool>(true, global0.d.x)), Struct_1(58600u, vec4<f32>(global1.b.x, global1.b.x, global0.b.x, global0.b.x), global0.c, global3.d), vec3<bool>(global3.d.x, false, global3.d.x)), select(vec3<bool>(true, true, global0.d.x), vec3<bool>(false, global3.d.x, true), vec3<bool>(global3.d.x, global1.d.x, global0.d.x))), vec3<bool>(true, false, -22943i <= global1.c)).c, global3.c), global0.c);
}

fn func_1(arg_0: i32) -> Struct_1 {
    global2 = array<u32, 11>();
    let var_0 = false;
    global0 = func_2(-u_input.a, Struct_1(~40215u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.b) - global1.b), select(_wgslsmith_mod_i32(u_input.a.x, ~arg_0), ~u_input.b.x, true), global0.d), Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(~16478u, global1.a >> (global3.a % 32u)), 0u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(278f, -430f, -135f, 201f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-738f, global1.b.x, -538f, global0.b.x)), !(global3.a >= 1u))), 2147483647i, select(vec2<bool>(!global0.d.x, all(vec2<bool>(global3.d.x, global3.d.x))), global1.d, global0.d)), vec3<bool>(!var_0, all(!vec3<bool>(global3.d.x, global0.d.x, global3.d.x)), all(global0.d) | all(select(vec4<bool>(false, true, true, var_0), vec4<bool>(true, global0.d.x, var_0, global0.d.x), vec4<bool>(global3.d.x, false, true, true)))));
    var var_1 = Struct_1(42700u, global1.b, _wgslsmith_dot_vec2_i32(-(func_3(u_input.a, vec2<u32>(5754u, 1u)) << (~vec2<u32>(global1.a, 51268u) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_mult_i32(-u_input.a.x, arg_0), 22159i)), !vec2<bool>(false, !(false && global1.d.x)));
    global4 = 1u;
    return Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(abs(global3.a)), _wgslsmith_mod_u32(min(global3.a, 24505u), var_1.a), 71132u), _wgslsmith_div_vec3_u32(~vec3<u32>(global3.a, 84763u, global1.a), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(93565u, global3.a, 0u), vec3<u32>(0u, global3.a, global0.a)), vec3<u32>(27439u, global0.a, 20558u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1364f, global0.b.x, true))))), global1.b.x, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(abs(719f))), -(~2147483647i), !global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!global3.d), global1.d, vec2<bool>(global1.d.x, any(!vec2<bool>(global1.d.x, true))));
    var var_1 = func_1(_wgslsmith_clamp_i32(global3.c | -2943i, global0.c, -2147483647i));
    global1 = Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(2095f * _wgslsmith_f_op_f32(step(-1217f, 1000f))), _wgslsmith_f_op_f32(ceil(global0.b.x)), var_1.b.x, -1115f)), abs(_wgslsmith_add_i32(abs(~global0.c), -func_3(vec4<i32>(global3.c, var_1.c, u_input.b.x, 0i), vec2<u32>(global3.a, 1u)).x)), !vec2<bool>(var_0.x, !var_0.x));
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(global1.b.x, global0.b.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), -1078f));
    let var_3 = u_input.b | u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(global1.c, _wgslsmith_f_op_vec3_f32(-var_1.b.xxz), _wgslsmith_sub_u32(global0.a, global3.a));
}

